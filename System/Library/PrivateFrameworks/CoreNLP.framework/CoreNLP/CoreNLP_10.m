unint64_t boost::multi_index::detail::ordered_index_impl<boost::multi_index::member<boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,true>,std::string,&boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,true>::left>,std::less<std::string>,boost::multi_index::detail::nth_layer<2,boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<std::string,long,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>,boost::mpl::v_item<boost::bimaps::relation::member_at::left,boost::mpl::vector0<mpl_::na>,0>,boost::multi_index::detail::ordered_unique_tag,boost::multi_index::detail::null_augment_policy>::copy_(unint64_t result, uint64_t a2, void *a3)
{
  v3 = *(a2 - 8);
  v4 = *(v3 + 32);
  v5 = *(result - 8);
  v6 = (v5 + 32);
  if (v4 > 1)
  {
    *v6 = *v6 & 0xFFFFFFFFFFFFFFFELL | *(v3 + 32) & 1;
    v7 = *(v3 + 32);
    v8 = (v7 & 0xFFFFFFFFFFFFFFFELL) - 32;
    v9 = (v7 & 0xFFFFFFFFFFFFFFFELL) == 0;
    v10 = v4 & 1;
    if (v9)
    {
      v8 = 0;
    }

    v11 = a3[6];
    if (v11 == v8)
    {
      v18 = a3 + 7;
    }

    else
    {
      v12 = a3[4];
      v13 = a3[5];
      while (v13)
      {
        v14 = v13 >> 1;
        v15 = &v12[2 * (v13 >> 1)];
        v17 = *v15;
        v16 = v15 + 2;
        v13 += ~(v13 >> 1);
        if (v17 < v8)
        {
          v12 = v16;
        }

        else
        {
          v13 = v14;
        }
      }

      v18 = v12 + 1;
    }

    *v6 = v10 | (*v18 + 32);
    v19 = *(v3 + 40);
    v20 = v19 - 32;
    if (!v19)
    {
      v20 = 0;
    }

    if (v11 == v20)
    {
      v27 = a3 + 7;
    }

    else
    {
      v21 = a3[4];
      v22 = a3[5];
      while (v22)
      {
        v23 = v22 >> 1;
        v24 = &v21[2 * (v22 >> 1)];
        v26 = *v24;
        v25 = v24 + 2;
        v22 += ~(v22 >> 1);
        if (v26 < v20)
        {
          v21 = v25;
        }

        else
        {
          v22 = v23;
        }
      }

      v27 = v21 + 1;
    }

    *(v5 + 40) = *v27 + 32;
    v28 = *(*(a2 - 8) + 48);
    if (v28)
    {
      v29 = v28 - 32;
    }

    else
    {
      v29 = 0;
    }

    if (a3[6] == v29)
    {
      v37 = a3 + 7;
      v30 = a3[5];
    }

    else
    {
      v31 = a3[4];
      v30 = a3[5];
      if (v30)
      {
        v32 = a3[5];
        do
        {
          v33 = v32 >> 1;
          v34 = &v31[2 * (v32 >> 1)];
          v36 = *v34;
          v35 = v34 + 2;
          v32 += ~(v32 >> 1);
          if (v36 < v29)
          {
            v31 = v35;
          }

          else
          {
            v32 = v33;
          }
        }

        while (v32);
      }

      v37 = v31 + 1;
    }

    *(*(result - 8) + 48) = *v37 + 32;
    if (v30)
    {
      v38 = a3[4];
      v39 = &v38[2 * v30];
      do
      {
        v41 = *v38;
        v40 = v38[1];
        v42 = (*v38 + 32);
        v43 = v40 + 4;
        v44 = *v42 & 1;
        result = v40[4] & 0xFFFFFFFFFFFFFFFELL | v44;
        v40[4] = result;
        v45 = *v42 & 0xFFFFFFFFFFFFFFFELL;
        if (v45)
        {
          v46 = a3 + 7;
          if (a3[6] != v45 - 32)
          {
            v47 = a3[4];
            v48 = a3[5];
            while (v48)
            {
              v49 = v48 >> 1;
              v50 = &v47[2 * (v48 >> 1)];
              v52 = *v50;
              v51 = v50 + 2;
              v48 += ~(v48 >> 1);
              if (v52 < v45 - 32)
              {
                v47 = v51;
              }

              else
              {
                v48 = v49;
              }
            }

            v46 = v47 + 1;
          }

          result = *v46;
          *v43 = v44 | (*v46 + 32);
          if (*(v45 + 8) == v42)
          {
            *(result + 40) = v43;
          }

          else if (*(v45 + 16) == v42)
          {
            *(result + 48) = v43;
          }
        }

        else
        {
          *v43 = v44;
        }

        if (!*(v41 + 40))
        {
          v40[5] = 0;
        }

        if (!*(v41 + 48))
        {
          v40[6] = 0;
        }

        v38 += 2;
      }

      while (v38 != v39);
    }
  }

  else
  {
    *(v5 + 32) = 0;
    *(v5 + 40) = v6;
    *(*(result - 8) + 48) = *(result - 8) + 32;
  }

  return result;
}

uint64_t boost::multi_index::detail::copy_map<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::~copy_map(uint64_t a1)
{
  if ((*(a1 + 64) & 1) == 0 && *(a1 + 40))
  {
    v2 = 0;
    v3 = 8;
    do
    {
      v4 = *(*(a1 + 32) + v3);
      if (*(v4 + 23) < 0)
      {
        operator delete(*v4);
        v4 = *(*(a1 + 32) + v3);
      }

      operator delete(v4);
      ++v2;
      v3 += 16;
    }

    while (v2 < *(a1 + 40));
  }

  if (*(a1 + 24))
  {
    operator delete(*(a1 + 32));
  }

  return a1;
}

const void **boost::bimaps::container_adaptor::associative_container_adaptor<boost::multi_index::detail::ordered_index<boost::multi_index::member<boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,true>,std::string,&boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,true>::left>,std::less<std::string>,boost::multi_index::detail::nth_layer<2,boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<std::string,long,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>,boost::mpl::v_item<boost::bimaps::relation::member_at::left,boost::mpl::vector0<mpl_::na>,0>,boost::multi_index::detail::ordered_unique_tag,boost::multi_index::detail::null_augment_policy>,boost::bimaps::detail::map_view_iterator<boost::bimaps::relation::member_at::left,boost::bimaps::detail::bimap_core<std::string,long,mpl_::na,mpl_::na,mpl_::na>>,boost::bimaps::detail::const_map_view_iterator<boost::bimaps::relation::member_at::left,boost::bimaps::detail::bimap_core<std::string,long,mpl_::na,mpl_::na,mpl_::na>>,std::string const,boost::bimaps::container_adaptor::support::iterator_facade_to_base<boost::bimaps::detail::map_view_iterator<boost::bimaps::relation::member_at::left,boost::bimaps::detail::bimap_core<std::string,long,mpl_::na,mpl_::na,mpl_::na>>,boost::bimaps::detail::const_map_view_iterator<boost::bimaps::relation::member_at::left,boost::bimaps::detail::bimap_core<std::string,long,mpl_::na,mpl_::na,mpl_::na>>>,mpl_::na,boost::bimaps::relation::detail::pair_to_relation_functor<boost::bimaps::relation::member_at::left,boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>,boost::bimaps::relation::support::get_pair_functor<boost::bimaps::relation::member_at::left,boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>,mpl_::na,boost::mpl::v_item<boost::bimaps::container_adaptor::detail::iterator_from_base_identity<boost::iterators::reverse_iterator<boost::multi_index::detail::bidir_node_iterator<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>>,boost::bimaps::detail::reverse_map_view_iterator<boost::bimaps::relation::member_at::left,boost::bimaps::detail::bimap_core<std::string,long,mpl_::na,mpl_::na,mpl_::na>>,boost::iterators::reverse_iterator<boost::multi_index::detail::bidir_node_iterator<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>>,boost::bimaps::detail::const_reverse_map_view_iterator<boost::bimaps::relation::member_at::left,boost::bimaps::detail::bimap_core<std::string,long,mpl_::na,mpl_::na,mpl_::na>>>,boost::mpl::vector<mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>,1>>::find<std::string>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v3 = boost::multi_index::detail::ordered_index_impl<boost::multi_index::member<boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,true>,std::string,&boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,true>::left>,std::less<std::string>,boost::multi_index::detail::nth_layer<2,boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<std::string,long,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>,boost::mpl::v_item<boost::bimaps::relation::member_at::left,boost::mpl::vector0<mpl_::na>,0>,boost::multi_index::detail::ordered_unique_tag,boost::multi_index::detail::null_augment_policy>::find<std::string>(v2, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v3;
}

void sub_19D220B50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **boost::multi_index::detail::ordered_index_impl<boost::multi_index::member<boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,true>,std::string,&boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,true>::left>,std::less<std::string>,boost::multi_index::detail::nth_layer<2,boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<std::string,long,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>,boost::mpl::v_item<boost::bimaps::relation::member_at::left,boost::mpl::vector0<mpl_::na>,0>,boost::multi_index::detail::ordered_unique_tag,boost::multi_index::detail::null_augment_policy>::find<std::string>(uint64_t a1, const void **a2)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 32) & 0xFFFFFFFFFFFFFFFELL;
  if (v3)
  {
    v6 = *(a1 - 8);
    do
    {
      while (1)
      {
        v7 = (v3 - 32);
        if (std::less<std::string>::operator()[abi:ne200100](a1 + 1, (v3 - 32), a2))
        {
          break;
        }

        v3 = *(v3 + 8);
        v6 = v7;
        if (!v3)
        {
          goto LABEL_7;
        }
      }

      v3 = *(v3 + 16);
    }

    while (v3);
    v7 = v6;
LABEL_7:
    if (v7 != v2 && !std::less<std::string>::operator()[abi:ne200100](a1 + 1, a2, v7))
    {
      return v7;
    }
  }

  return v2;
}

unint64_t boost::multi_index::detail::ordered_index_impl<boost::multi_index::member<boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,true>,long,&boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,true>::right>,std::less<long>,boost::multi_index::detail::nth_layer<1,boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<std::string,long,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>,boost::mpl::v_item<boost::bimaps::relation::member_at::right,boost::mpl::vector0<mpl_::na>,0>,boost::multi_index::detail::ordered_unique_tag,boost::multi_index::detail::null_augment_policy>::find<long>(uint64_t a1, uint64_t *a2)
{
  result = *(a1 - 8);
  v3 = *(result + 56) & 0xFFFFFFFFFFFFFFFELL;
  if (v3)
  {
    v4 = *a2;
    v5 = result;
    do
    {
      while (*(v3 - 32) < v4)
      {
        v3 = *(v3 + 16);
        if (!v3)
        {
          goto LABEL_7;
        }
      }

      v5 = v3 - 56;
      v3 = *(v3 + 8);
    }

    while (v3);
LABEL_7:
    if (v5 != result && v4 >= *(v5 + 24))
    {
      return v5;
    }
  }

  return result;
}

void *corelm::OutOfVocabularyError::OutOfVocabularyError(void *a1, uint64_t a2, uint64_t a3)
{
  v5[0] = a2;
  v5[1] = a3;
  *a1 = &unk_1F10AFB60;
  corelm::util::strCat<char [23],std::string_view>("OutOfVocabularyError: ", v5);
  return a1;
}

uint64_t corelm::util::strCat<char [23],std::string_view>(const char *a1, uint64_t *a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v6);
  v4 = strlen(a1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, a1, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, *a2, a2[1]);
  std::stringbuf::str();
  v6 = *MEMORY[0x1E69E54E8];
  *(&v6 + *(v6 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v7 = MEMORY[0x1E69E5548] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v8);
  std::ostream::~ostream();
  return MEMORY[0x19EAF8C10](&v10);
}

void sub_19D220E44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t corelm::OutOfVocabularyError::what(corelm::OutOfVocabularyError *this)
{
  result = this + 8;
  if (*(this + 31) < 0)
  {
    return *result;
  }

  return result;
}

unint64_t boost::bimaps::detail::non_mutable_data_unique_map_view_access<boost::bimaps::views::map_view<boost::bimaps::relation::member_at::right,boost::bimaps::detail::bimap_core<std::string,long,mpl_::na,mpl_::na,mpl_::na>>,boost::bimaps::relation::member_at::right,boost::bimaps::detail::bimap_core<std::string,long,mpl_::na,mpl_::na,mpl_::na>>::at<long>(uint64_t *a1, std::logic_error_vtbl **a2)
{
  v3 = *a1;
  v5.__vftable = *a2;
  result = boost::multi_index::detail::ordered_index_impl<boost::multi_index::member<boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,true>,long,&boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,true>::right>,std::less<long>,boost::multi_index::detail::nth_layer<1,boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<std::string,long,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>,boost::mpl::v_item<boost::bimaps::relation::member_at::right,boost::mpl::vector0<mpl_::na>,0>,boost::multi_index::detail::ordered_unique_tag,boost::multi_index::detail::null_augment_policy>::find<long>(v3, &v5);
  if (*(*a1 - 8) == result)
  {
    std::logic_error::logic_error(&v5, "bimap<>: invalid key");
    v5.__vftable = (MEMORY[0x1E69E55B8] + 16);
    boost::throw_exception<std::out_of_range>(&v5);
  }

  return result;
}

void boost::throw_exception<std::out_of_range>(const std::logic_error *a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  boost::wrapexcept<std::out_of_range>::wrapexcept(exception, a1);
}

uint64_t boost::wrapexcept<std::out_of_range>::wrapexcept(uint64_t a1, const std::logic_error *a2)
{
  *a1 = &unk_1F10AFC68;
  std::logic_error::logic_error((a1 + 8), a2);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = -1;
  *a1 = &unk_1F10AFBF0;
  *(a1 + 8) = &unk_1F10AFC20;
  *(a1 + 24) = &unk_1F10AFC48;
  return a1;
}

uint64_t boost::wrapexcept<std::out_of_range>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_1F10AFC98;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));
  MEMORY[0x19EAF8780](a1 + 8);
  return a1;
}

void sub_19D2212B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a10);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

void boost::wrapexcept<std::out_of_range>::rethrow(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  boost::wrapexcept<std::out_of_range>::wrapexcept(exception, a1);
}

void boost::wrapexcept<std::out_of_range>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_1F10AFC98;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));
  MEMORY[0x19EAF8780](a1 + 8);

  JUMPOUT(0x19EAF8CA0);
}

void non-virtual thunk toboost::wrapexcept<std::out_of_range>::~wrapexcept(uint64_t a1)
{
  *(a1 + 16) = &unk_1F10AFC98;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));

  JUMPOUT(0x19EAF8780);
}

{
  *(a1 + 16) = &unk_1F10AFC98;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));
  MEMORY[0x19EAF8780](a1);

  JUMPOUT(0x19EAF8CA0);
}

void non-virtual thunk toboost::wrapexcept<std::out_of_range>::~wrapexcept(void *a1)
{
  *a1 = &unk_1F10AFC98;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);

  JUMPOUT(0x19EAF8780);
}

{
  *a1 = &unk_1F10AFC98;
  v1 = a1 - 2;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);
  MEMORY[0x19EAF8780](v1);

  JUMPOUT(0x19EAF8CA0);
}

uint64_t *boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(uint64_t *a1)
{
  v2 = *a1;
  if (v2 && (*(*v2 + 32))(v2))
  {
    *a1 = 0;
  }

  return a1;
}

uint64_t boost::wrapexcept<std::out_of_range>::wrapexcept(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F10AFC68;
  std::logic_error::logic_error((a1 + 8), (a2 + 8));
  *(a1 + 8) = MEMORY[0x1E69E55B8] + 16;
  v4 = *(a2 + 32);
  *(a1 + 24) = &unk_1F10AFC98;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &unk_1F10AFBF0;
  *(a1 + 8) = &unk_1F10AFC20;
  *(a1 + 24) = &unk_1F10AFC48;
  return a1;
}

uint64_t boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::adopt(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (result)
  {
    result = (*(*result + 32))(result);
  }

  *a1 = a2;
  if (a2)
  {
    v5 = *(*a2 + 24);

    return v5(a2);
  }

  return result;
}

uint64_t corelm::TokenIDMap::copyTokenToID@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  a2[2] = 0;
  a2[1] = 0;
  *a2 = a2 + 1;
  v3 = *(*(this + 48) - 8);
  v4 = *(v3 + 40);
  if (v4)
  {
    v5 = v4 - 32;
  }

  else
  {
    v5 = 0;
  }

  while (v5 != v3)
  {
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

    v8 = *(v5 + 24);
    std::__tree<std::__value_type<std::string,long>,std::__map_value_compare<std::string,std::__value_type<std::string,long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,long>>>::__emplace_unique_key_args<std::string,std::string const&,long const&>(a2, &__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p.__r_.__value_.__r.__words[0] = v5 + 32;
    this = boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::increment(&__p);
    if (__p.__r_.__value_.__r.__words[0])
    {
      v5 = __p.__r_.__value_.__r.__words[0] - 32;
    }

    else
    {
      v5 = 0;
    }
  }

  return this;
}

uint64_t std::__tree<std::__value_type<std::string,long>,std::__map_value_compare<std::string,std::__value_type<std::string,long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,long>>>::__emplace_unique_key_args<std::string,std::string const&,long const&>(uint64_t a1, const void **a2)
{
  result = *std::__tree<std::string>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,long>,std::__map_value_compare<std::string,std::__value_type<std::string,long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,long>>>::__construct_node<std::string const&,long const&>();
  }

  return result;
}

void sub_19D221A60(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::string,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t corelm::TokenIDMap::copyIDToToken@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  a2[2] = 0;
  a2[1] = 0;
  *a2 = a2 + 1;
  v3 = *(*(this + 48) - 8);
  v4 = *(v3 + 40);
  if (v4)
  {
    v5 = v4 - 32;
  }

  else
  {
    v5 = 0;
  }

  while (v5 != v3)
  {
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

    v8 = *(v5 + 24);
    std::__tree<std::__value_type<long,std::string>,std::__map_value_compare<long,std::__value_type<long,std::string>,std::less<long>,true>,std::allocator<std::__value_type<long,std::string>>>::__emplace_unique_key_args<long,long const&,std::string const&>(a2, &v8);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p.__r_.__value_.__r.__words[0] = v5 + 32;
    this = boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::increment(&__p);
    if (__p.__r_.__value_.__r.__words[0])
    {
      v5 = __p.__r_.__value_.__r.__words[0] - 32;
    }

    else
    {
      v5 = 0;
    }
  }

  return this;
}

void *std::__tree<std::__value_type<long,std::string>,std::__map_value_compare<long,std::__value_type<long,std::string>,std::less<long>,true>,std::allocator<std::__value_type<long,std::string>>>::__emplace_unique_key_args<long,long const&,std::string const&>(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    std::__tree<std::__value_type<long,std::string>,std::__map_value_compare<long,std::__value_type<long,std::string>,std::less<long>,true>,std::allocator<std::__value_type<long,std::string>>>::__construct_node<long const&,std::string const&>();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
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

void sub_19D221CE4(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<long,std::string>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<long,std::string>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 63) < 0)
    {
      operator delete(__p[5]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

std::allocator<std::string> **std::back_insert_iterator<std::vector<std::string>>::operator=[abi:ne200100](std::allocator<std::string> **a1, __int128 *a2)
{
  v4 = *a1;
  v5 = *(*a1 + 1);
  v6 = *(*a1 + 2);
  if (v5 >= v6)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *v4) >> 3);
    v10 = v9 + 1;
    if (v9 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *v4) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x555555555555555)
    {
      v12 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v12 = v10;
    }

    v20.__end_cap_.__value_ = *a1;
    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(v4, v12);
    }

    v13 = 24 * v9;
    v14 = *a2;
    *(v13 + 16) = *(a2 + 2);
    *v13 = v14;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v8 = 24 * v9 + 24;
    v15 = *(v4 + 8) - *v4;
    v16 = v13 - v15;
    memcpy((v13 - v15), *v4, v15);
    v17 = *v4;
    *v4 = v16;
    v20.__first_ = v17;
    v20.__begin_ = v17;
    *(v4 + 8) = v8;
    v20.__end_ = v17;
    v18 = *(v4 + 16);
    *(v4 + 16) = 0;
    v20.__end_cap_.__value_ = v18;
    std::__split_buffer<std::string>::~__split_buffer(&v20);
  }

  else
  {
    v7 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v7;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v8 = v5 + 24;
  }

  *(v4 + 8) = v8;
  return a1;
}

const void **std::transform[abi:ne200100]<std::__wrap_iter<std::string *>,std::back_insert_iterator<std::vector<long>>,corelm::AbstractVocabulary::tokensToIDs(std::vector<std::string> const&)::{lambda(std::__wrap_iter<std::string *>)#1}>(__int128 *a1, __int128 *a2, const void **a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v7 = a1;
    do
    {
      if (*(v7 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *v7, *(v7 + 1));
      }

      else
      {
        v8 = *v7;
        __p.__r_.__value_.__r.__words[2] = *(v7 + 2);
        *&__p.__r_.__value_.__l.__data_ = v8;
      }

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

      v11 = (*(*a4 + 32))(a4, p_p, size);
      v13 = a3[1];
      v12 = a3[2];
      if (v13 >= v12)
      {
        v15 = *a3;
        v16 = v13 - *a3;
        v17 = v16 >> 3;
        v18 = (v16 >> 3) + 1;
        if (v18 >> 61)
        {
          std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
        }

        v19 = v12 - v15;
        if (v19 >> 2 > v18)
        {
          v18 = v19 >> 2;
        }

        if (v19 >= 0x7FFFFFFFFFFFFFF8)
        {
          v20 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v20 = v18;
        }

        if (v20)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a3, v20);
        }

        *(8 * v17) = v11;
        v14 = 8 * v17 + 8;
        memcpy(0, v15, v16);
        v21 = *a3;
        *a3 = 0;
        a3[1] = v14;
        a3[2] = 0;
        if (v21)
        {
          operator delete(v21);
        }
      }

      else
      {
        *v13 = v11;
        v14 = (v13 + 1);
      }

      a3[1] = v14;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v7 = (v7 + 24);
    }

    while (v7 != a2);
  }

  return a3;
}

void sub_19D222048(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void corelm::util::InFile::InFile<corelm::util::Path>(uint64_t a1, uint64_t a2)
{
  v3 = &unk_1F10AD1D0;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    __p = *(a2 + 8);
  }

  corelm::util::File::File(a1, &v3);
}

void sub_19D222128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void corelm::util::File::File(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F10AD1D0;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 8), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
  }

  *a1 = &unk_1F10AD3C8;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    __p = *(a2 + 8);
  }

  operator new();
}

void sub_19D222258(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  *v14 = v16;
  if (*(v14 + 31) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

std::fstream *__cdecl std::fstream::basic_fstream(std::fstream *this, const std::string *__s, std::ios_base::openmode __mode)
{
  *(&this[1].__sb_.__st_._mbstateL + 8) = 0;
  this->__sb_.__extbufnext_ = 0;
  this->__sb_.__extbuf_ = &unk_1F10AFE00;
  *(&this[1].__sb_.__st_._mbstateL + 2) = &unk_1F10AFE28;
  std::ios_base::init((&this[1].__sb_.__st_._mbstateL + 2), this->__sb_.__extbuf_min_);
  *(&this[1].__sb_.__st_last_._mbstateL + 3) = 0;
  *(&this[1].__sb_.__st_last_._mbstateL + 8) = -1;
  MEMORY[0x19EAF8950](this->__sb_.__extbuf_min_);
  if ((__s->__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v5 = __s->__r_.__value_.__r.__words[0];
  }

  if (!std::filebuf::open())
  {
    std::ios_base::clear((this + *(this->__sb_.__extbuf_ - 3)), *&this->__sb_.__extbuf_min_[*(this->__sb_.__extbuf_ - 3) + 8] | 4);
  }

  return this;
}

void sub_19D2223F4(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x19EAF8C10](v1);
  _Unwind_Resume(a1);
}

void (__cdecl ***std::fstream::~fstream(void (__cdecl ***a1)(std::fstream *__hidden this)))(std::fstream *__hidden this)
{
  v2 = a1 + 54;
  MEMORY[0x19EAF8960](a1 + 3);
  std::iostream::~basic_iostream();
  MEMORY[0x19EAF8C10](v2);
  return a1;
}

void std::fstream::~fstream(void (__cdecl ***a1)(std::fstream *__hidden this))
{
  v1 = a1 + 54;
  MEMORY[0x19EAF8960](a1 + 3);
  std::iostream::~basic_iostream();
  MEMORY[0x19EAF8C10](v1);

  JUMPOUT(0x19EAF8CA0);
}

void non-virtual thunk tostd::fstream::~fstream(void (__cdecl ***a1)(std::fstream *__hidden this))
{
  MEMORY[0x19EAF8960](a1 + 1);
  std::iostream::~basic_iostream();

  JUMPOUT(0x19EAF8C10);
}

{
  v1 = a1 + 52;
  MEMORY[0x19EAF8960](a1 + 1);
  std::iostream::~basic_iostream();
  MEMORY[0x19EAF8C10](v1);

  JUMPOUT(0x19EAF8CA0);
}

void virtual thunk tostd::fstream::~fstream(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  MEMORY[0x19EAF8960](v1 + 3);
  std::iostream::~basic_iostream();

  JUMPOUT(0x19EAF8C10);
}

{
  v1 = (a1 + *(*a1 - 24));
  MEMORY[0x19EAF8960](v1 + 3);
  std::iostream::~basic_iostream();
  MEMORY[0x19EAF8C10](v1 + 54);

  JUMPOUT(0x19EAF8CA0);
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::string>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

void corelm::CharacterTokenizer::tokenize(std::string::value_type *a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  memset(&v6, 0, sizeof(v6));
  if (a2)
  {
    v4 = a2;
    do
    {
      std::string::push_back(&v6, *a1++);
      --v4;
    }

    while (v4);
  }

  corelm::util::getChars(&v6, a3);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }
}

void sub_19D222A70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void corelm::CharacterTokenizer::detokenize(uint64_t *a1@<X1>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  corelm::util::join<std::vector<std::string> const&>(a1, __p, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_19D222AEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t corelm::util::join<std::vector<std::string> const&>@<X0>(uint64_t *a1@<X0>, std::string::size_type a2@<X1>, std::string *a3@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v17);
  v6 = *a1;
  v7 = a1[1];
  v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 3);
  if (v8 == 1)
  {
    v9 = *(v6 + 23);
    if (v9 >= 0)
    {
      v10 = v6;
    }

    else
    {
      v10 = *v6;
    }

    if (v9 >= 0)
    {
      v11 = *(v6 + 23);
    }

    else
    {
      v11 = *(v6 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, v10, v11);
    std::stringbuf::str();
  }

  else if (v8)
  {
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    __str.__r_.__value_.__r.__words[0] = &v17;
    __str.__r_.__value_.__l.__size_ = v12;
    while (v6 != v7)
    {
      std::ostream_iterator<std::string const&,char,std::char_traits<char>>::operator=[abi:ne200100](&__str, v6);
      v6 += 24;
    }

    std::stringbuf::str();
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    v14 = *(a2 + 23);
    if ((v14 & 0x80u) != 0)
    {
      v14 = *(a2 + 8);
    }

    std::string::basic_string(a3, &__str, 0, size - v14, &v22);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    a3->__r_.__value_.__r.__words[0] = 0;
    a3->__r_.__value_.__l.__size_ = 0;
    a3->__r_.__value_.__r.__words[2] = 0;
  }

  v17 = *MEMORY[0x1E69E54E8];
  *(&v17 + *(v17 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v18 = MEMORY[0x1E69E5548] + 16;
  if (v20 < 0)
  {
    operator delete(v19[7].__locale_);
  }

  v18 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v19);
  std::ostream::~ostream();
  return MEMORY[0x19EAF8C10](&v21);
}

void sub_19D222D3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a16);
  _Unwind_Resume(a1);
}

uint64_t std::ostream_iterator<std::string const&,char,std::char_traits<char>>::operator=[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, a2, v5);
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = strlen(*(a1 + 8));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a1, v6, v7);
  }

  return a1;
}

void corelm::WhitespaceTokenizer::tokenize(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X8>)
{
  corelm::util::split(a1, a2, " ", 1, &v11);
  v8 = 0;
  v9 = 0;
  v10 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v8, v11, v12, 0xAAAAAAAAAAAAAAABLL * ((v12 - v11) >> 3));
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v4 = v8;
  v5 = v9;
  v14 = a3;
  while (v4 != v5)
  {
    v6 = *(v4 + 23);
    if (v6 < 0)
    {
      v7 = *v4;
      v6 = *(v4 + 8);
    }

    else
    {
      v7 = v4;
    }

    memset(&v13, 0, sizeof(v13));
    for (; v6; --v6)
    {
      std::string::push_back(&v13, *v7++);
    }

    std::back_insert_iterator<std::vector<std::string>>::operator=[abi:ne200100](&v14, &v13);
    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }

    v4 += 24;
  }

  v13.__r_.__value_.__r.__words[0] = &v8;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v13);
  v13.__r_.__value_.__r.__words[0] = &v11;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v13);
}

void sub_19D222F10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  *(v21 - 56) = &a13;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v21 - 56));
  _Unwind_Resume(a1);
}

void corelm::WhitespaceTokenizer::detokenize(uint64_t *a1@<X1>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, " ");
  corelm::util::join<std::vector<std::string> const&>(a1, __p, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_19D222FC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *corelm::util::tuple_for_each<std::tuple<char const(&)[15],std::string const&,char const(&)[21]>,std::string corelm::util::strCat<char [15],std::string,char [21]>(char [15],std::string,char [21] const&)::{lambda(std::tuple<char const(&)[15],std::string const&,char const(&)[21]> const&)#1},0ul>(uint64_t a1, void **a2)
{
  corelm::util::tuple_at<0ul,std::tuple<char const(&)[15],std::string const&,char const(&)[21]>,std::string corelm::util::strCat<char [15],std::string,char [21]>(char [15],std::string,char [21] const&)::{lambda(0ul const&)#1}>(a1, a2);
  v4 = *(a1 + 8);
  v5 = *(v4 + 23);
  if (v5 >= 0)
  {
    v6 = *(a1 + 8);
  }

  else
  {
    v6 = *v4;
  }

  if (v5 >= 0)
  {
    v7 = *(v4 + 23);
  }

  else
  {
    v7 = *(v4 + 8);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, v6, v7);
  v8 = *(a1 + 16);
  v9 = strlen(v8);
  v10 = *a2;

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v8, v9);
}

void *corelm::util::tuple_at<0ul,std::tuple<char const(&)[15],std::string const&,char const(&)[21]>,std::string corelm::util::strCat<char [15],std::string,char [21]>(char [15],std::string,char [21] const&)::{lambda(0ul const&)#1}>(const char **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = strlen(*a1);

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v2, v4);
}

void corelm::AbstractPreProcessor::preProcess(uint64_t a1@<X1>, std::string *a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *a1, *(a1 + 8));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *a1;
    a2->__r_.__value_.__r.__words[2] = *(a1 + 16);
  }
}

void corelm::AbstractPreProcessor::postProcess(uint64_t a1@<X1>, std::string *a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *a1, *(a1 + 8));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *a1;
    a2->__r_.__value_.__r.__words[2] = *(a1 + 16);
  }
}

void **std::ostream_iterator<int &,char,std::char_traits<char>>::operator=[abi:ne200100](void **a1, unsigned int *a2)
{
  MEMORY[0x19EAF8A70](*a1, *a2);
  v3 = a1[1];
  if (v3)
  {
    v4 = strlen(a1[1]);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a1, v3, v4);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,long>,std::__map_value_compare<std::string,std::__value_type<std::string,long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::string>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *std::__split_buffer<int>::emplace_back<int>(void *result, _DWORD *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 1;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(result[4], v11);
    }

    v7 = ((v6 >> 2) + 1) / -2;
    v8 = ((v6 >> 2) + 1) / 2;
    v9 = &v5[-4 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-4 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[4 * v7];
  }

  *v4 = *a2;
  v3[2] = v4 + 4;
  return result;
}

void sub_19D223370(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D2233E8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *CoreNLP::CNNModelHandler::CNNModelHandler(uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 2) = a2;
  CoreNLP::CNNModel::CreateCNNModel(a2, &v8);
  v3 = v8;
  v8 = 0;
  v4 = *a1;
  *a1 = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
    v5 = v8;
    v8 = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v3 = *a1;
  }

  if (!v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Cannot load the given model files");
    exception->__vftable = (MEMORY[0x1E69E55C8] + 16);
    __cxa_throw(exception, off_1E76245E0, MEMORY[0x1E69E5298]);
  }

  return a1;
}

void sub_19D223520(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

void CoreNLP::CNNModelHandler::~CNNModelHandler(CoreNLP::CNNModelHandler *this)
{
  NSLog(&cfstr_DeallocedFeatu.isa);
  v2 = *this;
  *this = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

uint64_t CoreNLP::CNNModelHandler::copyFeatureRepresentation(CoreNLP::CNNModelHandler *this, __CFString *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = *(*this + 44);
  if (v5 == 2)
  {
    CoreNLP::CNNModelHandler::copyFeatureRepresentationWordBased(this, a2);
  }

  if (v5 == 1)
  {
    v6 = CoreNLP::CNNModelHandler::copyFeatureRepresentationCharBased(this, a2);
  }

  else
  {
    v6 = 0;
  }

  objc_autoreleasePoolPop(v4);
  return v6;
}

uint64_t CoreNLP::CNNModelHandler::copyFeatureRepresentationCharBased(CoreNLP::CNNModelHandler *this, __CFString *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(__p, -[__CFString UTF8String](a2, "UTF8String"));
  v20 = 0;
  v21 = 0;
  v22 = 0;
  if ((v24 & 0x80u) == 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  if ((v24 & 0x80u) == 0)
  {
    v3 = v24;
  }

  else
  {
    v3 = __p[1];
  }

  if (v3)
  {
    v4 = 0;
    do
    {
      v5 = *v2;
      if (v4 >= v22)
      {
        v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v20) >> 3);
        v8 = v7 + 1;
        if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
        }

        if (0x5555555555555556 * ((v22 - v20) >> 3) > v8)
        {
          v8 = 0x5555555555555556 * ((v22 - v20) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v22 - v20) >> 3) >= 0x555555555555555)
        {
          v9 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v9 = v8;
        }

        v25.__end_cap_.__value_ = &v20;
        if (v9)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(&v20, v9);
        }

        v10 = 24 * v7;
        *v10 = v5;
        *(v10 + 23) = 1;
        v4 = 24 * v7 + 24;
        v11 = (v10 - (v21 - v20));
        memcpy(v11, v20, v21 - v20);
        v12 = v20;
        v13 = v22;
        v20 = v11;
        v21 = v4;
        v22 = 0;
        v25.__end_ = v12;
        v25.__end_cap_.__value_ = v13;
        v25.__first_ = v12;
        v25.__begin_ = v12;
        std::__split_buffer<std::string>::~__split_buffer(&v25);
      }

      else
      {
        *v4 = v5;
        v6 = *&v26[7];
        *(v4 + 8) = *v26;
        *(v4 + 15) = v6;
        *(v4 + 23) = 1;
        v4 += 24;
      }

      v21 = v4;
      v2 = (v2 + 1);
      --v3;
    }

    while (v3);
  }

  memset(&v25, 0, 24);
  std::vector<std::vector<std::string>>::push_back[abi:ne200100](&v25, &v20);
  v14 = *this;
  memset(v19, 0, sizeof(v19));
  std::vector<std::vector<std::string>>::__init_with_size[abi:ne200100]<std::vector<std::string>*,std::vector<std::string>*>(v19, v25.__first_, v25.__begin_, 0xAAAAAAAAAAAAAAABLL * ((v25.__begin_ - v25.__first_) >> 3));
  v15 = CoreNLP::CNNModel::featureRepresentation(v14, v19);
  *v26 = v19;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](v26);
  *v26 = &v25;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](v26);
  v25.__first_ = &v20;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v25);
  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

void sub_19D2238B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  *(v23 - 104) = v22;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100]((v23 - 104));
  *(v23 - 104) = &a22;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100]((v23 - 104));
  *(v23 - 104) = &a13;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v23 - 104));
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void CoreNLP::CNNModelHandler::copyFeatureRepresentationWordBased(CoreNLP::CNNModelHandler *this, const __CFString *a2)
{
  v2[0] = 0;
  v2[1] = v2;
  v2[2] = 0x3052000000;
  v2[3] = __Block_byref_object_copy__5;
  v2[4] = __Block_byref_object_dispose__5;
  v2[5] = [MEMORY[0x1E695DF70] array];
  NLTokenizerCreate();
}

void sub_19D223A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CoreNLP::CNNModelHandler::copyFeatureRepresentationWithTokens(CoreNLP::CNNModelHandler *this, const __CFArray *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = *(*this + 44);
  if (v5 == 2)
  {
    v6 = CoreNLP::CNNModelHandler::copyFeatureRepresentationForTokens(this, a2);
  }

  else
  {
    if (v5 != 1)
    {
      v7 = 0;
      goto LABEL_7;
    }

    v6 = CoreNLP::CNNModelHandler::copyFeatureRepresentationCharBased(this, [(__CFArray *)a2 componentsJoinedByString:@" "]);
  }

  v7 = v6;
LABEL_7:
  objc_autoreleasePoolPop(v4);
  return v7;
}

uint64_t CoreNLP::CNNModelHandler::copyFeatureRepresentationForTokens(CoreNLP::CNNModelHandler *this, const __CFArray *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [(__CFArray *)a2 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v4)
  {
    v5 = *v18;
    do
    {
      v6 = 0;
      do
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(a2);
        }

        std::string::basic_string[abi:ne200100]<0>(__p, [*(*(&v17 + 1) + 8 * v6) UTF8String]);
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v13 = std::vector<std::string>::__emplace_back_slow_path<std::string&>(&v12, __p);
        std::vector<std::vector<std::string>>::push_back[abi:ne200100](&v21, &v12);
        v24 = &v12;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v24);
        if (v16 < 0)
        {
          operator delete(__p[0]);
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [(__CFArray *)a2 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v4);
  }

  v7 = *this;
  memset(v11, 0, sizeof(v11));
  std::vector<std::vector<std::string>>::__init_with_size[abi:ne200100]<std::vector<std::string>*,std::vector<std::string>*>(v11, v21, v22, 0xAAAAAAAAAAAAAAABLL * ((v22 - v21) >> 3));
  v8 = CoreNLP::CNNModel::featureRepresentation(v7, v11);
  __p[0] = v11;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](__p);
  __p[0] = &v21;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](__p);
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

void sub_19D223CA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = &a31;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

uint64_t ___ZN7CoreNLP15CNNModelHandler34copyFeatureRepresentationWordBasedEPK10__CFString_block_invoke(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) substringWithRange:{*a2, a2[1]}];
  v4 = *(*(*(a1 + 40) + 8) + 40);

  return [v4 addObject:v3];
}

BOOL CoreNLP::WordEmbedding::loadModel(uint64_t a1, uint64_t a2)
{
  CoreNLP::ReadOnlyFile<char>::open(a2, "r", 1, &v9);
  v3 = v9;
  v9 = 0uLL;
  v4 = *(a1 + 2760);
  *(a1 + 2752) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    if (*(&v9 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v9 + 1));
    }

    v5 = *(a1 + 2752);
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = v3;
    if (!v3)
    {
LABEL_8:
      v7 = 0;
      v6 = 0;
      return CoreNLP::WordEmbedding::initModel(a1, v6, 0, v7);
    }
  }

  v6 = *v5;
  v7 = *(v5 + 8);
  return CoreNLP::WordEmbedding::initModel(a1, v6, 0, v7);
}

uint64_t ___ZN7CoreNLP13WordEmbedding9loadModelEPK10__CFLocalePK10__CFString_block_invoke(uint64_t a1)
{
  if (*(a1 + 48) == 4)
  {
    v2 = CoreNLP::copyLocaleForLanguageID(4);
    CoreNLP::Resource::getAssetResource(v2, @"Embedding", *(a1 + 40), 0, &v6);
    if (v2)
    {
      CFRelease(v2);
    }
  }

  else
  {
    CoreNLP::Resource::getAssetResource(*(a1 + 32), @"Embedding", *(a1 + 40), 0, &v6);
  }

  if (v6)
  {
    CoreNLP::Resource::path(v6, v3, &__p);
    CoreNLP::ReadOnlyFile<char>::create();
  }

  std::unique_ptr<CoreNLP::Resource>::~unique_ptr[abi:ne200100](&v6);
  return 0;
}

BOOL CoreNLP::WordEmbedding::loadModel(const void **this, const __CFData *a2)
{
  nlp::CFScopedPtr<__CFData const*>::acquire(this + 346, a2);
  BytePtr = CFDataGetBytePtr(this[346]);
  Length = CFDataGetLength(a2);

  return CoreNLP::WordEmbedding::initModel(this, BytePtr, 0, Length);
}

void nlp::CFScopedPtr<__CFData const*>::acquire(const void **a1, CFTypeRef cf)
{
  if (*a1 != cf)
  {
    CFRetain(cf);

    nlp::CFScopedPtr<__CFData const*>::reset(a1, cf);
  }
}

void CoreNLP::WordEmbedding::buildModelFromEmbeddingMap(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void ***a6)
{
  std::vector<std::string>::clear[abi:ne200100](a6);
  v13 = *a2;
  v11 = (a2 + 1);
  v12 = v13;
  if (v13 != v11)
  {
    do
    {
      if (a1 + 16 == std::__tree<std::string>::find<std::string>(a1 + 8, v12 + 4))
      {
        std::vector<std::string>::push_back[abi:ne200100](a6, v12 + 2);
      }

      v14 = *(v12 + 1);
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
          v15 = *(v12 + 2);
          v16 = *v15 == v12;
          v12 = v15;
        }

        while (!v16);
      }

      v12 = v15;
    }

    while (v15 != v11);
  }

  v25 = 0;
  v24[0] = 0;
  v24[1] = 0;
  v22[1] = 0;
  v23 = v24;
  v21 = v22;
  v22[0] = 0;
  v17 = *(a1 + 8);
  if (v17 != (a1 + 16))
  {
    do
    {
      if (*(v17 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(&v20, v17[4], v17[5]);
      }

      else
      {
        v20 = *(v17 + 4);
      }

      if (a3 + 8 != std::__tree<std::string>::find<std::string>(a3, &v20.__r_.__value_.__l.__data_))
      {
        std::__tree<CoreNLP::NLTagSchemeType>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,CoreNLP::NLTagSchemeType const&>(&v23, &v25);
      }

      if (a4 + 8 != std::__tree<std::string>::find<std::string>(a4, &v20.__r_.__value_.__l.__data_))
      {
        std::__tree<CoreNLP::NLTagSchemeType>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,CoreNLP::NLTagSchemeType const&>(&v21, &v25);
      }

      ++v25;
      if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v20.__r_.__value_.__l.__data_);
      }

      v18 = v17[1];
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = v17[2];
          v16 = *v19 == v17;
          v17 = v19;
        }

        while (!v16);
      }

      v17 = v19;
    }

    while (v19 != (a1 + 16));
  }

  memset(&v20, 0, sizeof(v20));
  CoreNLP::WordEmbedding::moveToFlattenedEmbeddings(a1, (a1 + 8), &v20);
  CoreNLP::WordEmbedding::runQuantization(a1, &v20);
}

void sub_19D224278(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, void *a22, uint64_t a23, char a24, void *a25)
{
  if (v25)
  {
    MEMORY[0x19EAF8CA0](v25, 0x1000C40565EDBD2);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&a21, a22);
  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&a24, a25);
  _Unwind_Resume(a1);
}

uint64_t CoreNLP::WordEmbedding::buildModelFromDictionary(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  v5 = (a1 + 8);
  if (v5 != a2)
  {
    std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::vector<float>>,std::__tree_node<std::__value_type<std::string,std::vector<float>>,void *> *,long>>(v5, *a2, a2 + 1);
  }

  *(a1 + 2712) = *(a1 + 24);
  v6 = *(a3 + 4);
  v9 = *a3 > 0 && v6 > 0 && *a3 >= v6 && *a3 % v6 == 0;
  v10 = v9;
  if (v9)
  {
    *(a1 + 32) = *a3;
    std::string::operator=((a1 + 48), (a3 + 16));
    v11 = *(a3 + 40);
    *(a1 + 80) = *(a3 + 48);
    *(a1 + 72) = v11;
    v12 = *a1;
    *(a1 + 32) = (*(*(a1 + 8) + 64) - *(*(a1 + 8) + 56)) >> 2;
    v13 = (*(v12 + 64))(a1);
    CoreNLP::KDTree::initialize((a1 + 88), v13);
    v24[0] = 0;
    v24[1] = 0;
    v22[1] = 0;
    v23 = v24;
    v21 = v22;
    v22[0] = 0;
    v20[0] = 0;
    v20[1] = 0;
    v19 = v20;
    memset(v18, 0, sizeof(v18));
    v17[0] = 0;
    v17[1] = 0;
    v16[3] = v17;
    std::set<std::string>::set[abi:ne200100](v16, &v23);
    CoreNLP::WordEmbedding::buildModelFromEmbeddingMap(a1, v16, &v21, &v19, v14, v18);
  }

  return v10;
}

void sub_19D2244A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, void **a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, char a18, char *a19)
{
  std::__tree<std::string>::destroy(&a9, a10);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&a12, a13);
  a12 = &a15;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);
  std::__tree<std::string>::destroy(&a18, a19);
  std::__tree<std::string>::destroy(v19 - 80, *(v19 - 72));
  std::__tree<std::string>::destroy(v19 - 56, *(v19 - 48));
  _Unwind_Resume(a1);
}

void CoreNLP::WordEmbedding::moveToFlattenedEmbeddings(uint64_t a1, void *a2, std::vector<int> *a3)
{
  v5 = a2[2];
  v6 = (*(*a1 + 64))(a1);
  std::vector<int>::reserve(a3, v5 * v6);
  v9 = *a2;
  v7 = a2 + 1;
  v8 = v9;
  if (v9 != v7)
  {
    do
    {
      std::__copy_impl::operator()[abi:ne200100]<float *,float *,std::back_insert_iterator<std::vector<float>>>(&v14, v8[7], v8[8], &a3->__begin_);
      v10 = v8[7];
      v8[8] = 0;
      v8[9] = 0;
      v8[7] = 0;
      if (v10)
      {
        operator delete(v10);
      }

      v11 = v8[1];
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
          v12 = v8[2];
          v13 = *v12 == v8;
          v8 = v12;
        }

        while (!v13);
      }

      v8 = v12;
    }

    while (v12 != v7);
  }
}

void CoreNLP::WordEmbedding::runQuantization(int *a1, const float **a2)
{
  v4 = (*(*a1 + 64))(a1);
  CoreNLP::ProductQuantizer::initialize((a1 + 670), v4, a1[9], 0);
  CoreNLP::ProductQuantizer::runCompressing((a1 + 670), a1[678], *a2);
}

void sub_19D2246B8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CoreNLP::WordEmbedding::readQuantizedVectorsIntoKDTree(uint64_t result, void *a2)
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (*(result + 2712) >= 1)
  {
    v3 = result;
    v4 = (*(*v3 + 64))(v3);
    MEMORY[0x1EEE9AC00](v4, v5);
    v7 = (v15 - v6);
    if ((*(*v3 + 64))(v3) / *(v3 + 36) >= 1)
    {
      v8 = 0;
      v9 = 0;
      do
      {
        (*(*v3 + 64))(v3);
        v10 = *(v3 + 36);
        if (v10 >= 1)
        {
          v11 = &v7[(v10 * v9)];
          v12 = (*(v3 + 2696) + 4 * *(v3 + 2684) * (v8 + *(*a2 + v9)));
          do
          {
            v13 = *v12++;
            *v11++ = v13;
            --v10;
          }

          while (v10);
        }

        ++v9;
        v8 += 256;
      }

      while (v9 < (*(*v3 + 64))(v3) / *(v3 + 36));
    }

    CoreNLP::KDTree::readDataPoint((v3 + 88), v7);
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19D224B54(_Unwind_Exception *a1)
{
  *v3 = 0;
  MEMORY[0x19EAF8CA0](v1, v2);
  _Unwind_Resume(a1);
}

void CoreNLP::WordEmbedding::saveCompressedModel(uint64_t a1, const UInt8 **a2)
{
  v70 = *MEMORY[0x1E69E9840];
  v69 = 0;
  v4 = MEMORY[0x1E69E5530] + 64;
  v68 = MEMORY[0x1E69E5530] + 64;
  v5 = *(MEMORY[0x1E69E54D0] + 16);
  v65 = *(MEMORY[0x1E69E54D0] + 8);
  *&v66[*(v65 - 24) - 8] = v5;
  v6 = &v66[*(v65 - 24) - 8];
  std::ios_base::init(v6, v66);
  v7 = MEMORY[0x1E69E5530] + 24;
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  v65 = v7;
  v68 = v4;
  MEMORY[0x19EAF8950](v66);
  if (!*(a1 + 72))
  {
    if ((*(a1 + 71) & 0x8000000000000000) != 0)
    {
      if (!*(a1 + 56))
      {
        goto LABEL_7;
      }
    }

    else if (!*(a1 + 71))
    {
      goto LABEL_7;
    }

    std::ofstream::open();
  }

LABEL_7:
  LOBYTE(__src) = 0;
  std::vector<char>::vector[abi:ne200100](&bytes, 8);
  v63 = 96;
  v8 = *a2;
  v11 = CoreNLP::paddingOffset(&v63, v9);
  v12 = *(a1 + 72);
  if (v12)
  {
    CFDataAppendBytes(v12, v8, 96);
    CFDataAppendBytes(*(a1 + 72), bytes, v11);
  }

  else if (v67)
  {
    std::ostream::write();
    std::ostream::write();
  }

  v13 = *(*a2 + 6);
  v63 += v13;
  v14 = *(a1 + 2696);
  v16 = CoreNLP::paddingOffset(&v63, v10);
  v17 = *(a1 + 72);
  if (v17)
  {
    CFDataAppendBytes(v17, v14, v13);
    CFDataAppendBytes(*(a1 + 72), bytes, v16);
  }

  else if (v67)
  {
    std::ostream::write();
    std::ostream::write();
  }

  v18 = *(*a2 + 8);
  v63 += v18;
  v19 = *(a1 + 2720);
  v20 = CoreNLP::paddingOffset(&v63, v15);
  v21 = *(a1 + 72);
  if (v21)
  {
    CFDataAppendBytes(v21, v19, v18);
    CFDataAppendBytes(*(a1 + 72), bytes, v20);
  }

  else if (v67)
  {
    std::ostream::write();
    std::ostream::write();
  }

  __src = 0;
  v61 = 0;
  v62 = 0;
  v22 = *(a1 + 8);
  if (v22 == (a1 + 16))
  {
    v41 = 0;
    v40 = 0;
  }

  else
  {
    v23 = 0;
    do
    {
      v24 = v61;
      if (v61 >= v62)
      {
        v26 = __src;
        v27 = v61 - __src;
        v28 = (v61 - __src) >> 2;
        v29 = v28 + 1;
        if ((v28 + 1) >> 62)
        {
          std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
        }

        v30 = v62 - __src;
        if ((v62 - __src) >> 1 > v29)
        {
          v29 = v30 >> 1;
        }

        if (v30 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v31 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v31 = v29;
        }

        if (v31)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&__src, v31);
        }

        *(4 * v28) = v23;
        v25 = 4 * v28 + 4;
        memcpy(0, v26, v27);
        v32 = __src;
        __src = 0;
        v61 = v25;
        v62 = 0;
        if (v32)
        {
          operator delete(v32);
        }
      }

      else
      {
        *v61 = v23;
        v25 = (v24 + 4);
      }

      v61 = v25;
      v33 = *(v22 + 55);
      if (v33 < 0)
      {
        v34 = v22[4];
        v33 = v22[5];
      }

      else
      {
        v34 = (v22 + 4);
      }

      v35 = *(a1 + 72);
      if (v35)
      {
        CFDataAppendBytes(v35, v34, v33);
        CFDataAppendBytes(*(a1 + 72), bytes, 1);
      }

      else if (v67)
      {
        std::ostream::write();
        std::ostream::write();
      }

      v36 = *(v22 + 55);
      if (v36 < 0)
      {
        v36 = v22[5];
      }

      v37 = v22[1];
      if (v37)
      {
        do
        {
          v38 = v37;
          v37 = *v37;
        }

        while (v37);
      }

      else
      {
        do
        {
          v38 = v22[2];
          v39 = *v38 == v22;
          v22 = v38;
        }

        while (!v39);
      }

      v23 += v36 + 1;
      v22 = v38;
    }

    while (v38 != (a1 + 16));
    v41 = v61;
    v40 = v62;
    if (v61 < v62)
    {
      *v61 = 0;
      v42 = v41 + 4;
      goto LABEL_60;
    }
  }

  v43 = __src;
  v44 = v41 - __src;
  v45 = (v41 - __src) >> 2;
  v46 = v45 + 1;
  if ((v45 + 1) >> 62)
  {
    std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
  }

  v47 = v40 - __src;
  if (v47 >> 1 > v46)
  {
    v46 = v47 >> 1;
  }

  v48 = v47 >= 0x7FFFFFFFFFFFFFFCLL;
  v49 = 0x3FFFFFFFFFFFFFFFLL;
  if (!v48)
  {
    v49 = v46;
  }

  if (v49)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&__src, v49);
  }

  v50 = v45;
  v51 = (4 * v45);
  v52 = &v51[-v50];
  *v51 = 0;
  v42 = (v51 + 1);
  memcpy(v52, v43, v44);
  v53 = __src;
  __src = v52;
  v61 = v42;
  v62 = 0;
  if (v53)
  {
    operator delete(v53);
  }

LABEL_60:
  v61 = v42;
  v63 += *(*a2 + 10);
  v54 = bytes;
  v56 = CoreNLP::paddingOffset(&v63, v34);
  v57 = *(a1 + 72);
  if (v57)
  {
    CFDataAppendBytes(v57, v54, v56);
    CFDataAppendBytes(*(a1 + 72), bytes, 0);
  }

  else if (v67)
  {
    std::ostream::write();
    std::ostream::write();
  }

  v63 += *(*a2 + 12);
  v58 = CoreNLP::paddingOffset(&v63, v55);
  v59 = *(a1 + 72);
  if (v59)
  {
    CFDataAppendBytes(v59, __src, v61 - __src);
    CFDataAppendBytes(*(a1 + 72), bytes, v58);
  }

  else if (v67)
  {
    std::ostream::write();
    std::ostream::write();
  }

  CoreNLP::KDTree::builtNodes((a1 + 88));
}

void sub_19D225334(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  std::ofstream::~ofstream(&a18, MEMORY[0x1E69E54D0]);
  MEMORY[0x19EAF8C10](v18);
  _Unwind_Resume(a1);
}

void CoreNLP::KDTree::builtNodes(CoreNLP::KDTree *this)
{
  memset(__p, 0, sizeof(__p));
  std::vector<CoreNLP::Node *>::__init_with_size[abi:ne200100]<CoreNLP::Node **,CoreNLP::Node **>(__p, *this, *(this + 1), (*(this + 1) - *this) >> 3);
  CoreNLP::Serializer::getSerialized(this + 72, __p);
}

void sub_19D225434(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CoreNLP::WordEmbedding::getAllEmbeddings(CoreNLP::WordEmbedding *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 342);
  if (v3 != *(a1 + 343))
  {
    v7 = 0;
    do
    {
      v8 = (*(a1 + 341) + *v3);
      v25[0] = v8;
      v9 = *(a2 + 8);
      if (v9 >= *(a2 + 16))
      {
        v10 = std::vector<std::string>::__emplace_back_slow_path<char const*>(a2, v25);
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(*(a2 + 8), v8);
        v10 = v9 + 24;
        *(a2 + 8) = v9 + 24;
      }

      *(a2 + 8) = v10;
      CoreNLP::WordEmbedding::getEmbedding(a1, v7, &__p);
      v11 = *(a3 + 8);
      v12 = *(a3 + 16);
      if (v11 >= v12)
      {
        v13 = 0xAAAAAAAAAAAAAAABLL * ((v11 - *a3) >> 3);
        v14 = v13 + 1;
        if (v13 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
        }

        v15 = 0xAAAAAAAAAAAAAAABLL * ((v12 - *a3) >> 3);
        if (2 * v15 > v14)
        {
          v14 = 2 * v15;
        }

        if (v15 >= 0x555555555555555)
        {
          v16 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v16 = v14;
        }

        v25[4] = a3;
        if (v16)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(a3, v16);
        }

        v17 = 24 * v13;
        *v17 = 0;
        *(v17 + 8) = 0;
        *(v17 + 16) = 0;
        *v17 = __p;
        memset(&__p, 0, sizeof(__p));
        v18 = 24 * v13 + 24;
        v19 = *(a3 + 8) - *a3;
        v20 = 24 * v13 - v19;
        memcpy((v17 - v19), *a3, v19);
        v21 = *a3;
        *a3 = v20;
        *(a3 + 8) = v18;
        v22 = *(a3 + 16);
        *(a3 + 16) = 0;
        v25[2] = v21;
        v25[3] = v22;
        v25[0] = v21;
        v25[1] = v21;
        std::__split_buffer<std::vector<long>>::~__split_buffer(v25);
        begin = __p.__begin_;
        *(a3 + 8) = v18;
        if (begin)
        {
          __p.__end_ = begin;
          operator delete(begin);
        }
      }

      else
      {
        v11->__begin_ = 0;
        v11->__end_ = 0;
        v11->__end_cap_.__value_ = 0;
        *v11 = __p;
        *(a3 + 8) = v11 + 1;
      }

      ++v7;
      ++v3;
    }

    while (v3 != *(a1 + 343));
  }
}

void sub_19D22563C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CoreNLP::WordEmbedding::getEmbedding(CoreNLP::WordEmbedding *this@<X0>, unsigned int a2@<W1>, std::vector<int> *a3@<X8>)
{
  a3->__begin_ = 0;
  a3->__end_ = 0;
  a3->__end_cap_.__value_ = 0;
  if ((a2 & 0x80000000) == 0 && *(this + 678) >= a2)
  {
    v6 = (*(*this + 64))(this);
    std::vector<float>::resize(a3, v6);
    v7 = *(this + 672);
    if (v7 >= 1)
    {
      v8 = 0;
      v9 = *(this + 340) + v7 * a2;
      v10 = *(this + 337);
      v11 = *(this + 671);
      v12 = *(this + 9);
      begin = a3->__begin_;
      do
      {
        if (v12 >= 1)
        {
          v14 = (v10 + 4 * v11 * (*(v9 + v8) | (v8 << 8)));
          v15 = v12;
          v16 = begin;
          do
          {
            v17 = *v14++;
            *v16++ = v17;
            --v15;
          }

          while (v15);
        }

        ++v8;
        begin += v12;
      }

      while (v8 != v7);
    }
  }
}

void sub_19D22575C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void CoreNLP::WordEmbedding::getNearestNeighborsForVector(CoreNLP::WordEmbedding *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>, float a5@<S0>)
{
  v60 = *MEMORY[0x1E69E9840];
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v11 = *a2;
  v10 = *(a2 + 8);
  if ((*(*a1 + 64))(a1) == (v10 - v11) >> 2)
  {
    v53 = 0;
    v54 = 0;
    v55 = 0;
    CoreNLP::KDTree::getPossibleNNs(a1 + 88, *a2, &v53);
    std::__sort<std::__less<int,int> &,int *>();
    __p = 0;
    v58 = 0;
    v59 = 0;
    v12 = v53;
    if (v54 != v53)
    {
      v13 = 0;
      v14 = a3;
      while (1)
      {
        if (v13)
        {
          v15 = v12[v13];
          if (v15 <= v12[v13 - 1])
          {
            goto LABEL_48;
          }
        }

        else
        {
          v15 = *v12;
        }

        if (v15 >= 0)
        {
          v16 = v15;
        }

        else
        {
          v16 = -v15;
        }

        v17 = CoreNLP::WordEmbedding::computeCosineDistance(a1, *a2, v16);
        if (v15 < 0)
        {
          goto LABEL_48;
        }

        v18 = v17;
        if (v17 > a5 || v17 < 0.00000011921)
        {
          goto LABEL_48;
        }

        v20 = __p;
        v21 = v58;
        v22 = (v58 - __p) >> 3;
        if (v22 < v14)
        {
          break;
        }

        v24 = *__p;
        if (v17 < *__p)
        {
          if (v22 >= 2)
          {
            v25 = *(__p + 1);
            std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::less<std::pair<float,int>> &,std::__wrap_iter<std::pair<float,int>*>>(__p, &v56, (v58 - __p) >> 3);
            if (v21 - 2 == v26)
            {
              *v26 = v24;
              *(v26 + 1) = v25;
            }

            else
            {
              *v26 = *(v21 - 2);
              v26[1] = *(v21 - 1);
              *(v21 - 2) = v24;
              *(v21 - 1) = v25;
              std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::less<std::pair<float,int>> &,std::__wrap_iter<std::pair<float,int>*>>(v20, (v26 + 2), &v56, ((v26 + 2) - v20) >> 3);
            }
          }

          v23 = v58;
          v33 = v58 - 2;
          v58 = v33;
          if (v33 >= v59)
          {
            v34 = (v33 - __p) >> 3;
            if ((v34 + 1) >> 61)
            {
              std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
            }

            v35 = (v59 - __p) >> 2;
            if (v35 <= v34 + 1)
            {
              v35 = v34 + 1;
            }

            if (v59 - __p >= 0x7FFFFFFFFFFFFFF8)
            {
              v36 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v36 = v35;
            }

            if (v36)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&__p, v36);
            }

            v37 = (8 * v34);
            *v37 = v18;
            *(v37 + 1) = v15;
            v23 = 8 * v34 + 8;
            v38 = v37 - (v58 - __p);
            memcpy(v38, __p, v58 - __p);
            v39 = __p;
            __p = v38;
            v58 = v23;
            v59 = 0;
            if (v39)
            {
              operator delete(v39);
            }
          }

          else
          {
            *(v23 - 8) = v18;
            *(v23 - 4) = v15;
          }

          goto LABEL_47;
        }

LABEL_48:
        ++v13;
        v12 = v53;
        if (v13 >= (v54 - v53) >> 2)
        {
          v40 = v58 - __p;
          goto LABEL_51;
        }
      }

      if (v58 >= v59)
      {
        v27 = v22 + 1;
        if ((v22 + 1) >> 61)
        {
          std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
        }

        v28 = v59 - __p;
        if ((v59 - __p) >> 2 > v27)
        {
          v27 = v28 >> 2;
        }

        if (v28 >= 0x7FFFFFFFFFFFFFF8)
        {
          v29 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v29 = v27;
        }

        if (v29)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&__p, v29);
        }

        v30 = 8 * v22;
        *v30 = v17;
        *(v30 + 4) = v15;
        v23 = 8 * v22 + 8;
        v31 = (v30 - (v58 - __p));
        memcpy(v31, __p, v58 - __p);
        v32 = __p;
        __p = v31;
        v58 = v23;
        v59 = 0;
        if (v32)
        {
          operator delete(v32);
        }
      }

      else
      {
        *v58 = v17;
        *(v21 + 1) = v15;
        v23 = (v21 + 2);
      }

LABEL_47:
      v58 = v23;
      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::less<std::pair<float,int>> &,std::__wrap_iter<std::pair<float,int>*>>(__p, v23, &v56, (v23 - __p) >> 3);
      goto LABEL_48;
    }

    v40 = 0;
LABEL_51:
    std::vector<std::pair<std::string,float>>::resize(a4, (v40 >> 3));
    v41 = v40 >> 3;
    v42 = __p;
    if (__p != v58)
    {
      v43 = 32 * v41 - 8;
      do
      {
        v44 = *v42;
        v45 = *a4;
        MEMORY[0x19EAF8860](*a4 + v43 - 24, *(a1 + 341) + *(*(a1 + 342) + 4 * *(v42 + 1)));
        *(v45 + v43) = v44;
        v46 = __p;
        v47 = v58;
        v48 = (v58 - __p) >> 3;
        if (v48 >= 2)
        {
          v49 = *__p;
          v50 = *(__p + 1);
          std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::less<std::pair<float,int>> &,std::__wrap_iter<std::pair<float,int>*>>(__p, &v56, v48);
          if (v47 - 2 == v51)
          {
            *v51 = v49;
            *(v51 + 1) = v50;
          }

          else
          {
            *v51 = *(v47 - 2);
            v51[1] = *(v47 - 1);
            *(v47 - 2) = v49;
            *(v47 - 1) = v50;
            std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::less<std::pair<float,int>> &,std::__wrap_iter<std::pair<float,int>*>>(v46, (v51 + 2), &v56, ((v51 + 2) - v46) >> 3);
          }
        }

        v42 = __p;
        v58 -= 2;
        v43 -= 32;
        LODWORD(v41) = v41 - 1;
      }

      while (__p != v58);
    }

    if (v41 >= 1)
    {
      std::vector<std::pair<std::string,float>>::erase(a4, *a4, (32 * (v41 & 0x7FFFFFFF) + *a4));
      v42 = __p;
    }

    if (v42)
    {
      v58 = v42;
      operator delete(v42);
    }

    if (v53)
    {
      v54 = v53;
      operator delete(v53);
    }
  }

  v52 = *MEMORY[0x1E69E9840];
}

void sub_19D225C24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    a15 = __p;
    operator delete(__p);
  }

  if (a10)
  {
    operator delete(a10);
  }

  std::vector<std::pair<std::string,float>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

float CoreNLP::WordEmbedding::computeCosineDistance(CoreNLP::WordEmbedding *this, const float *a2, int a3)
{
  if (a3 < 0 || *(this + 678) <= a3)
  {
    return 2.0;
  }

  v3 = *(this + 672);
  v4 = 2.0;
  if (v3 >= 1)
  {
    v5 = 0;
    v6 = *(this + 9);
    v7 = 0.0;
    v8 = 0.0;
    v9 = 0.0;
    do
    {
      if (v6 >= 1)
      {
        v10 = (*(this + 337) + 4 * *(this + 671) * (*(*(this + 340) + v3 * a3 + v5) | (v5 << 8)));
        v11 = *(this + 9);
        v12 = a2;
        do
        {
          v13 = *v12++;
          v14 = v13;
          v8 = v8 + (v14 * v14);
          v15 = *v10++;
          v9 = v9 + (v15 * v15);
          v7 = v7 + (v14 * v15);
          --v11;
        }

        while (v11);
        a2 += (v6 - 1) + 1;
      }

      ++v5;
    }

    while (v5 != v3);
    v16 = v9 * v8;
    if (v16 > 0.0)
    {
      v4 = 2.0 - (v7 + v7) / sqrtf(v16);
    }
  }

  return sqrtf(fmaxf(v4, 0.0));
}

void std::vector<std::pair<std::string,float>>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (v3 - *a1) >> 5;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 32 * a2;
      while (v3 != v6)
      {
        v7 = *(v3 - 9);
        v3 -= 4;
        if (v7 < 0)
        {
          operator delete(*v3);
        }
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    std::vector<std::pair<std::string,float>>::__append(a1, v5);
  }
}

uint64_t std::vector<std::pair<std::string,float>>::erase(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (a3 != a2)
  {
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::pair<std::string,float> *,std::pair<std::string,float> *,std::pair<std::string,float> *>(&v10, a3, *(a1 + 8), a2);
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7 != v5)
    {
      do
      {
        v8 = *(v7 - 9);
        v7 -= 4;
        if (v8 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
    }

    *(a1 + 8) = v6;
  }

  return a2;
}

void CoreNLP::WordEmbedding::getNearestNeighbors(CoreNLP::WordEmbedding *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>, float a5@<S0>)
{
  v24 = *MEMORY[0x1E69E9840];
  if ((*(*a1 + 72))(a1) == 10 || (*(*a1 + 72))(a1) == 4)
  {
    v10 = a3 < 50;
    v11 = 50;
  }

  else
  {
    v10 = a3 < 20;
    v11 = 20;
  }

  if (!v10)
  {
    a3 = v11;
  }

  v20 = 0uLL;
  v21 = 0;
  v12 = (*(*a1 + 64))(a1);
  LODWORD(v18[0]) = 0;
  std::vector<float>::vector[abi:ne200100](&v19, v12);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v23, *a2, *(a2 + 8));
  }

  else
  {
    v23 = *a2;
  }

  memset(v18, 0, sizeof(v18));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v18, &v23, &v24, 1uLL);
  AverageEmbedding = CoreNLP::WordEmbedding::getAverageEmbedding(a1, v18, &v19);
  v22 = v18;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v22);
  if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (AverageEmbedding)
    {
      goto LABEL_12;
    }

LABEL_15:
    *a4 = v20;
    a4[2] = v21;
    v21 = 0;
    v20 = 0uLL;
    goto LABEL_16;
  }

  operator delete(v23.__r_.__value_.__l.__data_);
  if ((AverageEmbedding & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_12:
  __p = 0;
  v16 = 0;
  v17 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, v19.__begin_, v19.__end_, v19.__end_ - v19.__begin_);
  CoreNLP::WordEmbedding::getNearestNeighborsForVector(a1, &__p, a3, a4, a5);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

LABEL_16:
  if (v19.__begin_)
  {
    v19.__end_ = v19.__begin_;
    operator delete(v19.__begin_);
  }

  v19.__begin_ = &v20;
  std::vector<std::pair<std::string,float>>::__destroy_vector::operator()[abi:ne200100](&v19);
  v14 = *MEMORY[0x1E69E9840];
}

void sub_19D2260C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char *__p, char *a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (__p)
  {
    a17 = __p;
    operator delete(__p);
  }

  __p = &a19;
  std::vector<std::pair<std::string,float>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

float CoreNLP::WordEmbedding::getDistance(CoreNLP::WordEmbedding *a1, const char *a2, uint64_t a3)
{
  *v9 = 0;
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  if (!CoreNLP::WordEmbedding::getWordID(a1, a2, &v9[1]))
  {
    return 2.0;
  }

  v5 = *(a3 + 23) >= 0 ? a3 : *a3;
  if (!CoreNLP::WordEmbedding::getWordID(a1, v5, v9))
  {
    return 2.0;
  }

  v7 = v9[0];
  v6 = v9[1];

  return CoreNLP::WordEmbedding::computeCosineDistance(a1, v6, v7);
}

float CoreNLP::WordEmbedding::computeCosineDistance(CoreNLP::WordEmbedding *this, int a2, int a3)
{
  if (a2 < 0)
  {
    return 2.0;
  }

  v3 = *(this + 678);
  if (v3 <= a3 || a3 < 0 || v3 <= a2)
  {
    return 2.0;
  }

  v4 = *(this + 672);
  v5 = 2.0;
  if (v4 >= 1)
  {
    v6 = 0;
    v7 = *(this + 340);
    v8 = v7 + v4 * a2;
    v9 = v7 + v4 * a3;
    v10 = *(this + 337);
    v11 = *(this + 671);
    v12 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
    do
    {
      if (*(this + 9) >= 1)
      {
        v15 = (v10 + 4 * (*(v9 + v6) | (v6 << 8)) * v11);
        v16 = (v10 + 4 * v11 * (*(v8 + v6) | (v6 << 8)));
        v17 = *(this + 9);
        do
        {
          v18 = *v16++;
          v19 = v18;
          v13 = v13 + (v19 * v19);
          v20 = *v15++;
          v14 = v14 + (v20 * v20);
          v12 = v12 + (v19 * v20);
          --v17;
        }

        while (v17);
      }

      ++v6;
    }

    while (v6 != v4);
    v21 = v14 * v13;
    if (v21 > 0.0)
    {
      v5 = 2.0 - (v12 + v12) / sqrtf(v21);
    }
  }

  return sqrtf(fmaxf(v5, 0.0));
}

void CoreNLP::SingletonResourceManager<NLLanguageID,CoreNLP::ReadOnlyFile<char>>::clearEmptyResources()
{
  if (CoreNLP::SingletonResourceManager<NLLanguageID,CoreNLP::ReadOnlyFile<char>>::getQueue(void)::onceToken != -1)
  {
    CoreNLP::SingletonResourceManager<NLLanguageID,CoreNLP::ReadOnlyFile<char>>::clearEmptyResources();
  }

  v1 = CoreNLP::SingletonResourceManager<NLLanguageID,CoreNLP::ReadOnlyFile<char>>::getQueue(void)::queue;

  dispatch_sync(v1, &__block_literal_global_41);
}

{
  dispatch_once(&CoreNLP::SingletonResourceManager<NLLanguageID,CoreNLP::ReadOnlyFile<char>>::getQueue(void)::onceToken, &__block_literal_global_34);
}

void *CoreNLP::WordEmbedding::getCentroids@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v8 = 0;
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  result = CoreNLP::WordEmbedding::getWordID(a1, a2, &v8);
  if (result)
  {
    v6 = *(a1 + 2688);
    v7 = (*(a1 + 2720) + v6 * v8);
    return std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a3, v7, &v7[v6], v6);
  }

  return result;
}

void sub_19D22638C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(uint64_t *a1, uint64_t a2)
{
  MEMORY[0x19EAF89A0](&v20, a1, 0);
  if (v20 != 1)
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

  v4 = (a1 + *(*a1 - 24));
  width = v4->__width_;
  if (width >= 0x7FFFFFFFFFFFFFF7)
  {
    v6 = 0x7FFFFFFFFFFFFFF7;
  }

  else
  {
    v6 = v4->__width_;
  }

  if (width >= 1)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFF7;
  }

  std::ios_base::getloc(v4);
  v8 = std::locale::use_facet(&v19, MEMORY[0x1E69E5318]);
  std::locale::~locale(&v19);
  if (!v7)
  {
    v17 = *a1;
    *(a1 + *(*a1 - 24) + 24) = 0;
    v16 = 4;
    goto LABEL_28;
  }

  v9 = 0;
  v10 = a1 + 5;
  while (1)
  {
    v11 = *(v10 + *(*a1 - 24));
    v12 = v11[3];
    if (v12 == v11[4])
    {
      break;
    }

    LOBYTE(v13) = *v12;
LABEL_16:
    if ((v13 & 0x80) == 0 && (*(&v8[1].~facet + (v13 & 0x7F)) & 0x4000) != 0)
    {
      v16 = 0;
      goto LABEL_26;
    }

    std::string::push_back(a2, v13);
    v14 = *(v10 + *(*a1 - 24));
    v15 = v14[3];
    if (v15 == v14[4])
    {
      (*(*v14 + 80))(v14);
    }

    else
    {
      v14[3] = v15 + 1;
    }

    if (v7 == ++v9)
    {
      v16 = 0;
      v9 = 1;
      goto LABEL_26;
    }
  }

  v13 = (*(*v11 + 72))(v11);
  if (v13 != -1)
  {
    goto LABEL_16;
  }

  v16 = 2;
LABEL_26:
  v17 = *a1;
  *(a1 + *(*a1 - 24) + 24) = 0;
  if (!v9)
  {
    v16 |= 4u;
  }

LABEL_28:
  std::ios_base::clear((a1 + *(v17 - 24)), *(a1 + *(v17 - 24) + 32) | v16);
  return a1;
}

void sub_19D2265EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  std::locale::~locale(&a9);
  __cxa_begin_catch(a1);
  v11 = *v9;
  *(v9 + *(*v9 - 24) + 32) |= 1u;
  if ((*(v9 + *(v11 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    v12 = *v9;
    JUMPOUT(0x19D2265ACLL);
  }

  __cxa_rethrow();
}

uint64_t std::vector<CoreNLP::Node *>::__init_with_size[abi:ne200100]<CoreNLP::Node **,CoreNLP::Node **>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<CoreNLP::NLAttributedToken *>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_19D2266FC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN7CoreNLP24SingletonResourceManagerI12NLLanguageIDNS_12ReadOnlyFileIcEEE8getQueueEv_block_invoke()
{
  v0 = dispatch_queue_create("com.apple.CoreNLP.SingletonResourceManager", 0);
  CoreNLP::SingletonResourceManager<NLLanguageID,CoreNLP::ReadOnlyFile<char>>::getQueue(void)::queue = v0;
  global_queue = dispatch_get_global_queue(-32768, 0);

  dispatch_set_target_queue(v0, global_queue);
}

void *std::set<std::string>::set[abi:ne200100](void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::set<std::string>::insert[abi:ne200100]<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(a1, *a2, a2 + 1);
  return a1;
}

uint64_t std::set<std::string>::insert[abi:ne200100]<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(uint64_t result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::string>::__emplace_hint_unique_key_args<std::string,std::string const&>(v5, (v5 + 1), v4 + 4);
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

uint64_t **std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::vector<float>>,std::__tree_node<std::__value_type<std::string,std::vector<float>>,void *> *,long>>(uint64_t **result, void *a2, void *a3)
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

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = std::__tree<std::__value_type<unsigned long,std::vector<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::vector<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::vector<unsigned long>>>>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          v16[0] = (v8 + 4);
          v16[1] = (v8 + 7);
          std::pair<std::string &,std::vector<float> &>::operator=[abi:ne200100]<std::string const,std::vector<float>,0>(v16, (v9 + 4));
          leaf_high = std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::__find_leaf_high(v5, v16, v15 + 4);
          std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__insert_node_at(v5, v16[0], leaf_high, v15);
          v15 = v14;
          if (v14)
          {
            v14 = std::__tree<std::__value_type<unsigned long,std::vector<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::vector<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::vector<unsigned long>>>>::_DetachedTreeCache::__detach_next(v14);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          v8 = v15;
          if (v15)
          {
            v12 = a2 == a3;
          }

          else
          {
            v12 = 1;
          }

          v9 = a2;
        }

        while (!v12);
      }
    }

    result = std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v13);
  }

  if (a2 != a3)
  {
    std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::__emplace_multi<std::pair<std::string const,std::vector<float>> const&>();
  }

  return result;
}

void sub_19D226A14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::pair<std::string &,std::vector<float> &>::operator=[abi:ne200100]<std::string const,std::vector<float>,0>(uint64_t a1, uint64_t a2)
{
  std::string::operator=(*a1, a2);
  v4 = *(a1 + 8);
  if (v4 != (a2 + 24))
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v4, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 2);
  }

  return a1;
}

void *std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::__find_leaf_high(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v5 = v4;
        if (!std::less<std::string>::operator()[abi:ne200100](a1, a3, (v4 + 32)))
        {
          break;
        }

        v4 = *v5;
        result = v5;
        if (!*v5)
        {
          goto LABEL_8;
        }
      }

      v4 = v5[1];
    }

    while (v4);
    result = v5 + 1;
  }

  else
  {
    result = (a1 + 8);
  }

LABEL_8:
  *a2 = v5;
  return result;
}

uint64_t std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(*a1, v2);
  }

  return a1;
}

void sub_19D226BB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::vector<float>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::vector<float>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_19D226CAC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::string>::__emplace_back_slow_path<char const*>(uint64_t a1, char **a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
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

  v13.__end_cap_.__value_ = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v6);
  }

  v13.__first_ = 0;
  v13.__begin_ = (24 * v2);
  v13.__end_ = (24 * v2);
  v13.__end_cap_.__value_ = 0;
  std::string::basic_string[abi:ne200100]<0>((24 * v2), *a2);
  v7 = 24 * v2 + 24;
  v8 = *(a1 + 8) - *a1;
  v9 = 24 * v2 - v8;
  memcpy(v13.__begin_ - v8, *a1, v8);
  v10 = *a1;
  *a1 = v9;
  *(a1 + 8) = v7;
  v11 = *(a1 + 16);
  *(a1 + 16) = v13.__end_cap_.__value_;
  v13.__end_ = v10;
  v13.__end_cap_.__value_ = v11;
  v13.__first_ = v10;
  v13.__begin_ = v10;
  std::__split_buffer<std::string>::~__split_buffer(&v13);
  return v7;
}

uint64_t std::vector<std::pair<std::string,float>>::__append(uint64_t result, unint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (a2 <= (v5 - v4) >> 5)
  {
    if (a2)
    {
      v11 = 32 * a2;
      v12 = v4 + 32 * a2;
      do
      {
        *v4 = 0;
        *(v4 + 8) = 0;
        *(v4 + 24) = 0;
        *(v4 + 16) = 0;
        v4 += 32;
        v11 -= 32;
      }

      while (v11);
      v4 = v12;
    }

    *(result + 8) = v4;
  }

  else
  {
    v6 = v4 - *result;
    v7 = a2 + (v6 >> 5);
    if (v7 >> 59)
    {
      std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
    }

    v8 = v6 >> 5;
    v9 = v5 - *result;
    if (v9 >> 4 > v7)
    {
      v7 = v9 >> 4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v21[4] = result;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,float>>>(result, v10);
    }

    v13 = 32 * v8;
    v14 = 32 * a2;
    v15 = 32 * v8;
    v16 = 32 * v8 + 32 * a2;
    do
    {
      *v15 = 0;
      *(v15 + 8) = 0;
      *(v15 + 24) = 0;
      *(v15 + 16) = 0;
      v15 += 32;
      v14 -= 32;
    }

    while (v14);
    v17 = *(result + 8) - *result;
    v18 = v13 - v17;
    memcpy((v13 - v17), *result, v17);
    v19 = *v3;
    *v3 = v18;
    v3[1] = v16;
    v20 = v3[2];
    v3[2] = 0;
    v21[2] = v19;
    v21[3] = v20;
    v21[0] = v19;
    v21[1] = v19;
    return std::__split_buffer<std::pair<std::string,float>>::~__split_buffer(v21);
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,float>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::pair<std::string,float>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::pair<std::string,float>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::pair<std::string,float>>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 4;
      *(a1 + 16) = v2 - 4;
      if (*(v2 - 9) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

__int128 *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::pair<std::string,float> *,std::pair<std::string,float> *,std::pair<std::string,float> *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (*(a4 + 23) < 0)
      {
        operator delete(*a4);
      }

      v7 = *v5;
      *(a4 + 16) = *(v5 + 2);
      *a4 = v7;
      *(v5 + 23) = 0;
      *v5 = 0;
      *(a4 + 24) = *(v5 + 6);
      v5 += 2;
      a4 += 32;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void ___ZN7CoreNLP24SingletonResourceManagerI12NLLanguageIDNS_12ReadOnlyFileIcEEE19clearEmptyResourcesEv_block_invoke()
{
  if (CoreNLP::SingletonResourceManager<NLLanguageID,CoreNLP::ReadOnlyFile<char>>::getPersistentCache(void)::onceToken != -1)
  {
    ___ZN7CoreNLP24SingletonResourceManagerI12NLLanguageIDNS_12ReadOnlyFileIcEEE21getPersistentResourceERKS1_U13block_pointerFPS3_vE_block_invoke_cold_1();
  }

  v0 = CoreNLP::SingletonResourceManager<NLLanguageID,CoreNLP::ReadOnlyFile<char>>::getPersistentCache(void)::cache;
  v2 = (CoreNLP::SingletonResourceManager<NLLanguageID,CoreNLP::ReadOnlyFile<char>>::getPersistentCache(void)::cache + 8);
  v1 = *CoreNLP::SingletonResourceManager<NLLanguageID,CoreNLP::ReadOnlyFile<char>>::getPersistentCache(void)::cache;
  if (*CoreNLP::SingletonResourceManager<NLLanguageID,CoreNLP::ReadOnlyFile<char>>::getPersistentCache(void)::cache != (CoreNLP::SingletonResourceManager<NLLanguageID,CoreNLP::ReadOnlyFile<char>>::getPersistentCache(void)::cache + 8))
  {
    do
    {
      v3 = v1[1];
      if (v1[5])
      {
        if (v3)
        {
          do
          {
            v4 = v3;
            v3 = *v3;
          }

          while (v3);
        }

        else
        {
          do
          {
            v4 = v1[2];
            v5 = *v4 == v1;
            v1 = v4;
          }

          while (!v5);
        }
      }

      else
      {
        v6 = v1;
        if (v3)
        {
          do
          {
            v4 = v3;
            v3 = *v3;
          }

          while (v3);
        }

        else
        {
          do
          {
            v4 = v6[2];
            v5 = *v4 == v6;
            v6 = v4;
          }

          while (!v5);
        }

        std::__tree<std::__value_type<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,CoreNLP::ReadOnlyFile<char> *>,std::__map_value_compare<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,std::__value_type<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,CoreNLP::ReadOnlyFile<char> *>,std::less<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>>,true>,std::allocator<std::__value_type<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,CoreNLP::ReadOnlyFile<char> *>>>::__remove_node_pointer(v0, v1);
        operator delete(v1);
      }

      v1 = v4;
    }

    while (v4 != v2);
  }
}

void *std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (v7 - *result < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      v9 = 2 * v7;
      if (2 * v7 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<char>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (v11 - v8 >= a4)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

_DWORD *std::__copy_impl::operator()[abi:ne200100]<float *,float *,std::back_insert_iterator<std::vector<float>>>(uint64_t a1, _DWORD *a2, _DWORD *a3, const void **a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    v7 = a4[1];
    do
    {
      v8 = a4[2];
      if (v7 >= v8)
      {
        v9 = *a4;
        v10 = v7 - *a4;
        v11 = v10 >> 2;
        v12 = (v10 >> 2) + 1;
        if (v12 >> 62)
        {
          std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
        }

        v13 = v8 - v9;
        if (v13 >> 1 > v12)
        {
          v12 = v13 >> 1;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v14 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v12;
        }

        if (v14)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a4, v14);
        }

        *(4 * v11) = *v5;
        v7 = (4 * v11 + 4);
        memcpy(0, v9, v10);
        v15 = *a4;
        *a4 = 0;
        a4[1] = v7;
        a4[2] = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *v7 = *v5;
        v7 += 4;
      }

      a4[1] = v7;
      ++v5;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void CoreNLP::logBlock(int a1, const __CFString *this)
{
  CoreNLP::getUTF8StringFromCFString(this, __p);
  if ((v5 & 0x80u) == 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  if ((v5 & 0x80u) == 0)
  {
    v3 = v5;
  }

  else
  {
    v3 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], v2, v3);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_19D2273F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CoreNLP::annotationToTrainingLabel(int a1@<W1>, unsigned __int16 *a2@<X2>, std::string *a3@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a3, *a2, *(a2 + 1));
  }

  else
  {
    *&a3->__r_.__value_.__l.__data_ = *a2;
    a3->__r_.__value_.__r.__words[2] = *(a2 + 2);
  }

  if (a1 == 6)
  {
    if (*(a2 + 23) < 0)
    {
      if (*(a2 + 1) == 7 && **a2 == 1852797520 && *(*a2 + 3) == 1853189998)
      {
        goto LABEL_40;
      }

      if (*(a2 + 1) == 3 && **a2 == 21072 && *(*a2 + 2) == 80)
      {
        goto LABEL_40;
      }

      if (*(a2 + 1) == 4 && **a2 == 1146114640 || *(a2 + 1) == 4 && **a2 == 1380995664)
      {
        goto LABEL_40;
      }

      if (*(a2 + 1) != 4)
      {
        goto LABEL_36;
      }

      v12 = *a2;
    }

    else
    {
      v6 = *(a2 + 23);
      if (v6 == 3)
      {
        v7 = *(a2 + 2);
        v8 = *a2 == 21072;
        v9 = 80;
        goto LABEL_32;
      }

      if (v6 != 4)
      {
        if (v6 != 7)
        {
          goto LABEL_36;
        }

        v7 = *(a2 + 3);
        v8 = *a2 == 1852797520;
        v9 = 1853189998;
LABEL_32:
        if (!v8 || v7 != v9)
        {
LABEL_36:
          if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "PRPT") && !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "WP") && !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "EX") && !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "WRB"))
          {
            v13 = "NN";
            if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "NNS") && !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "NN"))
            {
              v13 = "NNP";
              if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "NNPS") && !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "NNP"))
              {
                v13 = "JJ";
                if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "Adjective") && !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "JJ") && !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "JJS") && !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "JJR"))
                {
                  v13 = "RB";
                  if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "Adverb") && !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "RB") && !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "RBC") && !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "RBN") && !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "RBS") && !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "RBW"))
                  {
                    v13 = "DT";
                    if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "Determiner") && !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "DT") && !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "DTO") && !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "DTP") && !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "DTW"))
                    {
                      v13 = "RP";
                      if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "Particle") && !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "RP") && !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "RPP") && !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "RBP") && !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "TO") && !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "PRE"))
                      {
                        v13 = "IN";
                        if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "Preposition") && !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "IN"))
                        {
                          if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "Number") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "LS"))
                          {
                            v13 = "CD";
                          }

                          else
                          {
                            v13 = "CD";
                            if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "CD"))
                            {
                              if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "Conjunction") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "CS"))
                              {
                                v13 = "CC";
                              }

                              else
                              {
                                v13 = "CC";
                                if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "CC"))
                                {
                                  v13 = "UH";
                                  if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "Interjection") && !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "UH"))
                                  {
                                    if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "VB") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "VBC") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "VBD") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "VBF") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "VBG") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "VBI") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "VBM") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "VBN") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "VBP") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "VBR") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "VBS") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "VBT") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "VBZ"))
                                    {
                                      std::string::operator=(a3, a2);
                                      return;
                                    }

                                    v13 = "Other";
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
            }

            goto LABEL_41;
          }
        }

LABEL_40:
        v13 = "PRP";
LABEL_41:
        MEMORY[0x19EAF8860](a3, v13);
        return;
      }

      v13 = "PRP";
      if (*a2 == 1146114640 || *a2 == 1380995664)
      {
        goto LABEL_41;
      }

      v12 = a2;
    }

    if (*v12 != 1397772880)
    {
      goto LABEL_36;
    }

    goto LABEL_40;
  }
}

void sub_19D227A58(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void CoreNLP::tagToEvaluationLabel(void *a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, void **a5@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(a5, "Other");
  if (a4 == 6)
  {
    switch(a3)
    {
      case 16:
      case 18:
        CoreNLP::getUTF8StringFromCFString(NLLexicalClassConjunction[0], &v10);
        goto LABEL_23;
      case 17:
      case 29:
        CoreNLP::getUTF8StringFromCFString(NLLexicalClassNumber[0], &v10);
        goto LABEL_23;
      case 19:
      case 20:
      case 21:
      case 22:
        CoreNLP::getUTF8StringFromCFString(NLLexicalClassDeterminer[0], &v10);
        goto LABEL_23;
      case 23:
      case 35:
      case 36:
      case 37:
      case 38:
      case 39:
      case 65:
      case 66:
        CoreNLP::getUTF8StringFromCFString(NLLexicalClassPronoun[0], &v10);
        goto LABEL_23;
      case 25:
        CoreNLP::getUTF8StringFromCFString(NLLexicalClassPreposition[0], &v10);
        goto LABEL_23;
      case 26:
      case 27:
      case 28:
        CoreNLP::getUTF8StringFromCFString(NLLexicalClassAdjective[0], &v10);
        goto LABEL_23;
      case 30:
      case 31:
      case 32:
      case 33:
        CoreNLP::getUTF8StringFromCFString(NLLexicalClassNoun[0], &v10);
        goto LABEL_23;
      case 34:
      case 43:
      case 47:
      case 48:
      case 49:
        CoreNLP::getUTF8StringFromCFString(NLLexicalClassParticle[0], &v10);
        goto LABEL_23;
      case 40:
      case 41:
      case 42:
      case 45:
      case 46:
        CoreNLP::getUTF8StringFromCFString(NLLexicalClassAdverb[0], &v10);
        goto LABEL_23;
      case 50:
        CoreNLP::getUTF8StringFromCFString(NLLexicalClassInterjection[0], &v10);
        goto LABEL_23;
      case 52:
      case 53:
      case 54:
      case 55:
      case 56:
      case 57:
      case 58:
      case 59:
      case 60:
      case 61:
      case 62:
      case 63:
      case 64:
        CoreNLP::getUTF8StringFromCFString(NLLexicalClassVerb[0], &v10);
        goto LABEL_23;
      default:
        MEMORY[0x19EAF8860](a5, "Other");
        break;
    }
  }

  else
  {
    if (a4 != 7)
    {
      return;
    }

    if (a2 == 4)
    {
      CoreNLP::TaggingModelManager::tagToLabel(a1, a3, 7, 4, &v10);
    }

    else
    {
      switch(a3)
      {
        case 'E':
          CoreNLP::getUTF8StringFromCFString(NLNamedEntityOrganizationName[0], &v10);
          break;
        case 'D':
          CoreNLP::getUTF8StringFromCFString(NLNamedEntityPlaceName[0], &v10);
          break;
        case 'C':
          CoreNLP::getUTF8StringFromCFString(NLNamedEntityPersonalName[0], &v10);
          break;
        default:
          return;
      }
    }

LABEL_23:
    if (*(a5 + 23) < 0)
    {
      operator delete(*a5);
    }

    *a5 = v10;
  }
}

void sub_19D227CC4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void CoreNLP::tokenizeGazetteerList()
{
  v1 = *MEMORY[0x1E69E9840];
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  CFArrayAppendValue(Mutable, kNLTagSchemeTokenType[0]);
  NLTaggerCreate();
}

void sub_19D228214(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::locale a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, uint64_t a51)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  std::ifstream::~ifstream(&a51, MEMORY[0x1E69E54C8]);
  MEMORY[0x19EAF8C10](&STACK[0x298]);
  if (a49 < 0)
  {
    operator delete(a44);
  }

  _Unwind_Resume(a1);
}

void ___ZN7CoreNLP21tokenizeGazetteerListERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE12NLLanguageIDRNS0_3mapIS6_NS0_3setIS6_NS0_4lessIS6_EENS4_IS6_EEEESD_NS4_INS0_4pairIS7_SF_EEEEEE_block_invoke(uint64_t a1, CFRange *a2)
{
  v3 = CFStringCreateWithSubstring(0, *(a1 + 40), *a2);
  if (CFStringGetLength(*(*(*(a1 + 32) + 8) + 24)) >= 1)
  {
    CFStringAppend(*(*(*(a1 + 32) + 8) + 24), @" ");
  }

  CFStringAppend(*(*(*(a1 + 32) + 8) + 24), v3);

  CFRelease(v3);
}

void sub_19D228880(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, std::locale a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43)
{
  BloomFilter::~BloomFilter(&a29);
  BloomFilter::~BloomFilter(&a43);
  BloomFilter::~BloomFilter((v43 - 240));
  std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::destroy(v43 - 128, *(v43 - 120));
  _Unwind_Resume(a1);
}

void BloomFilter::~BloomFilter(void **this)
{
  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }

  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  if (*this)
  {
    operator delete(*this);
  }
}

uint64_t CoreNLP::printTokens(void *a1, int a2, const __CFString *this, uint64_t *a4, uint64_t *a5, int a6)
{
  v10 = *a4;
  v9 = a4[1];
  v11 = a5[1];
  v60 = *a5;
  CoreNLP::getUTF8StringFromCFString(this, &v74);
  if ((v76 & 0x80u) == 0)
  {
    locale = &v74;
  }

  else
  {
    locale = v74.__locale_;
  }

  if ((v76 & 0x80u) == 0)
  {
    v13 = v76;
  }

  else
  {
    v13 = v75;
  }

  v14 = MEMORY[0x1E69E5310];
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], locale, v13);
  std::ios_base::getloc((v15 + *(*v15 - 24)));
  v16 = std::locale::use_facet(v72, MEMORY[0x1E69E5318]);
  (v16->__vftable[2].~facet_0)(v16, 10);
  std::locale::~locale(v72);
  std::ostream::put();
  std::ostream::flush();
  if (v76 < 0)
  {
    operator delete(v74.__locale_);
  }

  v17 = *a4;
  if (a4[1] != *a4)
  {
    v18 = v11;
    v19 = 0;
    v65 = v9 - v10;
    v20 = v18 - v60;
    v61 = *MEMORY[0x1E695E480];
    do
    {
      v21 = CFStringCreateWithSubstring(v61, this, **(v17 + 8 * v19));
      CoreNLP::getUTF8StringFromCFString(v21, &v74);
      CFRelease(v21);
      if ((v76 & 0x80u) == 0)
      {
        v22 = &v74;
      }

      else
      {
        v22 = v74.__locale_;
      }

      if ((v76 & 0x80u) == 0)
      {
        v23 = v76;
      }

      else
      {
        v23 = v75;
      }

      v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v22, v23);
      v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, " ", 1);
      v26 = MEMORY[0x19EAF8A90](v25, **(v17 + 8 * v19));
      v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, ":", 1);
      v28 = MEMORY[0x19EAF8A90](v27, *(*(v17 + 8 * v19) + 8));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, " ", 1);
      v29 = *(v17 + 8 * v19);
      v30 = *(v29 + 24);
      v31 = (v29 + 32);
      if (v30 != (v29 + 32))
      {
        do
        {
          *&v72[0].__locale_ = *(v30 + 2);
          v73 = v30[6];
          CoreNLP::tagToEvaluationLabel(a1, a2, v72[1].__locale_, v72[0].__locale_, __p);
          v32 = HIBYTE(v71);
          LOBYTE(v33) = HIBYTE(v71);
          v34 = __p[1];
          if (v71 >= 0)
          {
            v35 = HIBYTE(v71);
          }

          else
          {
            v35 = __p[1];
          }

          if (!v35)
          {
            CoreNLP::tagToEvaluationLabel(a1, a2, v72[1].__locale_, v72[0].__locale_, v68);
            if (SHIBYTE(v71) < 0)
            {
              operator delete(__p[0]);
            }

            v71 = v69;
            *__p = *v68;
            v32 = HIBYTE(v69);
            v34 = v68[1];
            v33 = HIBYTE(v69);
          }

          if ((v33 & 0x80u) == 0)
          {
            v36 = __p;
          }

          else
          {
            v36 = __p[0];
          }

          if ((v33 & 0x80u) == 0)
          {
            v37 = v32;
          }

          else
          {
            v37 = v34;
          }

          v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v36, v37);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, " ", 1);
          if (LODWORD(v72[0].__locale_) == a6 && v65 == v20)
          {
            v39 = *(*a5 + 8 * v19);
            *&v66 = v72;
            v40 = std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>(v39 + 24, v72);
            CoreNLP::tagToEvaluationLabel(a1, a2, *(v40 + 10), v72[0].__locale_, v68);
            v41 = v14;
            v42 = HIBYTE(v69);
            LOBYTE(v14) = HIBYTE(v69);
            v43 = v68[1];
            if (v69 >= 0)
            {
              v44 = HIBYTE(v69);
            }

            else
            {
              v44 = v68[1];
            }

            if (!v44)
            {
              v45 = *(*a5 + 8 * v19);
              v77 = v72;
              v46 = std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>(v45 + 24, v72);
              CoreNLP::tagToEvaluationLabel(a1, a2, *(v46 + 10), v72[0].__locale_, &v66);
              if (SHIBYTE(v69) < 0)
              {
                operator delete(v68[0]);
              }

              v69 = v67;
              *v68 = v66;
              v42 = HIBYTE(v67);
              v43 = *(&v66 + 1);
              v14 = HIBYTE(v67);
            }

            if (v71 >= 0)
            {
              v47 = HIBYTE(v71);
            }

            else
            {
              v47 = __p[1];
            }

            if (v14 < 0)
            {
              v42 = v43;
            }

            if (v47 != v42 || (v71 >= 0 ? (v48 = __p) : (v48 = __p[0]), v14 >= 0 ? (v49 = v68) : (v49 = v68[0]), memcmp(v48, v49, v47)))
            {
              v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, "--> expected: ", 14);
              if (v69 >= 0)
              {
                v51 = v68;
              }

              else
              {
                v51 = v68[0];
              }

              if (v69 >= 0)
              {
                v52 = HIBYTE(v69);
              }

              else
              {
                v52 = v68[1];
              }

              v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, v51, v52);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, " ", 1);
              LOBYTE(v14) = HIBYTE(v69);
            }

            if ((v14 & 0x80) != 0)
            {
              operator delete(v68[0]);
            }

            v14 = v41;
          }

          if (SHIBYTE(v71) < 0)
          {
            operator delete(__p[0]);
          }

          v54 = v30[1];
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
            do
            {
              v55 = v30[2];
              v56 = *v55 == v30;
              v30 = v55;
            }

            while (!v56);
          }

          v30 = v55;
        }

        while (v55 != v31);
      }

      std::ios_base::getloc((v14 + *(*v14 - 24)));
      v57 = std::locale::use_facet(v72, MEMORY[0x1E69E5318]);
      (v57->__vftable[2].~facet_0)(v57, 10);
      std::locale::~locale(v72);
      std::ostream::put();
      std::ostream::flush();
      if (v76 < 0)
      {
        operator delete(v74.__locale_);
      }

      ++v19;
      v17 = *a4;
    }

    while (v19 < (a4[1] - *a4) >> 3);
  }

  std::ios_base::getloc((v14 + *(*v14 - 24)));
  v58 = std::locale::use_facet(&v74, MEMORY[0x1E69E5318]);
  (v58->__vftable[2].~facet_0)(v58, 10);
  std::locale::~locale(&v74);
  std::ostream::put();
  return std::ostream::flush();
}

void CoreNLP::readAnnotatedToken(uint64_t a1, int a2, int a3, __CFString *a4)
{
  std::istringstream::basic_istringstream[abi:ne200100](v45, a1, 8);
  memset(&v44, 0, sizeof(v44));
  if (a2 != 7 || a3 != 4)
  {
    std::istream_iterator<std::string,char,std::char_traits<char>,long>::istream_iterator[abi:ne200100](v40, v45);
    *__p = 0u;
    v39 = 0u;
    std::vector<std::string>::vector[abi:ne200100]<std::istream_iterator<std::string,char,std::char_traits<char>,long>,0>(&v43, v40, __p);
    std::vector<std::string>::__vdeallocate(&v44);
    v44 = v43;
    memset(&v43, 0, sizeof(v43));
    v42.__r_.__value_.__r.__words[0] = &v43;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v42);
    if (SHIBYTE(v39) < 0)
    {
      operator delete(__p[1]);
    }

    if (v41 < 0)
    {
      v13 = v40[1];
LABEL_52:
      operator delete(v13);
    }

LABEL_53:
    if (0xAAAAAAAAAAAAAAABLL * ((v44.__end_ - v44.__begin_) >> 3) > 1)
    {
      if (CFStringGetLength(a4) >= 1)
      {
        CFStringAppend(a4, @" ");
      }

      v26 = v44.__end_ - 1;
      if (SHIBYTE(v44.__end_[-1].__r_.__value_.__r.__words[2]) < 0)
      {
        v26 = v26->__r_.__value_.__r.__words[0];
      }

      CFStringCreateWithCString(*MEMORY[0x1E695E480], v26, 0x8000100u);
      operator new();
    }

    v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "\nERROR: Unexpected Annotation (needs at least two columns): ", 60);
    v34 = *(a1 + 23);
    if (v34 >= 0)
    {
      v35 = a1;
    }

    else
    {
      v35 = *a1;
    }

    if (v34 >= 0)
    {
      v36 = *(a1 + 23);
    }

    else
    {
      v36 = *(a1 + 8);
    }

    v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, v35, v36);
    std::endl[abi:ne200100]<char,std::char_traits<char>>(v37);
    exit(1);
  }

  std::string::basic_string[abi:ne200100]<0>(&v43, "\t");
  v8 = *(a1 + 23);
  if ((v8 & 0x80u) == 0)
  {
    v9 = a1;
  }

  else
  {
    v9 = *a1;
  }

  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a1 + 8);
  }

  if (SHIBYTE(v43.__end_cap_.__value_) >= 0)
  {
    begin = &v43;
  }

  else
  {
    begin = v43.__begin_;
  }

  if (SHIBYTE(v43.__end_cap_.__value_) >= 0)
  {
    value_high = HIBYTE(v43.__end_cap_.__value_);
  }

  else
  {
    value_high = v43.__end_;
  }

  if (value_high)
  {
    if (v8 < value_high)
    {
LABEL_16:
      v12 = 0;
      goto LABEL_48;
    }

    v27 = &v9[v8];
    v28 = begin->__r_.__value_.__s.__data_[0];
    v29 = v9;
    while (1)
    {
      v30 = v8 - value_high;
      if (v30 == -1)
      {
        goto LABEL_16;
      }

      v31 = memchr(v29, v28, v30 + 1);
      if (!v31)
      {
        goto LABEL_16;
      }

      v32 = v31;
      if (!memcmp(v31, begin, value_high))
      {
        break;
      }

      v29 = v32 + 1;
      v8 = v27 - (v32 + 1);
      if (v8 < value_high)
      {
        goto LABEL_16;
      }
    }

    v12 = 0;
    if (v32 == v27 || (v14 = (v32 - v9), v14 == -1))
    {
LABEL_48:
      std::string::basic_string(&v42, a1, v12, 0xFFFFFFFFFFFFFFFFLL, v46);
      std::vector<std::string>::push_back[abi:ne200100](&v44, &v42);
      if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v42.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v43.__end_cap_.__value_) < 0)
      {
        v13 = v43.__begin_;
        goto LABEL_52;
      }

      goto LABEL_53;
    }
  }

  else
  {
    v14 = 0;
  }

  v12 = 0;
  while (1)
  {
    std::string::basic_string(&v42, a1, v12, &v14[-v12], v46);
    std::vector<std::string>::push_back[abi:ne200100](&v44, &v42);
    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
    }

    v15 = *(a1 + 23);
    if ((v15 & 0x80u) == 0)
    {
      v16 = a1;
    }

    else
    {
      v16 = *a1;
    }

    if ((v15 & 0x80u) != 0)
    {
      v15 = *(a1 + 8);
    }

    v17 = SHIBYTE(v43.__end_cap_.__value_) >= 0 ? HIBYTE(v43.__end_cap_.__value_) : v43.__end_;
    v12 = &v14[v17];
    v18 = SHIBYTE(v43.__end_cap_.__value_) >= 0 ? &v43 : v43.__begin_;
    v19 = v15 - v12;
    if (v15 < v12)
    {
      goto LABEL_48;
    }

    v14 += v17;
    if (v17)
    {
      if (v19 < v17)
      {
        goto LABEL_48;
      }

      v20 = (v16 + v15);
      v21 = (v16 + v12);
      begin_low = SLOBYTE(v18->__begin_);
      while (1)
      {
        v23 = v19 - v17;
        if (v23 == -1)
        {
          goto LABEL_48;
        }

        v24 = memchr(v21, begin_low, v23 + 1);
        if (!v24)
        {
          goto LABEL_48;
        }

        v25 = v24;
        if (!memcmp(v24, v18, v17))
        {
          break;
        }

        v21 = v25 + 1;
        v19 = v20 - (v25 + 1);
        if (v19 < v17)
        {
          goto LABEL_48;
        }
      }

      if (v25 == v20)
      {
        goto LABEL_48;
      }

      v14 = &v25[-v16];
    }

    if (v14 == -1)
    {
      goto LABEL_48;
    }
  }
}

void sub_19D229518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  __p = &a39;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::istringstream::~istringstream(&a43, MEMORY[0x1E69E54E0]);
  MEMORY[0x19EAF8C10](&a58);
  _Unwind_Resume(a1);
}

std::__split_buffer<std::string>::pointer CoreNLP::parseDir@<X0>(std::__split_buffer<std::string>::pointer result@<X0>, void *a2@<X8>)
{
  v2 = result;
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (SHIBYTE(result->__r_.__value_.__r.__words[2]) < 0)
  {
    if (!result->__r_.__value_.__l.__size_)
    {
      return result;
    }

    result = result->__r_.__value_.__r.__words[0];
  }

  else if (!*(&result->__r_.__value_.__s + 23))
  {
    return result;
  }

  stat(result, &v22);
  if ((v22.st_mode & 0xF000) != 0x4000)
  {
    return std::vector<std::string>::push_back[abi:ne200100](a2, v2);
  }

  if ((v2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = v2;
  }

  else
  {
    v4 = v2->__r_.__value_.__r.__words[0];
  }

  v5 = opendir(v4);
  if (v5)
  {
    while (1)
    {
      v6 = readdir(v5);
      v7 = v6;
      if (!v6)
      {
        break;
      }

      if (v6->d_type != 4)
      {
        if ((v2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v2->__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v2->__r_.__value_.__l.__size_;
        }

        std::string::basic_string[abi:ne200100](&v19, size + 1);
        if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v9 = &v19;
        }

        else
        {
          v9 = v19.__r_.__value_.__r.__words[0];
        }

        if (size)
        {
          if ((v2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v10 = v2;
          }

          else
          {
            v10 = v2->__r_.__value_.__r.__words[0];
          }

          memmove(v9, v10, size);
        }

        *(&v9->__r_.__value_.__l.__data_ + size) = 47;
        v11 = std::string::append(&v19, v7->d_name);
        v12 = *&v11->__r_.__value_.__l.__data_;
        v21 = v11->__r_.__value_.__r.__words[2];
        *__p = v12;
        v11->__r_.__value_.__l.__size_ = 0;
        v11->__r_.__value_.__r.__words[2] = 0;
        v11->__r_.__value_.__r.__words[0] = 0;
        std::vector<std::string>::push_back[abi:ne200100](a2, __p);
        if (SHIBYTE(v21) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v19.__r_.__value_.__l.__data_);
        }
      }
    }

    return closedir(v5);
  }

  else
  {
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "\nERROR: could not open directory ", 33);
    v14 = SHIBYTE(v2->__r_.__value_.__r.__words[2]);
    if (v14 >= 0)
    {
      v15 = v2;
    }

    else
    {
      v15 = v2->__r_.__value_.__r.__words[0];
    }

    if (v14 >= 0)
    {
      v16 = HIBYTE(v2->__r_.__value_.__r.__words[2]);
    }

    else
    {
      v16 = v2->__r_.__value_.__l.__size_;
    }

    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v15, v16);
    std::ios_base::getloc((v17 + *(*v17 - 24)));
    v18 = std::locale::use_facet(__p, MEMORY[0x1E69E5318]);
    (v18->__vftable[2].~facet_0)(v18, 10);
    std::locale::~locale(__p);
    std::ostream::put();
    return std::ostream::flush();
  }
}

void sub_19D229824(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, std::locale a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22)
{
  std::locale::~locale(&a16);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a22);
  _Unwind_Resume(a1);
}

void CoreNLP::NLTaggerTrainCollectFeatures(const void ***a1, std::string *a2, void *a3, int a4, int a5)
{
  v66[19] = *MEMORY[0x1E69E9840];
  v61 = 0;
  v62 = 0;
  v63 = 0;
  __p = 0;
  v59 = 0;
  v60 = 0;
  v55 = 0;
  v56 = 0;
  v57 = 0;
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CoreNLP::TaggingModelManager::labelMap(a1, a4, a5, v54);
  v11 = *a3;
  v46 = a3 + 1;
  if (*a3 != a3 + 1)
  {
    v12 = *MEMORY[0x1E69E54C8];
    v48 = *MEMORY[0x1E69E54C8];
    v49 = *(MEMORY[0x1E69E54C8] + 24);
    do
    {
      v14 = v11[5];
      v13 = v11[6];
      v47 = v11;
      v50 = v13;
      while (v14 != v13)
      {
        if (*(v14 + 23) < 0)
        {
          v15 = *v14;
        }

        std::ifstream::basic_ifstream(v64);
        if ((v65[*(v64[0] - 3) + 16] & 5) != 0)
        {
          v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "\nERROR: cannot open ", 20);
          v17 = *(v14 + 23);
          if (v17 >= 0)
          {
            v18 = v14;
          }

          else
          {
            v18 = *v14;
          }

          if (v17 >= 0)
          {
            v19 = *(v14 + 23);
          }

          else
          {
            v19 = *(v14 + 8);
          }

          v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v18, v19);
          std::ios_base::getloc((v20 + *(*v20 - 24)));
          v21 = std::locale::use_facet(&v51, MEMORY[0x1E69E5318]);
          (v21->__vftable[2].~facet_0)(v21, 10);
          std::locale::~locale(&v51);
          std::ostream::put();
          std::ostream::flush();
        }

        else
        {
          v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], "\nINFO: Reading data from", 24);
          v23 = *(v14 + 23);
          if (v23 >= 0)
          {
            v24 = v14;
          }

          else
          {
            v24 = *v14;
          }

          if (v23 >= 0)
          {
            v25 = *(v14 + 23);
          }

          else
          {
            v25 = *(v14 + 8);
          }

          v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v24, v25);
          v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "...", 3);
          std::ios_base::getloc((v27 + *(*v27 - 24)));
          v28 = std::locale::use_facet(&v51, MEMORY[0x1E69E5318]);
          (v28->__vftable[2].~facet_0)(v28, 10);
          std::locale::~locale(&v51);
          std::ostream::put();
          std::ostream::flush();
          while (1)
          {
            std::ios_base::getloc((v64 + *(v64[0] - 3)));
            v29 = std::locale::use_facet(&v51, MEMORY[0x1E69E5318]);
            v30 = (v29->__vftable[2].~facet_0)(v29, 10);
            std::locale::~locale(&v51);
            v31 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v64, &v61, v30);
            if ((*(v31 + *(*v31 - 24) + 32) & 5) != 0)
            {
              break;
            }

            if (v63 >= 0)
            {
              v32 = &v61;
            }

            else
            {
              v32 = v61;
            }

            if (v63 >= 0)
            {
              v33 = HIBYTE(v63);
            }

            else
            {
              v33 = v62;
            }

            if (v33)
            {
              v34 = 0;
              while (memchr(" \t\n\v\f\r", v32[v34], 6uLL))
              {
                if (v33 == ++v34)
                {
                  goto LABEL_37;
                }
              }

              if (v34 != -1)
              {
                v51.__locale_ = 0;
                v52 = 0;
                v53 = 0;
                CoreNLP::readAnnotatedToken(&v61, a4, a5, Mutable);
              }
            }

LABEL_37:
            if (__p != v59)
            {
              CoreNLP::TaggingFeatureExtractor::extractSharedData(a2, &__p, Mutable, a5);
              if (v59 != __p)
              {
                v35 = 0;
                do
                {
                  CoreNLP::TaggingFeatureExtractor::collectFeatures(a2, a4, a5, &__p, v35++);
                }

                while (v35 < (v59 - __p) >> 3);
              }

              v67.length = CFStringGetLength(Mutable);
              v67.location = 0;
              CFStringDelete(Mutable, v67);
              v36 = __p;
              v37 = v59;
              if (__p != v59)
              {
                do
                {
                  if (*v36)
                  {
                    CoreNLP::NLAttributedToken::~NLAttributedToken(*v36);
                    MEMORY[0x19EAF8CA0]();
                  }

                  ++v36;
                }

                while (v36 != v37);
                v36 = __p;
              }

              v59 = v36;
              v38 = v55;
              v39 = v56;
              while (v39 != v38)
              {
                v40 = *(v39 - 1);
                v39 -= 3;
                if (v40 < 0)
                {
                  operator delete(*v39);
                }
              }

              v56 = v38;
            }
          }
        }

        v64[0] = v48;
        *(v64 + *(v48 - 3)) = v49;
        MEMORY[0x19EAF8960](v65);
        std::istream::~istream();
        MEMORY[0x19EAF8C10](v66);
        v14 += 24;
        v13 = v50;
      }

      v41 = v47;
      v42 = v47[1];
      if (v42)
      {
        do
        {
          v43 = v42;
          v42 = *v42;
        }

        while (v42);
      }

      else
      {
        do
        {
          v43 = v41[2];
          v44 = *v43 == v41;
          v41 = v43;
        }

        while (!v44);
      }

      v11 = v43;
    }

    while (v43 != v46);
  }

  CFRelease(Mutable);
  std::__tree<std::string>::destroy(v54, v54[1]);
  v64[0] = &v55;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v64);
  if (__p)
  {
    v59 = __p;
    operator delete(__p);
  }

  if (SHIBYTE(v63) < 0)
  {
    operator delete(v61);
  }

  v45 = *MEMORY[0x1E69E9840];
}

void sub_19D229EBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::locale a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, char *a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, char *a37)
{
  std::__tree<std::string>::destroy(&a22, a23);
  a37 = &a25;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a37);
  if (__p)
  {
    a29 = __p;
    operator delete(__p);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  _Unwind_Resume(a1);
}

void NLTaggerTrainModel(char *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7)
{
  v33 = *MEMORY[0x1E69E9840];
  v9 = CFStringCreateWithCString(0, a2, 0x8000100u);
  v11 = CoreNLP::languageIdForLanguage(v9, v10);
  CFRelease(v9);
  std::string::basic_string[abi:ne200100]<0>(v29, a1);
  if (v30 < 0)
  {
    if (v29[1] != 3)
    {
      goto LABEL_10;
    }

    v12 = v29[0];
  }

  else
  {
    if (v30 != 3)
    {
      goto LABEL_10;
    }

    v12 = v29;
  }

  v13 = *v12;
  v14 = *(v12 + 2);
  if (v13 == 28528 && v14 == 115)
  {
    v20 = 6;
    if ((v30 & 0x80) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_10:
  std::string::basic_string[abi:ne200100]<0>(__p, a1);
  if (v32 < 0)
  {
    if (__p[1] == 3)
    {
      v21 = bswap32(*__p[0] | (*(__p[0] + 2) << 16));
      v17 = v21 >= 0x6E657200;
      v22 = v21 > 0x6E657200;
      v23 = !v17;
      if (v22 == v23)
      {
        v20 = 7;
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }

    operator delete(__p[0]);
  }

  else if (v32 == 3)
  {
    v16 = bswap32(LOWORD(__p[0]) | (BYTE2(__p[0]) << 16));
    v17 = v16 >= 0x6E657200;
    v18 = v16 > 0x6E657200;
    v19 = !v17;
    if (v18 == v19)
    {
      v20 = 7;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  if ((v30 & 0x80) == 0)
  {
LABEL_32:
    CoreNLP::TaggingModelManager::TaggingModelManager(v29);
    CoreNLP::TaggingFeatureExtractor::TaggingFeatureExtractor(v28);
    CoreNLP::TaggerContext::TaggerContext(v27);
    v26 = 0;
    std::string::basic_string[abi:ne200100]<0>(__p, a7);
    if (v32 < 0)
    {
      v24 = __p[1];
      operator delete(__p[0]);
      if (v24)
      {
LABEL_34:
        std::string::basic_string[abi:ne200100]<0>(__p, a7);
        CoreNLP::createNERGazetteerBF(__p, v11, &v26);
      }
    }

    else if (v32)
    {
      goto LABEL_34;
    }

    CoreNLP::TaggingModelManager::labelMap(v29, v20, v11, &v25);
    operator new();
  }

LABEL_31:
  operator delete(v29[0]);
  goto LABEL_32;
}

void sub_19D22B518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, std::locale a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (SLOBYTE(STACK[0x5E7]) < 0)
  {
    operator delete(STACK[0x5D0]);
  }

  a24 = &a30;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a24);
  a30 = &a33;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a30);
  std::__tree<std::__value_type<CoreNLP::NLTrainerDataType,std::vector<std::string>>,std::__map_value_compare<CoreNLP::NLTrainerDataType,std::__value_type<CoreNLP::NLTrainerDataType,std::vector<std::string>>,std::less<CoreNLP::NLTrainerDataType>,true>,std::allocator<std::__value_type<CoreNLP::NLTrainerDataType,std::vector<std::string>>>>::destroy(&a38, a39);
  a38 = &a41;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a38);
  if (a44)
  {
    a45 = a44;
    operator delete(a44);
  }

  if (a52 < 0)
  {
    operator delete(a47);
  }

  (*(*a14 + 8))(a14);
  std::__tree<std::string>::destroy(&a53, a54);
  CoreNLP::TaggerContext::~TaggerContext(&a57);
  CoreNLP::TaggingFeatureExtractor::~TaggingFeatureExtractor(&a65);
  CoreNLP::TaggingModelManager::~TaggingModelManager(&STACK[0x348]);
  _Unwind_Resume(a1);
}

void NLTaggerTestModel(char *a1, const char *a2, char *a3, char *a4, char *a5)
{
  v154[19] = *MEMORY[0x1E69E9840];
  v9 = CFStringCreateWithCString(0, a2, 0x8000100u);
  v11 = CoreNLP::languageIdForLanguage(v9, v10);
  CFRelease(v9);
  std::string::basic_string[abi:ne200100]<0>(v146, a1);
  if (v147 < 0)
  {
    if (v146[1] != 3)
    {
      goto LABEL_10;
    }

    v12 = v146[0];
  }

  else
  {
    if (v147 != 3)
    {
      goto LABEL_10;
    }

    v12 = v146;
  }

  v13 = *v12;
  v14 = *(v12 + 2);
  v15 = v13 == 28528 && v14 == 115;
  if (v15)
  {
    v20 = 6;
    if ((v147 & 0x80) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_10:
  std::string::basic_string[abi:ne200100]<0>(&__p, a1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    if (__p.__r_.__value_.__l.__size_ == 3)
    {
      v21 = bswap32(*__p.__r_.__value_.__l.__data_ | (*(__p.__r_.__value_.__r.__words[0] + 2) << 16));
      v17 = v21 >= 0x6E657200;
      v22 = v21 > 0x6E657200;
      v23 = !v17;
      if (v22 == v23)
      {
        v20 = 7;
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }

    operator delete(__p.__r_.__value_.__l.__data_);
  }

  else if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) == 3)
  {
    v16 = bswap32(LOWORD(__p.__r_.__value_.__l.__data_) | (__p.__r_.__value_.__s.__data_[2] << 16));
    v17 = v16 >= 0x6E657200;
    v18 = v16 > 0x6E657200;
    v19 = !v17;
    if (v18 == v19)
    {
      v20 = 7;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  if (v147 < 0)
  {
LABEL_31:
    operator delete(v146[0]);
  }

LABEL_32:
  v149 = v20;
  CoreNLP::TaggingModelManager::TaggingModelManager(v146);
  CoreNLP::TaggingFeatureExtractor::TaggingFeatureExtractor(v145);
  CoreNLP::TaggerContext::TaggerContext(v144);
  CoreNLP::TaggingModelManager::labelMap(v146, v149, v11, v143);
  std::string::basic_string[abi:ne200100]<0>(&__p, a3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    size = __p.__r_.__value_.__l.__size_;
    operator delete(__p.__r_.__value_.__l.__data_);
    if (!size)
    {
      goto LABEL_38;
    }
  }

  else if (!*(&__p.__r_.__value_.__s + 23))
  {
    goto LABEL_38;
  }

  v25 = v149;
  std::string::basic_string[abi:ne200100]<0>(&__p, a3);
  CoreNLP::TaggingModelManager::setCustomModelPath(v146, v11, v25, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_38:
  v140 = 0;
  v141 = 0;
  v142 = 0;
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v137 = 0;
  v138 = 0;
  v139 = 0;
  v134 = 0;
  v135 = 0;
  v136 = 0;
  v133[0] = 0;
  v133[1] = 0;
  v132 = v133;
  if (v11 == 4 && v149 == 7)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, a5);
    CoreNLP::TaggingFeatureExtractor::setConstrainFeaturePath(v145, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, a5);
    CoreNLP::TaggingFeatureExtractor::setConstrainFeaturePath(&v148, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, a4);
  CoreNLP::parseDir(&__p, &v130);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v27 = v130;
  v120 = v131;
  if (v130 != v131)
  {
    v121 = 0;
    v123 = 0;
    v28 = *MEMORY[0x1E69E54C8];
    v118 = *MEMORY[0x1E69E54C8];
    v119 = *(MEMORY[0x1E69E54C8] + 24);
    while (1)
    {
      v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], "\nINFO: Testing token data from", 30);
      v30 = *(v27 + 23);
      if (v30 >= 0)
      {
        v31 = v27;
      }

      else
      {
        v31 = *v27;
      }

      if (v30 >= 0)
      {
        v32 = *(v27 + 23);
      }

      else
      {
        v32 = *(v27 + 8);
      }

      v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, v31, v32);
      v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "...", 3);
      std::ios_base::getloc((v34 + *(*v34 - 24)));
      v35 = std::locale::use_facet(&__p, MEMORY[0x1E69E5318]);
      (v35->__vftable[2].~facet_0)(v35, 10);
      std::locale::~locale(&__p);
      std::ostream::put();
      std::ostream::flush();
      if (*(v27 + 23) < 0)
      {
        v36 = *v27;
      }

      std::ifstream::basic_ifstream(&__p);
      while (1)
      {
        std::ios_base::getloc((&__p + *(__p.__r_.__value_.__r.__words[0] - 24)));
        v37 = std::locale::use_facet(v128, MEMORY[0x1E69E5318]);
        v38 = (v37->__vftable[2].~facet_0)(v37, 10);
        std::locale::~locale(v128);
        v39 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, &v140, v38);
        if ((*(v39 + *(*v39 - 24) + 32) & 5) != 0)
        {
          break;
        }

        if (v142 >= 0)
        {
          v41 = &v140;
        }

        else
        {
          v41 = v140;
        }

        if (v142 >= 0)
        {
          v42 = HIBYTE(v142);
        }

        else
        {
          v42 = v141;
        }

        if (v42)
        {
          v43 = 0;
          while (memchr(" \t\n\v\f\r", v41[v43], 6uLL))
          {
            if (v42 == ++v43)
            {
              goto LABEL_71;
            }
          }

          if (v43 != -1)
          {
            v128[0].__locale_ = 0;
            v128[1].__locale_ = 0;
            v129 = 0;
            CoreNLP::readAnnotatedToken(&v140, v149, v11, Mutable);
          }
        }

LABEL_71:
        v44 = v134;
        v45 = v135;
        if (v134 != v135)
        {
          do
          {
            CoreNLP::extractTokenExtendedAttributes(Mutable, *v44++, v40);
          }

          while (v44 != v45);
          CoreNLP::TaggingModelManager::addTask(v146, v149, v11);
          Length = CFStringGetLength(Mutable);
          CoreNLP::TaggerContext::setString(v144, Mutable, 0, Length, v11);
          if ((CoreNLP::TaggingModelManager::tagInstance(v146, &v134, v144, 0) & 1) == 0)
          {
            exit(1);
          }

          CoreNLP::printTokens(v146, v11, Mutable, &v134, &v137, v149);
          v155.length = CFStringGetLength(Mutable);
          v155.location = 0;
          CFStringDelete(Mutable, v155);
          v122 = v27;
          v47 = v137;
          v48 = v138;
          if (v138 != v137)
          {
            v49 = 0;
            while (1)
            {
              v50 = v47[v49];
              v126[0] = &v149;
              v51 = std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>(v50 + 24, &v149);
              CoreNLP::tagToEvaluationLabel(v146, v11, *(v51 + 10), v149, &v128[0].__locale_);
              v52 = *(v134 + v49);
              v150 = &v149;
              v53 = std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>(v52 + 24, &v149);
              CoreNLP::tagToEvaluationLabel(v146, v11, *(v53 + 10), v149, v126);
              if (v133 == std::__tree<std::string>::find<std::string>(&v132, &v128[0].__locale_))
              {
                std::vector<int>::vector[abi:ne200100](&v124, 3uLL);
                v150 = v128;
                v54 = std::__tree<std::__value_type<std::string,std::vector<int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v132, &v128[0].__locale_);
                v55 = v54[7];
                if (v55)
                {
                  v54[8] = v55;
                  operator delete(v55);
                  v54[7] = 0;
                  v54[8] = 0;
                  v54[9] = 0;
                }

                *(v54 + 7) = v124;
                v54[9] = v125;
              }

              if (v133 == std::__tree<std::string>::find<std::string>(&v132, v126))
              {
                std::vector<int>::vector[abi:ne200100](&v124, 3uLL);
                v150 = v126;
                v56 = std::__tree<std::__value_type<std::string,std::vector<int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v132, v126);
                v57 = v56[7];
                if (v57)
                {
                  v56[8] = v57;
                  operator delete(v57);
                  v56[7] = 0;
                  v56[8] = 0;
                  v56[9] = 0;
                }

                *(v56 + 7) = v124;
                v56[9] = v125;
              }

              v150 = v128;
              v58 = std::__tree<std::__value_type<std::string,std::vector<int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v132, &v128[0].__locale_);
              ++*(*(v58 + 56) + 8);
              v150 = v126;
              v59 = std::__tree<std::__value_type<std::string,std::vector<int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v132, v126);
              ++*(*(v59 + 56) + 4);
              if (v129 >= 0)
              {
                locale = HIBYTE(v129);
              }

              else
              {
                locale = v128[1].__locale_;
              }

              v61 = HIBYTE(v127);
              v62 = HIBYTE(v127);
              if (v127 < 0)
              {
                v61 = v126[1];
              }

              if (locale == v61)
              {
                v63 = v129 >= 0 ? v128 : v128[0].__locale_;
                v64 = v127 >= 0 ? v126 : v126[0];
                if (!memcmp(v63, v64, locale))
                {
                  break;
                }
              }

              if (v62 < 0)
              {
                goto LABEL_98;
              }

LABEL_99:
              if (SHIBYTE(v129) < 0)
              {
                operator delete(v128[0].__locale_);
              }

              ++v49;
              v47 = v137;
              v48 = v138;
              if (v49 >= (v138 - v137) >> 3)
              {
                v121 += v49;
                goto LABEL_105;
              }
            }

            v150 = v128;
            v65 = std::__tree<std::__value_type<std::string,std::vector<int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v132, &v128[0].__locale_);
            ++v123;
            ++**(v65 + 56);
            if ((v127 & 0x8000000000000000) == 0)
            {
              goto LABEL_99;
            }

LABEL_98:
            operator delete(v126[0]);
            goto LABEL_99;
          }

LABEL_105:
          v67 = v134;
          v66 = v135;
          if (v134 != v135)
          {
            do
            {
              if (*v67)
              {
                CoreNLP::NLAttributedToken::~NLAttributedToken(*v67);
                MEMORY[0x19EAF8CA0]();
              }

              ++v67;
            }

            while (v67 != v66);
            v47 = v137;
            v48 = v138;
          }

          if (v47 != v48)
          {
            do
            {
              if (*v47)
              {
                CoreNLP::NLAttributedToken::~NLAttributedToken(*v47);
                MEMORY[0x19EAF8CA0]();
              }

              ++v47;
            }

            while (v47 != v48);
            v47 = v137;
          }

          v135 = v134;
          v138 = v47;
          v27 = v122;
        }
      }

      __p.__r_.__value_.__r.__words[0] = v118;
      *(__p.__r_.__value_.__r.__words + *(v118 - 24)) = v119;
      MEMORY[0x19EAF8960](&__p.__r_.__value_.__r.__words[2]);
      std::istream::~istream();
      MEMORY[0x19EAF8C10](v154);
      v27 += 24;
      if (v27 == v120)
      {
        goto LABEL_119;
      }
    }
  }

  v123 = 0;
  v121 = 0;
LABEL_119:
  CFRelease(Mutable);
  v68 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], "\nINFO: item accuracy: ", 22);
  v69 = MEMORY[0x19EAF8A70](v68, v123);
  v70 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v69, "/", 1);
  v71 = MEMORY[0x19EAF8A70](v70, v121);
  v72 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v71, " = ", 3);
  v73 = MEMORY[0x19EAF8A50](v72, v123 / v121);
  std::ios_base::getloc((v73 + *(*v73 - 24)));
  v74 = std::locale::use_facet(&__p, MEMORY[0x1E69E5318]);
  (v74->__vftable[2].~facet_0)(v74, 10);
  std::locale::~locale(&__p);
  std::ostream::put();
  std::ostream::flush();
  v75 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], "\nINFO: Performance by label (#match, #model, #ref) (precision, recall, F1):", 75);
  std::ios_base::getloc((v75 + *(*v75 - 24)));
  v76 = std::locale::use_facet(&__p, MEMORY[0x1E69E5318]);
  (v76->__vftable[2].~facet_0)(v76, 10);
  std::locale::~locale(&__p);
  std::ostream::put();
  std::ostream::flush();
  v77 = v132;
  if (v132 == v133)
  {
    v104 = 0.0;
    v105 = 0.0;
    v106 = 0.0;
  }

  else
  {
    v78 = 0;
    v79 = 0;
    v80 = 0;
    do
    {
      std::pair<std::string const,std::vector<int>>::pair[abi:ne200100](&__p, v77 + 2);
      if (std::string::compare(&__p, "Other") && std::string::compare(&__p, "NONE") && std::string::compare(&__p, "O"))
      {
        v81 = *v152;
        v82 = *(v152 + 1);
        v83 = *(v152 + 2);
        v84 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], "\t", 1);
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
          v86 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v86 = __p.__r_.__value_.__l.__size_;
        }

        v87 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v84, p_p, v86);
        v88 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v87, ": (", 3);
        v89 = MEMORY[0x19EAF8A70](v88, *v152);
        v90 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v89, ", ", 2);
        v91 = MEMORY[0x19EAF8A70](v90, *(v152 + 1));
        v92 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v91, ", ", 2);
        v93 = MEMORY[0x19EAF8A70](v92, *(v152 + 2));
        v94 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v93, ") (", 3);
        v95 = MEMORY[0x19EAF8A50](v94, v81 / v82);
        v96 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v95, ", ", 2);
        v97 = MEMORY[0x19EAF8A50](v96, v81 / v83);
        v98 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v97, ", ", 2);
        v99 = MEMORY[0x19EAF8A50](v98, (v81 / v82 + v81 / v82) * (v81 / v83) / (v81 / v82 + v81 / v83));
        v100 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v99, ")", 1);
        std::ios_base::getloc((v100 + *(*v100 - 24)));
        v101 = std::locale::use_facet(v128, MEMORY[0x1E69E5318]);
        (v101->__vftable[2].~facet_0)(v101, 10);
        std::locale::~locale(v128);
        std::ostream::put();
        std::ostream::flush();
        v80 += *v152;
        v79 += *(v152 + 1);
        v78 += *(v152 + 2);
      }

      if (v152)
      {
        v153 = v152;
        operator delete(v152);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v102 = *(v77 + 1);
      if (v102)
      {
        do
        {
          v103 = v102;
          v102 = *v102;
        }

        while (v102);
      }

      else
      {
        do
        {
          v103 = *(v77 + 2);
          v15 = *v103 == v77;
          v77 = v103;
        }

        while (!v15);
      }

      v77 = v103;
    }

    while (v103 != v133);
    v104 = v80;
    v105 = v79;
    v106 = v78;
  }

  v107 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], "\nINFO: Average precision, recall, F1: (", 39);
  v108 = v104 / v105;
  v109 = MEMORY[0x19EAF8A50](v107, v108);
  v110 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v109, ", ", 2);
  v111 = v104 / v106;
  v112 = MEMORY[0x19EAF8A50](v110, v111);
  v113 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v112, ", ", 2);
  v114 = MEMORY[0x19EAF8A50](v113, (v108 + v108) * v111 / (v108 + v111));
  v115 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v114, ")", 1);
  std::ios_base::getloc((v115 + *(*v115 - 24)));
  v116 = std::locale::use_facet(&__p, MEMORY[0x1E69E5318]);
  (v116->__vftable[2].~facet_0)(v116, 10);
  std::locale::~locale(&__p);
  std::ostream::put();
  std::ostream::flush();
  __p.__r_.__value_.__r.__words[0] = &v130;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(&v132, v133[0]);
  if (v134)
  {
    v135 = v134;
    operator delete(v134);
  }

  if (v137)
  {
    v138 = v137;
    operator delete(v137);
  }

  if (SHIBYTE(v142) < 0)
  {
    operator delete(v140);
  }

  std::__tree<std::string>::destroy(v143, v143[1]);
  CoreNLP::TaggerContext::~TaggerContext(v144);
  CoreNLP::TaggingFeatureExtractor::~TaggingFeatureExtractor(v145);
  CoreNLP::TaggingModelManager::~TaggingModelManager(v146);
  v117 = *MEMORY[0x1E69E9840];
}

void sub_19D22CA10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, std::locale a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, char a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  if (SLOBYTE(STACK[0x5B7]) < 0)
  {
    operator delete(STACK[0x5A0]);
  }

  std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(&a32, a33);
  if (a35)
  {
    a36 = a35;
    operator delete(a35);
  }

  if (a38)
  {
    a39 = a38;
    operator delete(a38);
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  std::__tree<std::string>::destroy(&a47, a48);
  CoreNLP::TaggerContext::~TaggerContext(&a50);
  CoreNLP::TaggingFeatureExtractor::~TaggingFeatureExtractor(&a58);
  CoreNLP::TaggingModelManager::~TaggingModelManager(&STACK[0x310]);
  _Unwind_Resume(a1);
}

std::string *std::pair<std::string const,std::set<std::string>>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  std::set<std::string>::set[abi:ne200100](this[1].__r_.__value_.__r.__words, a2 + 3);
  return this;
}

void sub_19D22CD34(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<std::string const,std::set<std::string>>::~pair(uint64_t a1)
{
  std::__tree<std::string>::destroy(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

std::string *std::pair<std::string const,std::vector<int>>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  this[1].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&this[1], *(a2 + 3), *(a2 + 4), (*(a2 + 4) - *(a2 + 3)) >> 2);
  return this;
}

void sub_19D22CDFC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::string>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::set<std::string>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::set<std::string>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::set<std::string>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::set<std::string>>,0>(uint64_t a1)
{
  std::__tree<std::string>::destroy(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::set<std::string>>,0>((a2 + 4));

    operator delete(a2);
  }
}

uint64_t **std::istream_iterator<std::string,char,std::char_traits<char>,long>::istream_iterator[abi:ne200100](uint64_t **a1, uint64_t *a2)
{
  *a1 = a2;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  v3 = std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, (a1 + 1));
  if ((*(v3 + *(*v3 - 24) + 32) & 5) != 0)
  {
    *a1 = 0;
  }

  return a1;
}

void sub_19D22D0D4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::string>::vector[abi:ne200100]<std::istream_iterator<std::string,char,std::char_traits<char>,long>,0>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v8 = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, a2[1], a2[2]);
  }

  else
  {
    v9 = *(a2 + 1);
  }

  v6 = *a3;
  if (*(a3 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, a3[1], a3[2]);
  }

  else
  {
    __p = *(a3 + 1);
  }

  std::vector<std::string>::__init_with_sentinel[abi:ne200100]<std::istream_iterator<std::string,char,std::char_traits<char>,long>,std::istream_iterator<std::string,char,std::char_traits<char>,long>>(a1, &v8, &v6);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_19D22D1C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **std::vector<std::string>::__init_with_sentinel[abi:ne200100]<std::istream_iterator<std::string,char,std::char_traits<char>,long>,std::istream_iterator<std::string,char,std::char_traits<char>,long>>(uint64_t **result, uint64_t a2, void *a3)
{
  v5 = result;
  while (*a2 != *a3)
  {
    v6 = *(v5 + 8);
    if (v6 >= *(v5 + 16))
    {
      v7 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(v5, (a2 + 8));
    }

    else
    {
      std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(v5, (a2 + 8));
      v7 = v6 + 1;
    }

    *(v5 + 8) = v7;
    result = std::istream_iterator<std::string,char,std::char_traits<char>,long>::operator++[abi:ne200100](a2);
  }

  return result;
}

uint64_t **std::istream_iterator<std::string,char,std::char_traits<char>,long>::operator++[abi:ne200100](uint64_t **a1)
{
  v2 = std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(*a1, (a1 + 1));
  if ((*(v2 + *(*v2 - 24) + 32) & 5) != 0)
  {
    *a1 = 0;
  }

  return a1;
}

void std::__tree<std::__value_type<CoreNLP::NLTrainerDataType,std::vector<std::string>>,std::__map_value_compare<CoreNLP::NLTrainerDataType,std::__value_type<CoreNLP::NLTrainerDataType,std::vector<std::string>>,std::less<CoreNLP::NLTrainerDataType>,true>,std::allocator<std::__value_type<CoreNLP::NLTrainerDataType,std::vector<std::string>>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<CoreNLP::NLTrainerDataType,std::vector<std::string>>,std::__map_value_compare<CoreNLP::NLTrainerDataType,std::__value_type<CoreNLP::NLTrainerDataType,std::vector<std::string>>,std::less<CoreNLP::NLTrainerDataType>,true>,std::allocator<std::__value_type<CoreNLP::NLTrainerDataType,std::vector<std::string>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<CoreNLP::NLTrainerDataType,std::vector<std::string>>,std::__map_value_compare<CoreNLP::NLTrainerDataType,std::__value_type<CoreNLP::NLTrainerDataType,std::vector<std::string>>,std::less<CoreNLP::NLTrainerDataType>,true>,std::allocator<std::__value_type<CoreNLP::NLTrainerDataType,std::vector<std::string>>>>::destroy(a1, *(a2 + 1));
    v4 = (a2 + 40);
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
    operator delete(a2);
  }
}

uint64_t std::uniform_int_distribution<int>::operator()<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = a3[1];
  v6 = result - *a3;
  if (result != *a3)
  {
    v13 = v3;
    v14 = v4;
    v7 = v6 + 1;
    if (v6 == -1)
    {
      std::__independent_bits_engine<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>,unsigned int>::__independent_bits_engine(v12, a2, 0x20uLL);
      return std::__independent_bits_engine<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>,unsigned int>::__eval(v12);
    }

    else
    {
      v9 = __clz(v7);
      v10 = 31;
      if (((v7 << v9) & 0x7FFFFFFF) != 0)
      {
        v10 = 32;
      }

      std::__independent_bits_engine<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>,unsigned int>::__independent_bits_engine(v12, a2, v10 - v9);
      do
      {
        v11 = std::__independent_bits_engine<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>,unsigned int>::__eval(v12);
      }

      while (v11 >= v7);
      return *a3 + v11;
    }
  }

  return result;
}

uint64_t std::__independent_bits_engine<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>,unsigned int>::__independent_bits_engine(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if (a3 % 0x1E)
  {
    v3 = a3 / 0x1E + 1;
  }

  else
  {
    v3 = a3 / 0x1E;
  }

  v4 = a3 / v3;
  *(result + 16) = a3 / v3;
  *(result + 24) = v3;
  LODWORD(v5) = (-1 << (a3 / v3)) & 0x7FFFFFFE;
  if (a3 / v3 >= 0x20)
  {
    v5 = 0;
  }

  else
  {
    v5 = v5;
  }

  *(result + 40) = v5;
  if (v5 / v3 < (v5 ^ 0x7FFFFFFE))
  {
    ++v3;
    v4 = a3 / v3;
    *(result + 16) = a3 / v3;
    *(result + 24) = v3;
    if (a3 / v3 > 0x1F)
    {
      *(result + 40) = 0;
      *(result + 32) = v3 + v4 * v3 - a3;
      goto LABEL_15;
    }

    *(result + 40) = (-1 << v4) & 0x7FFFFFFE;
  }

  *(result + 32) = v3 + a3 / v3 * v3 - a3;
  if (v4 > 0x1E)
  {
LABEL_15:
    v8 = -v4;
    v7 = -1;
    *(result + 44) = 0;
    *(result + 48) = 0xFFFFFFFF >> v8;
    goto LABEL_16;
  }

  v6 = 0xFFFFFFFF >> -v4;
  if (!v4)
  {
    v6 = 0;
  }

  *(result + 44) = 0x3FFFFFFFu >> v4 << (v4 + 1);
  *(result + 48) = v6;
  v7 = 0xFFFFFFFF >> ~v4;
LABEL_16:
  *(result + 52) = v7;
  return result;
}

uint64_t std::__independent_bits_engine<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>,unsigned int>::__eval(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    LODWORD(result) = 0;
    v4 = 0;
    v5 = *(a1 + 16);
    v6 = **a1;
    do
    {
      do
      {
        v7 = v6 / 0xADC8;
        v8 = 48271 * (v6 % 0xADC8);
        v7 *= 3399;
        v9 = v8 >= v7;
        v10 = v8 - v7;
        if (v9)
        {
          v11 = 0;
        }

        else
        {
          v11 = 0x7FFFFFFF;
        }

        v6 = v11 + v10;
      }

      while (v6 - 1 >= *(a1 + 40));
      v12 = result << v5;
      if (v5 >= 0x20)
      {
        v12 = 0;
      }

      result = v12 + (*(a1 + 48) & (v6 - 1));
      ++v4;
    }

    while (v4 != v2);
    **a1 = v6;
  }

  else
  {
    result = 0;
  }

  v13 = *(a1 + 24);
  if (v2 < v13)
  {
    v14 = *a1;
    v15 = *(a1 + 44);
    v16 = *(a1 + 16);
    v17 = *(a1 + 52);
    v18 = *v14;
    while (1)
    {
      v19 = v18 / 0xADC8;
      v20 = 48271 * (v18 % 0xADC8);
      v19 *= 3399;
      v9 = v20 >= v19;
      v21 = v20 - v19;
      if (v9)
      {
        v22 = 0;
      }

      else
      {
        v22 = 0x7FFFFFFF;
      }

      v18 = v22 + v21;
      if (v18 - 1 < v15)
      {
        v23 = result << (v16 + 1);
        if (v16 >= 0x1F)
        {
          v23 = 0;
        }

        result = v23 + (v17 & (v18 - 1));
        if (++v2 == v13)
        {
          break;
        }
      }
    }

    *v14 = v18;
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::string,std::vector<int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::string>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::string,std::vector<int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<int>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

CoreNLP::ThaiSubWordTagger *CoreNLP::ThaiSubWordTagger::ThaiSubWordTagger(CoreNLP::ThaiSubWordTagger *this, const CoreNLP::TaggerContext *a2, const CoreNLP::StringBuffer *a3)
{
  *CoreNLP::SubWordTagger::SubWordTagger(this, a2, a3) = &unk_1F10B0000;
  *(this + 6) = ThaiTokenizerCreate();
  return this;
}

void CoreNLP::ThaiSubWordTagger::~ThaiSubWordTagger(CoreNLP::ThaiSubWordTagger *this)
{
  *this = &unk_1F10B0000;
  if (*(this + 6))
  {
    ThaiTokenizerDestroy();
  }

  CoreNLP::SubWordTagger::~SubWordTagger(this);
}

{
  CoreNLP::ThaiSubWordTagger::~ThaiSubWordTagger(this);

  JUMPOUT(0x19EAF8CA0);
}

uint64_t CoreNLP::ThaiSubWordTagger::setString(CoreNLP::ThaiSubWordTagger *this, const __CFString *a2, CFRange a3)
{
  CoreNLP::SubWordTagger::setString(this, a2, a3);
  result = *(this + 6);
  if (result)
  {

    return MEMORY[0x1EEE632D0]();
  }

  return result;
}

uint64_t CoreNLP::ThaiSubWordTagger::fastEnumerateTokensWithSpecifiedStop(uint64_t result, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  if (*(result + 48))
  {
    v6 = result;
    do
    {
      v7 = *(v6 + 48);
      result = ThaiTokenizerAdvanceToNextToken();
      if (!result)
      {
        break;
      }

      v8 = result;
      v9 = *(v6 + 48);
      v11[0] = ThaiTokenizerGetCurrentTokenRange();
      v11[1] = v10;
      v11[2] = 32 * ((v8 & 6) != 0);
      result = (*(a4 + 16))(a4, v11, a3);
    }

    while (*a3 != 1);
  }

  return result;
}

uint64_t CoreNLP::ThaiSubWordTagger::enumeratePersonNamesOfCurrentSequence(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = 0;
  v4 = *(a1 + 8);
  v5 = (v4 + 16);
  v6 = CFStringFindWithOptions(*(v4 + 8), @" ", *(v4 + 16), 0, &v10);
  v12 = 0x10000;
  if (v6)
  {
    v7 = v10.location - *v5;
    *&v11 = *v5;
    *(&v11 + 1) = v7;
    (*(a3 + 16))(a3, &v11, &v13);
    if ((v13 & 1) == 0)
    {
      v12 = 0x40000;
      v8 = *(v4 + 24) + ~*(&v11 + 1);
      *&v11 = v10.location + 1;
      *(&v11 + 1) = v8;
      (*(a3 + 16))(a3, &v11, &v13);
    }
  }

  else
  {
    v11 = *v5;
    (*(a3 + 16))(a3, &v11, &v13);
  }

  return 1;
}

char *CoreNLP::ThaiSubWordTagger::goToTokenAtIndex(CoreNLP::ThaiSubWordTagger *this, unint64_t a2, uint64_t a3, CFRange *a4)
{
  if (a4)
  {
    *a4 = xmmword_19D27D570;
  }

  if (!*(this + 6))
  {
    return 0;
  }

  v6 = *(this + 1);
  v7 = *(v6 + 16);
  if (v7 > a3 || *(v6 + 24) + v7 <= a3)
  {
    return 0;
  }

  v9 = this + 24;
  v8 = *(this + 3);
  if (v8 > a3 || *(this + 4) + v8 <= a3)
  {
    v10 = ThaiTokenizerGoToTokenAtIndex();
    if (!v10)
    {
      return 0;
    }

    v11 = v10;
    if ((v10 & 4) != 0 && (**(this + 1) & 0x10000) == 0)
    {
      return 0;
    }

    v13 = *(this + 6);
    CurrentTokenRange = ThaiTokenizerGetCurrentTokenRange();
    if (a4 && (v11 & 8) != 0)
    {
      v9 = 0;
      a4->location = CurrentTokenRange;
      a4->length = v15;
    }

    else
    {
      *(this + 3) = CurrentTokenRange;
      *(this + 4) = v15;
      *(this + 5) = 32 * ((v11 & 6) != 0);
    }
  }

  return v9;
}

char *CoreNLP::ThaiSubWordTagger::getNextToken(CoreNLP::ThaiSubWordTagger *this, CFRange *a2)
{
  if (!*(this + 6))
  {
    return 0;
  }

  do
  {
    v4 = *(this + 6);
    Token = ThaiTokenizerAdvanceToNextToken();
    v6 = Token;
  }

  while ((*(*(this + 1) + 2) & 1) == 0 && (Token & 4) != 0);
  if (!Token)
  {
    return 0;
  }

  v7 = *(this + 6);
  CurrentTokenRange = ThaiTokenizerGetCurrentTokenRange();
  if (a2 && (v6 & 8) != 0)
  {
    v10 = 0;
    a2->location = CurrentTokenRange;
    a2->length = v9;
  }

  else
  {
    *(this + 3) = CurrentTokenRange;
    *(this + 4) = v9;
    v10 = this + 24;
    *(v10 + 2) = 32 * ((v6 & 6) != 0);
  }

  return v10;
}

uint64_t CoreNLP::SentenceEmbedding::dimension(CoreNLP::SentenceEmbedding *this)
{
  if (*(this + 4) == 10)
  {
    return 512;
  }

  else
  {
    return 640;
  }
}

void ___ZN7CoreNLP8Resource16getAssetResourceEPK10__CFLocalePK10__CFStringS6_b_block_invoke(uint64_t a1, const __CFURL *a2, int a3, int a4, CFStringRef theString1)
{
  if (CFStringCompare(theString1, *(a1 + 40), 0) == kCFCompareEqualTo)
  {
    PathComponent = CFURLCopyLastPathComponent(a2);
    if (CFStringCompare(PathComponent, *(a1 + 48), 0) == kCFCompareEqualTo)
    {
      operator new();
    }

    CFRelease(PathComponent);
  }
}

void sub_19D22DE14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<CoreNLP::Resource>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

CoreNLP::Resource *CoreNLP::Resource::Resource(CoreNLP::Resource *this, CFTypeRef cf, CFTypeRef a3, CFTypeRef a4)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  if (cf)
  {
    *this = CFRetain(cf);
  }

  if (a3)
  {
    *(this + 1) = CFRetain(a3);
  }

  if (a4)
  {
    *(this + 2) = CFRetain(a4);
  }

  return this;
}

void CoreNLP::Resource::~Resource(CoreNLP::Resource *this)
{
  v2 = *this;
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 2);
  if (v4)
  {
    CFRelease(v4);
  }
}

CoreNLP *CoreNLP::Resource::path@<X0>(CoreNLP **this@<X0>, const __CFURL *a2@<X1>, _BYTE *a3@<X8>)
{
  result = *this;
  if (result)
  {
    CoreNLP::getFileSystemRepresentationFromCFURL(result, a2);
  }

  a3[23] = 0;
  *a3 = 0;
  return result;
}

BOOL CoreNLP::Resource::exists(CoreNLP **this, const __CFURL *a2)
{
  v2 = *this;
  if (v2)
  {
    CoreNLP::getFileSystemRepresentationFromCFURL(v2, a2);
  }

  v7 = 0;
  LOBYTE(__p) = 0;
  v3 = open(&__p, 0);
  v4 = v3;
  if ((v3 & 0x80000000) == 0)
  {
    close(v3);
  }

  if (v7 < 0)
  {
    operator delete(__p);
  }

  return v4 >= 0;
}

void sub_19D22DFA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *___ZN7CoreNLPL4loadEv_block_invoke(CoreNLP *a1)
{
  LinguisticData = CoreNLP::loadLinguisticData(a1);
  v2 = LinguisticData;
  if (LinguisticData)
  {
    result = dlsym(LinguisticData, "LDEnumerateAssetDataItems");
    CoreNLP::_LDEnumerateAssetDataItems = result;
  }

  else
  {
    result = CoreNLP::_LDEnumerateAssetDataItems;
  }

  if (v2)
  {
    v4 = result == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  CoreNLP::isSoftlinked = v5;
  return result;
}

uint64_t tokenTypeToTokenizer@<X0>(int a1@<W0>, void *a2@<X8>)
{
  if (a1 == 1)
  {
    operator new();
  }

  if (!a1)
  {
    operator new();
  }

  result = 0;
  *a2 = 0;
  return result;
}

void corelm::VocabularyBuilder::makeVocabulary(uint64_t a1, int a2)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "vocab.txt");
  hasFile = corelm::util::Directory::hasFile(a1, &__p);
  v5 = hasFile;
  if (v14.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(__p);
    if (v5)
    {
LABEL_3:
      std::string::basic_string[abi:ne200100]<0>(&v12, "vocab.txt");
      corelm::util::Directory::getFilePath(a1, &v12, &__p);
      if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v15, v14.__r_.__value_.__l.__data_, v14.__r_.__value_.__l.__size_);
        __p = &unk_1F10AD1D0;
        if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v14.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v15 = v14;
        __p = &unk_1F10AD1D0;
      }

      if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v12.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:ne200100]<0>(v10, "special_map.txt");
      if (corelm::util::Directory::hasFile(a1, v10))
      {
        std::string::basic_string[abi:ne200100]<0>(v8, "special_map.txt");
        corelm::util::Directory::getFilePath(a1, v8, &__p);
        if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v12, v14.__r_.__value_.__l.__data_, v14.__r_.__value_.__l.__size_);
          __p = &unk_1F10AD1D0;
          if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v14.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v12 = v14;
          __p = &unk_1F10AD1D0;
        }

        if (v9 < 0)
        {
          operator delete(v8[0]);
        }
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(&v12, "");
      }

      if (v11 < 0)
      {
        operator delete(v10[0]);
      }

      tokenTypeToTokenizer(a2, &__p);
      std::make_unique[abi:ne200100]<corelm::TokenListVocabulary,std::string &,std::unique_ptr<corelm::AbstractTokenizer>,std::string &,0>();
    }
  }

  else if (hasFile)
  {
    goto LABEL_3;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "sp.dat");
  v6 = corelm::util::Directory::hasFile(a1, &__p);
  if (v14.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(__p);
  }

  if (v6)
  {
    std::string::basic_string[abi:ne200100]<0>(&v12, "sp.dat");
    corelm::util::Directory::getFilePath(a1, &v12, &__p);
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v15, v14.__r_.__value_.__l.__data_, v14.__r_.__value_.__l.__size_);
      __p = &unk_1F10AD1D0;
      if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v14.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v15 = v14;
      __p = &unk_1F10AD1D0;
    }

    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }

    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Unable to find vocab file.");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void sub_19D22E494(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, void *__p, int a30, __int16 a31, char a32, char a33, int a34, __int16 a35, char a36, char a37)
{
  if (a37 < 0)
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
  }

  if (*(v37 - 41) < 0)
  {
    operator delete(*(v37 - 64));
  }

  _Unwind_Resume(exception_object);
}

void sub_19D22E7DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v35)
  {
    (*(*v35 + 8))(v35);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  MEMORY[0x19EAF8CA0](v33, v34);
  _Unwind_Resume(a1);
}

void CoreNLP::GermanCompoundWord::enumerateDerivedSubTokensOfToken(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v2;
  v33[256] = *MEMORY[0x1E69E9840];
  Mutable = CFStringCreateMutable(0, 0);
  if (Mutable)
  {
    v11 = Mutable;
    v25 = v9;
    CoreNLP::StringBuffer::getSubStringCharsOfRange(*(v9 + 8), *v8);
    v29 = 0;
    v26 = v8;
    length = v8->length;
    v13 = germantok_tokenize();
    v14 = v13 - 1;
    if (v13 >= 1)
    {
      v15 = &v31;
      v16 = &v30;
      v17 = &v32;
      v18 = v33;
      do
      {
        v19 = v14;
        v27 = *v18;
        if (v6)
        {
          v20 = *v17;
        }

        else
        {
          v20 = 0;
        }

        v28 = v20;
        v21.length = *v15;
        if (*v15)
        {
          v21.location = *(v15 - 1);
          v22 = v11;
        }

        else
        {
          v21.length = *(&v27 + 1);
          v22 = *(*v25 + 8);
          v21.location = v26->location + v27;
        }

        v23 = CFStringCreateWithSubstring(0, v22, v21);
        (*(v4 + 16))(v4, &v27, v23, *v16, &v29);
        if (v23)
        {
          CFRelease(v23);
        }

        if (v29)
        {
          break;
        }

        v14 = v19 - 1;
        v16 += 8;
        v15 += 2;
        ++v17;
        ++v18;
      }

      while (v19);
    }

    CFRelease(v11);
  }

  v24 = *MEMORY[0x1E69E9840];
}

uint64_t CoreNLP::CRFModel::CRFModel(uint64_t a1, const void ***a2)
{
  v3 = CoreNLP::AbstractModel::AbstractModel(a1, a2);
  *v3 = &unk_1F10B00F8;
  *(v3 + 72) = &unk_1F10AE9A8;
  *(v3 + 96) = 0;
  *(v3 + 104) = 0;
  *(v3 + 120) = 0;
  *(v3 + 128) = 0;
  *(v3 + 224) = 0;
  *(v3 + 216) = v3 + 224;
  *(v3 + 232) = 0;
  *(v3 + 136) = 0u;
  *(v3 + 152) = 0u;
  *(v3 + 168) = 0u;
  *(v3 + 184) = 0u;
  *(v3 + 200) = 0u;
  v15[0] = 0;
  v15[1] = 0;
  v14 = v15;
  v4 = (v3 + 24);
  v5 = *(v3 + 16);
  if (v5 != (v3 + 24))
  {
    do
    {
      v15[3] = (v5 + 7);
      v6 = std::__tree<std::__value_type<int,std::string>,std::__map_value_compare<int,std::__value_type<int,std::string>,std::less<int>,true>,std::allocator<std::__value_type<int,std::string>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v14, v5 + 14);
      std::string::operator=((v6 + 5), (v5 + 4));
      v7 = v5[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v5[2];
          v9 = *v8 == v5;
          v5 = v8;
        }

        while (!v9);
      }

      v5 = v8;
    }

    while (v8 != v4);
    v10 = v14;
    if (v14 != v15)
    {
      do
      {
        std::vector<std::string>::push_back[abi:ne200100](a1 + 192, (v10 + 5));
        v11 = v10[1];
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
            v12 = v10[2];
            v9 = *v12 == v10;
            v10 = v12;
          }

          while (!v9);
        }

        v10 = v12;
      }

      while (v12 != v15);
    }
  }

  std::__tree<std::__value_type<long,std::string>,std::__map_value_compare<long,std::__value_type<long,std::string>,std::less<long>,true>,std::allocator<std::__value_type<long,std::string>>>::destroy(&v14, v15[0]);
  return a1;
}

void sub_19D22EBCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, char *a11)
{
  std::__tree<std::__value_type<long,std::string>,std::__map_value_compare<long,std::__value_type<long,std::string>,std::less<long>,true>,std::allocator<std::__value_type<long,std::string>>>::destroy(&a10, a11);
  std::__tree<std::__value_type<unsigned int,std::set<std::string>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::set<std::string>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::set<std::string>>>>::destroy(v13, *(v11 + 28));
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  CoreNLP::crfsuite::Instance::~Instance(v12);
  CoreNLP::AbstractModel::~AbstractModel(v11);
  _Unwind_Resume(a1);
}

BOOL CoreNLP::CRFModel::load(uint64_t a1, char *a2, unint64_t a3, int a4)
{
  CoreNLP::CRFModel::releaseModel(a1);
  if (!a2)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &unk_1F10B0198;
  }

  v8 = *a2;
  if (*a2 == 300)
  {
    v17 = *(a2 + 7);
    v18 = *(a2 + 5) + *(a2 + 3) + v17 + 68;
    if (a3 < v18)
    {
      if (CoreNLP::logger(void)::token != -1)
      {
        CoreNLP::CRFModel::load();
      }

      v53 = CoreNLP::logger(void)::log;
      if (os_log_type_enabled(CoreNLP::logger(void)::log, OS_LOG_TYPE_ERROR))
      {
        CoreNLP::CRFModel::load(a4, v53);
      }

      v54 = __cxa_allocate_exception(8uLL);
      *v54 = &unk_1F10B0198;
    }

    v55 = *(a2 + 4);
    v58 = *(a2 + 2);
    v19 = v18;
    v15 = a3 >= v18;
    v20 = a3 - v18;
    if (v20 != 0 && v15)
    {
      *(a1 + 168) = &a2[v19];
      *(a1 + 176) = v20;
    }

    v21 = *(a2 + 6);
    v22 = (a1 + 192);
    std::vector<std::string>::clear[abi:ne200100]((a1 + 192));
    if (v17 >= 0x20)
    {
      v23 = v17 >> 5;
      v24 = &a2[v21];
      do
      {
        std::string::basic_string[abi:ne200100]<0>(__p, v24);
        v26 = *(a1 + 200);
        v25 = *(a1 + 208);
        if (v26 >= v25)
        {
          v28 = 0xAAAAAAAAAAAAAAABLL * ((v26 - *v22) >> 3);
          v29 = v28 + 1;
          if (v28 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
          }

          v30 = 0xAAAAAAAAAAAAAAABLL * ((v25 - *v22) >> 3);
          if (2 * v30 > v29)
          {
            v29 = 2 * v30;
          }

          if (v30 >= 0x555555555555555)
          {
            v31 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v31 = v29;
          }

          v61.__end_cap_.__value_ = (a1 + 192);
          if (v31)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1 + 192, v31);
          }

          v32 = 24 * v28;
          v33 = *__p;
          *(v32 + 16) = v60;
          *v32 = v33;
          __p[1] = 0;
          v60 = 0;
          __p[0] = 0;
          v34 = 24 * v28 + 24;
          v35 = *(a1 + 192);
          v36 = *(a1 + 200) - v35;
          v37 = 24 * v28 - v36;
          memcpy((v32 - v36), v35, v36);
          v38 = *(a1 + 192);
          *(a1 + 192) = v37;
          *(a1 + 200) = v34;
          v39 = *(a1 + 208);
          *(a1 + 208) = 0;
          v61.__end_ = v38;
          v61.__end_cap_.__value_ = v39;
          v61.__first_ = v38;
          v61.__begin_ = v38;
          std::__split_buffer<std::string>::~__split_buffer(&v61);
          v40 = SHIBYTE(v60);
          *(a1 + 200) = v34;
          if (v40 < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          v27 = *__p;
          *(v26 + 16) = v60;
          *v26 = v27;
          *(a1 + 200) = v26 + 24;
        }

        v24 += 32;
        --v23;
      }

      while (v23);
    }

    std::string::basic_string[abi:ne200100]<0>(&v61, a2 + 36);
    std::string::operator=((a1 + 40), &v61);
    if (SHIBYTE(v61.__end_) < 0)
    {
      operator delete(v61.__first_);
    }

    v41 = *(a2 + 8);
    *(a1 + 64) = v41;
    if (v41 > 2)
    {
      if ((v41 - 105) >= 2)
      {
        if (v41 == 3)
        {
          v42 = 500000;
          goto LABEL_47;
        }

        goto LABEL_48;
      }
    }

    else
    {
      if (!v41)
      {
LABEL_40:
        v42 = 50000;
LABEL_47:
        *(a1 + 128) = v42;
        goto LABEL_48;
      }

      if (v41 != 1)
      {
        if (v41 == 2)
        {
          goto LABEL_40;
        }

LABEL_48:
        v43 = *(a2 + 1);
        *(a1 + 12) = v43 & 0x7F;
        *(a1 + 68) = (v43 & 0x80) != 0;
        goto LABEL_49;
      }
    }

    v42 = 10000;
    goto LABEL_47;
  }

  if (v8 == 200)
  {
    v12 = *(a2 + 5) + *(a2 + 3) + 56;
    if (a3 < v12)
    {
      if (CoreNLP::logger(void)::token != -1)
      {
        CoreNLP::CRFModel::load();
      }

      v51 = CoreNLP::logger(void)::log;
      if (os_log_type_enabled(CoreNLP::logger(void)::log, OS_LOG_TYPE_ERROR))
      {
        CoreNLP::CRFModel::load(a4, v51);
      }

      v52 = __cxa_allocate_exception(8uLL);
      *v52 = &unk_1F10B0198;
    }

    v13 = *(a2 + 4);
    v57 = *(a2 + 2);
    v14 = v12;
    v15 = a3 >= v12;
    v16 = a3 - v12;
    if (v16 != 0 && v15)
    {
      *(a1 + 168) = &a2[v14];
      *(a1 + 176) = v16;
    }

    if (a4 == 7)
    {
      *(a1 + 64) = 103;
    }
  }

  else
  {
    if (v8 != 100)
    {
      goto LABEL_56;
    }

    v9 = *(a2 + 3);
    v10 = *(a2 + 4);
    v56 = *(a2 + 1);
    if (a4 == 7)
    {
      v11 = 102;
    }

    else
    {
      if (a4 != 6)
      {
        goto LABEL_49;
      }

      v11 = 101;
    }

    *(a1 + 64) = v11;
  }

LABEL_49:
  v44 = *(a1 + 64);
  if (v44 >= 4 && v44 - 105 >= 2 && (v45 = CFBurstTrieCreateFromMapBytes(), (*(a1 + 120) = v45) == 0) || (v46 = crfsuite_model_create_from_buffer(), (*(a1 + 136) = v46) == 0) || (tagger = crfsuite_model_get_tagger(), (*(a1 + 144) = tagger) == 0))
  {
LABEL_56:
    v49 = __cxa_allocate_exception(8uLL);
    *v49 = &unk_1F10B0198;
  }

  return *(a1 + 136) != 0;
}

void sub_19D22F124(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::exception a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    __cxa_get_exception_ptr(exception_object);
    a11.__vftable = &unk_1F10B0198;
    __cxa_begin_catch(exception_object);
    CoreNLP::CRFModel::releaseModel(v22);
    std::exception::~exception(&a11);
    __cxa_end_catch();
    JUMPOUT(0x19D22EF68);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CoreNLP::CRFModel::acceptFeatures(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v4 = result;
    do
    {
      v5 = *(v2 + 23);
      if (v5 < 0)
      {
        if (!*(v2 + 8))
        {
          goto LABEL_14;
        }
      }

      else if (!*(v2 + 23))
      {
        goto LABEL_14;
      }

      v13 = 0;
      v6 = *(v4 + 64);
      if (v6 >= 4 && v6 - 105 > 1)
      {
        if ((v5 & 0x80000000) != 0)
        {
          v10 = *v2;
          v11 = *(v2 + 8);
        }

        v12 = *(v4 + 120);
        result = CFBurstTrieContainsUTF8String();
        if (!v13)
        {
          goto LABEL_14;
        }

        v8 = v13 - 1;
      }

      else
      {
        if ((v5 & 0x80000000) != 0)
        {
          v7 = *v2;
          v5 = *(v2 + 8);
        }

        else
        {
          v7 = v2;
        }

        MurmurHash3_x86_32(v7, v5, 0, &v13);
        v8 = v13 % *(v4 + 128);
      }

      v13 = v8;
      v9 = *(v4 + 96);
      result = crfsuite_item_append_attribute();
LABEL_14:
      v2 += 24;
    }

    while (v2 != v3);
  }

  return result;
}

void CoreNLP::CRFModel::vinference(void *a1@<X0>, void *a2@<X1>, unsigned int ***a3@<X8>)
{
  if (!a1[18] || (v5 = a2[1], *a2 == v5))
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a2) >> 3);
    std::vector<std::vector<std::pair<int,double>>>::vector[abi:ne200100](&v47, v7);
    v8 = -1431655765 * ((*(*a2 + 8) - **a2) >> 3);
    CoreNLP::crfsuite::Instance::init((a1 + 9));
    v9 = 0;
    v10 = 0;
    if (v7 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v7;
    }

    do
    {
      CoreNLP::CRFModel::acceptFeatures(a1, (*a2 + v9));
      ++v10;
      v9 += 24;
    }

    while (v11 != v10);
    v12 = a1[18];
    if ((crfsuite_tagger_set_instance() & 0x80000000) != 0)
    {
      CoreNLP::crfsuite::Instance::finish((a1 + 9));
      *a3 = v47;
      a3[2] = v48;
      v48 = 0;
      v47 = 0uLL;
    }

    else
    {
      v46[3] = 0xBFF0000000000000;
      LODWORD(__p[0]) = -1;
      std::vector<int>::vector[abi:ne200100](v46, v7);
      v13 = a1[18];
      crfsuite_tagger_viterbi();
      v14 = 0;
      for (i = 0; i != v11; ++i)
      {
        v16 = v47 + v14;
        v17 = *(v46[0] + i);
        v19 = *(v47 + v14 + 8);
        v18 = *(v47 + v14 + 16);
        if (v19 >= v18)
        {
          v21 = (v19 - *v16) >> 4;
          v22 = v21 + 1;
          if ((v21 + 1) >> 60)
          {
            std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
          }

          v23 = v18 - *v16;
          if (v23 >> 3 > v22)
          {
            v22 = v23 >> 3;
          }

          if (v23 >= 0x7FFFFFFFFFFFFFF0)
          {
            v24 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v24 = v22;
          }

          if (v24)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<float,unsigned long>>>(v47 + v14, v24);
          }

          v25 = (16 * v21);
          *v25 = v17;
          v25[1] = 0;
          v20 = 16 * v21 + 16;
          v26 = *(v16 + 8) - *v16;
          v27 = v25 - v26;
          memcpy(v25 - v26, *v16, v26);
          v28 = *v16;
          *v16 = v27;
          *(v16 + 8) = v20;
          *(v16 + 16) = 0;
          if (v28)
          {
            operator delete(v28);
          }
        }

        else
        {
          *v19 = v17;
          v19[1] = 0;
          v20 = (v19 + 2);
        }

        *(v16 + 8) = v20;
        v29 = a1[18];
        v30 = *(v46[0] + i);
        v31 = *(v47 + v14);
        crfsuite_tagger_marginal_point();
        v14 += 24;
      }

      CoreNLP::crfsuite::Instance::finish((a1 + 9));
      if (!a1[4] || (v32 = a1[24], v33 = a1[25], v32 == v33))
      {
        *a3 = 0;
        a3[1] = 0;
        a3[2] = 0;
        std::vector<std::vector<std::pair<int,double>>>::__init_with_size[abi:ne200100]<std::vector<std::pair<int,double>>*,std::vector<std::pair<int,double>>*>(a3, v47, *(&v47 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v47 + 1) - v47) >> 3));
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "NONE");
        v34 = std::__tree<std::__value_type<std::string,CoreNLP::ReadOnlyFile<unsigned short> *>,std::__map_value_compare<std::string,std::__value_type<std::string,CoreNLP::ReadOnlyFile<unsigned short> *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CoreNLP::ReadOnlyFile<unsigned short> *>>>::find<std::string>((a1 + 2), __p);
        if (v45 < 0)
        {
          operator delete(__p[0]);
        }

        v36 = *(&v47 + 1);
        v35 = v47;
        if (v47 != *(&v47 + 1))
        {
          v37 = 0xAAAAAAAAAAAAAAABLL * ((v33 - v32) >> 3);
          v38 = a1 + 3;
          do
          {
            v39 = *v35;
            v40 = **v35;
            if ((v40 & 0x80000000) == 0 && v37 > v40)
            {
              v41 = std::__tree<std::__value_type<std::string,CoreNLP::ReadOnlyFile<unsigned short> *>,std::__map_value_compare<std::string,std::__value_type<std::string,CoreNLP::ReadOnlyFile<unsigned short> *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CoreNLP::ReadOnlyFile<unsigned short> *>>>::find<std::string>((a1 + 2), a1[24] + 24 * v40);
              if (v38 != v41 || v38 != v34)
              {
                if (v38 == v41)
                {
                  v43 = v34;
                }

                else
                {
                  v43 = v41;
                }

                *v39 = *(v43 + 56);
              }
            }

            v35 += 3;
          }

          while (v35 != v36);
          v36 = *(&v47 + 1);
          v35 = v47;
        }

        *a3 = v35;
        a3[1] = v36;
        a3[2] = v48;
        v48 = 0;
        v47 = 0uLL;
      }

      if (v46[0])
      {
        v46[1] = v46[0];
        operator delete(v46[0]);
      }
    }

    v46[0] = &v47;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v46);
  }
}

void sub_19D22F668(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char *a16, char *a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    a17 = a16;
    operator delete(a16);
  }

  a16 = &a20;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

uint64_t CoreNLP::CRFModel::saveFeatures(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v4 = result;
    do
    {
      v5 = *(v2 + 23);
      if (v5 < 0)
      {
        if (*(v2 + 8))
        {
LABEL_7:
          v17 = 0;
          v6 = *(v4 + 64);
          if (v6 >= 4 && v6 - 105 > 1)
          {
            if ((v5 & 0x80000000) != 0)
            {
              v10 = *v2;
              v11 = *(v2 + 8);
            }

            v12 = *(v4 + 120);
            CFBurstTrieContainsUTF8String();
            v13 = v17;
            if (!v17)
            {
              if ((*(v2 + 23) & 0x8000000000000000) != 0)
              {
                v14 = *v2;
                v15 = *(v2 + 8);
              }

              v16 = *(v4 + 120);
              ++*(v4 + 128);
              CFBurstTrieAddUTF8String();
              v13 = *(v4 + 128);
            }

            v17 = v13 - 1;
          }

          else
          {
            if ((v5 & 0x80000000) != 0)
            {
              v7 = *v2;
              v5 = *(v2 + 8);
            }

            else
            {
              v7 = v2;
            }

            MurmurHash3_x86_32(v7, v5, 0, &v17);
            v17 %= *(v4 + 128);
            v8 = std::__tree<std::__value_type<unsigned int,std::set<std::string>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::set<std::string>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::set<std::string>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v4 + 216, &v17);
            std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>((v8 + 5), v2);
          }

          v9 = *(v4 + 96);
          result = crfsuite_item_append_attribute();
        }
      }

      else if (*(v2 + 23))
      {
        goto LABEL_7;
      }

      v2 += 24;
    }

    while (v2 != v3);
  }

  return result;
}

uint64_t CoreNLP::CRFModel::readSample(uint64_t result, void *a2, void *a3, int a4)
{
  if (*a2 != a2[1] && **a2 != *(*a2 + 8))
  {
    v8 = result;
    CoreNLP::crfsuite::Instance::init((result + 72));
    if (a2[1] != *a2)
    {
      v9 = 0;
      v10 = 0;
      do
      {
        v11 = (*a3 + v9);
        if (*(v11 + 23) < 0)
        {
          v12 = *v11;
        }

        v13 = *(*(v8 + 160) + 24);
        id_for_string = crfsuite_dictionary_get_id_for_string();
        CoreNLP::CRFModel::saveFeatures(v8, (*a2 + v9));
        if (v10 < *(v8 + 88))
        {
          *(*(v8 + 104) + 4 * v10) = id_for_string;
        }

        if (0xAAAAAAAAAAAAAAABLL * ((*(v8 + 200) - *(v8 + 192)) >> 3) == id_for_string)
        {
          std::vector<std::string>::push_back[abi:ne200100](v8 + 192, (*a3 + v9));
        }

        ++v10;
        v9 += 24;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) > v10);
    }

    *(v8 + 112) = a4;
    v15 = *(v8 + 160);
    crfsuite_data_append();

    return CoreNLP::crfsuite::Instance::finish((v8 + 72));
  }

  return result;
}

uint64_t CoreNLP::CRFModel::message_callback(CoreNLP::CRFModel *this, void *a2, const char *a3, char *a4)
{
  if (this)
  {
    v5 = 0;
    operator new[]();
  }

  return 0;
}

uint64_t CoreNLP::CRFModel::train(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v4 = fopen(v3, "wb");
  v5 = (*(*a1 + 32))(a1, v4);
  fclose(v4);
  return v5;
}

BOOL CoreNLP::CRFModel::train(CoreNLP::CRFModel *this, __sFILE *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  CoreNLP::CRFModel::logHashCollision(this);
  v4 = fileno(a2);
  v5 = *(*(this + 20) + 24);
  crfsuite_dictionary_get_count();
  v6 = *(this + 19);
  v7 = *(this + 23);
  crfsuite_trainer_set_message_callback();
  __buf = 300;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v8 = *(this + 16);
  v35 = 0;
  v36 = v8;
  memset(v37, 0, sizeof(v37));
  if ((*(this + 63) & 0x80000000) == 0)
  {
    *&__dst[16] = *(this + 7);
    *__dst = *(this + 40);
    if (__dst[23] >= 0)
    {
      v9 = __dst;
    }

    else
    {
      v9 = *__dst;
    }

LABEL_8:
    __p = *(this + 40);
    goto LABEL_9;
  }

  v9 = __dst;
  std::string::__init_copy_ctor_external(__dst, *(this + 5), *(this + 6));
  if (__dst[23] < 0)
  {
    v9 = *__dst;
  }

  if ((*(this + 63) & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  std::string::__init_copy_ctor_external(&__p, *(this + 5), *(this + 6));
LABEL_9:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    v11 = __p.__r_.__value_.__r.__words[1];
    if (SLODWORD(__p.__r_.__value_.__r.__words[1]) >= 31)
    {
      v11 = 31;
    }

    memcpy(v37, v9, v11);
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  else
  {
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) >= 0x1F)
    {
      v10 = 31;
    }

    else
    {
      v10 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    memcpy(v37, v9, v10);
  }

  if ((__dst[23] & 0x80000000) != 0)
  {
    operator delete(*__dst);
  }

  v12 = *(this + 3) & 0x7F;
  LODWORD(v32) = v12;
  if (*(this + 68) == 1)
  {
    LODWORD(v32) = v12 | 0x80;
  }

  v13 = lseek(v4, 0, 0);
  write(v4, &__buf, 0x44uLL);
  HIDWORD(v32) = lseek(v4, 0, 1);
  v14 = *(this + 16);
  if (v14 >= 4 && v14 - 105 >= 2)
  {
    v15 = *(this + 15);
    CFBurstTrieSerializeWithFileDescriptor();
  }

  v16 = lseek(v4, 0, 1);
  LODWORD(v33) = v16 - HIDWORD(v32);
  HIDWORD(v33) = v16;
  v17 = *(this + 19);
  v18 = *(this + 20);
  v19 = *(this + 32);
  v20 = crfsuite_trainer_train_model_to_file_pointer();
  v21 = lseek(v4, 0, 1);
  LODWORD(v34) = v21 - HIDWORD(v33);
  HIDWORD(v34) = v21;
  v22 = *(this + 24);
  v23 = *(this + 25);
  if (v22 == v23)
  {
    v26 = *(this + 24);
  }

  else
  {
    do
    {
      memset(__dst, 0, sizeof(__dst));
      v24 = *(v22 + 23);
      if ((v24 & 0x8000000000000000) != 0)
      {
        v25 = *v22;
        v24 = v22[1];
      }

      else
      {
        v25 = v22;
      }

      if (v24 >= 31)
      {
        LODWORD(v24) = 31;
      }

      memcpy(__dst, v25, v24);
      fwrite(__dst, 1uLL, 0x20uLL, a2);
      v22 += 3;
    }

    while (v22 != v23);
    v22 = *(this + 24);
    v26 = *(this + 25);
  }

  v35 = 1431655776 * ((v26 - v22) >> 3);
  pwrite(v4, &__buf, 0x44uLL, v13);
  result = v20 == 0;
  v28 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19D22FFC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CoreNLP::CRFModel::logHashCollision(CoreNLP::CRFModel *this)
{
  if (*(this + 29) && (*(this + 16) - 105) <= 1)
  {
    v35[0] = 0;
    v35[1] = 0;
    v34 = v35;
    v2 = *(this + 27);
    v3 = this + 224;
    if (v2 == this + 224)
    {
      v4 = 0;
    }

    else
    {
      LODWORD(v4) = 0;
      do
      {
        v5 = *(v2 + 7);
        v33 = v5;
        v36.__locale_ = &v33;
        v6 = std::__tree<std::__value_type<unsigned long,int>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,int>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,int>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(&v34, &v33);
        ++*(v6 + 10);
        v7 = *(v2 + 1);
        if (v7)
        {
          do
          {
            v8 = v7;
            v7 = *v7;
          }

          while (v7);
        }

        else
        {
          do
          {
            v8 = *(v2 + 2);
            v9 = *v8 == v2;
            v2 = v8;
          }

          while (!v9);
        }

        v4 = (v4 + v5);
        v2 = v8;
      }

      while (v8 != v3);
    }

    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], "Raw Attribute Nb :", 18);
    v11 = MEMORY[0x19EAF8A70](v10, v4);
    std::ios_base::getloc((v11 + *(*v11 - 24)));
    v12 = std::locale::use_facet(&v36, MEMORY[0x1E69E5318]);
    (v12->__vftable[2].~facet_0)(v12, 10);
    std::locale::~locale(&v36);
    std::ostream::put();
    std::ostream::flush();
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], "Hashed Attribute Nb :", 21);
    v14 = MEMORY[0x19EAF8AA0](v13, *(this + 29));
    std::ios_base::getloc((v14 + *(*v14 - 24)));
    v15 = std::locale::use_facet(&v36, MEMORY[0x1E69E5318]);
    (v15->__vftable[2].~facet_0)(v15, 10);
    std::locale::~locale(&v36);
    std::ostream::put();
    std::ostream::flush();
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], "Average collisionRate :", 23);
    v17 = MEMORY[0x19EAF8A50](v16, (v4 - *(this + 29)) / v4);
    std::ios_base::getloc((v17 + *(*v17 - 24)));
    v18 = std::locale::use_facet(&v36, MEMORY[0x1E69E5318]);
    (v18->__vftable[2].~facet_0)(v18, 10);
    std::locale::~locale(&v36);
    std::ostream::put();
    std::ostream::flush();
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], "Mixed-Attribute", 15);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "\t", 1);
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "Occurrence", 10);
    std::ios_base::getloc((v21 + *(*v21 - 24)));
    v22 = std::locale::use_facet(&v36, MEMORY[0x1E69E5318]);
    (v22->__vftable[2].~facet_0)(v22, 10);
    std::locale::~locale(&v36);
    std::ostream::put();
    std::ostream::flush();
    v23 = v34;
    if (v34 != v35)
    {
      v24 = MEMORY[0x1E69E5310];
      v25 = MEMORY[0x1E69E5318];
      do
      {
        v26 = *(v23 + 10);
        v27 = MEMORY[0x19EAF8AA0](v24, v23[4]);
        v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "\t", 1);
        v29 = MEMORY[0x19EAF8A70](v28, v26);
        std::ios_base::getloc((v29 + *(*v29 - 24)));
        v30 = std::locale::use_facet(&v36, v25);
        (v30->__vftable[2].~facet_0)(v30, 10);
        std::locale::~locale(&v36);
        std::ostream::put();
        std::ostream::flush();
        v31 = v23[1];
        if (v31)
        {
          do
          {
            v32 = v31;
            v31 = *v31;
          }

          while (v31);
        }

        else
        {
          do
          {
            v32 = v23[2];
            v9 = *v32 == v23;
            v23 = v32;
          }

          while (!v9);
        }

        v23 = v32;
      }

      while (v32 != v35);
    }

    std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&v34, v35[0]);
  }
}

void sub_19D230484(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *a11, uint64_t a12, uint64_t a13, std::locale a14)
{
  std::locale::~locale(&a14);
  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&a10, a11);
  _Unwind_Resume(a1);
}

uint64_t CoreNLP::CRFModel::setUserData(uint64_t *a1)
{
  v9[19] = *MEMORY[0x1E69E9840];
  std::ifstream::basic_ifstream(v7, a1);
  if ((*(&v8[2] + *(v7[0] - 24)) & 5) == 0)
  {
    (*(v8[0] + 32))(v5, v8, 0, 2, 8);
    memset(v5, 0, sizeof(v5));
    v6 = 0;
    (*(v8[0] + 40))(&v4, v8, v5, 8);
    operator new[]();
  }

  v1 = *(MEMORY[0x1E69E54C8] + 24);
  v7[0] = *MEMORY[0x1E69E54C8];
  *(v7 + *(v7[0] - 24)) = v1;
  MEMORY[0x19EAF8960](v8);
  std::istream::~istream();
  MEMORY[0x19EAF8C10](v9);
  v2 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_19D230BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::ofstream::~ofstream(&a9, MEMORY[0x1E69E54D0]);
  MEMORY[0x19EAF8C10](v13 + 416);
  std::ifstream::~ifstream(&STACK[0x2C0]);
  std::ifstream::~ifstream(&STACK[0x508]);
  if (v11)
  {
    MEMORY[0x19EAF8C70](v11, v9);
  }

  if (v12)
  {
    MEMORY[0x19EAF8C70](v12, v9);
  }

  MEMORY[0x19EAF8C70](v10, v9);
  _Unwind_Resume(a1);
}

void CoreNLP::CRFModel::tagToLabel(CoreNLP::CRFModel *this@<X0>, unsigned int a2@<W1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  if (*(this + 4))
  {
    v5 = *(this + 2);
    v6 = this + 24;
    if (v5 != (this + 24))
    {
      while (1)
      {
        if (*(v5 + 55) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, v5[4], v5[5]);
        }

        else
        {
          __p = *(v5 + 4);
        }

        v12 = *(v5 + 14);
        if (v12 == a2)
        {
          break;
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v7 = v5[1];
        if (v7)
        {
          do
          {
            v8 = v7;
            v7 = *v7;
          }

          while (v7);
        }

        else
        {
          do
          {
            v8 = v5[2];
            v9 = *v8 == v5;
            v5 = v8;
          }

          while (!v9);
        }

        v5 = v8;
        if (v8 == v6)
        {
          return;
        }
      }

      std::string::operator=(a3, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  else if ((a2 & 0x80000000) == 0)
  {
    v10 = *(this + 24);
    if (0xAAAAAAAAAAAAAAABLL * ((*(this + 25) - v10) >> 3) > a2)
    {
      std::string::operator=(a3, (v10 + 24 * a2));
    }
  }
}

void sub_19D230E00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v14 + 23) < 0)
  {
    operator delete(*v14);
  }

  _Unwind_Resume(exception_object);
}

void CoreNLP::CRFModel::modelLoadException::~modelLoadException(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x19EAF8CA0);
}

os_log_t ___ZN7CoreNLPL6loggerEv_block_invoke_0()
{
  v0 = _nlpLoggingSubsystem();
  result = os_log_create(v0, "CRFModel");
  CoreNLP::logger(void)::log = result;
  return result;
}

void *std::vector<std::vector<std::pair<int,double>>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::vector<std::string>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<unsigned int,std::set<std::string>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::set<std::string>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::set<std::string>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t a1, unsigned int *a2)
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

void *std::__tree<std::__value_type<unsigned long,int>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,int>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,int>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
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
      v5 = v2[4];
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

CoreNLP::Gazetteer *CoreNLP::Gazetteer::Gazetteer(CoreNLP::Gazetteer *this, CFDictionaryRef theDict)
{
  *(this + 2) = 0;
  *(this + 1) = 0;
  *this = this + 8;
  *(this + 24) = 0u;
  v4 = (this + 24);
  *(this + 40) = 0u;
  v5 = (this + 40);
  *(this + 52) = 0u;
  *(this + 18) = 953267991;
  if (CFDictionaryContainsKey(theDict, kNLGazetteerLocale[0]))
  {
    Value = CFDictionaryGetValue(theDict, kNLGazetteerLocale[0]);
    if (Value)
    {
      nlp::CFScopedPtr<__CFLocale const*>::acquire(this + 6, Value);
    }
  }

  if (CFDictionaryContainsKey(theDict, kNLGazetteerSkipNormalization))
  {
    v7 = CFDictionaryGetValue(theDict, kNLGazetteerSkipNormalization);
    v8 = CFBooleanGetValue(v7) != 0;
  }

  else
  {
    v8 = 0;
  }

  *(this + 68) = v8;
  if (CFDictionaryContainsKey(theDict, kNLGazetteerCompressedModelURL[0]))
  {
    v9 = CFDictionaryGetValue(theDict, kNLGazetteerCompressedModelURL[0]);
    v10 = CFURLCopyFileSystemPath(v9, kCFURLPOSIXPathStyle);
    v11 = v10;
    v26 = v10;
    if (!v10)
    {
      return this;
    }

    CoreNLP::getUTF8StringFromCFString(v10, __p);
    CoreNLP::ReadOnlyFile<char>::open(__p, "r", 1, v23);
    v12 = v23[0];
    v23[0] = 0uLL;
    v13 = *(this + 4);
    *(this + 24) = v12;
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      if (*(&v23[0] + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v23[0] + 1));
      }

      v14 = *v4;
      if (!*v4)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v14 = v12;
      if (!v12)
      {
LABEL_20:
        if (v25 < 0)
        {
          operator delete(__p[0]);
        }

        CFRelease(v11);
        return this;
      }
    }

    if ((CoreNLP::Gazetteer::loadBloomFilters(this, *v14, *(v14 + 8)) & 1) == 0)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(v23, "Failed to load bloom filter from file");
      CoreNLP::ResourceCreationException::ResourceCreationException(exception, v23);
    }

    goto LABEL_20;
  }

  if (CFDictionaryContainsKey(theDict, kNLGazetteerCompressedModelData[0]))
  {
    v15 = CFDictionaryGetValue(theDict, kNLGazetteerCompressedModelData[0]);
    if (v15)
    {
      nlp::CFScopedPtr<__CFData const*>::acquire(v5, v15);
      BytePtr = CFDataGetBytePtr(*v5);
      Length = CFDataGetLength(*v5);
      if ((CoreNLP::Gazetteer::loadBloomFilters(this, BytePtr, Length) & 1) == 0)
      {
        v18 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(__p, "Failed to load bloom filter from data");
        CoreNLP::ResourceCreationException::ResourceCreationException(v18, __p);
      }
    }
  }

  else if (CFDictionaryContainsKey(theDict, kNLGazetteerEntities[0]))
  {
    LODWORD(__p[0]) = *(this + 18);
    if (CFDictionaryContainsKey(theDict, kNLGazetteerFalsePositiveRate[0]))
    {
      v20 = CFDictionaryGetValue(theDict, kNLGazetteerFalsePositiveRate[0]);
      CFNumberGetValue(v20, kCFNumberFloat32Type, __p);
    }

    v21 = CFDictionaryGetValue(theDict, kNLGazetteerEntities[0]);
    CoreNLP::Gazetteer::createBloomFilters(this, v21, *__p);
  }

  return this;
}

void sub_19D231420(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((v25 & 1) == 0)
    {
LABEL_6:
      nlp::CFScopedPtr<void *>::reset((v22 + 56), 0);
      nlp::CFScopedPtr<__CFLocale const*>::reset((v22 + 48), 0);
      nlp::CFScopedPtr<__CFData const*>::reset(v23, 0);
      v27 = *(v22 + 32);
      if (v27)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v27);
      }

      std::__tree<std::__value_type<std::string,BloomFilter>,std::__map_value_compare<std::string,std::__value_type<std::string,BloomFilter>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BloomFilter>>>::destroy(v22, *(v22 + 8));
      _Unwind_Resume(a1);
    }
  }

  else if (!v25)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v24);
  goto LABEL_6;
}

void nlp::CFScopedPtr<__CFLocale const*>::acquire(const void **a1, CFTypeRef cf)
{
  if (*a1 != cf)
  {
    CFRetain(cf);

    nlp::CFScopedPtr<__CFLocale const*>::reset(a1, cf);
  }
}

uint64_t CoreNLP::Gazetteer::loadBloomFilters(const void **this, const char *a2, unint64_t a3)
{
  if (a3 <= 3)
  {
    if (CoreNLP::logger(void)::token != -1)
    {
      CoreNLP::Gazetteer::loadBloomFilters();
    }

    v3 = CoreNLP::logger(void)::log;
    if (os_log_type_enabled(CoreNLP::logger(void)::log, OS_LOG_TYPE_ERROR))
    {
      CoreNLP::Gazetteer::loadBloomFilters(v3, v4, v5);
    }

    return 0;
  }

  if (!*a2)
  {
    return 1;
  }

  v9 = *a2 - 1;
  v10 = 4;
  while (1)
  {
    v11 = v10 + 32;
    if (v10 + 32 > a3)
    {
      break;
    }

    v29.__r_.__value_.__s.__data_[0] = 0;
    std::vector<char>::vector[abi:ne200100](v45, 32);
    v12 = v45[0];
    v13 = *&a2[v10];
    *(v45[0] + 15) = *&a2[v10 + 15];
    *v12 = v13;
    v10 += 36;
    if (v10 <= a3)
    {
      v16 = *&a2[v11];
      v11 = v10 + v16;
      if (v10 + v16 > a3)
      {
        if (CoreNLP::logger(void)::token != -1)
        {
          CoreNLP::Gazetteer::loadBloomFilters();
        }

        v17 = CoreNLP::logger(void)::log;
        if (os_log_type_enabled(CoreNLP::logger(void)::log, OS_LOG_TYPE_ERROR))
        {
          CoreNLP::Gazetteer::loadBloomFilters(&v41, v42, v17);
        }

        v15 = 0;
        goto LABEL_51;
      }

      BloomFilter::BloomFilter(v37);
      BloomFilter::loadFromBuffer(v37, &a2[v10], v16);
      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v36, v40.__r_.__value_.__l.__data_, v40.__r_.__value_.__l.__size_);
      }

      else
      {
        v36 = v40;
      }

      size = HIBYTE(v36.__r_.__value_.__r.__words[2]);
      if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v36.__r_.__value_.__l.__size_;
      }

      if (!size)
      {
        std::string::basic_string[abi:ne200100]<0>(&v29, v45[0]);
        if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v36.__r_.__value_.__l.__data_);
        }

        v36 = v29;
      }

      if (!this[6])
      {
        if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v29, v39.__r_.__value_.__l.__data_, v39.__r_.__value_.__l.__size_);
        }

        else
        {
          v29 = v39;
        }

        if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v21 = SHIBYTE(v29.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v21 = v29.__r_.__value_.__l.__size_;
        }

        if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          operator delete(v29.__r_.__value_.__l.__data_);
        }

        if (v21)
        {
          if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v29, v39.__r_.__value_.__l.__data_, v39.__r_.__value_.__l.__size_);
          }

          else
          {
            v29 = v39;
          }

          if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v22 = &v29;
          }

          else
          {
            v22 = v29.__r_.__value_.__r.__words[0];
          }

          v23 = CFStringCreateWithCString(0, v22, 0x8000100u);
          v35 = v23;
          if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v29.__r_.__value_.__l.__data_);
          }

          v24 = CFLocaleCreate(0, v23);
          nlp::CFScopedPtr<__CFLocale const*>::reset(this + 6, v24);
          if (v23)
          {
            CFRelease(v23);
          }
        }
      }

      std::pair<std::string,BloomFilter>::pair[abi:ne200100]<std::string&,BloomFilter&,0>(&v29, &v36, v37);
      std::__tree<std::__value_type<std::string,BloomFilter>,std::__map_value_compare<std::string,std::__value_type<std::string,BloomFilter>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BloomFilter>>>::__emplace_unique_key_args<std::string,std::pair<std::string,BloomFilter>>(this, &v29.__r_.__value_.__l.__data_);
      if (v34 < 0)
      {
        operator delete(__p);
      }

      if (v32 < 0)
      {
        operator delete(v31);
      }

      if (v30)
      {
        operator delete(v30);
      }

      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v29.__r_.__value_.__l.__data_);
      }

      if (*(this + 16) < v38)
      {
        *(this + 16) = v38;
      }

      if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v36.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v40.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v39.__r_.__value_.__l.__data_);
      }

      if (v37[0])
      {
        operator delete(v37[0]);
      }

      v15 = 1;
    }

    else
    {
      if (CoreNLP::logger(void)::token != -1)
      {
        CoreNLP::Gazetteer::loadBloomFilters();
      }

      v14 = CoreNLP::logger(void)::log;
      if (os_log_type_enabled(CoreNLP::logger(void)::log, OS_LOG_TYPE_ERROR))
      {
        CoreNLP::Gazetteer::loadBloomFilters(&v43, v44, v14);
      }

      v15 = 0;
    }

    v10 = v11;
LABEL_51:
    if (v45[0])
    {
      v45[1] = v45[0];
      operator delete(v45[0]);
    }

    v20 = v9-- != 0;
    if ((v15 & v20 & 1) == 0)
    {
      return v15;
    }
  }

  if (CoreNLP::logger(void)::token != -1)
  {
    CoreNLP::Gazetteer::loadBloomFilters();
  }

  v25 = CoreNLP::logger(void)::log;
  if (os_log_type_enabled(CoreNLP::logger(void)::log, OS_LOG_TYPE_ERROR))
  {
    CoreNLP::Gazetteer::loadBloomFilters(v25, v26, v27);
  }

  return 0;
}

void sub_19D231994(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  BloomFilter::~BloomFilter(&a37);
  v39 = *(v37 - 112);
  if (v39)
  {
    *(v37 - 104) = v39;
    operator delete(v39);
  }

  _Unwind_Resume(a1);
}

void CoreNLP::Gazetteer::createBloomFilters(CoreNLP::Gazetteer *this, CFDictionaryRef theDict, float a3)
{
  Count = CFDictionaryGetCount(theDict);
  if (Count >= 1)
  {
    v7 = Count;
    memset(&v36, 0, sizeof(v36));
    if (*(this + 6))
    {
      v8 = MEMORY[0x19EAF8290]();
      CoreNLP::getUTF8StringFromCFString(v8, &__p);
      if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v36.__r_.__value_.__l.__data_);
      }

      v36 = __p;
    }

    v9 = malloc_type_calloc(v7, 8uLL, 0x6004044C4A2DFuLL);
    v10 = malloc_type_calloc(v7, 8uLL, 0x6004044C4A2DFuLL);
    CFDictionaryGetKeysAndValues(theDict, v9, v10);
    v11 = 0;
    v12 = a3;
    do
    {
      CoreNLP::getUTF8StringFromCFString(v9[v11], &__str);
      v13 = v10[v11];
      v14 = CFArrayGetCount(v13);
      if (v14 >= 1)
      {
        BloomFilter::BloomFilter(v29);
        BloomFilter::init(v29, (v14 + 10000), &__str, &v36, v12);
        v15 = v14 & 0x7FFFFFFF;
        if ((v14 & 0x7FFFFFFF) != 0)
        {
          v16 = 0;
          v17 = 0;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v13, v16);
            if (*(this + 68) == 1)
            {
              CoreNLP::getUTF8StringFromCFString(ValueAtIndex, &__p);
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
                v20 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v20 = __p.__r_.__value_.__r.__words[1];
              }

              BloomFilter::add(v29, p_p, v20);
            }

            else
            {
              CoreNLP::Gazetteer::normalizeEntity(this, ValueAtIndex, &__p);
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v21 = &__p;
              }

              else
              {
                v21 = __p.__r_.__value_.__r.__words[0];
              }

              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v22 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v22 = __p.__r_.__value_.__r.__words[1];
              }

              BloomFilter::add(v29, v21, v22);
              if (v17 <= v24)
              {
                v17 = v24;
              }
            }

            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            ++v16;
          }

          while (v15 != v16);
          v30 = v17;
          if (*(this + 16) < v17)
          {
            *(this + 16) = v17;
          }
        }

        else
        {
          v30 = 0;
        }

        std::pair<std::string,BloomFilter>::pair[abi:ne200100]<std::string&,BloomFilter&,0>(&__p, &__str, v29);
        std::__tree<std::__value_type<std::string,BloomFilter>,std::__map_value_compare<std::string,std::__value_type<std::string,BloomFilter>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BloomFilter>>>::__emplace_unique_key_args<std::string,std::pair<std::string,BloomFilter>>(this, &__p.__r_.__value_.__l.__data_);
        if (v28 < 0)
        {
          operator delete(v27);
        }

        if (v26 < 0)
        {
          operator delete(v25);
        }

        if (v24)
        {
          operator delete(v24);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v34 < 0)
        {
          operator delete(v33);
        }

        if (v32 < 0)
        {
          operator delete(v31);
        }

        if (v29[0])
        {
          operator delete(v29[0]);
        }
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      ++v11;
    }

    while (v11 != v7);
    free(v9);
    free(v10);
    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v36.__r_.__value_.__l.__data_);
    }
  }
}

void sub_19D231D04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (*(v29 - 105) < 0)
  {
    operator delete(*(v29 - 128));
  }

  _Unwind_Resume(exception_object);
}

const void *CoreNLP::Gazetteer::getModelData(CoreNLP::Gazetteer *this)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = (this + 40);
  result = *(this + 5);
  if (!result)
  {
    if (*(this + 2))
    {
      *bytes = *(this + 2);
      *v9 = 0u;
      v10 = 0u;
      Mutable = CFDataCreateMutable(0, 0);
      theData = Mutable;
      CFDataAppendBytes(Mutable, bytes, 4);
      if (*this != (this + 8))
      {
        *v6 = BloomFilter::bufferSize((*this + 56));
        CFDataAppendBytes(theData, v9, 32);
        CFDataAppendBytes(theData, v6, 4);
        operator new[]();
      }

      nlp::CFScopedPtr<__CFData const*>::acquire(v3, Mutable);
      if (Mutable)
      {
        CFRelease(Mutable);
      }

      result = *v3;
    }

    else
    {
      result = 0;
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19D231F34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<std::string,BloomFilter>::~pair(uint64_t a1)
{
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  return result;
}

std::__split_buffer<std::string>::pointer CoreNLP::Gazetteer::availableLabels@<X0>(std::__split_buffer<std::string>::pointer this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  p_size = &this->__r_.__value_.__l.__size_;
  v3 = this->__r_.__value_.__r.__words[0];
  if (this->__r_.__value_.__l.__data_ != &this->__r_.__value_.__r.__words[1])
  {
    do
    {
      this = std::vector<std::string>::push_back[abi:ne200100](a2, v3 + 2);
      v5 = *(v3 + 1);
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
          v6 = *(v3 + 2);
          v7 = *v6 == v3;
          v3 = v6;
        }

        while (!v7);
      }

      v3 = v6;
    }

    while (v6 != p_size);
  }

  return this;
}

void sub_19D23206C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

os_log_t ___ZN7CoreNLPL6loggerEv_block_invoke_1()
{
  v0 = _nlpLoggingSubsystem();
  result = os_log_create(v0, "Gazetteer");
  CoreNLP::logger(void)::log = result;
  return result;
}

std::string *std::pair<std::string,BloomFilter>::pair[abi:ne200100]<std::string&,BloomFilter&,0>(std::string *this, __int128 *a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  std::vector<BOOL>::vector(this[1].__r_.__value_.__r.__words, a3);
  v6 = *(a3 + 24);
  *(&this[2].__r_.__value_.__r.__words[1] + 4) = *(a3 + 36);
  *&this[2].__r_.__value_.__l.__data_ = v6;
  if (*(a3 + 79) < 0)
  {
    std::string::__init_copy_ctor_external((this + 80), *(a3 + 56), *(a3 + 64));
  }

  else
  {
    v7 = *(a3 + 56);
    this[4].__r_.__value_.__r.__words[0] = *(a3 + 72);
    *&this[3].__r_.__value_.__r.__words[1] = v7;
  }

  if (*(a3 + 103) < 0)
  {
    std::string::__init_copy_ctor_external((this + 104), *(a3 + 80), *(a3 + 88));
  }

  else
  {
    v8 = *(a3 + 80);
    this[5].__r_.__value_.__r.__words[0] = *(a3 + 96);
    *&this[4].__r_.__value_.__r.__words[1] = v8;
  }

  LODWORD(this[5].__r_.__value_.__r.__words[1]) = *(a3 + 104);
  return this;
}

void sub_19D232178(_Unwind_Exception *exception_object)
{
  if (*(v1 + 103) < 0)
  {
    operator delete(*(v1 + 80));
  }

  v3 = *(v1 + 24);
  if (v3)
  {
    operator delete(v3);
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<BOOL>::vector(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = *(a2 + 8);
  if (v2)
  {
    std::vector<BOOL>::__vallocate[abi:ne200100](result, v2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<BOOL>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<BOOL>::__construct_at_end<std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,true,0ul>>(void *a1, void *a2, unsigned int a3, void *a4, int a5, uint64_t a6)
{
  v8 = a1[1];
  v9 = v8 + a6;
  a1[1] = v8 + a6;
  if (!v8 || ((v9 - 1) ^ (v8 - 1)) >= 0x40)
  {
    if (v9 >= 0x41)
    {
      v10 = (v9 - 1) >> 6;
    }

    else
    {
      v10 = 0;
    }

    *(*a1 + 8 * v10) = 0;
  }

  v14 = v6;
  v15 = v7;
  v11 = *a1 + 8 * (v8 >> 6);
  v12 = v8 & 0x3F;
  std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(a2, a3, a4, a5, &v11, v13);
}
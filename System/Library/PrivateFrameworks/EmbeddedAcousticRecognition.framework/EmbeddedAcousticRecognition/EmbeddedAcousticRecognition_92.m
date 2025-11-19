uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,quasar::SymbolMap::SortedSymbolMapQuasarImpl::SortedSymbolMapQuasarImpl(unsigned int,std::shared_ptr<fst::MappedFile>)::{lambda(std::pair<char const*,int> const&,std::pair<char const*,int> const&)#1} &,std::pair<char const*,int>*,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *a1;
  v8 = strcmp(*a2, *a1);
  v9 = *a3;
  v10 = strcmp(*a3, v6);
  if (v8 < 0)
  {
    if (v10 < 0)
    {
      *a1 = v9;
      *a3 = v7;
      v11 = *(a1 + 8);
      *(a1 + 8) = *(a3 + 8);
      *(a3 + 8) = v11;
    }

    else
    {
      *a1 = v6;
      *a2 = v7;
      v16 = *(a1 + 8);
      *(a1 + 8) = *(a2 + 8);
      *(a2 + 8) = v16;
      v17 = *a3;
      if (strcmp(*a3, v7) < 0)
      {
        *a2 = v17;
        *a3 = v7;
        *(a2 + 8) = *(a3 + 8);
        *(a3 + 8) = v16;
      }
    }

    return 1;
  }

  if (v10 < 0)
  {
    *a2 = v9;
    *a3 = v6;
    v12 = *(a2 + 8);
    *(a2 + 8) = *(a3 + 8);
    *(a3 + 8) = v12;
    v13 = *a2;
    v14 = *a1;
    if (strcmp(*a2, *a1) < 0)
    {
      *a1 = v13;
      *a2 = v14;
      v15 = *(a1 + 8);
      *(a1 + 8) = *(a2 + 8);
      *(a2 + 8) = v15;
    }

    return 1;
  }

  return 0;
}

uint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,quasar::SymbolMap::SortedSymbolMapQuasarImpl::SortedSymbolMapQuasarImpl(unsigned int,std::shared_ptr<fst::MappedFile>)::{lambda(std::pair<char const*,int> const&,std::pair<char const*,int> const&)#1} &,std::pair<char const*,int>*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,quasar::SymbolMap::SortedSymbolMapQuasarImpl::SortedSymbolMapQuasarImpl(unsigned int,std::shared_ptr<fst::MappedFile>)::{lambda(std::pair<char const*,int> const&,std::pair<char const*,int> const&)#1} &,std::pair<char const*,int>*,0>(a1, a2, a3);
  v10 = *a4;
  v11 = *a3;
  if (strcmp(*a4, *a3) < 0)
  {
    *a3 = v10;
    *a4 = v11;
    v12 = *(a3 + 8);
    *(a3 + 8) = *(a4 + 8);
    *(a4 + 8) = v12;
    v13 = *a3;
    v14 = *a2;
    if (strcmp(*a3, *a2) < 0)
    {
      *a2 = v13;
      *a3 = v14;
      v15 = *(a2 + 8);
      *(a2 + 8) = *(a3 + 8);
      *(a3 + 8) = v15;
      v16 = *a2;
      v17 = *a1;
      if (strcmp(*a2, *a1) < 0)
      {
        *a1 = v16;
        *a2 = v17;
        v18 = *(a1 + 8);
        *(a1 + 8) = *(a2 + 8);
        *(a2 + 8) = v18;
      }
    }
  }

  v19 = *a5;
  v20 = *a4;
  result = strcmp(*a5, *a4);
  if ((result & 0x80000000) != 0)
  {
    *a4 = v19;
    *a5 = v20;
    v22 = *(a4 + 8);
    *(a4 + 8) = *(a5 + 8);
    *(a5 + 8) = v22;
    v23 = *a4;
    v24 = *a3;
    result = strcmp(*a4, *a3);
    if ((result & 0x80000000) != 0)
    {
      *a3 = v23;
      *a4 = v24;
      v25 = *(a3 + 8);
      *(a3 + 8) = *(a4 + 8);
      *(a4 + 8) = v25;
      v26 = *a3;
      v27 = *a2;
      result = strcmp(*a3, *a2);
      if ((result & 0x80000000) != 0)
      {
        *a2 = v26;
        *a3 = v27;
        v28 = *(a2 + 8);
        *(a2 + 8) = *(a3 + 8);
        *(a3 + 8) = v28;
        v29 = *a2;
        v30 = *a1;
        result = strcmp(*a2, *a1);
        if ((result & 0x80000000) != 0)
        {
          *a1 = v29;
          *a2 = v30;
          v31 = *(a1 + 8);
          *(a1 + 8) = *(a2 + 8);
          *(a2 + 8) = v31;
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,quasar::SymbolMap::SortedSymbolMapQuasarImpl::SortedSymbolMapQuasarImpl(unsigned int,std::shared_ptr<fst::MappedFile>)::{lambda(std::pair<char const*,int> const&,std::pair<char const*,int> const&)#1} &,std::pair<char const*,int>*>(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result + 16;
    if (result + 16 != a2)
    {
      v5 = 0;
      v6 = result;
      do
      {
        v7 = v4;
        v8 = *(v6 + 16);
        v9 = *v6;
        result = strcmp(v8, *v6);
        if ((result & 0x80000000) != 0)
        {
          v10 = *(v6 + 24);
          v11 = v5;
          while (1)
          {
            v12 = v3 + v11;
            *(v12 + 16) = v9;
            *(v12 + 24) = *(v3 + v11 + 8);
            if (!v11)
            {
              break;
            }

            v9 = *(v12 - 16);
            result = strcmp(v8, v9);
            v11 -= 16;
            if ((result & 0x80000000) == 0)
            {
              v13 = v3 + v11 + 16;
              goto LABEL_10;
            }
          }

          v13 = v3;
LABEL_10:
          *v13 = v8;
          *(v13 + 8) = v10;
        }

        v4 = v7 + 16;
        v5 += 16;
        v6 = v7;
      }

      while (v7 + 16 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,quasar::SymbolMap::SortedSymbolMapQuasarImpl::SortedSymbolMapQuasarImpl(unsigned int,std::shared_ptr<fst::MappedFile>)::{lambda(std::pair<char const*,int> const&,std::pair<char const*,int> const&)#1} &,std::pair<char const*,int>*>(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result + 16;
    if (result + 16 != a2)
    {
      v5 = (result + 24);
      do
      {
        v6 = v4;
        v7 = *(v3 + 16);
        v8 = *v3;
        result = strcmp(v7, *v3);
        if ((result & 0x80000000) != 0)
        {
          v9 = *(v3 + 24);
          v10 = v5;
          do
          {
            v11 = v10;
            *(v10 - 1) = v8;
            v12 = *(v10 - 4);
            v10 -= 4;
            *v11 = v12;
            v8 = *(v11 - 5);
            result = strcmp(v7, v8);
          }

          while ((result & 0x80000000) != 0);
          *(v10 - 1) = v7;
          *v10 = v9;
        }

        v4 = v6 + 16;
        v5 += 4;
        v3 = v6;
      }

      while (v6 + 16 != a2);
    }
  }

  return result;
}

unint64_t std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<char const*,int> *,quasar::SymbolMap::SortedSymbolMapQuasarImpl::SortedSymbolMapQuasarImpl(unsigned int,std::shared_ptr<fst::MappedFile>)::{lambda(std::pair<char const*,int> const&,std::pair<char const*,int> const&)#1} &>(unint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *a1;
  v5 = *(a1 + 8);
  if (strcmp(*a1, *(a2 - 16)) < 0)
  {
    v6 = a1;
    do
    {
      v7 = *(v6 + 16);
      v6 += 16;
    }

    while ((strcmp(v4, v7) & 0x80000000) == 0);
  }

  else
  {
    v8 = a1 + 16;
    do
    {
      v6 = v8;
      if (v8 >= v2)
      {
        break;
      }

      v8 += 16;
    }

    while ((strcmp(v4, *v6) & 0x80000000) == 0);
  }

  if (v6 < v2)
  {
    do
    {
      v9 = *(v2 - 16);
      v2 -= 16;
    }

    while (strcmp(v4, v9) < 0);
  }

  if (v6 < v2)
  {
    v10 = *v6;
    v11 = *v2;
    do
    {
      *v6 = v11;
      *v2 = v10;
      v12 = *(v6 + 8);
      *(v6 + 8) = *(v2 + 8);
      *(v2 + 8) = v12;
      do
      {
        v13 = *(v6 + 16);
        v6 += 16;
        v10 = v13;
      }

      while ((strcmp(v4, v13) & 0x80000000) == 0);
      do
      {
        v14 = *(v2 - 16);
        v2 -= 16;
        v11 = v14;
      }

      while (strcmp(v4, v14) < 0);
    }

    while (v6 < v2);
  }

  if (v6 - 16 != a1)
  {
    *a1 = *(v6 - 16);
    *(a1 + 8) = *(v6 - 8);
  }

  *(v6 - 16) = v4;
  *(v6 - 8) = v5;
  return v6;
}

unint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<char const*,int> *,quasar::SymbolMap::SortedSymbolMapQuasarImpl::SortedSymbolMapQuasarImpl(unsigned int,std::shared_ptr<fst::MappedFile>)::{lambda(std::pair<char const*,int> const&,std::pair<char const*,int> const&)#1} &>(uint64_t a1, const char **a2)
{
  v4 = 0;
  v5 = *a1;
  v6 = *(a1 + 8);
  do
  {
    v7 = *(a1 + v4 + 16);
    v4 += 16;
  }

  while (strcmp(v7, v5) < 0);
  v8 = a1 + v4;
  if (v4 == 16)
  {
    do
    {
      if (v8 >= a2)
      {
        break;
      }

      v10 = *(a2 - 2);
      a2 -= 2;
    }

    while ((strcmp(v10, v5) & 0x80000000) == 0);
  }

  else
  {
    do
    {
      v9 = *(a2 - 2);
      a2 -= 2;
    }

    while ((strcmp(v9, v5) & 0x80000000) == 0);
  }

  if (v8 >= a2)
  {
    v12 = a1 + v4;
  }

  else
  {
    v11 = *a2;
    v12 = v8;
    v13 = a2;
    do
    {
      *v12 = v11;
      *v13 = v7;
      v14 = *(v12 + 8);
      *(v12 + 8) = *(v13 + 2);
      *(v13 + 2) = v14;
      do
      {
        v15 = *(v12 + 16);
        v12 += 16;
        v7 = v15;
      }

      while (strcmp(v15, v5) < 0);
      do
      {
        v16 = *(v13 - 2);
        v13 -= 2;
        v11 = v16;
      }

      while ((strcmp(v16, v5) & 0x80000000) == 0);
    }

    while (v12 < v13);
  }

  result = v12 - 16;
  if (v12 - 16 != a1)
  {
    *a1 = *(v12 - 16);
    *(a1 + 8) = *(v12 - 8);
  }

  *(v12 - 16) = v5;
  *(v12 - 8) = v6;
  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,quasar::SymbolMap::SortedSymbolMapQuasarImpl::SortedSymbolMapQuasarImpl(unsigned int,std::shared_ptr<fst::MappedFile>)::{lambda(std::pair<char const*,int> const&,std::pair<char const*,int> const&)#1} &,std::pair<char const*,int>*>(uint64_t a1, uint64_t a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,quasar::SymbolMap::SortedSymbolMapQuasarImpl::SortedSymbolMapQuasarImpl(unsigned int,std::shared_ptr<fst::MappedFile>)::{lambda(std::pair<char const*,int> const&,std::pair<char const*,int> const&)#1} &,std::pair<char const*,int>*,0>(a1, a1 + 16, a2 - 16);
        break;
      case 4:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,quasar::SymbolMap::SortedSymbolMapQuasarImpl::SortedSymbolMapQuasarImpl(unsigned int,std::shared_ptr<fst::MappedFile>)::{lambda(std::pair<char const*,int> const&,std::pair<char const*,int> const&)#1} &,std::pair<char const*,int>*,0>(a1, a1 + 16, a1 + 32);
        v18 = *(a2 - 16);
        v19 = *(a1 + 32);
        if (strcmp(v18, v19) < 0)
        {
          *(a1 + 32) = v18;
          *(a2 - 16) = v19;
          v20 = *(a1 + 40);
          *(a1 + 40) = *(a2 - 8);
          *(a2 - 8) = v20;
          v21 = *(a1 + 32);
          v22 = *(a1 + 16);
          if (strcmp(v21, v22) < 0)
          {
            *(a1 + 16) = v21;
            *(a1 + 32) = v22;
            v23 = *(a1 + 24);
            v24 = *(a1 + 40);
            *(a1 + 24) = v24;
            *(a1 + 40) = v23;
            v25 = *a1;
            if (strcmp(v21, *a1) < 0)
            {
              *a1 = v21;
              *(a1 + 16) = v25;
              v26 = *(a1 + 8);
              *(a1 + 8) = v24;
              *(a1 + 24) = v26;
            }
          }
        }

        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,quasar::SymbolMap::SortedSymbolMapQuasarImpl::SortedSymbolMapQuasarImpl(unsigned int,std::shared_ptr<fst::MappedFile>)::{lambda(std::pair<char const*,int> const&,std::pair<char const*,int> const&)#1} &,std::pair<char const*,int>*,0>(a1, a1 + 16, a1 + 32, a1 + 48, a2 - 16);
        break;
      default:
        goto LABEL_11;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 16);
    v6 = *a1;
    if (strcmp(v5, *a1) < 0)
    {
      *a1 = v5;
      *(a2 - 16) = v6;
      v7 = *(a1 + 8);
      *(a1 + 8) = *(a2 - 8);
      *(a2 - 8) = v7;
    }

    return 1;
  }

LABEL_11:
  v8 = (a1 + 32);
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,quasar::SymbolMap::SortedSymbolMapQuasarImpl::SortedSymbolMapQuasarImpl(unsigned int,std::shared_ptr<fst::MappedFile>)::{lambda(std::pair<char const*,int> const&,std::pair<char const*,int> const&)#1} &,std::pair<char const*,int>*,0>(a1, a1 + 16, a1 + 32);
  v9 = a1 + 48;
  if (a1 + 48 == a2)
  {
    return 1;
  }

  v10 = 0;
  v11 = 0;
  while (1)
  {
    v12 = *v9;
    v13 = *v8;
    if (strcmp(*v9, v13) < 0)
    {
      v14 = *(v9 + 8);
      v15 = v10;
      while (1)
      {
        v16 = a1 + v15;
        *(v16 + 48) = v13;
        *(v16 + 56) = *(a1 + v15 + 40);
        if (v15 == -32)
        {
          break;
        }

        v13 = *(v16 + 16);
        v15 -= 16;
        if ((strcmp(v12, v13) & 0x80000000) == 0)
        {
          v17 = a1 + v15 + 48;
          goto LABEL_19;
        }
      }

      v17 = a1;
LABEL_19:
      *v17 = v12;
      *(v17 + 8) = v14;
      if (++v11 == 8)
      {
        return v9 + 16 == a2;
      }
    }

    v8 = v9;
    v10 += 16;
    v9 += 16;
    if (v9 == a2)
    {
      return 1;
    }
  }
}

uint64_t std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,quasar::SymbolMap::SortedSymbolMapQuasarImpl::SortedSymbolMapQuasarImpl(unsigned int,std::shared_ptr<fst::MappedFile>)::{lambda(std::pair<char const*,int> const&,std::pair<char const*,int> const&)#1} &,std::pair<char const*,int>*,std::pair<char const*,int>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = a1 + 16 * v9;
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,quasar::SymbolMap::SortedSymbolMapQuasarImpl::SortedSymbolMapQuasarImpl(unsigned int,std::shared_ptr<fst::MappedFile>)::{lambda(std::pair<char const*,int> const&,std::pair<char const*,int> const&)#1} &,std::pair<char const*,int>*>(a1, a4, v8, v11);
        v11 -= 16;
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        v13 = *v12;
        v14 = *a1;
        if (strcmp(*v12, *a1) < 0)
        {
          *v12 = v14;
          *a1 = v13;
          v15 = *(v12 + 8);
          *(v12 + 8) = *(a1 + 8);
          *(a1 + 8) = v15;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,quasar::SymbolMap::SortedSymbolMapQuasarImpl::SortedSymbolMapQuasarImpl(unsigned int,std::shared_ptr<fst::MappedFile>)::{lambda(std::pair<char const*,int> const&,std::pair<char const*,int> const&)#1} &,std::pair<char const*,int>*>(a1, a4, v8, a1);
        }

        v12 += 16;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v16 = a2 - 16;
      do
      {
        v17 = *a1;
        v18 = *(a1 + 8);
        v19 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,quasar::SymbolMap::SortedSymbolMapQuasarImpl::SortedSymbolMapQuasarImpl(unsigned int,std::shared_ptr<fst::MappedFile>)::{lambda(std::pair<char const*,int> const&,std::pair<char const*,int> const&)#1} &,std::pair<char const*,int>*>(a1, a4, v8);
        if (v16 == v19)
        {
          *v19 = v17;
          *(v19 + 8) = v18;
        }

        else
        {
          *v19 = *v16;
          *(v19 + 8) = *(v16 + 8);
          *v16 = v17;
          *(v16 + 8) = v18;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,quasar::SymbolMap::SortedSymbolMapQuasarImpl::SortedSymbolMapQuasarImpl(unsigned int,std::shared_ptr<fst::MappedFile>)::{lambda(std::pair<char const*,int> const&,std::pair<char const*,int> const&)#1} &,std::pair<char const*,int>*>(a1, v19 + 16, a4, (v19 + 16 - a1) >> 4);
        }

        v16 -= 16;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,quasar::SymbolMap::SortedSymbolMapQuasarImpl::SortedSymbolMapQuasarImpl(unsigned int,std::shared_ptr<fst::MappedFile>)::{lambda(std::pair<char const*,int> const&,std::pair<char const*,int> const&)#1} &,std::pair<char const*,int>*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 4)
    {
      v8 = a3;
      v9 = (a4 - result) >> 3;
      v10 = v9 + 1;
      v11 = result + 16 * (v9 + 1);
      v12 = v9 + 2;
      if (v9 + 2 >= a3)
      {
        v14 = *v11;
      }

      else
      {
        v13 = *v11;
        v14 = *(v11 + 16);
        if (strcmp(*v11, v14) < 0)
        {
          v11 += 16;
          v10 = v12;
        }

        else
        {
          v14 = v13;
        }
      }

      v15 = *v5;
      result = strcmp(v14, *v5);
      if ((result & 0x80000000) == 0)
      {
        v21 = *(v5 + 8);
        v22 = v8;
        do
        {
          v16 = v5;
          v5 = v11;
          *v16 = v14;
          *(v16 + 8) = *(v11 + 8);
          if (v7 < v10)
          {
            break;
          }

          v17 = (2 * v10) | 1;
          v11 = v6 + 16 * v17;
          v18 = 2 * v10 + 2;
          if (v18 >= v8)
          {
            v14 = *v11;
            v10 = (2 * v10) | 1;
          }

          else
          {
            v14 = *v11;
            v19 = *(v11 + 16);
            v20 = strcmp(*v11, v19);
            if (v20 < 0)
            {
              v14 = v19;
              v11 += 16;
            }

            v8 = v22;
            v10 = v20 >= 0 ? v17 : v18;
          }

          result = strcmp(v14, v15);
        }

        while ((result & 0x80000000) == 0);
        *v5 = v15;
        *(v5 + 8) = v21;
      }
    }
  }

  return result;
}

uint64_t std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,quasar::SymbolMap::SortedSymbolMapQuasarImpl::SortedSymbolMapQuasarImpl(unsigned int,std::shared_ptr<fst::MappedFile>)::{lambda(std::pair<char const*,int> const&,std::pair<char const*,int> const&)#1} &,std::pair<char const*,int>*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = a1 + 16 * v5;
    v8 = v7 + 16;
    v9 = (2 * v5) | 1;
    v10 = 2 * v5 + 2;
    if (v10 >= a3)
    {
      v16 = *v8;
      v5 = (2 * v5) | 1;
    }

    else
    {
      v13 = *(v7 + 32);
      v12 = v7 + 32;
      v11 = v13;
      v14 = *(v12 - 16);
      v15 = strcmp(v14, v13);
      if (v15 >= 0)
      {
        v16 = v14;
      }

      else
      {
        v16 = v11;
      }

      if (v15 >= 0)
      {
        v5 = v9;
      }

      else
      {
        v8 = v12;
        v5 = v10;
      }
    }

    *a1 = v16;
    *(a1 + 8) = *(v8 + 8);
    a1 = v8;
  }

  while (v5 <= v6);
  return v8;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,quasar::SymbolMap::SortedSymbolMapQuasarImpl::SortedSymbolMapQuasarImpl(unsigned int,std::shared_ptr<fst::MappedFile>)::{lambda(std::pair<char const*,int> const&,std::pair<char const*,int> const&)#1} &,std::pair<char const*,int>*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = result;
    v7 = v4 >> 1;
    v8 = result + 16 * (v4 >> 1);
    v10 = a2 - 16;
    v9 = *(a2 - 16);
    v11 = *v8;
    result = strcmp(*v8, v9);
    if ((result & 0x80000000) != 0)
    {
      v12 = *(a2 - 8);
      do
      {
        v13 = v10;
        v10 = v8;
        *v13 = v11;
        *(v13 + 8) = *(v8 + 8);
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = v6 + 16 * v7;
        v11 = *v8;
        result = strcmp(*v8, v9);
      }

      while ((result & 0x80000000) != 0);
      *v10 = v9;
      *(v10 + 8) = v12;
    }
  }

  return result;
}

quasar::SymbolMap::SortedSymbolMapQuasarImpl *quasar::SymbolMap::SortedSymbolMapQuasarImpl::SortedSymbolMapQuasarImpl(quasar::SymbolMap::SortedSymbolMapQuasarImpl *this, const quasar::SymbolMap::SortedSymbolMapQuasarImpl *a2)
{
  quasar::SymbolMap::SymbolMapQuasarImpl::SymbolMapQuasarImpl(this, a2);
  *v4 = &unk_1F2D299F0;
  v4[8] = 0;
  v4[9] = 0;
  v4[7] = 0;
  std::vector<std::pair<char const*,int>>::__init_with_size[abi:ne200100]<std::pair<char const*,int>*,std::pair<char const*,int>*>((v4 + 7), *(a2 + 7), *(a2 + 8), (*(a2 + 8) - *(a2 + 7)) >> 4);
  return this;
}

uint64_t std::vector<std::pair<char const*,int>>::__init_with_size[abi:ne200100]<std::pair<char const*,int>*,std::pair<char const*,int>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<char const*,int>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B56ED080(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<char const*,int>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<wchar_t const*,wchar_t>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void sub_1B56ED184(_Unwind_Exception *a1)
{
  marisa::Trie::~Trie((v1 + 6));
  v3 = v1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  fst::SymbolTable::~SymbolTable(v1);
  _Unwind_Resume(a1);
}

void quasar::SymbolMap::SymbolMapMarisaImpl::~SymbolMapMarisaImpl(quasar::SymbolMap::SymbolMapMarisaImpl *this)
{
  quasar::SymbolMap::SymbolMapMarisaImpl::~SymbolMapMarisaImpl(this);

  JUMPOUT(0x1B8C85350);
}

{
  *this = &unk_1F2D29B70;
  *(this + 2) = &unk_1F2D29C20;
  marisa::Trie::~Trie((this + 48));
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  fst::SymbolTable::~SymbolTable(this);
}

uint64_t quasar::SymbolMap::SymbolMapMarisaImpl::AddSymbol(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = (*(*a1 + 96))(a1);
  if (result == -1)
  {
    v7 = ~marisa::Trie::num_keys((a1 + 6));
    fst::SymbolTable::MutateCheck(a1);
    v8 = fst::SymbolTableImpl::AddSymbol(a1[1], a2, v7 + a3);
    return v8 + marisa::Trie::num_keys((a1 + 6)) + 1;
  }

  return result;
}

uint64_t quasar::SymbolMap::SymbolMapMarisaImpl::AddSymbol(uint64_t *a1, uint64_t a2)
{
  result = (*(*a1 + 96))(a1);
  if (result == -1)
  {
    fst::SymbolTable::MutateCheck(a1);
    v5 = fst::SymbolTableImpl::AddSymbol(a1[1], a2, *(a1[1] + 24));
    return v5 + marisa::Trie::num_keys((a1 + 6)) + 1;
  }

  return result;
}

void quasar::SymbolMap::SymbolMapMarisaImpl::AddTable(quasar::SymbolMap::SymbolMapMarisaImpl *this, const fst::SymbolTable *a2)
{
  v4 = (*(*a2 + 120))(a2);
  v5 = (*(*a2 + 128))(a2, 0);
  if (v4)
  {
    v6 = v5;
    v7 = 1;
    v8 = v4;
    do
    {
      (*(*a2 + 88))(__p, a2, v6);
      v9 = (*(*this + 96))(this, __p);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }

      if (v9 == -1)
      {
        (*(*a2 + 88))(__p, a2, v6);
        (*(*this + 32))(this, __p);
        if (v11 < 0)
        {
          operator delete(__p[0]);
        }
      }

      if (v7 < v4)
      {
        v6 = (*(*a2 + 128))(a2, v7);
      }

      ++v7;
      --v8;
    }

    while (v8);
  }
}

void sub_1B56ED540(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::SymbolMap::SymbolMapMarisaImpl::Find(quasar::SymbolMap::SymbolMapMarisaImpl *this@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a2)
  {
    v6 = marisa::Trie::num_keys((this + 48));
    v7 = a2 - (v6 + 1);
    if (a2 >= v6 + 1)
    {
      v8 = *(this + 1);

      fst::SymbolTableImpl::Find(v8, v7, a3);
    }

    else
    {
      marisa::Agent::Agent(v9);
      marisa::Agent::set_query(v9, a2 - 1);
      marisa::Trie::reverse_lookup(this + 6, v9);
      std::string::basic_string[abi:ne200100](a3, __src, __len);
      marisa::Agent::~Agent(v9);
    }
  }

  else
  {

    std::string::basic_string[abi:ne200100]<0>(a3, "<eps>");
  }
}

uint64_t quasar::SymbolMap::SymbolMapMarisaImpl::Find(uint64_t a1, uint64_t *a2)
{
  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  return (*(*a1 + 104))(a1, a2);
}

uint64_t quasar::SymbolMap::SymbolMapMarisaImpl::Find(fst::SymbolTableImpl **this, char *__s1)
{
  if (!strcmp(__s1, "<eps>"))
  {
    return 0;
  }

  marisa::Agent::Agent(v8);
  marisa::Agent::set_query(v8, __s1);
  if (marisa::Trie::lookup(this + 6, v8))
  {
    v4 = v9 + 1;
  }

  else
  {
    v5 = marisa::Trie::num_keys((this + 6));
    v6 = fst::SymbolTableImpl::Find(this[1], __s1);
    if (v6 == -1)
    {
      v4 = -1;
    }

    else
    {
      v4 = v5 + v6 + 1;
    }
  }

  marisa::Agent::~Agent(v8);
  return v4;
}

void quasar::SymbolMap::SymbolMapMarisaImpl::FindSymbolsWithPrefix(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  marisa::Agent::Agent(v15);
  if (*(a2 + 23) >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  marisa::Agent::set_query(v15, v6);
  while (marisa::Trie::predictive_search((a1 + 48), v15))
  {
    __p[0] = (v16 + 1);
    std::vector<long long>::push_back[abi:ne200100](a3, __p);
  }

  v7 = marisa::Trie::num_keys((a1 + 48));
  v8 = *(a1 + 8);
  if (*(v8 + 7) != *(v8 + 6))
  {
    v9 = 0;
    v10 = v7 + 1;
    while (1)
    {
      fst::SymbolTableImpl::Find(v8, v9, __p);
      v11 = quasar::startsWith(__p, a2);
      v12 = v11;
      if ((v14 & 0x80000000) == 0)
      {
        break;
      }

      operator delete(__p[0]);
      if (v12)
      {
        goto LABEL_13;
      }

LABEL_14:
      ++v9;
      v8 = *(a1 + 8);
      if (v9 >= (*(v8 + 7) - *(v8 + 6)) >> 3)
      {
        goto LABEL_15;
      }
    }

    if (!v11)
    {
      goto LABEL_14;
    }

LABEL_13:
    __p[0] = (v10 + v9);
    std::vector<long long>::push_back[abi:ne200100](a3, __p);
    goto LABEL_14;
  }

LABEL_15:
  marisa::Agent::~Agent(v15);
}

void sub_1B56ED908(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  marisa::Agent::~Agent(&a16);
  v18 = *v16;
  if (*v16)
  {
    *(v16 + 8) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(a1);
}

void non-virtual thunk toquasar::SymbolMap::SymbolMapMarisaImpl::~SymbolMapMarisaImpl(quasar::SymbolMap::SymbolMapMarisaImpl *this)
{
  quasar::SymbolMap::SymbolMapMarisaImpl::~SymbolMapMarisaImpl((this - 16));
}

{
  quasar::SymbolMap::SymbolMapMarisaImpl::~SymbolMapMarisaImpl((this - 16));

  JUMPOUT(0x1B8C85350);
}

quasar::SymbolMap::SymbolMapMarisaImpl *quasar::SymbolMap::SymbolMapMarisaImpl::SymbolMapMarisaImpl(quasar::SymbolMap::SymbolMapMarisaImpl *this, const quasar::SymbolMap::SymbolMapMarisaImpl *a2)
{
  v3 = *(a2 + 1);
  *(this + 1) = v3;
  ++*(v3 + 168);
  *this = &unk_1F2D29B70;
  v5 = *(a2 + 3);
  v4 = *(a2 + 4);
  *(this + 2) = &unk_1F2D29C20;
  *(this + 3) = v5;
  *(this + 4) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 5) = *(a2 + 5);
  marisa::Trie::Trie(this + 6);
  marisa::Trie::map(this + 6, *(*(this + 3) + 8), *(this + 5));
  return this;
}

void sub_1B56EDAD8(_Unwind_Exception *a1)
{
  marisa::Trie::~Trie((v1 + 6));
  v3 = v1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  fst::SymbolTable::~SymbolTable(v1);
  _Unwind_Resume(a1);
}

void sub_1B56EDB70(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<fst::SymbolTable>::shared_ptr[abi:ne200100]<fst::SymbolTable,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<quasar::SymbolMap::SortedSymbolMapQuasarImpl *,std::shared_ptr<fst::SymbolTable>::__shared_ptr_default_delete<fst::SymbolTable,quasar::SymbolMap::SortedSymbolMapQuasarImpl>,std::allocator<quasar::SymbolMap::SortedSymbolMapQuasarImpl>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__shared_ptr_pointer<quasar::SymbolMap::SortedSymbolMapQuasarImpl *,std::shared_ptr<fst::SymbolTable>::__shared_ptr_default_delete<fst::SymbolTable,quasar::SymbolMap::SortedSymbolMapQuasarImpl>,std::allocator<quasar::SymbolMap::SortedSymbolMapQuasarImpl>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<quasar::SymbolMap::SortedSymbolMapQuasarImpl *,std::shared_ptr<fst::SymbolTable>::__shared_ptr_default_delete<fst::SymbolTable,quasar::SymbolMap::SortedSymbolMapQuasarImpl>,std::allocator<quasar::SymbolMap::SortedSymbolMapQuasarImpl>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1B56EDC9C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<fst::SymbolTable>::shared_ptr[abi:ne200100]<fst::SymbolTable,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<quasar::SymbolMap::SymbolMapQuasarImpl *,std::shared_ptr<fst::SymbolTable>::__shared_ptr_default_delete<fst::SymbolTable,quasar::SymbolMap::SymbolMapQuasarImpl>,std::allocator<quasar::SymbolMap::SymbolMapQuasarImpl>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__shared_ptr_pointer<quasar::SymbolMap::SymbolMapQuasarImpl *,std::shared_ptr<fst::SymbolTable>::__shared_ptr_default_delete<fst::SymbolTable,quasar::SymbolMap::SymbolMapQuasarImpl>,std::allocator<quasar::SymbolMap::SymbolMapQuasarImpl>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<quasar::SymbolMap::SymbolMapQuasarImpl *,std::shared_ptr<fst::SymbolTable>::__shared_ptr_default_delete<fst::SymbolTable,quasar::SymbolMap::SymbolMapQuasarImpl>,std::allocator<quasar::SymbolMap::SymbolMapQuasarImpl>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1B56EDDC8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<fst::SymbolTable>::shared_ptr[abi:ne200100]<fst::SymbolTable,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<quasar::SymbolMap::SymbolMapMarisaImpl *,std::shared_ptr<fst::SymbolTable>::__shared_ptr_default_delete<fst::SymbolTable,quasar::SymbolMap::SymbolMapMarisaImpl>,std::allocator<quasar::SymbolMap::SymbolMapMarisaImpl>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__shared_ptr_pointer<quasar::SymbolMap::SymbolMapMarisaImpl *,std::shared_ptr<fst::SymbolTable>::__shared_ptr_default_delete<fst::SymbolTable,quasar::SymbolMap::SymbolMapMarisaImpl>,std::allocator<quasar::SymbolMap::SymbolMapMarisaImpl>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<quasar::SymbolMap::SymbolMapMarisaImpl *,std::shared_ptr<fst::SymbolTable>::__shared_ptr_default_delete<fst::SymbolTable,quasar::SymbolMap::SymbolMapMarisaImpl>,std::allocator<quasar::SymbolMap::SymbolMapMarisaImpl>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t quasar::SyncPSRAudioProcessor::SyncPSRAudioProcessor(uint64_t a1, quasar::SystemConfig *a2, uint64_t a3, int a4, char a5, int a6)
{
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 80) = 27;
  *(a1 + 84) = 0;
  kaldi::Matrix<float>::Matrix(a1 + 88);
  Ptree = quasar::SystemConfig::getPtree(a2, a3);
  LODWORD(v29[0]) = a4;
  v29[1] = 0;
  v30 = 0;
  v36 = 0;
  v37 = 0;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  memset(v35, 0, sizeof(v35));
  v38 = 0u;
  memset(v39, 0, 28);
  memset(&v39[32], 0, 48);
  v39[80] = 1;
  v13 = quasar::PTree::begin(Ptree);
  for (i = quasar::PTree::end(Ptree); v13 != i; v13 += 88)
  {
    if (*(v13 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v28, *v13, *(v13 + 8));
    }

    else
    {
      v15 = *v13;
      v28.__r_.__value_.__r.__words[2] = *(v13 + 16);
      *&v28.__r_.__value_.__l.__data_ = v15;
    }

    if (*(a3 + 23) >= 0)
    {
      v16 = *(a3 + 23);
    }

    else
    {
      v16 = *(a3 + 8);
    }

    std::string::basic_string[abi:ne200100](&v24, v16 + 1);
    if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &v24;
    }

    else
    {
      v17 = v24.__r_.__value_.__r.__words[0];
    }

    if (v16)
    {
      if (*(a3 + 23) >= 0)
      {
        v18 = a3;
      }

      else
      {
        v18 = *a3;
      }

      memmove(v17, v18, v16);
    }

    *(&v17->__r_.__value_.__l.__data_ + v16) = 46;
    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = &v28;
    }

    else
    {
      v19 = v28.__r_.__value_.__r.__words[0];
    }

    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v28.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v28.__r_.__value_.__l.__size_;
    }

    v21 = std::string::append(&v24, v19, size);
    v22 = *&v21->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    quasar::FeatureExtractorSimpleFactory::createSyncFeatureExtractorOrNull(&__p, &v26);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }

    if (v26)
    {
      quasar::FeatureExtractor::init(v26, a2);
    }

    if (v27)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    }

    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }
  }

  *(a1 + 132) = a4;
  *(a1 + 136) = a6;
  *(a1 + 140) = a5;
  quasar::FeatureExtractorArgs::~FeatureExtractorArgs(v29);
  return a1;
}

void sub_1B56EE0DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34)
{
  quasar::FeatureExtractorArgs::~FeatureExtractorArgs(&a34);
  kaldi::Matrix<float>::~Matrix(v34 + 88);
  v36 = *(v34 + 72);
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  a34 = v34 + 40;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a34);
  v37 = *(v34 + 32);
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  a34 = v34;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a34);
  _Unwind_Resume(a1);
}

void sub_1B56EE3FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  quasar::FeatureExtractorArgs::~FeatureExtractorArgs(va);
  _Unwind_Resume(a1);
}

void quasar::SyncPSRAudioProcessor::compute(quasar::SyncPSRAudioProcessor *this)
{
  v15 = 0;
  v16 = 0;
  v17 = 0;
  for (i = *(this + 32); kaldi::OnlineFeatureMatrix::IsValidFrame(*(this + 8), i, 1); *(this + 32) = i)
  {
    if (*(this + 140) == 1)
    {
      if (v16 - v15 != 24)
      {
        std::vector<kaldi::Vector<float>>::resize(&v15, 1uLL);
      }

      kaldi::OnlineFeatureMatrix::GetFrame(*(this + 8), *(this + 32), &v11);
      v3 = v16 - 24;
      kaldi::Vector<float>::Resize((v16 - 24), v12, 1);
      kaldi::VectorBase<float>::CopyFromVec(v3, &v11);
    }

    else
    {
      kaldi::OnlineFeatureMatrix::GetFrame(*(this + 8), *(this + 32), &v11);
      v4 = v16;
      if (v16 >= v17)
      {
        v5 = std::vector<kaldi::Vector<float>>::__emplace_back_slow_path<kaldi::SubVector<float>>(&v15, &v11);
      }

      else
      {
        std::vector<kaldi::Vector<float>>::__construct_one_at_end[abi:ne200100]<kaldi::SubVector<float>>(&v15, &v11);
        v5 = v4 + 24;
      }

      v16 = v5;
    }

    i = *(this + 32) + 1;
  }

  if (v16 != v15)
  {
    kaldi::Matrix<float>::Resize(this + 88, -1431655765 * ((v16 - v15) >> 3), *(*(this + 8) + 24), 1, 0);
    if (v16 != v15)
    {
      v6 = 0;
      v7 = 0;
      do
      {
        v8 = *(this + 11);
        v9 = *(this + 26);
        v10 = kaldi::MatrixBase<float>::NumCols(this + 88);
        v13 = 0;
        v14 = 0;
        v11 = (v8 + 4 * v9 * v7);
        v12 = v10;
        kaldi::VectorBase<float>::CopyFromVec(&v11, (v15 + v6));
        ++v7;
        v6 += 24;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((v16 - v15) >> 3) > v7);
    }
  }

  v11 = &v15;
  std::vector<kaldi::Vector<float>>::__destroy_vector::operator()[abi:ne200100](&v11);
}

void sub_1B56EE624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, char a12)
{
  a9 = &a12;
  std::vector<kaldi::Vector<float>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void quasar::SyncPSRAudioProcessor::addAudio(quasar::SyncRecogAudioBuffer **this, const __int16 *a2, uint64_t a3, int a4)
{
  quasar::SyncRecogAudioBuffer::addAudio(this[3], a2, a3);
  if (a4)
  {
    quasar::SyncRecogAudioBuffer::endAudio(this[3]);
  }

  quasar::SyncPSRAudioProcessor::compute(this);
}

void quasar::SyncPSRAudioProcessor::endAudio(quasar::SyncPSRAudioProcessor *this)
{
  quasar::SyncRecogAudioBuffer::endAudio(*(this + 3));

  quasar::SyncPSRAudioProcessor::compute(this);
}

void *std::__shared_ptr_emplace<quasar::SyncRecogAudioBuffer>::__shared_ptr_emplace[abi:ne200100]<unsigned int &,int &,std::allocator<quasar::SyncRecogAudioBuffer>,0>(void *a1, unsigned int *a2, int *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D1FFE8;
  quasar::SyncRecogAudioBuffer::SyncRecogAudioBuffer((a1 + 3), *a2, *a3, 120, 0);
  return a1;
}

void *std::__shared_ptr_emplace<kaldi::OnlineFeatureMatrix>::__shared_ptr_emplace[abi:ne200100]<kaldi::OnlineFeatureMatrixOptions &,kaldi::OnlineFeatInputItf *,BOOL,std::allocator<kaldi::OnlineFeatureMatrix>,0>(void *a1, void *a2, uint64_t *a3, char *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D1FEA8;
  kaldi::OnlineFeatureMatrix::OnlineFeatureMatrix((a1 + 3), a2, *a3, *a4);
  return a1;
}

void *std::vector<kaldi::Vector<float>>::__construct_one_at_end[abi:ne200100]<kaldi::SubVector<float>>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  kaldi::Vector<float>::Resize(v4, *(a2 + 8), 1);
  result = kaldi::VectorBase<float>::CopyFromVec(v4, a2);
  *(a1 + 8) = v4 + 24;
  return result;
}

uint64_t std::vector<kaldi::Vector<float>>::__emplace_back_slow_path<kaldi::SubVector<float>>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::Vector<float>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = v7;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  kaldi::Vector<float>::Resize(v7, *(a2 + 8), 1);
  kaldi::VectorBase<float>::CopyFromVec(v7, a2);
  *&v16 = v16 + 24;
  v8 = a1[1];
  v9 = v15 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::Vector<float>>,kaldi::Vector<float>*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<kaldi::Vector<float>>::~__split_buffer(&v14);
  return v13;
}

void sub_1B56EEAA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<kaldi::Vector<float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

__n128 quasar::MetaInfo::Sense::Sense(uint64_t a1, __int128 *a2, __int128 *a3, __n128 *a4)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v5 = *a3;
  *(a1 + 40) = *(a3 + 2);
  *(a1 + 24) = v5;
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  *a3 = 0;
  result = *a4;
  *(a1 + 64) = a4[1].n128_u64[0];
  *(a1 + 48) = result;
  a4->n128_u64[1] = 0;
  a4[1].n128_u64[0] = 0;
  a4->n128_u64[0] = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0;
  *(a1 + 136) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 288) = 0;
  return result;
}

void sub_1B56EEC94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = v10;
  MEMORY[0x1B8C85350](v11, 0x1032C403785E29FLL);
  quasar::MetaInfo::Impl::~Impl(&a9);
  std::unique_ptr<quasar::MetaInfo::Impl>::reset[abi:ne200100](v9, 0);
  _Unwind_Resume(a1);
}

void quasar::MetaInfo::Impl::fromJson(const void *a1@<X0>, size_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    quasar::PTree::PTree(a3);
    *(a3 + 160) = 0;
    *(a3 + 64) = 0;
    *(a3 + 88) = 0;
    *(a3 + 104) = 0;
    *(a3 + 112) = 0;
    *(a3 + 96) = a3 + 104;
    *(a3 + 120) = 0;
    *(a3 + 144) = 0;
    *(a3 + 168) = 0;
    *(a3 + 152) = a3 + 160;
    *(a3 + 176) = 0;
    *(a3 + 184) = 0;
    *(a3 + 192) = 0;
    *(a3 + 200) = 0;
    if (a2 < 0x7FFFFFFFFFFFFFF8)
    {
      if (a2 < 0x17)
      {
        *(&__p[0].__r_.__value_.__s + 23) = a2;
        memmove(__p, a1, a2);
        __p[0].__r_.__value_.__s.__data_[a2] = 0;
        std::istringstream::basic_istringstream[abi:ne200100](&v8, __p, 8);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        quasar::PTree::readJson();
      }

      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(a3 + 176) = 0u;
  *(a3 + 192) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 160) = 0u;
  v6 = (a3 + 160);
  quasar::PTree::PTree(a3);
  *(a3 + 64) = 0;
  *(a3 + 104) = 0;
  *(a3 + 88) = 0;
  *(a3 + 112) = 0;
  *(a3 + 96) = a3 + 104;
  *(a3 + 120) = 0;
  *(a3 + 144) = 0;
  *v6 = 0;
  *(a3 + 168) = 0;
  *(a3 + 152) = v6;
  *(a3 + 176) = 0;
  *(a3 + 184) = 0;
  *(a3 + 192) = 0;
  *(a3 + 200) = 0;
}

void sub_1B56EF080(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  quasar::MetaInfo::Impl::~Impl(v14);
  _Unwind_Resume(a1);
}

uint64_t quasar::MetaInfo::operator=(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    operator new();
  }

  return result;
}

void *quasar::MetaInfo::MetaInfo(void *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  return result;
}

quasar::MetaInfo::Impl **quasar::MetaInfo::operator=(quasar::MetaInfo::Impl **a1, quasar::MetaInfo::Impl **a2)
{
  v3 = *a2;
  *a2 = 0;
  std::unique_ptr<quasar::MetaInfo::Impl>::reset[abi:ne200100](a1, v3);
  return a1;
}

void quasar::MetaInfo::Impl::update(quasar::MetaInfo::Impl *this, const quasar::PTree *a2)
{
  v4 = quasar::PTree::begin(a2);
  v5 = quasar::PTree::end(a2);
  if (v4 != v5)
  {
    v6 = v5;
    do
    {
      quasar::PTree::putChild(this, v4, v4 + 24, 1);
      v4 += 88;
    }

    while (v4 != v6);
  }
}

void quasar::MetaInfo::Impl::update(uint64_t **this, uint64_t **a2)
{
  quasar::MetaInfo::Impl::update(this, a2);
  if (this != a2)
  {
    std::__tree<std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>,std::less<void>,true>,std::allocator<std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>,std::__tree_node<std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>,void *> *,long>>(this + 12, a2[12], a2 + 13);
  }

  std::__optional_storage_base<std::vector<quasar::MetaInfo::Sense>,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::vector<quasar::MetaInfo::Sense>,false> const&>((this + 8), (a2 + 8));
  std::__optional_storage_base<std::vector<quasar::AlternativeSelectionSpan>,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::vector<quasar::AlternativeSelectionSpan>,false> const&>((this + 15), (a2 + 15));
  v4 = a2[22];
  *(this + 184) = *(a2 + 184);
  this[22] = v4;
}

void quasar::MetaInfo::Impl::replace(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  std::string::operator=((a1 + 8), (a2 + 8));
  if (a1 != a2)
  {
    std::vector<std::pair<std::string,quasar::PTree>>::__assign_with_size[abi:ne200100]<std::pair<std::string,quasar::PTree>*,std::pair<std::string,quasar::PTree>*>(a1 + 32, *(a2 + 32), *(a2 + 40), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 40) - *(a2 + 32)) >> 3));
  }

  *(a1 + 56) = *(a2 + 56);
}

void quasar::MetaInfo::setRomanization(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *__p = *a2;
  v4 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  quasar::MetaInfo::Impl::setRomanization(v2, __p);
  if (SHIBYTE(v4) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B56EF3D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::MetaInfo::Impl::setRomanization(uint64_t a1, uint64_t a2)
{
  std::string::basic_string[abi:ne200100]<0>(v5, "romanization");
  quasar::PTree::PTree(v4, a2);
  quasar::PTree::putChild(a1, v5, v4, 1);
  quasar::PTree::~PTree(v4);
  if (v6 < 0)
  {
    operator delete(v5[0]);
  }
}

void sub_1B56EF460(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  quasar::PTree::~PTree(va);
  if (*(v2 - 17) < 0)
  {
    operator delete(*(v2 - 40));
  }

  _Unwind_Resume(a1);
}

void sub_1B56EF4F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B56EF574(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::MetaInfo::Impl::json(quasar::MetaInfo::Impl *this@<X0>, _BYTE *a2@<X8>)
{
  v5 = *this;
  if (*(this + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v6, *(this + 1), *(this + 2));
  }

  else
  {
    v6 = *(this + 8);
  }

  memset(v7, 0, sizeof(v7));
  std::vector<std::pair<std::string,quasar::PTree>>::__init_with_size[abi:ne200100]<std::pair<std::string,quasar::PTree>*,std::pair<std::string,quasar::PTree>*>(v7, *(this + 4), *(this + 5), 0x2E8BA2E8BA2E8BA3 * ((*(this + 5) - *(this + 4)) >> 3));
  v8 = *(this + 56);
  quasar::MetaInfo::Impl::updatePTreeWithStructuredPredictions(this, &v5);
  quasar::MetaInfo::Impl::updatePTreeWithStructuredPredictionAlignments(this, &v5);
  if (!quasar::PTree::empty(&v5))
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&v4);
    quasar::PTree::writeJson();
  }

  std::string::basic_string[abi:ne200100]<0>(a2, "");
  quasar::PTree::~PTree(&v5);
}

void sub_1B56EF7D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  std::ostringstream::~ostringstream(va, MEMORY[0x1E69E54E8]);
  MEMORY[0x1B8C85200](va1);
  quasar::PTree::~PTree((v3 - 96));
  _Unwind_Resume(a1);
}

void quasar::MetaInfo::setAmbiguityAnnotatorSenses(quasar::MetaInfo::Impl **a1, __int128 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 2);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  quasar::MetaInfo::Impl::setAmbiguityAnnotatorSenses(v2, &v3);
  v5 = &v3;
  std::vector<quasar::MetaInfo::Sense>::__destroy_vector::operator()[abi:ne200100](&v5);
}

void sub_1B56EF894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<quasar::MetaInfo::Sense>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void quasar::MetaInfo::Impl::setAmbiguityAnnotatorSenses(quasar::MetaInfo::Impl *a1, void *a2)
{
  if (*a2 != a2[1])
  {
    quasar::MetaInfo::Impl::eraseSenses(a1);
    std::optional<std::vector<quasar::MetaInfo::Sense>>::operator=[abi:ne200100]<std::vector<quasar::MetaInfo::Sense>,void>(a1 + 64, a2);

    quasar::MetaInfo::Impl::updatePTreeWithAmbiguityAnnotatorSenses(a1);
  }
}

void quasar::MetaInfo::Impl::eraseSenses(quasar::MetaInfo::Impl *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "syn");
  quasar::PTree::erase(this, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "def");
  quasar::PTree::erase(this, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "defLocale");
  quasar::PTree::erase(this, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "source match");
  quasar::PTree::erase(this, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "source index");
  quasar::PTree::erase(this, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "source length");
  quasar::PTree::erase(this, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "target match");
  quasar::PTree::erase(this, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "target index");
  quasar::PTree::erase(this, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "target length");
  quasar::PTree::erase(this, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "att");
  quasar::PTree::erase(this, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "formality");
  quasar::PTree::erase(this, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "gender");
  quasar::PTree::erase(this, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "reg");
  quasar::PTree::erase(this, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "explicit");
  quasar::PTree::erase(this, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "senses");
  quasar::PTree::erase(this, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(this + 88) == 1)
  {
    __p[0] = this + 64;
    std::vector<quasar::MetaInfo::Sense>::__destroy_vector::operator()[abi:ne200100](__p);
    *(this + 88) = 0;
  }
}

void sub_1B56EFC20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::MetaInfo::setStructuredPrediction(quasar::MetaInfo::Impl **a1, uint64_t a2)
{
  v2 = *a1;
  *__p = *a2;
  v4 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  quasar::MetaInfo::Impl::setStructuredPrediction(v2, __p);
  v8 = &v6;
  std::vector<quasar::MetaInfo::StructuredPrediction::Span>::__destroy_vector::operator()[abi:ne200100](&v8);
  if (SHIBYTE(v4) < 0)
  {
    operator delete(__p[0]);
  }
}

void quasar::MetaInfo::Impl::setStructuredPrediction(quasar::MetaInfo::Impl *a1, const void **a2)
{
  v4 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1 + 96, a2);
  v5 = v4;
  if ((a1 + 104) == v4)
  {
    std::__tree<std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>,std::less<void>,true>,std::allocator<std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>>>::__emplace_hint_unique_key_args<std::string,std::string&,quasar::MetaInfo::StructuredPrediction>(a1 + 12, v4, a2);

    quasar::MetaInfo::Impl::updatePTreeWithStructuredPredictions(a1, a1);
  }

  else
  {
    if (*(v4 + 79) < 0)
    {
      operator delete(*(v4 + 56));
    }

    v6 = *a2;
    *(v5 + 72) = a2[2];
    *(v5 + 56) = v6;
    *(a2 + 23) = 0;
    *a2 = 0;
    *(v5 + 80) = *(a2 + 6);
    std::vector<quasar::MetaInfo::StructuredPrediction::Span>::__vdeallocate((v5 + 88));
    *(v5 + 88) = *(a2 + 2);
    *(v5 + 104) = a2[6];
    a2[4] = 0;
    a2[5] = 0;
    a2[6] = 0;
  }
}

BOOL quasar::MetaInfo::hasStructuredPrediction(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v5[0] = a2;
  v5[1] = a3;
  return std::__tree<std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>,std::less<void>,true>,std::allocator<std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>>>::__count_multi<std::string_view>(v3 + 96, v5) != 0;
}

uint64_t quasar::MetaInfo::structuredPrediction(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v6[0] = a2;
  v6[1] = a3;
  v4 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<void>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string_view>(v3 + 96, v6);
  if (v3 + 104 == v4)
  {
    return 0;
  }

  else
  {
    return v4 + 56;
  }
}

uint64_t *quasar::MetaInfo::Impl::eraseStructuredPrediction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[0] = a2;
  v5[1] = a3;
  result = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<void>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string_view>(a1 + 96, v5);
  if ((a1 + 104) != result)
  {
    return std::__tree<std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>,std::less<void>,true>,std::allocator<std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>>>::erase((a1 + 96), result);
  }

  return result;
}

void quasar::MetaInfo::setAlternativeSelectionSpans(uint64_t *a1, __int128 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 2);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  std::optional<std::vector<quasar::AlternativeSelectionSpan>>::operator=[abi:ne200100]<std::vector<quasar::AlternativeSelectionSpan>,void>(v2 + 120, &v3);
  v5 = &v3;
  std::vector<quasar::AlternativeSelectionSpan>::__destroy_vector::operator()[abi:ne200100](&v5);
}

void sub_1B56EFF1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<quasar::AlternativeSelectionSpan>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void quasar::MetaInfo::setStructurePredictionToSourceTokenAlignments(uint64_t *a1, uint64_t a2, uint64_t a3, __n128 *a4)
{
  v4 = *a1;
  v5 = *a4;
  v6 = a4[1].n128_u64[0];
  a4->n128_u64[1] = 0;
  a4[1].n128_u64[0] = 0;
  a4->n128_u64[0] = 0;
  quasar::MetaInfo::Impl::setStructurePredictionToSourceTokenAlignments(v4, a2, a3, &v5);
  v7 = &v5;
  std::vector<std::map<int,quasar::Expansion::SegmentTypeData>>::__destroy_vector::operator()[abi:ne200100](&v7);
}

void sub_1B56EFF9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::map<int,quasar::Expansion::SegmentTypeData>>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

__n128 quasar::MetaInfo::Impl::setStructurePredictionToSourceTokenAlignments(uint64_t a1, uint64_t a2, uint64_t a3, __n128 *a4)
{
  v9[0] = a2;
  v9[1] = a3;
  v6 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<void>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string_view>(a1 + 152, v9);
  v7 = v6;
  if (a1 + 160 == v6)
  {
    std::__tree<std::__value_type<std::string,std::vector<std::set<int>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::set<int>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,std::vector<std::set<int>>>>>::__emplace_hint_unique_impl<std::string_view &,std::vector<std::set<int>>>();
  }

  std::vector<std::set<int>>::__vdeallocate((v6 + 56));
  result = *a4;
  *(v7 + 56) = *a4;
  *(v7 + 72) = a4[1].n128_u64[0];
  a4->n128_u64[0] = 0;
  a4->n128_u64[1] = 0;
  a4[1].n128_u64[0] = 0;
  return result;
}

void quasar::MetaInfo::Impl::eraseStructuredPredictionToSourceTokenAlignments(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = a2;
  v6[1] = a3;
  v4 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<void>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string_view>(a1 + 152, v6);
  if ((a1 + 160) != v4)
  {
    v5 = v4;
    std::__tree<std::string>::__remove_node_pointer((a1 + 152), v4);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::set<int>>>,0>((v5 + 4));
    operator delete(v5);
  }
}

uint64_t *quasar::MetaInfo::setInputTokensNumber(uint64_t *this, uint64_t a2)
{
  v2 = *this;
  *(v2 + 176) = a2;
  *(v2 + 184) = 1;
  return this;
}

uint64_t *quasar::MetaInfo::setOutputTokensNumber(uint64_t *this, uint64_t a2)
{
  v2 = *this;
  *(v2 + 192) = a2;
  *(v2 + 200) = 1;
  return this;
}

char *quasar::MetaInfo::Impl::setStructuredPredictionFromPTree(quasar::MetaInfo::Impl *this)
{
  v2 = (this + 104);
  std::__tree<std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>,std::less<void>,true>,std::allocator<std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>>>::destroy(this + 96, *(this + 13));
  *(this + 12) = v2;
  *(this + 14) = 0;
  *v2 = 0;
  v3 = quasar::PTree::begin(this);
  result = quasar::PTree::end(this);
  if (v3 != result)
  {
    v5 = result;
    do
    {
      v6 = *(v3 + 23);
      if (v6 < 0)
      {
        v7 = *v3;
        v6 = *(v3 + 8);
      }

      else
      {
        v7 = v3;
      }

      if (v6 >= 13)
      {
        v8 = &v7[v6];
        result = v7;
        do
        {
          result = memchr(result, 95, v6 - 12);
          if (!result)
          {
            break;
          }

          if (*result == 0x616E7265746C615FLL && *(result + 5) == 0x7365766974616E72)
          {
            if (result != v8 && result - v7 != -1)
            {
              std::string::basic_string(&v11, v3, 0, result - v7, __p);
              std::string::basic_string[abi:ne200100]<0>(__p, "spans");
              quasar::PTree::getChildOptional(v3 + 24, __p);
            }

            break;
          }

          ++result;
          v6 = v8 - result;
        }

        while (v8 - result >= 13);
      }

      v3 += 88;
    }

    while (v3 != v5);
  }

  return result;
}

void sub_1B56F077C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, char a45)
{
  quasar::LmePackedWord::~LmePackedWord(&a18);
  if (a38 == 1 && a37 < 0)
  {
    operator delete(__p);
  }

  if (a45 == 1 && a44 < 0)
  {
    operator delete(a39);
  }

  a12 = (v45 - 136);
  std::vector<quasar::MetaInfo::StructuredPrediction::Span>::__destroy_vector::operator()[abi:ne200100](&a12);
  if (*(v45 - 89) < 0)
  {
    operator delete(*(v45 - 112));
  }

  _Unwind_Resume(a1);
}

void sub_1B56F0A5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  __p = (v61 - 88);
  std::vector<quasar::MetaInfo::Sense>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void quasar::MetaInfo::Impl::setPhrasebookSenseFromPTree(quasar::MetaInfo::Impl *this)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *this;
  if (*(this + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v3, *(this + 1), *(this + 2));
  }

  else
  {
    v3 = *(this + 8);
  }

  memset(v4, 0, sizeof(v4));
  std::vector<std::pair<std::string,quasar::PTree>>::__init_with_size[abi:ne200100]<std::pair<std::string,quasar::PTree>*,std::pair<std::string,quasar::PTree>*>(v4, *(this + 4), *(this + 5), 0x2E8BA2E8BA2E8BA3 * ((*(this + 5) - *(this + 4)) >> 3));
  v5 = *(this + 56);
}

void quasar::MetaInfo::Impl::updatePTreeWithStructuredPredictions(quasar::MetaInfo::Impl *this, quasar::PTree *a2)
{
  v2 = *(this + 12);
  v15 = this + 104;
  if (v2 != this + 104)
  {
    do
    {
      if (*(v2 + 11) != *(v2 + 12))
      {
        quasar::PTree::PTree(v25);
        v4 = *(v2 + 11);
        v3 = *(v2 + 12);
        while (v4 != v3)
        {
          quasar::PTree::PTree(v24);
          quasar::PTree::PTree(&v18, v4);
          quasar::PTree::putChild(v24, (v2 + 56), &v18, 1);
          quasar::PTree::~PTree(&v18);
          std::operator+<char>();
          quasar::PTree::PTree(&v18, v4 + 24);
          quasar::PTree::putChild(v24, __p, &v18, 1);
          quasar::PTree::~PTree(&v18);
          if (v17 < 0)
          {
            operator delete(__p[0]);
          }

          std::string::basic_string[abi:ne200100]<0>(__p, "source");
          quasar::MetaInfo::Impl::toPTree((v4 + 48), &v18);
          quasar::PTree::putChild(v24, __p, &v18, 1);
          quasar::PTree::~PTree(&v18);
          if (v17 < 0)
          {
            operator delete(__p[0]);
          }

          if (*(v4 + 56) != *(v4 + 64))
          {
            quasar::PTree::PTree(&v18);
            v5 = *(v4 + 56);
            v6 = *(v4 + 64);
            while (v5 != v6)
            {
              quasar::MetaInfo::Impl::toPTree(v5, __p);
              quasar::PTree::addChild(&v18, __p);
              quasar::PTree::~PTree(__p);
              v5 += 2;
            }

            std::string::basic_string[abi:ne200100]<0>(__p, "projections");
            quasar::PTree::putChild(v24, __p, &v18, 1);
            if (v17 < 0)
            {
              operator delete(__p[0]);
            }

            quasar::PTree::~PTree(&v18);
          }

          quasar::PTree::addChild(v25, v24);
          quasar::PTree::~PTree(v24);
          v4 += 80;
        }

        quasar::PTree::PTree(v24);
        std::string::basic_string[abi:ne200100]<0>(__p, "group");
        v7 = *(v2 + 20);
        LODWORD(v18) = quasar::getType(v7);
        std::to_string(&v19, v7);
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v23 = 1;
        quasar::PTree::putChild(v24, __p, &v18, 1);
        quasar::PTree::~PTree(&v18);
        if (v17 < 0)
        {
          operator delete(__p[0]);
        }

        std::string::basic_string[abi:ne200100]<0>(&v18, "spans");
        quasar::PTree::putChild(v24, &v18, v25, 1);
        if (v19.__r_.__value_.__s.__data_[15] < 0)
        {
          operator delete(v18);
        }

        if (v2[79] >= 0)
        {
          v8 = v2[79];
        }

        else
        {
          v8 = *(v2 + 8);
        }

        std::string::basic_string[abi:ne200100](&v18, v8 + 13);
        if (v19.__r_.__value_.__s.__data_[15] >= 0)
        {
          v9 = &v18;
        }

        else
        {
          v9 = v18;
        }

        if (v8)
        {
          if (v2[79] >= 0)
          {
            v10 = v2 + 56;
          }

          else
          {
            v10 = *(v2 + 7);
          }

          memmove(v9, v10, v8);
        }

        strcpy(v9 + v8, "_alternatives");
        quasar::PTree::putChild(a2, &v18, v24, 1);
        if (v19.__r_.__value_.__s.__data_[15] < 0)
        {
          operator delete(v18);
        }

        quasar::PTree::~PTree(v24);
        quasar::PTree::~PTree(v25);
      }

      v11 = *(v2 + 1);
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
          v12 = *(v2 + 2);
          v13 = *v12 == v2;
          v2 = v12;
        }

        while (!v13);
      }

      v2 = v12;
    }

    while (v12 != v15);
  }
}

void sub_1B56F1020(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  quasar::PTree::~PTree(&a34);
  quasar::PTree::~PTree((v34 - 152));
  _Unwind_Resume(a1);
}

void quasar::MetaInfo::Impl::updatePTreeWithStructuredPredictionAlignments(quasar::MetaInfo::Impl *this, quasar::PTree *a2)
{
  v2 = *(this + 19);
  v3 = this + 160;
  if (v2 != this + 160)
  {
    do
    {
      if (*(v2 + 7) != *(v2 + 8))
      {
        quasar::PTree::PTree(v25);
        v5 = *(v2 + 7);
        v6 = *(v2 + 8);
        while (v5 != v6)
        {
          quasar::PTree::PTree(__p);
          v7 = *v5;
          if (*v5 != v5 + 1)
          {
            do
            {
              v8 = *(v7 + 7);
              Type = quasar::getType(v8);
              std::to_string(&v18, v8);
              v19 = 0;
              v20 = 0;
              v21 = 0;
              v22 = 1;
              quasar::PTree::addChild(__p, &Type);
              quasar::PTree::~PTree(&Type);
              v9 = v7[1];
              if (v9)
              {
                do
                {
                  v10 = v9;
                  v9 = *v9;
                }

                while (v9);
              }

              else
              {
                do
                {
                  v10 = v7[2];
                  v11 = *v10 == v7;
                  v7 = v10;
                }

                while (!v11);
              }

              v7 = v10;
            }

            while (v10 != v5 + 1);
          }

          quasar::PTree::addChild(v25, __p);
          quasar::PTree::~PTree(__p);
          v5 += 3;
        }

        if (v2[55] >= 0)
        {
          v12 = v2[55];
        }

        else
        {
          v12 = *(v2 + 5);
        }

        std::string::basic_string[abi:ne200100](__p, v12 + 24);
        if (v24 >= 0)
        {
          v13 = __p;
        }

        else
        {
          v13 = __p[0];
        }

        if (v12)
        {
          if (v2[55] >= 0)
          {
            v14 = v2 + 32;
          }

          else
          {
            v14 = *(v2 + 4);
          }

          memmove(v13, v14, v12);
        }

        strcpy(v13 + v12, "_source_token_alignments");
        quasar::PTree::putChild(a2, __p, v25, 1);
        if (v24 < 0)
        {
          operator delete(__p[0]);
        }

        quasar::PTree::~PTree(v25);
      }

      v15 = *(v2 + 1);
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = *(v2 + 2);
          v11 = *v16 == v2;
          v2 = v16;
        }

        while (!v11);
      }

      v2 = v16;
    }

    while (v16 != v3);
  }
}

void sub_1B56F12FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  quasar::PTree::~PTree(&a29);
  _Unwind_Resume(a1);
}

uint64_t std::optional<std::vector<quasar::MetaInfo::Sense>>::operator=[abi:ne200100]<std::vector<quasar::MetaInfo::Sense>,void>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    std::vector<quasar::MetaInfo::Sense>::__vdeallocate(a1);
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a1 + 24) = 1;
  }

  return a1;
}

void quasar::MetaInfo::Impl::updatePTreeWithAmbiguityAnnotatorSenses(quasar::MetaInfo::Impl *this)
{
  quasar::PTree::PTree(v14);
  v2 = *(this + 8);
  v3 = *(this + 9);
  v7 = this;
  if (v2 != v3)
  {
    do
    {
      quasar::PTree::PTree(v12);
      std::string::basic_string[abi:ne200100]<0>(__p, "syn");
      quasar::PTree::PTree(v9, v2);
      quasar::PTree::putChild(v12, __p, v9, 1);
      quasar::PTree::~PTree(v9);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "def");
      quasar::PTree::PTree(v9, v2 + 24);
      quasar::PTree::putChild(v12, __p, v9, 1);
      quasar::PTree::~PTree(v9);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "defLocale");
      quasar::PTree::PTree(v9, v2 + 48);
      quasar::PTree::putChild(v12, __p, v9, 1);
      quasar::PTree::~PTree(v9);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "source match");
      quasar::PTree::PTree(v9, v2 + 72);
      quasar::PTree::putChild(v12, __p, v9, 1);
      quasar::PTree::~PTree(v9);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "source index");
      std::to_string(&v8, *(v2 + 96));
      quasar::PTree::PTree(v9, &v8);
      quasar::PTree::putChild(v12, __p, v9, 1);
      quasar::PTree::~PTree(v9);
      if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v8.__r_.__value_.__l.__data_);
      }

      if (v11 < 0)
      {
        operator delete(__p[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "source length");
      std::to_string(&v8, *(v2 + 100));
      quasar::PTree::PTree(v9, &v8);
      quasar::PTree::putChild(v12, __p, v9, 1);
      quasar::PTree::~PTree(v9);
      if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v8.__r_.__value_.__l.__data_);
      }

      if (v11 < 0)
      {
        operator delete(__p[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "target match");
      v4 = v2 + 104;
      quasar::PTree::PTree(v9, v2 + 104);
      quasar::PTree::putChild(v12, __p, v9, 1);
      quasar::PTree::~PTree(v9);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "target index");
      std::to_string(&v8, *(v2 + 128));
      quasar::PTree::PTree(v9, &v8);
      quasar::PTree::putChild(v12, __p, v9, 1);
      quasar::PTree::~PTree(v9);
      if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v8.__r_.__value_.__l.__data_);
      }

      if (v11 < 0)
      {
        operator delete(__p[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "target length");
      std::to_string(&v8, *(v2 + 132));
      quasar::PTree::PTree(v9, &v8);
      quasar::PTree::putChild(v12, __p, v9, 1);
      quasar::PTree::~PTree(v9);
      if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v8.__r_.__value_.__l.__data_);
      }

      if (v11 < 0)
      {
        operator delete(__p[0]);
      }

      if (*(v2 + 160) == 1)
      {
        if ((*(v2 + 159) & 0x8000000000000000) != 0)
        {
          if (!*(v2 + 144))
          {
            goto LABEL_35;
          }
        }

        else if (!*(v2 + 159))
        {
          goto LABEL_35;
        }

        std::string::basic_string[abi:ne200100]<0>(__p, "att");
        quasar::PTree::PTree(v9, v2 + 136);
        quasar::PTree::putChild(v12, __p, v9, 1);
        quasar::PTree::~PTree(v9);
        if (v11 < 0)
        {
          operator delete(__p[0]);
        }
      }

LABEL_35:
      if (*(v2 + 192) != 1)
      {
        goto LABEL_42;
      }

      if ((*(v2 + 191) & 0x8000000000000000) != 0)
      {
        if (!*(v2 + 176))
        {
          goto LABEL_42;
        }
      }

      else if (!*(v2 + 191))
      {
        goto LABEL_42;
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "formality");
      quasar::PTree::PTree(v9, v2 + 168);
      quasar::PTree::putChild(v12, __p, v9, 1);
      quasar::PTree::~PTree(v9);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }

LABEL_42:
      if (*(v2 + 224) != 1)
      {
        goto LABEL_49;
      }

      if ((*(v2 + 223) & 0x8000000000000000) != 0)
      {
        if (!*(v2 + 208))
        {
          goto LABEL_49;
        }
      }

      else if (!*(v2 + 223))
      {
        goto LABEL_49;
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "gender");
      quasar::PTree::PTree(v9, v2 + 200);
      quasar::PTree::putChild(v12, __p, v9, 1);
      quasar::PTree::~PTree(v9);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }

LABEL_49:
      if (*(v2 + 256) != 1)
      {
        goto LABEL_56;
      }

      if ((*(v2 + 255) & 0x8000000000000000) != 0)
      {
        if (!*(v2 + 240))
        {
          goto LABEL_56;
        }
      }

      else if (!*(v2 + 255))
      {
        goto LABEL_56;
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "reg");
      quasar::PTree::PTree(v9, v2 + 232);
      quasar::PTree::putChild(v12, __p, v9, 1);
      quasar::PTree::~PTree(v9);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }

LABEL_56:
      if (*(v2 + 288) == 1)
      {
        v5 = *(v2 + 287);
        if (v5 < 0)
        {
          if (*(v2 + 272) == 4)
          {
            v6 = *(v2 + 264);
LABEL_62:
            if (*v6 == 1702195828)
            {
              std::string::basic_string[abi:ne200100]<0>(__p, "explicit");
              quasar::PTree::PTree(v9, v2 + 264);
              quasar::PTree::putChild(v12, __p, v9, 1);
              quasar::PTree::~PTree(v9);
              if (v11 < 0)
              {
                operator delete(__p[0]);
              }
            }
          }
        }

        else
        {
          v6 = (v2 + 264);
          if (v5 == 4)
          {
            goto LABEL_62;
          }
        }
      }

      quasar::PTree::addChild(v14, v12);
      quasar::PTree::~PTree(v12);
      v2 += 296;
    }

    while (v4 + 192 != v3);
  }

  std::string::basic_string[abi:ne200100]<0>(v12, "senses");
  quasar::PTree::putChild(v7, v12, v14, 1);
  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  quasar::PTree::~PTree(v14);
}

void sub_1B56F19F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  quasar::PTree::~PTree((v35 - 152));
  _Unwind_Resume(a1);
}

void sub_1B56F2490(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38)
{
  if (a22 == 1 && a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  quasar::MetaInfo::Sense::~Sense(&a38);
  if (*(v38 - 120) == 1 && *(v38 - 121) < 0)
  {
    operator delete(*(v38 - 144));
  }

  if (*(v38 - 88) == 1 && *(v38 - 89) < 0)
  {
    operator delete(*(v38 - 112));
  }

  if (*(v38 - 56) == 1 && *(v38 - 57) < 0)
  {
    operator delete(*(v38 - 80));
  }

  _Unwind_Resume(a1);
}

void sub_1B56F25E0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  JUMPOUT(0x1B56F2584);
}

void sub_1B56F2618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    JUMPOUT(0x1B56F259CLL);
  }

  JUMPOUT(0x1B56F25A0);
}

void sub_1B56F2634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    JUMPOUT(0x1B56F25B8);
  }

  JUMPOUT(0x1B56F25BCLL);
}

void sub_1B56F2650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    JUMPOUT(0x1B56F25D4);
  }

  JUMPOUT(0x1B56F25D8);
}

void quasar::MetaInfo::Impl::toPTree(int *a1@<X0>, quasar::PTree *a2@<X8>)
{
  quasar::PTree::PTree(a2);
  std::string::basic_string[abi:ne200100]<0>(v6, "start");
  std::to_string(&__p, *a1);
  quasar::PTree::PTree(v5, &__p);
  quasar::PTree::putChild(a2, v6, v5, 1);
  quasar::PTree::~PTree(v5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "end");
  std::to_string(&__p, a1[1]);
  quasar::PTree::PTree(v5, &__p);
  quasar::PTree::putChild(a2, v6, v5, 1);
  quasar::PTree::~PTree(v5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_1B56F2760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  quasar::PTree::~PTree(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v16 - 17) < 0)
  {
    operator delete(*(v16 - 40));
  }

  quasar::PTree::~PTree(v15);
  _Unwind_Resume(a1);
}

uint64_t std::optional<std::vector<quasar::AlternativeSelectionSpan>>::operator=[abi:ne200100]<std::vector<quasar::AlternativeSelectionSpan>,void>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    std::vector<quasar::AlternativeSelectionSpan>::__vdeallocate(a1);
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a1 + 24) = 1;
  }

  return a1;
}

BOOL quasar::operator<(_DWORD *a1, _DWORD *a2)
{
  if (*a1 < *a2)
  {
    return 1;
  }

  if (*a2 >= *a1)
  {
    return a1[1] < a2[1];
  }

  return 0;
}

void quasar::MetaInfo::Impl::~Impl(quasar::MetaInfo::Impl *this)
{
  std::__tree<std::__value_type<std::string,std::vector<std::set<int>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::set<int>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,std::vector<std::set<int>>>>>::destroy(this + 152, *(this + 20));
  if (*(this + 144) == 1)
  {
    v2 = (this + 120);
    std::vector<quasar::AlternativeSelectionSpan>::__destroy_vector::operator()[abi:ne200100](&v2);
  }

  std::__tree<std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>,std::less<void>,true>,std::allocator<std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>>>::destroy(this + 96, *(this + 13));
  if (*(this + 88) == 1)
  {
    v2 = (this + 64);
    std::vector<quasar::MetaInfo::Sense>::__destroy_vector::operator()[abi:ne200100](&v2);
  }

  quasar::PTree::~PTree(this);
}

void std::__tree<std::__value_type<std::string,std::vector<std::set<int>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::set<int>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,std::vector<std::set<int>>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::vector<std::set<int>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::set<int>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,std::vector<std::set<int>>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::vector<std::set<int>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::set<int>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,std::vector<std::set<int>>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::set<int>>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::set<int>>>,0>(uint64_t a1)
{
  v2 = (a1 + 24);
  std::vector<std::map<int,quasar::Expansion::SegmentTypeData>>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void std::__tree<std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>,std::less<void>,true>,std::allocator<std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>,std::less<void>,true>,std::allocator<std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>,std::less<void>,true>,std::allocator<std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>>>::destroy(a1, a2[1]);
    std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>,void *>>>::destroy[abi:ne200100]<std::pair<std::string const,quasar::MetaInfo::StructuredPrediction>,void,0>(a1, (a2 + 4));

    operator delete(a2);
  }
}

void std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>,void *>>>::destroy[abi:ne200100]<std::pair<std::string const,quasar::MetaInfo::StructuredPrediction>,void,0>(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 56);
  std::vector<quasar::MetaInfo::StructuredPrediction::Span>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void std::__optional_storage_base<std::vector<quasar::MetaInfo::Sense>,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::vector<quasar::MetaInfo::Sense>,false> const&>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == *(a2 + 24))
  {
    if (a1 != a2 && *(a1 + 24))
    {
      v3 = *(a2 + 8);
      v4 = 0x14C1BACF914C1BADLL * ((v3 - *a2) >> 3);
      v5 = *a2;

      std::vector<quasar::MetaInfo::Sense>::__assign_with_size[abi:ne200100]<quasar::MetaInfo::Sense*,quasar::MetaInfo::Sense*>(a1, v5, v3, v4);
    }
  }

  else if (*(a1 + 24))
  {
    v6 = a1;
    std::vector<quasar::MetaInfo::Sense>::__destroy_vector::operator()[abi:ne200100](&v6);
    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    std::vector<quasar::MetaInfo::Sense>::__init_with_size[abi:ne200100]<quasar::MetaInfo::Sense*,quasar::MetaInfo::Sense*>(a1, *a2, *(a2 + 8), 0x14C1BACF914C1BADLL * ((*(a2 + 8) - *a2) >> 3));
    *(a1 + 24) = 1;
  }
}

void std::vector<quasar::MetaInfo::Sense>::__assign_with_size[abi:ne200100]<quasar::MetaInfo::Sense*,quasar::MetaInfo::Sense*>(uint64_t a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v8 = *a1;
  if (0x14C1BACF914C1BADLL * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    std::vector<quasar::MetaInfo::Sense>::__vdeallocate(a1);
    if (a4 <= 0xDD67C8A60DD67CLL)
    {
      v9 = 0x2983759F2298375ALL * ((*(a1 + 16) - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if ((0x14C1BACF914C1BADLL * ((*(a1 + 16) - *a1) >> 3)) >= 0x6EB3E45306EB3ELL)
      {
        v10 = 0xDD67C8A60DD67CLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<quasar::MetaInfo::Sense>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a1 + 8) - v8;
  if (0x14C1BACF914C1BADLL * (v11 >> 3) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<quasar::MetaInfo::Sense *,quasar::MetaInfo::Sense *,quasar::MetaInfo::Sense *>(&v16, __str, a3, v8);
    v13 = v12;
    v14 = *(a1 + 8);
    if (v14 != v12)
    {
      do
      {
        quasar::MetaInfo::Sense::~Sense((v14 - 296));
      }

      while (v14 != v13);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<quasar::MetaInfo::Sense *,quasar::MetaInfo::Sense *,quasar::MetaInfo::Sense *>(&v15, __str, (__str + v11), v8);
    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::MetaInfo::Sense>,quasar::MetaInfo::Sense*,quasar::MetaInfo::Sense*,quasar::MetaInfo::Sense*>(a1, (__str + v11), a3, *(a1 + 8));
  }
}

void std::vector<quasar::MetaInfo::Sense>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v1;
    if (v3 != v1)
    {
      do
      {
        quasar::MetaInfo::Sense::~Sense(v3 - 37);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<quasar::MetaInfo::Sense>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xDD67C8A60DD67DLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::MetaInfo::Sense>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::MetaInfo::Sense>,quasar::MetaInfo::Sense*,quasar::MetaInfo::Sense*,quasar::MetaInfo::Sense*>(int a1, __int128 *a2, __int128 *a3, std::string *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      quasar::MetaInfo::Sense::Sense(this, v6);
      v6 = (v6 + 296);
      this = (this + 296);
      v7 -= 296;
    }

    while (v6 != a3);
  }

  return this;
}

void sub_1B56F2E38(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 296);
    do
    {
      quasar::MetaInfo::Sense::~Sense(v4);
      v4 = (v5 - 296);
      v2 += 296;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::__copy_impl::operator()[abi:ne200100]<quasar::MetaInfo::Sense *,quasar::MetaInfo::Sense *,quasar::MetaInfo::Sense *>(int a1, std::string *__str, std::string *a3, std::string *this)
{
  v5 = __str;
  if (__str == a3)
  {
    return __str;
  }

  v6 = a3;
  do
  {
    std::string::operator=(this, v5);
    std::string::operator=(this + 1, v5 + 1);
    std::string::operator=(this + 2, v5 + 2);
    std::string::operator=(this + 3, v5 + 3);
    this[4].__r_.__value_.__r.__words[0] = v5[4].__r_.__value_.__r.__words[0];
    std::string::operator=((this + 104), (v5 + 104));
    this[5].__r_.__value_.__l.__size_ = v5[5].__r_.__value_.__l.__size_;
    std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::string,false> const&>((this + 136), (v5 + 136));
    std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::string,false> const&>(this + 7, v5 + 7);
    std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::string,false> const&>((this + 200), (v5 + 200));
    std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::string,false> const&>((this + 232), (v5 + 232));
    std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::string,false> const&>(this + 11, v5 + 11);
    this = (this + 296);
    v5 = (v5 + 296);
  }

  while (v5 != v6);
  return v6;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::MetaInfo::Sense>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xDD67C8A60DD67DLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<quasar::MetaInfo::Sense>::__init_with_size[abi:ne200100]<quasar::MetaInfo::Sense*,quasar::MetaInfo::Sense*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<quasar::MetaInfo::Sense>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B56F3000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<quasar::MetaInfo::Sense>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<quasar::MetaInfo::Sense>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        quasar::MetaInfo::Sense::~Sense(v4 - 37);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<quasar::MetaInfo::StructuredPrediction::Span>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<quasar::MetaInfo::StructuredPrediction::Span>::__base_destruct_at_end[abi:ne200100](a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(uint64_t a1@<X0>, char *a2@<X1>, std::string *a3@<X8>)
{
  if (*(a1 + 24) == 1)
  {
    if (*(a1 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(a3, *a1, *(a1 + 8));
    }

    else
    {
      *&a3->__r_.__value_.__l.__data_ = *a1;
      a3->__r_.__value_.__r.__words[2] = *(a1 + 16);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(a3, a2);
  }
}

std::string *quasar::MetaInfo::Sense::Sense(std::string *this, __int128 *a2)
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

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(this + 2, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    this[2].__r_.__value_.__r.__words[2] = *(a2 + 8);
    *&this[2].__r_.__value_.__l.__data_ = v6;
  }

  if (*(a2 + 95) < 0)
  {
    std::string::__init_copy_ctor_external(this + 3, *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v7 = *(a2 + 72);
    this[3].__r_.__value_.__r.__words[2] = *(a2 + 11);
    *&this[3].__r_.__value_.__l.__data_ = v7;
  }

  this[4].__r_.__value_.__r.__words[0] = *(a2 + 12);
  if (*(a2 + 127) < 0)
  {
    std::string::__init_copy_ctor_external((this + 104), *(a2 + 13), *(a2 + 14));
  }

  else
  {
    v8 = *(a2 + 104);
    this[5].__r_.__value_.__r.__words[0] = *(a2 + 15);
    *&this[4].__r_.__value_.__r.__words[1] = v8;
  }

  this[5].__r_.__value_.__l.__size_ = *(a2 + 16);
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((this + 136), (a2 + 136));
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](this + 7, (a2 + 168));
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((this + 200), (a2 + 200));
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((this + 232), (a2 + 232));
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](this + 11, (a2 + 264));
  return this;
}

void sub_1B56F325C(_Unwind_Exception *exception_object)
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

void quasar::MetaInfo::Sense::~Sense(void **this)
{
  if (*(this + 288) == 1 && *(this + 287) < 0)
  {
    operator delete(this[33]);
  }

  if (*(this + 256) == 1 && *(this + 255) < 0)
  {
    operator delete(this[29]);
  }

  if (*(this + 224) == 1 && *(this + 223) < 0)
  {
    operator delete(this[25]);
  }

  if (*(this + 192) == 1 && *(this + 191) < 0)
  {
    operator delete(this[21]);
  }

  if (*(this + 160) == 1 && *(this + 159) < 0)
  {
    operator delete(this[17]);
  }

  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
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

quasar::MetaInfo::Impl *std::unique_ptr<quasar::MetaInfo::Impl>::reset[abi:ne200100](quasar::MetaInfo::Impl **a1, quasar::MetaInfo::Impl *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    quasar::MetaInfo::Impl::~Impl(result);

    JUMPOUT(0x1B8C85350);
  }

  return result;
}

uint64_t quasar::MetaInfo::Impl::Impl(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
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

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  std::vector<std::pair<std::string,quasar::PTree>>::__init_with_size[abi:ne200100]<std::pair<std::string,quasar::PTree>*,std::pair<std::string,quasar::PTree>*>(a1 + 32, *(a2 + 32), *(a2 + 40), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 40) - *(a2 + 32)) >> 3));
  v5 = *(a2 + 56);
  *(a1 + 64) = 0;
  *(a1 + 56) = v5;
  *(a1 + 88) = 0;
  if (*(a2 + 88) == 1)
  {
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    *(a1 + 88) = 1;
  }

  *(a1 + 96) = *(a2 + 96);
  v6 = (a2 + 104);
  v7 = *(a2 + 104);
  *(a1 + 104) = v7;
  v8 = a1 + 104;
  v9 = *(a2 + 112);
  *(a1 + 112) = v9;
  if (v9)
  {
    *(v7 + 16) = v8;
    *(a2 + 96) = v6;
    *v6 = 0;
    *(a2 + 112) = 0;
  }

  else
  {
    *(a1 + 96) = v8;
  }

  *(a1 + 120) = 0;
  *(a1 + 144) = 0;
  if (*(a2 + 144) == 1)
  {
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    *(a1 + 136) = 0;
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a2 + 120) = 0;
    *(a2 + 128) = 0;
    *(a2 + 136) = 0;
    *(a1 + 144) = 1;
  }

  *(a1 + 152) = *(a2 + 152);
  v10 = (a2 + 160);
  v11 = *(a2 + 160);
  *(a1 + 160) = v11;
  v12 = a1 + 160;
  v13 = *(a2 + 168);
  *(a1 + 168) = v13;
  if (v13)
  {
    *(v11 + 16) = v12;
    *(a2 + 152) = v10;
    *v10 = 0;
    *(a2 + 168) = 0;
  }

  else
  {
    *(a1 + 152) = v12;
  }

  v14 = *(a2 + 176);
  *(a1 + 185) = *(a2 + 185);
  *(a1 + 176) = v14;
  return a1;
}

void sub_1B56F3650(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

quasar::MetaInfo::Impl *quasar::MetaInfo::Impl::Impl(quasar::MetaInfo::Impl *this, const quasar::MetaInfo::Impl *a2)
{
  *this = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((this + 8), *(a2 + 1), *(a2 + 2));
  }

  else
  {
    v4 = *(a2 + 8);
    *(this + 3) = *(a2 + 3);
    *(this + 8) = v4;
  }

  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  std::vector<std::pair<std::string,quasar::PTree>>::__init_with_size[abi:ne200100]<std::pair<std::string,quasar::PTree>*,std::pair<std::string,quasar::PTree>*>(this + 32, *(a2 + 4), *(a2 + 5), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 5) - *(a2 + 4)) >> 3));
  *(this + 56) = *(a2 + 56);
  std::__optional_copy_base<std::vector<quasar::MetaInfo::Sense>,false>::__optional_copy_base[abi:ne200100](this + 64, a2 + 64);
  std::map<std::string,quasar::MetaInfo::StructuredPrediction>::map[abi:ne200100](this + 12, a2 + 12);
  std::__optional_copy_base<std::vector<quasar::AlternativeSelectionSpan>,false>::__optional_copy_base[abi:ne200100](this + 120, a2 + 120);
  std::map<std::string,std::vector<std::set<int>>>::map[abi:ne200100](this + 19, a2 + 19);
  v5 = *(a2 + 11);
  *(this + 185) = *(a2 + 185);
  *(this + 11) = v5;
  return this;
}

void sub_1B56F3758(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 144) == 1)
  {
    std::vector<quasar::AlternativeSelectionSpan>::__destroy_vector::operator()[abi:ne200100](va);
  }

  std::__tree<std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>,std::less<void>,true>,std::allocator<std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>>>::destroy(v2 + 96, *(v2 + 104));
  if (*(v2 + 88) == 1)
  {
    std::vector<quasar::MetaInfo::Sense>::__destroy_vector::operator()[abi:ne200100](va);
  }

  quasar::PTree::~PTree(v2);
  _Unwind_Resume(a1);
}

void sub_1B56F37C0()
{
  if (*(v0 + 31) < 0)
  {
    operator delete(*v1);
  }

  JUMPOUT(0x1B56F37B8);
}

uint64_t std::__optional_copy_base<std::vector<quasar::MetaInfo::Sense>,false>::__optional_copy_base[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  std::__optional_storage_base<std::vector<quasar::MetaInfo::Sense>,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<std::vector<quasar::MetaInfo::Sense>,false> const&>(a1, a2);
  return a1;
}

void sub_1B56F3810(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 24) == 1)
  {
    a10 = v10;
    std::vector<quasar::MetaInfo::Sense>::__destroy_vector::operator()[abi:ne200100](&a10);
  }

  _Unwind_Resume(exception_object);
}

void *std::__optional_storage_base<std::vector<quasar::MetaInfo::Sense>,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<std::vector<quasar::MetaInfo::Sense>,false> const&>(void *result, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    v2 = result;
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    result = std::vector<quasar::MetaInfo::Sense>::__init_with_size[abi:ne200100]<quasar::MetaInfo::Sense*,quasar::MetaInfo::Sense*>(result, *a2, *(a2 + 8), 0x14C1BACF914C1BADLL * ((*(a2 + 8) - *a2) >> 3));
    *(v2 + 24) = 1;
  }

  return result;
}

void *std::map<std::string,quasar::MetaInfo::StructuredPrediction>::map[abi:ne200100](void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,quasar::MetaInfo::StructuredPrediction>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>,std::__tree_node<std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>,void *> *,long>>>(a1, *a2, a2 + 1);
  return a1;
}

uint64_t std::map<std::string,quasar::MetaInfo::StructuredPrediction>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>,std::__tree_node<std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>,void *> *,long>>>(uint64_t result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>,std::less<void>,true>,std::allocator<std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,quasar::MetaInfo::StructuredPrediction> const&>(v5, (v5 + 1), v4 + 4);
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

uint64_t std::__tree<std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>,std::less<void>,true>,std::allocator<std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,quasar::MetaInfo::StructuredPrediction> const&>(void *a1, uint64_t a2, const void **a3)
{
  result = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>,std::less<void>,true>,std::allocator<std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>>>::__construct_node<std::pair<std::string const,quasar::MetaInfo::StructuredPrediction> const&>();
  }

  return result;
}

void sub_1B56F3A78(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

std::string *std::pair<std::string const,quasar::MetaInfo::StructuredPrediction>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  v6 = *(a2 + 12);
  this[2].__r_.__value_.__l.__size_ = 0;
  LODWORD(this[2].__r_.__value_.__l.__data_) = v6;
  this[2].__r_.__value_.__r.__words[2] = 0;
  this[3].__r_.__value_.__r.__words[0] = 0;
  std::vector<quasar::MetaInfo::StructuredPrediction::Span>::__init_with_size[abi:ne200100]<quasar::MetaInfo::StructuredPrediction::Span*,quasar::MetaInfo::StructuredPrediction::Span*>(&this[2].__r_.__value_.__l.__size_, *(a2 + 7), *(a2 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 8) - *(a2 + 7)) >> 4));
  return this;
}

void sub_1B56F3B3C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>,void *>>>::destroy[abi:ne200100]<std::pair<std::string const,quasar::MetaInfo::StructuredPrediction>,void,0>(*a1, __p + 32);
  }

  if (__p)
  {

    operator delete(__p);
  }
}

void *std::map<std::string,std::vector<std::set<int>>>::map[abi:ne200100](void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,std::vector<std::set<int>>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::vector<std::set<int>>>,std::__tree_node<std::__value_type<std::string,std::vector<std::set<int>>>,void *> *,long>>>(a1, *a2, a2 + 1);
  return a1;
}

uint64_t std::map<std::string,std::vector<std::set<int>>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::vector<std::set<int>>>,std::__tree_node<std::__value_type<std::string,std::vector<std::set<int>>>,void *> *,long>>>(uint64_t result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<std::string,std::vector<std::set<int>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::set<int>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,std::vector<std::set<int>>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::vector<std::set<int>>> const&>(v5, (v5 + 1), v4 + 4);
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

uint64_t std::__tree<std::__value_type<std::string,std::vector<std::set<int>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::set<int>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,std::vector<std::set<int>>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::vector<std::set<int>>> const&>(void *a1, uint64_t a2, const void **a3)
{
  v3 = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    std::__tree<std::__value_type<std::string,std::vector<std::set<int>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::set<int>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,std::vector<std::set<int>>>>>::__construct_node<std::pair<std::string const,std::vector<std::set<int>>> const&>();
  }

  return v3;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::vector<std::set<int>>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::vector<std::set<int>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::set<int>>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

std::string *std::pair<std::string const,std::vector<std::set<int>>>::pair[abi:ne200100](std::string *this, __int128 *a2)
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
  std::vector<std::set<int>>::__init_with_size[abi:ne200100]<std::set<int>*,std::set<int>*>(&this[1], *(a2 + 3), *(a2 + 4), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 4) - *(a2 + 3)) >> 3));
  return this;
}

void sub_1B56F3E80(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::set<int>>::__init_with_size[abi:ne200100]<std::set<int>*,std::set<int>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<quasar::AlternativeSelectionSpan::Alternative>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B56F3F04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::map<int,quasar::Expansion::SegmentTypeData>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::set<int>>,std::set<int>*,std::set<int>*,std::set<int>*>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      std::set<int>::set[abi:ne200100](v4, v6);
      v6 += 24;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::set<int>>,std::set<int>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t **std::__tree<std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>,std::less<void>,true>,std::allocator<std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>,std::__tree_node<std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>,void *> *,long>>(uint64_t **result, void *a2, void *a3)
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
      v14 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>::operator=[abi:ne200100]((v8 + 4), (v9 + 4));
          leaf_high = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_leaf_high(v5, &v16, v15 + 4);
          std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__insert_node_at(v5, v16, leaf_high, v15);
          v15 = v14;
          if (v14)
          {
            v14 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::_DetachedTreeCache::__detach_next(v14);
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

    result = std::__tree<std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>,std::less<void>,true>,std::allocator<std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v13);
  }

  if (a2 != a3)
  {
    std::__tree<std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>,std::less<void>,true>,std::allocator<std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>>>::__emplace_multi<std::pair<std::string const,quasar::MetaInfo::StructuredPrediction> const&>();
  }

  return result;
}

uint64_t std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>::operator=[abi:ne200100](uint64_t a1, uint64_t a2)
{
  std::string::operator=(a1, a2);
  std::string::operator=((a1 + 24), (a2 + 24));
  *(a1 + 48) = *(a2 + 48);
  if (a1 != a2)
  {
    std::vector<quasar::MetaInfo::StructuredPrediction::Span>::__assign_with_size[abi:ne200100]<quasar::MetaInfo::StructuredPrediction::Span*,quasar::MetaInfo::StructuredPrediction::Span*>(a1 + 56, *(a2 + 56), *(a2 + 64), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 64) - *(a2 + 56)) >> 4));
  }

  return a1;
}

void std::vector<quasar::MetaInfo::StructuredPrediction::Span>::__assign_with_size[abi:ne200100]<quasar::MetaInfo::StructuredPrediction::Span*,quasar::MetaInfo::StructuredPrediction::Span*>(uint64_t a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v8 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 4) < a4)
  {
    std::vector<quasar::MetaInfo::StructuredPrediction::Span>::__vdeallocate(a1);
    if (a4 <= 0x333333333333333)
    {
      v9 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 4) >= 0x199999999999999)
      {
        v10 = 0x333333333333333;
      }

      else
      {
        v10 = v9;
      }

      std::vector<quasar::MetaInfo::StructuredPrediction::Span>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a1 + 8) - v8;
  if (0xCCCCCCCCCCCCCCCDLL * (v11 >> 4) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<quasar::MetaInfo::StructuredPrediction::Span *,quasar::MetaInfo::StructuredPrediction::Span *,quasar::MetaInfo::StructuredPrediction::Span *>(&v14, __str, a3, v8);
    std::vector<quasar::MetaInfo::StructuredPrediction::Span>::__base_destruct_at_end[abi:ne200100](a1, v12);
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<quasar::MetaInfo::StructuredPrediction::Span *,quasar::MetaInfo::StructuredPrediction::Span *,quasar::MetaInfo::StructuredPrediction::Span *>(&v13, __str, (__str + v11), v8);
    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::MetaInfo::StructuredPrediction::Span>,quasar::MetaInfo::StructuredPrediction::Span*,quasar::MetaInfo::StructuredPrediction::Span*,quasar::MetaInfo::StructuredPrediction::Span*>(a1, (__str + v11), a3, *(a1 + 8));
  }
}

std::string *std::__copy_impl::operator()[abi:ne200100]<quasar::MetaInfo::StructuredPrediction::Span *,quasar::MetaInfo::StructuredPrediction::Span *,quasar::MetaInfo::StructuredPrediction::Span *>(int a1, std::string *__str, std::string *a3, std::string *this)
{
  v5 = __str;
  if (__str == a3)
  {
    return __str;
  }

  v6 = a3;
  do
  {
    std::string::operator=(this, v5);
    std::string::operator=(this + 1, v5 + 1);
    this[2].__r_.__value_.__r.__words[0] = v5[2].__r_.__value_.__r.__words[0];
    if (this != v5)
    {
      std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(&this[2].__r_.__value_.__l.__size_, v5[2].__r_.__value_.__l.__size_, v5[2].__r_.__value_.__r.__words[2], (v5[2].__r_.__value_.__r.__words[2] - v5[2].__r_.__value_.__l.__size_) >> 3);
    }

    this = (this + 80);
    v5 = (v5 + 80);
  }

  while (v5 != v6);
  return v6;
}

uint64_t std::__tree<std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>,std::less<void>,true>,std::allocator<std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>,std::less<void>,true>,std::allocator<std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>>>::destroy(*a1, *(a1 + 16));
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

    std::__tree<std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>,std::less<void>,true>,std::allocator<std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>>>::destroy(*a1, v2);
  }

  return a1;
}

void sub_1B56F4444(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<quasar::MetaInfo::StructuredPrediction::Span>::__emplace_back_slow_path<quasar::MetaInfo::StructuredPrediction::Span>(uint64_t *a1, __int128 *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::MetaInfo::StructuredPrediction::Span>>(a1, v6);
  }

  v7 = 80 * v2;
  v17 = 0;
  v18 = v7;
  *(&v19 + 1) = 0;
  v8 = *a2;
  *(v7 + 16) = *(a2 + 2);
  *v7 = v8;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v9 = *(a2 + 24);
  *(v7 + 40) = *(a2 + 5);
  *(v7 + 24) = v9;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 3) = 0;
  v10 = *(a2 + 6);
  *(v7 + 64) = 0;
  *(v7 + 72) = 0;
  *(v7 + 48) = v10;
  *(v7 + 56) = 0;
  *(v7 + 56) = *(a2 + 56);
  *(v7 + 72) = *(a2 + 9);
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  *(a2 + 9) = 0;
  *&v19 = 80 * v2 + 80;
  v11 = a1[1];
  v12 = 80 * v2 + *a1 - v11;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::MetaInfo::StructuredPrediction::Span>,quasar::MetaInfo::StructuredPrediction::Span*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<quasar::MetaInfo::StructuredPrediction::Span>::~__split_buffer(&v17);
  return v16;
}

void sub_1B56F45C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::MetaInfo::StructuredPrediction::Span>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>,std::less<void>,true>,std::allocator<std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<std::string&,int &&,std::vector<quasar::MetaInfo::StructuredPrediction::Span> &>>(uint64_t a1, const void **a2)
{
  result = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>,std::less<void>,true>,std::allocator<std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<std::string&,int &&,std::vector<quasar::MetaInfo::StructuredPrediction::Span> &>>();
  }

  return result;
}

void sub_1B56F4710(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

std::string *std::pair<std::string const,quasar::MetaInfo::StructuredPrediction>::pair[abi:ne200100]<std::string const&,std::string&,int &&,std::vector<quasar::MetaInfo::StructuredPrediction::Span> &,0ul,0ul,1ul,2ul>(std::string *this, __int128 **a2, __int128 **a3)
{
  v5 = *a2;
  if (*(*a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *v5, *(v5 + 1));
  }

  else
  {
    v6 = *v5;
    this->__r_.__value_.__r.__words[2] = *(v5 + 2);
    *&this->__r_.__value_.__l.__data_ = v6;
  }

  v7 = *a3;
  if (*(*a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v14, *v7, *(v7 + 1));
  }

  else
  {
    v8 = *v7;
    v14.__r_.__value_.__r.__words[2] = *(v7 + 2);
    *&v14.__r_.__value_.__l.__data_ = v8;
  }

  v9 = a3[2];
  v10 = *a3[1];
  v13 = 0;
  v12 = 0uLL;
  std::vector<quasar::MetaInfo::StructuredPrediction::Span>::__init_with_size[abi:ne200100]<quasar::MetaInfo::StructuredPrediction::Span*,quasar::MetaInfo::StructuredPrediction::Span*>(&v12, *v9, v9[1], 0xCCCCCCCCCCCCCCCDLL * ((v9[1] - *v9) >> 4));
  this[1] = v14;
  memset(&v14, 0, sizeof(v14));
  LODWORD(this[2].__r_.__value_.__l.__data_) = v10;
  *&this[2].__r_.__value_.__r.__words[1] = v12;
  this[3].__r_.__value_.__r.__words[0] = v13;
  v12 = 0uLL;
  v13 = 0;
  v15 = &v12;
  std::vector<quasar::MetaInfo::StructuredPrediction::Span>::__destroy_vector::operator()[abi:ne200100](&v15);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  return this;
}

void sub_1B56F4840(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (*(v18 + 23) < 0)
  {
    operator delete(*v18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tree<std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>,std::less<void>,true>,std::allocator<std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>>>::__emplace_hint_unique_key_args<std::string,std::string&,quasar::MetaInfo::StructuredPrediction>(void *a1, uint64_t a2, const void **a3)
{
  result = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>,std::less<void>,true>,std::allocator<std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>>>::__construct_node<std::string&,quasar::MetaInfo::StructuredPrediction>();
  }

  return result;
}

void sub_1B56F4980(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

std::string *std::pair<std::string const,quasar::MetaInfo::StructuredPrediction>::pair[abi:ne200100]<std::string&,quasar::MetaInfo::StructuredPrediction,0>(std::string *this, __int128 *a2, __int128 *a3)
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

  v6 = *a3;
  this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
  *&this[1].__r_.__value_.__l.__data_ = v6;
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  *a3 = 0;
  LODWORD(this[2].__r_.__value_.__l.__data_) = *(a3 + 6);
  this[2].__r_.__value_.__r.__words[2] = 0;
  this[3].__r_.__value_.__r.__words[0] = 0;
  this[2].__r_.__value_.__l.__size_ = 0;
  *&this[2].__r_.__value_.__r.__words[1] = a3[2];
  this[3].__r_.__value_.__r.__words[0] = *(a3 + 6);
  *(a3 + 4) = 0;
  *(a3 + 5) = 0;
  *(a3 + 6) = 0;
  return this;
}

uint64_t std::__tree<std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>,std::less<void>,true>,std::allocator<std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>>>::__count_multi<std::string_view>(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 8);
  v3 = *(a1 + 8);
  if (!v3)
  {
    return 0;
  }

  while ((std::less<void>::operator()[abi:ne200100]<std::string_view const&,std::string const&>(a1, a2, v3 + 4) & 1) != 0)
  {
    v2 = v3;
LABEL_6:
    v3 = *v3;
    if (!v3)
    {
      return 0;
    }
  }

  if (std::less<void>::operator()[abi:ne200100]<std::string const&,std::string_view const&>(a1, v3 + 4, a2))
  {
    ++v3;
    goto LABEL_6;
  }

  v7 = *v3;
  v8 = v3;
  if (*v3)
  {
    v8 = v3;
    do
    {
      v9 = std::less<void>::operator()[abi:ne200100]<std::string const&,std::string_view const&>(a1, v7 + 4, a2);
      if (v9)
      {
        v10 = 1;
      }

      else
      {
        v10 = 0;
      }

      if (!v9)
      {
        v8 = v7;
      }

      v7 = v7[v10];
    }

    while (v7);
  }

  for (i = v3[1]; i; i = i[v13])
  {
    v12 = std::less<void>::operator()[abi:ne200100]<std::string_view const&,std::string const&>(a1, a2, i + 4);
    if (v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = 1;
    }

    if (v12)
    {
      v2 = i;
    }
  }

  if (v8 == v2)
  {
    return 0;
  }

  result = 0;
  do
  {
    v14 = v8[1];
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
        v15 = v8[2];
        v16 = *v15 == v8;
        v8 = v15;
      }

      while (!v16);
    }

    ++result;
    v8 = v15;
  }

  while (v15 != v2);
  return result;
}

uint64_t *std::__tree<std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>,std::less<void>,true>,std::allocator<std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>>>::erase(uint64_t **a1, uint64_t *a2)
{
  v4 = std::__tree<std::string>::__remove_node_pointer(a1, a2);
  std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<std::string,quasar::MetaInfo::StructuredPrediction>,void *>>>::destroy[abi:ne200100]<std::pair<std::string const,quasar::MetaInfo::StructuredPrediction>,void,0>(a1, (a2 + 4));
  operator delete(a2);
  return v4;
}

void std::vector<std::set<int>>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v5 = v3 - 24;
        std::__tree<int>::destroy((v3 - 24), *(v3 - 2));
        v3 = v5;
      }

      while (v5 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_1B56F4CAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::vector<std::set<int>>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::vector<std::set<int>>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<quasar::MetaInfo::Sense>::__init_with_size[abi:ne200100]<quasar::MetaInfo::Sense const*,quasar::MetaInfo::Sense const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<quasar::MetaInfo::Sense>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B56F4E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<quasar::MetaInfo::Sense>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::MetaInfo::Sense>,quasar::MetaInfo::Sense const*,quasar::MetaInfo::Sense const*,quasar::MetaInfo::Sense*>(int a1, __int128 *a2, __int128 *a3, std::string *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      quasar::MetaInfo::Sense::Sense(this, v6);
      v6 = (v6 + 296);
      this = (this + 296);
      v7 -= 296;
    }

    while (v6 != a3);
  }

  return this;
}

void sub_1B56F4EC4(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 296);
    do
    {
      quasar::MetaInfo::Sense::~Sense(v4);
      v4 = (v5 - 296);
      v2 += 296;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<quasar::MetaInfo::Sense>::__emplace_back_slow_path<quasar::MetaInfo::Sense&>(uint64_t a1, __int128 *a2)
{
  v2 = 0x14C1BACF914C1BADLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0xDD67C8A60DD67CLL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x2983759F2298375ALL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x2983759F2298375ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x14C1BACF914C1BADLL * ((*(a1 + 16) - *a1) >> 3)) >= 0x6EB3E45306EB3ELL)
  {
    v6 = 0xDD67C8A60DD67CLL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::MetaInfo::Sense>>(a1, v6);
  }

  v13 = 0;
  v14 = 296 * v2;
  quasar::MetaInfo::Sense::Sense((296 * v2), a2);
  v15 = (296 * v2 + 296);
  v7 = *(a1 + 8);
  v8 = 296 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::MetaInfo::Sense>,quasar::MetaInfo::Sense*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<quasar::MetaInfo::Sense>::~__split_buffer(&v13);
  return v12;
}

void sub_1B56F501C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::MetaInfo::Sense>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::MetaInfo::Sense>,quasar::MetaInfo::Sense*>(uint64_t a1, void **a2, void **a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = 0;
    v7 = a2 + 17;
    do
    {
      v8 = &v7[v6];
      v9 = a4 + v6 * 8;
      v10 = *&a2[v6];
      *(v9 + 16) = v7[v6 - 15];
      *v9 = v10;
      *(v8 - 16) = 0;
      *(v8 - 15) = 0;
      *(v8 - 17) = 0;
      v11 = *&v7[v6 - 14];
      *(v9 + 40) = v7[v6 - 12];
      *(v9 + 24) = v11;
      *(v8 - 13) = 0;
      *(v8 - 12) = 0;
      *(v8 - 14) = 0;
      v12 = *&v7[v6 - 11];
      *(v9 + 64) = v7[v6 - 9];
      *(v9 + 48) = v12;
      *(v8 - 10) = 0;
      *(v8 - 9) = 0;
      *(v8 - 11) = 0;
      v13 = *&v7[v6 - 8];
      *(v9 + 88) = v7[v6 - 6];
      *(v9 + 72) = v13;
      *(v8 - 8) = 0;
      *(v8 - 7) = 0;
      *(v8 - 6) = 0;
      *(v9 + 96) = v7[v6 - 5];
      v14 = *&v7[v6 - 4];
      *(v9 + 120) = v7[v6 - 2];
      *(v9 + 104) = v14;
      *(v8 - 3) = 0;
      *(v8 - 2) = 0;
      *(v8 - 4) = 0;
      *(v9 + 128) = v7[v6 - 1];
      *(a4 + v6 * 8 + 136) = 0;
      *(v9 + 160) = 0;
      if (LOBYTE(v7[v6 + 3]) == 1)
      {
        v15 = *v8;
        *(a4 + v6 * 8 + 152) = v8[2];
        *(a4 + v6 * 8 + 136) = v15;
        v8[1] = 0;
        v8[2] = 0;
        *v8 = 0;
        *(v9 + 160) = 1;
      }

      v16 = v8 - 17;
      *(v9 + 168) = 0;
      *(v9 + 192) = 0;
      if (*(v16 + 192) == 1)
      {
        v17 = &v7[v6];
        v18 = *&v7[v6 + 4];
        *(v9 + 184) = v7[v6 + 6];
        *(v9 + 168) = v18;
        v17[5] = 0;
        v17[6] = 0;
        v17[4] = 0;
        *(v9 + 192) = 1;
      }

      v19 = a4 + v6 * 8;
      *(a4 + v6 * 8 + 200) = 0;
      *(a4 + v6 * 8 + 224) = 0;
      if (*(v16 + 224) == 1)
      {
        v20 = &v7[v6];
        v21 = *&v7[v6 + 8];
        *(a4 + v6 * 8 + 216) = v7[v6 + 10];
        *(a4 + v6 * 8 + 200) = v21;
        v20[9] = 0;
        v20[10] = 0;
        v20[8] = 0;
        *(v19 + 224) = 1;
      }

      *(v19 + 232) = 0;
      *(v19 + 256) = 0;
      if (*(v16 + 256) == 1)
      {
        v22 = &v7[v6];
        v23 = *&v7[v6 + 12];
        *(v19 + 248) = v7[v6 + 14];
        *(v19 + 232) = v23;
        v22[13] = 0;
        v22[14] = 0;
        v22[12] = 0;
        *(v19 + 256) = 1;
      }

      v24 = a4 + v6 * 8;
      *(v24 + 264) = 0;
      *(v24 + 288) = 0;
      if (*(v16 + 288) == 1)
      {
        v25 = &v7[v6];
        v26 = *&v7[v6 + 16];
        *(v24 + 280) = v7[v6 + 18];
        *(v24 + 264) = v26;
        v25[17] = 0;
        v25[18] = 0;
        v25[16] = 0;
        *(v24 + 288) = 1;
      }

      v6 += 37;
    }

    while (v16 + 37 != a3);
    while (v5 != a3)
    {
      quasar::MetaInfo::Sense::~Sense(v5);
      v5 = (v27 + 296);
    }
  }
}

uint64_t std::__split_buffer<quasar::MetaInfo::Sense>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 296;
    quasar::MetaInfo::Sense::~Sense((i - 296));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t getPropCheckTokenExistence(void)
{
  {
    operator new();
  }

  return getPropCheckTokenExistence(void)::p;
}

__int32 **TWord::TWord(__int32 **a1, __int32 *a2, __int32 *a3, __int32 *a4, __int32 *a5)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  a1[4] = 0;
  v8 = v10;
  v9 = xmmword_1B5AE2110;
  v11 = 1;
  getThirdField(a2, &v8);
  v6 = a1[4] & 0xFFFFFFFFFFFFFFFCLL;
  if (!*(&v9 + 1))
  {
    v6 |= 2uLL;
  }

  a1[4] = v6;
  if (v11 == 1 && v8 != v10 && v8)
  {
    MEMORY[0x1B8C85310]();
  }

  return a1;
}

void sub_1B56F54D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (LOBYTE(STACK[0x418]) == 1)
  {
    buildRegExp(&a9, v9);
  }

  _Unwind_Resume(a1);
}

BOOL TLexicon::applyMask(uint64_t a1, uint64_t a2, int *a3, uint64_t *a4)
{
  v4 = *a3;
  v5 = *a3 != 33;
  if (a2)
  {
    v6 = 0;
    v7 = &a3[*a3 == 33];
    while (1)
    {
      v8 = v7[v6];
      if (v8 != 48)
      {
        break;
      }

      ++v6;
    }

    if (v8)
    {
      v13 = v15;
      v14 = xmmword_1B5AE2110;
      v16 = 1;
      TLexicon::getOptionalTagBits(a1, a2, &v13, a4);
      if (v6 < *(&v14 + 1))
      {
        do
        {
          v9 = v7[v6];
          if (!v9)
          {
            break;
          }

          if (v9 != 48 && *&v13[4 * v6] == 49)
          {
            if (v16 == 1 && v13 != v15)
            {
              MEMORY[0x1B8C85310](v13, 0x1000C8052888210);
            }

            return v5;
          }

          ++v6;
        }

        while (*(&v14 + 1) != v6);
      }

      if (v16 == 1 && v13 != v15 && v13 != 0)
      {
        MEMORY[0x1B8C85310]();
      }
    }
  }

  return v4 == 33;
}

void sub_1B56F5638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (LOBYTE(STACK[0x418]) == 1)
  {
    buildRegExp(&a9, v9);
  }

  _Unwind_Resume(a1);
}

BOOL TLexicon::checkBits(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  if (!a2)
  {
    return 1;
  }

  if ((*a5 & 4) == 0)
  {
    TLexicon::getOptionalTagBits(a1, a2, 0, a5);
  }

  if (!a4)
  {
    return 0;
  }

  v8 = *a5;
  v9 = a4 - 1;
  do
  {
    v10 = *a3++;
    result = ((1 << v10) & v8) != 0;
  }

  while (((1 << v10) & v8) == 0 && v9-- != 0);
  return result;
}

void TLexicon::getCategoryTag(void *a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  TBuffer<wchar_t>::assign(a3, dword_1B5B1DF50);
  if (a2)
  {
    v6 = a1[47];
    if (v6)
    {
      if (a1[48])
      {
        v7 = v6 + 7;
        if (v7 <= 0x807)
        {
          SDWord_GetTagBits(a1[11], a2, 1, v13, v7 >> 3);
          v8 = a1[47];
          if (v8)
          {
            v9 = 0;
            v10 = 0;
            do
            {
              v10 |= ((*(v13 + (v9 >> 3)) >> (v9 & 7) << 63) >> 63) & (1 << v9);
              ++v9;
            }

            while (v8 != v9);
          }

          else
          {
            v10 = 0;
          }

          TBuffer<wchar_t>::resize(a3, 0);
          TLocaleInfo::multiByteToUnicode((a1 + 28), (a1[50] + v10 + v10 * a1[49]), a1[49], a3);
          v11 = a3[2];
          if (v11)
          {
            v12 = 0;
            while (*(*a3 + 4 * v12) != 32)
            {
              if (v11 == ++v12)
              {
                return;
              }
            }

            TBuffer<wchar_t>::resize(a3, v12);
          }
        }
      }
    }
  }
}

void TLexicon::getOptionalTagBits(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    TBuffer<wchar_t>::resize(a3, 0);
    v8 = *(a1 + 368);
    if (*(a3 + 1048) == 1 && *(a3 + 8) < v8)
    {
      *(a3 + 8) = v8 + 1;
      operator new[]();
    }

    v9 = *(a3 + 16);
    if (v9 >= v8)
    {
      goto LABEL_11;
    }

    v10 = *(a1 + 368);
    if ((*(a3 + 1048) & 1) == 0)
    {
      v10 = *(a3 + 8);
      if (v9 >= v10)
      {
LABEL_11:
        *(a3 + 16) = v8;
        goto LABEL_12;
      }

      if (v10 >= v8)
      {
        v10 = *(a1 + 368);
      }
    }

    memset_pattern16((*a3 + 4 * v9), "0", 4 * (v10 - v9));
    goto LABEL_11;
  }

LABEL_12:
  if (a2)
  {
    v11 = *(a1 + 368);
    if (v11)
    {
      v12 = v11 + 7;
      if (v12 <= 0x807)
      {
        SDWord_GetTagBits(*(a1 + 88), a2, 2, v18, v12 >> 3);
        if (a3)
        {
          v13 = *(a1 + 368);
          if (v13)
          {
            for (i = 0; i != v13; ++i)
            {
              if ((*(v18 + (i >> 3)) >> (i & 7)))
              {
                *(*a3 + 4 * i) = 49;
              }
            }
          }
        }

        if (a4)
        {
          v15 = 0;
          v16 = *a4 | 4;
          do
          {
            v17 = v16 & ~(8 << v15);
            v16 |= 8 << v15;
            if (((*(v18 + (*&TWord::ms_pnOTBIndex[8 * v15] >> 3)) >> (*&TWord::ms_pnOTBIndex[8 * v15] & 7)) & 1) == 0)
            {
              v16 = v17;
            }

            *a4 = v16;
            ++v15;
          }

          while (v15 != 5);
        }
      }
    }
  }
}

uint64_t *TWord::getOptionalTagBits(TWord *this)
{
  v1 = (this + 32);
  if ((*(this + 32) & 4) == 0)
  {
    TLexicon::getOptionalTagBits(*(this + 1), *(this + 2), 0, v1);
  }

  return v1;
}

uint64_t TLexicon::getWrittenForm(int a1, __int32 *__s, uint64_t a3)
{
  v5 = wcschr(__s, 92);
  if (v5)
  {
    if (v5 == __s)
    {
      v6 = __s[1];
      if (v6 == 92 || v6 == 0)
      {
        ++v5;
      }

      else
      {
        v5 = __s;
      }
    }

    v8 = v5 - __s;
    TBuffer<wchar_t>::resize(a3, 0);

    return TBuffer<wchar_t>::insert(a3, 0, __s, v8);
  }

  else
  {

    return TBuffer<wchar_t>::assign(a3, __s);
  }
}

uint64_t TLexicon::getTokenName(int a1, __int32 *a2, uint64_t a3)
{
  TLexicon::getWrittenForm(a1, a2, a3);
  v6 = v8;
  v7 = xmmword_1B5AE2110;
  v9 = 1;
  result = getSecondField(a2, &v6);
  if (*(&v7 + 1))
  {
    TBuffer<wchar_t>::insert(a3, *(a3 + 16), dword_1B5B1DF44, 1uLL);
    result = TBuffer<wchar_t>::operator+=(a3, &v6);
  }

  if (v9 == 1)
  {
    result = v6;
    if (v6 != v8)
    {
      if (v6)
      {
        return MEMORY[0x1B8C85310]();
      }
    }
  }

  return result;
}

void sub_1B56F5C58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (LOBYTE(STACK[0x418]) == 1)
  {
    buildRegExp(&a9, v9);
  }

  _Unwind_Resume(a1);
}

uint64_t TWord::getWordSpec(TWord *this)
{
  if (*(this + 2))
  {
    return *(*(this + 1) + 88);
  }

  else
  {
    return 0;
  }
}

uint64_t TLexicon::findHeadClone(void *a1, __int32 *a2)
{
  v9 = v11;
  v10 = xmmword_1B5AE2110;
  v12 = 1;
  TLexicon::getTokenName(a1, a2, &v9);
  if (*(&v10 + 1) >= v10)
  {
    if (v12)
    {
      v13 = 0;
      TBuffer<wchar_t>::insert(&v9, *(&v10 + 1), &v13, 1uLL);
      v3 = v9;
      --*(&v10 + 1);
    }

    else
    {
      v3 = v9;
      if (v10)
      {
        v9[v10 - 1] = 0;
      }
    }
  }

  else
  {
    v3 = v9;
    v9[*(&v10 + 1)] = 0;
  }

  Word = TLexicon::findWord(a1, v3);
  v5 = Word;
  if (!Word || (*(Word + 32) & 2) == 0)
  {
    if (*(&v10 + 1) >= v10)
    {
      if (v12)
      {
        v13 = 0;
        TBuffer<wchar_t>::insert(&v9, *(&v10 + 1), &v13, 1uLL);
        v6 = v9;
        --*(&v10 + 1);
      }

      else
      {
        v6 = v9;
        if (v10)
        {
          v9[v10 - 1] = 0;
        }
      }
    }

    else
    {
      v6 = v9;
      v9[*(&v10 + 1)] = 0;
    }

    v7 = TLexicon::computeClones(a1, v6);
    if (v7)
    {
      v5 = **(v7 + 16);
    }

    else
    {
      v5 = 0;
    }
  }

  if (v12 == 1 && v9 != v11 && v9)
  {
    MEMORY[0x1B8C85310]();
  }

  return v5;
}

void sub_1B56F5E10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (LOBYTE(STACK[0x420]) == 1 && a10 != v10 && a10 != 0)
  {
    MEMORY[0x1B8C85310]();
  }

  _Unwind_Resume(a1);
}

void TWord::getClones(uint64_t a1, void *a2)
{
  std::vector<TSymbol const*>::resize(a2, 0);
  v13 = v15;
  v14 = xmmword_1B5AE2110;
  v16 = 1;
  TLexicon::getTokenName(v4, *a1, &v13);
  v5 = *(a1 + 8);
  if (*(&v14 + 1) >= v14)
  {
    if (v16)
    {
      v17 = 0;
      TBuffer<wchar_t>::insert(&v13, *(&v14 + 1), &v17, 1uLL);
      v6 = v13;
      --*(&v14 + 1);
    }

    else
    {
      v6 = v13;
      if (v14)
      {
        v13[v14 - 1] = 0;
      }
    }
  }

  else
  {
    v6 = v13;
    v13[*(&v14 + 1)] = 0;
  }

  v7 = TLexicon::computeClones(v5, v6);
  v8 = v7;
  if (v7)
  {
    std::vector<TVertex const*>::reserve(a2, *(v7 + 8) - 1);
    v9 = *(v8 + 8);
    if (v9)
    {
      v10 = *(v8 + 16);
      v11 = v10;
      do
      {
        if (*v11 != a1)
        {
          std::vector<TVertex const*>::push_back[abi:ne200100](a2, v11);
          v9 = *(v8 + 8);
          v10 = *(v8 + 16);
        }

        ++v11;
      }

      while (v11 != &v10[v9]);
    }
  }

  if (v16 == 1 && v13 != v15 && v13 != 0)
  {
    MEMORY[0x1B8C85310]();
  }
}

void sub_1B56F5FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (LOBYTE(STACK[0x420]) == 1 && a10 != v10)
  {
    if (a10)
    {
      MEMORY[0x1B8C85310]();
    }
  }

  _Unwind_Resume(a1);
}

uint64_t TLexicon::computeClones(uint64_t a1, __int32 *a2)
{
  v47 = *MEMORY[0x1E69E9840];
  ++*(a1 + 464);
  std::wstring::basic_string[abi:ne200100]<0>(&__p, a2);
  v4 = std::__tree<std::__value_type<std::wstring,unsigned long>,std::__map_value_compare<std::wstring,std::__value_type<std::wstring,unsigned long>,std::less<std::wstring>,true>,std::allocator<std::__value_type<std::wstring,unsigned long>>>::find<std::wstring>(a1 + 160, &__p);
  if (SHIBYTE(v36) < 0)
  {
    operator delete(__p);
  }

  if (a1 + 168 != v4)
  {
    ++*(a1 + 488);
    return *(v4 + 56);
  }

  Word = TLexicon::findWord(a1, a2);
  if (Word && (*(Word + 32) & 1) != 0)
  {
    v5 = 0;
    ++*(a1 + 488);
    return v5;
  }

  __p = v37;
  v36 = xmmword_1B5AE2110;
  v38 = 1;
  getSecondField(a2, &__p);
  v43 = v45;
  v44 = xmmword_1B5AE2110;
  v46 = 1;
  TLocaleInfo::unicodeToMultiByte(a1 + 224, a2, &v43);
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  v8 = *(a1 + 88);
  if (*(&v44 + 1) >= v44)
  {
    if (v46)
    {
      LOBYTE(v24) = 0;
      TBuffer<char>::insert(&v43, *(&v44 + 1), &v24, 1uLL);
      --*(&v44 + 1);
    }

    else if (v44)
    {
      v43[v44 - 1] = 0;
    }
  }

  else
  {
    v43[*(&v44 + 1)] = 0;
  }

  if (*(&v36 + 1))
  {
    v9 = "\";
  }

  else
  {
    v9 = "\\\";
  }

  SDVoc_GetWords(v8, 2, v43, v9, *(a1 + 424), *(a1 + 408), &v34, &v32, &v33, callBackMRECArrayReallocator, 0, &v31);
  v29 = 0;
  v28 = 0;
  v30 = 0;
  if (v34)
  {
    for (i = 0; i < v34; ++i)
    {
      ++*(a1 + 504);
      v11 = *(v32 + 8 * i);
      v12 = TStringParam::get((*(a1 + 320) + 488));
      if (!TLexicon::applyMask(a1, v11, v12, 0))
      {
        if (SDWord_GetName(*(a1 + 88), v11, v42, 0x100uLL) < 0x101)
        {
          v24 = v26;
          v25 = xmmword_1B5AE2110;
          v27 = 1;
          if (TLocaleInfo::multiByteToUnicode(a1 + 224, v42, &v24))
          {
            tknPrintf("Warning: '%s' : Can't convert to Unicode. Ignored.\n", v42);
          }

          else
          {
            if (*(&v25 + 1) >= v25)
            {
              if (v27)
              {
                LODWORD(v39[0]) = 0;
                TBuffer<wchar_t>::insert(&v24, *(&v25 + 1), v39, 1uLL);
                v13 = v24;
                --*(&v25 + 1);
              }

              else
              {
                v13 = v24;
                if (v25)
                {
                  *(v24 + v25 - 1) = 0;
                }
              }
            }

            else
            {
              v13 = v24;
              *(v24 + *(&v25 + 1)) = 0;
            }

            v41[0] = v13;
            v41[1] = 0;
            THashBase<std::pair<wchar_t const* const,TWord *>,THashMapCompare<std::pair<wchar_t const* const,TWord *>,TWideCharEqualTo>,THashMapFunction<std::pair<wchar_t const* const,TWord *>,THash<wchar_t const*>>>::find(a1 + 184, v41, v39);
            if (!v40)
            {
              v23 = 0;
LABEL_35:
              operator new[]();
            }

            v23 = *(v40 + 16);
            if (!v23)
            {
              goto LABEL_35;
            }

            std::vector<TVertex *>::push_back[abi:ne200100](&v28, &v23);
          }

          if (v27 == 1 && v24 != v26 && v24)
          {
            MEMORY[0x1B8C85310]();
          }
        }

        else
        {
          tknPrintf("Warning: The voc contains a >= %llu-byte word name, prefix is '%s'. Ignored.\n", 256, v42);
        }
      }
    }
  }

  if (v32 != *(a1 + 424))
  {
    tknPrintf("Warning: Inefficient head-clone search. Required dynamic allocation of size %llu\n", v33);
    v14 = *(a1 + 424);
    if (v14)
    {
      MEMORY[0x1B8C85310](v14, 0x80C80B8603338);
    }

    *(a1 + 424) = v32;
    *(a1 + 408) = v33;
  }

  v15 = v28;
  v16 = v29;
  if (v28 == v29)
  {
    v5 = 0;
    if (!v28)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v17 = *v28;
    v18 = *(*v28 + 32);
    *(*v28 + 32) = v18 | 1;
    v19 = (v16 - v15) >> 3;
    v20 = v19 - 1;
    if (v19 > 1 || (v18 & 2) == 0)
    {
      *(v17 + 32) = v18 | 3;
      if (v19 >= 2)
      {
        v21 = v15 + 1;
        do
        {
          v22 = *v21++;
          *(v22 + 32) |= 1uLL;
          --v20;
        }

        while (v20);
      }

      TWordBlock::create();
    }

    v5 = 0;
  }

  v29 = v15;
  operator delete(v15);
LABEL_52:
  if (v46 == 1 && v43 != v45 && v43)
  {
    MEMORY[0x1B8C85310]();
  }

  if (v38 == 1 && __p != v37 && __p)
  {
    MEMORY[0x1B8C85310]();
  }

  return v5;
}

void sub_1B56F6644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  v24 = STACK[0x468];
  if (STACK[0x468])
  {
    STACK[0x470] = v24;
    operator delete(v24);
  }

  if (LOBYTE(STACK[0xB08]) == 1)
  {
    v25 = STACK[0x9F0];
    if (STACK[0x9F0] != a13)
    {
      if (v25)
      {
        MEMORY[0x1B8C85310](v25, 0x1000C8077774924);
      }
    }
  }

  if (LOBYTE(STACK[0x8B8]) == 1)
  {
    v26 = STACK[0x4A0];
    if (STACK[0x4A0] != a14)
    {
      if (v26)
      {
        MEMORY[0x1B8C85310](v26, 0x1000C8052888210);
      }
    }
  }

  _Unwind_Resume(a1);
}

uint64_t *TLexiconScore::TLexiconScore(uint64_t *a1, const __int32 *a2, unsigned int *a3, size_t a4, size_t a5, uint64_t a6)
{
  *(a1 + 8) = 0;
  *a1 = 0;
  v12 = wcslen(a3);
  if (!wcsncmp(a2, a3, v12))
  {
    return a1;
  }

  if (!*a2)
  {
    v34 = 0;
    goto LABEL_79;
  }

  v13 = a2;
  v14 = a3;
  while (*v14)
  {
    v52 = 0;
    TCollation::collateNext((a6 + 16), v13, &v52);
    v51 = 0;
    TCollation::collateNext((a6 + 16), v14, &v51);
    if (v52 != v51 || (v15 = TLocaleInfo::removeDiacritics(a6, *v13), v16 = TLocaleInfo::toLower(a6, v15), v17 = TLocaleInfo::removeDiacritics(a6, *v14), v16 != TLocaleInfo::toLower(a6, v17)))
    {
      ++*(a1 + 8);
    }

    v18 = *v13;
    {
      operator new();
    }

    if (!TLocaleInfo::isAlpha(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v18))
    {
      goto LABEL_59;
    }

    v19 = *v14;
    {
      operator new();
    }

    if (!TLocaleInfo::isAlpha(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v19))
    {
      goto LABEL_59;
    }

    v20 = *v13;
    {
      operator new();
    }

    if (TLocaleInfo::isLower(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v20))
    {
      v21 = *v14;
      {
        operator new();
      }

      if (TLocaleInfo::isUpper(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v21))
      {
        v22 = *a1;
        if (v14 == a3)
        {
          v23 = v22 | 1;
        }

        else
        {
          v23 = v22 | 4;
        }

LABEL_26:
        *a1 = v23;
        goto LABEL_27;
      }
    }

    v24 = *v13;
    {
      operator new();
    }

    if (TLocaleInfo::isUpper(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v24))
    {
      v25 = *v14;
      {
        operator new();
      }

      if (TLocaleInfo::isLower(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v25))
      {
        v26 = *a1;
        if (v13 == a2)
        {
          v23 = v26 | 2;
        }

        else
        {
          v23 = v26 | 8;
        }

        goto LABEL_26;
      }
    }

LABEL_27:
    v47 = v49;
    v48 = xmmword_1B5AE2110;
    v50 = 1;
    v43 = v45;
    v44 = xmmword_1B5AE2110;
    v46 = 1;
    TLocaleInfo::decomposeCharacter(a6, *v13, &v47);
    TLocaleInfo::decomposeCharacter(a6, *v14, &v43);
    if (*(&v48 + 1) >= v48)
    {
      if (v50)
      {
        v53[0] = 0;
        TBuffer<wchar_t>::insert(&v47, *(&v48 + 1), v53, 1uLL);
        v27 = v47;
        --*(&v48 + 1);
      }

      else
      {
        v27 = v47;
        if (v48)
        {
          *&v47[4 * v48 - 4] = 0;
        }
      }
    }

    else
    {
      v27 = v47;
      *&v47[4 * *(&v48 + 1)] = 0;
    }

    if (*(&v44 + 1) >= v44)
    {
      if (v46)
      {
        v53[0] = 0;
        TBuffer<wchar_t>::insert(&v43, *(&v44 + 1), v53, 1uLL);
        v28 = v43;
        --*(&v44 + 1);
      }

      else
      {
        v28 = v43;
        if (v44)
        {
          *&v43[4 * v44 - 4] = 0;
        }
      }
    }

    else
    {
      v28 = v43;
      *&v43[4 * *(&v44 + 1)] = 0;
    }

    if (!wcscmp((v27 + 4), (v28 + 4)))
    {
      goto LABEL_51;
    }

    v29 = *v13;
    {
      operator new();
    }

    if (TLocaleInfo::isUpper(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v29))
    {
      if (*(&v48 + 1) < 2uLL)
      {
        goto LABEL_51;
      }

      v30 = *v14;
      {
        operator new();
      }

      isLower = TLocaleInfo::isLower(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v30);
      v32 = *(&v44 + 1) > 1uLL ? 1 : isLower;
      if ((v32 & 1) == 0)
      {
        goto LABEL_51;
      }

      v33 = 32;
    }

    else
    {
      v33 = 16;
    }

    *a1 |= v33;
LABEL_51:
    if (v46 == 1 && v43 != v45 && v43)
    {
      MEMORY[0x1B8C85310]();
    }

    if (v50 == 1 && v47 != v49 && v47)
    {
      MEMORY[0x1B8C85310]();
    }

LABEL_59:
    v13 += v52;
    v14 += v51;
    if (!*v13)
    {
      break;
    }
  }

  v34 = *a1;
LABEL_79:
  v35 = wcslen(a3);
  v36 = (v34 & 5) != 0;
  v37 = v35 < a5;
  v38 = v36 && v37;
  if (v36 && v37)
  {
    v39 = v34 | 0x40;
  }

  else
  {
    v39 = v34;
  }

  v41 = (v39 & 0x30) != 0 && v35 < a4;
  if (v38 || v41)
  {
    if (v41)
    {
      v39 |= 0x80uLL;
    }

    *a1 = v39;
  }

  return a1;
}

void sub_1B56F6E10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  MEMORY[0x1B8C85350](a10, 0x1070C40ADD13FEBLL);
  if (LOBYTE(STACK[0x458]) == 1 && a17 != v17 && a17)
  {
    MEMORY[0x1B8C85310]();
  }

  if (LOBYTE(STACK[0x878]) == 1)
  {
    v19 = STACK[0x460];
    if (STACK[0x460] != a16)
    {
      if (v19)
      {
        MEMORY[0x1B8C85310](v19, 0x1000C8052888210);
      }
    }
  }

  _Unwind_Resume(a1);
}

uint64_t TCollation::collateNext(void *a1, unsigned int *a2, unint64_t *a3)
{
  v4 = a1[3];
  v5 = a1[4];
  result = *a2;
  v7 = v4 == v5 || result == 0;
  if (!v7 && a2[1])
  {
    return TCollation::collateCharSlow(a1, a2, a3);
  }

  *a3 = 1;
  v8 = a1[2];
  if (v8)
  {
    if (result < 0x10000)
    {
      return *(v8 + 4 * result);
    }
  }

  return result;
}

void TLexiconParamManager::TLexiconParamManager(TLexiconParamManager *this, TLexicon *a2)
{
  TParamManager::TParamManager(this, 1, (a2 + 224));
  *v4 = &unk_1F2D29DE8;
  v5 = (v4 + 17);
  TIntParam::TIntParam((v4 + 17), &unk_1B5B1AA88, &unk_1B5B1AAE4, 256, 2, 4, 4, &unk_1B5B1AED4, &unk_1B5B1AF0C);
  TStringParam::TStringParam(this + 488, &unk_1B5B1AF10, &unk_1B5B1AF48, 0, &unk_1B5B1B2FC, &unk_1B5B1B414, &unk_1B5B1AF0C);
  TIntParam::TIntParam((this + 1864), &unk_1B5B1B44C, &unk_1B5B1B4D8, 0, 1, 256, 4, &unk_1B5B1B414, &unk_1B5B1BC64);
  TIntParam::TIntParam((this + 2216), &unk_1B5B1BCA4, &unk_1B5B1BD28, 0, 1, 256, 4, &unk_1B5B1B414, &unk_1B5B1BC64);
  TIntParam::TIntParam((this + 2568), &unk_1B5B1C548, &unk_1B5B1C5F0, 0, 0, 0x7FFFFFFF, 2000, &unk_1B5B1B414, &unk_1B5B1AF0C);
  TIntParam::TIntParam((this + 2920), &unk_1B5B1C760, &unk_1B5B1C810, 0, 0, 0x7FFFFFFF, 5000, &unk_1B5B1B414, &unk_1B5B1AF0C);
  TStringParam::TStringParam(this + 3272, &unk_1B5B1CA1C, &unk_1B5B1CA50, 256, &unk_1B5B1AF0C, &unk_1B5B1CB6C, &unk_1B5B1AF0C);
  TStringParam::TStringParam(this + 4648, &unk_1B5B1CBA4, &unk_1B5B1CBD4, 0, &unk_1B5B1AF0C, &unk_1B5B1CCF4, &unk_1B5B1AF0C);
  TStringParam::TStringParam(this + 6024, &unk_1B5B1CD2C, &unk_1B5B1CD68, 0, &unk_1B5B1AF0C, &unk_1B5B1CCF4, &unk_1B5B1AF0C);
  TStringParam::TStringParam(this + 7400, &unk_1B5B1CE90, &unk_1B5B1CED8, 0, &unk_1B5B1AF0C, &unk_1B5B1CCF4, &unk_1B5B1AF0C);
  TStringParam::TStringParam(this + 8776, &unk_1B5B1D018);
  TStringParam::TStringParam(this + 10152, &unk_1B5B1D078, &unk_1B5B1D0C0, 0, &unk_1B5B1AF0C, &unk_1B5B1CCF4, &unk_1B5B1AF0C);
  TStringParam::TStringParam(this + 11528, &unk_1B5B1D160, &unk_1B5B1D1A4, 0, &unk_1B5B1AF0C, &unk_1B5B1CCF4, &unk_1B5B1AF0C);
  TStringParam::TStringParam(this + 12904, &unk_1B5B1D2D0, &unk_1B5B1D32C, 0, &unk_1B5B1AF0C, &unk_1B5B1CCF4, &unk_1B5B1AF0C);
  TStringParam::TStringParam(this + 14280, &unk_1B5B1D3E4, &unk_1B5B1D43C, 0, &unk_1B5B1AF0C, &unk_1B5B1CCF4, &unk_1B5B1AF0C);
  TStringParam::TStringParam(this + 15656, &unk_1B5B1D568);
  TStringParam::TStringParam(this + 17032, &unk_1B5B1D5C0, &unk_1B5B1D5F8, 0, &unk_1B5B1AF0C, &unk_1B5B1CCF4, &unk_1B5B1AF0C);
  TStringParam::TStringParam(this + 18408, &unk_1B5B1D700, &unk_1B5B1D734, 0, &unk_1B5B1AF0C, &unk_1B5B1CCF4, &unk_1B5B1AF0C);
  TStringParam::TStringParam(this + 19784, &unk_1B5B1D7A0, &unk_1B5B1D7D4, 0, &unk_1B5B1AF0C, &unk_1B5B1CCF4, &unk_1B5B1AF0C);
  TIntParam::TIntParam((this + 21160), &unk_1B5B1D840, &unk_1B5B1D884, 0, 0, 99, 29, &unk_1B5B1CCF4, &unk_1B5B1AF0C);
  TBoolParam::TBoolParam(this + 21512, &unk_1B5B1DB14, &unk_1B5B1DB60, 0, 0, &unk_1B5B1B414, &unk_1B5B1AF0C);
  TParamManager::add(this, v5);
  TParamManager::add(this, (this + 488));
  TParamManager::add(this, (this + 1864));
  TParamManager::add(this, (this + 2216));
  TParamManager::add(this, (this + 2568));
  TParamManager::add(this, (this + 2920));
  TParamManager::add(this, (this + 3272));
  TParamManager::add(this, (this + 4648));
  TParamManager::add(this, (this + 6024));
  TParamManager::add(this, (this + 7400));
  MEMORY[0x1B8C84940](this + 8816, &unk_1B5B1DBC8);
  MEMORY[0x1B8C84940](this + 8840, &unk_1B5B1CCF4);
  MEMORY[0x1B8C84940](this + 8864, &unk_1B5B1AF0C);
  std::vector<std::wstring>::vector[abi:ne200100](v13, 4uLL);
  std::vector<std::wstring>::vector[abi:ne200100](v12, 4uLL);
  v6 = 0;
  v7 = &unk_1B5B1DCC0;
  do
  {
    MEMORY[0x1B8C84940](&v13[0][v6], v7);
    v7 += wcslen(v7) + 1;
    ++v6;
  }

  while (v6 != 4);
  TStringParam::setAllowables(this + 8776, v13, 0, 0);
  TStringParam::setOriginal(this + 1097, 0, dword_1B5B1DD1C);
  TParamManager::add(this, (this + 8776));
  v14 = v12;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v14);
  v12[0] = v13;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v12);
  TParamManager::add(this, (this + 10152));
  TParamManager::add(this, (this + 11528));
  TParamManager::add(this, (this + 12904));
  TParamManager::add(this, (this + 14280));
  MEMORY[0x1B8C84940](this + 15696, &unk_1B5B1DD30);
  MEMORY[0x1B8C84940](this + 15720, &unk_1B5B1DE18);
  MEMORY[0x1B8C84940](this + 15744, &unk_1B5B1AF0C);
  std::vector<std::wstring>::vector[abi:ne200100](v13, 3uLL);
  std::vector<std::wstring>::vector[abi:ne200100](v12, 3uLL);
  v8 = 0;
  v9 = &unk_1B5B1DE58;
  v10 = &unk_1B5B1DEF0;
  do
  {
    MEMORY[0x1B8C84940](&v13[0][v8 / 3], v9);
    if (v10)
    {
      MEMORY[0x1B8C84940](&v12[0][v8], v10);
      v10 += wcslen(v10) + 1;
    }

    v9 += wcslen(v9) + 1;
    v8 += 3;
  }

  while (v8 != 9);
  if (v10)
  {
    v11 = v12;
  }

  else
  {
    v11 = 0;
  }

  TStringParam::setAllowables(this + 15656, v13, v11, 0);
  TStringParam::setOriginal(this + 1957, 0, dword_1B5B1DF0C);
  TParamManager::add(this, (this + 15656));
  v14 = v12;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v14);
  v12[0] = v13;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v12);
  TParamManager::add(this, (this + 17032));
  TParamManager::add(this, (this + 18408));
  TParamManager::add(this, (this + 19784));
  TParamManager::add(this, (this + 21160));
  TParamManager::add(this, (this + 21512));
  *(this + 2720) = a2;
}

void sub_1B56F76FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13)
{
  a10 = &a13;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  TBoolParam::~TBoolParam((v13 + v16));
  TParam::~TParam((v13 + v15));
  TStringParam::~TStringParam(v13 + 2473);
  TStringParam::~TStringParam(v13 + 2301);
  TStringParam::~TStringParam(v13 + 2129);
  TStringParam::~TStringParam((v13 + v18));
  TStringParam::~TStringParam(v13 + 1785);
  TStringParam::~TStringParam(v13 + 1613);
  TStringParam::~TStringParam(v13 + 1441);
  TStringParam::~TStringParam(v13 + 1269);
  TStringParam::~TStringParam((v13 + v17));
  TStringParam::~TStringParam(v13 + 925);
  TStringParam::~TStringParam(v13 + 753);
  TStringParam::~TStringParam(v13 + 581);
  TStringParam::~TStringParam(v13 + 409);
  TParam::~TParam(v13 + 365);
  TParam::~TParam(v13 + 321);
  TParam::~TParam(v13 + 277);
  TParam::~TParam(v13 + 233);
  TStringParam::~TStringParam(v13 + 61);
  TParam::~TParam(v14);
  TParamManager::~TParamManager(v13);
  _Unwind_Resume(a1);
}

char *TLexiconParamManager::notifyChange(char *this, const TParam *a2)
{
  if (this + 4648 == a2)
  {
    v2 = *(this + 2720);
    this = TStringParam::get((this + 4648));
    *(v2 + 232) = this;
  }

  return this;
}

void TLexicon::TLexicon(TLexicon *this, TDataManager *a2, void *a3)
{
  TAllocator::TAllocator(this, 2048);
  *(v5 + 56) = 0;
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
  *(v5 + 96) = 0;
  *(v5 + 104) = 0;
  *(v5 + 112) = 0;
  *(v5 + 136) = 0;
  *(v5 + 144) = 0;
  *(v5 + 154) = 1;
  *(v5 + 120) = &unk_1F2D29E90;
  *(v5 + 128) = 0;
  *(v5 + 168) = 0;
  *(v5 + 160) = v5 + 168;
  *(v5 + 200) = 0;
  *(v5 + 208) = 0;
  *(v5 + 192) = 0;
  *(v5 + 218) = 1;
  *(v5 + 176) = 0;
  *(v5 + 184) = &unk_1F2D29EC8;
  TLocaleInfo::TLocaleInfo((v5 + 224));
  *(this + 11) = a3;
  operator new();
}

void sub_1B56F862C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, void *a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a46 < 0)
  {
    operator delete(__p);
    if ((v48 & 1) == 0)
    {
LABEL_6:
      if (a24 < 0)
      {
        operator delete(a19);
      }

      TEnvManager::~TEnvManager(&a31);
      if (a2 == 1)
      {
        __cxa_begin_catch(a1);
        v55 = *(v46 + 336);
        if (v55)
        {
          TDataSaver::~TDataSaver(v55);
          MEMORY[0x1B8C85350]();
        }

        v56 = *(v46 + 320);
        if (v56)
        {
          (*(*v56 + 8))(v56);
        }

        v57 = *(v46 + 328);
        if (v57)
        {
          (*(*v57 + 8))(v57);
        }

        v58 = *(v46 + 400);
        if (v58)
        {
          MEMORY[0x1B8C85310](v58, 0x1000C8077774924);
        }

        v59 = *(v46 + 424);
        if (v59)
        {
          MEMORY[0x1B8C85310](v59, 0x80C80B8603338);
        }

        v60 = *(v46 + 432);
        if (v60)
        {
          MEMORY[0x1B8C85310](v60, 0x80C80B8603338);
        }

        __cxa_rethrow();
      }

      TCollation::~TCollation((v46 + 240));
      THashBase<std::pair<wchar_t const* const,TWord *>,THashMapCompare<std::pair<wchar_t const* const,TWord *>,TWideCharEqualTo>,THashMapFunction<std::pair<wchar_t const* const,TWord *>,THash<wchar_t const*>>>::~THashBase(v50);
      std::__tree<std::string>::destroy(v49, *v52);
      THashBase<std::pair<wchar_t * const,TWordBlock *>,THashMapCompare<std::pair<wchar_t * const,TWordBlock *>,TWideCharEqualTo>,THashMapFunction<std::pair<wchar_t * const,TWordBlock *>,THash<wchar_t const*>>>::~THashBase(a15);
      v61 = *a14;
      if (*a14)
      {
        *(v46 + 104) = v61;
        operator delete(v61);
      }

      if (*(v46 + 79) < 0)
      {
        operator delete(*v47);
      }

      TAllocator::clear(v46);
      _Unwind_Resume(a1);
    }
  }

  else if (!v48)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v51);
  goto LABEL_6;
}

void sub_1B56F899C(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1B56F89A8);
  }

  __clang_call_terminate(a1);
}

void TLexicon::overrideCollation(TLexicon *this)
{
  v50 = *MEMORY[0x1E69E9840];
  v2 = *(this + 12);
  v3 = *(this + 13);
  if (v3 != v2)
  {
    v4 = 0;
    v5 = 1;
    do
    {
      v6 = v2[v5];
      if (v6)
      {
        MEMORY[0x1B8C85310](v6, 0x1000C8052888210);
        v2 = *(this + 12);
        v3 = *(this + 13);
      }

      ++v4;
      v5 += 2;
    }

    while (v4 < (v3 - v2) >> 4);
  }

  *(this + 13) = v2;
  v7 = *(this + 30);
  v8 = *(this + 31);
  v41 = v43;
  v42 = xmmword_1B5AE2110;
  v44 = 1;
  __s = v48;
  v47 = xmmword_1B5AE2110;
  v49 = 1;
  memset(&v40, 0, sizeof(v40));
  v9 = v2;
  v36 = v7;
  if (v7)
  {
    v37 = 1;
    do
    {
      TBuffer<wchar_t>::resize(&v41, 0);
      std::vector<std::string>::resize(&v40, 0);
      v10 = v8;
      if (*v8)
      {
        v10 = v8;
        do
        {
          TBuffer<char>::resize(&__s, 0);
          TLocaleInfo::unicodeToMultiByte(this + 224, v10, &__s);
          begin = v40.__begin_;
          if (v40.__end_ == v40.__begin_)
          {
            goto LABEL_26;
          }

          v12 = 0;
          v13 = 1;
          do
          {
            v14 = &begin[v12];
            if (SHIBYTE(begin[v12].__r_.__value_.__r.__words[2]) < 0)
            {
              v14 = *v14;
            }

            v15 = *(this + 11);
            v16 = *(this + 20);
            if (*(&v47 + 1) >= v47)
            {
              if (v49)
              {
                LOBYTE(v45.__first_) = 0;
                TBuffer<char>::insert(&__s, *(&v47 + 1), &v45, 1uLL);
                --*(&v47 + 1);
              }

              else if (v47)
              {
                __s[v47 - 1] = 0;
              }
            }

            else
            {
              __s[*(&v47 + 1)] = 0;
            }

            v17 = SDColl_StringCompare(v15, v16, v14, __s);
            begin = v40.__begin_;
            v18 = v13++ >= 0xAAAAAAAAAAAAAAABLL * ((v40.__end_ - v40.__begin_) >> 3);
            ++v12;
          }

          while (!v18 && v17 != 0);
          if (v17)
          {
LABEL_26:
            v20 = 0;
              ;
            }

            TBuffer<wchar_t>::insert(&v41, *(&v42 + 1), v10, v20 - 1);
            LODWORD(v45.__first_) = 0;
            TBuffer<wchar_t>::insert(&v41, *(&v42 + 1), &v45, 1uLL);
            if (*(&v47 + 1) >= v47)
            {
              if (v49)
              {
                LOBYTE(v45.__first_) = 0;
                TBuffer<char>::insert(&__s, *(&v47 + 1), &v45, 1uLL);
                --*(&v47 + 1);
              }

              else if (v47)
              {
                __s[v47 - 1] = 0;
              }
            }

            else
            {
              __s[*(&v47 + 1)] = 0;
            }

            std::string::basic_string[abi:ne200100]<0>(__p, __s);
            end = v40.__end_;
            if (v40.__end_ >= v40.__end_cap_.__value_)
            {
              v24 = 0xAAAAAAAAAAAAAAABLL * ((v40.__end_ - v40.__begin_) >> 3);
              v25 = v24 + 1;
              if (v24 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              if (0x5555555555555556 * ((v40.__end_cap_.__value_ - v40.__begin_) >> 3) > v25)
              {
                v25 = 0x5555555555555556 * ((v40.__end_cap_.__value_ - v40.__begin_) >> 3);
              }

              if (0xAAAAAAAAAAAAAAABLL * ((v40.__end_cap_.__value_ - v40.__begin_) >> 3) >= 0x555555555555555)
              {
                v26 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v26 = v25;
              }

              v45.__end_cap_.__value_ = &v40;
              if (v26)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(&v40, v26);
              }

              v27 = 8 * ((v40.__end_ - v40.__begin_) >> 3);
              v28 = *__p;
              *(v27 + 16) = v39;
              *v27 = v28;
              __p[1] = 0;
              v39 = 0;
              __p[0] = 0;
              v29 = (24 * v24 - (v40.__end_ - v40.__begin_));
              memcpy(v29, v40.__begin_, v40.__end_ - v40.__begin_);
              v30 = v40.__begin_;
              value = v40.__end_cap_.__value_;
              v40.__begin_ = v29;
              v40.__end_ = (24 * v24 + 24);
              v40.__end_cap_.__value_ = 0;
              v45.__end_ = v30;
              v45.__end_cap_.__value_ = value;
              v45.__begin_ = v30;
              v45.__first_ = v30;
              std::__split_buffer<std::string>::~__split_buffer(&v45);
              v40.__end_ = (24 * v24 + 24);
              if (SHIBYTE(v39) < 0)
              {
                operator delete(__p[0]);
              }
            }

            else
            {
              v23 = *__p;
              v40.__end_->__r_.__value_.__r.__words[2] = v39;
              *&end->__r_.__value_.__l.__data_ = v23;
              v40.__end_ = end + 1;
            }
          }

          v32 = &v10[wcslen(v10)];
          v33 = v32[1];
          v10 = v32 + 1;
        }

        while (v33);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v40.__end_ - v40.__begin_) >> 3) >= 2)
      {
        LODWORD(v45.__first_) = 0;
        TBuffer<wchar_t>::insert(&v41, *(&v42 + 1), &v45, 1uLL);
        if (*v8)
        {
          operator new[]();
        }

        v10 = v8;
      }

      v8 = v10 + 1;
      ++v37;
    }

    while (v37 <= v36);
    v9 = *(this + 12);
    v2 = *(this + 13);
  }

  v34 = 126 - 2 * __clz((v2 - v9) >> 4);
  v45.__first_ = sortByFirst;
  if (v2 == v9)
  {
    v35 = 0;
  }

  else
  {
    v35 = v34;
  }

  std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<wchar_t const*,wchar_t *> const&,std::pair<wchar_t const*,wchar_t *> const&),std::pair<wchar_t const*,wchar_t *>*,false>(v9, v2, &v45, v35, 1);
  v45.__first_ = &v40;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v45);
  if (v49 == 1 && __s != v48 && __s)
  {
    MEMORY[0x1B8C85310]();
  }

  if (v44 == 1 && v41 != v43)
  {
    if (v41)
    {
      MEMORY[0x1B8C85310]();
    }
  }
}

void sub_1B56F9020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  __p = &a17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (LOBYTE(STACK[0x5B8]) == 1 && STACK[0x4A0] != a9 && STACK[0x4A0] != 0)
  {
    MEMORY[0x1B8C85310]();
  }

  if (LOBYTE(STACK[0x470]) == 1 && a20 != a10)
  {
    if (a20)
    {
      MEMORY[0x1B8C85310]();
    }
  }

  _Unwind_Resume(a1);
}

uint64_t TLexicon::validateLexicon(TLexicon *this)
{
  v20 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v16 = 0;
  v15 = 0;
  v14 = 0;
  SDVoc_GetWords(*(this + 11), 1, "", "", 0, 0, &v17, &v15, &v16, callBackMRECArrayReallocator, 0, &v14);
  result = v15;
  if (v15)
  {
    if (!v17)
    {
      return MEMORY[0x1B8C85310]();
    }

    for (i = 0; i < v17; ++i)
    {
      v4 = *(v15 + 8 * i);
      v5 = TStringParam::get((*(this + 40) + 488));
      if (!TLexicon::applyMask(this, v4, v5, 0))
      {
        if (SDWord_GetName(*(this + 11), v4, v19, 0x100uLL) < 0x101)
        {
          v10 = v12;
          v11 = xmmword_1B5AE2110;
          v13 = 1;
          v6 = TLocaleInfo::multiByteToUnicode(this + 224, v19, &v10);
          v7 = "Warning: '%s' : Can't convert to Unicode.\n";
          if (v6)
          {
            goto LABEL_15;
          }

          if (*(&v11 + 1) >= v11)
          {
            if (v13)
            {
              v18 = 0;
              TBuffer<wchar_t>::insert(&v10, *(&v11 + 1), &v18, 1uLL);
              v8 = v10;
              --*(&v11 + 1);
            }

            else
            {
              v8 = v10;
              if (v11)
              {
                v10[v11 - 1] = 0;
              }
            }
          }

          else
          {
            v8 = v10;
            v10[*(&v11 + 1)] = 0;
          }

          v9 = TLexicon::checkName(this, v8, 0, 0xFFFFFFFFFFFFFFFFLL);
          v7 = "Warning: '%s' : Invalid word found in voc.\n";
          if (v9)
          {
LABEL_15:
            tknPrintf(v7, v19);
          }

          if (v13 == 1 && v10 != v12)
          {
            if (v10)
            {
              MEMORY[0x1B8C85310]();
            }
          }
        }

        else
        {
          tknPrintf("Warning: The voc contains a >= %llu-byte word name, prefix is '%s'.\n", 256, v19);
        }
      }
    }

    result = v15;
    if (v15)
    {
      return MEMORY[0x1B8C85310]();
    }
  }

  return result;
}

void sub_1B56F9358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  if (LOBYTE(STACK[0x450]) == 1)
  {
    buildRegExp(va, v8);
  }

  _Unwind_Resume(a1);
}

void TLexicon::~TLexicon(TLexicon *this)
{
  v2 = *(this + 50);
  if (v2)
  {
    MEMORY[0x1B8C85310](v2, 0x1000C8077774924);
  }

  v3 = *(this + 53);
  if (v3)
  {
    MEMORY[0x1B8C85310](v3, 0x80C80B8603338);
  }

  v4 = *(this + 54);
  if (v4)
  {
    MEMORY[0x1B8C85310](v4, 0x80C80B8603338);
  }

  v5 = *(this + 40);
  ActiveConfigHandle = TParam::getActiveConfigHandle((v5 + 136));
  v7 = *(v5 + 4 * TParam::getValidConfig((v5 + 136), ActiveConfigHandle) + 296);
  v8 = *(*(this + 40) + 288);
  if (v7 > v8)
  {
    v9 = 0;
    v10 = v7 - v8;
    if (v10 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }

    do
    {
      v12 = *(this + 44);
      v13 = *(v12 + 8 * v9);
      if (v13)
      {
        std::__tree<int>::destroy(*(v12 + 8 * v9), *(v13 + 8));
        MEMORY[0x1B8C85350](v13, 0x1020C4062D53EE8);
      }

      v14 = *(this + 45);
      v15 = *(v14 + 8 * v9);
      if (v15)
      {
        std::__tree<int>::destroy(*(v14 + 8 * v9), *(v15 + 8));
        MEMORY[0x1B8C85350](v15, 0x1020C4062D53EE8);
      }

      v16 = *(this + 5);
      v17 = *(v16 + 8 * v9);
      if (v17)
      {
        TAllocator::clear(*(v16 + 8 * v9));
        MEMORY[0x1B8C85350](v17, 0x1010C40CCBCF24ELL);
      }

      v18 = *(this + 6);
      v19 = *(v18 + 8 * v9);
      if (v19)
      {
        TAllocator::clear(*(v18 + 8 * v9));
        MEMORY[0x1B8C85350](v19, 0x1010C40CCBCF24ELL);
      }

      ++v9;
    }

    while (v11 != v9);
    v20 = *(this + 44);
    if (v20)
    {
      MEMORY[0x1B8C85310](v20, 0x20C8093837F09);
    }

    v21 = *(this + 45);
    if (v21)
    {
      MEMORY[0x1B8C85310](v21, 0x20C8093837F09);
    }

    v22 = *(this + 5);
    if (v22)
    {
      MEMORY[0x1B8C85310](v22, 0x20C8093837F09);
    }

    v23 = *(this + 6);
    if (v23)
    {
      MEMORY[0x1B8C85310](v23, 0x20C8093837F09);
    }
  }

  v24 = *(this + 25);
  if (v24 >= 1)
  {
    v25 = *(this + 24);
    v26 = &v25[v24];
    v27 = *v25;
    if (*v25)
    {
      do
      {
LABEL_34:
        v30 = v27[2];
        if (!*v30 || (MEMORY[0x1B8C85310](*v30, 0x1000C8052888210), v27[2]))
        {
          MEMORY[0x1B8C85350]();
        }

        v27 = *v27;
      }

      while (v27);
      v31 = v25 + 1;
      while (v31 < v26)
      {
        v32 = *v31++;
        v27 = v32;
        if (v32)
        {
          v25 = v31 - 1;
          goto LABEL_34;
        }
      }
    }

    else
    {
      v28 = v25 + 1;
      while (v28 < v26)
      {
        v29 = *v28++;
        v27 = v29;
        if (v29)
        {
          v25 = v28 - 1;
          goto LABEL_34;
        }
      }
    }
  }

  v33 = *(this + 17);
  if (v33 >= 1)
  {
    v34 = *(this + 16);
    v35 = &v34[v33];
    v36 = *v34;
    if (*v34)
    {
      do
      {
LABEL_48:
        v39 = v36[1];
        if (v39)
        {
          MEMORY[0x1B8C85310](v39, 0x1000C8052888210);
        }

        v40 = v36[2];
        if (v40)
        {
          v41 = *(v40 + 16);
          if (v41)
          {
            MEMORY[0x1B8C85310](v41, 0x20C8093837F09);
          }

          MEMORY[0x1B8C85350](v40, 0x1080C40925F9CD7);
        }

        v36 = *v36;
      }

      while (v36);
      v37 = v34 + 1;
      while (v37 < v35)
      {
        v42 = *v37++;
        v36 = v42;
        if (v42)
        {
          goto LABEL_47;
        }
      }
    }

    else
    {
      v37 = v34 + 1;
      while (v37 < v35)
      {
        v38 = *v37++;
        v36 = v38;
        if (v38)
        {
LABEL_47:
          v34 = v37 - 1;
          goto LABEL_48;
        }
      }
    }
  }

  v43 = *(this + 20);
  if (v43 != (this + 168))
  {
    do
    {
      v44 = *(v43 + 7);
      if (v44)
      {
        v45 = *(v44 + 16);
        if (v45)
        {
          MEMORY[0x1B8C85310](v45, 0x20C8093837F09);
        }

        MEMORY[0x1B8C85350](v44, 0x1080C40925F9CD7);
      }

      v46 = *(v43 + 1);
      if (v46)
      {
        do
        {
          v47 = v46;
          v46 = *v46;
        }

        while (v46);
      }

      else
      {
        do
        {
          v47 = *(v43 + 2);
          v48 = *v47 == v43;
          v43 = v47;
        }

        while (!v48);
      }

      v43 = v47;
    }

    while (v47 != (this + 168));
  }

  v50 = *(this + 12);
  v49 = *(this + 13);
  if (v49 != v50)
  {
    v51 = 0;
    v52 = 8;
    do
    {
      v53 = *(v50 + v52);
      if (v53)
      {
        MEMORY[0x1B8C85310](v53, 0x1000C8052888210);
        v50 = *(this + 12);
        v49 = *(this + 13);
      }

      ++v51;
      v52 += 16;
    }

    while (v51 < (v49 - v50) >> 4);
  }

  v54 = *(this + 40);
  v55 = TParam::getActiveConfigHandle((v54 + 21512));
  if (*(v54 + TParam::getValidConfig((v54 + 21512), v55) + 21664) == 1)
  {
    tknPrintString("-- TLexicon --\n");
    tknPrintf("  Clean calls   : %llu\n", *(this + 64));
    tknPrintString("findWord\n");
    tknPrintf("  Cache lookups : %llu\n", *(this + 56));
    tknPrintf("  Cache hits    : %llu\n", *(this + 59));
    tknPrintString("collationSearch\n");
    tknPrintf("  Cache lookups : %llu\n", *(this + 57));
    tknPrintf("  Cache hits    : %llu\n", *(this + 60));
    tknPrintf("  Iterations    : %llu\n", *(this + 62));
    tknPrintString("computeClones\n");
    tknPrintf("  Cache lookups : %llu\n", *(this + 58));
    tknPrintf("  Cache hits    : %llu\n", *(this + 61));
    tknPrintf("  Iterations    : %llu\n", *(this + 63));
  }

  v56 = *(this + 42);
  if (v56)
  {
    TDataSaver::~TDataSaver(v56);
    MEMORY[0x1B8C85350]();
  }

  v57 = *(this + 40);
  if (v57)
  {
    (*(*v57 + 8))(v57);
  }

  v58 = *(this + 41);
  if (v58)
  {
    (*(*v58 + 8))(v58);
  }

  TCollation::~TCollation((this + 240));
  THashBase<std::pair<wchar_t const* const,TWord *>,THashMapCompare<std::pair<wchar_t const* const,TWord *>,TWideCharEqualTo>,THashMapFunction<std::pair<wchar_t const* const,TWord *>,THash<wchar_t const*>>>::~THashBase(this + 23);
  std::__tree<std::string>::destroy(this + 160, *(this + 21));
  THashBase<std::pair<wchar_t * const,TWordBlock *>,THashMapCompare<std::pair<wchar_t * const,TWordBlock *>,TWideCharEqualTo>,THashMapFunction<std::pair<wchar_t * const,TWordBlock *>,THash<wchar_t const*>>>::~THashBase(this + 15);
  v59 = *(this + 12);
  if (v59)
  {
    *(this + 13) = v59;
    operator delete(v59);
  }

  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  TAllocator::clear(this);
}

uint64_t TLexicon::checkName(uint64_t a1, int *a2, char a3, unint64_t a4)
{
  v4 = a4;
  v53 = *MEMORY[0x1E69E9840];
  if (a4 == -1)
  {
    v8 = *(a1 + 320);
    ActiveConfigHandle = TParam::getActiveConfigHandle((v8 + 136));
    v4 = *(v8 + 4 * TParam::getValidConfig((v8 + 136), ActiveConfigHandle) + 296);
  }

  __s = v46;
  v45 = xmmword_1B5AE2110;
  v47 = 1;
  TBuffer<wchar_t>::assign(&__s, a2);
  v11 = *(&v45 + 1);
  v10 = v45;
  if (*(&v45 + 1) >= v45)
  {
    if (v47)
    {
      LODWORD(v49) = 0;
      TBuffer<wchar_t>::insert(&__s, *(&v45 + 1), &v49, 1uLL);
      v10 = v45;
      v11 = --*(&v45 + 1);
      v12 = __s;
    }

    else
    {
      v12 = __s;
      if (!v45)
      {
LABEL_15:
        v13 = v12;
        goto LABEL_16;
      }

      __s[v45 - 1] = 0;
    }
  }

  else
  {
    v12 = __s;
    __s[*(&v45 + 1)] = 0;
  }

  if (v11 < v10)
  {
    v12[v11] = 0;
    goto LABEL_15;
  }

  if ((v47 & 1) == 0)
  {
    if (v10)
    {
      v12[v10 - 1] = 0;
    }

    goto LABEL_15;
  }

  LODWORD(v49) = 0;
  TBuffer<wchar_t>::insert(&__s, v11, &v49, 1uLL);
  v13 = __s;
  v11 = --*(&v45 + 1);
LABEL_16:
  v14 = wcschr(v13, 92);
  if (!v14)
  {
    goto LABEL_160;
  }

  v15 = v14;
  if (v11 >= v45)
  {
    if (v47)
    {
      LODWORD(v49) = 0;
      TBuffer<wchar_t>::insert(&__s, v11, &v49, 1uLL);
      v13 = __s;
      v11 = --*(&v45 + 1);
    }

    else if (v45)
    {
      v13[v45 - 1] = 0;
    }
  }

  else
  {
    v13[v11] = 0;
  }

  if (v15 == v13)
  {
    v16 = v13[1];
    if (v16 == 92 || !v16)
    {
      ++v15;
    }
  }

  if (!*v15)
  {
LABEL_160:
    if (*v12)
    {
      LODWORD(v17) = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      goto LABEL_32;
    }

    goto LABEL_117;
  }

  if (v11 >= v45)
  {
    if (v47)
    {
      LODWORD(v49) = 0;
      TBuffer<wchar_t>::insert(&__s, v11, &v49, 1uLL);
      v13 = __s;
      v11 = --*(&v45 + 1);
    }

    else if (v45)
    {
      v13[v45 - 1] = 0;
    }
  }

  else
  {
    v13[v11] = 0;
  }

  *v15 = 0;
  v19 = v15 + 1;
  v21 = wcschr(v19, 92);
  v20 = v21 != 0;
  if (!v21)
  {
    if (*v19)
    {
      v18 = 0;
LABEL_120:
      if (*v12)
      {
        LODWORD(v17) = 1;
      }

      else
      {
        v17 = 1;
        if (!*v19)
        {
          goto LABEL_153;
        }
      }

LABEL_32:
      v41 = v20;
      v49 = v51;
      v50 = xmmword_1B5AE2110;
      v52 = 1;
      if (TLocaleInfo::unicodeToMultiByte(a1 + 224, v12, &v49))
      {
        v17 = 2;
LABEL_149:
        if (v52 == 1 && v49 != v51 && v49)
        {
          MEMORY[0x1B8C85310]();
        }

        goto LABEL_153;
      }

      if (*(&v50 + 1) >= v50)
      {
        if (v52)
        {
          v43[0] = 0;
          TBuffer<char>::insert(&v49, *(&v50 + 1), v43, 1uLL);
          --*(&v50 + 1);
        }

        else if (v50)
        {
          v49[v50 - 1] = 0;
        }
      }

      else
      {
        v49[*(&v50 + 1)] = 0;
      }

      v23 = v49;
      TSegmenter::TSegmenter(v43, v49, a1 + 224, 0);
      for (; *v23; v23 = *(v25 + 8))
      {
        Segment = TSegmenter::getSegment(v43, v23);
        v25 = Segment;
        v26 = *(Segment + 24);
        if (v26 == 5 || v4 >= 3 && *(Segment + 16))
        {
LABEL_113:
          v17 = 2;
          goto LABEL_148;
        }

        if (!v26)
        {
          v27 = **Segment;
          {
            operator new();
          }

          if (v27 <= 8202)
          {
            if (v27 != 32 && v27 != 160)
            {
              continue;
            }
          }

          else
          {
            v28 = v27 == 8203 || v27 == 65279;
            if (!v28 && v27 != 12288)
            {
              continue;
            }
          }

          if (*(&v50 + 1) >= v50)
          {
            if (v52)
            {
              v42[0] = 0;
              TBuffer<char>::insert(&v49, *(&v50 + 1), v42, 1uLL);
              --*(&v50 + 1);
            }

            else if (v50)
            {
              v49[v50 - 1] = 0;
            }
          }

          else
          {
            v49[*(&v50 + 1)] = 0;
          }

          if (v23 != v49 || **(v25 + 8))
          {
            if (*(&v50 + 1) >= v50)
            {
              if (v52)
              {
                v42[0] = 0;
                TBuffer<char>::insert(&v49, *(&v50 + 1), v42, 1uLL);
                --*(&v50 + 1);
              }

              else if (v50)
              {
                v49[v50 - 1] = 0;
              }
            }

            else
            {
              v49[*(&v50 + 1)] = 0;
            }

            if (v23 == v49 || !**(v25 + 8))
            {
              goto LABEL_113;
            }
          }
        }
      }

      if (v17)
      {
        TBuffer<char>::resize(&v49, 0);
        if (TLocaleInfo::unicodeToMultiByte(a1 + 224, v19, &v49))
        {
LABEL_112:
          v17 = 5;
          goto LABEL_148;
        }

        v29 = TBuffer<char>::c_str(&v49);
        TSegmenter::TSegmenter(v42, v29, a1 + 224, 0);
        if (*v29)
        {
          while (1)
          {
            v30 = TSegmenter::getSegment(v42, v29);
            v31 = v30;
            v32 = *(v30 + 24);
            if (v32 == 5 || v4 >= 3 && *(v30 + 16))
            {
              break;
            }

            if (!v32)
            {
              if (*(&v50 + 1) >= v50)
              {
                if (v52)
                {
                  v48 = 0;
                  v30 = TBuffer<char>::insert(&v49, *(&v50 + 1), &v48, 1uLL);
                  --*(&v50 + 1);
                }

                else if (v50)
                {
                  v49[v50 - 1] = 0;
                }
              }

              else
              {
                v49[*(&v50 + 1)] = 0;
              }

              if (v29 == v49 || !*v31[1] || (*v31)[1])
              {
                break;
              }

              v33 = **v31;
              TLocaleInfo::getGlobalLocaleInfo(v30);
              if (v33 <= 8202)
              {
                if (v33 != 32 && v33 != 160)
                {
                  break;
                }
              }

              else if (v33 != 8203 && v33 != 65279 && v33 != 12288)
              {
                break;
              }
            }

            v29 = v31[1];
            if (!*v29)
            {
              goto LABEL_124;
            }
          }

          TSegmenter::~TSegmenter(v42);
          goto LABEL_112;
        }

LABEL_124:
        TSegmenter::~TSegmenter(v42);
      }

      if (v41)
      {
        TBuffer<char>::resize(&v49, 0);
        if (TLocaleInfo::unicodeToMultiByte(a1 + 224, v18, &v49))
        {
LABEL_145:
          v17 = 3;
LABEL_148:
          TSegmenter::~TSegmenter(v43);
          goto LABEL_149;
        }

        v34 = TBuffer<char>::c_str(&v49);
        TSegmenter::TSegmenter(v42, v34, a1 + 224, 0);
        if (*v34)
        {
          while (1)
          {
            v35 = TSegmenter::getSegment(v42, v34);
            v36 = v35;
            v37 = *(v35 + 24);
            if (v37 == 5 || v4 >= 3 && (*(v35 + 16) & 0xFFFFFFFFFFFFFFFBLL) != 0)
            {
              break;
            }

            if (!v37)
            {
              v38 = TBuffer<char>::c_str(&v49);
              if (v34 == v38 || !*v36[1] || (*v36)[1])
              {
                break;
              }

              v39 = **v36;
              TLocaleInfo::getGlobalLocaleInfo(v38);
              if (v39 <= 8202)
              {
                if (v39 != 32 && v39 != 160)
                {
                  break;
                }
              }

              else if (v39 != 8203 && v39 != 65279 && v39 != 12288)
              {
                break;
              }
            }

            v34 = v36[1];
            if (!*v34)
            {
              goto LABEL_146;
            }
          }

          TSegmenter::~TSegmenter(v42);
          goto LABEL_145;
        }

LABEL_146:
        TSegmenter::~TSegmenter(v42);
      }

      v17 = 0;
      goto LABEL_148;
    }

LABEL_117:
    v17 = 1;
    goto LABEL_153;
  }

  v22 = v21;
  if (v11 >= v45)
  {
    if (v47)
    {
      LODWORD(v49) = 0;
      TBuffer<wchar_t>::insert(&__s, v11, &v49, 1uLL);
      --*(&v45 + 1);
    }

    else if (v45)
    {
      v13[v45 - 1] = 0;
    }
  }

  else
  {
    v13[v11] = 0;
  }

  *v22 = 0;
  v18 = (v22 + 1);
  if (wcschr(v22 + 1, 92))
  {
    goto LABEL_117;
  }

  v17 = 1;
  if (*v18 && (a3 & 1) == 0)
  {
    goto LABEL_120;
  }

LABEL_153:
  if (v47 == 1 && __s != v46 && __s)
  {
    MEMORY[0x1B8C85310]();
  }

  return v17;
}

void sub_1B56FA308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  MEMORY[0x1B8C85350](a11, 0x1070C40ADD13FEBLL);
  TSegmenter::~TSegmenter(&a28);
  if (LOBYTE(STACK[0x648]) == 1)
  {
    v44 = STACK[0x530];
    if (STACK[0x530] != a9)
    {
      if (v44)
      {
        MEMORY[0x1B8C85310](v44, 0x1000C8077774924);
      }
    }
  }

  if (LOBYTE(STACK[0x520]) == 1 && a42 != v42)
  {
    if (a42)
    {
      MEMORY[0x1B8C85310]();
    }
  }

  _Unwind_Resume(a1);
}

uint64_t TLexicon::findWord(void *a1, __int32 *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  ++a1[39];
  ++a1[56];
  v7[0] = a2;
  v7[1] = 0;
  THashBase<std::pair<wchar_t const* const,TWord *>,THashMapCompare<std::pair<wchar_t const* const,TWord *>,TWideCharEqualTo>,THashMapFunction<std::pair<wchar_t const* const,TWord *>,THash<wchar_t const*>>>::find((a1 + 23), v7, &v8);
  if (*(&v9 + 1) && (v4 = *(*(&v9 + 1) + 16)) != 0)
  {
    *(v4 + 24) = a1[39];
    ++a1[59];
  }

  else
  {
    v8 = v10;
    v9 = xmmword_1B5AE2110;
    v11 = 1;
    TLocaleInfo::unicodeToMultiByte((a1 + 28), a2, &v8);
    v5 = a1[11];
    if (*(&v9 + 1) >= v9)
    {
      if (v11)
      {
        LOBYTE(v7[0]) = 0;
        TBuffer<char>::insert(&v8, *(&v9 + 1), v7, 1uLL);
        --*(&v9 + 1);
      }

      else if (v9)
      {
        v8[v9 - 1] = 0;
      }
    }

    else
    {
      v8[*(&v9 + 1)] = 0;
    }

    if (SDWord_GetHandle(v5, v8))
    {
      wcslen(a2);
      operator new[]();
    }

    v4 = 0;
    if (v11 == 1 && v8 != v10 && v8)
    {
      MEMORY[0x1B8C85310]();
    }
  }

  return v4;
}

void sub_1B56FA664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  MEMORY[0x1B8C85350](v51, 0x10F0C4030D8D1E0);
  if (a51 == 1 && a16 != v52)
  {
    if (a16)
    {
      MEMORY[0x1B8C85310]();
    }
  }

  _Unwind_Resume(a1);
}

uint64_t TLexicon::findHeadClonesCollated(void *a1, __int32 *a2, int *a3, size_t a4, size_t a5, uint64_t a6)
{
  v12 = wcslen(a2);
  v26 = v28;
  v27 = xmmword_1B5AE2110;
  v29 = 1;
  v13 = TLexicon::collationSearch(a1, a2);
  v14 = v13;
  if (v13[1])
  {
    v15 = v13[2];
    do
    {
      v16 = *v15;
      v17 = TLexicon::applyMask((*v15)[1], (*v15)[2], a3, *v15 + 4);
      if (!v17)
      {
        TLexicon::getWrittenForm(v17, *v16, &v26);
        if (*(&v27 + 1) >= v27)
        {
          if (v29)
          {
            LODWORD(v23) = 0;
            TBuffer<wchar_t>::insert(&v26, *(&v27 + 1), &v23, 1uLL);
            v18 = v26;
            --*(&v27 + 1);
          }

          else
          {
            v18 = v26;
            if (v27)
            {
              v26[v27 - 1] = 0;
            }
          }
        }

        else
        {
          v18 = v26;
          v26[*(&v27 + 1)] = 0;
        }

        TLexiconScore::TLexiconScore(&v23, a2, v18, a4, a5, (a1 + 28));
        v19 = v23;
        v20 = BYTE8(v23);
        *&v23 = v16;
        *(&v23 + 1) = v12;
        v24 = v19;
        v25 = v20;
        std::vector<TLexiconMatch>::push_back[abi:ne200100](a6, &v23);
      }

      ++v15;
    }

    while (v15 != (v14[2] + 8 * v14[1]));
  }

  v21 = *(v14 + 24);
  if (v29 == 1 && v26 != v28 && v26)
  {
    MEMORY[0x1B8C85310]();
  }

  return v21;
}

void sub_1B56FA8FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (LOBYTE(STACK[0x440]) == 1 && a14 != a9 && a14 != 0)
  {
    MEMORY[0x1B8C85310]();
  }

  _Unwind_Resume(a1);
}

void *TLexicon::collationSearch(void *a1, unsigned int *a2)
{
  ++a1[39];
  ++a1[57];
  v23 = v25;
  v24 = xmmword_1B5AE2110;
  v26 = 1;
  TCollation::collate(a1 + 30, a2, &v23);
  v16 = v23;
  *&v17 = 0;
  THashBase<std::pair<wchar_t const* const,TWord *>,THashMapCompare<std::pair<wchar_t const* const,TWord *>,TWideCharEqualTo>,THashMapFunction<std::pair<wchar_t const* const,TWord *>,THash<wchar_t const*>>>::find((a1 + 15), &v16, &v21);
  if (!v22)
  {
    memset(v20, 0, sizeof(v20));
    if (!wcschr(a2, 92) || !wcscmp(a2, dword_1B5B1DF44))
    {
      if (a1[12] == a1[13])
      {
        TLexicon::collationSearchInternal(a1, a2, v20, 0, 0, 0);
      }

      else
      {
        v17 = xmmword_1B5AE2110;
        v19 = 1;
        v15 = 100;
        v16 = v18;
        TLexicon::collationSearchRec(a1, a2, v20, &v16, &v15);
        if (!v15)
        {
          loggableUnicode(a2, &__p);
          v10 = v14 >= 0 ? &__p : __p;
          tknPrintf("Warning: '%s' : Ran over 100 voc searches due to mismatched collation tables. Giving up.\n", v10);
          if (v14 < 0)
          {
            operator delete(__p);
          }
        }

        if (v19 == 1 && v16 != v18 && v16)
        {
          MEMORY[0x1B8C85310]();
        }
      }
    }

    operator new[]();
  }

  v4 = *(v22 + 16);
  v5 = a1[39];
  *v4 = v5;
  v6 = v4[1];
  if (v6)
  {
    v7 = v4[2];
    v8 = 8 * v6;
    do
    {
      v9 = *v7++;
      *(v9 + 24) = v5;
      v8 -= 8;
    }

    while (v8);
  }

  ++a1[60];
  if (v26 == 1 && v23 != v25 && v23 != 0)
  {
    MEMORY[0x1B8C85310]();
  }

  return v4;
}

void sub_1B56FAC54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (LOBYTE(STACK[0x458]) == 1 && a20 != v21 && a20)
  {
    MEMORY[0x1B8C85310]();
  }

  v23 = STACK[0x460];
  if (STACK[0x460])
  {
    STACK[0x468] = v23;
    operator delete(v23);
  }

  if (LOBYTE(STACK[0x8A8]) == 1 && STACK[0x490] != v20 && STACK[0x490] != 0)
  {
    MEMORY[0x1B8C85310]();
  }

  _Unwind_Resume(a1);
}

void std::vector<TLexiconMatch>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 5;
    v9 = v8 + 1;
    if ((v8 + 1) >> 59)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - *a1;
    if (v10 >> 4 > v9)
    {
      v9 = v10 >> 4;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TLexiconMatch>>(a1, v11);
    }

    v12 = (32 * v8);
    v13 = a2[1];
    *v12 = *a2;
    v12[1] = v13;
    v7 = 32 * v8 + 32;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy(v12 - v14, *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = a2[1];
    *v4 = *a2;
    v4[1] = v6;
    v7 = (v4 + 2);
  }

  *(a1 + 8) = v7;
}

uint64_t TLexicon::findHeadClonesCollated(void *a1, __int32 *a2, uint64_t *a3, uint64_t a4, size_t a5, size_t a6, uint64_t a7)
{
  v13 = wcslen(a2);
  v28 = v30;
  v29 = xmmword_1B5AE2110;
  v31 = 1;
  v14 = TLexicon::collationSearch(a1, a2);
  v15 = v14;
  if (v14[1])
  {
    v16 = v14[2];
    do
    {
      v17 = *v16;
      v18 = TLexicon::checkBits((*v16)[1], (*v16)[2], a3, a4, *v16 + 4);
      if (v18)
      {
        TLexicon::getWrittenForm(v18, *v17, &v28);
        if (*(&v29 + 1) >= v29)
        {
          if (v31)
          {
            LODWORD(v25) = 0;
            TBuffer<wchar_t>::insert(&v28, *(&v29 + 1), &v25, 1uLL);
            v19 = v28;
            --*(&v29 + 1);
          }

          else
          {
            v19 = v28;
            if (v29)
            {
              v28[v29 - 1] = 0;
            }
          }
        }

        else
        {
          v19 = v28;
          v28[*(&v29 + 1)] = 0;
        }

        TLexiconScore::TLexiconScore(&v25, a2, v19, a5, a6, (a1 + 28));
        v20 = v25;
        v21 = BYTE8(v25);
        *&v25 = v17;
        *(&v25 + 1) = v13;
        v26 = v20;
        v27 = v21;
        std::vector<TLexiconMatch>::push_back[abi:ne200100](a7, &v25);
      }

      ++v16;
    }

    while (v16 != (v15[2] + 8 * v15[1]));
  }

  v22 = *(v15 + 24);
  if (v31 == 1 && v28 != v30 && v28)
  {
    MEMORY[0x1B8C85310]();
  }

  return v22;
}

void sub_1B56FAFC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (LOBYTE(STACK[0x450]) == 1 && a16 != a10 && a16 != 0)
  {
    MEMORY[0x1B8C85310]();
  }

  _Unwind_Resume(a1);
}

void TLexicon::findHeadClonesCollatedPrefix(void *a1, char *a2, TSegmenter *this, int *a4, size_t a5, size_t a6, uint64_t a7)
{
  v10 = a2;
  v37 = 0;
  *v47 = v49;
  v48 = xmmword_1B5AE2110;
  v50 = 1;
  v43 = v45;
  v44 = xmmword_1B5AE2110;
  v46 = 1;
  while (1)
  {
    Segment = TSegmenter::getSegment(this, v10);
    v13 = Segment;
    if (!Segment)
    {
      break;
    }

    v14 = *(Segment + 24);
    if (v14 == 5)
    {
      break;
    }

    v10 = *(Segment + 8);
    if (v14)
    {
      v15 = 0;
      v16 = *Segment;
        ;
      }

      TBuffer<wchar_t>::insert(v47, *(&v48 + 1), v16, v15 - 1);
LABEL_8:
      if (*(&v48 + 1) > 0xFFuLL)
      {
        break;
      }

      if (*(&v48 + 1) >= v48)
      {
        if (v50)
        {
          LODWORD(__p) = 0;
          TBuffer<wchar_t>::insert(v47, *(&v48 + 1), &__p, 1uLL);
          v18 = *v47;
          --*(&v48 + 1);
        }

        else
        {
          v18 = *v47;
          if (v48)
          {
            *(*v47 + 4 * v48 - 4) = 0;
          }
        }
      }

      else
      {
        v18 = *v47;
        *(*v47 + 4 * *(&v48 + 1)) = 0;
      }

      v21 = TLexicon::collationSearch(a1, v18);
      if (!v21[1])
      {
        goto LABEL_72;
      }

      v22 = *(*v47 + 4 * *(&v48 + 1) - 4);
      {
        operator new();
      }

      if (v22 <= 8202)
      {
        if (v22 == 32 || v22 == 160)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v23 = v22 == 8203 || v22 == 65279;
        if (v23 || v22 == 12288)
        {
LABEL_35:
          loggableUnicode(**v21[2], &__p);
          p_p = &__p;
          if (v41 < 0)
          {
            p_p = __p;
          }

          tknPrintf("Warning: '%s' : found a match that ends with a space. Ignored.\n", p_p);
          if (SHIBYTE(v41) < 0)
          {
            operator delete(__p);
          }

          goto LABEL_72;
        }
      }

      if (v21[1])
      {
        v28 = v21[2];
        do
        {
          v29 = *v28;
          v30 = TLexicon::applyMask((*v28)[1], (*v28)[2], a4, *v28 + 4);
          if (!v30)
          {
            TLexicon::getWrittenForm(v30, *v29, &v43);
            if (*(&v48 + 1) >= v48)
            {
              if (v50)
              {
                LODWORD(__p) = 0;
                TBuffer<wchar_t>::insert(v47, *(&v48 + 1), &__p, 1uLL);
                v31 = *v47;
                --*(&v48 + 1);
              }

              else
              {
                v31 = *v47;
                if (v48)
                {
                  *(*v47 + 4 * v48 - 4) = 0;
                }
              }
            }

            else
            {
              v31 = *v47;
              *(*v47 + 4 * *(&v48 + 1)) = 0;
            }

            if (*(&v44 + 1) >= v44)
            {
              if (v46)
              {
                LODWORD(__p) = 0;
                TBuffer<wchar_t>::insert(&v43, *(&v44 + 1), &__p, 1uLL);
                v32 = v43;
                --*(&v44 + 1);
              }

              else
              {
                v32 = v43;
                if (v44)
                {
                  v43[v44 - 1] = 0;
                }
              }
            }

            else
            {
              v32 = v43;
              v43[*(&v44 + 1)] = 0;
            }

            TLexiconScore::TLexiconScore(&__p, v31, v32, a5, a6, (a1 + 28));
            v33 = __p;
            v34 = BYTE8(__p);
            *&__p = v29;
            *(&__p + 1) = v10 - a2;
            v41 = v33;
            v42 = v34;
            std::vector<TLexiconMatch>::push_back[abi:ne200100](a7, &__p);
          }

          ++v28;
        }

        while (v28 != (v21[2] + 8 * v21[1]));
      }

LABEL_72:
      if ((v21[3] & 1) == 0)
      {
        break;
      }
    }

    else
    {
      if (!*(&v48 + 1))
      {
        break;
      }

      v19 = *Segment;
      v20 = **Segment;
      if (v20 == 9)
      {
        break;
      }

      if (*(*v47 + 4 * *(&v48 + 1) - 4) == 32)
      {
        goto LABEL_42;
      }

      {
        operator new();
      }

      if (v20 <= 8202)
      {
        if (v20 == 32 || v20 == 160)
        {
LABEL_41:
          v19 = *v13;
          if (wcslen(*v13) > 2)
          {
            break;
          }

          goto LABEL_42;
        }
      }

      else if (v20 == 8203 || v20 == 12288 || v20 == 65279)
      {
        goto LABEL_41;
      }

      v19 = *v13;
LABEL_42:
      v25 = *v19;
      {
        operator new();
      }

      if (v25 != 13 && v25 != 10)
      {
        goto LABEL_53;
      }

      if (v37)
      {
        break;
      }

      v37 = 1;
      if (*(*v47 + 4 * *(&v48 + 1) - 4) != 45)
      {
        v27 = TSegmenter::getSegment(this, v10);
        if (!v27 || *(v27 + 24) == 5)
        {
          break;
        }

        v37 = 1;
        if (**v27 != 45)
        {
LABEL_53:
          if (*(*v47 + 4 * *(&v48 + 1) - 4) != 32)
          {
            TBuffer<wchar_t>::insert(v47, *(&v48 + 1), &unk_1B5B1DF3C, 1uLL);
            goto LABEL_8;
          }
        }
      }
    }
  }

  if (v46 == 1 && v43 != v45 && v43 != 0)
  {
    MEMORY[0x1B8C85310]();
  }

  if (v50 == 1 && *v47 != v49)
  {
    if (*v47)
    {
      MEMORY[0x1B8C85310]();
    }
  }
}

void sub_1B56FB5E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  MEMORY[0x1B8C85350](v20, 0x1070C40ADD13FEBLL);
  if (LOBYTE(STACK[0x470]) == 1 && a20 != a11 && a20 != 0)
  {
    MEMORY[0x1B8C85310]();
  }

  if (LOBYTE(STACK[0x890]) == 1)
  {
    v23 = STACK[0x478];
    if (STACK[0x478] != a12)
    {
      if (v23)
      {
        MEMORY[0x1B8C85310](v23, 0x1000C8052888210);
      }
    }
  }

  _Unwind_Resume(a1);
}

uint64_t TLexicon::collationSearchInternal(uint64_t a1, unsigned int *a2, void *a3, int *a4, int a5, unint64_t a6)
{
  v61 = *MEMORY[0x1E69E9840];
  v57 = v59;
  v58 = xmmword_1B5AE2110;
  v60 = 1;
  TLocaleInfo::unicodeToMultiByte(a1 + 224, a2, &v57);
  v54 = 0;
  v53 = 0;
  v52 = 0;
  v51 = 0;
  v10 = *(a1 + 88);
  v11 = *(a1 + 80);
  if (*(&v58 + 1) >= v58)
  {
    if (v60)
    {
      LOBYTE(v47) = 0;
      TBuffer<char>::insert(&v57, *(&v58 + 1), &v47, 1uLL);
      --*(&v58 + 1);
    }

    else if (v58)
    {
      v57[v58 - 1] = 0;
    }
  }

  else
  {
    v57[*(&v58 + 1)] = 0;
  }

  if (a5)
  {
    v12 = "";
  }

  else
  {
    v12 = "\";
  }

  SDVoc_GetWords(v10, v11, v57, v12, *(a1 + 432), *(a1 + 416), &v54, &v52, &v53, callBackMRECArrayReallocator, 0, &v51);
  v47 = v49;
  v48 = xmmword_1B5AE2110;
  v50 = 1;
  if (v54)
  {
    v13 = 0;
    v14 = 0;
    v37 = 0;
    do
    {
      ++*(a1 + 496);
      v15 = *(v52 + 8 * v14);
      v16 = TStringParam::get((*(a1 + 320) + 488));
      if (!TLexicon::applyMask(a1, v15, v16, 0) && (!a4 || !TLexicon::applyMask(a1, v15, a4, 0)))
      {
        if (SDWord_GetName(*(a1 + 88), v15, v56, 0x100uLL) < 0x101)
        {
          __p = v45;
          v44 = xmmword_1B5AE2110;
          v46 = 1;
          v17 = TLocaleInfo::multiByteToUnicode(a1 + 224, v56, &__p);
          if (v17)
          {
            tknPrintf("Warning: '%s' : Can't convert to Unicode. Ignored.\n", v56);
          }

          else
          {
            if (!a6)
            {
              goto LABEL_97;
            }

            v39 = v41;
            v40 = xmmword_1B5AE2110;
            v42 = 1;
            if (*(&v44 + 1) >= v44)
            {
              if (v46)
              {
                LODWORD(v55[0]) = 0;
                v17 = TBuffer<wchar_t>::insert(&__p, *(&v44 + 1), v55, 1uLL);
                v18 = __p;
                --*(&v44 + 1);
              }

              else
              {
                v18 = __p;
                if (v44)
                {
                  *(__p + v44 - 1) = 0;
                }
              }
            }

            else
            {
              v18 = __p;
              *(__p + *(&v44 + 1)) = 0;
            }

            TLexicon::getWrittenForm(v17, v18, &v39);
            v19 = *(&v40 + 1);
            if (v42 == 1 && v39 != v41 && v39)
            {
              MEMORY[0x1B8C85310]();
            }

            if (v19 <= a6)
            {
LABEL_97:
              v20 = *(&v48 + 1);
              if (!*(&v48 + 1))
              {
                TCollation::collate((a1 + 240), a2, &v47);
                v20 = *(&v48 + 1);
              }

              if (v20 >= v48)
              {
                if (v50)
                {
                  LODWORD(v39) = 0;
                  TBuffer<wchar_t>::insert(&v47, v20, &v39, 1uLL);
                  v21 = v47;
                  --*(&v48 + 1);
                }

                else
                {
                  v21 = v47;
                  if (v48)
                  {
                    v47[v48 - 1] = 0;
                  }
                }
              }

              else
              {
                v21 = v47;
                v47[v20] = 0;
              }

              if (*(&v44 + 1) >= v44)
              {
                if (v46)
                {
                  LODWORD(v39) = 0;
                  TBuffer<wchar_t>::insert(&__p, *(&v44 + 1), &v39, 1uLL);
                  v22 = __p;
                  --*(&v44 + 1);
                }

                else
                {
                  v22 = __p;
                  if (v44)
                  {
                    *(__p + v44 - 1) = 0;
                  }
                }
              }

              else
              {
                v22 = __p;
                *(__p + *(&v44 + 1)) = 0;
              }

              if (!TCollation::collprefixcmp((a1 + 240), v21, v22))
              {
                if (*(&v44 + 1) >= v44)
                {
                  if (v46)
                  {
                    LODWORD(v39) = 0;
                    TBuffer<wchar_t>::insert(&__p, *(&v44 + 1), &v39, 1uLL);
                    v23 = __p;
                    --*(&v44 + 1);
                  }

                  else
                  {
                    v23 = __p;
                    if (v44)
                    {
                      *(__p + v44 - 1) = 0;
                    }
                  }
                }

                else
                {
                  v23 = __p;
                  *(__p + *(&v44 + 1)) = 0;
                }

                v55[0] = v23;
                v55[1] = 0;
                THashBase<std::pair<wchar_t const* const,TWord *>,THashMapCompare<std::pair<wchar_t const* const,TWord *>,TWideCharEqualTo>,THashMapFunction<std::pair<wchar_t const* const,TWord *>,THash<wchar_t const*>>>::find(a1 + 184, v55, &v39);
                if (!*(&v40 + 1))
                {
                  v38 = 0;
LABEL_56:
                  operator new[]();
                }

                v24 = *(*(&v40 + 1) + 16);
                v38 = v24;
                if (!v24)
                {
                  goto LABEL_56;
                }

                if ((*(v24 + 32) & 2) != 0 || TLexicon::findHeadClone(*(v24 + 8), *v24) == v24)
                {
                  std::vector<TVertex *>::push_back[abi:ne200100](a3, &v38);
                  ++v13;
                }

                ++v37;
              }
            }
          }

          if (v46 == 1 && __p != v45 && __p)
          {
            MEMORY[0x1B8C85310]();
          }
        }

        else
        {
          tknPrintf("Warning: The voc contains a >= %llu-byte word name, prefix is '%s'. Ignored.\n", 256, v56);
        }
      }

      ++v14;
    }

    while (v14 < v54);
  }

  else
  {
    v13 = 0;
    v37 = 0;
  }

  if (v52 != *(a1 + 432))
  {
    loggableUnicode(a2, &__p);
    if (v44 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    tknPrintf("Warning: '%s' : Inefficient voc search. Required dynamic allocation of size %llu\n", p_p, v53);
    if (SHIBYTE(v44) < 0)
    {
      operator delete(__p);
    }

    v26 = *(a1 + 432);
    if (v26)
    {
      MEMORY[0x1B8C85310](v26, 0x80C80B8603338);
    }

    *(a1 + 432) = v52;
    *(a1 + 416) = v53;
  }

  if (v37 == v13)
  {
    v27 = (a3[1] - *a3) >> 3;
    if (v27 - v13 < v27)
    {
      v28 = -v13;
      v29 = *a3 + 8 * v27;
      do
      {
        *(*(v29 + 8 * v28) + 32) |= 1uLL;
      }

      while (!__CFADD__(v28++, 1));
    }
  }

  v31 = v51;
  if (v50 == 1 && v47 != v49 && v47 != 0)
  {
    MEMORY[0x1B8C85310]();
  }

  if (v60 == 1 && v57 != v59 && v57 != 0)
  {
    MEMORY[0x1B8C85310]();
  }

  return v31;
}

void sub_1B56FBE74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  MEMORY[0x1B8C85350](v15, 0x10F0C4030D8D1E0);
  if (LOBYTE(STACK[0x8A8]) == 1)
  {
    v17 = STACK[0x490];
    if (STACK[0x490] != v14)
    {
      if (v17)
      {
        MEMORY[0x1B8C85310](v17, 0x1000C8052888210);
      }
    }
  }

  if (LOBYTE(STACK[0xCC8]) == 1 && STACK[0x8B0] != a13 && STACK[0x8B0] != 0)
  {
    MEMORY[0x1B8C85310]();
  }

  if (LOBYTE(STACK[0xF18]) == 1 && STACK[0xE00] != a14 && STACK[0xE00] != 0)
  {
    MEMORY[0x1B8C85310]();
  }

  _Unwind_Resume(a1);
}

uint64_t TLexicon::collationSearchRec(uint64_t a1, int *a2, void *a3, uint64_t a4, void *a5)
{
  if (!*a5)
  {
    goto LABEL_25;
  }

  v5 = a4;
  v6 = a2;
  v7 = a1;
  v8 = *a2;
  if (*a2)
  {
    while (1)
    {
      v9 = *(v7 + 96);
      v10 = *(v7 + 104) - v9;
      if (v10)
      {
        v11 = 0;
        v12 = 0;
        v13 = v10 >> 4;
        v14 = (v10 >> 4) <= 1 ? 1 : v10 >> 4;
        v37 = v9;
        v15 = v10 >> 4;
        do
        {
          v16 = wcslen(*v9);
          v17 = wcsncmp(*v9, v6, v16);
          if (v17 > 0)
          {
            break;
          }

          if (v17 == 0 && v16 > v12)
          {
            v15 = v11;
            v12 = v16;
          }

          ++v11;
          v9 += 2;
        }

        while (v14 != v11);
        v18 = v15 == v13;
        v5 = a4;
        v7 = a1;
        if (!v18)
        {
          break;
        }
      }

      v38 = v8;
      TBuffer<wchar_t>::insert(v5, *(v5 + 16), &v38, 1uLL);
      v19 = v6[1];
      ++v6;
      v8 = v19;
      if (!v19)
      {
        goto LABEL_15;
      }
    }

    v24 = v37[2 * v15 + 1];
    if (*v24)
    {
      v25 = 0;
      v26 = &v6[v12];
      v27 = *(a4 + 16);
      do
      {
        v28 = 0;
          ;
        }

        TBuffer<wchar_t>::insert(a4, *(a4 + 16), v24, v28 - 1);
        v25 |= TLexicon::collationSearchRec(a1, v26, a3, a4, a5);
        TBuffer<wchar_t>::resize(a4, v27);
        v30 = &v24[wcslen(v24)];
        v31 = v30[1];
        v24 = v30 + 1;
      }

      while (v31);
      return v25 & 1;
    }

LABEL_25:
    LOBYTE(v25) = 0;
    return v25 & 1;
  }

LABEL_15:
  --*a5;
  v21 = *(v5 + 8);
  v20 = *(v5 + 16);
  if (v20 >= v21)
  {
    v23 = a3;
    if (*(v5 + 1048))
    {
      v39 = 0;
      TBuffer<wchar_t>::insert(v5, v20, &v39, 1uLL);
      --*(v5 + 16);
      v22 = *v5;
    }

    else
    {
      v22 = *v5;
      if (v21)
      {
        v22[v21 - 1] = 0;
      }
    }
  }

  else
  {
    v22 = *v5;
    *(*v5 + 4 * v20) = 0;
    v23 = a3;
  }

  LOBYTE(v25) = TLexicon::collationSearchInternal(v7, v22, v23, 0, 0, 0);
  return v25 & 1;
}

uint64_t THashBase<std::pair<wchar_t * const,TWordBlock *>,THashMapCompare<std::pair<wchar_t * const,TWordBlock *>,TWideCharEqualTo>,THashMapFunction<std::pair<wchar_t * const,TWordBlock *>,THash<wchar_t const*>>>::insert@<X0>(uint64_t a1@<X0>, const __int32 **a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 24);
  if (v5 == *(a1 + 16))
  {
    if (v5)
    {
      if (*(a1 + 34) == 1)
      {
        tknPrintf("Warning: hashtable resizing, size was %llu\n", *(a1 + 24));
        v5 = *(a1 + 16);
      }

      v6 = 2 * v5;
    }

    else
    {
      v6 = 10781;
    }

    THashBase<std::pair<wchar_t const* const,TWord *>,THashMapCompare<std::pair<wchar_t const* const,TWord *>,TWideCharEqualTo>,THashMapFunction<std::pair<wchar_t const* const,TWord *>,THash<wchar_t const*>>>::resize(a1, v6);
  }

  v7 = *a2;
  v8 = wcslen(*a2);
  v9 = 0;
  v10 = 4 * v8;
  if (4 * v8)
  {
    v11 = v7;
    do
    {
      v12 = *v11;
      v11 = (v11 + 1);
      v9 = 33 * v9 + v12;
      --v10;
    }

    while (v10);
  }

  v14 = *(a1 + 8);
  v13 = *(a1 + 16);
  v15 = (v14 + 8 * (v9 % v13));
  v16 = v15;
  do
  {
    v16 = *v16;
    if (!v16)
    {
      operator new();
    }

    result = wcscmp(v16[1], v7);
  }

  while (result);
  *a3 = v15;
  *(a3 + 8) = v14 + 8 * v13;
  *(a3 + 16) = v16;
  *(a3 + 24) = 0;
  return result;
}

void *TLexicon::addTempWord(TAllocator *a1, int *a2, int *a3, int *a4, const __int32 *a5)
{
  v20 = v22;
  v21 = xmmword_1B5AE2110;
  v23 = 1;
  if (!a2 || (TBuffer<wchar_t>::assign(&v20, a2), (a2 = *(&v21 + 1)) == 0) || a3 && *a3 || a4 && *a4)
  {
    TBuffer<wchar_t>::insert(&v20, a2, dword_1B5B1DF44, 1uLL);
  }

  if (a3)
  {
    v9 = 0;
      ;
    }

    TBuffer<wchar_t>::insert(&v20, *(&v21 + 1), a3, v9 - 1);
  }

  if (a4 && *a4)
  {
    TBuffer<wchar_t>::insert(&v20, *(&v21 + 1), dword_1B5B1DF44, 1uLL);
    v11 = 0;
      ;
    }

    TBuffer<wchar_t>::insert(&v20, *(&v21 + 1), a4, v11 - 1);
  }

  if (a5)
  {
    v13 = wcslen(a5) + 2;
  }

  else
  {
    v13 = 1;
  }

  v14 = v13 + *(&v21 + 1);
  if (v14 >> 62)
  {
    v15 = -1;
  }

  else
  {
    v15 = 4 * v14;
  }

  v16 = TAllocator::allocate(a1, v15);
  if (*(&v21 + 1) >= v21)
  {
    if (v23)
    {
      v24 = 0;
      TBuffer<wchar_t>::insert(&v20, *(&v21 + 1), &v24, 1uLL);
      v17 = v20;
      --*(&v21 + 1);
    }

    else
    {
      v17 = v20;
      if (v21)
      {
        v20[v21 - 1] = 0;
      }
    }
  }

  else
  {
    v17 = v20;
    v20[*(&v21 + 1)] = 0;
  }

  wcscpy(v16, v17);
  if (a5)
  {
    wcscpy(&v16[*(&v21 + 1) + 1], a5);
  }

  v18 = TAllocator::allocate(a1, 40);
  *v18 = v16;
  v18[1] = a1;
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = 7;
  if (v23 == 1 && v20 != v22 && v20)
  {
    MEMORY[0x1B8C85310]();
  }

  return v18;
}

void sub_1B56FC54C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (LOBYTE(STACK[0x420]) == 1 && a10 != v10)
  {
    if (a10)
    {
      MEMORY[0x1B8C85310]();
    }
  }

  _Unwind_Resume(a1);
}

uint64_t THashBase<std::pair<wchar_t * const,TWordBlock *>,THashMapCompare<std::pair<wchar_t * const,TWordBlock *>,TWideCharEqualTo>,THashMapFunction<std::pair<wchar_t * const,TWordBlock *>,THash<wchar_t const*>>>::erase(uint64_t a1, uint64_t a2)
{
  v3 = **a2;
  v4 = *(a2 + 16);
  if (v3 != v4)
  {
    do
    {
      v5 = v3;
      v3 = *v3;
    }

    while (v3 != v4);
    *v5 = *v4;
    --*(a1 + 24);
LABEL_5:
    JUMPOUT(0x1B8C85350);
  }

  **a2 = *v4;
  result = *(a2 + 16);
  --*(a1 + 24);
  if (result)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t TLexicon::cleanCache(TLexicon *this)
{
  ++*(this + 64);
  TAllocator::clear(this);
  v2 = *(this + 26);
  v3 = *(this + 40);
  ActiveConfigHandle = TParam::getActiveConfigHandle((v3 + 2568));
  result = TParam::getValidConfig((v3 + 2568), ActiveConfigHandle);
  if (v2 < *(v3 + 4 * result + 2728))
  {
    return result;
  }

  v6 = 0x1080C40925F9CD7;
  v7 = *(this + 40);
  v8 = TParam::getActiveConfigHandle((v7 + 2920));
  result = TParam::getValidConfig((v7 + 2920), v8);
  v47 = *(v7 + 4 * result + 3080);
  v9 = *(this + 39) - v47;
  v10 = *(this + 17);
  if (v10 >= 1)
  {
    v11 = *(this + 16);
    v12 = &v11[2 * v10];
    v13 = *v11;
    if (*v11)
    {
      goto LABEL_8;
    }

    v14 = v11 + 2;
    while (v14 < v12)
    {
      v15 = *v14;
      v14 += 2;
      v13 = v15;
      if (v15)
      {
        v11 = v14 - 2;
        while (1)
        {
LABEL_8:
          while (1)
          {
            v16 = v13[2];
            if (*v16 > v9)
            {
              break;
            }

            v19 = v13[1];
            if (!v19 || (MEMORY[0x1B8C85310](v19, 0x1000C8052888210), (v16 = v13[2]) != 0))
            {
              v20 = v16[2];
              if (v20)
              {
                MEMORY[0x1B8C85310](v20, 0x20C8093837F09);
              }

              MEMORY[0x1B8C85350](v16, 0x1080C40925F9CD7);
            }

            v50 = v11;
            *&v51 = v12;
            *(&v51 + 1) = v13;
            v13 = *v13;
            if (!v13)
            {
              v21 = v11 + 2;
              while (1)
              {
                v11 = v21;
                if (v21 >= v12)
                {
                  break;
                }

                v21 += 2;
                v13 = *v11;
                if (*v11)
                {
                  goto LABEL_27;
                }
              }

              v13 = 0;
            }

LABEL_27:
            result = THashBase<std::pair<wchar_t * const,TWordBlock *>,THashMapCompare<std::pair<wchar_t * const,TWordBlock *>,TWideCharEqualTo>,THashMapFunction<std::pair<wchar_t * const,TWordBlock *>,THash<wchar_t const*>>>::erase(this + 120, &v50);
            if (!v13)
            {
              goto LABEL_28;
            }
          }

          *v16 -= v9;
          v13 = *v13;
          if (!v13)
          {
            break;
          }

LABEL_14:
          if (!v13)
          {
            goto LABEL_28;
          }
        }

        v17 = v11 + 2;
        while (v17 < v12)
        {
          v18 = *v17;
          v17 += 2;
          v13 = v18;
          if (v18)
          {
            v11 = v17 - 2;
            goto LABEL_14;
          }
        }

        break;
      }
    }
  }

LABEL_28:
  v22 = *(this + 25);
  if (v22 < 1)
  {
    goto LABEL_80;
  }

  v23 = *(this + 24);
  v24 = &v23[v22];
  v25 = *v23;
  if (!*v23)
  {
    v26 = v23 + 1;
    do
    {
      if (v26 >= v24)
      {
        goto LABEL_80;
      }

      v27 = *v26++;
      v25 = v27;
    }

    while (!v27);
    v23 = v26 - 1;
  }

  v46 = v9;
  while (1)
  {
    v28 = v25[2];
    v29 = *(v28 + 24);
    v30 = v29 > v9;
    v31 = v29 - v9;
    if (!v30)
    {
      v50 = v52;
      v51 = xmmword_1B5AE2110;
      v53 = 1;
      TLexicon::getTokenName(result, *v28, &v50);
      if (*(&v51 + 1) >= v51)
      {
        if (v53)
        {
          v54[0] = 0;
          TBuffer<wchar_t>::insert(&v50, *(&v51 + 1), v54, 1uLL);
          v34 = v50;
          --*(&v51 + 1);
        }

        else
        {
          v34 = v50;
          if (v51)
          {
            v50[v51 - 1] = 0;
          }
        }
      }

      else
      {
        v34 = v50;
        v50[*(&v51 + 1)] = 0;
      }

      std::wstring::basic_string[abi:ne200100]<0>(__p, v34);
      v35 = std::__tree<std::__value_type<std::wstring,unsigned long>,std::__map_value_compare<std::wstring,std::__value_type<std::wstring,unsigned long>,std::less<std::wstring>,true>,std::allocator<std::__value_type<std::wstring,unsigned long>>>::find<std::wstring>(this + 160, __p);
      if (SHIBYTE(v49) < 0)
      {
        operator delete(__p[0]);
      }

      if ((this + 168) != v35)
      {
        v36 = v6;
        v37 = v35[7];
        v38 = *(v37 + 16);
        if (*(v37 + 8))
        {
          v39 = *(&v51 + 1);
          do
          {
            if (v39 >= v51)
            {
              if (v53)
              {
                LODWORD(__p[0]) = 0;
                TBuffer<wchar_t>::insert(&v50, v39, __p, 1uLL);
                v40 = v50;
                v39 = --*(&v51 + 1);
              }

              else
              {
                v40 = v50;
                if (v51)
                {
                  v50[v51 - 1] = 0;
                }
              }
            }

            else
            {
              v40 = v50;
              v50[v39] = 0;
            }

            v41 = *v38++;
            *(v41 + 32) = *(v41 + 32) & 0xFFFFFFFFFFFFFFFCLL | (2 * (wcscmp(v40, *v41) == 0));
          }

          while (v38 != (*(v37 + 16) + 8 * *(v37 + 8)));
          v38 = *(v37 + 16);
        }

        if (v38)
        {
          MEMORY[0x1B8C85310](v38, 0x20C8093837F09);
        }

        v42 = v37;
        v6 = v36;
        MEMORY[0x1B8C85350](v42, v36);
        std::__tree<std::string>::erase(this + 20, v35);
        v9 = v46;
      }

      v43 = v25[2];
      if (!*v43 || (MEMORY[0x1B8C85310](*v43, 0x1000C8052888210), v25[2]))
      {
        MEMORY[0x1B8C85350]();
      }

      __p[0] = v23;
      __p[1] = v24;
      v49 = v25;
      v25 = *v25;
      if (!v25)
      {
        v44 = v23 + 1;
        while (1)
        {
          v23 = v44;
          if (v44 >= v24)
          {
            break;
          }

          ++v44;
          v25 = *v23;
          if (*v23)
          {
            goto LABEL_73;
          }
        }

        v25 = 0;
      }

LABEL_73:
      result = THashBase<std::pair<wchar_t * const,TWordBlock *>,THashMapCompare<std::pair<wchar_t * const,TWordBlock *>,TWideCharEqualTo>,THashMapFunction<std::pair<wchar_t * const,TWordBlock *>,THash<wchar_t const*>>>::erase(this + 184, __p);
      if (v53 == 1)
      {
        result = v50;
        if (v50 != v52 && v50 != 0)
        {
          result = MEMORY[0x1B8C85310]();
        }
      }

      goto LABEL_79;
    }

    *(v28 + 24) = v31;
    v25 = *v25;
    if (!v25)
    {
      break;
    }

LABEL_79:
    if (!v25)
    {
      goto LABEL_80;
    }
  }

  v32 = v23 + 1;
  while (v32 < v24)
  {
    v33 = *v32++;
    v25 = v33;
    if (v33)
    {
      v23 = v32 - 1;
      goto LABEL_79;
    }
  }

LABEL_80:
  *(this + 39) = v47;
  return result;
}

void sub_1B56FCAA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (LOBYTE(STACK[0x468]) == 1 && a19 != a10)
  {
    if (a19)
    {
      MEMORY[0x1B8C85310]();
    }
  }

  _Unwind_Resume(a1);
}

__int32 *getSecondField(__int32 *a1, uint64_t a2)
{
  TBuffer<wchar_t>::resize(a2, 0);
  if (*a1 != 92)
  {
LABEL_4:
    result = wcschr(a1, 92);
    a1 = result;
    if (!result)
    {
      return result;
    }

    goto LABEL_7;
  }

  v4 = a1[1];
  if (v4 == 92)
  {
    ++a1;
  }

  else if (!v4)
  {
    goto LABEL_4;
  }

LABEL_7:
  v6 = a1 + 1;
  v7 = wcschr(v6, 92);
  if (v7)
  {
    v8 = v7 - v6;
    TBuffer<wchar_t>::resize(a2, 0);

    return TBuffer<wchar_t>::insert(a2, 0, v6, v8);
  }

  else
  {

    return TBuffer<wchar_t>::assign(a2, v6);
  }
}

__int32 *getThirdField(__int32 *a1, uint64_t a2)
{
  TBuffer<wchar_t>::resize(a2, 0);
  if (*a1 != 92)
  {
LABEL_4:
    result = wcschr(a1, 92);
    a1 = result;
    if (!result)
    {
      return result;
    }

    goto LABEL_7;
  }

  v4 = a1[1];
  if (v4 == 92)
  {
    ++a1;
  }

  else if (!v4)
  {
    goto LABEL_4;
  }

LABEL_7:
  result = wcschr(a1 + 1, 92);
  if (result)
  {

    return TBuffer<wchar_t>::assign(a2, result + 1);
  }

  return result;
}

uint64_t respellRoot(uint64_t a1, int *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v4 >= v5)
  {
    if (*(a1 + 1048))
    {
      v18 = 0;
      TBuffer<wchar_t>::insert(a1, v4, &v18, 1uLL);
      --*(a1 + 16);
      v6 = *a1;
    }

    else
    {
      v6 = *a1;
      if (v5)
      {
        v6[v5 - 1] = 0;
      }
    }
  }

  else
  {
    v6 = *a1;
    *(*a1 + 4 * v4) = 0;
  }

  if (!wcscmp(v6, dword_1B5B1DF5C))
  {
    return 1;
  }

  StressPosition = findStressPosition(a2, 0);
  v9 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (v8 >= v9)
  {
    if (*(a1 + 1048))
    {
      v19 = 0;
      TBuffer<wchar_t>::insert(a1, v8, &v19, 1uLL);
      --*(a1 + 16);
      v10 = *a1;
    }

    else
    {
      v10 = *a1;
      if (v9)
      {
        v10[v9 - 1] = 0;
      }
    }
  }

  else
  {
    v10 = *a1;
    *(*a1 + 4 * v8) = 0;
  }

  v11 = findStressPosition(v10, 1);
  if (StressPosition >= *(a1 + 16))
  {
    return 0;
  }

  v12 = *a1;
  v13 = *(*a1 + 4 * StressPosition);
  if (StressPosition == v11)
  {
    v14 = s_pszAccentedVowels;
    v15 = wcschr(s_pszAccentedVowels, v13);
    if (v15)
    {
      v16 = s_pszUnaccentedVowels;
LABEL_21:
      v12[StressPosition] = *(v16 + v15 - v14);
    }
  }

  else
  {
    v14 = s_pszUnaccentedVowels;
    v15 = wcschr(s_pszUnaccentedVowels, v13);
    if (v15)
    {
      v16 = s_pszAccentedVowels;
      goto LABEL_21;
    }
  }

  return 1;
}

uint64_t findStressPosition(int *a1, int a2)
{
  v4 = *a1;
  if (!*a1)
  {
    v7 = 0;
LABEL_7:
    v8 = 0;
    v9 = 1;
    goto LABEL_8;
  }

  v5 = 0;
  while (1)
  {
    v6 = wcschr(s_pszAccentedVowels, v4);
    if (v6)
    {
      break;
    }

    v7 = v5 + 1;
    v4 = a1[++v5];
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  if (a2)
  {
    v8 = v6;
    v9 = 0;
    v7 = v5;
LABEL_8:
    v18 = v20;
    v19 = xmmword_1B5AE2110;
    v21 = 1;
    TBuffer<wchar_t>::assign(&v18, a1);
    v10 = v18;
    if ((v9 & 1) == 0)
    {
      *&v18[4 * v7] = *(s_pszUnaccentedVowels + v8 - s_pszAccentedVowels);
    }

    v11 = *(&v19 + 1);
    v12 = DWORD2(v19) - 1;
    v13 = wcschr("s", *&v10[4 * DWORD2(v19) - 4]);
    v14 = v19;
    if (v13)
    {
      if (v11 >= v19)
      {
        if (v21)
        {
          v22 = 0;
          TBuffer<wchar_t>::insert(&v18, v11, &v22, 1uLL);
          v14 = v19;
          v11 = --*(&v19 + 1);
          v10 = v18;
        }

        else if (v19)
        {
          *&v10[4 * v19 - 4] = 0;
        }
      }

      else
      {
        *&v10[4 * v11] = 0;
      }

      PreviousVowel = findPreviousVowel(v10, v12);
      if (PreviousVowel >= 0)
      {
        v12 = PreviousVowel;
      }
    }

    if (v11 >= v14)
    {
      if (v21)
      {
        v22 = 0;
        TBuffer<wchar_t>::insert(&v18, v11, &v22, 1uLL);
        v10 = v18;
        --*(&v19 + 1);
      }

      else if (v14)
      {
        *&v10[4 * v14 - 4] = 0;
      }
    }

    else
    {
      *&v10[4 * v11] = 0;
    }

    v16 = findPreviousVowel(v10, v12);
    if (v16 >= 0)
    {
      v5 = v16;
    }

    else
    {
      v5 = v12;
    }

    if (v21 == 1 && v10 != v20 && v10)
    {
      MEMORY[0x1B8C85310](v10, 0x1000C8052888210);
    }
  }

  return v5;
}
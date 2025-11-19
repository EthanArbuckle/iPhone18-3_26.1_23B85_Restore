_DWORD *std::__upper_bound[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::SourceInfo> &,flatbuffers::Offset<FlatbufferSymbols::SourceInfo> *,flatbuffers::Offset<FlatbufferSymbols::SourceInfo> *,flatbuffers::Offset<FlatbufferSymbols::SourceInfo>,std::__identity>(_DWORD *a1, _DWORD *a2, unsigned int *a3, uint64_t a4)
{
  v4 = a1;
  if (a2 != a1)
  {
    v7 = a2 - a1;
    do
    {
      v8 = &v4[v7 >> 1];
      v9 = *(*a4 + 56) + *(*a4 + 40);
      v11 = *v8;
      v10 = v8 + 1;
      if (FlatbufferSymbols::SourceInfo::KeyCompareLessThan((v9 - *a3), (v9 - v11)))
      {
        v7 >>= 1;
      }

      else
      {
        v4 = v10;
        v7 += ~(v7 >> 1);
      }
    }

    while (v7);
  }

  return v4;
}

unsigned int *std::__half_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::SourceInfo> &,flatbuffers::Offset<FlatbufferSymbols::SourceInfo> *,flatbuffers::Offset<FlatbufferSymbols::SourceInfo> *,flatbuffers::Offset<FlatbufferSymbols::SourceInfo> *,flatbuffers::Offset<FlatbufferSymbols::SourceInfo> *,flatbuffers::Offset<FlatbufferSymbols::SourceInfo> *>(unsigned int *__src, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *__dst, uint64_t a6)
{
  if (__src != a2)
  {
    v11 = __src;
    while (a3 != a4)
    {
      v12 = *(*a6 + 56) + *(*a6 + 40);
      __src = FlatbufferSymbols::SourceInfo::KeyCompareLessThan((v12 - *a3), (v12 - *v11));
      if (__src)
      {
        v13 = a3;
      }

      else
      {
        v13 = v11;
      }

      if (__src)
      {
        v14 = 0;
      }

      else
      {
        v14 = 4;
      }

      v11 = (v11 + v14);
      if (__src)
      {
        v15 = 4;
      }

      else
      {
        v15 = 0;
      }

      a3 = (a3 + v15);
      *__dst++ = *v13;
      if (v11 == a2)
      {
        return __src;
      }
    }

    return memmove(__dst, v11, a2 - v11);
  }

  return __src;
}

void std::__half_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::__invert<flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::SourceInfo> &>,std::reverse_iterator<flatbuffers::Offset<FlatbufferSymbols::SourceInfo> *>,std::reverse_iterator<flatbuffers::Offset<FlatbufferSymbols::SourceInfo> *>,std::reverse_iterator<flatbuffers::Offset<FlatbufferSymbols::SourceInfo> *>,std::reverse_iterator<flatbuffers::Offset<FlatbufferSymbols::SourceInfo> *>,std::reverse_iterator<flatbuffers::Offset<FlatbufferSymbols::SourceInfo> *>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2 != a4)
  {
    v14 = a2;
    while (a6 != a8)
    {
      v16 = *(**a11 + 56) + *(**a11 + 40);
      v17 = FlatbufferSymbols::SourceInfo::KeyCompareLessThan((v16 - *(v14 - 4)), (v16 - *(a6 - 4)));
      if (v17)
      {
        v18 = a6;
      }

      else
      {
        v18 = v14;
      }

      if (v17)
      {
        a6 -= 4;
      }

      else
      {
        v14 -= 4;
      }

      *(a10 - 4) = *(v18 - 4);
      a10 -= 4;
      if (v14 == a4)
      {
        return;
      }
    }

    if (a4 != v14)
    {
      v19 = -4;
      do
      {
        v20 = *(v14 - 4);
        v14 -= 4;
        *(a10 + v19) = v20;
        v19 -= 4;
      }

      while (v14 != a4);
    }
  }
}

_DWORD *std::__lower_bound_bisecting[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::Offset<FlatbufferSymbols::SourceInfo> *,flatbuffers::Offset<FlatbufferSymbols::SourceInfo>,std::__identity,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::SourceInfo>>(_DWORD *a1, unsigned int *a2, unint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a3;
    do
    {
      v8 = &a1[v6 >> 1];
      v10 = *v8;
      v9 = v8 + 1;
      v11 = *(*a4 + 56) + *(*a4 + 40);
      v12 = FlatbufferSymbols::SourceInfo::KeyCompareLessThan((v11 - v10), (v11 - *a2));
      if (v12)
      {
        v6 += ~(v6 >> 1);
      }

      else
      {
        v6 >>= 1;
      }

      if (v12)
      {
        a1 = v9;
      }
    }

    while (v6);
  }

  return a1;
}

void std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::Offset<FlatbufferSymbols::Symbol> *,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::Symbol>>(unsigned int *a1, unsigned int *a2, uint64_t a3)
{
  v6 = a2 - a1;
  if (v6 < 129)
  {
    v12 = 0;
    v8 = 0;
  }

  else
  {
    v7 = MEMORY[0x1E69E5398];
    v8 = a2 - a1;
    while (1)
    {
      v9 = operator new(4 * v8, v7);
      if (v9)
      {
        break;
      }

      v10 = v8 >> 1;
      v11 = v8 > 1;
      v8 >>= 1;
      if (!v11)
      {
        v12 = 0;
        v8 = v10;
        goto LABEL_8;
      }
    }

    v12 = v9;
  }

LABEL_8:
  std::__stable_sort<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::Symbol> &,flatbuffers::Offset<FlatbufferSymbols::Symbol> *>(a1, a2, a3, v6, v12, v8);
  if (v12)
  {

    operator delete(v12);
  }
}

void sub_1D96F96C4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__stable_sort<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::Symbol> &,flatbuffers::Offset<FlatbufferSymbols::Symbol> *>(unsigned int *a1, unsigned int *a2, uint64_t a3, unint64_t a4, unsigned int *a5, uint64_t a6)
{
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      v9 = *(*a3 + 56) + *(*a3 + 40);
      if (FlatbufferSymbols::InlineSymbol::KeyCompareLessThan((v9 - *(a2 - 1)), (v9 - *a1)))
      {
        v10 = *a1;
        *a1 = *(a2 - 1);
        *(a2 - 1) = v10;
      }
    }

    else if (a4 > 128)
    {
      v14 = a4 >> 1;
      v15 = &a1[a4 >> 1];
      v16 = a4 >> 1;
      if (a4 <= a6)
      {
        std::__stable_sort_move<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::Symbol> &,flatbuffers::Offset<FlatbufferSymbols::Symbol> *>(a1, v15, a3, v16, a5);
        std::__stable_sort_move<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::Symbol> &,flatbuffers::Offset<FlatbufferSymbols::Symbol> *>(&a1[a4 >> 1], a2, a3, a4 - (a4 >> 1), &a5[v14]);

        std::__merge_move_assign[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::InlineSymbol> &,flatbuffers::Offset<FlatbufferSymbols::InlineSymbol> *,flatbuffers::Offset<FlatbufferSymbols::InlineSymbol> *,flatbuffers::Offset<FlatbufferSymbols::InlineSymbol> *>(a5, &a5[v14], &a5[v14], &a5[a4], a1, a3);
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::Symbol> &,flatbuffers::Offset<FlatbufferSymbols::Symbol> *>(a1, v15, a3, v16, a5, a6);
        std::__stable_sort<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::Symbol> &,flatbuffers::Offset<FlatbufferSymbols::Symbol> *>(&a1[a4 >> 1], a2, a3, a4 - (a4 >> 1), a5, a6);

        std::__inplace_merge<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::InlineSymbol> &,flatbuffers::Offset<FlatbufferSymbols::InlineSymbol> *>(a1, &a1[a4 >> 1], a2, a3, a4 >> 1, a4 - (a4 >> 1), a5, a6);
      }
    }

    else
    {

      std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::InlineSymbol> &,flatbuffers::Offset<FlatbufferSymbols::InlineSymbol> *>(a1, a2, a3);
    }
  }
}

unsigned int *std::__stable_sort_move<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::Symbol> &,flatbuffers::Offset<FlatbufferSymbols::Symbol> *>(unsigned int *result, unsigned int *a2, uint64_t a3, unint64_t a4, unsigned int *a5)
{
  if (a4)
  {
    v9 = result;
    if (a4 == 2)
    {
      v10 = *(*a3 + 56) + *(*a3 + 40);
      result = FlatbufferSymbols::InlineSymbol::KeyCompareLessThan((v10 - *(a2 - 1)), (v10 - *result));
      if (result)
      {
        *a5 = *(a2 - 1);
        v11 = *v9;
      }

      else
      {
        *a5 = *v9;
        v11 = *(a2 - 1);
      }

      a5[1] = v11;
    }

    else if (a4 == 1)
    {
      *a5 = *result;
    }

    else if (a4 > 8)
    {
      std::__stable_sort<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::Symbol> &,flatbuffers::Offset<FlatbufferSymbols::Symbol> *>(result, &result[a4 >> 1], a3, a4 >> 1, a5, a4 >> 1);
      std::__stable_sort<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::Symbol> &,flatbuffers::Offset<FlatbufferSymbols::Symbol> *>(&v9[a4 >> 1], a2, a3, a4 - (a4 >> 1), &a5[a4 >> 1], a4 - (a4 >> 1));

      return std::__merge_move_construct[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::InlineSymbol> &,flatbuffers::Offset<FlatbufferSymbols::InlineSymbol> *,flatbuffers::Offset<FlatbufferSymbols::InlineSymbol> *>(v9, &v9[a4 >> 1], &v9[a4 >> 1], a2, a5, a3);
    }

    else
    {

      return std::__insertion_sort_move[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::InlineSymbol> &,flatbuffers::Offset<FlatbufferSymbols::InlineSymbol> *>(result, a2, a5, a3);
    }
  }

  return result;
}

void std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::Offset<FlatbufferSymbols::Section> *,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::Section>>(unsigned int *a1, unsigned int *a2, uint64_t a3)
{
  v6 = a2 - a1;
  if (v6 < 129)
  {
    v12 = 0;
    v8 = 0;
  }

  else
  {
    v7 = MEMORY[0x1E69E5398];
    v8 = a2 - a1;
    while (1)
    {
      v9 = operator new(4 * v8, v7);
      if (v9)
      {
        break;
      }

      v10 = v8 >> 1;
      v11 = v8 > 1;
      v8 >>= 1;
      if (!v11)
      {
        v12 = 0;
        v8 = v10;
        goto LABEL_8;
      }
    }

    v12 = v9;
  }

LABEL_8:
  std::__stable_sort<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::Section> &,flatbuffers::Offset<FlatbufferSymbols::Section> *>(a1, a2, a3, v6, v12, v8);
  if (v12)
  {

    operator delete(v12);
  }
}

void sub_1D96F9B04(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__stable_sort<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::Section> &,flatbuffers::Offset<FlatbufferSymbols::Section> *>(unsigned int *a1, unsigned int *a2, uint64_t a3, unint64_t a4, unsigned int *a5, uint64_t a6)
{
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      v9 = *(*a3 + 56) + *(*a3 + 40);
      if (FlatbufferSymbols::Section::KeyCompareLessThan((v9 - *(a2 - 1)), (v9 - *a1)))
      {
        v10 = *a1;
        *a1 = *(a2 - 1);
        *(a2 - 1) = v10;
      }
    }

    else if (a4 > 128)
    {
      v14 = a4 >> 1;
      v15 = &a1[a4 >> 1];
      v16 = a4 >> 1;
      if (a4 <= a6)
      {
        std::__stable_sort_move<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::Section> &,flatbuffers::Offset<FlatbufferSymbols::Section> *>(a1, v15, a3, v16, a5);
        std::__stable_sort_move<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::Section> &,flatbuffers::Offset<FlatbufferSymbols::Section> *>(&a1[a4 >> 1], a2, a3, a4 - (a4 >> 1), &a5[v14]);

        std::__merge_move_assign[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::Section> &,flatbuffers::Offset<FlatbufferSymbols::Section> *,flatbuffers::Offset<FlatbufferSymbols::Section> *,flatbuffers::Offset<FlatbufferSymbols::Section> *>(a5, &a5[v14], &a5[v14], &a5[a4], a1, a3);
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::Section> &,flatbuffers::Offset<FlatbufferSymbols::Section> *>(a1, v15, a3, v16, a5, a6);
        std::__stable_sort<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::Section> &,flatbuffers::Offset<FlatbufferSymbols::Section> *>(&a1[a4 >> 1], a2, a3, a4 - (a4 >> 1), a5, a6);

        std::__inplace_merge<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::Section> &,flatbuffers::Offset<FlatbufferSymbols::Section> *>(a1, &a1[a4 >> 1], a2, a3, a4 >> 1, a4 - (a4 >> 1), a5, a6);
      }
    }

    else
    {

      std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::Section> &,flatbuffers::Offset<FlatbufferSymbols::Section> *>(a1, a2, a3);
    }
  }
}

unsigned int *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::Section> &,flatbuffers::Offset<FlatbufferSymbols::Section> *>(unsigned int *result, unsigned int *a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = result + 1;
    if (result + 1 != a2)
    {
      v7 = 0;
      v8 = result;
      do
      {
        v10 = *v8;
        v9 = v8[1];
        v8 = v5;
        v11 = *(*a3 + 56) + *(*a3 + 40);
        result = FlatbufferSymbols::Section::KeyCompareLessThan((v11 - v9), (v11 - v10));
        if (result)
        {
          v12 = *v8;
          v13 = v7;
          while (1)
          {
            *(v4 + v13 + 4) = *(v4 + v13);
            if (!v13)
            {
              break;
            }

            v14 = *(*a3 + 56) + *(*a3 + 40);
            result = FlatbufferSymbols::Section::KeyCompareLessThan((v14 - v12), (v14 - *(v4 + v13 - 4)));
            v13 -= 4;
            if ((result & 1) == 0)
            {
              v15 = (v4 + v13 + 4);
              goto LABEL_10;
            }
          }

          v15 = v4;
LABEL_10:
          *v15 = v12;
        }

        v5 = v8 + 1;
        v7 += 4;
      }

      while (v8 + 1 != a2);
    }
  }

  return result;
}

unsigned int *std::__stable_sort_move<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::Section> &,flatbuffers::Offset<FlatbufferSymbols::Section> *>(unsigned int *result, unsigned int *a2, uint64_t a3, unint64_t a4, unsigned int *a5)
{
  if (a4)
  {
    v9 = result;
    if (a4 == 2)
    {
      v10 = *(*a3 + 56) + *(*a3 + 40);
      result = FlatbufferSymbols::Section::KeyCompareLessThan((v10 - *(a2 - 1)), (v10 - *result));
      if (result)
      {
        *a5 = *(a2 - 1);
        v11 = *v9;
      }

      else
      {
        *a5 = *v9;
        v11 = *(a2 - 1);
      }

      a5[1] = v11;
    }

    else if (a4 == 1)
    {
      *a5 = *result;
    }

    else if (a4 > 8)
    {
      std::__stable_sort<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::Section> &,flatbuffers::Offset<FlatbufferSymbols::Section> *>(result, &result[a4 >> 1], a3, a4 >> 1, a5, a4 >> 1);
      std::__stable_sort<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::Section> &,flatbuffers::Offset<FlatbufferSymbols::Section> *>(&v9[a4 >> 1], a2, a3, a4 - (a4 >> 1), &a5[a4 >> 1], a4 - (a4 >> 1));

      return std::__merge_move_construct[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::Section> &,flatbuffers::Offset<FlatbufferSymbols::Section> *,flatbuffers::Offset<FlatbufferSymbols::Section> *>(v9, &v9[a4 >> 1], &v9[a4 >> 1], a2, a5, a3);
    }

    else
    {

      return std::__insertion_sort_move[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::Section> &,flatbuffers::Offset<FlatbufferSymbols::Section> *>(result, a2, a5, a3);
    }
  }

  return result;
}

unsigned int *std::__merge_move_assign[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::Section> &,flatbuffers::Offset<FlatbufferSymbols::Section> *,flatbuffers::Offset<FlatbufferSymbols::Section> *,flatbuffers::Offset<FlatbufferSymbols::Section> *>(unsigned int *result, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, uint64_t a6)
{
  if (result == a2)
  {
LABEL_16:
    while (a3 != a4)
    {
      v16 = *a3++;
      *a5++ = v16;
    }
  }

  else
  {
    v11 = result;
    while (a3 != a4)
    {
      v12 = *(*a6 + 56) + *(*a6 + 40);
      result = FlatbufferSymbols::Section::KeyCompareLessThan((v12 - *a3), (v12 - *v11));
      if (result)
      {
        v13 = a3;
      }

      else
      {
        v13 = v11;
      }

      if (result)
      {
        v14 = 0;
      }

      else
      {
        v14 = 4;
      }

      v11 = (v11 + v14);
      if (result)
      {
        v15 = 4;
      }

      else
      {
        v15 = 0;
      }

      a3 = (a3 + v15);
      *a5++ = *v13;
      if (v11 == a2)
      {
        goto LABEL_16;
      }
    }

    while (v11 != a2)
    {
      v17 = *v11++;
      *a5++ = v17;
    }
  }

  return result;
}

void std::__inplace_merge<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::Section> &,flatbuffers::Offset<FlatbufferSymbols::Section> *>(unsigned int *a1, unsigned int *a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int *a7, uint64_t a8)
{
  if (a6)
  {
    v9 = a6;
    do
    {
      if (v9 <= a8 || a5 <= a8)
      {
        std::__buffered_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::Section> &,flatbuffers::Offset<FlatbufferSymbols::Section> *>(a1, a2, a3, a4, a5, v9, a7);
        return;
      }

      if (!a5)
      {
        return;
      }

      v15 = 0;
      v16 = 0;
      while (1)
      {
        v17 = *(*a4 + 56) + *(*a4 + 40);
        if (FlatbufferSymbols::Section::KeyCompareLessThan((v17 - *a2), (v17 - a1[v16])))
        {
          break;
        }

        ++v16;
        v15 -= 4;
        if (a5 == v16)
        {
          return;
        }
      }

      v18 = a5 - v16;
      v33 = a3;
      v34 = a8;
      v32 = &a1[v15 / 0xFFFFFFFFFFFFFFFCLL];
      if (a5 - v16 >= v9)
      {
        if (a5 - 1 == v16)
        {
          v30 = a1[v16];
          a1[v16] = *a2;
          *a2 = v30;
          return;
        }

        v22 = v18 / 2;
        v23 = &a1[v18 / 2 + v15 / 0xFFFFFFFFFFFFFFFCLL];
        v36 = *a4;
        v37 = 0;
        v20 = std::__lower_bound_bisecting[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::Offset<FlatbufferSymbols::Section> *,flatbuffers::Offset<FlatbufferSymbols::Section>,std::__identity,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::Section>>(a2, v23, a3 - a2, &v36);
        v21 = v23;
        v19 = v20 - a2;
      }

      else
      {
        v19 = v9 / 2;
        v20 = &a2[v9 / 2];
        v21 = std::__upper_bound[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::Section> &,flatbuffers::Offset<FlatbufferSymbols::Section> *,flatbuffers::Offset<FlatbufferSymbols::Section> *,flatbuffers::Offset<FlatbufferSymbols::Section>,std::__identity>(&a1[v15 / 0xFFFFFFFFFFFFFFFCLL], a2, v20, a4);
        v22 = (v21 - a1 + v15) >> 2;
      }

      v24 = a5 - v22 - v16;
      v25 = v9 - v19;
      v31 = v21;
      v26 = std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::Offset<FlatbufferSymbols::InlineSymbol> *,flatbuffers::Offset<FlatbufferSymbols::InlineSymbol> *>(v21, a2, v20);
      v27 = v26;
      if (v22 + v19 >= v9 + a5 - (v22 + v19) - v16)
      {
        std::__inplace_merge<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::Section> &,flatbuffers::Offset<FlatbufferSymbols::Section> *>(v26, v20, v33, a4, v24, v9 - v19, a7, v34);
        v20 = v31;
        v29 = v32;
        v25 = v19;
        v24 = v22;
        a8 = v34;
        a3 = v27;
      }

      else
      {
        v28 = v22;
        a8 = v34;
        std::__inplace_merge<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::Section> &,flatbuffers::Offset<FlatbufferSymbols::Section> *>(v32, v31, v26, a4, v28, v19, a7, v34);
        v29 = v27;
        a3 = v33;
      }

      a5 = v24;
      v9 = v25;
      a2 = v20;
      a1 = v29;
    }

    while (v25);
  }
}

BOOL FlatbufferSymbols::Section::KeyCompareLessThan(int *a1, int *a2)
{
  v2 = (a1 - *a1);
  if (*v2 >= 7u && (v3 = v2[3]) != 0)
  {
    v4 = *(a1 + v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = (a2 - *a2);
  if (*v5 >= 7u && (v6 = v5[3]) != 0)
  {
    v7 = *(a2 + v6);
  }

  else
  {
    v7 = -1;
  }

  return v4 < v7;
}

unsigned int *std::__insertion_sort_move[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::Section> &,flatbuffers::Offset<FlatbufferSymbols::Section> *>(unsigned int *result, unsigned int *a2, unsigned int *a3, uint64_t a4)
{
  if (result != a2)
  {
    v6 = result + 1;
    *a3 = *result;
    if (result + 1 != a2)
    {
      v8 = 0;
      v9 = a3;
      do
      {
        v10 = v9;
        v11 = *v9++;
        v12 = *(*a4 + 56) + *(*a4 + 40);
        result = FlatbufferSymbols::Section::KeyCompareLessThan((v12 - *v6), (v12 - v11));
        v13 = v9;
        if (result)
        {
          v10[1] = *v10;
          v13 = a3;
          if (v10 != a3)
          {
            v14 = v8;
            while (1)
            {
              v13 = (a3 + v14);
              v15 = *(*a4 + 56) + *(*a4 + 40);
              result = FlatbufferSymbols::Section::KeyCompareLessThan((v15 - *v6), (v15 - *(a3 + v14 - 4)));
              if (!result)
              {
                break;
              }

              *v13 = *(v13 - 1);
              v14 -= 4;
              if (!v14)
              {
                v13 = a3;
                break;
              }
            }
          }
        }

        v16 = *v6++;
        *v13 = v16;
        v8 += 4;
      }

      while (v6 != a2);
    }
  }

  return result;
}

unsigned int *std::__merge_move_construct[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::Section> &,flatbuffers::Offset<FlatbufferSymbols::Section> *,flatbuffers::Offset<FlatbufferSymbols::Section> *>(unsigned int *result, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, uint64_t a6)
{
  if (result == a2)
  {
LABEL_16:
    while (a3 != a4)
    {
      v16 = *a3++;
      *a5++ = v16;
    }
  }

  else
  {
    v11 = result;
    while (a3 != a4)
    {
      v12 = *(*a6 + 56) + *(*a6 + 40);
      result = FlatbufferSymbols::Section::KeyCompareLessThan((v12 - *a3), (v12 - *v11));
      if (result)
      {
        v13 = a3;
      }

      else
      {
        v13 = v11;
      }

      if (result)
      {
        v14 = 4;
      }

      else
      {
        v14 = 0;
      }

      a3 = (a3 + v14);
      if (result)
      {
        v15 = 0;
      }

      else
      {
        v15 = 4;
      }

      v11 = (v11 + v15);
      *a5++ = *v13;
      if (v11 == a2)
      {
        goto LABEL_16;
      }
    }

    while (v11 != a2)
    {
      v17 = *v11++;
      *a5++ = v17;
    }
  }

  return result;
}

void std::__buffered_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::Section> &,flatbuffers::Offset<FlatbufferSymbols::Section> *>(unsigned int *__dst, unsigned int *a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int *__src)
{
  if (a5 <= a6)
  {
    v12 = __src;
    if (__dst != a2)
    {
      v12 = __src;
      v13 = __dst;
      do
      {
        v14 = *v13++;
        *v12++ = v14;
      }

      while (v13 != a2);
    }

    std::__half_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::Section> &,flatbuffers::Offset<FlatbufferSymbols::Section> *,flatbuffers::Offset<FlatbufferSymbols::Section> *,flatbuffers::Offset<FlatbufferSymbols::Section> *,flatbuffers::Offset<FlatbufferSymbols::Section> *,flatbuffers::Offset<FlatbufferSymbols::Section> *>(__src, v12, a2, a3, __dst, a4);
  }

  else
  {
    v9 = __src;
    if (a2 != a3)
    {
      v9 = __src;
      v10 = a2;
      do
      {
        v11 = *v10++;
        *v9++ = v11;
      }

      while (v10 != a3);
    }

    v15 = a4;
    std::__half_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::__invert<flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::Section> &>,std::reverse_iterator<flatbuffers::Offset<FlatbufferSymbols::Section> *>,std::reverse_iterator<flatbuffers::Offset<FlatbufferSymbols::Section> *>,std::reverse_iterator<flatbuffers::Offset<FlatbufferSymbols::Section> *>,std::reverse_iterator<flatbuffers::Offset<FlatbufferSymbols::Section> *>,std::reverse_iterator<flatbuffers::Offset<FlatbufferSymbols::Section> *>>(v9, v9, __src, __src, a2, a2, __dst, __dst, a3, a3, &v15);
  }
}

_DWORD *std::__upper_bound[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::Section> &,flatbuffers::Offset<FlatbufferSymbols::Section> *,flatbuffers::Offset<FlatbufferSymbols::Section> *,flatbuffers::Offset<FlatbufferSymbols::Section>,std::__identity>(_DWORD *a1, _DWORD *a2, unsigned int *a3, uint64_t a4)
{
  v4 = a1;
  if (a2 != a1)
  {
    v7 = a2 - a1;
    do
    {
      v8 = &v4[v7 >> 1];
      v9 = *(*a4 + 56) + *(*a4 + 40);
      v11 = *v8;
      v10 = v8 + 1;
      if (FlatbufferSymbols::Section::KeyCompareLessThan((v9 - *a3), (v9 - v11)))
      {
        v7 >>= 1;
      }

      else
      {
        v4 = v10;
        v7 += ~(v7 >> 1);
      }
    }

    while (v7);
  }

  return v4;
}

unsigned int *std::__half_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::Section> &,flatbuffers::Offset<FlatbufferSymbols::Section> *,flatbuffers::Offset<FlatbufferSymbols::Section> *,flatbuffers::Offset<FlatbufferSymbols::Section> *,flatbuffers::Offset<FlatbufferSymbols::Section> *,flatbuffers::Offset<FlatbufferSymbols::Section> *>(unsigned int *__src, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *__dst, uint64_t a6)
{
  if (__src != a2)
  {
    v11 = __src;
    while (a3 != a4)
    {
      v12 = *(*a6 + 56) + *(*a6 + 40);
      __src = FlatbufferSymbols::Section::KeyCompareLessThan((v12 - *a3), (v12 - *v11));
      if (__src)
      {
        v13 = a3;
      }

      else
      {
        v13 = v11;
      }

      if (__src)
      {
        v14 = 0;
      }

      else
      {
        v14 = 4;
      }

      v11 = (v11 + v14);
      if (__src)
      {
        v15 = 4;
      }

      else
      {
        v15 = 0;
      }

      a3 = (a3 + v15);
      *__dst++ = *v13;
      if (v11 == a2)
      {
        return __src;
      }
    }

    return memmove(__dst, v11, a2 - v11);
  }

  return __src;
}

void std::__half_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::__invert<flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::Section> &>,std::reverse_iterator<flatbuffers::Offset<FlatbufferSymbols::Section> *>,std::reverse_iterator<flatbuffers::Offset<FlatbufferSymbols::Section> *>,std::reverse_iterator<flatbuffers::Offset<FlatbufferSymbols::Section> *>,std::reverse_iterator<flatbuffers::Offset<FlatbufferSymbols::Section> *>,std::reverse_iterator<flatbuffers::Offset<FlatbufferSymbols::Section> *>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2 != a4)
  {
    v14 = a2;
    while (a6 != a8)
    {
      v16 = *(**a11 + 56) + *(**a11 + 40);
      v17 = FlatbufferSymbols::Section::KeyCompareLessThan((v16 - *(v14 - 4)), (v16 - *(a6 - 4)));
      if (v17)
      {
        v18 = a6;
      }

      else
      {
        v18 = v14;
      }

      if (v17)
      {
        a6 -= 4;
      }

      else
      {
        v14 -= 4;
      }

      *(a10 - 4) = *(v18 - 4);
      a10 -= 4;
      if (v14 == a4)
      {
        return;
      }
    }

    if (a4 != v14)
    {
      v19 = -4;
      do
      {
        v20 = *(v14 - 4);
        v14 -= 4;
        *(a10 + v19) = v20;
        v19 -= 4;
      }

      while (v14 != a4);
    }
  }
}

_DWORD *std::__lower_bound_bisecting[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::Offset<FlatbufferSymbols::Section> *,flatbuffers::Offset<FlatbufferSymbols::Section>,std::__identity,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::Section>>(_DWORD *a1, unsigned int *a2, unint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a3;
    do
    {
      v8 = &a1[v6 >> 1];
      v10 = *v8;
      v9 = v8 + 1;
      v11 = *(*a4 + 56) + *(*a4 + 40);
      v12 = FlatbufferSymbols::Section::KeyCompareLessThan((v11 - v10), (v11 - *a2));
      if (v12)
      {
        v6 += ~(v6 >> 1);
      }

      else
      {
        v6 >>= 1;
      }

      if (v12)
      {
        a1 = v9;
      }
    }

    while (v6);
  }

  return a1;
}

void std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry> *,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::SymbolNameEntry>>(unsigned int *a1, unsigned int *a2, uint64_t a3)
{
  v6 = a2 - a1;
  if (v6 < 129)
  {
    v12 = 0;
    v8 = 0;
  }

  else
  {
    v7 = MEMORY[0x1E69E5398];
    v8 = a2 - a1;
    while (1)
    {
      v9 = operator new(4 * v8, v7);
      if (v9)
      {
        break;
      }

      v10 = v8 >> 1;
      v11 = v8 > 1;
      v8 >>= 1;
      if (!v11)
      {
        v12 = 0;
        v8 = v10;
        goto LABEL_8;
      }
    }

    v12 = v9;
  }

LABEL_8:
  std::__stable_sort<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::SymbolNameEntry> &,flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry> *>(a1, a2, a3, v6, v12, v8);
  if (v12)
  {

    operator delete(v12);
  }
}

void sub_1D96FA930(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__stable_sort<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::SymbolNameEntry> &,flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry> *>(unsigned int *a1, unsigned int *a2, uint64_t a3, unint64_t a4, unsigned int *a5, uint64_t a6)
{
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      v9 = *(*a3 + 56) + *(*a3 + 40);
      if (FlatbufferSymbols::SymbolNameEntry::KeyCompareLessThan((v9 - *(a2 - 1)), (v9 - *a1)))
      {
        v10 = *a1;
        *a1 = *(a2 - 1);
        *(a2 - 1) = v10;
      }
    }

    else if (a4 > 128)
    {
      v14 = a4 >> 1;
      v15 = &a1[a4 >> 1];
      v16 = a4 >> 1;
      if (a4 <= a6)
      {
        std::__stable_sort_move<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::SymbolNameEntry> &,flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry> *>(a1, v15, a3, v16, a5);
        std::__stable_sort_move<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::SymbolNameEntry> &,flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry> *>(&a1[a4 >> 1], a2, a3, a4 - (a4 >> 1), &a5[v14]);

        std::__merge_move_assign[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::SymbolNameEntry> &,flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry> *,flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry> *,flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry> *>(a5, &a5[v14], &a5[v14], &a5[a4], a1, a3);
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::SymbolNameEntry> &,flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry> *>(a1, v15, a3, v16, a5, a6);
        std::__stable_sort<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::SymbolNameEntry> &,flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry> *>(&a1[a4 >> 1], a2, a3, a4 - (a4 >> 1), a5, a6);

        std::__inplace_merge<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::SymbolNameEntry> &,flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry> *>(a1, &a1[a4 >> 1], a2, a3, a4 >> 1, a4 - (a4 >> 1), a5, a6);
      }
    }

    else
    {

      std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::SymbolNameEntry> &,flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry> *>(a1, a2, a3);
    }
  }
}

unsigned int *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::SymbolNameEntry> &,flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry> *>(unsigned int *result, unsigned int *a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = result + 1;
    if (result + 1 != a2)
    {
      v7 = 0;
      v8 = result;
      do
      {
        v10 = *v8;
        v9 = v8[1];
        v8 = v5;
        v11 = *(*a3 + 56) + *(*a3 + 40);
        result = FlatbufferSymbols::SymbolNameEntry::KeyCompareLessThan((v11 - v9), (v11 - v10));
        if (result)
        {
          v12 = *v8;
          v13 = v7;
          while (1)
          {
            *(v4 + v13 + 4) = *(v4 + v13);
            if (!v13)
            {
              break;
            }

            v14 = *(*a3 + 56) + *(*a3 + 40);
            result = FlatbufferSymbols::SymbolNameEntry::KeyCompareLessThan((v14 - v12), (v14 - *(v4 + v13 - 4)));
            v13 -= 4;
            if ((result & 1) == 0)
            {
              v15 = (v4 + v13 + 4);
              goto LABEL_10;
            }
          }

          v15 = v4;
LABEL_10:
          *v15 = v12;
        }

        v5 = v8 + 1;
        v7 += 4;
      }

      while (v8 + 1 != a2);
    }
  }

  return result;
}

unsigned int *std::__stable_sort_move<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::SymbolNameEntry> &,flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry> *>(unsigned int *result, unsigned int *a2, uint64_t a3, unint64_t a4, unsigned int *a5)
{
  if (a4)
  {
    v9 = result;
    if (a4 == 2)
    {
      v10 = *(*a3 + 56) + *(*a3 + 40);
      result = FlatbufferSymbols::SymbolNameEntry::KeyCompareLessThan((v10 - *(a2 - 1)), (v10 - *result));
      if (result)
      {
        *a5 = *(a2 - 1);
        v11 = *v9;
      }

      else
      {
        *a5 = *v9;
        v11 = *(a2 - 1);
      }

      a5[1] = v11;
    }

    else if (a4 == 1)
    {
      *a5 = *result;
    }

    else if (a4 > 8)
    {
      std::__stable_sort<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::SymbolNameEntry> &,flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry> *>(result, &result[a4 >> 1], a3, a4 >> 1, a5, a4 >> 1);
      std::__stable_sort<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::SymbolNameEntry> &,flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry> *>(&v9[a4 >> 1], a2, a3, a4 - (a4 >> 1), &a5[a4 >> 1], a4 - (a4 >> 1));

      return std::__merge_move_construct[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::SymbolNameEntry> &,flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry> *,flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry> *>(v9, &v9[a4 >> 1], &v9[a4 >> 1], a2, a5, a3);
    }

    else
    {

      return std::__insertion_sort_move[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::SymbolNameEntry> &,flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry> *>(result, a2, a5, a3);
    }
  }

  return result;
}

unsigned int *std::__merge_move_assign[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::SymbolNameEntry> &,flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry> *,flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry> *,flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry> *>(unsigned int *result, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, uint64_t a6)
{
  if (result == a2)
  {
LABEL_16:
    while (a3 != a4)
    {
      v16 = *a3++;
      *a5++ = v16;
    }
  }

  else
  {
    v11 = result;
    while (a3 != a4)
    {
      v12 = *(*a6 + 56) + *(*a6 + 40);
      result = FlatbufferSymbols::SymbolNameEntry::KeyCompareLessThan((v12 - *a3), (v12 - *v11));
      if (result)
      {
        v13 = a3;
      }

      else
      {
        v13 = v11;
      }

      if (result)
      {
        v14 = 0;
      }

      else
      {
        v14 = 4;
      }

      v11 = (v11 + v14);
      if (result)
      {
        v15 = 4;
      }

      else
      {
        v15 = 0;
      }

      a3 = (a3 + v15);
      *a5++ = *v13;
      if (v11 == a2)
      {
        goto LABEL_16;
      }
    }

    while (v11 != a2)
    {
      v17 = *v11++;
      *a5++ = v17;
    }
  }

  return result;
}

void std::__inplace_merge<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::SymbolNameEntry> &,flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry> *>(unsigned int *a1, unsigned int *a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int *a7, uint64_t a8)
{
  if (a6)
  {
    v9 = a6;
    do
    {
      if (v9 <= a8 || a5 <= a8)
      {
        std::__buffered_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::SymbolNameEntry> &,flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry> *>(a1, a2, a3, a4, a5, v9, a7);
        return;
      }

      if (!a5)
      {
        return;
      }

      v15 = 0;
      v16 = 0;
      while (1)
      {
        v17 = *(*a4 + 56) + *(*a4 + 40);
        if (FlatbufferSymbols::SymbolNameEntry::KeyCompareLessThan((v17 - *a2), (v17 - a1[v16])))
        {
          break;
        }

        ++v16;
        v15 -= 4;
        if (a5 == v16)
        {
          return;
        }
      }

      v18 = a5 - v16;
      v33 = a3;
      v34 = a8;
      v32 = &a1[v15 / 0xFFFFFFFFFFFFFFFCLL];
      if (a5 - v16 >= v9)
      {
        if (a5 - 1 == v16)
        {
          v30 = a1[v16];
          a1[v16] = *a2;
          *a2 = v30;
          return;
        }

        v22 = v18 / 2;
        v23 = &a1[v18 / 2 + v15 / 0xFFFFFFFFFFFFFFFCLL];
        v36 = *a4;
        v37 = 0;
        v20 = std::__lower_bound_bisecting[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry> *,flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry>,std::__identity,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::SymbolNameEntry>>(a2, v23, a3 - a2, &v36);
        v21 = v23;
        v19 = v20 - a2;
      }

      else
      {
        v19 = v9 / 2;
        v20 = &a2[v9 / 2];
        v21 = std::__upper_bound[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::SymbolNameEntry> &,flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry> *,flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry> *,flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry>,std::__identity>(&a1[v15 / 0xFFFFFFFFFFFFFFFCLL], a2, v20, a4);
        v22 = (v21 - a1 + v15) >> 2;
      }

      v24 = a5 - v22 - v16;
      v25 = v9 - v19;
      v31 = v21;
      v26 = std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::Offset<FlatbufferSymbols::InlineSymbol> *,flatbuffers::Offset<FlatbufferSymbols::InlineSymbol> *>(v21, a2, v20);
      v27 = v26;
      if (v22 + v19 >= v9 + a5 - (v22 + v19) - v16)
      {
        std::__inplace_merge<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::SymbolNameEntry> &,flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry> *>(v26, v20, v33, a4, v24, v9 - v19, a7, v34);
        v20 = v31;
        v29 = v32;
        v25 = v19;
        v24 = v22;
        a8 = v34;
        a3 = v27;
      }

      else
      {
        v28 = v22;
        a8 = v34;
        std::__inplace_merge<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::SymbolNameEntry> &,flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry> *>(v32, v31, v26, a4, v28, v19, a7, v34);
        v29 = v27;
        a3 = v33;
      }

      a5 = v24;
      v9 = v25;
      a2 = v20;
      a1 = v29;
    }

    while (v25);
  }
}

BOOL FlatbufferSymbols::SymbolNameEntry::KeyCompareLessThan(int *a1, int *a2)
{
  v2 = (a1 + *(a1 - *a1 + 4));
  v3 = (v2 + *v2);
  v4 = (a2 + *(a2 - *a2 + 4));
  v5 = *v4;
  v8 = *v3;
  v6 = v3 + 1;
  v7 = v8;
  v9 = *(v4 + v5);
  if (v9 >= v8)
  {
    v10 = v7;
  }

  else
  {
    v10 = v9;
  }

  v11 = memcmp(v6, v4 + v5 + 4, v10);
  if (v11)
  {
    return v11 < 0;
  }

  else
  {
    return v7 < v9;
  }
}

unsigned int *std::__insertion_sort_move[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::SymbolNameEntry> &,flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry> *>(unsigned int *result, unsigned int *a2, unsigned int *a3, uint64_t a4)
{
  if (result != a2)
  {
    v6 = result + 1;
    *a3 = *result;
    if (result + 1 != a2)
    {
      v8 = 0;
      v9 = a3;
      do
      {
        v10 = v9;
        v11 = *v9++;
        v12 = *(*a4 + 56) + *(*a4 + 40);
        result = FlatbufferSymbols::SymbolNameEntry::KeyCompareLessThan((v12 - *v6), (v12 - v11));
        v13 = v9;
        if (result)
        {
          v10[1] = *v10;
          v13 = a3;
          if (v10 != a3)
          {
            v14 = v8;
            while (1)
            {
              v13 = (a3 + v14);
              v15 = *(*a4 + 56) + *(*a4 + 40);
              result = FlatbufferSymbols::SymbolNameEntry::KeyCompareLessThan((v15 - *v6), (v15 - *(a3 + v14 - 4)));
              if (!result)
              {
                break;
              }

              *v13 = *(v13 - 1);
              v14 -= 4;
              if (!v14)
              {
                v13 = a3;
                break;
              }
            }
          }
        }

        v16 = *v6++;
        *v13 = v16;
        v8 += 4;
      }

      while (v6 != a2);
    }
  }

  return result;
}

unsigned int *std::__merge_move_construct[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::SymbolNameEntry> &,flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry> *,flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry> *>(unsigned int *result, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, uint64_t a6)
{
  if (result == a2)
  {
LABEL_16:
    while (a3 != a4)
    {
      v16 = *a3++;
      *a5++ = v16;
    }
  }

  else
  {
    v11 = result;
    while (a3 != a4)
    {
      v12 = *(*a6 + 56) + *(*a6 + 40);
      result = FlatbufferSymbols::SymbolNameEntry::KeyCompareLessThan((v12 - *a3), (v12 - *v11));
      if (result)
      {
        v13 = a3;
      }

      else
      {
        v13 = v11;
      }

      if (result)
      {
        v14 = 4;
      }

      else
      {
        v14 = 0;
      }

      a3 = (a3 + v14);
      if (result)
      {
        v15 = 0;
      }

      else
      {
        v15 = 4;
      }

      v11 = (v11 + v15);
      *a5++ = *v13;
      if (v11 == a2)
      {
        goto LABEL_16;
      }
    }

    while (v11 != a2)
    {
      v17 = *v11++;
      *a5++ = v17;
    }
  }

  return result;
}

void std::__buffered_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::SymbolNameEntry> &,flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry> *>(unsigned int *__dst, unsigned int *a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int *__src)
{
  if (a5 <= a6)
  {
    v12 = __src;
    if (__dst != a2)
    {
      v12 = __src;
      v13 = __dst;
      do
      {
        v14 = *v13++;
        *v12++ = v14;
      }

      while (v13 != a2);
    }

    std::__half_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::SymbolNameEntry> &,flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry> *,flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry> *,flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry> *,flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry> *,flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry> *>(__src, v12, a2, a3, __dst, a4);
  }

  else
  {
    v9 = __src;
    if (a2 != a3)
    {
      v9 = __src;
      v10 = a2;
      do
      {
        v11 = *v10++;
        *v9++ = v11;
      }

      while (v10 != a3);
    }

    v15 = a4;
    std::__half_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::__invert<flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::SymbolNameEntry> &>,std::reverse_iterator<flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry> *>,std::reverse_iterator<flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry> *>,std::reverse_iterator<flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry> *>,std::reverse_iterator<flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry> *>,std::reverse_iterator<flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry> *>>(v9, v9, __src, __src, a2, a2, __dst, __dst, a3, a3, &v15);
  }
}

_DWORD *std::__upper_bound[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::SymbolNameEntry> &,flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry> *,flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry> *,flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry>,std::__identity>(_DWORD *a1, _DWORD *a2, unsigned int *a3, uint64_t a4)
{
  v4 = a1;
  if (a2 != a1)
  {
    v7 = a2 - a1;
    do
    {
      v8 = &v4[v7 >> 1];
      v9 = *(*a4 + 56) + *(*a4 + 40);
      v11 = *v8;
      v10 = v8 + 1;
      if (FlatbufferSymbols::SymbolNameEntry::KeyCompareLessThan((v9 - *a3), (v9 - v11)))
      {
        v7 >>= 1;
      }

      else
      {
        v4 = v10;
        v7 += ~(v7 >> 1);
      }
    }

    while (v7);
  }

  return v4;
}

unsigned int *std::__half_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::SymbolNameEntry> &,flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry> *,flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry> *,flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry> *,flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry> *,flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry> *>(unsigned int *__src, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *__dst, uint64_t a6)
{
  if (__src != a2)
  {
    v11 = __src;
    while (a3 != a4)
    {
      v12 = *(*a6 + 56) + *(*a6 + 40);
      __src = FlatbufferSymbols::SymbolNameEntry::KeyCompareLessThan((v12 - *a3), (v12 - *v11));
      if (__src)
      {
        v13 = a3;
      }

      else
      {
        v13 = v11;
      }

      if (__src)
      {
        v14 = 0;
      }

      else
      {
        v14 = 4;
      }

      v11 = (v11 + v14);
      if (__src)
      {
        v15 = 4;
      }

      else
      {
        v15 = 0;
      }

      a3 = (a3 + v15);
      *__dst++ = *v13;
      if (v11 == a2)
      {
        return __src;
      }
    }

    return memmove(__dst, v11, a2 - v11);
  }

  return __src;
}

void std::__half_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::__invert<flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::SymbolNameEntry> &>,std::reverse_iterator<flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry> *>,std::reverse_iterator<flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry> *>,std::reverse_iterator<flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry> *>,std::reverse_iterator<flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry> *>,std::reverse_iterator<flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry> *>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2 != a4)
  {
    v14 = a2;
    while (a6 != a8)
    {
      v16 = *(**a11 + 56) + *(**a11 + 40);
      v17 = FlatbufferSymbols::SymbolNameEntry::KeyCompareLessThan((v16 - *(v14 - 4)), (v16 - *(a6 - 4)));
      if (v17)
      {
        v18 = a6;
      }

      else
      {
        v18 = v14;
      }

      if (v17)
      {
        a6 -= 4;
      }

      else
      {
        v14 -= 4;
      }

      *(a10 - 4) = *(v18 - 4);
      a10 -= 4;
      if (v14 == a4)
      {
        return;
      }
    }

    if (a4 != v14)
    {
      v19 = -4;
      do
      {
        v20 = *(v14 - 4);
        v14 -= 4;
        *(a10 + v19) = v20;
        v19 -= 4;
      }

      while (v14 != a4);
    }
  }
}

_DWORD *std::__lower_bound_bisecting[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry> *,flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry>,std::__identity,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::SymbolNameEntry>>(_DWORD *a1, unsigned int *a2, unint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a3;
    do
    {
      v8 = &a1[v6 >> 1];
      v10 = *v8;
      v9 = v8 + 1;
      v11 = *(*a4 + 56) + *(*a4 + 40);
      v12 = FlatbufferSymbols::SymbolNameEntry::KeyCompareLessThan((v11 - v10), (v11 - *a2));
      if (v12)
      {
        v6 += ~(v6 >> 1);
      }

      else
      {
        v6 >>= 1;
      }

      if (v12)
      {
        a1 = v9;
      }
    }

    while (v6);
  }

  return a1;
}

void std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::Offset<FlatbufferSymbols::Segment> *,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::Segment>>(unsigned int *a1, unsigned int *a2, uint64_t a3)
{
  v6 = a2 - a1;
  if (v6 < 129)
  {
    v12 = 0;
    v8 = 0;
  }

  else
  {
    v7 = MEMORY[0x1E69E5398];
    v8 = a2 - a1;
    while (1)
    {
      v9 = operator new(4 * v8, v7);
      if (v9)
      {
        break;
      }

      v10 = v8 >> 1;
      v11 = v8 > 1;
      v8 >>= 1;
      if (!v11)
      {
        v12 = 0;
        v8 = v10;
        goto LABEL_8;
      }
    }

    v12 = v9;
  }

LABEL_8:
  std::__stable_sort<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::Segment> &,flatbuffers::Offset<FlatbufferSymbols::Segment> *>(a1, a2, a3, v6, v12, v8);
  if (v12)
  {

    operator delete(v12);
  }
}

void sub_1D96FB774(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__stable_sort<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::Segment> &,flatbuffers::Offset<FlatbufferSymbols::Segment> *>(unsigned int *a1, unsigned int *a2, uint64_t a3, unint64_t a4, unsigned int *a5, uint64_t a6)
{
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      v9 = *(*a3 + 56) + *(*a3 + 40);
      if (FlatbufferSymbols::Section::KeyCompareLessThan((v9 - *(a2 - 1)), (v9 - *a1)))
      {
        v10 = *a1;
        *a1 = *(a2 - 1);
        *(a2 - 1) = v10;
      }
    }

    else if (a4 > 128)
    {
      v14 = a4 >> 1;
      v15 = &a1[a4 >> 1];
      v16 = a4 >> 1;
      if (a4 <= a6)
      {
        std::__stable_sort_move<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::Segment> &,flatbuffers::Offset<FlatbufferSymbols::Segment> *>(a1, v15, a3, v16, a5);
        std::__stable_sort_move<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::Segment> &,flatbuffers::Offset<FlatbufferSymbols::Segment> *>(&a1[a4 >> 1], a2, a3, a4 - (a4 >> 1), &a5[v14]);

        std::__merge_move_assign[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::Section> &,flatbuffers::Offset<FlatbufferSymbols::Section> *,flatbuffers::Offset<FlatbufferSymbols::Section> *,flatbuffers::Offset<FlatbufferSymbols::Section> *>(a5, &a5[v14], &a5[v14], &a5[a4], a1, a3);
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::Segment> &,flatbuffers::Offset<FlatbufferSymbols::Segment> *>(a1, v15, a3, v16, a5, a6);
        std::__stable_sort<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::Segment> &,flatbuffers::Offset<FlatbufferSymbols::Segment> *>(&a1[a4 >> 1], a2, a3, a4 - (a4 >> 1), a5, a6);

        std::__inplace_merge<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::Section> &,flatbuffers::Offset<FlatbufferSymbols::Section> *>(a1, &a1[a4 >> 1], a2, a3, a4 >> 1, a4 - (a4 >> 1), a5, a6);
      }
    }

    else
    {

      std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::Section> &,flatbuffers::Offset<FlatbufferSymbols::Section> *>(a1, a2, a3);
    }
  }
}

unsigned int *std::__stable_sort_move<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::Segment> &,flatbuffers::Offset<FlatbufferSymbols::Segment> *>(unsigned int *result, unsigned int *a2, uint64_t a3, unint64_t a4, unsigned int *a5)
{
  if (a4)
  {
    v9 = result;
    if (a4 == 2)
    {
      v10 = *(*a3 + 56) + *(*a3 + 40);
      result = FlatbufferSymbols::Section::KeyCompareLessThan((v10 - *(a2 - 1)), (v10 - *result));
      if (result)
      {
        *a5 = *(a2 - 1);
        v11 = *v9;
      }

      else
      {
        *a5 = *v9;
        v11 = *(a2 - 1);
      }

      a5[1] = v11;
    }

    else if (a4 == 1)
    {
      *a5 = *result;
    }

    else if (a4 > 8)
    {
      std::__stable_sort<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::Segment> &,flatbuffers::Offset<FlatbufferSymbols::Segment> *>(result, &result[a4 >> 1], a3, a4 >> 1, a5, a4 >> 1);
      std::__stable_sort<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::Segment> &,flatbuffers::Offset<FlatbufferSymbols::Segment> *>(&v9[a4 >> 1], a2, a3, a4 - (a4 >> 1), &a5[a4 >> 1], a4 - (a4 >> 1));

      return std::__merge_move_construct[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::Section> &,flatbuffers::Offset<FlatbufferSymbols::Section> *,flatbuffers::Offset<FlatbufferSymbols::Section> *>(v9, &v9[a4 >> 1], &v9[a4 >> 1], a2, a5, a3);
    }

    else
    {

      return std::__insertion_sort_move[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::Section> &,flatbuffers::Offset<FlatbufferSymbols::Section> *>(result, a2, a5, a3);
    }
  }

  return result;
}

void std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::Offset<FlatbufferSymbols::TranslatedImageInfo> *,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::TranslatedImageInfo>>(unsigned int *a1, unsigned int *a2, uint64_t a3)
{
  v6 = a2 - a1;
  if (v6 < 129)
  {
    v12 = 0;
    v8 = 0;
  }

  else
  {
    v7 = MEMORY[0x1E69E5398];
    v8 = a2 - a1;
    while (1)
    {
      v9 = operator new(4 * v8, v7);
      if (v9)
      {
        break;
      }

      v10 = v8 >> 1;
      v11 = v8 > 1;
      v8 >>= 1;
      if (!v11)
      {
        v12 = 0;
        v8 = v10;
        goto LABEL_8;
      }
    }

    v12 = v9;
  }

LABEL_8:
  std::__stable_sort<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::TranslatedImageInfo> &,flatbuffers::Offset<FlatbufferSymbols::TranslatedImageInfo> *>(a1, a2, a3, v6, v12, v8);
  if (v12)
  {

    operator delete(v12);
  }
}

void sub_1D96FBBB4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__stable_sort<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::TranslatedImageInfo> &,flatbuffers::Offset<FlatbufferSymbols::TranslatedImageInfo> *>(unsigned int *a1, unsigned int *a2, uint64_t a3, unint64_t a4, unsigned int *a5, uint64_t a6)
{
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      v9 = *(*a3 + 56) + *(*a3 + 40);
      if (FlatbufferSymbols::TranslatedImageInfo::KeyCompareLessThan((v9 - *(a2 - 1)), (v9 - *a1)))
      {
        v10 = *a1;
        *a1 = *(a2 - 1);
        *(a2 - 1) = v10;
      }
    }

    else if (a4 > 128)
    {
      v14 = a4 >> 1;
      v15 = &a1[a4 >> 1];
      v16 = a4 >> 1;
      if (a4 <= a6)
      {
        std::__stable_sort_move<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::TranslatedImageInfo> &,flatbuffers::Offset<FlatbufferSymbols::TranslatedImageInfo> *>(a1, v15, a3, v16, a5);
        std::__stable_sort_move<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::TranslatedImageInfo> &,flatbuffers::Offset<FlatbufferSymbols::TranslatedImageInfo> *>(&a1[a4 >> 1], a2, a3, a4 - (a4 >> 1), &a5[v14]);

        std::__merge_move_assign[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::TranslatedImageInfo> &,flatbuffers::Offset<FlatbufferSymbols::TranslatedImageInfo> *,flatbuffers::Offset<FlatbufferSymbols::TranslatedImageInfo> *,flatbuffers::Offset<FlatbufferSymbols::TranslatedImageInfo> *>(a5, &a5[v14], &a5[v14], &a5[a4], a1, a3);
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::TranslatedImageInfo> &,flatbuffers::Offset<FlatbufferSymbols::TranslatedImageInfo> *>(a1, v15, a3, v16, a5, a6);
        std::__stable_sort<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::TranslatedImageInfo> &,flatbuffers::Offset<FlatbufferSymbols::TranslatedImageInfo> *>(&a1[a4 >> 1], a2, a3, a4 - (a4 >> 1), a5, a6);

        std::__inplace_merge<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::TranslatedImageInfo> &,flatbuffers::Offset<FlatbufferSymbols::TranslatedImageInfo> *>(a1, &a1[a4 >> 1], a2, a3, a4 >> 1, a4 - (a4 >> 1), a5, a6);
      }
    }

    else
    {

      std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::TranslatedImageInfo> &,flatbuffers::Offset<FlatbufferSymbols::TranslatedImageInfo> *>(a1, a2, a3);
    }
  }
}

unsigned int *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::TranslatedImageInfo> &,flatbuffers::Offset<FlatbufferSymbols::TranslatedImageInfo> *>(unsigned int *result, unsigned int *a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = result + 1;
    if (result + 1 != a2)
    {
      v7 = 0;
      v8 = result;
      do
      {
        v10 = *v8;
        v9 = v8[1];
        v8 = v5;
        v11 = *(*a3 + 56) + *(*a3 + 40);
        result = FlatbufferSymbols::TranslatedImageInfo::KeyCompareLessThan((v11 - v9), (v11 - v10));
        if (result)
        {
          v12 = *v8;
          v13 = v7;
          while (1)
          {
            *(v4 + v13 + 4) = *(v4 + v13);
            if (!v13)
            {
              break;
            }

            v14 = *(*a3 + 56) + *(*a3 + 40);
            result = FlatbufferSymbols::TranslatedImageInfo::KeyCompareLessThan((v14 - v12), (v14 - *(v4 + v13 - 4)));
            v13 -= 4;
            if ((result & 1) == 0)
            {
              v15 = (v4 + v13 + 4);
              goto LABEL_10;
            }
          }

          v15 = v4;
LABEL_10:
          *v15 = v12;
        }

        v5 = v8 + 1;
        v7 += 4;
      }

      while (v8 + 1 != a2);
    }
  }

  return result;
}

unsigned int *std::__stable_sort_move<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::TranslatedImageInfo> &,flatbuffers::Offset<FlatbufferSymbols::TranslatedImageInfo> *>(unsigned int *result, unsigned int *a2, uint64_t a3, unint64_t a4, unsigned int *a5)
{
  if (a4)
  {
    v9 = result;
    if (a4 == 2)
    {
      v10 = *(*a3 + 56) + *(*a3 + 40);
      result = FlatbufferSymbols::TranslatedImageInfo::KeyCompareLessThan((v10 - *(a2 - 1)), (v10 - *result));
      if (result)
      {
        *a5 = *(a2 - 1);
        v11 = *v9;
      }

      else
      {
        *a5 = *v9;
        v11 = *(a2 - 1);
      }

      a5[1] = v11;
    }

    else if (a4 == 1)
    {
      *a5 = *result;
    }

    else if (a4 > 8)
    {
      std::__stable_sort<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::TranslatedImageInfo> &,flatbuffers::Offset<FlatbufferSymbols::TranslatedImageInfo> *>(result, &result[a4 >> 1], a3, a4 >> 1, a5, a4 >> 1);
      std::__stable_sort<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::TranslatedImageInfo> &,flatbuffers::Offset<FlatbufferSymbols::TranslatedImageInfo> *>(&v9[a4 >> 1], a2, a3, a4 - (a4 >> 1), &a5[a4 >> 1], a4 - (a4 >> 1));

      return std::__merge_move_construct[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::TranslatedImageInfo> &,flatbuffers::Offset<FlatbufferSymbols::TranslatedImageInfo> *,flatbuffers::Offset<FlatbufferSymbols::TranslatedImageInfo> *>(v9, &v9[a4 >> 1], &v9[a4 >> 1], a2, a5, a3);
    }

    else
    {

      return std::__insertion_sort_move[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::TranslatedImageInfo> &,flatbuffers::Offset<FlatbufferSymbols::TranslatedImageInfo> *>(result, a2, a5, a3);
    }
  }

  return result;
}

unsigned int *std::__merge_move_assign[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::TranslatedImageInfo> &,flatbuffers::Offset<FlatbufferSymbols::TranslatedImageInfo> *,flatbuffers::Offset<FlatbufferSymbols::TranslatedImageInfo> *,flatbuffers::Offset<FlatbufferSymbols::TranslatedImageInfo> *>(unsigned int *result, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, uint64_t a6)
{
  if (result == a2)
  {
LABEL_16:
    while (a3 != a4)
    {
      v16 = *a3++;
      *a5++ = v16;
    }
  }

  else
  {
    v11 = result;
    while (a3 != a4)
    {
      v12 = *(*a6 + 56) + *(*a6 + 40);
      result = FlatbufferSymbols::TranslatedImageInfo::KeyCompareLessThan((v12 - *a3), (v12 - *v11));
      if (result)
      {
        v13 = a3;
      }

      else
      {
        v13 = v11;
      }

      if (result)
      {
        v14 = 0;
      }

      else
      {
        v14 = 4;
      }

      v11 = (v11 + v14);
      if (result)
      {
        v15 = 4;
      }

      else
      {
        v15 = 0;
      }

      a3 = (a3 + v15);
      *a5++ = *v13;
      if (v11 == a2)
      {
        goto LABEL_16;
      }
    }

    while (v11 != a2)
    {
      v17 = *v11++;
      *a5++ = v17;
    }
  }

  return result;
}

void std::__inplace_merge<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::TranslatedImageInfo> &,flatbuffers::Offset<FlatbufferSymbols::TranslatedImageInfo> *>(unsigned int *a1, unsigned int *a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int *a7, uint64_t a8)
{
  if (a6)
  {
    v9 = a6;
    do
    {
      if (v9 <= a8 || a5 <= a8)
      {
        std::__buffered_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::TranslatedImageInfo> &,flatbuffers::Offset<FlatbufferSymbols::TranslatedImageInfo> *>(a1, a2, a3, a4, a5, v9, a7);
        return;
      }

      if (!a5)
      {
        return;
      }

      v15 = 0;
      v16 = 0;
      while (1)
      {
        v17 = *(*a4 + 56) + *(*a4 + 40);
        if (FlatbufferSymbols::TranslatedImageInfo::KeyCompareLessThan((v17 - *a2), (v17 - a1[v16])))
        {
          break;
        }

        ++v16;
        v15 -= 4;
        if (a5 == v16)
        {
          return;
        }
      }

      v18 = a5 - v16;
      v33 = a3;
      v34 = a8;
      v32 = &a1[v15 / 0xFFFFFFFFFFFFFFFCLL];
      if (a5 - v16 >= v9)
      {
        if (a5 - 1 == v16)
        {
          v30 = a1[v16];
          a1[v16] = *a2;
          *a2 = v30;
          return;
        }

        v22 = v18 / 2;
        v23 = &a1[v18 / 2 + v15 / 0xFFFFFFFFFFFFFFFCLL];
        v36 = *a4;
        v37 = 0;
        v20 = std::__lower_bound_bisecting[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::Offset<FlatbufferSymbols::TranslatedImageInfo> *,flatbuffers::Offset<FlatbufferSymbols::TranslatedImageInfo>,std::__identity,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::TranslatedImageInfo>>(a2, v23, a3 - a2, &v36);
        v21 = v23;
        v19 = v20 - a2;
      }

      else
      {
        v19 = v9 / 2;
        v20 = &a2[v9 / 2];
        v21 = std::__upper_bound[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::TranslatedImageInfo> &,flatbuffers::Offset<FlatbufferSymbols::TranslatedImageInfo> *,flatbuffers::Offset<FlatbufferSymbols::TranslatedImageInfo> *,flatbuffers::Offset<FlatbufferSymbols::TranslatedImageInfo>,std::__identity>(&a1[v15 / 0xFFFFFFFFFFFFFFFCLL], a2, v20, a4);
        v22 = (v21 - a1 + v15) >> 2;
      }

      v24 = a5 - v22 - v16;
      v25 = v9 - v19;
      v31 = v21;
      v26 = std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::Offset<FlatbufferSymbols::InlineSymbol> *,flatbuffers::Offset<FlatbufferSymbols::InlineSymbol> *>(v21, a2, v20);
      v27 = v26;
      if (v22 + v19 >= v9 + a5 - (v22 + v19) - v16)
      {
        std::__inplace_merge<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::TranslatedImageInfo> &,flatbuffers::Offset<FlatbufferSymbols::TranslatedImageInfo> *>(v26, v20, v33, a4, v24, v9 - v19, a7, v34);
        v20 = v31;
        v29 = v32;
        v25 = v19;
        v24 = v22;
        a8 = v34;
        a3 = v27;
      }

      else
      {
        v28 = v22;
        a8 = v34;
        std::__inplace_merge<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::TranslatedImageInfo> &,flatbuffers::Offset<FlatbufferSymbols::TranslatedImageInfo> *>(v32, v31, v26, a4, v28, v19, a7, v34);
        v29 = v27;
        a3 = v33;
      }

      a5 = v24;
      v9 = v25;
      a2 = v20;
      a1 = v29;
    }

    while (v25);
  }
}

BOOL FlatbufferSymbols::TranslatedImageInfo::KeyCompareLessThan(int *a1, int *a2)
{
  v2 = (a1 - *a1);
  if (*v2 < 7u)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2[3];
    if (v3)
    {
      v3 = *(a1 + v3);
    }
  }

  v4 = (a2 - *a2);
  if (*v4 < 7u)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4[3];
    if (v5)
    {
      v5 = *(a2 + v5);
    }
  }

  return v3 < v5;
}

unsigned int *std::__insertion_sort_move[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::TranslatedImageInfo> &,flatbuffers::Offset<FlatbufferSymbols::TranslatedImageInfo> *>(unsigned int *result, unsigned int *a2, unsigned int *a3, uint64_t a4)
{
  if (result != a2)
  {
    v6 = result + 1;
    *a3 = *result;
    if (result + 1 != a2)
    {
      v8 = 0;
      v9 = a3;
      do
      {
        v10 = v9;
        v11 = *v9++;
        v12 = *(*a4 + 56) + *(*a4 + 40);
        result = FlatbufferSymbols::TranslatedImageInfo::KeyCompareLessThan((v12 - *v6), (v12 - v11));
        v13 = v9;
        if (result)
        {
          v10[1] = *v10;
          v13 = a3;
          if (v10 != a3)
          {
            v14 = v8;
            while (1)
            {
              v13 = (a3 + v14);
              v15 = *(*a4 + 56) + *(*a4 + 40);
              result = FlatbufferSymbols::TranslatedImageInfo::KeyCompareLessThan((v15 - *v6), (v15 - *(a3 + v14 - 4)));
              if (!result)
              {
                break;
              }

              *v13 = *(v13 - 1);
              v14 -= 4;
              if (!v14)
              {
                v13 = a3;
                break;
              }
            }
          }
        }

        v16 = *v6++;
        *v13 = v16;
        v8 += 4;
      }

      while (v6 != a2);
    }
  }

  return result;
}

unsigned int *std::__merge_move_construct[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::TranslatedImageInfo> &,flatbuffers::Offset<FlatbufferSymbols::TranslatedImageInfo> *,flatbuffers::Offset<FlatbufferSymbols::TranslatedImageInfo> *>(unsigned int *result, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, uint64_t a6)
{
  if (result == a2)
  {
LABEL_16:
    while (a3 != a4)
    {
      v16 = *a3++;
      *a5++ = v16;
    }
  }

  else
  {
    v11 = result;
    while (a3 != a4)
    {
      v12 = *(*a6 + 56) + *(*a6 + 40);
      result = FlatbufferSymbols::TranslatedImageInfo::KeyCompareLessThan((v12 - *a3), (v12 - *v11));
      if (result)
      {
        v13 = a3;
      }

      else
      {
        v13 = v11;
      }

      if (result)
      {
        v14 = 4;
      }

      else
      {
        v14 = 0;
      }

      a3 = (a3 + v14);
      if (result)
      {
        v15 = 0;
      }

      else
      {
        v15 = 4;
      }

      v11 = (v11 + v15);
      *a5++ = *v13;
      if (v11 == a2)
      {
        goto LABEL_16;
      }
    }

    while (v11 != a2)
    {
      v17 = *v11++;
      *a5++ = v17;
    }
  }

  return result;
}

void std::__buffered_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::TranslatedImageInfo> &,flatbuffers::Offset<FlatbufferSymbols::TranslatedImageInfo> *>(unsigned int *__dst, unsigned int *a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int *__src)
{
  if (a5 <= a6)
  {
    v12 = __src;
    if (__dst != a2)
    {
      v12 = __src;
      v13 = __dst;
      do
      {
        v14 = *v13++;
        *v12++ = v14;
      }

      while (v13 != a2);
    }

    std::__half_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::TranslatedImageInfo> &,flatbuffers::Offset<FlatbufferSymbols::TranslatedImageInfo> *,flatbuffers::Offset<FlatbufferSymbols::TranslatedImageInfo> *,flatbuffers::Offset<FlatbufferSymbols::TranslatedImageInfo> *,flatbuffers::Offset<FlatbufferSymbols::TranslatedImageInfo> *,flatbuffers::Offset<FlatbufferSymbols::TranslatedImageInfo> *>(__src, v12, a2, a3, __dst, a4);
  }

  else
  {
    v9 = __src;
    if (a2 != a3)
    {
      v9 = __src;
      v10 = a2;
      do
      {
        v11 = *v10++;
        *v9++ = v11;
      }

      while (v10 != a3);
    }

    v15 = a4;
    std::__half_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::__invert<flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::TranslatedImageInfo> &>,std::reverse_iterator<flatbuffers::Offset<FlatbufferSymbols::TranslatedImageInfo> *>,std::reverse_iterator<flatbuffers::Offset<FlatbufferSymbols::TranslatedImageInfo> *>,std::reverse_iterator<flatbuffers::Offset<FlatbufferSymbols::TranslatedImageInfo> *>,std::reverse_iterator<flatbuffers::Offset<FlatbufferSymbols::TranslatedImageInfo> *>,std::reverse_iterator<flatbuffers::Offset<FlatbufferSymbols::TranslatedImageInfo> *>>(v9, v9, __src, __src, a2, a2, __dst, __dst, a3, a3, &v15);
  }
}

_DWORD *std::__upper_bound[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::TranslatedImageInfo> &,flatbuffers::Offset<FlatbufferSymbols::TranslatedImageInfo> *,flatbuffers::Offset<FlatbufferSymbols::TranslatedImageInfo> *,flatbuffers::Offset<FlatbufferSymbols::TranslatedImageInfo>,std::__identity>(_DWORD *a1, _DWORD *a2, unsigned int *a3, uint64_t a4)
{
  v4 = a1;
  if (a2 != a1)
  {
    v7 = a2 - a1;
    do
    {
      v8 = &v4[v7 >> 1];
      v9 = *(*a4 + 56) + *(*a4 + 40);
      v11 = *v8;
      v10 = v8 + 1;
      if (FlatbufferSymbols::TranslatedImageInfo::KeyCompareLessThan((v9 - *a3), (v9 - v11)))
      {
        v7 >>= 1;
      }

      else
      {
        v4 = v10;
        v7 += ~(v7 >> 1);
      }
    }

    while (v7);
  }

  return v4;
}

unsigned int *std::__half_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::TranslatedImageInfo> &,flatbuffers::Offset<FlatbufferSymbols::TranslatedImageInfo> *,flatbuffers::Offset<FlatbufferSymbols::TranslatedImageInfo> *,flatbuffers::Offset<FlatbufferSymbols::TranslatedImageInfo> *,flatbuffers::Offset<FlatbufferSymbols::TranslatedImageInfo> *,flatbuffers::Offset<FlatbufferSymbols::TranslatedImageInfo> *>(unsigned int *__src, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *__dst, uint64_t a6)
{
  if (__src != a2)
  {
    v11 = __src;
    while (a3 != a4)
    {
      v12 = *(*a6 + 56) + *(*a6 + 40);
      __src = FlatbufferSymbols::TranslatedImageInfo::KeyCompareLessThan((v12 - *a3), (v12 - *v11));
      if (__src)
      {
        v13 = a3;
      }

      else
      {
        v13 = v11;
      }

      if (__src)
      {
        v14 = 0;
      }

      else
      {
        v14 = 4;
      }

      v11 = (v11 + v14);
      if (__src)
      {
        v15 = 4;
      }

      else
      {
        v15 = 0;
      }

      a3 = (a3 + v15);
      *__dst++ = *v13;
      if (v11 == a2)
      {
        return __src;
      }
    }

    return memmove(__dst, v11, a2 - v11);
  }

  return __src;
}

void std::__half_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::__invert<flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::TranslatedImageInfo> &>,std::reverse_iterator<flatbuffers::Offset<FlatbufferSymbols::TranslatedImageInfo> *>,std::reverse_iterator<flatbuffers::Offset<FlatbufferSymbols::TranslatedImageInfo> *>,std::reverse_iterator<flatbuffers::Offset<FlatbufferSymbols::TranslatedImageInfo> *>,std::reverse_iterator<flatbuffers::Offset<FlatbufferSymbols::TranslatedImageInfo> *>,std::reverse_iterator<flatbuffers::Offset<FlatbufferSymbols::TranslatedImageInfo> *>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2 != a4)
  {
    v14 = a2;
    while (a6 != a8)
    {
      v16 = *(**a11 + 56) + *(**a11 + 40);
      v17 = FlatbufferSymbols::TranslatedImageInfo::KeyCompareLessThan((v16 - *(v14 - 4)), (v16 - *(a6 - 4)));
      if (v17)
      {
        v18 = a6;
      }

      else
      {
        v18 = v14;
      }

      if (v17)
      {
        a6 -= 4;
      }

      else
      {
        v14 -= 4;
      }

      *(a10 - 4) = *(v18 - 4);
      a10 -= 4;
      if (v14 == a4)
      {
        return;
      }
    }

    if (a4 != v14)
    {
      v19 = -4;
      do
      {
        v20 = *(v14 - 4);
        v14 -= 4;
        *(a10 + v19) = v20;
        v19 -= 4;
      }

      while (v14 != a4);
    }
  }
}

_DWORD *std::__lower_bound_bisecting[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::Offset<FlatbufferSymbols::TranslatedImageInfo> *,flatbuffers::Offset<FlatbufferSymbols::TranslatedImageInfo>,std::__identity,flatbuffers::FlatBufferBuilderImpl<false>::TableKeyComparator<FlatbufferSymbols::TranslatedImageInfo>>(_DWORD *a1, unsigned int *a2, unint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a3;
    do
    {
      v8 = &a1[v6 >> 1];
      v10 = *v8;
      v9 = v8 + 1;
      v11 = *(*a4 + 56) + *(*a4 + 40);
      v12 = FlatbufferSymbols::TranslatedImageInfo::KeyCompareLessThan((v11 - v10), (v11 - *a2));
      if (v12)
      {
        v6 += ~(v6 >> 1);
      }

      else
      {
        v6 >>= 1;
      }

      if (v12)
      {
        a1 = v9;
      }
    }

    while (v6);
  }

  return a1;
}

uint64_t flatbuffers::FlatBufferBuilderImpl<false>::CreateSharedString(uint64_t a1, void *a2, size_t a3)
{
  if (!*(a1 + 120))
  {
    operator new();
  }

  v4 = *(a1 + 48);
  flatbuffers::FlatBufferBuilderImpl<false>::CreateStringImpl(a1, a2, a3);
  v9 = *(a1 + 48);
  v5 = std::__tree<flatbuffers::Offset<flatbuffers::String>,flatbuffers::FlatBufferBuilderImpl<false>::StringOffsetCompare,std::allocator<flatbuffers::Offset<flatbuffers::String>>>::find<flatbuffers::Offset<flatbuffers::String>>(*(a1 + 120), &v9);
  v6 = *(a1 + 120);
  if (v6 + 8 == v5)
  {
    v7 = &v9;
    std::__tree<flatbuffers::Offset<flatbuffers::String>,flatbuffers::FlatBufferBuilderImpl<false>::StringOffsetCompare,std::allocator<flatbuffers::Offset<flatbuffers::String>>>::__emplace_unique_key_args<flatbuffers::Offset<flatbuffers::String>,flatbuffers::Offset<flatbuffers::String> const&>(v6, &v9);
  }

  else
  {
    *(a1 + 64) += *(a1 + 48) - v4;
    *(a1 + 48) = v4;
    v7 = (v5 + 28);
  }

  return *v7;
}

uint64_t flatbuffers::FlatBufferBuilderImpl<false>::CreateStringImpl(void *a1, void *a2, size_t a3)
{
  flatbuffers::FlatBufferBuilderImpl<false>::PreAlign<unsigned int>(a1, a3 + 1);
  flatbuffers::vector_downward<unsigned int>::fill(a1, 1uLL);
  flatbuffers::FlatBufferBuilderImpl<false>::PushBytes(a1, a2, a3);

  return flatbuffers::FlatBufferBuilderImpl<false>::PushElement<unsigned int,unsigned int>(a1, a3);
}

uint64_t std::__tree<flatbuffers::Offset<flatbuffers::String>,flatbuffers::FlatBufferBuilderImpl<false>::StringOffsetCompare,std::allocator<flatbuffers::Offset<flatbuffers::String>>>::find<flatbuffers::Offset<flatbuffers::String>>(uint64_t a1, unsigned int *a2)
{
  v4 = a1 + 8;
  v5 = std::__tree<flatbuffers::Offset<flatbuffers::String>,flatbuffers::FlatBufferBuilderImpl<false>::StringOffsetCompare,std::allocator<flatbuffers::Offset<flatbuffers::String>>>::__lower_bound<flatbuffers::Offset<flatbuffers::String>>(a1, a2, *(a1 + 8), a1 + 8);
  if (v4 == v5)
  {
    return v4;
  }

  v6 = v5;
  v7 = *(*(a1 + 24) + 56) + *(*(a1 + 24) + 40);
  v8 = (v7 - *a2);
  v9 = *(v6 + 28);
  v12 = *v8;
  v10 = v8 + 1;
  v11 = v12;
  v13 = *(v7 - v9);
  v14 = v13 >= v12 ? v11 : v13;
  v15 = memcmp(v10, (v7 - v9 + 4), v14);
  v16 = v11 < v13;
  if (v15)
  {
    v16 = v15 < 0;
  }

  if (v16)
  {
    return v4;
  }

  return v6;
}

uint64_t std::__tree<flatbuffers::Offset<flatbuffers::String>,flatbuffers::FlatBufferBuilderImpl<false>::StringOffsetCompare,std::allocator<flatbuffers::Offset<flatbuffers::String>>>::__lower_bound<flatbuffers::Offset<flatbuffers::String>>(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v5 = a3;
    v6 = *(*(a1 + 24) + 56) + *(*(a1 + 24) + 40);
    v7 = *a2;
    v8 = (v6 - v7 + 4);
    v9 = *(v6 - v7);
    do
    {
      v10 = *(v5 + 28);
      v11 = *(v6 - v10);
      if (v9 >= v11)
      {
        v12 = v11;
      }

      else
      {
        v12 = v9;
      }

      v13 = memcmp((v6 - v10 + 4), v8, v12);
      v14 = v11 < v9;
      if (v13)
      {
        v14 = v13 < 0;
      }

      v15 = !v14;
      if (v14)
      {
        v16 = 8;
      }

      else
      {
        v16 = 0;
      }

      if (v15)
      {
        a4 = v5;
      }

      v5 = *(v5 + v16);
    }

    while (v5);
  }

  return a4;
}

uint64_t std::__tree<flatbuffers::Offset<flatbuffers::String>,flatbuffers::FlatBufferBuilderImpl<false>::StringOffsetCompare,std::allocator<flatbuffers::Offset<flatbuffers::String>>>::__emplace_unique_key_args<flatbuffers::Offset<flatbuffers::String>,flatbuffers::Offset<flatbuffers::String> const&>(uint64_t a1, unsigned int *a2)
{
  v2 = *std::__tree<flatbuffers::Offset<flatbuffers::String>,flatbuffers::FlatBufferBuilderImpl<false>::StringOffsetCompare,std::allocator<flatbuffers::Offset<flatbuffers::String>>>::__find_equal<flatbuffers::Offset<flatbuffers::String>>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *std::__tree<flatbuffers::Offset<flatbuffers::String>,flatbuffers::FlatBufferBuilderImpl<false>::StringOffsetCompare,std::allocator<flatbuffers::Offset<flatbuffers::String>>>::__find_equal<flatbuffers::Offset<flatbuffers::String>>(uint64_t a1, void *a2, unsigned int *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *(*(a1 + 24) + 56) + *(*(a1 + 24) + 40);
    v7 = (v6 - *a3);
    v10 = *v7;
    v8 = v7 + 1;
    v9 = v10;
    do
    {
      while (1)
      {
        v11 = v4;
        v12 = *(v4 + 28);
        v13 = (v6 - v12 + 4);
        v14 = *(v6 - v12);
        if (v14 >= v9)
        {
          v15 = v9;
        }

        else
        {
          v15 = v14;
        }

        v16 = memcmp(v8, (v6 - v12 + 4), v15);
        v17 = v9 < v14;
        if (v16)
        {
          v17 = v16 < 0;
        }

        if (!v17)
        {
          break;
        }

        v4 = *v11;
        v5 = v11;
        if (!*v11)
        {
          goto LABEL_17;
        }
      }

      v18 = memcmp(v13, v8, v15);
      v19 = v14 < v9;
      if (v18)
      {
        v19 = v18 < 0;
      }

      if (!v19)
      {
        break;
      }

      v5 = v11 + 1;
      v4 = v11[1];
    }

    while (v4);
  }

  else
  {
    v11 = (a1 + 8);
  }

LABEL_17:
  *a2 = v11;
  return v5;
}

BOOL CSRangeIntersectsRange(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a1 >= a3)
  {
    return a3 + a4 > a1;
  }

  else
  {
    return a1 + a2 > a3;
  }
}

unint64_t CSRangeIntersectionRange(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a3 + a4 > a1;
  if (a1 < a3)
  {
    v4 = a1 + a2 > a3;
  }

  if (a1 <= a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = a1;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t CSRangeOfDyldSharedCacheInCurrentProcess()
{
  if ((atomic_load_explicit(&_MergedGlobals, memory_order_acquire) & 1) == 0)
  {
    CSRangeOfDyldSharedCacheInCurrentProcess_cold_1();
  }

  if (CSRangeOfDyldSharedCacheInCurrentProcess::onceToken != -1)
  {
    CSRangeOfDyldSharedCacheInCurrentProcess_cold_2();
  }

  return qword_1EDADA6F8;
}

uint64_t __CSRangeOfDyldSharedCacheInCurrentProcess_block_invoke()
{
  result = _dyld_get_shared_cache_range();
  qword_1EDADA6F8 = result;
  unk_1EDADA700 = 0;
  return result;
}

uint64_t CSRangeOfDyldSharedCacheInTask()
{
  base_address = dyld_process_create_for_task();
  if (base_address)
  {
    v1 = dyld_process_snapshot_create_for_process();
    dyld_process_dispose();
    if (v1)
    {
      if (!dyld_process_snapshot_get_shared_cache())
      {
        return 0;
      }

      if ((dyld_shared_cache_is_mapped_private() & 1) == 0)
      {
        base_address = dyld_shared_cache_get_base_address();
        dyld_shared_cache_get_mapped_size();
        dyld_process_snapshot_dispose();
        return base_address;
      }
    }

    return 0;
  }

  return base_address;
}

unint64_t CSRegionGetRange(uint64_t a1, uint64_t a2)
{
  v18[0] = a1;
  v18[1] = a2;
  v2 = a1 & 7 | (8 * (a2 & 3));
  if (!v2)
  {
    return 0;
  }

  if (v2 == 7 || (v4 = (a1 & 0xFFFFFFFFFFFFFFF8), *((a1 & 0xFFFFFFFFFFFFFFF8) + 64) != *((a1 & 0xFFFFFFFFFFFFFFF8) + 56)) || (v5 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8)), (*(*v5 + 24))(v5) == 1) || (v6 = CSCppSymbolOwner::data(v4), (*(*v6 + 24))(v6) == 2))
  {
    result = *(a2 & 0xFFFFFFFFFFFFFFFCLL);
    v8 = *((a2 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  else
  {
    v9 = CSCppSymbolOwner::data(v4);
    if ((*(*v9 + 24))(v9) == 4)
    {
      v17[0] = v18;
      return CSRegionGetRange::$_2::operator()<TMMapRegionImpl<Pointer64>>(v17, (a2 & 0xFFFFFFFFFFFFFFFCLL));
    }

    else
    {
      v10 = CSCppSymbolOwner::data(v4);
      if ((*(*v10 + 24))(v10) != 5)
      {
        std::ostringstream::basic_ostringstream[abi:ne200100](v17);
        v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Unhandled CSCppSymbolOwnerData type_id: ", 40);
        v12 = CSCppSymbolOwner::data(v4);
        v13 = (*(*v12 + 24))(v12);
        MEMORY[0x1DA7365E0](v11, v13);
        std::ostringstream::str[abi:ne200100](v17, &v16);
        Exception::Exception(v15, &v16);
        exception = __cxa_allocate_exception(0x20uLL);
        Exception::Exception(exception, v15);
      }

      v17[0] = v18;
      return CSRegionGetRange::$_3::operator()<FlatbufferSymbols::Section const>(v17, (a2 & 0xFFFFFFFFFFFFFFFCLL));
    }
  }

  return result;
}

void sub_1D96FD0F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

unint64_t CSRegionGetRange::$_2::operator()<TMMapRegionImpl<Pointer64>>(void **a1, unint64_t *a2)
{
  v3 = CSCppSymbolOwner::data((**a1 & 0xFFFFFFFFFFFFFFF8));
  v6 = 0;
  if (!TMMapSymbolOwnerData::convert_archive_address_to_real_address(v3, *a2, &v6))
  {
    return 0;
  }

  result = v6;
  v5 = a2[1];
  return result;
}

uint64_t CSRegionGetRange::$_3::operator()<FlatbufferSymbols::Section const>(uint64_t a1, int *a2)
{
  v4 = CSCppSymbolOwner::data((**a1 & 0xFFFFFFFFFFFFFFF8));
  if (FlatbufferSymbolOwnerData::has_artificial_sections(v4))
  {
    v5 = (*(*a1 + 8) & 0xFFFFFFFFFFFFFFFCLL);
    v8 = *v5;
    v7 = (v5 + 1);
    v6 = v8;
LABEL_3:
    v9 = *v7;
    goto LABEL_12;
  }

  v10 = (a2 - *a2);
  v11 = *v10;
  if (v11 < 7)
  {
    v6 = -1;
  }

  else
  {
    if (v10[3])
    {
      v6 = *(a2 + v10[3]);
    }

    else
    {
      v6 = -1;
    }

    if (v11 >= 9)
    {
      v12 = v10[4];
      if (v12)
      {
        v7 = (a2 + v12);
        goto LABEL_3;
      }
    }
  }

LABEL_12:
  result = FlatbufferSymbolOwnerData::convertVMAddressToSlidAddress(v4, v6);
  if ((v14 & 1) == 0)
  {
    return 0;
  }

  return result;
}

const char *CSRegionGetName(uint64_t a1, uint64_t a2)
{
  v17[0] = a1;
  v17[1] = a2;
  v2 = a1 & 7 | (8 * (a2 & 3));
  if (!v2)
  {
    return 0;
  }

  if (v2 == 7)
  {
    return *((a2 & 0xFFFFFFFFFFFFFFFCLL) + 16);
  }

  v4 = (a1 & 0xFFFFFFFFFFFFFFF8);
  if (*((a1 & 0xFFFFFFFFFFFFFFF8) + 64) != *((a1 & 0xFFFFFFFFFFFFFFF8) + 56))
  {
    return *((a2 & 0xFFFFFFFFFFFFFFFCLL) + 16);
  }

  v5 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
  if ((*(*v5 + 24))(v5) == 1)
  {
    return *((a2 & 0xFFFFFFFFFFFFFFFCLL) + 16);
  }

  v6 = CSCppSymbolOwner::data(v4);
  if ((*(*v6 + 24))(v6) == 2)
  {
    return *((a2 & 0xFFFFFFFFFFFFFFFCLL) + 16);
  }

  v8 = CSCppSymbolOwner::data(v4);
  if ((*(*v8 + 24))(v8) == 4)
  {
    v16[0] = v17;
    return CSRegionGetName::$_2::operator()<TMMapRegionImpl<Pointer64>>(v16, a2 & 0xFFFFFFFFFFFFFFFCLL);
  }

  else
  {
    v9 = CSCppSymbolOwner::data(v4);
    if ((*(*v9 + 24))(v9) != 5)
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](v16);
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "Unhandled CSCppSymbolOwnerData type_id: ", 40);
      v11 = CSCppSymbolOwner::data(v4);
      v12 = (*(*v11 + 24))(v11);
      MEMORY[0x1DA7365E0](v10, v12);
      std::ostringstream::str[abi:ne200100](v16, &v15);
      Exception::Exception(v14, &v15);
      exception = __cxa_allocate_exception(0x20uLL);
      Exception::Exception(exception, v14);
    }

    v16[0] = v17;
    return CSRegionGetName::$_3::operator()<FlatbufferSymbols::Section const>(v16, (a2 & 0xFFFFFFFFFFFFFFFCLL));
  }
}

void sub_1D96FD47C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

const char *CSRegionGetName::$_2::operator()<TMMapRegionImpl<Pointer64>>(void **a1, uint64_t a2)
{
  v3 = CSCppSymbolOwner::data((**a1 & 0xFFFFFFFFFFFFFFF8));
  v4 = v3[11];
  v5 = *(v4 + 16);
  v6.i64[0] = v5;
  v6.i64[1] = HIDWORD(v5);
  v7 = v6;
  v7.i32[1] = v6.i32[0];
  v7.i32[3] = *(v4 + 24);
  v8 = v4 + *(a2 + 16) + *(v4 + 80) + vaddlvq_u32(vmulq_s32(v7, xmmword_1D97E0550)) + (32 * *(v4 + 8)) + (24 * *(v4 + 12)) + *(v4 + 88) + 96;
  if ((*(*v3 + 72))(v3, v8))
  {
    return v8;
  }

  else
  {
    return "<Invalid region name>";
  }
}

uint64_t CSRegionGetName::$_3::operator()<FlatbufferSymbols::Section const>(uint64_t a1, int *a2)
{
  v4 = CSCppSymbolOwner::data((**a1 & 0xFFFFFFFFFFFFFFF8));
  if (FlatbufferSymbolOwnerData::has_artificial_sections(v4))
  {
    return *((*(*a1 + 8) & 0xFFFFFFFFFFFFFFFCLL) + 16);
  }

  v6 = (a2 - *a2);
  if (*v6 >= 5u && (v7 = v6[2]) != 0)
  {
    return a2 + v7 + *(a2 + v7) + 4;
  }

  else
  {
    return 0;
  }
}

uint64_t CSRegionGetSymbolicator(uint64_t a1, char a2)
{
  if (!(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFFF8) + 8);
  return 2;
}

uint64_t CSRegionGetSymbolOwner(char a1, char a2)
{
  if (a1 & 7 | (8 * (a2 & 3)))
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

uint64_t CSRegionForeachSymbol(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v26 = a1;
  *(&v26 + 1) = a2;
  v3 = a1 & 7 | (8 * (a2 & 3));
  if (!v3)
  {
    return 0;
  }

  v6 = (a1 & 0xFFFFFFFFFFFFFFF8);
  if (v3 == 7 || *(v6 + 8) != *(v6 + 7) || (v7 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8)), (*(*v7 + 24))(v7) == 1) || (v8 = CSCppSymbolOwner::data(v6), (*(*v8 + 24))(v8) == 2))
  {
    v9 = (a2 & 0xFFFFFFFFFFFFFFFCLL);
    v10 = CSCppSymbolOwner::data(v6);
    v11 = *v9;
    v12 = v9[1];
    v13 = *(*v10 + 128);

    return v13();
  }

  else
  {
    v15 = CSCppSymbolOwner::data(v6);
    if ((*(*v15 + 24))(v15) == 4)
    {
      v23 = &v26;
      v24 = a3;
      v25 = v26;
      return CSRegionForeachSymbol::$_2::operator()<TMMapRegionImpl<Pointer64>>(&v23, (a2 & 0xFFFFFFFFFFFFFFFCLL));
    }

    else
    {
      v16 = CSCppSymbolOwner::data(v6);
      if ((*(*v16 + 24))(v16) != 5)
      {
        std::ostringstream::basic_ostringstream[abi:ne200100](&v23);
        v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v23, "Unhandled CSCppSymbolOwnerData type_id: ", 40);
        v18 = CSCppSymbolOwner::data(v6);
        v19 = (*(*v18 + 24))(v18);
        MEMORY[0x1DA7365E0](v17, v19);
        std::ostringstream::str[abi:ne200100](&v23, &v22);
        Exception::Exception(v21, &v22);
        exception = __cxa_allocate_exception(0x20uLL);
        Exception::Exception(exception, v21);
      }

      v23 = &v26;
      v24 = a3;
      v25 = v26;
      return CSRegionForeachSymbol::$_3::operator()<FlatbufferSymbols::Section const>(&v23, (a2 & 0xFFFFFFFFFFFFFFFCLL));
    }
  }
}

void sub_1D96FD8D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

uint64_t CSRegionForeachSymbol::$_2::operator()<TMMapRegionImpl<Pointer64>>(uint64_t **a1, void *a2)
{
  v4 = **a1;
  v5 = CSCppSymbolOwner::data((v4 & 0xFFFFFFFFFFFFFFF8));
  v6 = a2[1];
  if ((v6 + *a2) > 0xFFFFFFFE)
  {
    return 0;
  }

  v7 = *a2 | (v6 << 32);
  v8 = a1[1];

  return TMMapSymbolOwnerData::symbols_in_archive_address_range(v5, v4 & 0xFFFFFFFFFFFFFFF8, v7, v8);
}

uint64_t CSRegionForeachSymbol::$_3::operator()<FlatbufferSymbols::Section const>(uint64_t **a1, int *a2)
{
  v4 = **a1;
  v5 = CSCppSymbolOwner::data((v4 & 0xFFFFFFFFFFFFFFF8));
  if (FlatbufferSymbolOwnerData::has_artificial_sections(v5))
  {
    Range = CSRegionGetRange(a1[2], a1[3]);
    v8 = v7;
  }

  else
  {
    v9 = (a2 - *a2);
    v10 = *v9;
    if (v10 < 7)
    {
      v8 = 0;
      Range = -1;
    }

    else
    {
      if (v9[3])
      {
        Range = *(a2 + v9[3]);
      }

      else
      {
        Range = -1;
      }

      if (v10 >= 9 && (v11 = v9[4]) != 0)
      {
        v8 = *(a2 + v11);
      }

      else
      {
        v8 = 0;
      }
    }
  }

  v12 = FlatbufferSymbolOwnerData::convertVMAddressToSlidAddress(v5, Range);
  if ((v13 & 1) == 0)
  {
    return 0;
  }

  v14 = a1[1];

  return FlatbufferSymbolOwnerData::symbols_in_address_range(v5, v4 & 0xFFFFFFFFFFFFFFF8, v12, v8, v14);
}

unint64_t CSRegionForeachSourceInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25[0] = a1;
  v25[1] = a2;
  v3 = a1 & 7 | (8 * (a2 & 3));
  if (!v3)
  {
    return 0;
  }

  v6 = (a1 & 0xFFFFFFFFFFFFFFF8);
  if (v3 == 7 || *(v6 + 8) != *(v6 + 7) || (v7 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8)), (*(*v7 + 24))(v7) == 1) || (v8 = CSCppSymbolOwner::data(v6), (*(*v8 + 24))(v8) == 2))
  {
    v9 = (a2 & 0xFFFFFFFFFFFFFFFCLL);
    v10 = CSCppSymbolOwner::data(v6);
    v11 = *v9;
    v12 = v9[1];
    v13 = *(*v10 + 152);

    return v13();
  }

  else
  {
    v15 = CSCppSymbolOwner::data(v6);
    if ((*(*v15 + 24))(v15) == 4)
    {
      v23 = v25;
      v24 = a3;
      return CSRegionForeachSourceInfo::$_2::operator()<TMMapRegionImpl<Pointer64>>(&v23, (a2 & 0xFFFFFFFFFFFFFFFCLL));
    }

    else
    {
      v16 = CSCppSymbolOwner::data(v6);
      if ((*(*v16 + 24))(v16) != 5)
      {
        std::ostringstream::basic_ostringstream[abi:ne200100](&v23);
        v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v23, "Unhandled CSCppSymbolOwnerData type_id: ", 40);
        v18 = CSCppSymbolOwner::data(v6);
        v19 = (*(*v18 + 24))(v18);
        MEMORY[0x1DA7365E0](v17, v19);
        std::ostringstream::str[abi:ne200100](&v23, &v22);
        Exception::Exception(v21, &v22);
        exception = __cxa_allocate_exception(0x20uLL);
        Exception::Exception(exception, v21);
      }

      v23 = v25;
      v24 = a3;
      return CSRegionForeachSourceInfo::$_3::operator()<FlatbufferSymbols::Section const>(&v23, (a2 & 0xFFFFFFFFFFFFFFFCLL));
    }
  }
}

void sub_1D96FDD00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

unint64_t CSRegionForeachSourceInfo::$_2::operator()<TMMapRegionImpl<Pointer64>>(uint64_t **a1, void *a2)
{
  v4 = **a1;
  v5 = CSCppSymbolOwner::data((v4 & 0xFFFFFFFFFFFFFFF8));
  v6 = a2[1];
  if ((v6 + *a2) > 0xFFFFFFFE)
  {
    return 0;
  }

  v7 = *a2 | (v6 << 32);
  v8 = a1[1];

  return TMMapSymbolOwnerData::source_infos_in_archive_address_range(v5, v4 & 0xFFFFFFFFFFFFFFF8, v7, v8);
}

uint64_t CSRegionForeachSourceInfo::$_3::operator()<FlatbufferSymbols::Section const>(uint64_t **a1, int *a2)
{
  v4 = **a1;
  v5 = CSCppSymbolOwner::data((v4 & 0xFFFFFFFFFFFFFFF8));
  v6 = v5;
  v7 = (a2 - *a2);
  if (*v7 >= 7u && (v8 = v7[3]) != 0)
  {
    v9 = *(a2 + v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = FlatbufferSymbolOwnerData::convertVMAddressToSlidAddress(v5, v9);
  if ((v11 & 1) == 0)
  {
    return 0;
  }

  v12 = (a2 - *a2);
  if (*v12 >= 9u && (v13 = v12[4]) != 0)
  {
    v14 = *(a2 + v13);
  }

  else
  {
    v14 = 0;
  }

  v16 = a1[1];

  return FlatbufferSymbolOwnerData::source_infos_in_address_range(v6, v4 & 0xFFFFFFFFFFFFFFF8, v10, v14, v16);
}

uint64_t CSSegmentForeachSection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  Range = CSRegionGetRange(a1, a2);

  return CSCppSymbolOwner::sections_in_address_range(a1 & 0xFFFFFFFFFFFFFFF8, Range, v5, a3);
}

unint64_t CSSectionGetSegment(uint64_t a1, uint64_t a2)
{
  if (!(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  Range = CSRegionGetRange(a1, a2);
  return CSSymbolOwnerGetSegmentWithAddress(3, a1 & 0xFFFFFFFFFFFFFFF8, Range);
}

uint64_t CSSourceInfoGetRange(uint64_t a1, uint64_t a2)
{
  v2 = a1 & 7 | (8 * (a2 & 3));
  if (!v2)
  {
    return 0;
  }

  if (v2 == 5)
  {
    v7 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
    v8 = (*(*v7 + 24))(v7);
    if (v8 != 4)
    {
      if (v8 == 2)
      {
LABEL_12:
        result = *(a2 & 0xFFFFFFFFFFFFFFFCLL);
        v11 = *((a2 & 0xFFFFFFFFFFFFFFFCLL) + 8);
        return result;
      }

      if (v8 != 1)
      {
        std::ostringstream::basic_ostringstream[abi:ne200100](v36);
        v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, "Unhandled CSCppSymbolOwnerData type_id: ", 40);
        v27 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
        v28 = (*(*v27 + 24))(v27);
        MEMORY[0x1DA7365E0](v26, v28);
        std::ostringstream::str[abi:ne200100](v36, &v35);
        Exception::Exception(v34, &v35);
        exception = __cxa_allocate_exception(0x20uLL);
        Exception::Exception(exception, v34);
      }

LABEL_11:
      result = *(a2 & 0xFFFFFFFFFFFFFFFCLL);
      v10 = *((a2 & 0xFFFFFFFFFFFFFFFCLL) + 4);
      return result;
    }
  }

  else
  {
    if (v2 != 6)
    {
      return 0;
    }

    v5 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
    v6 = (*(*v5 + 24))(v5);
    if (v6 <= 3)
    {
      if (v6 != 1)
      {
        if (v6 != 2)
        {
LABEL_32:
          std::ostringstream::basic_ostringstream[abi:ne200100](v36);
          v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, "Unhandled CSCppSymbolOwnerData type_id: ", 40);
          v31 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
          v32 = (*(*v31 + 24))(v31);
          MEMORY[0x1DA7365E0](v30, v32);
          std::ostringstream::str[abi:ne200100](v36, &v35);
          Exception::Exception(v34, &v35);
          v33 = __cxa_allocate_exception(0x20uLL);
          Exception::Exception(v33, v34);
        }

        goto LABEL_12;
      }

      goto LABEL_11;
    }

    if (v6 != 4)
    {
      if (v6 != 5)
      {
        goto LABEL_32;
      }

      v12 = (a2 & 0xFFFFFFFFFFFFFFFCLL);
      v13 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
      v14 = (v12 - *v12);
      if (*v14 >= 0xDu && (v15 = v14[6]) != 0)
      {
        v16 = *(v12 + v15);
      }

      else
      {
        v16 = -1;
      }

      result = FlatbufferSymbolOwnerData::convertVMAddressToSlidAddress(v13, v16);
      if (v22)
      {
        v23 = (v12 - *v12);
        if (*v23 >= 0xFu)
        {
          v24 = v23[7];
          if (v24)
          {
            v25 = *(v12 + v24);
          }
        }

        return result;
      }

      return 0;
    }
  }

  v17 = (a2 & 0xFFFFFFFFFFFFFFFCLL);
  v18 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
  v36[0] = 0;
  v19 = TMMapSymbolOwnerData::convert_archive_address_to_real_address(v18, *v17, v36);
  v20 = v19 == 0;
  if (v19)
  {
    result = v36[0];
  }

  else
  {
    result = 0;
  }

  if (!v20)
  {
    v21 = v17[1];
  }

  return result;
}

void sub_1D96FE244(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

const char *CSSourceInfoGetPath(uint64_t a1, uint64_t a2)
{
  v2 = a1 & 7 | (8 * (a2 & 3));
  if (!v2)
  {
    return 0;
  }

  if (v2 == 5)
  {
    v9 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
    v10 = (*(*v9 + 24))(v9);
    switch(v10)
    {
      case 4:
        v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
        v14 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
        if ((*(v13 + 8) & 0x80000000) != 0)
        {
          v20 = *(v14 + 88);
          v21 = *(v20 + 16);
          v22.i64[0] = v21;
          v22.i64[1] = HIDWORD(v21);
          v23 = v22;
          v23.i32[1] = v22.i32[0];
          v23.i32[3] = *(v20 + 24);
          v7 = v20 + *(v13 + 24) + *(v20 + 80) + vaddlvq_u32(vmulq_s32(v23, xmmword_1D97E0550)) + (32 * *(v20 + 8)) + (24 * *(v20 + 12)) + *(v20 + 88) + 96;
        }

        else
        {
          v7 = 0;
        }

        v15 = "<No path>";
        goto LABEL_29;
      case 2:
        v7 = *((a2 & 0xFFFFFFFFFFFFFFFCLL) + 48);
        break;
      case 1:
        v7 = *((a2 & 0xFFFFFFFFFFFFFFFCLL) + 40);
        break;
      default:
        std::ostringstream::basic_ostringstream[abi:ne200100](v34);
        v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "Unhandled CSCppSymbolOwnerData type_id: ", 40);
        v25 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
        v26 = (*(*v25 + 24))(v25);
        MEMORY[0x1DA7365E0](v24, v26);
        std::ostringstream::str[abi:ne200100](v34, &v33);
        Exception::Exception(v32, &v33);
        exception = __cxa_allocate_exception(0x20uLL);
        Exception::Exception(exception, v32);
    }

LABEL_22:
    v15 = "<Invalid path>";
LABEL_29:
    if (v7)
    {
      return v7;
    }

    else
    {
      return v15;
    }
  }

  if (v2 != 6)
  {
    return 0;
  }

  v5 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
  v6 = (*(*v5 + 24))(v5);
  if (v6 <= 3)
  {
    if (v6 == 1)
    {
      v7 = *((a2 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      goto LABEL_22;
    }

    if (v6 == 2)
    {
      v7 = *((a2 & 0xFFFFFFFFFFFFFFFCLL) + 16);
      goto LABEL_22;
    }

LABEL_34:
    std::ostringstream::basic_ostringstream[abi:ne200100](v34);
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "Unhandled CSCppSymbolOwnerData type_id: ", 40);
    v29 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
    v30 = (*(*v29 + 24))(v29);
    MEMORY[0x1DA7365E0](v28, v30);
    std::ostringstream::str[abi:ne200100](v34, &v33);
    Exception::Exception(v32, &v33);
    v31 = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(v31, v32);
  }

  if (v6 == 4)
  {
    v16 = *(CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8)) + 88);
    v17 = *(v16 + 16);
    v18.i64[0] = v17;
    v18.i64[1] = HIDWORD(v17);
    v19 = v18;
    v19.i32[1] = v18.i32[0];
    v19.i32[3] = *(v16 + 24);
    result = CSCppMMapSourceInfo::path((a2 & 0xFFFFFFFFFFFFFFFCLL), v16 + *(v16 + 80) + vaddlvq_u32(vmulq_s32(v19, xmmword_1D97E0550)) + (32 * *(v16 + 8)) + (24 * *(v16 + 12)) + *(v16 + 88) + 96);
    if (!result)
    {
      return "<Invalid path>";
    }
  }

  else
  {
    if (v6 != 5)
    {
      goto LABEL_34;
    }

    v11 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) - *(a2 & 0xFFFFFFFFFFFFFFFCLL));
    if (*v11 >= 5u && (v12 = v11[2]) != 0)
    {
      return ((a2 & 0xFFFFFFFFFFFFFFFCLL) + v12 + *((a2 & 0xFFFFFFFFFFFFFFFCLL) + v12) + 4);
    }

    else
    {
      return "<Invalid path>";
    }
  }

  return result;
}

void sub_1D96FE670(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

const char *CSSourceInfoGetFilename(uint64_t a1, uint64_t a2)
{
  v2 = a1 & 7 | (8 * (a2 & 3));
  if (!v2)
  {
    return 0;
  }

  if (v2 == 5)
  {
    v9 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
    v10 = (*(*v9 + 24))(v9);
    if (v10 != 4)
    {
      if (v10 == 2)
      {
        v7 = *((a2 & 0xFFFFFFFFFFFFFFFCLL) + 48);
        if (v7)
        {
          goto LABEL_29;
        }
      }

      else
      {
        if (v10 != 1)
        {
          std::ostringstream::basic_ostringstream[abi:ne200100](v34);
          v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "Unhandled CSCppSymbolOwnerData type_id: ", 40);
          v25 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
          v26 = (*(*v25 + 24))(v25);
          MEMORY[0x1DA7365E0](v24, v26);
          std::ostringstream::str[abi:ne200100](v34, &v33);
          Exception::Exception(v32, &v33);
          exception = __cxa_allocate_exception(0x20uLL);
          Exception::Exception(exception, v32);
        }

        v7 = *((a2 & 0xFFFFFFFFFFFFFFFCLL) + 40);
        if (v7)
        {
          goto LABEL_29;
        }
      }

      return "<Invalid path>";
    }

    v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
    v14 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
    if ((*(v13 + 8) & 0x80000000) == 0)
    {
      return "<No path>";
    }

    v19 = *(v14 + 88);
    v20 = *(v19 + 16);
    v21.i64[0] = v20;
    v21.i64[1] = HIDWORD(v20);
    v22 = v21;
    v22.i32[1] = v21.i32[0];
    v22.i32[3] = *(v19 + 24);
    v23 = v19 + *(v13 + 24) + *(v19 + 80) + vaddlvq_u32(vmulq_s32(v22, xmmword_1D97E0550)) + (32 * *(v19 + 8)) + (24 * *(v19 + 12)) + *(v19 + 88);
    v7 = (v23 + 96);
    if (v23 == -96)
    {
      return "<No path>";
    }

    goto LABEL_29;
  }

  if (v2 != 6)
  {
    return 0;
  }

  v5 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
  v6 = (*(*v5 + 24))(v5);
  if (v6 <= 3)
  {
    if (v6 == 1)
    {
      v7 = *((a2 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      if (!v7)
      {
        return "<Invalid filename>";
      }

      goto LABEL_29;
    }

    if (v6 == 2)
    {
      v7 = *((a2 & 0xFFFFFFFFFFFFFFFCLL) + 16);
      if (!v7)
      {
        return "<Invalid filename>";
      }

      goto LABEL_29;
    }

LABEL_33:
    std::ostringstream::basic_ostringstream[abi:ne200100](v34);
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "Unhandled CSCppSymbolOwnerData type_id: ", 40);
    v29 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
    v30 = (*(*v29 + 24))(v29);
    MEMORY[0x1DA7365E0](v28, v30);
    std::ostringstream::str[abi:ne200100](v34, &v33);
    Exception::Exception(v32, &v33);
    v31 = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(v31, v32);
  }

  if (v6 != 4)
  {
    if (v6 != 5)
    {
      goto LABEL_33;
    }

    v11 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) - *(a2 & 0xFFFFFFFFFFFFFFFCLL));
    if (*v11 >= 5u)
    {
      v12 = v11[2];
      if (v12)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) + v12 + *((a2 & 0xFFFFFFFFFFFFFFFCLL) + v12) + 4);
        goto LABEL_29;
      }
    }

    return "<No path>";
  }

  v15 = *(CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8)) + 88);
  v16 = *(v15 + 16);
  v17.i64[0] = v16;
  v17.i64[1] = HIDWORD(v16);
  v18 = v17;
  v18.i32[1] = v17.i32[0];
  v18.i32[3] = *(v15 + 24);
  v7 = CSCppMMapSourceInfo::path((a2 & 0xFFFFFFFFFFFFFFFCLL), v15 + *(v15 + 80) + vaddlvq_u32(vmulq_s32(v18, xmmword_1D97E0550)) + (32 * *(v15 + 8)) + (24 * *(v15 + 12)) + *(v15 + 88) + 96);
  if (!v7)
  {
    return "<Invalid filename>";
  }

LABEL_29:

  return filename_from_path(v7);
}

void sub_1D96FEAB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

uint64_t CSSourceInfoGetLineNumber(uint64_t a1, uint64_t a2)
{
  v2 = a1 & 7 | (8 * (a2 & 3));
  if (!v2)
  {
    return 0;
  }

  if (v2 == 5)
  {
    v8 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
    v9 = (*(*v8 + 24))(v8);
    if (v9 != 4)
    {
      if (v9 == 2)
      {
        return *((a2 & 0xFFFFFFFFFFFFFFFCLL) + 56);
      }

      if (v9 != 1)
      {
        std::ostringstream::basic_ostringstream[abi:ne200100](v22);
        v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "Unhandled CSCppSymbolOwnerData type_id: ", 40);
        v13 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
        v14 = (*(*v13 + 24))(v13);
        MEMORY[0x1DA7365E0](v12, v14);
        std::ostringstream::str[abi:ne200100](v22, &v21);
        Exception::Exception(v20, &v21);
        exception = __cxa_allocate_exception(0x20uLL);
        Exception::Exception(exception, v20);
      }

      return *((a2 & 0xFFFFFFFFFFFFFFFCLL) + 48);
    }

    if ((*((a2 & 0xFFFFFFFFFFFFFFFCLL) + 8) & 0x80000000) != 0)
    {
      return *((a2 & 0xFFFFFFFFFFFFFFFCLL) + 28);
    }

    return 0;
  }

  if (v2 != 6)
  {
    return 0;
  }

  v5 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
  v6 = (*(*v5 + 24))(v5);
  if (v6 > 3)
  {
    if (v6 == 4)
    {
      return *((a2 & 0xFFFFFFFFFFFFFFFCLL) + 12);
    }

    if (v6 != 5)
    {
      goto LABEL_25;
    }

    v10 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) - *(a2 & 0xFFFFFFFFFFFFFFFCLL));
    if (*v10 >= 9u)
    {
      v11 = v10[4];
      if (v11)
      {
        return *((a2 & 0xFFFFFFFFFFFFFFFCLL) + v11);
      }
    }

    return 0;
  }

  if (v6 != 1)
  {
    if (v6 == 2)
    {
      return *((a2 & 0xFFFFFFFFFFFFFFFCLL) + 24);
    }

LABEL_25:
    std::ostringstream::basic_ostringstream[abi:ne200100](v22);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "Unhandled CSCppSymbolOwnerData type_id: ", 40);
    v17 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
    v18 = (*(*v17 + 24))(v17);
    MEMORY[0x1DA7365E0](v16, v18);
    std::ostringstream::str[abi:ne200100](v22, &v21);
    Exception::Exception(v20, &v21);
    v19 = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(v19, v20);
  }

  return *((a2 & 0xFFFFFFFFFFFFFFFCLL) + 16);
}

void sub_1D96FEDCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

uint64_t CSSourceInfoGetColumn(uint64_t a1, uint64_t a2)
{
  v2 = a1 & 7 | (8 * (a2 & 3));
  if (!v2)
  {
    return 0;
  }

  if (v2 != 5)
  {
    if (v2 == 6)
    {
      v5 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
      v6 = (*(*v5 + 24))(v5);
      if (v6 <= 3)
      {
        if (v6 == 1)
        {
          v7 = *((a2 & 0xFFFFFFFFFFFFFFFCLL) + 20);
          return v7 & 0x7FFFFFFF;
        }

        if (v6 == 2)
        {
          v7 = *((a2 & 0xFFFFFFFFFFFFFFFCLL) + 28);
          return v7 & 0x7FFFFFFF;
        }

LABEL_26:
        std::ostringstream::basic_ostringstream[abi:ne200100](v23);
        v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "Unhandled CSCppSymbolOwnerData type_id: ", 40);
        v18 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
        v19 = (*(*v18 + 24))(v18);
        MEMORY[0x1DA7365E0](v17, v19);
        std::ostringstream::str[abi:ne200100](v23, &v22);
        Exception::Exception(v21, &v22);
        exception = __cxa_allocate_exception(0x20uLL);
        Exception::Exception(exception, v21);
      }

      if (v6 == 4)
      {
        return *((a2 & 0xFFFFFFFFFFFFFFFCLL) + 16);
      }

      if (v6 != 5)
      {
        goto LABEL_26;
      }

      v11 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) - *(a2 & 0xFFFFFFFFFFFFFFFCLL));
      if (*v11 >= 0xBu)
      {
        v12 = v11[5];
        if (v12)
        {
          return *((a2 & 0xFFFFFFFFFFFFFFFCLL) + v12);
        }
      }
    }

    return 0;
  }

  v8 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
  v9 = (*(*v8 + 24))(v8);
  if (v9 == 4)
  {
    if ((*((a2 & 0xFFFFFFFFFFFFFFFCLL) + 8) & 0x80000000) != 0)
    {
      return *((a2 & 0xFFFFFFFFFFFFFFFCLL) + 32);
    }

    return 0;
  }

  if (v9 == 2)
  {
    return *((a2 & 0xFFFFFFFFFFFFFFFCLL) + 60);
  }

  if (v9 != 1)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v23);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "Unhandled CSCppSymbolOwnerData type_id: ", 40);
    v14 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
    v15 = (*(*v14 + 24))(v14);
    MEMORY[0x1DA7365E0](v13, v15);
    std::ostringstream::str[abi:ne200100](v23, &v22);
    Exception::Exception(v21, &v22);
    v16 = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(v16, v21);
  }

  return *((a2 & 0xFFFFFFFFFFFFFFFCLL) + 52);
}

void sub_1D96FF0E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

uint64_t CSSourceInfoGetSymbolicator(uint64_t a1, char a2)
{
  if (!(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFFF8) + 8);
  return 2;
}

uint64_t CSSourceInfoGetSymbolOwner(char a1, char a2)
{
  if (a1 & 7 | (8 * (a2 & 3)))
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

uint64_t CSSourceInfoGetRegion(uint64_t a1, uint64_t a2)
{
  if (!(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  Range = CSSourceInfoGetRange(a1, a2);
  return CSSymbolOwnerGetSectionWithAddress(3, a1 & 0xFFFFFFFFFFFFFFF8, Range);
}

uint64_t CSSourceInfoGetSymbol(uint64_t a1, uint64_t a2)
{
  v2 = a1 & 7 | (8 * (a2 & 3));
  if (!v2)
  {
    return 0;
  }

  if (v2 == 5)
  {
    v7 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
    v8 = (*(*v7 + 24))(v7);
    if (v8 != 4)
    {
      if (v8 == 2)
      {
LABEL_12:
        v9 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
        v10 = *(a2 & 0xFFFFFFFFFFFFFFFCLL);
        return (*(*v9 + 136))(v9, a1 & 0xFFFFFFFFFFFFFFF8, v10);
      }

      if (v8 != 1)
      {
        std::ostringstream::basic_ostringstream[abi:ne200100](v31);
        v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "Unhandled CSCppSymbolOwnerData type_id: ", 40);
        v22 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
        v23 = (*(*v22 + 24))(v22);
        MEMORY[0x1DA7365E0](v21, v23);
        std::ostringstream::str[abi:ne200100](v31, &v30);
        Exception::Exception(v29, &v30);
        exception = __cxa_allocate_exception(0x20uLL);
        Exception::Exception(exception, v29);
      }

LABEL_11:
      v9 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
      v10 = *(a2 & 0xFFFFFFFFFFFFFFFCLL);
      return (*(*v9 + 136))(v9, a1 & 0xFFFFFFFFFFFFFFF8, v10);
    }

    goto LABEL_19;
  }

  if (v2 != 6)
  {
    return 0;
  }

  v5 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
  v6 = (*(*v5 + 24))(v5);
  if (v6 <= 3)
  {
    if (v6 != 1)
    {
      if (v6 != 2)
      {
LABEL_25:
        std::ostringstream::basic_ostringstream[abi:ne200100](v31);
        v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "Unhandled CSCppSymbolOwnerData type_id: ", 40);
        v26 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
        v27 = (*(*v26 + 24))(v26);
        MEMORY[0x1DA7365E0](v25, v27);
        std::ostringstream::str[abi:ne200100](v31, &v30);
        Exception::Exception(v29, &v30);
        v28 = __cxa_allocate_exception(0x20uLL);
        Exception::Exception(v28, v29);
      }

      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v6 == 4)
  {
LABEL_19:
    v18 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
    return TMMapSymbolOwnerData::symbol_for_archive_address(v18, (a1 & 0xFFFFFFFFFFFFFFF8), *(a2 & 0xFFFFFFFFFFFFFFFCLL));
  }

  if (v6 != 5)
  {
    goto LABEL_25;
  }

  v12 = (a2 & 0xFFFFFFFFFFFFFFFCLL);
  v13 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
  v14 = v13;
  v15 = (v12 - *v12);
  if (*v15 >= 0xDu && (v16 = v15[6]) != 0)
  {
    v17 = *(v12 + v16);
  }

  else
  {
    v17 = -1;
  }

  v19 = FlatbufferSymbolOwnerData::convertVMAddressToSlidAddress(v13, v17);
  if (v20)
  {
    return FlatbufferSymbolOwnerData::symbol_for_address(v14, (a1 & 0xFFFFFFFFFFFFFFF8), v19);
  }

  return 0;
}

void sub_1D96FF4EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

unint64_t CSSymbolGetRange(uint64_t a1, uint64_t a2)
{
  if (!(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  v4 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
  v5 = (*(*v4 + 24))(v4);
  if (v5 <= 3)
  {
    if (v5 != 1)
    {
      if (v5 == 2)
      {
        v6 = (a2 & 0xFFFFFFFFFFFFFFFCLL);
        CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
        result = *v6;
        v8 = v6[1];
        return result;
      }

LABEL_17:
      std::ostringstream::basic_ostringstream[abi:ne200100](&v21);
      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, "Unhandled CSCppSymbolOwnerData type_id: ", 40);
      v16 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
      v17 = (*(*v16 + 24))(v16);
      MEMORY[0x1DA7365E0](v15, v17);
      std::ostringstream::str[abi:ne200100](&v21, &v20);
      Exception::Exception(v19, &v20);
      exception = __cxa_allocate_exception(0x20uLL);
      Exception::Exception(exception, v19);
    }

    v11 = (a2 & 0xFFFFFFFFFFFFFFFCLL);
    CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
    result = *v11;
    goto LABEL_12;
  }

  if (v5 == 4)
  {
    v11 = (a2 & 0xFFFFFFFFFFFFFFFCLL);
    v12 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
    v21 = 0;
    if (TMMapSymbolOwnerData::convert_archive_address_to_real_address(v12, *v11, &v21))
    {
      result = v21;
LABEL_12:
      v13 = v11[1];
      return result;
    }

    return 0;
  }

  if (v5 != 5)
  {
    goto LABEL_17;
  }

  v19[0] = (a2 & 0xFFFFFFFFFFFFFFFCLL);
  v9 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
  v10 = FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::range(v19);
  FlatbufferSymbolOwnerData::convertVMAddressRangeToSlidAddressRange(v9, v10, v14, &v21);
  if (v22)
  {
    return v21;
  }

  else
  {
    return 0;
  }
}

void sub_1D96FF75C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

uint64_t CSSymbolGetFlags(uint64_t a1, uint64_t a2)
{
  v2 = a1 & 7 | (8 * (a2 & 3));
  if (!v2)
  {
    return 0;
  }

  v5 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
  v6 = (*(*v5 + 24))(v5);
  if (v6 <= 3)
  {
    if (v6 == 1)
    {
      TRawSymbol<Pointer32>::is_objc_method(a2 & 0xFFFFFFFFFFFFFFFCLL);
      v7 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) + 20);
      return atomic_load_explicit(v7, memory_order_acquire);
    }

    if (v6 == 2)
    {
      TRawSymbol<Pointer64>::is_objc_method(a2 & 0xFFFFFFFFFFFFFFFCLL);
      v7 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) + 28);
      return atomic_load_explicit(v7, memory_order_acquire);
    }

LABEL_16:
    std::ostringstream::basic_ostringstream[abi:ne200100](v15);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Unhandled CSCppSymbolOwnerData type_id: ", 40);
    v10 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
    v11 = (*(*v10 + 24))(v10);
    MEMORY[0x1DA7365E0](v9, v11);
    std::ostringstream::str[abi:ne200100](v15, &v14);
    Exception::Exception(v13, &v14);
    exception = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(exception, v13);
  }

  if (v6 == 4)
  {
    return *((a2 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  if (v6 != 5)
  {
    goto LABEL_16;
  }

  if (v2 == 10)
  {
    v15[0] = a2 & 0xFFFFFFFFFFFFFFFCLL;
    return FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::flags(v15);
  }

  else
  {
    v15[0] = a2 & 0xFFFFFFFFFFFFFFFCLL;
    return FlatbufferSymbolAdapterImpl<FlatbufferSymbols::Symbol>::flags(v15);
  }
}

void sub_1D96FF950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

const char *CSSymbolGetName(uint64_t a1, uint64_t a2)
{
  v2 = a1 & 7 | (8 * (a2 & 3));
  if (!v2)
  {
    return 0;
  }

  v5 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
  v6 = (*(*v5 + 24))(v5);
  if (v6 <= 3)
  {
    if (v6 == 1)
    {
      if (atomic_load_explicit(((a2 & 0xFFFFFFFFFFFFFFFCLL) + 20), memory_order_acquire) == 2048 || (atomic_load_explicit(((a2 & 0xFFFFFFFFFFFFFFFCLL) + 20), memory_order_acquire) & 0x1C000) != 0)
      {
        v7 = TRawSymbol<Pointer32>::_resolve_name(a2 & 0xFFFFFFFFFFFFFFFCLL);
        goto LABEL_18;
      }

      return 0;
    }

    if (v6 == 2)
    {
      if (atomic_load_explicit(((a2 & 0xFFFFFFFFFFFFFFFCLL) + 28), memory_order_acquire) == 2048 || (atomic_load_explicit(((a2 & 0xFFFFFFFFFFFFFFFCLL) + 28), memory_order_acquire) & 0x1C000) != 0)
      {
        v7 = TRawSymbol<Pointer64>::_resolve_name(a2 & 0xFFFFFFFFFFFFFFFCLL);
LABEL_18:
        v13 = v7;
        v14 = 0;
LABEL_36:
        if ((v14 & 1) == 0 && v13)
        {
          v27 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
          if (!(*(*v27 + 72))(v27, v13))
          {
            return 0;
          }
        }

        return v13;
      }

      return 0;
    }

LABEL_41:
    std::ostringstream::basic_ostringstream[abi:ne200100](v34);
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "Unhandled CSCppSymbolOwnerData type_id: ", 40);
    v29 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
    v30 = (*(*v29 + 24))(v29);
    MEMORY[0x1DA7365E0](v28, v30);
    std::ostringstream::str[abi:ne200100](v34, &v33);
    Exception::Exception(v32, &v33);
    exception = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(exception, v32);
  }

  if (v6 != 4)
  {
    if (v6 != 5)
    {
      goto LABEL_41;
    }

    if (v2 == 10)
    {
      v34[0] = (a2 & 0xFFFFFFFFFFFFFFFCLL);
      if (!FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::is_unnamed(v34))
      {
        v8 = v34[0];
        v9 = (v34[0] - *v34[0]);
        if (*v9 < 0xBu || (v10 = v9[5]) == 0)
        {
          v11 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
          v12 = FlatbufferSymbolOwnerData::demangledNameForSymbol(v11, v34[0]);
LABEL_35:
          v13 = v12;
          v14 = 1;
          goto LABEL_36;
        }

        goto LABEL_30;
      }
    }

    else
    {
      v34[0] = (a2 & 0xFFFFFFFFFFFFFFFCLL);
      if (!FlatbufferSymbolAdapterImpl<FlatbufferSymbols::Symbol>::is_unnamed(v34))
      {
        v8 = v34[0];
        v24 = (v34[0] - *v34[0]);
        if (*v24 < 0xBu || (v10 = v24[5]) == 0)
        {
          v26 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
          v12 = FlatbufferSymbolOwnerData::demangledNameForSymbol(v26, v34[0]);
          goto LABEL_35;
        }

LABEL_30:
        v14 = 0;
        v13 = v8 + v10 + *(v8 + v10) + 4;
        goto LABEL_36;
      }
    }

    v14 = 0;
    v13 = 0;
    goto LABEL_36;
  }

  v15 = a2 & 0xFFFFFFFFFFFFFFFCLL;
  v16 = *(v15 + 8);
  if (v16 != 2048 && (v16 & 0x1C000) == 0)
  {
    return 0;
  }

  v18 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
  v19 = *(v15 + 12);
  if (v19)
  {
    v14 = 0;
    v20 = *(v18 + 88);
    v21 = *(v20 + 16);
    v22.i64[0] = v21;
    v22.i64[1] = HIDWORD(v21);
    v23 = v22;
    v23.i32[1] = v22.i32[0];
    v23.i32[3] = *(v20 + 24);
    v13 = v20 + v19 + *(v20 + 80) + vaddlvq_u32(vmulq_s32(v23, xmmword_1D97E0550)) + (32 * *(v20 + 8)) + (24 * *(v20 + 12)) + *(v20 + 88) + 96;
    goto LABEL_36;
  }

  return TMMapSymbolOwnerData::demangledNameForSymbol(v18, v15);
}

void sub_1D96FFD04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

BOOL FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::is_unnamed(int **a1)
{
  v1 = (*a1 - **a1);
  if (*v1 < 0x11u)
  {
    return !FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::is_sparse(a1);
  }

  v2 = v1[8];
  if (!v2)
  {
    return !FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::is_sparse(a1);
  }

  v3 = *(*a1 + v2);
  v4 = v3;
  v5 = v3 & 0xE00;
  return v4 != 0x2000 && v5 == 0 && !FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::is_sparse(a1);
}

BOOL FlatbufferSymbolAdapterImpl<FlatbufferSymbols::Symbol>::is_unnamed(int **a1)
{
  v1 = (*a1 - **a1);
  if (*v1 < 0x13u)
  {
    return !FlatbufferSymbolAdapterImpl<FlatbufferSymbols::Symbol>::is_sparse(a1);
  }

  v2 = v1[9];
  if (!v2)
  {
    return !FlatbufferSymbolAdapterImpl<FlatbufferSymbols::Symbol>::is_sparse(a1);
  }

  v3 = *(*a1 + v2);
  v4 = v3;
  v5 = v3 & 0xE00;
  return v4 != 0x2000 && v5 == 0 && !FlatbufferSymbolAdapterImpl<FlatbufferSymbols::Symbol>::is_sparse(a1);
}

char *CSSymbolGetMangledName(uint64_t a1, uint64_t a2)
{
  v2 = a1 & 7 | (8 * (a2 & 3));
  if (!v2)
  {
    return 0;
  }

  v5 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
  v6 = (*(*v5 + 24))(v5);
  if (v6 <= 3)
  {
    if (v6 == 1)
    {
      if (atomic_load_explicit(((a2 & 0xFFFFFFFFFFFFFFFCLL) + 20), memory_order_acquire) != 2048 && (atomic_load_explicit(((a2 & 0xFFFFFFFFFFFFFFFCLL) + 20), memory_order_acquire) & 0x1C000) == 0)
      {
        return 0;
      }

      v7 = TRawSymbol<Pointer32>::_resolve_mangled_name<TRawSymbol<Pointer32>::PersistentMangledName>(a2 & 0xFFFFFFFFFFFFFFFCLL);
LABEL_16:
      v8 = v7;
      goto LABEL_27;
    }

    if (v6 == 2)
    {
      if (atomic_load_explicit(((a2 & 0xFFFFFFFFFFFFFFFCLL) + 28), memory_order_acquire) != 2048 && (atomic_load_explicit(((a2 & 0xFFFFFFFFFFFFFFFCLL) + 28), memory_order_acquire) & 0x1C000) == 0)
      {
        return 0;
      }

      v7 = TRawSymbol<Pointer64>::_resolve_mangled_name<TRawSymbol<Pointer64>::PersistentMangledName>(a2 & 0xFFFFFFFFFFFFFFFCLL);
      goto LABEL_16;
    }

LABEL_33:
    std::ostringstream::basic_ostringstream[abi:ne200100](v26);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "Unhandled CSCppSymbolOwnerData type_id: ", 40);
    v21 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
    v22 = (*(*v21 + 24))(v21);
    MEMORY[0x1DA7365E0](v20, v22);
    std::ostringstream::str[abi:ne200100](v26, &v25);
    Exception::Exception(v24, &v25);
    exception = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(exception, v24);
  }

  if (v6 != 4)
  {
    if (v6 != 5)
    {
      goto LABEL_33;
    }

    if (v2 == 10)
    {
      v26[0] = (a2 & 0xFFFFFFFFFFFFFFFCLL);
      if (FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::is_unnamed(v26))
      {
        goto LABEL_26;
      }
    }

    else
    {
      v26[0] = (a2 & 0xFFFFFFFFFFFFFFFCLL);
      if (FlatbufferSymbolAdapterImpl<FlatbufferSymbols::Symbol>::is_unnamed(v26))
      {
LABEL_26:
        v8 = 0;
        goto LABEL_27;
      }
    }

    v16 = (v26[0] - *v26[0]);
    if (*v16 >= 9u)
    {
      v17 = v16[4];
      if (v17)
      {
        v8 = v26[0] + v17 + *(v26[0] + v17) + 4;
        goto LABEL_27;
      }
    }

    goto LABEL_26;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
  v10 = *(v9 + 8);
  if (v10 != 2048 && (v10 & 0x1C000) == 0)
  {
    return 0;
  }

  v12 = *(CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8)) + 88);
  v13 = *(v12 + 16);
  v14.i64[0] = v13;
  v14.i64[1] = HIDWORD(v13);
  v15 = v14;
  v15.i32[1] = v14.i32[0];
  v15.i32[3] = *(v12 + 24);
  v8 = (v12 + *(v9 + 16) + *(v12 + 80) + vaddlvq_u32(vmulq_s32(v15, xmmword_1D97E0550)) + (32 * *(v12 + 8)) + (24 * *(v12 + 12)) + *(v12 + 88) + 96);
LABEL_27:
  if (!v8)
  {
    return 0;
  }

  v18 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
  if ((*(*v18 + 72))(v18, v8))
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

void sub_1D97000D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

uint64_t CSSymbolIsFunction(uint64_t a1, uint64_t a2)
{
  v2 = a1 & 7 | (8 * (a2 & 3));
  if (!v2)
  {
    return 0;
  }

  v5 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
  v6 = (*(*v5 + 24))(v5);
  if (v6 <= 3)
  {
    if (v6 == 1)
    {
      v7 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) + 20);
      goto LABEL_13;
    }

    if (v6 == 2)
    {
      v7 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) + 28);
LABEL_13:
      explicit = atomic_load_explicit(v7, memory_order_acquire);
      return explicit & 1;
    }

LABEL_20:
    std::ostringstream::basic_ostringstream[abi:ne200100](v19);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Unhandled CSCppSymbolOwnerData type_id: ", 40);
    v14 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
    v15 = (*(*v14 + 24))(v14);
    MEMORY[0x1DA7365E0](v13, v15);
    std::ostringstream::str[abi:ne200100](v19, &v18);
    Exception::Exception(v17, &v18);
    exception = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(exception, v17);
  }

  if (v6 == 4)
  {
    explicit = *((a2 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    return explicit & 1;
  }

  if (v6 != 5)
  {
    goto LABEL_20;
  }

  v8 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) - *(a2 & 0xFFFFFFFFFFFFFFFCLL));
  v9 = *v8;
  if (v2 != 10)
  {
    if (v9 < 0x13)
    {
      return 0;
    }

    v10 = v8[9];
    if (!v10)
    {
      return 0;
    }

LABEL_17:
    explicit = *((a2 & 0xFFFFFFFFFFFFFFFCLL) + v10);
    return explicit & 1;
  }

  if (v9 >= 0x11)
  {
    v10 = v8[8];
    if (v10)
    {
      goto LABEL_17;
    }
  }

  return 0;
}

void sub_1D97002D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

uint64_t CSSymbolIsDyldStub(uint64_t a1, uint64_t a2)
{
  v2 = a1 & 7 | (8 * (a2 & 3));
  if (!v2)
  {
    return 0;
  }

  v5 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
  v6 = (*(*v5 + 24))(v5);
  if (v6 <= 3)
  {
    if (v6 == 1)
    {
      v7 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) + 20);
      goto LABEL_13;
    }

    if (v6 == 2)
    {
      v7 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) + 28);
LABEL_13:
      explicit = atomic_load_explicit(v7, memory_order_acquire);
      return (explicit >> 1) & 1;
    }

LABEL_20:
    std::ostringstream::basic_ostringstream[abi:ne200100](v19);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Unhandled CSCppSymbolOwnerData type_id: ", 40);
    v14 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
    v15 = (*(*v14 + 24))(v14);
    MEMORY[0x1DA7365E0](v13, v15);
    std::ostringstream::str[abi:ne200100](v19, &v18);
    Exception::Exception(v17, &v18);
    exception = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(exception, v17);
  }

  if (v6 == 4)
  {
    explicit = *((a2 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    return (explicit >> 1) & 1;
  }

  if (v6 != 5)
  {
    goto LABEL_20;
  }

  v8 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) - *(a2 & 0xFFFFFFFFFFFFFFFCLL));
  v9 = *v8;
  if (v2 != 10)
  {
    if (v9 < 0x13)
    {
      return 0;
    }

    v10 = v8[9];
    if (!v10)
    {
      return 0;
    }

LABEL_17:
    explicit = *((a2 & 0xFFFFFFFFFFFFFFFCLL) + v10);
    return (explicit >> 1) & 1;
  }

  if (v9 >= 0x11)
  {
    v10 = v8[8];
    if (v10)
    {
      goto LABEL_17;
    }
  }

  return 0;
}

void sub_1D97004D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

uint64_t CSSymbolIsObjcMethod(uint64_t a1, uint64_t a2)
{
  v2 = a1 & 7 | (8 * (a2 & 3));
  if (!v2)
  {
    return 0;
  }

  v5 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
  v6 = (*(*v5 + 24))(v5);
  if (v6 > 3)
  {
    if (v6 == 4)
    {
      v11 = *((a2 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    }

    else
    {
      if (v6 != 5)
      {
        goto LABEL_23;
      }

      v8 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) - *(a2 & 0xFFFFFFFFFFFFFFFCLL));
      v9 = *v8;
      if (v2 == 10)
      {
        if (v9 < 0x11)
        {
          return 0;
        }

        v10 = v8[8];
        if (!v10)
        {
          return 0;
        }
      }

      else
      {
        if (v9 < 0x13)
        {
          return 0;
        }

        v10 = v8[9];
        if (!v10)
        {
          return 0;
        }
      }

      v11 = *((a2 & 0xFFFFFFFFFFFFFFFCLL) + v10);
    }

    return (v11 >> 2) & 1;
  }

  if (v6 != 1)
  {
    if (v6 == 2)
    {

      return TRawSymbol<Pointer64>::is_objc_method(a2 & 0xFFFFFFFFFFFFFFFCLL);
    }

LABEL_23:
    std::ostringstream::basic_ostringstream[abi:ne200100](v18);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "Unhandled CSCppSymbolOwnerData type_id: ", 40);
    v13 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
    v14 = (*(*v13 + 24))(v13);
    MEMORY[0x1DA7365E0](v12, v14);
    std::ostringstream::str[abi:ne200100](v18, &v17);
    Exception::Exception(v16, &v17);
    exception = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(exception, v16);
  }

  return TRawSymbol<Pointer32>::is_objc_method(a2 & 0xFFFFFFFFFFFFFFFCLL);
}

void sub_1D970070C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

uint64_t TRawSymbol<Pointer32>::is_objc_method(uint64_t a1)
{
  v1 = (a1 + 20);
  if (atomic_load_explicit((a1 + 20), memory_order_acquire) == 2048)
  {
    return 0;
  }

  if ((atomic_load_explicit(v1, memory_order_acquire) & 0x1000000) == 0)
  {
    TRawSymbol<Pointer32>::_resolve_mangled_name<TRawSymbol<Pointer32>::PersistentMangledName>(a1);
    v3[0] = 0;
    v3[1] = v3;
    v3[2] = 0x2000000000;
    operator new();
  }

  return (atomic_load_explicit(v1, memory_order_acquire) >> 2) & 1;
}

uint64_t TRawSymbol<Pointer64>::is_objc_method(uint64_t a1)
{
  v1 = (a1 + 28);
  if (atomic_load_explicit((a1 + 28), memory_order_acquire) == 2048)
  {
    return 0;
  }

  if ((atomic_load_explicit(v1, memory_order_acquire) & 0x1000000) == 0)
  {
    TRawSymbol<Pointer64>::_resolve_mangled_name<TRawSymbol<Pointer64>::PersistentMangledName>(a1);
    v3[0] = 0;
    v3[1] = v3;
    v3[2] = 0x2000000000;
    operator new();
  }

  return (atomic_load_explicit(v1, memory_order_acquire) >> 2) & 1;
}

uint64_t CSSymbolIsExternal(uint64_t a1, uint64_t a2)
{
  v2 = a1 & 7 | (8 * (a2 & 3));
  if (!v2)
  {
    return 0;
  }

  v5 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
  v6 = (*(*v5 + 24))(v5);
  if (v6 <= 3)
  {
    if (v6 == 1)
    {
      v7 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) + 20);
      goto LABEL_13;
    }

    if (v6 == 2)
    {
      v7 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) + 28);
LABEL_13:
      explicit = atomic_load_explicit(v7, memory_order_acquire);
      return (explicit >> 4) & 1;
    }

LABEL_20:
    std::ostringstream::basic_ostringstream[abi:ne200100](v19);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Unhandled CSCppSymbolOwnerData type_id: ", 40);
    v14 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
    v15 = (*(*v14 + 24))(v14);
    MEMORY[0x1DA7365E0](v13, v15);
    std::ostringstream::str[abi:ne200100](v19, &v18);
    Exception::Exception(v17, &v18);
    exception = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(exception, v17);
  }

  if (v6 == 4)
  {
    explicit = *((a2 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    return (explicit >> 4) & 1;
  }

  if (v6 != 5)
  {
    goto LABEL_20;
  }

  v8 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) - *(a2 & 0xFFFFFFFFFFFFFFFCLL));
  v9 = *v8;
  if (v2 != 10)
  {
    if (v9 < 0x13)
    {
      return 0;
    }

    v10 = v8[9];
    if (!v10)
    {
      return 0;
    }

    return (*((a2 & 0xFFFFFFFFFFFFFFFCLL) + v10) >> 3) & 1;
  }

  if (v9 >= 0x11)
  {
    v10 = v8[8];
    if (v10)
    {
      return (*((a2 & 0xFFFFFFFFFFFFFFFCLL) + v10) >> 3) & 1;
    }
  }

  return 0;
}

void sub_1D9700C48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

uint64_t CSSymbolIsAlias(uint64_t a1, uint64_t a2)
{
  v2 = a1 & 7 | (8 * (a2 & 3));
  if (!v2)
  {
    return 0;
  }

  v5 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
  v6 = (*(*v5 + 24))(v5);
  if (v6 <= 3)
  {
    if (v6 == 1)
    {
      v7 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) + 20);
      return (atomic_load_explicit(v7, memory_order_acquire) >> 9) & 1;
    }

    if (v6 == 2)
    {
      v7 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) + 28);
      return (atomic_load_explicit(v7, memory_order_acquire) >> 9) & 1;
    }

LABEL_19:
    std::ostringstream::basic_ostringstream[abi:ne200100](v18);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "Unhandled CSCppSymbolOwnerData type_id: ", 40);
    v13 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
    v14 = (*(*v13 + 24))(v13);
    MEMORY[0x1DA7365E0](v12, v14);
    std::ostringstream::str[abi:ne200100](v18, &v17);
    Exception::Exception(v16, &v17);
    exception = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(exception, v16);
  }

  if (v6 == 4)
  {
    return (*((a2 & 0xFFFFFFFFFFFFFFFCLL) + 9) >> 1) & 1;
  }

  if (v6 != 5)
  {
    goto LABEL_19;
  }

  v8 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) - *(a2 & 0xFFFFFFFFFFFFFFFCLL));
  v9 = *v8;
  if (v2 != 10)
  {
    if (v9 < 0x13)
    {
      return 0;
    }

    v10 = v8[9];
    if (!v10)
    {
      return 0;
    }

    return (*((a2 & 0xFFFFFFFFFFFFFFFCLL) + v10) >> 4) & 1;
  }

  if (v9 >= 0x11)
  {
    v10 = v8[8];
    if (v10)
    {
      return (*((a2 & 0xFFFFFFFFFFFFFFFCLL) + v10) >> 4) & 1;
    }
  }

  return 0;
}

void sub_1D9700E50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

uint64_t CSSymbolIsDeduplicated(uint64_t a1, uint64_t a2)
{
  v2 = a1 & 7 | (8 * (a2 & 3));
  if (!v2)
  {
    return 0;
  }

  v5 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
  v6 = (*(*v5 + 24))(v5);
  if (v6 <= 3)
  {
    if (v6 == 1)
    {
      v7 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) + 20);
      return (atomic_load_explicit(v7, memory_order_acquire) >> 11) & 1;
    }

    if (v6 == 2)
    {
      v7 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) + 28);
      return (atomic_load_explicit(v7, memory_order_acquire) >> 11) & 1;
    }

LABEL_19:
    std::ostringstream::basic_ostringstream[abi:ne200100](v18);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "Unhandled CSCppSymbolOwnerData type_id: ", 40);
    v13 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
    v14 = (*(*v13 + 24))(v13);
    MEMORY[0x1DA7365E0](v12, v14);
    std::ostringstream::str[abi:ne200100](v18, &v17);
    Exception::Exception(v16, &v17);
    exception = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(exception, v16);
  }

  if (v6 == 4)
  {
    return (*((a2 & 0xFFFFFFFFFFFFFFFCLL) + 9) >> 3) & 1;
  }

  if (v6 != 5)
  {
    goto LABEL_19;
  }

  v8 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) - *(a2 & 0xFFFFFFFFFFFFFFFCLL));
  v9 = *v8;
  if (v2 != 10)
  {
    if (v9 < 0x13)
    {
      return 0;
    }

    v10 = v8[9];
    if (!v10)
    {
      return 0;
    }

    return (*((a2 & 0xFFFFFFFFFFFFFFFCLL) + v10 + 1) >> 5) & 1;
  }

  if (v9 >= 0x11)
  {
    v10 = v8[8];
    if (v10)
    {
      return (*((a2 & 0xFFFFFFFFFFFFFFFCLL) + v10 + 1) >> 5) & 1;
    }
  }

  return 0;
}

void sub_1D970105C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

uint64_t CSSymbolIsPrivateExternal(uint64_t a1, uint64_t a2)
{
  v2 = a1 & 7 | (8 * (a2 & 3));
  if (!v2)
  {
    return 0;
  }

  v5 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
  v6 = (*(*v5 + 24))(v5);
  if (v6 <= 3)
  {
    if (v6 == 1)
    {
      v7 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) + 20);
      goto LABEL_13;
    }

    if (v6 == 2)
    {
      v7 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) + 28);
LABEL_13:
      explicit = atomic_load_explicit(v7, memory_order_acquire);
      return (explicit >> 5) & 1;
    }

LABEL_20:
    std::ostringstream::basic_ostringstream[abi:ne200100](v19);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Unhandled CSCppSymbolOwnerData type_id: ", 40);
    v14 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
    v15 = (*(*v14 + 24))(v14);
    MEMORY[0x1DA7365E0](v13, v15);
    std::ostringstream::str[abi:ne200100](v19, &v18);
    Exception::Exception(v17, &v18);
    exception = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(exception, v17);
  }

  if (v6 == 4)
  {
    explicit = *((a2 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    return (explicit >> 5) & 1;
  }

  if (v6 != 5)
  {
    goto LABEL_20;
  }

  v8 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) - *(a2 & 0xFFFFFFFFFFFFFFFCLL));
  v9 = *v8;
  if (v2 != 10)
  {
    if (v9 < 0x13)
    {
      return 0;
    }

    v10 = v8[9];
    if (!v10)
    {
      return 0;
    }

LABEL_17:
    explicit = *((a2 & 0xFFFFFFFFFFFFFFFCLL) + v10);
    return (explicit >> 5) & 1;
  }

  if (v9 >= 0x11)
  {
    v10 = v8[8];
    if (v10)
    {
      goto LABEL_17;
    }
  }

  return 0;
}

void sub_1D970125C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

uint64_t CSSymbolIsArm(uint64_t a1, uint64_t a2)
{
  v2 = a1 & 7 | (8 * (a2 & 3));
  if (!v2)
  {
    return 0;
  }

  v5 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
  v6 = (*(*v5 + 24))(v5);
  if (v6 > 3)
  {
    if (v6 == 4)
    {
      explicit = *((a2 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      goto LABEL_19;
    }

    if (v6 != 5)
    {
      goto LABEL_22;
    }

    v9 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) - *(a2 & 0xFFFFFFFFFFFFFFFCLL));
    v10 = *v9;
    if (v2 == 10)
    {
      if (v10 < 0x11 || (v11 = v9[8]) == 0)
      {
LABEL_21:
        v13 = 0;
        return v13 ^ 1u;
      }
    }

    else
    {
      if (v10 < 0x13)
      {
        goto LABEL_21;
      }

      v11 = v9[9];
      if (!v11)
      {
        goto LABEL_21;
      }
    }

    explicit = *((a2 & 0xFFFFFFFFFFFFFFFCLL) + v11);
    goto LABEL_19;
  }

  if (v6 == 1)
  {
    v7 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) + 20);
    goto LABEL_14;
  }

  if (v6 != 2)
  {
LABEL_22:
    std::ostringstream::basic_ostringstream[abi:ne200100](v20);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "Unhandled CSCppSymbolOwnerData type_id: ", 40);
    v15 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
    v16 = (*(*v15 + 24))(v15);
    MEMORY[0x1DA7365E0](v14, v16);
    std::ostringstream::str[abi:ne200100](v20, &v19);
    Exception::Exception(v18, &v19);
    exception = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(exception, v18);
  }

  v7 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) + 28);
LABEL_14:
  explicit = atomic_load_explicit(v7, memory_order_acquire);
LABEL_19:
  v13 = (explicit >> 6) & 1;
  return v13 ^ 1u;
}

void sub_1D9701468(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

uint64_t CSSymbolIsThumb(uint64_t a1, uint64_t a2)
{
  v2 = a1 & 7 | (8 * (a2 & 3));
  if (!v2)
  {
    return 0;
  }

  v5 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
  v6 = (*(*v5 + 24))(v5);
  if (v6 <= 3)
  {
    if (v6 == 1)
    {
      v7 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) + 20);
      goto LABEL_13;
    }

    if (v6 == 2)
    {
      v7 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) + 28);
LABEL_13:
      explicit = atomic_load_explicit(v7, memory_order_acquire);
      return (explicit >> 6) & 1;
    }

LABEL_20:
    std::ostringstream::basic_ostringstream[abi:ne200100](v19);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Unhandled CSCppSymbolOwnerData type_id: ", 40);
    v14 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
    v15 = (*(*v14 + 24))(v14);
    MEMORY[0x1DA7365E0](v13, v15);
    std::ostringstream::str[abi:ne200100](v19, &v18);
    Exception::Exception(v17, &v18);
    exception = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(exception, v17);
  }

  if (v6 == 4)
  {
    explicit = *((a2 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    return (explicit >> 6) & 1;
  }

  if (v6 != 5)
  {
    goto LABEL_20;
  }

  v8 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) - *(a2 & 0xFFFFFFFFFFFFFFFCLL));
  v9 = *v8;
  if (v2 != 10)
  {
    if (v9 < 0x13)
    {
      return 0;
    }

    v10 = v8[9];
    if (!v10)
    {
      return 0;
    }

LABEL_17:
    explicit = *((a2 & 0xFFFFFFFFFFFFFFFCLL) + v10);
    return (explicit >> 6) & 1;
  }

  if (v9 >= 0x11)
  {
    v10 = v8[8];
    if (v10)
    {
      goto LABEL_17;
    }
  }

  return 0;
}

void sub_1D9701668(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

uint64_t CSSymbolIsOmitFramePointer(uint64_t a1, uint64_t a2)
{
  v2 = a1 & 7 | (8 * (a2 & 3));
  if (!v2)
  {
    return 0;
  }

  v5 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
  v6 = (*(*v5 + 24))(v5);
  if (v6 <= 3)
  {
    if (v6 == 1)
    {
      v7 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) + 20);
      return (atomic_load_explicit(v7, memory_order_acquire) >> 7) & 1;
    }

    if (v6 == 2)
    {
      v7 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) + 28);
      return (atomic_load_explicit(v7, memory_order_acquire) >> 7) & 1;
    }

LABEL_20:
    std::ostringstream::basic_ostringstream[abi:ne200100](v19);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Unhandled CSCppSymbolOwnerData type_id: ", 40);
    v14 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
    v15 = (*(*v14 + 24))(v14);
    MEMORY[0x1DA7365E0](v13, v15);
    std::ostringstream::str[abi:ne200100](v19, &v18);
    Exception::Exception(v17, &v18);
    exception = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(exception, v17);
  }

  if (v6 == 4)
  {
    v12 = *((a2 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    return v12 >> 7;
  }

  if (v6 != 5)
  {
    goto LABEL_20;
  }

  v8 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) - *(a2 & 0xFFFFFFFFFFFFFFFCLL));
  v9 = *v8;
  if (v2 != 10)
  {
    if (v9 < 0x13)
    {
      return 0;
    }

    v10 = v8[9];
    if (!v10)
    {
      return 0;
    }

    goto LABEL_17;
  }

  if (v9 >= 0x11)
  {
    v10 = v8[8];
    if (v10)
    {
LABEL_17:
      v12 = *((a2 & 0xFFFFFFFFFFFFFFFCLL) + v10);
      return v12 >> 7;
    }
  }

  return 0;
}

void sub_1D970186C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

uint64_t CSSymbolIsKnownLength(uint64_t a1, uint64_t a2)
{
  v2 = a1 & 7 | (8 * (a2 & 3));
  if (!v2)
  {
    return 0;
  }

  v5 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
  v6 = (*(*v5 + 24))(v5);
  if (v6 <= 3)
  {
    if (v6 == 1)
    {
      v7 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) + 20);
      return (atomic_load_explicit(v7, memory_order_acquire) >> 8) & 1;
    }

    if (v6 == 2)
    {
      v7 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) + 28);
      return (atomic_load_explicit(v7, memory_order_acquire) >> 8) & 1;
    }

LABEL_20:
    std::ostringstream::basic_ostringstream[abi:ne200100](v19);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Unhandled CSCppSymbolOwnerData type_id: ", 40);
    v14 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
    v15 = (*(*v14 + 24))(v14);
    MEMORY[0x1DA7365E0](v13, v15);
    std::ostringstream::str[abi:ne200100](v19, &v18);
    Exception::Exception(v17, &v18);
    exception = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(exception, v17);
  }

  if (v6 == 4)
  {
    v12 = *((a2 & 0xFFFFFFFFFFFFFFFCLL) + 9);
    return v12 & 1;
  }

  if (v6 != 5)
  {
    goto LABEL_20;
  }

  v8 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) - *(a2 & 0xFFFFFFFFFFFFFFFCLL));
  v9 = *v8;
  if (v2 != 10)
  {
    if (v9 < 0x13)
    {
      return 0;
    }

    v10 = v8[9];
    if (!v10)
    {
      return 0;
    }

    goto LABEL_17;
  }

  if (v9 >= 0x11)
  {
    v10 = v8[8];
    if (v10)
    {
LABEL_17:
      v12 = *((a2 & 0xFFFFFFFFFFFFFFFCLL) + v10 + 1);
      return v12 & 1;
    }
  }

  return 0;
}

void sub_1D9701A74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

BOOL CSSymbolIsUnnamed(uint64_t a1, uint64_t a2)
{
  v2 = a1 & 7 | (8 * (a2 & 3));
  if (!v2)
  {
    return 0;
  }

  v5 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
  v6 = (*(*v5 + 24))(v5);
  if (v6 > 3)
  {
    if (v6 == 4)
    {
      v9 = *((a2 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      return (v9 & 0x1C000) == 0 && v9 != 2048;
    }

    if (v6 == 5)
    {
      if (v2 == 10)
      {
        v17[0] = (a2 & 0xFFFFFFFFFFFFFFFCLL);
        return FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::is_unnamed(v17);
      }

      else
      {
        v17[0] = (a2 & 0xFFFFFFFFFFFFFFFCLL);
        return FlatbufferSymbolAdapterImpl<FlatbufferSymbols::Symbol>::is_unnamed(v17);
      }
    }

    goto LABEL_22;
  }

  if (v6 == 1)
  {
    v7 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) + 20);
    goto LABEL_11;
  }

  if (v6 != 2)
  {
LABEL_22:
    std::ostringstream::basic_ostringstream[abi:ne200100](v17);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Unhandled CSCppSymbolOwnerData type_id: ", 40);
    v12 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
    v13 = (*(*v12 + 24))(v12);
    MEMORY[0x1DA7365E0](v11, v13);
    std::ostringstream::str[abi:ne200100](v17, &v16);
    Exception::Exception(v15, &v16);
    exception = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(exception, v15);
  }

  v7 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) + 28);
LABEL_11:
  if (atomic_load_explicit(v7, memory_order_acquire) == 2048)
  {
    return 0;
  }

  return (atomic_load_explicit(v7, memory_order_acquire) & 0x1C000) == 0;
}

void sub_1D9701C7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

uint64_t CSSymbolGetSymbolicator(uint64_t a1, char a2)
{
  if (!(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFFF8) + 8);
  return 2;
}

uint64_t CSSymbolGetSymbolOwner(char a1, char a2)
{
  if (a1 & 7 | (8 * (a2 & 3)))
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

uint64_t CSSymbolGetSection(uint64_t a1, uint64_t a2)
{
  if (!(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  Range = CSSymbolGetRange(a1, a2);
  return CSSymbolOwnerGetSectionWithAddress(3, a1 & 0xFFFFFFFFFFFFFFF8, Range);
}

unint64_t CSSymbolGetSegment(uint64_t a1, uint64_t a2)
{
  if (!(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  Range = CSSymbolGetRange(a1, a2);
  return CSCppSymbolOwner::segment_at_address(a1 & 0xFFFFFFFFFFFFFFF8, Range);
}

unint64_t CSSymbolForeachSourceInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  v6 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
  v7 = (*(*v6 + 24))(v6);
  if (v7 <= 3)
  {
    if (v7 == 1)
    {
      v14 = (a2 & 0xFFFFFFFFFFFFFFFCLL);
      v9 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
      v15 = *v14;
      v16 = v14[1];
      goto LABEL_10;
    }

    if (v7 == 2)
    {
      v8 = (a2 & 0xFFFFFFFFFFFFFFFCLL);
      v9 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
      v10 = *v8;
      v11 = v8[1];
LABEL_10:
      v17 = *(*v9 + 152);

      return v17();
    }

LABEL_19:
    std::ostringstream::basic_ostringstream[abi:ne200100](v28);
    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "Unhandled CSCppSymbolOwnerData type_id: ", 40);
    v23 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
    v24 = (*(*v23 + 24))(v23);
    MEMORY[0x1DA7365E0](v22, v24);
    std::ostringstream::str[abi:ne200100](v28, &v27);
    Exception::Exception(v26, &v27);
    exception = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(exception, v26);
  }

  if (v7 != 4)
  {
    if (v7 != 5)
    {
      goto LABEL_19;
    }

    v26[0] = (a2 & 0xFFFFFFFFFFFFFFFCLL);
    v12 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
    v13 = FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::range(v26);
    FlatbufferSymbolOwnerData::convertVMAddressRangeToSlidAddressRange(v12, v13, v21, v28);
    if (v29 == 1)
    {
      return FlatbufferSymbolOwnerData::source_infos_in_address_range(v12, a1 & 0xFFFFFFFFFFFFFFF8, v28[0], v28[1], a3);
    }

    return 0;
  }

  v19 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
  v20 = *(a2 & 0xFFFFFFFFFFFFFFFCLL);

  return TMMapSymbolOwnerData::source_infos_in_archive_address_range(v19, a1 & 0xFFFFFFFFFFFFFFF8, v20, a3);
}

void sub_1D9702034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

uint64_t CSSymbolForeachInlineRange(uint64_t a1, char a2)
{
  if (!(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  v2 = *(*CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8)) + 176);

  return v2();
}

uint64_t CSSymbolForeachInlineRangeAtDepth(uint64_t a1, char a2, int a3)
{
  if (a3 < 0 || !(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  v3 = *(*CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8)) + 184);

  return v3();
}

uint64_t CSSymbolIsNList(uint64_t a1, uint64_t a2)
{
  v2 = a1 & 7 | (8 * (a2 & 3));
  if (!v2)
  {
    return 0;
  }

  v5 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
  v6 = (*(*v5 + 24))(v5);
  if (v6 <= 3)
  {
    if (v6 == 1)
    {
      v7 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) + 20);
      return (atomic_load_explicit(v7, memory_order_acquire) >> 25) & 1;
    }

    if (v6 == 2)
    {
      v7 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) + 28);
      return (atomic_load_explicit(v7, memory_order_acquire) >> 25) & 1;
    }

LABEL_20:
    std::ostringstream::basic_ostringstream[abi:ne200100](v19);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Unhandled CSCppSymbolOwnerData type_id: ", 40);
    v14 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
    v15 = (*(*v14 + 24))(v14);
    MEMORY[0x1DA7365E0](v13, v15);
    std::ostringstream::str[abi:ne200100](v19, &v18);
    Exception::Exception(v17, &v18);
    exception = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(exception, v17);
  }

  if (v6 == 4)
  {
    v12 = *((a2 & 0xFFFFFFFFFFFFFFFCLL) + 11);
    return (v12 >> 1) & 1;
  }

  if (v6 != 5)
  {
    goto LABEL_20;
  }

  v8 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) - *(a2 & 0xFFFFFFFFFFFFFFFCLL));
  v9 = *v8;
  if (v2 != 10)
  {
    if (v9 < 0x13)
    {
      return 0;
    }

    v10 = v8[9];
    if (!v10)
    {
      return 0;
    }

    goto LABEL_17;
  }

  if (v9 >= 0x11)
  {
    v10 = v8[8];
    if (v10)
    {
LABEL_17:
      v12 = *((a2 & 0xFFFFFFFFFFFFFFFCLL) + v10 + 1);
      return (v12 >> 1) & 1;
    }
  }

  return 0;
}

void sub_1D970236C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

uint64_t CSSymbolIsDwarf(uint64_t a1, uint64_t a2)
{
  v2 = a1 & 7 | (8 * (a2 & 3));
  if (!v2)
  {
    return 0;
  }

  v5 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
  v6 = (*(*v5 + 24))(v5);
  if (v6 <= 3)
  {
    if (v6 == 1)
    {
      v7 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) + 20);
      return (atomic_load_explicit(v7, memory_order_acquire) >> 26) & 1;
    }

    if (v6 == 2)
    {
      v7 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) + 28);
      return (atomic_load_explicit(v7, memory_order_acquire) >> 26) & 1;
    }

LABEL_20:
    std::ostringstream::basic_ostringstream[abi:ne200100](v19);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Unhandled CSCppSymbolOwnerData type_id: ", 40);
    v14 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
    v15 = (*(*v14 + 24))(v14);
    MEMORY[0x1DA7365E0](v13, v15);
    std::ostringstream::str[abi:ne200100](v19, &v18);
    Exception::Exception(v17, &v18);
    exception = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(exception, v17);
  }

  if (v6 == 4)
  {
    v12 = *((a2 & 0xFFFFFFFFFFFFFFFCLL) + 11);
    return (v12 >> 2) & 1;
  }

  if (v6 != 5)
  {
    goto LABEL_20;
  }

  v8 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) - *(a2 & 0xFFFFFFFFFFFFFFFCLL));
  v9 = *v8;
  if (v2 != 10)
  {
    if (v9 < 0x13)
    {
      return 0;
    }

    v10 = v8[9];
    if (!v10)
    {
      return 0;
    }

    goto LABEL_17;
  }

  if (v9 >= 0x11)
  {
    v10 = v8[8];
    if (v10)
    {
LABEL_17:
      v12 = *((a2 & 0xFFFFFFFFFFFFFFFCLL) + v10 + 1);
      return (v12 >> 2) & 1;
    }
  }

  return 0;
}

void sub_1D9702574(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

uint64_t CSSymbolIsDebugMap(uint64_t a1, uint64_t a2)
{
  v2 = a1 & 7 | (8 * (a2 & 3));
  if (!v2)
  {
    return 0;
  }

  v5 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
  v6 = (*(*v5 + 24))(v5);
  if (v6 <= 3)
  {
    if (v6 == 1)
    {
      v7 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) + 20);
      return (atomic_load_explicit(v7, memory_order_acquire) >> 27) & 1;
    }

    if (v6 == 2)
    {
      v7 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) + 28);
      return (atomic_load_explicit(v7, memory_order_acquire) >> 27) & 1;
    }

LABEL_20:
    std::ostringstream::basic_ostringstream[abi:ne200100](v19);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Unhandled CSCppSymbolOwnerData type_id: ", 40);
    v14 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
    v15 = (*(*v14 + 24))(v14);
    MEMORY[0x1DA7365E0](v13, v15);
    std::ostringstream::str[abi:ne200100](v19, &v18);
    Exception::Exception(v17, &v18);
    exception = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(exception, v17);
  }

  if (v6 == 4)
  {
    v12 = *((a2 & 0xFFFFFFFFFFFFFFFCLL) + 11);
    return (v12 >> 3) & 1;
  }

  if (v6 != 5)
  {
    goto LABEL_20;
  }

  v8 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) - *(a2 & 0xFFFFFFFFFFFFFFFCLL));
  v9 = *v8;
  if (v2 != 10)
  {
    if (v9 < 0x13)
    {
      return 0;
    }

    v10 = v8[9];
    if (!v10)
    {
      return 0;
    }

    goto LABEL_17;
  }

  if (v9 >= 0x11)
  {
    v10 = v8[8];
    if (v10)
    {
LABEL_17:
      v12 = *((a2 & 0xFFFFFFFFFFFFFFFCLL) + v10 + 1);
      return (v12 >> 3) & 1;
    }
  }

  return 0;
}

void sub_1D970277C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

uint64_t CSSymbolIsFunctionStarts(uint64_t a1, uint64_t a2)
{
  v2 = a1 & 7 | (8 * (a2 & 3));
  if (!v2)
  {
    return 0;
  }

  v5 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
  v6 = (*(*v5 + 24))(v5);
  if (v6 <= 3)
  {
    if (v6 == 1)
    {
      v7 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) + 20);
      return (atomic_load_explicit(v7, memory_order_acquire) >> 28) & 1;
    }

    if (v6 == 2)
    {
      v7 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) + 28);
      return (atomic_load_explicit(v7, memory_order_acquire) >> 28) & 1;
    }

LABEL_20:
    std::ostringstream::basic_ostringstream[abi:ne200100](v19);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Unhandled CSCppSymbolOwnerData type_id: ", 40);
    v14 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
    v15 = (*(*v14 + 24))(v14);
    MEMORY[0x1DA7365E0](v13, v15);
    std::ostringstream::str[abi:ne200100](v19, &v18);
    Exception::Exception(v17, &v18);
    exception = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(exception, v17);
  }

  if (v6 == 4)
  {
    v12 = *((a2 & 0xFFFFFFFFFFFFFFFCLL) + 11);
    return (v12 >> 4) & 1;
  }

  if (v6 != 5)
  {
    goto LABEL_20;
  }

  v8 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) - *(a2 & 0xFFFFFFFFFFFFFFFCLL));
  v9 = *v8;
  if (v2 != 10)
  {
    if (v9 < 0x13)
    {
      return 0;
    }

    v10 = v8[9];
    if (!v10)
    {
      return 0;
    }

    goto LABEL_17;
  }

  if (v9 >= 0x11)
  {
    v10 = v8[8];
    if (v10)
    {
LABEL_17:
      v12 = *((a2 & 0xFFFFFFFFFFFFFFFCLL) + v10 + 1);
      return (v12 >> 4) & 1;
    }
  }

  return 0;
}

void sub_1D9702984(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

uint64_t CSSymbolIsMerged(uint64_t a1, uint64_t a2)
{
  if (!(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  v4 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
  v5 = (*(*v4 + 24))(v4);
  if (v5 <= 3)
  {
    if (v5 == 1)
    {
      v6 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) + 20);
      return (atomic_load_explicit(v6, memory_order_acquire) >> 29) & 1;
    }

    if (v5 == 2)
    {
      v6 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) + 28);
      return (atomic_load_explicit(v6, memory_order_acquire) >> 29) & 1;
    }

LABEL_12:
    std::ostringstream::basic_ostringstream[abi:ne200100](v14);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "Unhandled CSCppSymbolOwnerData type_id: ", 40);
    v9 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
    v10 = (*(*v9 + 24))(v9);
    MEMORY[0x1DA7365E0](v8, v10);
    std::ostringstream::str[abi:ne200100](v14, &v13);
    Exception::Exception(v12, &v13);
    exception = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(exception, v12);
  }

  if (v5 != 4)
  {
    if (v5 != 5)
    {
      goto LABEL_12;
    }

    return 0;
  }

  return (*((a2 & 0xFFFFFFFFFFFFFFFCLL) + 11) >> 5) & 1;
}

void sub_1D9702B44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

uint64_t CSSymbolIsNameSourceNList(uint64_t a1, uint64_t a2)
{
  v2 = a1 & 7 | (8 * (a2 & 3));
  if (!v2)
  {
    return 0;
  }

  v5 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
  v6 = (*(*v5 + 24))(v5);
  if (v6 <= 3)
  {
    if (v6 == 1)
    {
      v7 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) + 20);
      return (atomic_load_explicit(v7, memory_order_acquire) >> 14) & 1;
    }

    if (v6 == 2)
    {
      v7 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) + 28);
      return (atomic_load_explicit(v7, memory_order_acquire) >> 14) & 1;
    }

LABEL_19:
    std::ostringstream::basic_ostringstream[abi:ne200100](v18);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "Unhandled CSCppSymbolOwnerData type_id: ", 40);
    v13 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
    v14 = (*(*v13 + 24))(v13);
    MEMORY[0x1DA7365E0](v12, v14);
    std::ostringstream::str[abi:ne200100](v18, &v17);
    Exception::Exception(v16, &v17);
    exception = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(exception, v16);
  }

  if (v6 == 4)
  {
    return (*((a2 & 0xFFFFFFFFFFFFFFFCLL) + 9) >> 6) & 1;
  }

  if (v6 != 5)
  {
    goto LABEL_19;
  }

  v8 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) - *(a2 & 0xFFFFFFFFFFFFFFFCLL));
  v9 = *v8;
  if (v2 != 10)
  {
    if (v9 < 0x13)
    {
      return 0;
    }

    v10 = v8[9];
    if (!v10)
    {
      return 0;
    }

    return (*((a2 & 0xFFFFFFFFFFFFFFFCLL) + v10 + 1) >> 1) & 1;
  }

  if (v9 >= 0x11)
  {
    v10 = v8[8];
    if (v10)
    {
      return (*((a2 & 0xFFFFFFFFFFFFFFFCLL) + v10 + 1) >> 1) & 1;
    }
  }

  return 0;
}

void sub_1D9702D50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

uint64_t CSSymbolIsNameSourceDwarf(uint64_t a1, uint64_t a2)
{
  v2 = a1 & 7 | (8 * (a2 & 3));
  if (!v2)
  {
    return 0;
  }

  v5 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
  v6 = (*(*v5 + 24))(v5);
  if (v6 <= 3)
  {
    if (v6 == 1)
    {
      v7 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) + 20);
      return (atomic_load_explicit(v7, memory_order_acquire) >> 15) & 1;
    }

    if (v6 == 2)
    {
      v7 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) + 28);
      return (atomic_load_explicit(v7, memory_order_acquire) >> 15) & 1;
    }

LABEL_16:
    std::ostringstream::basic_ostringstream[abi:ne200100](v15);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Unhandled CSCppSymbolOwnerData type_id: ", 40);
    v10 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
    v11 = (*(*v10 + 24))(v10);
    MEMORY[0x1DA7365E0](v9, v11);
    std::ostringstream::str[abi:ne200100](v15, &v14);
    Exception::Exception(v13, &v14);
    exception = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(exception, v13);
  }

  if (v6 == 4)
  {
    return *((a2 & 0xFFFFFFFFFFFFFFFCLL) + 9) >> 7;
  }

  if (v6 != 5)
  {
    goto LABEL_16;
  }

  if (v2 == 10)
  {
    v15[0] = a2 & 0xFFFFFFFFFFFFFFFCLL;
    return FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::is_name_source_dwarf(v15);
  }

  else
  {
    v15[0] = a2 & 0xFFFFFFFFFFFFFFFCLL;
    return FlatbufferSymbolAdapterImpl<FlatbufferSymbols::Symbol>::is_name_source_dwarf(v15);
  }
}

void sub_1D9702F3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

uint64_t CSSymbolIsNameSourceDwarfMIPSLinkage(uint64_t a1, uint64_t a2)
{
  if (!(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  v4 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
  v5 = (*(*v4 + 24))(v4);
  if (v5 <= 3)
  {
    if (v5 == 1)
    {
      v6 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) + 20);
      return (atomic_load_explicit(v6, memory_order_acquire) >> 16) & 1;
    }

    if (v5 == 2)
    {
      v6 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) + 28);
      return (atomic_load_explicit(v6, memory_order_acquire) >> 16) & 1;
    }

LABEL_12:
    std::ostringstream::basic_ostringstream[abi:ne200100](v14);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "Unhandled CSCppSymbolOwnerData type_id: ", 40);
    v9 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
    v10 = (*(*v9 + 24))(v9);
    MEMORY[0x1DA7365E0](v8, v10);
    std::ostringstream::str[abi:ne200100](v14, &v13);
    Exception::Exception(v12, &v13);
    exception = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(exception, v12);
  }

  if (v5 != 4)
  {
    if (v5 != 5)
    {
      goto LABEL_12;
    }

    return 0;
  }

  return *((a2 & 0xFFFFFFFFFFFFFFFCLL) + 10) & 1;
}

void sub_1D970317C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

uint64_t CSSymbolIsMangledNameSourceNList(uint64_t a1, uint64_t a2)
{
  v2 = a1 & 7 | (8 * (a2 & 3));
  if (!v2)
  {
    return 0;
  }

  v5 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
  v6 = (*(*v5 + 24))(v5);
  if (v6 <= 3)
  {
    if (v6 == 1)
    {
      v7 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) + 20);
      return (atomic_load_explicit(v7, memory_order_acquire) >> 19) & 1;
    }

    if (v6 == 2)
    {
      v7 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) + 28);
      return (atomic_load_explicit(v7, memory_order_acquire) >> 19) & 1;
    }

LABEL_19:
    std::ostringstream::basic_ostringstream[abi:ne200100](v18);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "Unhandled CSCppSymbolOwnerData type_id: ", 40);
    v13 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
    v14 = (*(*v13 + 24))(v13);
    MEMORY[0x1DA7365E0](v12, v14);
    std::ostringstream::str[abi:ne200100](v18, &v17);
    Exception::Exception(v16, &v17);
    exception = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(exception, v16);
  }

  if (v6 == 4)
  {
    return (*((a2 & 0xFFFFFFFFFFFFFFFCLL) + 10) >> 3) & 1;
  }

  if (v6 != 5)
  {
    goto LABEL_19;
  }

  v8 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) - *(a2 & 0xFFFFFFFFFFFFFFFCLL));
  v9 = *v8;
  if (v2 != 10)
  {
    if (v9 < 0x13)
    {
      return 0;
    }

    v10 = v8[9];
    if (!v10)
    {
      return 0;
    }

    return (*((a2 & 0xFFFFFFFFFFFFFFFCLL) + v10 + 1) >> 1) & 1;
  }

  if (v9 >= 0x11)
  {
    v10 = v8[8];
    if (v10)
    {
      return (*((a2 & 0xFFFFFFFFFFFFFFFCLL) + v10 + 1) >> 1) & 1;
    }
  }

  return 0;
}

void sub_1D9703388(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

BOOL CSSymbolIsMangledNameSourceDwarf(uint64_t a1, uint64_t a2)
{
  v2 = a1 & 7 | (8 * (a2 & 3));
  if (!v2)
  {
    return 0;
  }

  v5 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
  v6 = (*(*v5 + 24))(v5);
  if (v6 <= 3)
  {
    if (v6 == 1)
    {
      v7 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) + 20);
      return (atomic_load_explicit(v7, memory_order_acquire) >> 20) & 1;
    }

    if (v6 == 2)
    {
      v7 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) + 28);
      return (atomic_load_explicit(v7, memory_order_acquire) >> 20) & 1;
    }

LABEL_16:
    std::ostringstream::basic_ostringstream[abi:ne200100](v15);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Unhandled CSCppSymbolOwnerData type_id: ", 40);
    v10 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
    v11 = (*(*v10 + 24))(v10);
    MEMORY[0x1DA7365E0](v9, v11);
    std::ostringstream::str[abi:ne200100](v15, &v14);
    Exception::Exception(v13, &v14);
    exception = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(exception, v13);
  }

  if (v6 == 4)
  {
    return (*((a2 & 0xFFFFFFFFFFFFFFFCLL) + 10) >> 4) & 1;
  }

  if (v6 != 5)
  {
    goto LABEL_16;
  }

  if (v2 == 10)
  {
    v15[0] = a2 & 0xFFFFFFFFFFFFFFFCLL;
    return FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::is_name_source_dwarf(v15);
  }

  else
  {
    v15[0] = a2 & 0xFFFFFFFFFFFFFFFCLL;
    return FlatbufferSymbolAdapterImpl<FlatbufferSymbols::Symbol>::is_name_source_dwarf(v15);
  }
}

void sub_1D9703574(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

uint64_t CSSymbolIsMangledNameSourceDwarfMIPSLinkage(uint64_t a1, uint64_t a2)
{
  if (!(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  v4 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
  v5 = (*(*v4 + 24))(v4);
  if (v5 <= 3)
  {
    if (v5 == 1)
    {
      v6 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) + 20);
      return (atomic_load_explicit(v6, memory_order_acquire) >> 21) & 1;
    }

    if (v5 == 2)
    {
      v6 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) + 28);
      return (atomic_load_explicit(v6, memory_order_acquire) >> 21) & 1;
    }

LABEL_12:
    std::ostringstream::basic_ostringstream[abi:ne200100](v14);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "Unhandled CSCppSymbolOwnerData type_id: ", 40);
    v9 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
    v10 = (*(*v9 + 24))(v9);
    MEMORY[0x1DA7365E0](v8, v10);
    std::ostringstream::str[abi:ne200100](v14, &v13);
    Exception::Exception(v12, &v13);
    exception = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(exception, v12);
  }

  if (v5 != 4)
  {
    if (v5 != 5)
    {
      goto LABEL_12;
    }

    return 0;
  }

  return (*((a2 & 0xFFFFFFFFFFFFFFFCLL) + 10) >> 5) & 1;
}

void sub_1D9703734(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

BOOL CSSymbolHasInlinedSourceInfo(uint64_t a1, uint64_t a2)
{
  v2 = a1 & 7 | (8 * (a2 & 3));
  if (!v2)
  {
    return 0;
  }

  v5 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
  v6 = (*(*v5 + 24))(v5);
  if (v6 > 3)
  {
    if (v6 == 4)
    {
      return *((a2 & 0xFFFFFFFFFFFFFFFCLL) + 8) >> 31;
    }

    if (v6 != 5)
    {
LABEL_21:
      std::ostringstream::basic_ostringstream[abi:ne200100](v17);
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Unhandled CSCppSymbolOwnerData type_id: ", 40);
      v12 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
      v13 = (*(*v12 + 24))(v12);
      MEMORY[0x1DA7365E0](v11, v13);
      std::ostringstream::str[abi:ne200100](v17, &v16);
      Exception::Exception(v15, &v16);
      exception = __cxa_allocate_exception(0x20uLL);
      Exception::Exception(exception, v15);
    }

    if (v2 == 10)
    {
      v8 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) - *(a2 & 0xFFFFFFFFFFFFFFFCLL));
      if (*v8 >= 0xDu)
      {
        v9 = v8[6] == 0;
        return !v9;
      }
    }

    return 0;
  }

  if (v6 == 1)
  {
    if ((atomic_load_explicit(((a2 & 0xFFFFFFFFFFFFFFFCLL) + 20), memory_order_acquire) & 0x80000000) != 0)
    {
      v7 = *((a2 & 0xFFFFFFFFFFFFFFFCLL) + 40);
      goto LABEL_17;
    }

    return 0;
  }

  if (v6 != 2)
  {
    goto LABEL_21;
  }

  if ((atomic_load_explicit(((a2 & 0xFFFFFFFFFFFFFFFCLL) + 28), memory_order_acquire) & 0x80000000) == 0)
  {
    return 0;
  }

  v7 = *((a2 & 0xFFFFFFFFFFFFFFFCLL) + 48);
LABEL_17:
  v9 = v7 == 0;
  return !v9;
}

void sub_1D9703938(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

void CSSymbolReleaseMemory(uint64_t a1, uint64_t a2)
{
  if (a1 & 7 | (8 * (a2 & 3)))
  {
    v4 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
    v5 = (*(*v4 + 24))(v4);
    if ((v5 - 4) >= 2)
    {
      if (v5 == 2)
      {

        TRawSymbol<Pointer64>::release_memory(a2 & 0xFFFFFFFFFFFFFFFCLL);
      }

      else
      {
        if (v5 != 1)
        {
          std::ostringstream::basic_ostringstream[abi:ne200100](v12);
          v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Unhandled CSCppSymbolOwnerData type_id: ", 40);
          v7 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
          v8 = (*(*v7 + 24))(v7);
          MEMORY[0x1DA7365E0](v6, v8);
          std::ostringstream::str[abi:ne200100](v12, &v11);
          Exception::Exception(v10, &v11);
          exception = __cxa_allocate_exception(0x20uLL);
          Exception::Exception(exception, v10);
        }

        TRawSymbol<Pointer32>::release_memory(a2 & 0xFFFFFFFFFFFFFFFCLL);
      }
    }
  }
}

void sub_1D9703B08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

void TRawSymbol<Pointer32>::release_memory(uint64_t a1)
{
  v2 = (a1 + 20);
  explicit = atomic_load_explicit((a1 + 20), memory_order_acquire);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  while (v4 != v5)
  {
    TRawSymbol<Pointer32>::release_memory(v4);
    v4 += 96;
  }

  if ((atomic_load_explicit(v2, memory_order_acquire) & 0x40000) != 0)
  {
    free(*(a1 + 24));
    explicit &= ~0x40000u;
  }

  if ((atomic_load_explicit((a1 + 20), memory_order_acquire) & 0x800000) != 0)
  {
    free(*(a1 + 32));
    explicit &= ~0x800000u;
  }

  atomic_store(explicit & 0xFFBDFFFF, (a1 + 20));
}

void TRawSymbol<Pointer64>::release_memory(uint64_t a1)
{
  v2 = (a1 + 28);
  explicit = atomic_load_explicit((a1 + 28), memory_order_acquire);
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  while (v4 != v5)
  {
    TRawSymbol<Pointer64>::release_memory(v4);
    v4 += 104;
  }

  if ((atomic_load_explicit(v2, memory_order_acquire) & 0x40000) != 0)
  {
    free(*(a1 + 32));
    explicit &= ~0x40000u;
  }

  if ((atomic_load_explicit((a1 + 28), memory_order_acquire) & 0x800000) != 0)
  {
    free(*(a1 + 40));
    explicit &= ~0x800000u;
  }

  atomic_store(explicit & 0xFFBDFFFF, (a1 + 28));
}

uint64_t CSSymbolForeachDeduplicatedSymbolVariant(uint64_t a1, char a2)
{
  if (!(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  v2 = *(*CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8)) + 192);

  return v2();
}

uint64_t FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::range(char **a1)
{
  v1 = *a1;
  v2 = &(*a1)[-**a1];
  v3 = *v2;
  if (v3 < 5)
  {
    return -1;
  }

  if (*(v2 + 2))
  {
    result = *&v1[*(v2 + 2)];
  }

  else
  {
    result = -1;
  }

  if (v3 >= 7)
  {
    v5 = *(v2 + 3);
    if (v5)
    {
      v6 = *&v1[v5];
    }
  }

  return result;
}

uint64_t FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::flags(void *a1)
{
  v1 = (*a1 - **a1);
  if (*v1 >= 0x11u && (v2 = v1[8]) != 0)
  {
    v3 = *(*a1 + v2);
  }

  else
  {
    LODWORD(v3) = 0;
  }

  return FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::convertFBSFlagsToCSFlagsImpl<std::tuple<FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::FlagConversion<1u,(FlatbufferSymbols::SymbolFlags)1>,FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::FlagConversion<2u,(FlatbufferSymbols::SymbolFlags)2>,FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::FlagConversion<4u,(FlatbufferSymbols::SymbolFlags)4>,FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::FlagConversion<16u,(FlatbufferSymbols::SymbolFlags)8>,FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::FlagConversion<512u,(FlatbufferSymbols::SymbolFlags)16>,FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::FlagConversion<32u,(FlatbufferSymbols::SymbolFlags)32>,FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::FlagConversion<64u,(FlatbufferSymbols::SymbolFlags)64>,FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::FlagConversion<128u,(FlatbufferSymbols::SymbolFlags)128>,FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::FlagConversion<256u,(FlatbufferSymbols::SymbolFlags)256>,FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::FlagConversion<33554432u,(FlatbufferSymbols::SymbolFlags)512>,FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::FlagConversion<16384u,(FlatbufferSymbols::SymbolFlags)512>,FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::FlagConversion<524288u,(FlatbufferSymbols::SymbolFlags)512>,FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::FlagConversion<67108864u,(FlatbufferSymbols::SymbolFlags)1024>,FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::FlagConversion<32768u,(FlatbufferSymbols::SymbolFlags)1024>,FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::FlagConversion<1048576u,(FlatbufferSymbols::SymbolFlags)1024>,FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::FlagConversion<134217728u,(FlatbufferSymbols::SymbolFlags)2048>,FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::FlagConversion<268435456u,(FlatbufferSymbols::SymbolFlags)4096>,FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::FlagConversion<2048u,(FlatbufferSymbols::SymbolFlags)8192>>,0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul>(a1, v3);
}

uint64_t FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::convertFBSFlagsToCSFlagsImpl<std::tuple<FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::FlagConversion<1u,(FlatbufferSymbols::SymbolFlags)1>,FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::FlagConversion<2u,(FlatbufferSymbols::SymbolFlags)2>,FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::FlagConversion<4u,(FlatbufferSymbols::SymbolFlags)4>,FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::FlagConversion<16u,(FlatbufferSymbols::SymbolFlags)8>,FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::FlagConversion<512u,(FlatbufferSymbols::SymbolFlags)16>,FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::FlagConversion<32u,(FlatbufferSymbols::SymbolFlags)32>,FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::FlagConversion<64u,(FlatbufferSymbols::SymbolFlags)64>,FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::FlagConversion<128u,(FlatbufferSymbols::SymbolFlags)128>,FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::FlagConversion<256u,(FlatbufferSymbols::SymbolFlags)256>,FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::FlagConversion<33554432u,(FlatbufferSymbols::SymbolFlags)512>,FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::FlagConversion<16384u,(FlatbufferSymbols::SymbolFlags)512>,FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::FlagConversion<524288u,(FlatbufferSymbols::SymbolFlags)512>,FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::FlagConversion<67108864u,(FlatbufferSymbols::SymbolFlags)1024>,FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::FlagConversion<32768u,(FlatbufferSymbols::SymbolFlags)1024>,FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::FlagConversion<1048576u,(FlatbufferSymbols::SymbolFlags)1024>,FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::FlagConversion<134217728u,(FlatbufferSymbols::SymbolFlags)2048>,FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::FlagConversion<268435456u,(FlatbufferSymbols::SymbolFlags)4096>,FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::FlagConversion<2048u,(FlatbufferSymbols::SymbolFlags)8192>>,0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul>(uint64_t a1, unsigned int a2)
{
  v2 = vshlq_u32(vdupq_n_s32(a2), xmmword_1D97E0560);
  v3 = vextq_s8(v2, vzip2q_s32(v2, vzip1q_s32(v2, v2)), 0xCuLL);
  v4 = v2.i32[2];
  v2.i32[3] = v2.i32[1];
  v5 = vorrq_s8(vandq_s8(v2, xmmword_1D97E0580), vandq_s8(v3, xmmword_1D97E0570));
  *v5.i8 = vorr_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL));
  return v5.i32[0] | a2 & 0x1E7 | v5.i32[1] | v4 & 0x18000000 | (a2 >> 2) & 0x800;
}

uint64_t FlatbufferSymbolAdapterImpl<FlatbufferSymbols::Symbol>::flags(void *a1)
{
  v1 = (*a1 - **a1);
  if (*v1 >= 0x13u && (v2 = v1[9]) != 0)
  {
    v3 = *(*a1 + v2);
  }

  else
  {
    LODWORD(v3) = 0;
  }

  return FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::convertFBSFlagsToCSFlagsImpl<std::tuple<FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::FlagConversion<1u,(FlatbufferSymbols::SymbolFlags)1>,FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::FlagConversion<2u,(FlatbufferSymbols::SymbolFlags)2>,FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::FlagConversion<4u,(FlatbufferSymbols::SymbolFlags)4>,FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::FlagConversion<16u,(FlatbufferSymbols::SymbolFlags)8>,FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::FlagConversion<512u,(FlatbufferSymbols::SymbolFlags)16>,FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::FlagConversion<32u,(FlatbufferSymbols::SymbolFlags)32>,FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::FlagConversion<64u,(FlatbufferSymbols::SymbolFlags)64>,FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::FlagConversion<128u,(FlatbufferSymbols::SymbolFlags)128>,FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::FlagConversion<256u,(FlatbufferSymbols::SymbolFlags)256>,FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::FlagConversion<33554432u,(FlatbufferSymbols::SymbolFlags)512>,FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::FlagConversion<16384u,(FlatbufferSymbols::SymbolFlags)512>,FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::FlagConversion<524288u,(FlatbufferSymbols::SymbolFlags)512>,FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::FlagConversion<67108864u,(FlatbufferSymbols::SymbolFlags)1024>,FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::FlagConversion<32768u,(FlatbufferSymbols::SymbolFlags)1024>,FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::FlagConversion<1048576u,(FlatbufferSymbols::SymbolFlags)1024>,FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::FlagConversion<134217728u,(FlatbufferSymbols::SymbolFlags)2048>,FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::FlagConversion<268435456u,(FlatbufferSymbols::SymbolFlags)4096>,FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::FlagConversion<2048u,(FlatbufferSymbols::SymbolFlags)8192>>,0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul>(a1, v3);
}

uint64_t TRawSymbol<Pointer32>::_resolve_name(uint64_t a1)
{
  if (atomic_load_explicit((a1 + 20), memory_order_acquire) != 2048 && (atomic_load_explicit((a1 + 20), memory_order_acquire) & 0x20000) == 0)
  {
    v2[0] = 0;
    v2[1] = v2;
    v2[2] = 0x2000000000;
    operator new();
  }

  return *(a1 + 24);
}

atomic_uint *volatile *___ZN10TRawSymbolI9Pointer32E13_resolve_nameEPPcPm_block_invoke(atomic_uint *volatile *result, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v4 = *(result + 5);
  if ((atomic_load_explicit((v4 + 20), memory_order_acquire) & 0x20000) != 0)
  {
    return result;
  }

  v5 = result;
  if ((atomic_load_explicit((v4 + 20), memory_order_acquire) & 0x8000) == 0)
  {
    v6 = DemanglingUtilities::demangle_with_reusable_buffer(*(v4 + 24), *(result + 6), *(result + 7), a4);
    if (v6)
    {
      v7 = 0x20000;
      if (!*(v5 + 6))
      {
        v8 = *(v5 + 7);
        v9 = v8 != 0;
        if (v8)
        {
          v7 = 0x20000;
        }

        else
        {
          v7 = 393216;
        }

LABEL_15:
        *(v4 + 24) = v6;
        if ((atomic_load_explicit((v4 + 20), memory_order_acquire) & 2) != 0)
        {
          dyld_stub_name = DemanglingUtilities::create_dyld_stub_name(*(v4 + 24), v7);
          if (!v9)
          {
            free(*(v4 + 24));
          }

          *(v4 + 24) = dyld_stub_name;
          LODWORD(v7) = 393216;
        }

        goto LABEL_19;
      }
    }

    else
    {
      v6 = *(v4 + 24);
      if ((atomic_load_explicit((v4 + 20), memory_order_acquire) & 0x4000) != 0 && *v6 == 95)
      {
        ++v6;
      }

      v7 = 0x20000;
    }

    v9 = 1;
    goto LABEL_15;
  }

  LODWORD(v7) = 0x20000;
LABEL_19:
  v11 = *(*(*(v5 + 4) + 8) + 24);

  return CSCppBitLock::set_bits(v11, v7);
}

atomic_uint *volatile *___ZN10TRawSymbolI9Pointer32E13_resolve_nameEPPcPm_block_invoke_2(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 24);
  if (result)
  {
    CSCppBitLock::~CSCppBitLock(result);
    result = MEMORY[0x1DA736760]();
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  return result;
}

uint64_t TRawSymbol<Pointer64>::_resolve_name(uint64_t a1)
{
  if (atomic_load_explicit((a1 + 28), memory_order_acquire) != 2048 && (atomic_load_explicit((a1 + 28), memory_order_acquire) & 0x20000) == 0)
  {
    v2[0] = 0;
    v2[1] = v2;
    v2[2] = 0x2000000000;
    operator new();
  }

  return *(a1 + 32);
}

atomic_uint *volatile *___ZN10TRawSymbolI9Pointer64E13_resolve_nameEPPcPm_block_invoke(atomic_uint *volatile *result, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v4 = *(result + 5);
  if ((atomic_load_explicit((v4 + 28), memory_order_acquire) & 0x20000) != 0)
  {
    return result;
  }

  v5 = result;
  if ((atomic_load_explicit((v4 + 28), memory_order_acquire) & 0x8000) == 0)
  {
    v6 = DemanglingUtilities::demangle_with_reusable_buffer(*(v4 + 32), *(result + 6), *(result + 7), a4);
    if (v6)
    {
      v7 = 0x20000;
      if (!*(v5 + 6))
      {
        v8 = *(v5 + 7);
        v9 = v8 != 0;
        if (v8)
        {
          v7 = 0x20000;
        }

        else
        {
          v7 = 393216;
        }

LABEL_15:
        *(v4 + 32) = v6;
        if ((atomic_load_explicit((v4 + 28), memory_order_acquire) & 2) != 0)
        {
          dyld_stub_name = DemanglingUtilities::create_dyld_stub_name(*(v4 + 32), v7);
          if (!v9)
          {
            free(*(v4 + 32));
          }

          *(v4 + 32) = dyld_stub_name;
          LODWORD(v7) = 393216;
        }

        goto LABEL_19;
      }
    }

    else
    {
      v6 = *(v4 + 32);
      if ((atomic_load_explicit((v4 + 28), memory_order_acquire) & 0x4000) != 0 && *v6 == 95)
      {
        ++v6;
      }

      v7 = 0x20000;
    }

    v9 = 1;
    goto LABEL_15;
  }

  LODWORD(v7) = 0x20000;
LABEL_19:
  v11 = *(*(*(v5 + 4) + 8) + 24);

  return CSCppBitLock::set_bits(v11, v7);
}

atomic_uint *volatile *___ZN10TRawSymbolI9Pointer64E13_resolve_nameEPPcPm_block_invoke_2(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 24);
  if (result)
  {
    CSCppBitLock::~CSCppBitLock(result);
    result = MEMORY[0x1DA736760]();
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  return result;
}

uint64_t TRawSymbol<Pointer32>::_resolve_mangled_name<TRawSymbol<Pointer32>::PersistentMangledName>(uint64_t a1)
{
  if (atomic_load_explicit((a1 + 20), memory_order_acquire) != 2048 && (atomic_load_explicit((a1 + 20), memory_order_acquire) & 0x400000) == 0)
  {
    v2[0] = 0;
    v2[1] = v2;
    v2[2] = 0x2000000000;
    operator new();
  }

  return *(a1 + 32);
}

atomic_uint *volatile *___ZN10TRawSymbolI9Pointer32E21_resolve_mangled_nameINS1_21PersistentMangledNameEEEPKcT__block_invoke(atomic_uint *volatile *result, const char *a2)
{
  v2 = *(result + 5);
  v3 = (v2 + 20);
  if ((atomic_load_explicit((v2 + 20), memory_order_acquire) & 0x400000) != 0)
  {
    return result;
  }

  v4 = result;
  explicit = atomic_load_explicit(v3, memory_order_acquire);
  v6 = atomic_load_explicit(v3, memory_order_acquire);
  if ((explicit & 0x80000) != 0)
  {
    if ((v6 & 2) != 0)
    {
      *(v2 + 32) = DemanglingUtilities::create_dyld_stub_name(*(v2 + 32), a2);
      v11 = 12582912;
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if ((v6 & 0x100000) == 0 && (atomic_load_explicit((v2 + 20), memory_order_acquire) & 0x200000) == 0)
  {
LABEL_9:
    v11 = 0x400000;
    goto LABEL_12;
  }

  is_objc_method_internal = TRawSymbol<Pointer32>::is_objc_method_internal(v2, *(v2 + 32));
  v8 = is_objc_method_internal;
  if ((is_objc_method_internal & 4) != 0)
  {
    v11 = is_objc_method_internal | 0x400000;
  }

  else
  {
    v9 = strlen(*(v2 + 32));
    v10 = malloc_type_malloc(v9 + 2, 0x100004077774924uLL);
    *v10 = 95;
    strcpy(v10 + 1, *(v2 + 32));
    *(v2 + 32) = v10;
    v11 = v8 | 0xC00000;
  }

LABEL_12:
  v12 = *(*(*(v4 + 4) + 8) + 24);

  return CSCppBitLock::set_bits(v12, v11);
}

uint64_t TRawSymbol<Pointer32>::is_objc_method_internal(int a1, char *__s)
{
  v2 = *__s;
  if ((v2 == 45 || v2 == 43) && __s[1] == 91 && __s[strlen(__s) - 1] == 93)
  {
    return 16777220;
  }

  else
  {
    return 0x1000000;
  }
}

atomic_uint *volatile *___ZN10TRawSymbolI9Pointer32E21_resolve_mangled_nameINS1_21PersistentMangledNameEEEPKcT__block_invoke_2(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 24);
  if (result)
  {
    CSCppBitLock::~CSCppBitLock(result);
    result = MEMORY[0x1DA736760]();
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  return result;
}

uint64_t TRawSymbol<Pointer64>::_resolve_mangled_name<TRawSymbol<Pointer64>::PersistentMangledName>(uint64_t a1)
{
  if (atomic_load_explicit((a1 + 28), memory_order_acquire) != 2048 && (atomic_load_explicit((a1 + 28), memory_order_acquire) & 0x400000) == 0)
  {
    v2[0] = 0;
    v2[1] = v2;
    v2[2] = 0x2000000000;
    operator new();
  }

  return *(a1 + 40);
}

atomic_uint *volatile *___ZN10TRawSymbolI9Pointer64E21_resolve_mangled_nameINS1_21PersistentMangledNameEEEPKcT__block_invoke(atomic_uint *volatile *result, const char *a2)
{
  v2 = *(result + 5);
  v3 = (v2 + 28);
  if ((atomic_load_explicit((v2 + 28), memory_order_acquire) & 0x400000) != 0)
  {
    return result;
  }

  v4 = result;
  explicit = atomic_load_explicit(v3, memory_order_acquire);
  v6 = atomic_load_explicit(v3, memory_order_acquire);
  if ((explicit & 0x80000) != 0)
  {
    if ((v6 & 2) != 0)
    {
      *(v2 + 40) = DemanglingUtilities::create_dyld_stub_name(*(v2 + 40), a2);
      v11 = 12582912;
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if ((v6 & 0x100000) == 0 && (atomic_load_explicit((v2 + 28), memory_order_acquire) & 0x200000) == 0)
  {
LABEL_9:
    v11 = 0x400000;
    goto LABEL_12;
  }

  is_objc_method_internal = TRawSymbol<Pointer32>::is_objc_method_internal(v2, *(v2 + 40));
  v8 = is_objc_method_internal;
  if ((is_objc_method_internal & 4) != 0)
  {
    v11 = is_objc_method_internal | 0x400000;
  }

  else
  {
    v9 = strlen(*(v2 + 40));
    v10 = malloc_type_malloc(v9 + 2, 0x100004077774924uLL);
    *v10 = 95;
    strcpy(v10 + 1, *(v2 + 40));
    *(v2 + 40) = v10;
    v11 = v8 | 0xC00000;
  }

LABEL_12:
  v12 = *(*(*(v4 + 4) + 8) + 24);

  return CSCppBitLock::set_bits(v12, v11);
}

atomic_uint *volatile *___ZN10TRawSymbolI9Pointer64E21_resolve_mangled_nameINS1_21PersistentMangledNameEEEPKcT__block_invoke_2(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 24);
  if (result)
  {
    CSCppBitLock::~CSCppBitLock(result);
    result = MEMORY[0x1DA736760]();
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  return result;
}

BOOL FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::is_sparse(void *a1)
{
  v1 = (*a1 - **a1);
  if (*v1 < 0x11u)
  {
    return 1;
  }

  v2 = v1[8];
  if (!v2)
  {
    return 1;
  }

  if ((*(*a1 + v2) & 0xE00) != 0)
  {
    return 0;
  }

  return (*(*a1 + v2) & 0x1000) == 0;
}

BOOL FlatbufferSymbolAdapterImpl<FlatbufferSymbols::Symbol>::is_sparse(void *a1)
{
  v1 = (*a1 - **a1);
  if (*v1 < 0x13u)
  {
    return 1;
  }

  v2 = v1[9];
  if (!v2)
  {
    return 1;
  }

  if ((*(*a1 + v2) & 0xE00) != 0)
  {
    return 0;
  }

  return (*(*a1 + v2) & 0x1000) == 0;
}

atomic_uint *volatile *___ZN10TRawSymbolI9Pointer32E14is_objc_methodEv_block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if ((atomic_load_explicit(result + 5, memory_order_acquire) & 0x1000000) == 0)
  {
    is_objc_method_internal = TRawSymbol<Pointer32>::is_objc_method_internal(result, *(a1 + 48));
    v4 = *(*(*(a1 + 32) + 8) + 24);

    return CSCppBitLock::set_bits(v4, is_objc_method_internal);
  }

  return result;
}

atomic_uint *volatile *___ZN10TRawSymbolI9Pointer32E14is_objc_methodEv_block_invoke_2(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 24);
  if (result)
  {
    CSCppBitLock::~CSCppBitLock(result);
    result = MEMORY[0x1DA736760]();
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  return result;
}

atomic_uint *volatile *___ZN10TRawSymbolI9Pointer64E14is_objc_methodEv_block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if ((atomic_load_explicit(result + 7, memory_order_acquire) & 0x1000000) == 0)
  {
    is_objc_method_internal = TRawSymbol<Pointer32>::is_objc_method_internal(result, *(a1 + 48));
    v4 = *(*(*(a1 + 32) + 8) + 24);

    return CSCppBitLock::set_bits(v4, is_objc_method_internal);
  }

  return result;
}

atomic_uint *volatile *___ZN10TRawSymbolI9Pointer64E14is_objc_methodEv_block_invoke_2(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 24);
  if (result)
  {
    CSCppBitLock::~CSCppBitLock(result);
    result = MEMORY[0x1DA736760]();
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  return result;
}

uint64_t FlatbufferSymbols::SymbolOwner::metadata_as_MachoMetadata(FlatbufferSymbols::SymbolOwner *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 1) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t TThreadsafeAddressRelocator<Pointer64>::relocate(void *a1, unint64_t a2, void *a3)
{
  v3 = a1[1];
  if (v3 != *a1)
  {
    v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v3 = *a1;
    do
    {
      v5 = v4 >> 1;
      v6 = &v3[3 * (v4 >> 1)];
      v8 = *v6;
      v7 = v6 + 3;
      v4 += ~(v4 >> 1);
      if (v8 > a2)
      {
        v4 = v5;
      }

      else
      {
        v3 = v7;
      }
    }

    while (v4);
  }

  if (v3 == *a1 || a2 - *(v3 - 3) >= *(v3 - 2))
  {
    return 0;
  }

  *a3 = *(v3 - 1) + a2;
  return 1;
}

uint64_t FlatbufferSymbolOwnerData::convertVMAddressToSlidAddress(FlatbufferSymbolOwnerData *this, unint64_t a2)
{
  v5 = 0;
  v2 = TThreadsafeAddressRelocator<Pointer64>::relocate(this + 20, a2, &v5);
  v3 = v5;
  if (!v2)
  {
    return 0;
  }

  return v3;
}

uint64_t FlatbufferSymbolOwnerData::convertVMAddressRangeToSlidAddressRange@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = 0;
  result = TThreadsafeAddressRelocator<Pointer64>::relocate((a1 + 160), a2, &v8);
  if (result)
  {
    *a4 = v8;
    *(a4 + 8) = a3;
    v7 = 1;
  }

  else
  {
    v7 = 0;
    *a4 = 0;
  }

  *(a4 + 16) = v7;
  return result;
}

uint64_t FlatbufferSymbols::SymbolOwner::segments(FlatbufferSymbols::SymbolOwner *this)
{
  v1 = (this - *this);
  if (*v1 >= 9u && (v2 = v1[4]) != 0)
  {
    return this + v2 + *(this + v2);
  }

  else
  {
    return 0;
  }
}

_DWORD *FlatbufferSymbolOwnerData::findMatchingEntryInFlatbufferTypeWithVMAddressRange<FlatbufferSymbols::SymbolOwner,flatbuffers::Vector<flatbuffers::Offset<FlatbufferSymbols::Segment>,unsigned int> const* (FlatbufferSymbols::SymbolOwner::*)(void)const,FlatbufferSymbols::Segment const*>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *), uint64_t a4, unint64_t a5, uint64_t a6)
{
  if (!a2)
  {
    return 0;
  }

  v8 = (a2 + (a4 >> 1));
  if (a4)
  {
    a3 = *(*v8 + a3);
  }

  result = a3(v8);
  if (result)
  {
    v10 = result;
    v11 = result + 1;
    v13 = result + 1;
    v12 = (result + (4 * *result) + 4);
    FlatbufferSymbolOwnerData::findMatchingEntryForVMAddressRange<flatbuffers::VectorIterator<flatbuffers::Offset<FlatbufferSymbols::Segment>,FlatbufferSymbols::Segment const*,unsigned char const*,unsigned int>>(&v13, &v12, a5, a6, &v14);
    if (v14 == (v11 + (4 * *v10)))
    {
      return 0;
    }

    else
    {
      return (v14 + *v14);
    }
  }

  return result;
}

uint64_t FlatbufferSymbols::Segment::symbols(FlatbufferSymbols::Segment *this)
{
  v1 = (this - *this);
  if (*v1 >= 0xBu && (v2 = v1[5]) != 0)
  {
    return this + v2 + *(this + v2);
  }

  else
  {
    return 0;
  }
}

_DWORD *FlatbufferSymbolOwnerData::findMatchingEntryInFlatbufferTypeWithVMAddressRange<FlatbufferSymbols::Segment,flatbuffers::Vector<flatbuffers::Offset<FlatbufferSymbols::Symbol>,unsigned int> const* (FlatbufferSymbols::Segment::*)(void)const,FlatbufferSymbols::Symbol const*>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *), uint64_t a4, unint64_t a5, uint64_t a6)
{
  if (!a2)
  {
    return 0;
  }

  v8 = (a2 + (a4 >> 1));
  if (a4)
  {
    a3 = *(*v8 + a3);
  }

  result = a3(v8);
  if (result)
  {
    v10 = result;
    v11 = result + 1;
    v13 = result + 1;
    v12 = (result + (4 * *result) + 4);
    FlatbufferSymbolOwnerData::findMatchingEntryForVMAddressRange<flatbuffers::VectorIterator<flatbuffers::Offset<FlatbufferSymbols::Symbol>,FlatbufferSymbols::Symbol const*,unsigned char const*,unsigned int>>(&v13, &v12, a5, a6, &v14);
    if (v14 == (v11 + (4 * *v10)))
    {
      return 0;
    }

    else
    {
      return (v14 + *v14);
    }
  }

  return result;
}

void FlatbufferSymbolOwnerData::FlatbufferSymbolOwnerData(FlatbufferSymbolOwnerData *this, CSCppSymbolOwner *a2, const FlatbufferSymbols::SymbolOwner *a3, CFTypeRef cf)
{
  *(this + 1) = 1;
  *(this + 2) = 850045863;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 68) = 0u;
  *this = &unk_1F5504F28;
  *(this + 11) = a3;
  *(this + 6) = 0u;
  *(this + 136) = 0u;
  v5 = this + 136;
  *(this + 184) = 0u;
  *(this + 7) = 0u;
  *(this + 128) = 0;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 200) = 0u;
  *(this + 27) = 0;
  *(this + 56) = 1065353216;
  *(this + 248) = 0u;
  *(this + 232) = 0u;
  *(this + 66) = 1065353216;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 76) = 1065353216;
  *(this + 39) = 850045863;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 46) = 0;
  *(this + 47) = 850045863;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 27) = 0u;
  *(this + 56) = 0;
  if (a3)
  {
    *(this + 12) = cf;
    CFRetain(cf);
    v7 = (*(this + 11) - **(this + 11));
    if (*v7 >= 9u && v7[4])
    {
      v73 = 0;
      v74 = 0;
      v75 = 0;
      std::vector<CSCppSegmentRange>::__init_with_size[abi:ne200100]<CSCppSegmentRange*,CSCppSegmentRange*>(&v73, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 5);
      v9 = 126 - 2 * __clz((v74 - v73) >> 5);
      if (v74 == v73)
      {
        v10 = 0;
      }

      else
      {
        v10 = v9;
      }

      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,CSCppSegmentRange *,false>(v73, v74, &__p, v10, 1, v8);
      __p = 0;
      v71 = 0;
      v72 = 0;
      v11 = *(this + 11);
      v12 = *v11;
      v13 = *(v11 - v12 + 8);
      if (*(v11 - v12 + 8))
      {
        v14 = *(v11 + v13);
        v15 = v11 + v13 + v14;
      }

      else
      {
        v13 = 0;
        v15 = 0;
        v14 = v12;
      }

      v16 = v11 + v13 + v14 + (4 * *(v11 + v13 + v14));
      if (v15 == v16)
      {
        v34 = -v12;
      }

      else
      {
        v17 = 0;
        v18 = v16 + 4;
        v19 = v15 + 8;
        do
        {
          v20 = *(v19 - 1);
          v21 = &v19[v20 - 4];
          v22 = v20 - *v21;
          v23 = *&v19[v22 - 4];
          if (v23 >= 5)
          {
            if (*&v19[v22])
            {
              v24 = &v19[v20 + *&v19[v22]];
              if (!strstr(&v24[*(v24 - 1)], "__LINKINFO"))
              {
                if (v23 < 7)
                {
                  v26 = 0;
                  v25 = -1;
                }

                else
                {
                  if (*&v19[v22 + 2])
                  {
                    v25 = *&v19[v20 - 4 + *&v19[v22 + 2]];
                  }

                  else
                  {
                    v25 = -1;
                  }

                  if (v23 < 9)
                  {
                    v26 = 0;
                  }

                  else if (*&v19[v22 + 4])
                  {
                    v26 = *&v19[v20 - 4 + *&v19[v22 + 4]];
                  }

                  else
                  {
                    v26 = 0;
                  }
                }

                if (v17 >= v72)
                {
                  v27 = 0xAAAAAAAAAAAAAAABLL * ((v17 - __p) >> 3);
                  v28 = v27 + 1;
                  if (v27 + 1 > 0xAAAAAAAAAAAAAAALL)
                  {
                    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
                  }

                  if (0x5555555555555556 * ((v72 - __p) >> 3) > v28)
                  {
                    v28 = 0x5555555555555556 * ((v72 - __p) >> 3);
                  }

                  if (0xAAAAAAAAAAAAAAABLL * ((v72 - __p) >> 3) >= 0x555555555555555)
                  {
                    v29 = 0xAAAAAAAAAAAAAAALL;
                  }

                  else
                  {
                    v29 = v28;
                  }

                  if (v29)
                  {
                    std::allocator<CSCppFlatbufferRelocation>::allocate_at_least[abi:ne200100](&__p, v29);
                  }

                  v30 = (8 * ((v17 - __p) >> 3));
                  *v30 = v25;
                  v30[1] = v26;
                  v30[2] = v21;
                  v17 = (24 * v27 + 24);
                  v31 = (24 * v27 - (v71 - __p));
                  memcpy(v31, __p, v71 - __p);
                  v32 = __p;
                  __p = v31;
                  v71 = v17;
                  v72 = 0;
                  if (v32)
                  {
                    operator delete(v32);
                  }
                }

                else
                {
                  *v17 = v25;
                  v17[1] = v26;
                  v17[2] = v21;
                  v17 += 3;
                }

                v71 = v17;
              }
            }
          }

          v33 = v19 == v18;
          v19 += 4;
        }

        while (!v33);
        v11 = *(this + 11);
        v12 = *v11;
        v34 = -v12;
      }

      v35 = v11 + v34;
      v36 = *(v35 + 4);
      if (*(v35 + 4))
      {
        v12 = *(v11 + v36);
        v37 = v11 + v36 + v12;
      }

      else
      {
        v36 = 0;
        v37 = 0;
        v12 = v12;
      }

      v38 = v11 + v36 + v12 + (4 * *(v11 + v36 + v12));
      if (v37 != v38)
      {
        v39 = v38 + 4;
        v40 = v37 + 26;
        do
        {
          v41 = *(v40 - 22);
          v42 = v41 - *&v40[v41 - 22];
          v43 = *&v40[v42 - 22];
          if (v43 >= 0xB && *&v40[v42 - 12] && (v43 < 0x17 || !*&v40[v42]))
          {
            if (*&v40[v42 - 18])
            {
              v44 = &v40[v41 + *&v40[v42 - 18]];
              v45 = &v44[*(v44 - 22) - 18];
              if (!strncmp("__TEXT", v45, 6uLL))
              {
                if (*&v40[v42 - 16])
                {
                  v46 = *&v40[v41 - 22 + *&v40[v42 - 16]];
                }

                else
                {
                  v46 = -1;
                }

                if (*&v40[v42 - 14])
                {
                  v47 = *&v40[v41 - 22 + *&v40[v42 - 14]];
                }

                else
                {
                  v47 = 0;
                }

                v49 = *(this + 14);
                v48 = *(this + 15);
                if (v49 >= v48)
                {
                  v51 = *(this + 13);
                  v52 = 0xAAAAAAAAAAAAAAABLL * ((v49 - v51) >> 3);
                  v53 = v52 + 1;
                  if (v52 + 1 > 0xAAAAAAAAAAAAAAALL)
                  {
                    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
                  }

                  v54 = 0xAAAAAAAAAAAAAAABLL * ((v48 - v51) >> 3);
                  if (2 * v54 > v53)
                  {
                    v53 = 2 * v54;
                  }

                  if (v54 >= 0x555555555555555)
                  {
                    v55 = 0xAAAAAAAAAAAAAAALL;
                  }

                  else
                  {
                    v55 = v53;
                  }

                  if (v55)
                  {
                    std::allocator<CSCppSectionRange>::allocate_at_least[abi:ne200100](this + 104, v55);
                  }

                  v56 = 24 * v52;
                  *v56 = v46;
                  *(v56 + 8) = v47;
                  *(v56 + 16) = CSCppNamedRange::unique_macho_string(v45, "__text", 0x10);
                  v50 = (v56 + 24);
                  v57 = *(this + 13);
                  v58 = *(this + 14) - v57;
                  v59 = v56 - v58;
                  memcpy((v56 - v58), v57, v58);
                  v60 = *(this + 13);
                  *(this + 13) = v59;
                  *(this + 14) = v56 + 24;
                  *(this + 15) = 0;
                  if (v60)
                  {
                    operator delete(v60);
                  }
                }

                else
                {
                  *v49 = v46;
                  v49[1] = v47;
                  v49[2] = CSCppNamedRange::unique_macho_string(v45, "__text", 0x10);
                  v50 = v49 + 3;
                  *(this + 14) = v49 + 3;
                }

                *(this + 14) = v50;
              }
            }
          }

          v61 = v40 - 18;
          v40 += 4;
        }

        while (v61 != v39);
      }

      create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(&v73, &__p, 1, &v68);
      create_segment_relocation_deltas<Pointer64,CSCppFlatbufferRelocation,CSCppSegmentRange>(&__p, &v73, 1, &v66);
      v64 = 0uLL;
      v65 = 0;
      std::vector<TRangeValue<Pointer64,unsigned long long>>::__init_with_size[abi:ne200100]<TRangeValue<Pointer64,unsigned long long>*,TRangeValue<Pointer64,unsigned long long>*>(&v64, v66, v67, 0xAAAAAAAAAAAAAAABLL * ((v67 - v66) >> 3));
      v62 = *(this + 20);
      if (v62)
      {
        *(this + 21) = v62;
        operator delete(v62);
        *(this + 20) = 0;
        *(this + 21) = 0;
        *(this + 22) = 0;
      }

      *(this + 10) = v64;
      *(this + 22) = v65;
      v64 = 0uLL;
      v65 = 0;
      std::vector<TRangeValue<Pointer64,unsigned long long>>::__init_with_size[abi:ne200100]<TRangeValue<Pointer64,unsigned long long>*,TRangeValue<Pointer64,unsigned long long>*>(&v64, v68, v69, 0xAAAAAAAAAAAAAAABLL * ((v69 - v68) >> 3));
      v63 = *v5;
      if (*v5)
      {
        *(this + 18) = v63;
        operator delete(v63);
        *v5 = 0;
        *(v5 + 1) = 0;
        *(v5 + 2) = 0;
      }

      *(this + 136) = v64;
      *(this + 19) = v65;
      if (v66)
      {
        v67 = v66;
        operator delete(v66);
      }

      if (v68)
      {
        v69 = v68;
        operator delete(v68);
      }

      if (__p)
      {
        v71 = __p;
        operator delete(__p);
      }

      if (v73)
      {
        v74 = v73;
        operator delete(v73);
      }
    }

    if (*(this + 13) != *(this + 14))
    {
      *(this + 128) = 1;
    }
  }
}

void sub_1D970566C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t *a9, std::mutex *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  v26 = *(v24 - 104);
  if (v26)
  {
    *(v24 - 96) = v26;
    operator delete(v26);
  }

  CSCppDeferredDemangler::~CSCppDeferredDemangler((v22 + 24));
  std::unique_ptr<CSCppTextSectionDescriptorMap<Pointer64>>::reset[abi:ne200100](a9, 0);
  v27 = v22[20];
  if (v27)
  {
    v22[21] = v27;
    operator delete(v27);
  }

  v28 = *v23;
  if (*v23)
  {
    v22[18] = v28;
    operator delete(v28);
  }

  v29 = v22[13];
  if (v29)
  {
    v22[14] = v29;
    operator delete(v29);
  }

  *v22 = &unk_1F5505060;
  std::mutex::~mutex(a10);
  _Unwind_Resume(a1);
}

void create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, char a3@<W2>, uint64_t **a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v7 = *a1;
  v8 = a1[1];
  v9 = v8 - *a1;
  if (v8 != *a1 && a2[1] != *a2)
  {
    v49 = 0;
    v50 = 0;
    v51 = 0;
    std::vector<CSCppSegmentRange>::__init_with_size[abi:ne200100]<std::__wrap_iter<CSCppSegmentRange const*>,std::__wrap_iter<CSCppSegmentRange const*>>(&v49, v7, v8, v9 >> 5);
    v11 = *a2;
    v12 = a2[1];
    v13 = 0xAAAAAAAAAAAAAAABLL * ((v12 - *a2) >> 3);
    v47 = 0;
    v48 = 0;
    __p = 0;
    std::vector<CSCppFlatbufferRelocation>::__init_with_size[abi:ne200100]<std::__wrap_iter<CSCppFlatbufferRelocation const*>,std::__wrap_iter<CSCppFlatbufferRelocation const*>>(&__p, v11, v12, v13);
    v14 = a1[1] - *a1;
    if (v14 != 32 && a2[1] - *a2 != 24)
    {
      v15 = 126 - 2 * __clz((v50 - v49) >> 5);
      if (v50 == v49)
      {
        v16 = 0;
      }

      else
      {
        v16 = v15;
      }

      std::__introsort<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppSegmentRange*,false>(v49, v50, &v52, v16, 1);
      v17 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v47 - __p) >> 3));
      if (v47 == __p)
      {
        v18 = 0;
      }

      else
      {
        v18 = v17;
      }

      std::__introsort<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppFlatbufferRelocation*,false>(__p, v47, &v52, v18, 1);
      v14 = a1[1] - *a1;
    }

    v19 = v49;
    v20 = __p;
    std::vector<TRangeValue<Pointer64,unsigned long long>>::reserve(a4, v14 >> 5);
    for (i = v50; v19 != v50; i = v50)
    {
      if (v20 == v47)
      {
        break;
      }

      v23 = v20[2];
      while (1)
      {
        if (v23 && (v24 = (v23 - *v23), *v24 >= 5u) && (v25 = v24[2]) != 0)
        {
          v26 = v23 + v25 + *(v23 + v25) + 4;
        }

        else
        {
          v26 = 0;
        }

        v27 = v19[3];
        if (!v27)
        {
          v27 = v19[2];
        }

        if (!strncmp(v26, v27, 0x10uLL))
        {
          break;
        }

        if (!is_relocation_skippable(v27))
        {
          if (CSCppFlatbufferRelocation::is_skippable(v20))
          {
            goto LABEL_40;
          }

          break;
        }

        v19 += 4;
        if (v19 == i)
        {
          goto LABEL_41;
        }
      }

      v28 = *v20;
      v30 = *v19;
      v29 = v19[1];
      v31 = *v20 - *v19;
      v33 = a4[1];
      v32 = a4[2];
      if (v33 >= v32)
      {
        v35 = *a4;
        v36 = v33 - *a4;
        v37 = 0xAAAAAAAAAAAAAAABLL * (v36 >> 3) + 1;
        if (v37 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
        }

        v38 = 0xAAAAAAAAAAAAAAABLL * ((v32 - v35) >> 3);
        if (2 * v38 > v37)
        {
          v37 = 2 * v38;
        }

        if (v38 >= 0x555555555555555)
        {
          v39 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v39 = v37;
        }

        if (v39)
        {
          std::allocator<TRangeValue<Pointer64,unsigned long long>>::allocate_at_least[abi:ne200100](a4, v39);
        }

        v40 = (8 * (v36 >> 3));
        *v40 = v30;
        v40[1] = v29;
        v40[2] = v31;
        v34 = (v40 + 3);
        v41 = (v40 - v36);
        memcpy(v40 - v36, v35, v36);
        v42 = *a4;
        *a4 = v41;
        a4[1] = v34;
        a4[2] = 0;
        if (v42)
        {
          operator delete(v42);
        }
      }

      else
      {
        *v33 = v30;
        v33[1] = v29;
        v34 = (v33 + 3);
        v33[2] = v31;
      }

      a4[1] = v34;
      a3 |= v28 != v30;
      v19 += 4;
LABEL_40:
      v20 += 3;
    }

LABEL_41:
    if (a3)
    {
      v43 = a4[1];
      v44 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * (v43 - *a4));
      if (v43 == *a4)
      {
        v45 = 0;
      }

      else
      {
        v45 = v44;
      }

      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer64,unsigned long long> *,false>(*a4, v43, &v52, v45, 1, v21);
    }

    else
    {
      a4[1] = *a4;
    }

    if (__p)
    {
      v47 = __p;
      operator delete(__p);
    }

    if (v49)
    {
      v50 = v49;
      operator delete(v49);
    }
  }
}

void sub_1D9705AC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  v16 = *v14;
  if (*v14)
  {
    *(v14 + 8) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

void create_segment_relocation_deltas<Pointer64,CSCppFlatbufferRelocation,CSCppSegmentRange>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, char a3@<W2>, uint64_t **a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v7 = *a1;
  v8 = a1[1];
  if (v8 != *a1 && a2[1] != *a2)
  {
    v10 = 0xAAAAAAAAAAAAAAABLL * ((v8 - *a1) >> 3);
    v46 = 0;
    v47 = 0;
    v48 = 0;
    std::vector<CSCppFlatbufferRelocation>::__init_with_size[abi:ne200100]<std::__wrap_iter<CSCppFlatbufferRelocation const*>,std::__wrap_iter<CSCppFlatbufferRelocation const*>>(&v46, v7, v8, v10);
    v11 = *a2;
    v12 = a2[1];
    v13 = (v12 - *a2) >> 5;
    v44 = 0;
    v45 = 0;
    __p = 0;
    std::vector<CSCppSegmentRange>::__init_with_size[abi:ne200100]<std::__wrap_iter<CSCppSegmentRange const*>,std::__wrap_iter<CSCppSegmentRange const*>>(&__p, v11, v12, v13);
    v14 = a1[1] - *a1;
    if (v14 != 24 && a2[1] - *a2 != 32)
    {
      v15 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v47 - v46) >> 3));
      if (v47 == v46)
      {
        v16 = 0;
      }

      else
      {
        v16 = v15;
      }

      std::__introsort<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppFlatbufferRelocation*,false>(v46, v47, &v49, v16, 1);
      v17 = 126 - 2 * __clz((v44 - __p) >> 5);
      if (v44 == __p)
      {
        v18 = 0;
      }

      else
      {
        v18 = v17;
      }

      std::__introsort<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppSegmentRange*,false>(__p, v44, &v49, v18, 1);
      v14 = a1[1] - *a1;
    }

    v19 = v46;
    v20 = __p;
    std::vector<TRangeValue<Pointer64,unsigned long long>>::reserve(a4, 0xAAAAAAAAAAAAAAABLL * (v14 >> 3));
    if (v19 != v47)
    {
      while (1)
      {
        if (v20 == v44)
        {
          goto LABEL_38;
        }

        v22 = v20[3];
        if (!v22)
        {
          v22 = v20[2];
        }

        v23 = (*(v19 + 2) + *(*(v19 + 2) - **(v19 + 2) + 4));
        if (!strncmp(v22, &v23[*v23 + 4], 0x10uLL))
        {
          goto LABEL_24;
        }

        if (!CSCppFlatbufferRelocation::is_skippable(v19))
        {
          break;
        }

        v19 += 24;
LABEL_19:
        if (v19 == v47)
        {
          goto LABEL_38;
        }
      }

      v24 = v20[3];
      if (!v24)
      {
        v24 = v20[2];
      }

      if (!is_relocation_skippable(v24))
      {
LABEL_24:
        v25 = *v20;
        v27 = *v19;
        v26 = *(v19 + 1);
        v28 = *v20 - *v19;
        v30 = a4[1];
        v29 = a4[2];
        if (v30 >= v29)
        {
          v32 = *a4;
          v33 = v30 - *a4;
          v34 = 0xAAAAAAAAAAAAAAABLL * (v33 >> 3) + 1;
          if (v34 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
          }

          v35 = 0xAAAAAAAAAAAAAAABLL * ((v29 - v32) >> 3);
          if (2 * v35 > v34)
          {
            v34 = 2 * v35;
          }

          if (v35 >= 0x555555555555555)
          {
            v36 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v36 = v34;
          }

          if (v36)
          {
            std::allocator<TRangeValue<Pointer64,unsigned long long>>::allocate_at_least[abi:ne200100](a4, v36);
          }

          v37 = (8 * (v33 >> 3));
          *v37 = v27;
          v37[1] = v26;
          v37[2] = v28;
          v31 = v37 + 3;
          v38 = (v37 - v33);
          memcpy(v37 - v33, v32, v33);
          v39 = *a4;
          *a4 = v38;
          a4[1] = v31;
          a4[2] = 0;
          if (v39)
          {
            operator delete(v39);
          }
        }

        else
        {
          *v30 = v27;
          v30[1] = v26;
          v31 = v30 + 3;
          v30[2] = v28;
        }

        a4[1] = v31;
        a3 |= v25 != v27;
        v19 += 24;
      }

      v20 += 4;
      goto LABEL_19;
    }

LABEL_38:
    if (a3)
    {
      v40 = a4[1];
      v41 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * (v40 - *a4));
      if (v40 == *a4)
      {
        v42 = 0;
      }

      else
      {
        v42 = v41;
      }

      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer64,unsigned long long> *,false>(*a4, v40, &v49, v42, 1, v21);
    }

    else
    {
      a4[1] = *a4;
    }

    if (__p)
    {
      v44 = __p;
      operator delete(__p);
    }

    if (v46)
    {
      v47 = v46;
      operator delete(v46);
    }
  }
}

void sub_1D9705E64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  v16 = *v14;
  if (*v14)
  {
    *(v14 + 8) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

void FlatbufferSymbolOwnerData::~FlatbufferSymbolOwnerData(FlatbufferSymbolOwnerData *this)
{
  *this = &unk_1F5504F28;
  CFRelease(*(this + 12));
  CSCppDeferredDemangler::~CSCppDeferredDemangler((this + 192));
  std::unique_ptr<CSCppTextSectionDescriptorMap<Pointer64>>::reset[abi:ne200100](this + 23, 0);
  v2 = *(this + 20);
  if (v2)
  {
    *(this + 21) = v2;
    operator delete(v2);
  }

  v3 = *(this + 17);
  if (v3)
  {
    *(this + 18) = v3;
    operator delete(v3);
  }

  v4 = *(this + 13);
  if (v4)
  {
    *(this + 14) = v4;
    operator delete(v4);
  }

  *this = &unk_1F5505060;
  std::mutex::~mutex((this + 16));
}

{
  FlatbufferSymbolOwnerData::~FlatbufferSymbolOwnerData(this);

  JUMPOUT(0x1DA736760);
}

FlatbufferSymbols::SymbolOwner *FlatbufferSymbolOwnerData::dsym_path(FlatbufferSymbolOwnerData *this)
{
  result = *(this + 11);
  if (result)
  {
    result = FlatbufferSymbols::SymbolOwner::metadata_as_MachoMetadata(result);
    if (result)
    {
      v2 = (result - *result);
      if (*v2 >= 0x19u && (v3 = v2[12]) != 0)
      {
        return (result + v3 + *(result + v3) + 4);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

FlatbufferSymbols::SymbolOwner *FlatbufferSymbolOwnerData::version(FlatbufferSymbolOwnerData *this)
{
  result = *(this + 11);
  if (result)
  {
    result = FlatbufferSymbols::SymbolOwner::metadata_as_MachoMetadata(result);
    if (result)
    {
      v2 = (result - *result);
      if (*v2 >= 0x17u && (v3 = v2[11]) != 0)
      {
        return (result + v3 + *(result + v3) + 4);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t FlatbufferSymbolOwnerData::regions_in_address_range(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 == -1)
  {
    return 0;
  }

  v5 = a1[17];
  v39 = a1 + 17;
  v6 = a1[18];
  if (v5 == v6)
  {
    return 0;
  }

  v9 = 0;
  v10 = a4 + a3;
  do
  {
    v11 = *v5;
    if (*v5 < v10)
    {
      v12 = v5[1] + v11;
      if (a3 < v12)
      {
        v13 = v11 <= a3 ? a3 : *v5;
        v14 = v10 >= v12 ? v5[1] + v11 : v10;
        v15 = v14 - v13;
        if (v14 != v13)
        {
          v43 = 0;
          if (TThreadsafeAddressRelocator<Pointer64>::relocate(v39, v13, &v43))
          {
            v16 = v43;
            v17 = FlatbufferSymbolOwnerData::findMatchingEntryInFlatbufferTypeWithVMAddressRange<FlatbufferSymbols::SymbolOwner,flatbuffers::Vector<flatbuffers::Offset<FlatbufferSymbols::Segment>,unsigned int> const* (FlatbufferSymbols::SymbolOwner::*)(void)const,FlatbufferSymbols::Segment const*>(a1, a1[11], FlatbufferSymbols::SymbolOwner::segments, 0, v43, v15);
            if (v17)
            {
              v18 = v17;
              v19 = v16;
              v21 = a1[13];
              v20 = a1[14];
              if (v21 == v20)
              {
                v27 = (v17 - *v17);
                if (*v27 < 0x17u)
                {
                  v28 = 0;
                }

                else
                {
                  v28 = v27[11];
                  if (v28)
                  {
                    v29 = (v17 + v28 + *(v17 + v28));
                    v42 = v29 + 1;
                    v41 = (v29 + (4 * *v29) + 4);
                    FlatbufferSymbolOwnerData::findUpperAndLowerRangeForVMAddressRange<flatbuffers::VectorIterator<flatbuffers::Offset<FlatbufferSymbols::Section>,FlatbufferSymbols::Section const*,unsigned char const*,unsigned int>>(&v42, &v41, v19, v15, &v43);
                    v30 = v43;
                    v31 = v44;
                    v37 = v44 - v43 + (v44 - v43 < 0 ? 3uLL : 0);
                    if (v44 != v43)
                    {
                      v32 = v43;
                      do
                      {
                        v33 = *v32;
                        v34 = v33 + *(v32 + v33 - *(v32 + v33) + 4);
                        v35 = strstr(v32 + v34 + *(v32 + v34) + 4, "__LINKINFO");
                        if (a5 && !v35)
                        {
                          (*(a5 + 16))(a5, a2 | 4, v30 + v33);
                        }

                        ++v32;
                        ++v30;
                      }

                      while (v32 != v31);
                    }

                    v28 = v37 >> 2;
                  }
                }

                v9 += v28;
              }

              else
              {
                v22 = a1[13];
                do
                {
                  v23 = (v18 - *v18);
                  v24 = *v23;
                  if (v24 >= 7 && v23[3])
                  {
                    v25 = *(v18 + v23[3]);
                  }

                  else
                  {
                    v25 = -1;
                  }

                  if (*v22 == v25)
                  {
                    if (v24 < 9)
                    {
                      v26 = 0;
                    }

                    else
                    {
                      v26 = v23[4];
                      if (v26)
                      {
                        v26 = *(v18 + v26);
                      }
                    }

                    if (a5 && v22[1] == v26)
                    {
                      (*(a5 + 16))(a5, a2 | 4, v21, v19);
                      ++v9;
                    }
                  }

                  v22 += 3;
                  v21 += 24;
                }

                while (v22 != v20);
              }
            }
          }
        }
      }
    }

    v5 += 3;
  }

  while (v5 != v6);
  return v9;
}

uint64_t FlatbufferSymbolOwnerData::symbols(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 88);
  if (!v3)
  {
    return 0;
  }

  v4 = (v3 - *v3);
  if (*v4 < 9u)
  {
    return 0;
  }

  v5 = v4[4];
  if (!v5)
  {
    return 0;
  }

  v6 = *(v3 + v5);
  v7 = (v3 + v5 + v6);
  v8 = (4 * *v7);
  if (!v8)
  {
    return 0;
  }

  v11 = 0;
  v31 = v7 + v8;
  v12 = v3 + v5 + v6;
  v13 = v12 + 8;
  v14 = v12;
  do
  {
    v16 = *(v14 + 1);
    v14 += 4;
    v15 = v16;
    v17 = &v14[v16];
    v18 = &v17[-*v17];
    if (*v18 >= 0xBu)
    {
      v19 = *(v18 + 5);
      if (v19)
      {
        v20 = &v17[v19];
        v21 = *&v17[v19];
        v22 = (4 * *&v20[v21]);
        if (v22)
        {
          v23 = 0;
          v24 = &v12[v15 + v21 + v19];
          v25 = &v13[v15 + v19 + v21];
          do
          {
            v26 = *&v24[v23 + 8];
            v27 = &v24[v23 + v26 - *&v24[v23 + 8 + v26]];
            if (*(v27 + 4) < 0x13u || (v28 = *(v27 + 13)) == 0 || (v29 = *&v24[v26 + 8 + v28 + v23], (v29 & 0x2000) == 0) || v29 == 0x2000)
            {
              if (a3)
              {
                (*(a3 + 16))(a3, a2 | 5, &v25[v23 + v26]);
              }

              ++v11;
            }

            v23 += 4;
          }

          while (v22 != v23);
        }
      }
    }

    v13 += 4;
    v12 = v14;
  }

  while (v14 != v31);
  return v11;
}

uint64_t FlatbufferSymbolOwnerData::symbols_for_name_with_deferred_demangler(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, char a5)
{
  CSCppDeferredDemangler::demangleAllConcreteSymbolsIfNeeded(a1 + 192, a1, a2);
  v10 = CSCppDeferredDemangler::mmapSymbolAddressesForDemangledName((a1 + 192), a3);
  v12 = v10;
  v13 = v11;
  if (a5)
  {
    if (v10 != v11)
    {
      v14 = 0;
      v15 = v10;
      do
      {
        ++v14;
        v15 = *v15;
      }

      while (v15 != v11);
      if (v10 != v11)
      {
        do
        {
          if (a4)
          {
            (*(a4 + 16))(a4, a2 | 5, v12[4]);
          }

          v12 = *v12;
        }

        while (v12 != v13);
      }

      return v14;
    }

    return 0;
  }

  if (v10 == v11)
  {
    return 0;
  }

  if (a4)
  {
    (*(a4 + 16))(a4, a2 | 5, v10[4]);
  }

  return 1;
}

uint64_t FlatbufferSymbolOwnerData::symbol_for_name(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v8 = *(a1 + 88);
  if (!v8)
  {
    return FlatbufferSymbolOwnerData::symbols_for_name_with_deferred_demangler(a1, a2, a3, a4, 0);
  }

  v34 = 0;
  v35 = FlatbufferSymbols::Segment::symbol_demangled_name_lookup;
  v36 = 0;
  v37 = a2;
  v38 = a4;
  v39 = a3;
  v40 = 0;
  v41 = &v34;
  v9 = (v8 - *v8);
  if (*v9 < 9u)
  {
    return FlatbufferSymbolOwnerData::symbols_for_name_with_deferred_demangler(a1, a2, a3, a4, 0);
  }

  v10 = v9[4];
  if (!v10)
  {
    return FlatbufferSymbolOwnerData::symbols_for_name_with_deferred_demangler(a1, a2, a3, a4, 0);
  }

  v11 = (v8 + v10 + *(v8 + v10));
  v12 = (4 * *v11);
  if (!v12)
  {
    return FlatbufferSymbolOwnerData::symbols_for_name_with_deferred_demangler(a1, a2, a3, a4, 0);
  }

  v13 = (v11 + v12);
  do
  {
    v14 = v11[1];
    ++v11;
    v15 = v35;
    v16 = (v11 + v14 + (v36 >> 1));
    if (v36)
    {
      v15 = *(*v16 + v35);
    }

    v17 = v15(v16);
    if (v17 && ((v40 & 1) != 0 || !*v41))
    {
      v19 = *v17;
      v18 = v17 + 1;
      v44 = v18 + (4 * v19);
      v45 = v18;
      std::__equal_range[abi:ne200100]<std::_ClassicAlgPolicy,StringComparison &,flatbuffers::VectorIterator<flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry>,FlatbufferSymbols::SymbolNameEntry const*,unsigned char const*,unsigned int>,flatbuffers::VectorIterator<flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry>,FlatbufferSymbols::SymbolNameEntry const*,unsigned char const*,unsigned int>,char const*,std::__identity>(&v45, &v44, &v39, &v42);
      v21 = v42;
      v20 = v43;
      v22 = v43 - v42;
      v23 = v43 - v42 + 3;
      if (v43 - v42 >= 0)
      {
        v23 = v43 - v42;
      }

      *v41 += v23 >> 2;
      if (v40 == 1)
      {
        if (v21 != v20)
        {
          v24 = v21;
          do
          {
            v25 = *v21;
            v26 = v25 - *(v21 + v25);
            if (*(v21 + v26) >= 7u)
            {
              v27 = *(v21 + v26 + 6);
              if (v27)
              {
                v28 = v24 + v25 + v27 + *(v21 + v25 + v27);
              }
            }

            if (v38)
            {
              (*(v38 + 16))();
              v20 = v43;
            }

            ++v21;
            ++v24;
          }

          while (v21 != v20);
        }
      }

      else if ((v22 & 0xFFFFFFFFFFFFFFFCLL) == 4)
      {
        v29 = (v21 + *v21);
        v30 = (v29 - *v29);
        if (*v30 >= 7u)
        {
          v31 = v30[3];
          if (v31)
          {
            v32 = v29 + v31 + *(v29 + v31);
          }
        }

        if (v38)
        {
          (*(v38 + 16))();
        }
      }
    }
  }

  while (v11 != v13);
  result = v34;
  if (!v34)
  {
    return FlatbufferSymbolOwnerData::symbols_for_name_with_deferred_demangler(a1, a2, a3, a4, 0);
  }

  return result;
}

uint64_t FlatbufferSymbols::Segment::symbol_demangled_name_lookup(FlatbufferSymbols::Segment *this)
{
  v1 = (this - *this);
  if (*v1 >= 0x1Bu && (v2 = v1[13]) != 0)
  {
    return this + v2 + *(this + v2);
  }

  else
  {
    return 0;
  }
}

uint64_t FlatbufferSymbolOwnerData::symbols_for_name(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v8 = *(a1 + 88);
  if (!v8)
  {
    goto LABEL_31;
  }

  v35 = 0;
  v36 = FlatbufferSymbols::Segment::symbol_demangled_name_lookup;
  v37 = 0;
  v38 = a2;
  v39 = a4;
  v40 = a3;
  v41 = 1;
  v42 = &v35;
  v9 = (v8 - *v8);
  if (*v9 < 9u)
  {
    goto LABEL_31;
  }

  v10 = v9[4];
  if (v10 && (v11 = (v8 + v10 + *(v8 + v10)), v12 = (4 * *v11), v12))
  {
    v13 = (v11 + v12);
    do
    {
      v14 = v11[1];
      ++v11;
      v15 = v36;
      v16 = (v11 + v14 + (v37 >> 1));
      if (v37)
      {
        v15 = *(*v16 + v36);
      }

      v17 = v15(v16);
      if (v17 && ((v41 & 1) != 0 || !*v42))
      {
        v19 = *v17;
        v18 = v17 + 1;
        v45 = v18 + (4 * v19);
        v46 = v18;
        std::__equal_range[abi:ne200100]<std::_ClassicAlgPolicy,StringComparison &,flatbuffers::VectorIterator<flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry>,FlatbufferSymbols::SymbolNameEntry const*,unsigned char const*,unsigned int>,flatbuffers::VectorIterator<flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry>,FlatbufferSymbols::SymbolNameEntry const*,unsigned char const*,unsigned int>,char const*,std::__identity>(&v46, &v45, &v40, &v43);
        v21 = v43;
        v20 = v44;
        v22 = v44 - v43;
        v23 = v44 - v43 + 3;
        if (v44 - v43 >= 0)
        {
          v23 = v44 - v43;
        }

        *v42 += v23 >> 2;
        if (v41 == 1)
        {
          if (v21 != v20)
          {
            v24 = v21;
            do
            {
              v25 = *v21;
              v26 = v25 - *(v21 + v25);
              if (*(v21 + v26) >= 7u)
              {
                v27 = *(v21 + v26 + 6);
                if (v27)
                {
                  v28 = v24 + v25 + v27 + *(v21 + v25 + v27);
                }
              }

              if (v39)
              {
                (*(v39 + 16))();
                v20 = v44;
              }

              ++v21;
              ++v24;
            }

            while (v21 != v20);
          }
        }

        else if ((v22 & 0xFFFFFFFFFFFFFFFCLL) == 4)
        {
          v29 = (v21 + *v21);
          v30 = (v29 - *v29);
          if (*v30 >= 7u)
          {
            v31 = v30[3];
            if (v31)
            {
              v32 = v29 + v31 + *(v29 + v31);
            }
          }

          if (v39)
          {
            (*(v39 + 16))();
          }
        }
      }
    }

    while (v11 != v13);
    v33 = v35;
  }

  else
  {
LABEL_31:
    v33 = 0;
  }

  return FlatbufferSymbolOwnerData::symbols_for_name_with_deferred_demangler(a1, a2, a3, a4, 1) + v33;
}

uint64_t FlatbufferSymbolOwnerData::symbols_for_mangled_name(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v4 = *(a1 + 88);
  if (!v4)
  {
    return 0;
  }

  v30 = 0;
  v31 = FlatbufferSymbols::Segment::symbol_asm_name_lookup;
  v32 = 0;
  v33 = a2;
  v34 = a4;
  v35 = a3;
  v36 = 1;
  v37 = &v30;
  v5 = (v4 - *v4);
  if (*v5 < 9u)
  {
    return 0;
  }

  v6 = v5[4];
  if (!v6)
  {
    return 0;
  }

  v7 = (v4 + v6 + *(v4 + v6));
  v8 = (4 * *v7);
  if (!v8)
  {
    return 0;
  }

  v9 = (v7 + v8);
  do
  {
    v10 = v7[1];
    ++v7;
    v11 = v31;
    v12 = (v7 + v10 + (v32 >> 1));
    if (v32)
    {
      v11 = *(*v12 + v31);
    }

    v13 = v11(v12);
    if (v13 && ((v36 & 1) != 0 || !*v37))
    {
      v15 = *v13;
      v14 = v13 + 1;
      v40 = v14 + (4 * v15);
      v41 = v14;
      std::__equal_range[abi:ne200100]<std::_ClassicAlgPolicy,StringComparison &,flatbuffers::VectorIterator<flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry>,FlatbufferSymbols::SymbolNameEntry const*,unsigned char const*,unsigned int>,flatbuffers::VectorIterator<flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry>,FlatbufferSymbols::SymbolNameEntry const*,unsigned char const*,unsigned int>,char const*,std::__identity>(&v41, &v40, &v35, &v38);
      v17 = v38;
      v16 = v39;
      v18 = v39 - v38;
      v19 = v39 - v38 + 3;
      if (v39 - v38 >= 0)
      {
        v19 = v39 - v38;
      }

      *v37 += v19 >> 2;
      if (v36 == 1)
      {
        if (v17 != v16)
        {
          v20 = v17;
          do
          {
            v21 = *v17;
            v22 = v21 - *(v17 + v21);
            if (*(v17 + v22) >= 7u)
            {
              v23 = *(v17 + v22 + 6);
              if (v23)
              {
                v24 = v20 + v21 + v23 + *(v17 + v21 + v23);
              }
            }

            if (v34)
            {
              (*(v34 + 16))();
              v16 = v39;
            }

            ++v17;
            ++v20;
          }

          while (v17 != v16);
        }
      }

      else if ((v18 & 0xFFFFFFFFFFFFFFFCLL) == 4)
      {
        v25 = (v17 + *v17);
        v26 = (v25 - *v25);
        if (*v26 >= 7u)
        {
          v27 = v26[3];
          if (v27)
          {
            v28 = v25 + v27 + *(v25 + v27);
          }
        }

        if (v34)
        {
          (*(v34 + 16))();
        }
      }
    }
  }

  while (v7 != v9);
  return v30;
}

uint64_t FlatbufferSymbols::Segment::symbol_asm_name_lookup(FlatbufferSymbols::Segment *this)
{
  v1 = (this - *this);
  if (*v1 >= 0x19u && (v2 = v1[12]) != 0)
  {
    return this + v2 + *(this + v2);
  }

  else
  {
    return 0;
  }
}

uint64_t FlatbufferSymbolOwnerData::symbol_for_mangled_name(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v4 = *(a1 + 88);
  if (!v4)
  {
    return 0;
  }

  v30 = 0;
  v31 = FlatbufferSymbols::Segment::symbol_asm_name_lookup;
  v32 = 0;
  v33 = a2;
  v34 = a4;
  v35 = a3;
  v36 = 0;
  v37 = &v30;
  v5 = (v4 - *v4);
  if (*v5 < 9u)
  {
    return 0;
  }

  v6 = v5[4];
  if (!v6)
  {
    return 0;
  }

  v7 = (v4 + v6 + *(v4 + v6));
  v8 = (4 * *v7);
  if (!v8)
  {
    return 0;
  }

  v9 = (v7 + v8);
  do
  {
    v10 = v7[1];
    ++v7;
    v11 = v31;
    v12 = (v7 + v10 + (v32 >> 1));
    if (v32)
    {
      v11 = *(*v12 + v31);
    }

    v13 = v11(v12);
    if (v13 && ((v36 & 1) != 0 || !*v37))
    {
      v15 = *v13;
      v14 = v13 + 1;
      v40 = v14 + (4 * v15);
      v41 = v14;
      std::__equal_range[abi:ne200100]<std::_ClassicAlgPolicy,StringComparison &,flatbuffers::VectorIterator<flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry>,FlatbufferSymbols::SymbolNameEntry const*,unsigned char const*,unsigned int>,flatbuffers::VectorIterator<flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry>,FlatbufferSymbols::SymbolNameEntry const*,unsigned char const*,unsigned int>,char const*,std::__identity>(&v41, &v40, &v35, &v38);
      v17 = v38;
      v16 = v39;
      v18 = v39 - v38;
      v19 = v39 - v38 + 3;
      if (v39 - v38 >= 0)
      {
        v19 = v39 - v38;
      }

      *v37 += v19 >> 2;
      if (v36 == 1)
      {
        if (v17 != v16)
        {
          v20 = v17;
          do
          {
            v21 = *v17;
            v22 = v21 - *(v17 + v21);
            if (*(v17 + v22) >= 7u)
            {
              v23 = *(v17 + v22 + 6);
              if (v23)
              {
                v24 = v20 + v21 + v23 + *(v17 + v21 + v23);
              }
            }

            if (v34)
            {
              (*(v34 + 16))();
              v16 = v39;
            }

            ++v17;
            ++v20;
          }

          while (v17 != v16);
        }
      }

      else if ((v18 & 0xFFFFFFFFFFFFFFFCLL) == 4)
      {
        v25 = (v17 + *v17);
        v26 = (v25 - *v25);
        if (*v26 >= 7u)
        {
          v27 = v26[3];
          if (v27)
          {
            v28 = v25 + v27 + *(v25 + v27);
          }
        }

        if (v34)
        {
          (*(v34 + 16))();
        }
      }
    }
  }

  while (v7 != v9);
  return v30;
}

uint64_t FlatbufferSymbolOwnerData::symbols_in_address_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 == -1)
  {
    return 0;
  }

  v5 = a1;
  v7 = *(a1 + 136);
  v8 = *(a1 + 144);
  v6 = (a1 + 136);
  if (v7 == v8)
  {
    return 0;
  }

  v11 = 0;
  v12 = a4 + a3;
  do
  {
    v13 = *v7;
    if (*v7 < v12)
    {
      v14 = v7[1] + v13;
      if (a3 < v14)
      {
        v15 = v13 <= a3 ? a3 : *v7;
        v16 = v12 >= v14 ? v7[1] + v13 : v12;
        v17 = v16 - v15;
        if (v16 != v15)
        {
          v35 = 0;
          if (TThreadsafeAddressRelocator<Pointer64>::relocate(v6, v15, &v35))
          {
            v18 = v35;
            v19 = FlatbufferSymbolOwnerData::findMatchingEntryInFlatbufferTypeWithVMAddressRange<FlatbufferSymbols::SymbolOwner,flatbuffers::Vector<flatbuffers::Offset<FlatbufferSymbols::Segment>,unsigned int> const* (FlatbufferSymbols::SymbolOwner::*)(void)const,FlatbufferSymbols::Segment const*>(v5, *(v5 + 88), FlatbufferSymbols::SymbolOwner::segments, 0, v35, v17);
            if (v19)
            {
              v20 = (v19 - *v19);
              if (*v20 >= 0xBu)
              {
                v21 = v20[5];
                if (v21)
                {
                  v22 = (v19 + v21 + *(v19 + v21));
                  v34 = v22 + 1;
                  v33 = (v22 + (4 * *v22) + 4);
                  v31 = v5;
                  FlatbufferSymbolOwnerData::findUpperAndLowerRangeForVMAddressRange<flatbuffers::VectorIterator<flatbuffers::Offset<FlatbufferSymbols::Symbol>,FlatbufferSymbols::Symbol const*,unsigned char const*,unsigned int>>(&v34, &v33, v18, v17, &v35);
                  v23 = v35;
                  v24 = v36;
                  if (v35 != v36)
                  {
                    v25 = v35;
                    do
                    {
                      v26 = *v25;
                      v27 = *(v25 + v26);
                      if (*(v25 + v26 - v27) < 0x13u || (v28 = *(v25 + v26 - v27 + 18)) == 0 || (v29 = *(v25 + v26 + v28), (v29 & 0x2000) == 0) || v29 == 0x2000)
                      {
                        if (a5)
                        {
                          (*(a5 + 16))(a5, a2 | 5, v23 + v26);
                        }

                        ++v11;
                      }

                      ++v25;
                      ++v23;
                    }

                    while (v25 != v24);
                  }

                  v5 = v31;
                }
              }
            }
          }
        }
      }
    }

    v7 += 3;
  }

  while (v7 != v8);
  return v11;
}
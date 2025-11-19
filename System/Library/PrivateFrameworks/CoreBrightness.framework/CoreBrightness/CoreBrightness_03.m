BOOL std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &>::operator()[abi:de200100]<AAB::CurveUpdate,AAB::CurveUpdate>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0::operator()(*a1, a2, a3);
  if (v5)
  {
    std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &>::__do_compare_assert[abi:de200100]<AAB::CurveUpdate,AAB::CurveUpdate>(a1, 0, a3, a2);
  }

  return v5;
}

double std::__sift_down[abi:de200100]<std::_ClassicAlgPolicy,std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &> &,AAB::CurveUpdate *>(uint64_t a1, uint64_t *a2, uint64_t a3, _OWORD *a4)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = (a4 - a1) / 16;
  if (a3 >= 2 && (v10 - 2) / 2 >= v8)
  {
    v8 = 2 * v8 + 1;
    v7 = (v12 + 16 * v8);
    if (v8 + 1 < v10 && std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &>::operator()[abi:de200100]<AAB::CurveUpdate,AAB::CurveUpdate>(v11, v7, (v7 + 1)))
    {
      ++v7;
      ++v8;
    }

    if (!std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &>::operator()[abi:de200100]<AAB::CurveUpdate,AAB::CurveUpdate>(v11, v7, v9))
    {
      v6 = *std::_IterOps<std::_ClassicAlgPolicy>::__iter_move[abi:de200100]<AAB::CurveUpdate *&,0>(&v9);
      do
      {
        v5 = std::_IterOps<std::_ClassicAlgPolicy>::__iter_move[abi:de200100]<AAB::CurveUpdate *&,0>(&v7);
        *v9 = *v5;
        v9 = v7;
        if ((v10 - 2) / 2 < v8)
        {
          break;
        }

        v8 = 2 * v8 + 1;
        v7 = (v12 + 16 * v8);
        if (v8 + 1 < v10 && std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &>::operator()[abi:de200100]<AAB::CurveUpdate,AAB::CurveUpdate>(v11, v7, (v7 + 1)))
        {
          ++v7;
          ++v8;
        }
      }

      while (!std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &>::operator()[abi:de200100]<AAB::CurveUpdate,AAB::CurveUpdate>(v11, v7, &v6));
      result = *&v6;
      *v9 = v6;
    }
  }

  return result;
}

void std::__sort_heap[abi:de200100]<std::_ClassicAlgPolicy,std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &> &,AAB::CurveUpdate *>(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v8 = a1;
  v7 = a2;
  v6 = a3;
  v5 = a2;
  std::__debug_less<std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &> &>::__debug_less[abi:de200100](&v4, a3);
  for (i = (v7 - v8) / 16; i > 1; --i)
  {
    std::__pop_heap[abi:de200100]<std::_ClassicAlgPolicy,std::__debug_less<std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &> &>,AAB::CurveUpdate *>(v8, v7--, &v4, i);
  }

  std::__check_strict_weak_ordering_sorted[abi:de200100]<AAB::CurveUpdate *,std::__debug_less<std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &> &>>(v8, v5, &v4);
}

double std::__sift_down[abi:de200100]<std::_ClassicAlgPolicy,std::__debug_less<std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &> &> &,AAB::CurveUpdate *>(uint64_t a1, uint64_t **a2, uint64_t a3, _OWORD *a4)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = (a4 - a1) / 16;
  if (a3 >= 2 && (v10 - 2) / 2 >= v8)
  {
    v8 = 2 * v8 + 1;
    v7 = (v12 + 16 * v8);
    if (v8 + 1 < v10 && std::__debug_less<std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &> &>::operator()[abi:de200100]<AAB::CurveUpdate,AAB::CurveUpdate>(v11, v7, (v7 + 1)))
    {
      ++v7;
      ++v8;
    }

    if (!std::__debug_less<std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &> &>::operator()[abi:de200100]<AAB::CurveUpdate,AAB::CurveUpdate>(v11, v7, v9))
    {
      v6 = *std::_IterOps<std::_ClassicAlgPolicy>::__iter_move[abi:de200100]<AAB::CurveUpdate *&,0>(&v9);
      do
      {
        v5 = std::_IterOps<std::_ClassicAlgPolicy>::__iter_move[abi:de200100]<AAB::CurveUpdate *&,0>(&v7);
        *v9 = *v5;
        v9 = v7;
        if ((v10 - 2) / 2 < v8)
        {
          break;
        }

        v8 = 2 * v8 + 1;
        v7 = (v12 + 16 * v8);
        if (v8 + 1 < v10 && std::__debug_less<std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &> &>::operator()[abi:de200100]<AAB::CurveUpdate,AAB::CurveUpdate>(v11, v7, (v7 + 1)))
        {
          ++v7;
          ++v8;
        }
      }

      while (!std::__debug_less<std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &> &>::operator()[abi:de200100]<AAB::CurveUpdate,AAB::CurveUpdate>(v11, v7, &v6));
      result = *&v6;
      *v9 = v6;
    }
  }

  return result;
}

BOOL std::__debug_less<std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &> &>::operator()[abi:de200100]<AAB::CurveUpdate,AAB::CurveUpdate>(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v5 = std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &>::operator()[abi:de200100]<AAB::CurveUpdate,AAB::CurveUpdate>(*a1, a2, a3);
  if (v5)
  {
    std::__debug_less<std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &> &>::__do_compare_assert[abi:de200100]<AAB::CurveUpdate,AAB::CurveUpdate>(a1, 0, a3, a2);
  }

  return v5;
}

void std::__debug_less<std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &> &>::__do_compare_assert[abi:de200100]<AAB::CurveUpdate,AAB::CurveUpdate>(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &>::operator()[abi:de200100]<AAB::CurveUpdate,AAB::CurveUpdate>(*a1, a3, a4))
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__algorithm/comp_ref_type.h:47: assertion !__comp_(__l, __r) failed: Comparator does not induce a strict weak ordering\n");
  }
}

void std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &>::__do_compare_assert[abi:de200100]<AAB::CurveUpdate,AAB::CurveUpdate>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0::operator()(*a1, a3, a4))
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__algorithm/comp_ref_type.h:47: assertion !__comp_(__l, __r) failed: Comparator does not induce a strict weak ordering\n");
  }
}

double std::__pop_heap[abi:de200100]<std::_ClassicAlgPolicy,std::__debug_less<std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &> &>,AAB::CurveUpdate *>(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  if (a4 <= 0)
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__algorithm/pop_heap.h:40: assertion __len > 0 failed: The heap given to pop_heap must be non-empty\n");
  }

  std::__debug_less<std::__debug_less<std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &> &>>::__debug_less[abi:de200100](&v7, v9);
  if (v8 > 1)
  {
    v6 = *std::_IterOps<std::_ClassicAlgPolicy>::__iter_move[abi:de200100]<AAB::CurveUpdate *&,0>(&v11);
    v5 = std::__floyd_sift_down[abi:de200100]<std::_ClassicAlgPolicy,std::__debug_less<std::__debug_less<std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &> &>> &,AAB::CurveUpdate *>(v11, &v7, v8);
    if (v5 == --v10)
    {
      result = *&v6;
      *v5 = v6;
    }

    else
    {
      *v5 = *std::_IterOps<std::_ClassicAlgPolicy>::__iter_move[abi:de200100]<AAB::CurveUpdate *&,0>(&v10);
      *v10 = v6;
      return std::__sift_up[abi:de200100]<std::_ClassicAlgPolicy,std::__debug_less<std::__debug_less<std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &> &>> &,AAB::CurveUpdate *>(v11, v5 + 1, &v7, (v5 - v11 + 16) / 16);
    }
  }

  return result;
}

void std::__check_strict_weak_ordering_sorted[abi:de200100]<AAB::CurveUpdate *,std::__debug_less<std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &> &>>(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  std::__debug_less<std::__debug_less<std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &> &>>::__debug_less[abi:de200100](&v13, a3);
  if (!std::is_sorted[abi:de200100]<AAB::CurveUpdate *,std::__debug_less<std::__debug_less<std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &> &>>>(a1, a2, v13))
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__debug_utils/strict_weak_ordering_check.h:36: assertion (std::is_sorted<_RandomAccessIterator, _Comp_ref>(__first, __last, _Comp_ref(__comp))) failed: The range is not sorted after the sort, your comparator is not a valid strict-weak ordering\n");
  }

  if ((v15 - v16) / 16 <= 100)
  {
    v4 = (v15 - v16) / 16;
  }

  else
  {
    v4 = 100;
  }

  for (i = 0; i < v4; i = j)
  {
    for (j = i + 1; ; ++j)
    {
      LOBYTE(v3) = 0;
      if (j < v4)
      {
        v3 = !std::__debug_less<std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &> &>::operator()[abi:de200100]<AAB::CurveUpdate,AAB::CurveUpdate>(v14, v16 + 16 * i, v16 + 16 * j);
      }

      if (!v3)
      {
        break;
      }
    }

    for (k = i; k < j; ++k)
    {
      for (m = i; m <= k; ++m)
      {
        if (std::__debug_less<std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &> &>::operator()[abi:de200100]<AAB::CurveUpdate,AAB::CurveUpdate>(v14, v16 + 16 * m, v16 + 16 * k))
        {
          std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__debug_utils/strict_weak_ordering_check.h:50: assertion !__comp(*(__first + __a), *(__first + __b)) failed: Your comparator is not a valid strict-weak ordering\n");
        }

        if (std::__debug_less<std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &> &>::operator()[abi:de200100]<AAB::CurveUpdate,AAB::CurveUpdate>(v14, v16 + 16 * k, v16 + 16 * m))
        {
          std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__debug_utils/strict_weak_ordering_check.h:52: assertion !__comp(*(__first + __b), *(__first + __a)) failed: Your comparator is not a valid strict-weak ordering\n");
        }
      }
    }

    for (n = i; n < j; ++n)
    {
      for (ii = j; ii < v4; ++ii)
      {
        if (!std::__debug_less<std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &> &>::operator()[abi:de200100]<AAB::CurveUpdate,AAB::CurveUpdate>(v14, v16 + 16 * n, v16 + 16 * ii))
        {
          std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__debug_utils/strict_weak_ordering_check.h:59: assertion __comp(*(__first + __a), *(__first + __b)) failed: Your comparator is not a valid strict-weak ordering\n");
        }

        if (std::__debug_less<std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &> &>::operator()[abi:de200100]<AAB::CurveUpdate,AAB::CurveUpdate>(v14, v16 + 16 * ii, v16 + 16 * n))
        {
          std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__debug_utils/strict_weak_ordering_check.h:61: assertion !__comp(*(__first + __b), *(__first + __a)) failed: Your comparator is not a valid strict-weak ordering\n");
        }
      }
    }
  }
}

_OWORD *std::__floyd_sift_down[abi:de200100]<std::_ClassicAlgPolicy,std::__debug_less<std::__debug_less<std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &> &>> &,AAB::CurveUpdate *>(uint64_t a1, uint64_t ***a2, uint64_t a3)
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  if (a3 < 2)
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__algorithm/sift_down.h:88: assertion __len >= 2 failed: shouldn't be called unless __len >= 2\n");
  }

  v7 = v10;
  v6 = v10;
  v5 = 0;
  do
  {
    v6 += v5 + 1;
    v5 = 2 * v5 + 1;
    if (v5 + 1 < v8 && std::__debug_less<std::__debug_less<std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &> &>>::operator()[abi:de200100]<AAB::CurveUpdate,AAB::CurveUpdate>(v9, v6, (v6 + 1)))
    {
      ++v6;
      ++v5;
    }

    v3 = std::_IterOps<std::_ClassicAlgPolicy>::__iter_move[abi:de200100]<AAB::CurveUpdate *&,0>(&v6);
    *v7 = *v3;
    v7 = v6;
  }

  while (v5 <= (v8 - 2) / 2);
  return v7;
}

double std::__sift_up[abi:de200100]<std::_ClassicAlgPolicy,std::__debug_less<std::__debug_less<std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &> &>> &,AAB::CurveUpdate *>(uint64_t a1, _OWORD *a2, uint64_t ***a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  if (a4 > 1)
  {
    v8 = (v8 - 2) / 2;
    v7 = (v11 + 16 * v8);
    if (std::__debug_less<std::__debug_less<std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &> &>>::operator()[abi:de200100]<AAB::CurveUpdate,AAB::CurveUpdate>(v9, v7, --v10))
    {
      *v6 = *std::_IterOps<std::_ClassicAlgPolicy>::__iter_move[abi:de200100]<AAB::CurveUpdate *&,0>(&v10);
      do
      {
        v5 = std::_IterOps<std::_ClassicAlgPolicy>::__iter_move[abi:de200100]<AAB::CurveUpdate *&,0>(&v7);
        *v10 = *v5;
        v10 = v7;
        if (!v8)
        {
          break;
        }

        v8 = (v8 - 1) / 2;
        v7 = (v11 + 16 * v8);
      }

      while (std::__debug_less<std::__debug_less<std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &> &>>::operator()[abi:de200100]<AAB::CurveUpdate,AAB::CurveUpdate>(v9, v7, v6));
      result = v6[0];
      *v10 = *v6;
    }
  }

  return result;
}

BOOL std::__debug_less<std::__debug_less<std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &> &>>::operator()[abi:de200100]<AAB::CurveUpdate,AAB::CurveUpdate>(uint64_t ***a1, uint64_t a2, uint64_t a3)
{
  v5 = std::__debug_less<std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &> &>::operator()[abi:de200100]<AAB::CurveUpdate,AAB::CurveUpdate>(*a1, a2, a3);
  if (v5)
  {
    std::__debug_less<std::__debug_less<std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &> &>>::__do_compare_assert[abi:de200100]<AAB::CurveUpdate,AAB::CurveUpdate>(a1, 0, a3, a2);
  }

  return v5;
}

void std::__debug_less<std::__debug_less<std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &> &>>::__do_compare_assert[abi:de200100]<AAB::CurveUpdate,AAB::CurveUpdate>(uint64_t ***a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (std::__debug_less<std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &> &>::operator()[abi:de200100]<AAB::CurveUpdate,AAB::CurveUpdate>(*a1, a3, a4))
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__algorithm/comp_ref_type.h:47: assertion !__comp_(__l, __r) failed: Comparator does not induce a strict weak ordering\n");
  }
}

BOOL std::is_sorted[abi:de200100]<AAB::CurveUpdate *,std::__debug_less<std::__debug_less<std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &> &>>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = a3;
  v9 = a1;
  v8 = a2;
  std::__debug_less<std::__debug_less<std::__debug_less<std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &> &>>>::__debug_less[abi:de200100](&v7, &v10);
  v3 = std::__is_sorted_until[abi:de200100]<std::__debug_less<std::__debug_less<std::__debug_less<std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &> &>>>,AAB::CurveUpdate *>(a1, a2, v7);
  return v3 == v8;
}

uint64_t std::__is_sorted_until[abi:de200100]<std::__debug_less<std::__debug_less<std::__debug_less<std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &> &>>>,AAB::CurveUpdate *>(uint64_t a1, uint64_t a2, uint64_t ***a3)
{
  v7 = a3;
  v6 = a1;
  if (a1 != a2)
  {
    for (i = a1; ; v6 = i)
    {
      i += 16;
      if (i == a2)
      {
        break;
      }

      if (std::__debug_less<std::__debug_less<std::__debug_less<std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &> &>>>::operator()[abi:de200100]<AAB::CurveUpdate,AAB::CurveUpdate>(&v7, i, v6))
      {
        return i;
      }
    }
  }

  return a2;
}

BOOL std::__debug_less<std::__debug_less<std::__debug_less<std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &> &>>>::operator()[abi:de200100]<AAB::CurveUpdate,AAB::CurveUpdate>(uint64_t ****a1, uint64_t a2, uint64_t a3)
{
  v5 = std::__debug_less<std::__debug_less<std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &> &>>::operator()[abi:de200100]<AAB::CurveUpdate,AAB::CurveUpdate>(*a1, a2, a3);
  if (v5)
  {
    std::__debug_less<std::__debug_less<std::__debug_less<std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &> &>>>::__do_compare_assert[abi:de200100]<AAB::CurveUpdate,AAB::CurveUpdate>(a1, 0, a3, a2);
  }

  return v5;
}

void std::__debug_less<std::__debug_less<std::__debug_less<std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &> &>>>::__do_compare_assert[abi:de200100]<AAB::CurveUpdate,AAB::CurveUpdate>(uint64_t ****a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (std::__debug_less<std::__debug_less<std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &> &>>::operator()[abi:de200100]<AAB::CurveUpdate,AAB::CurveUpdate>(*a1, a3, a4))
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__algorithm/comp_ref_type.h:47: assertion !__comp_(__l, __r) failed: Comparator does not induce a strict weak ordering\n");
  }
}

BOOL std::__populate_left_bitset[abi:de200100]<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &,AAB::CurveUpdate *,AAB::CurveUpdate>(_BOOL8 result, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = result;
  for (i = 0; i < 64; ++i)
  {
    result = CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0::operator()(a2, v5, a3);
    *a4 |= !result << i;
    v5 += 16;
  }

  return result;
}

BOOL std::__populate_right_bitset[abi:de200100]<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &,AAB::CurveUpdate *,AAB::CurveUpdate>(_BOOL8 result, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = result;
  for (i = 0; i < 64; ++i)
  {
    result = CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0::operator()(a2, v5, a3);
    *a4 |= result << i;
    v5 -= 16;
  }

  return result;
}

void std::__swap_bitmap_pos[abi:de200100]<std::_ClassicAlgPolicy,AAB::CurveUpdate *>(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4)
{
  v14 = a1;
  v13 = a2;
  v12 = a3;
  v11 = a4;
  while (1)
  {
    v6 = 0;
    if (*v12)
    {
      v6 = *v11 != 0;
    }

    if (!v6)
    {
      break;
    }

    v10 = std::__libcpp_ctz[abi:de200100](*v12);
    v4 = std::__libcpp_blsr[abi:de200100](*v12);
    *v12 = v4;
    v9 = std::__libcpp_ctz[abi:de200100](*v11);
    v5 = std::__libcpp_blsr[abi:de200100](*v11);
    *v11 = v5;
    v8 = (v14 + 16 * v10);
    v7 = (v13 - 16 * v9);
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:de200100]<AAB::CurveUpdate *,AAB::CurveUpdate *>(&v8, &v7);
  }
}

void std::__bitset_partition_partial_blocks[abi:de200100]<std::_ClassicAlgPolicy,CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &,AAB::CurveUpdate *,AAB::CurveUpdate>(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t *a5, unint64_t *a6)
{
  v14 = (*a2 - *a1) / 16 + 1;
  if (*a5 || *a6)
  {
    if (*a5)
    {
      v13 = 64;
      v12 = (*a2 - *a1) / 16 - 63;
    }

    else
    {
      v13 = (*a2 - *a1) / 16 - 63;
      v12 = 64;
    }
  }

  else
  {
    v13 = v14 / 2;
    v12 = v14 - v14 / 2;
  }

  if (!*a5)
  {
    v11 = *a1;
    for (i = 0; i < v13; ++i)
    {
      *a5 |= !CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0::operator()(a3, v11, a4) << i;
      v11 += 16;
    }
  }

  if (!*a6)
  {
    v9 = *a2;
    for (j = 0; j < v12; ++j)
    {
      *a6 |= CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0::operator()(a3, v9, a4) << j;
      v9 -= 16;
    }
  }

  std::__swap_bitmap_pos[abi:de200100]<std::_ClassicAlgPolicy,AAB::CurveUpdate *>(*a1, *a2, a5, a6);
  if (*a5)
  {
    v7 = 0;
  }

  else
  {
    v7 = v13;
  }

  *a1 += 16 * v7;
  if (*a6)
  {
    v6 = 0;
  }

  else
  {
    v6 = v12;
  }

  *a2 -= 16 * v6;
}

void std::__swap_bitmap_pos_within[abi:de200100]<std::_ClassicAlgPolicy,AAB::CurveUpdate *>(__n128 **a1, __n128 **a2, unint64_t *a3, unint64_t *a4)
{
  v13 = a1;
  v12 = a2;
  v11 = a3;
  v10 = a4;
  if (*a3)
  {
    while (*v11)
    {
      v4 = std::__libcpp_clz[abi:de200100](*v11);
      v9 = 63 - v4;
      *v11 &= (1 << (63 - v4)) - 1;
      v8 = &(*v13)[v9];
      if (v8 != *v12)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:de200100]<AAB::CurveUpdate *&,AAB::CurveUpdate *&>(&v8, v12);
      }

      --*v12;
    }

    *v13 = *v12 + 1;
  }

  else if (*v10)
  {
    while (*v10)
    {
      v5 = std::__libcpp_clz[abi:de200100](*v10);
      v7 = 63 - v5;
      *v10 &= (1 << (63 - v5)) - 1;
      v6 = &(*v12)[-v7];
      if (v6 != *v13)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:de200100]<AAB::CurveUpdate *&,AAB::CurveUpdate *&>(&v6, v13);
      }

      ++*v13;
    }
  }
}

uint64_t std::pair<AAB::CurveUpdate *,BOOL>::pair[abi:de200100]<AAB::CurveUpdate *&,BOOL &,0>(uint64_t result, void *a2, _BYTE *a3)
{
  *result = *a2;
  *(result + 8) = *a3 & 1;
  return result;
}

void std::pointer_traits<std::__wrap_iter<AAB::CurveUpdate *>>::to_address[abi:de200100](uint64_t a1)
{
  v1 = a1;
  std::__wrap_iter<AAB::CurveUpdate *>::base[abi:de200100](&v1);
  std::__to_address[abi:de200100]<AAB::CurveUpdate>();
}

BOOL std::is_sorted[abi:de200100]<AAB::CurveUpdate *,std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = a3;
  v9 = a1;
  v8 = a2;
  std::__debug_less<std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0>>::__debug_less[abi:de200100](&v7, &v10);
  v3 = std::__is_sorted_until[abi:de200100]<std::__debug_less<std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0>>,AAB::CurveUpdate *>(a1, a2, v7);
  return v3 == v8;
}

uint64_t std::__is_sorted_until[abi:de200100]<std::__debug_less<std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0>>,AAB::CurveUpdate *>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = a3;
  v6 = a1;
  if (a1 != a2)
  {
    for (i = a1; ; v6 = i)
    {
      i += 16;
      if (i == a2)
      {
        break;
      }

      if (std::__debug_less<std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0>>::operator()[abi:de200100]<AAB::CurveUpdate,AAB::CurveUpdate>(&v7, i, v6))
      {
        return i;
      }
    }
  }

  return a2;
}

BOOL std::__debug_less<std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0>>::operator()[abi:de200100]<AAB::CurveUpdate,AAB::CurveUpdate>(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v5 = std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0>::operator()[abi:de200100]<AAB::CurveUpdate,AAB::CurveUpdate>(*a1, a2, a3);
  if (v5)
  {
    std::__debug_less<std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0>>::__do_compare_assert[abi:de200100]<AAB::CurveUpdate,AAB::CurveUpdate>(a1, 0, a3, a2);
  }

  return v5;
}

BOOL std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0>::operator()[abi:de200100]<AAB::CurveUpdate,AAB::CurveUpdate>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0::operator()(*a1, a2, a3);
  if (v5)
  {
    std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0>::__do_compare_assert[abi:de200100]<AAB::CurveUpdate,AAB::CurveUpdate>(a1, 0, a3, a2);
  }

  return v5;
}

void std::__debug_less<std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0>>::__do_compare_assert[abi:de200100]<AAB::CurveUpdate,AAB::CurveUpdate>(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0>::operator()[abi:de200100]<AAB::CurveUpdate,AAB::CurveUpdate>(*a1, a3, a4))
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__algorithm/comp_ref_type.h:47: assertion !__comp_(__l, __r) failed: Comparator does not induce a strict weak ordering\n");
  }
}

void std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0>::__do_compare_assert[abi:de200100]<AAB::CurveUpdate,AAB::CurveUpdate>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0::operator()(*a1, a3, a4))
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__algorithm/comp_ref_type.h:47: assertion !__comp_(__l, __r) failed: Comparator does not induce a strict weak ordering\n");
  }
}

uint64_t std::vector<AAB::CurveUpdate>::__insert_with_size[abi:de200100]<std::__wrap_iter<AAB::CurveUpdate*>,std::__wrap_iter<AAB::CurveUpdate*>>(uint64_t *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v20 = a2;
  v19 = a3;
  v18 = a4;
  v17 = a1;
  v16 = a5;
  v9 = *a1;
  v14 = std::vector<AAB::CurveUpdate>::begin[abi:de200100](a1);
  v15 = v9 + 16 * std::operator-[abi:de200100]<AAB::CurveUpdate const*,AAB::CurveUpdate*>(&v20, &v14);
  if (v16 > 0)
  {
    if (v16 <= (a1[2] - a1[1]) / 16)
    {
      v13 = a1[1];
      v12 = (a1[1] - v15) / 16;
      if (v16 <= v12)
      {
        std::vector<AAB::CurveUpdate>::__move_range(a1, v15, v13, v15 + 16 * v16);
        v10[5] = v19;
        std::copy_n[abi:de200100]<std::__wrap_iter<AAB::CurveUpdate *>,long,AAB::CurveUpdate *,0>(v19, v16, v15);
      }

      else
      {
        v10[10] = v19;
        v11 = std::next[abi:de200100]<std::__wrap_iter<AAB::CurveUpdate *>,0>(v19);
        v10[9] = v11;
        v10[8] = v18;
        std::vector<AAB::CurveUpdate>::__construct_at_end<std::__wrap_iter<AAB::CurveUpdate*>,std::__wrap_iter<AAB::CurveUpdate*>>(a1, v11, v18, v16 - v12);
        if (v12 > 0)
        {
          std::vector<AAB::CurveUpdate>::__move_range(a1, v15, v13, v15 + 16 * v16);
          v10[7] = v19;
          v10[6] = v11;
          std::copy[abi:de200100]<std::__wrap_iter<AAB::CurveUpdate *>,AAB::CurveUpdate *>(v19, v11, v15);
        }
      }
    }

    else
    {
      v5 = std::vector<AAB::CurveUpdate>::size[abi:de200100](a1);
      v6 = std::vector<AAB::CurveUpdate>::__recommend[abi:de200100](a1, v5 + v16);
      std::__split_buffer<AAB::CurveUpdate>::__split_buffer(v10, v6, (v15 - *a1) / 16, a1);
      std::__split_buffer<AAB::CurveUpdate>::__construct_at_end_with_size<std::__wrap_iter<AAB::CurveUpdate*>>(v10, v19, v16);
      v15 = std::vector<AAB::CurveUpdate>::__swap_out_circular_buffer(a1, v10, v15);
      std::__split_buffer<AAB::CurveUpdate>::~__split_buffer(v10);
    }
  }

  return std::vector<AAB::CurveUpdate>::__make_iter[abi:de200100](a1, v15);
}

uint64_t std::next[abi:de200100]<std::__wrap_iter<AAB::CurveUpdate *>,0>(uint64_t a1)
{
  v2 = a1;
  std::advance[abi:de200100]<std::__wrap_iter<AAB::CurveUpdate *>,long,long,0>(&v2);
  return v2;
}

void *std::vector<AAB::CurveUpdate>::__construct_at_end<std::__wrap_iter<AAB::CurveUpdate*>,std::__wrap_iter<AAB::CurveUpdate*>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a2;
  v10 = a3;
  v9 = a1;
  v8 = a4;
  std::vector<AAB::CurveUpdate>::_ConstructTransaction::_ConstructTransaction[abi:de200100](&v6, a1, a4);
  v7 = std::__uninitialized_allocator_copy[abi:de200100]<std::allocator<AAB::CurveUpdate>,std::__wrap_iter<AAB::CurveUpdate*>,std::__wrap_iter<AAB::CurveUpdate*>,AAB::CurveUpdate*>(a1, v11, v10, v7);
  return std::vector<AAB::CurveUpdate>::_ConstructTransaction::~_ConstructTransaction[abi:de200100](&v6);
}

uint64_t std::vector<AAB::CurveUpdate>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  v12 = *(a1 + 8);
  v11 = (v12 - a4) / 16;
  v10 = (a2 + 16 * v11);
  std::vector<AAB::CurveUpdate>::_ConstructTransaction::_ConstructTransaction[abi:de200100](&v8, a1, (a3 - v10) / 16);
  v7 = v9;
  while (v10 < v14)
  {
    std::__to_address[abi:de200100]<AAB::CurveUpdate>();
    std::allocator_traits<std::allocator<AAB::CurveUpdate>>::construct[abi:de200100]<AAB::CurveUpdate,AAB::CurveUpdate,void,0>(a1, v4, v10++);
    v7 += 16;
    v9 = v7;
  }

  std::vector<AAB::CurveUpdate>::_ConstructTransaction::~_ConstructTransaction[abi:de200100](&v8);
  return std::move_backward[abi:de200100]<AAB::CurveUpdate *,AAB::CurveUpdate *>(v15, v15 + 16 * v11, v12);
}

uint64_t std::copy_n[abi:de200100]<std::__wrap_iter<AAB::CurveUpdate *>,long,AAB::CurveUpdate *,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a1;
  v3 = std::__wrap_iter<AAB::CurveUpdate *>::operator+[abi:de200100](&v7, a2);
  return std::copy[abi:de200100]<std::__wrap_iter<AAB::CurveUpdate *>,AAB::CurveUpdate *>(a1, v3, a3);
}

uint64_t std::__split_buffer<AAB::CurveUpdate>::__construct_at_end_with_size<std::__wrap_iter<AAB::CurveUpdate*>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = a2;
  v9[4] = a1;
  v9[3] = a3;
  std::__split_buffer<AAB::CurveUpdate>::_ConstructTransaction::_ConstructTransaction[abi:de200100](v9, (a1 + 16), a3);
  while (v9[0] != v9[1])
  {
    v7 = *(a1 + 32);
    std::__to_address[abi:de200100]<AAB::CurveUpdate>();
    v6 = v3;
    v4 = std::__wrap_iter<AAB::CurveUpdate *>::operator*[abi:de200100](&v10);
    std::allocator_traits<std::allocator<AAB::CurveUpdate>>::construct[abi:de200100]<AAB::CurveUpdate,AAB::CurveUpdate&,void,0>(v7, v6, v4);
    v9[0] += 16;
    std::__wrap_iter<AAB::CurveUpdate *>::operator++[abi:de200100](&v10);
  }

  return std::__split_buffer<AAB::CurveUpdate>::_ConstructTransaction::~_ConstructTransaction[abi:de200100](v9);
}

uint64_t std::vector<AAB::CurveUpdate>::__swap_out_circular_buffer(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  std::vector<AAB::CurveUpdate>::__annotate_delete[abi:de200100]();
  v17 = a2[1];
  std::__to_address[abi:de200100]<AAB::CurveUpdate>();
  v11 = v3;
  v4 = a1[1];
  std::__to_address[abi:de200100]<AAB::CurveUpdate>();
  v12 = v5;
  v6 = a2[2];
  std::__to_address[abi:de200100]<AAB::CurveUpdate>();
  std::__uninitialized_allocator_relocate[abi:de200100]<std::allocator<AAB::CurveUpdate>,AAB::CurveUpdate*>(a1, v11, v12);
  a2[2] += 16 * ((a1[1] - a3) / 16);
  a1[1] = a3;
  v16 = a2[1] + 16 * ((a3 - *a1) / -16);
  v7 = *a1;
  std::__to_address[abi:de200100]<AAB::CurveUpdate>();
  v13 = v8;
  std::__to_address[abi:de200100]<AAB::CurveUpdate>();
  v14 = v9;
  std::__to_address[abi:de200100]<AAB::CurveUpdate>();
  std::__uninitialized_allocator_relocate[abi:de200100]<std::allocator<AAB::CurveUpdate>,AAB::CurveUpdate*>(a1, v13, v14);
  a2[1] = v16;
  a1[1] = *a1;
  std::swap[abi:de200100]<AAB::CurveUpdate *>(a1, a2 + 1);
  std::swap[abi:de200100]<AAB::CurveUpdate *>(a1 + 1, a2 + 2);
  std::swap[abi:de200100]<AAB::CurveUpdate *>(a1 + 2, a2 + 3);
  *a2 = a2[1];
  std::vector<AAB::CurveUpdate>::size[abi:de200100](a1);
  std::vector<AAB::CurveUpdate>::__annotate_new[abi:de200100]();
  return v17;
}

void std::__convert_to_integral[abi:de200100]()
{
  ;
}

{
  ;
}

uint64_t std::__uninitialized_allocator_copy[abi:de200100]<std::allocator<AAB::CurveUpdate>,std::__wrap_iter<AAB::CurveUpdate*>,std::__wrap_iter<AAB::CurveUpdate*>,AAB::CurveUpdate*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = std::__unwrap_range[abi:de200100]<std::__wrap_iter<AAB::CurveUpdate *>,std::__wrap_iter<AAB::CurveUpdate *>>(a2, a3);
  v8 = v4;
  std::__unwrap_iter[abi:de200100]<AAB::CurveUpdate *,std::__unwrap_iter_impl<AAB::CurveUpdate *,true>,0>();
  v6 = std::__uninitialized_allocator_copy_impl[abi:de200100]<std::allocator<AAB::CurveUpdate>,AAB::CurveUpdate,AAB::CurveUpdate,0>(a1, v9, v8, v5);
  return std::__rewrap_iter[abi:de200100]<AAB::CurveUpdate *,AAB::CurveUpdate *,std::__unwrap_iter_impl<AAB::CurveUpdate *,true>>(a4, v6);
}

uint64_t std::__unwrap_range_impl<std::__wrap_iter<AAB::CurveUpdate *>,std::__wrap_iter<AAB::CurveUpdate *>>::__unwrap[abi:de200100](uint64_t a1, uint64_t a2)
{
  v8 = a1;
  v7 = a2;
  v5[1] = a1;
  std::__unwrap_iter[abi:de200100]<std::__wrap_iter<AAB::CurveUpdate *>,std::__unwrap_iter_impl<std::__wrap_iter<AAB::CurveUpdate *>,true>,0>(a1);
  v6 = v2;
  std::__unwrap_iter[abi:de200100]<std::__wrap_iter<AAB::CurveUpdate *>,std::__unwrap_iter_impl<std::__wrap_iter<AAB::CurveUpdate *>,true>,0>(v7);
  v5[0] = v3;
  std::pair<AAB::CurveUpdate *,AAB::CurveUpdate *>::pair[abi:de200100]<AAB::CurveUpdate *,AAB::CurveUpdate *,0>(&v9, &v6, v5);
  return v9;
}

void *std::pair<AAB::CurveUpdate *,AAB::CurveUpdate *>::pair[abi:de200100]<AAB::CurveUpdate *,AAB::CurveUpdate *,0>(void *result, void *a2, void *a3)
{
  *result = *a2;
  result[1] = *a3;
  return result;
}

uint64_t std::__copy_move_unwrap_iters[abi:de200100]<std::__copy_impl,AAB::CurveUpdate *,AAB::CurveUpdate *,AAB::CurveUpdate *,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v13 = std::__unwrap_range[abi:de200100]<AAB::CurveUpdate *,AAB::CurveUpdate *>(a1, a2);
  v14 = v3;
  v7 = v3;
  std::__unwrap_iter[abi:de200100]<AAB::CurveUpdate *,std::__unwrap_iter_impl<AAB::CurveUpdate *,true>,0>();
  v11 = std::__copy_impl::operator()[abi:de200100]<AAB::CurveUpdate,AAB::CurveUpdate,0>(&v10, v13, v7, v4);
  v12 = v5;
  v9 = std::__rewrap_range[abi:de200100]<AAB::CurveUpdate *,AAB::CurveUpdate *,AAB::CurveUpdate *>(v17, v11);
  v8 = std::__rewrap_iter[abi:de200100]<AAB::CurveUpdate *,AAB::CurveUpdate *,std::__unwrap_iter_impl<AAB::CurveUpdate *,true>>(v15, v12);
  return std::make_pair[abi:de200100]<AAB::CurveUpdate *,AAB::CurveUpdate *>(&v9, &v8);
}

uint64_t std::__unwrap_range_impl<AAB::CurveUpdate *,AAB::CurveUpdate *>::__unwrap[abi:de200100](uint64_t a1, uint64_t a2)
{
  v6[2] = a1;
  v6[1] = a2;
  std::__unwrap_iter[abi:de200100]<AAB::CurveUpdate *,std::__unwrap_iter_impl<AAB::CurveUpdate *,true>,0>();
  v6[0] = v2;
  std::__unwrap_iter[abi:de200100]<AAB::CurveUpdate *,std::__unwrap_iter_impl<AAB::CurveUpdate *,true>,0>();
  v5 = v3;
  std::pair<AAB::CurveUpdate *,AAB::CurveUpdate *>::pair[abi:de200100]<AAB::CurveUpdate *,AAB::CurveUpdate *,0>(&v7, v6, &v5);
  return v7;
}

uint64_t std::__copy_trivial_impl[abi:de200100]<AAB::CurveUpdate,AAB::CurveUpdate>(const void *a1, uint64_t a2, char *a3)
{
  v7[1] = a1;
  v7[0] = a2;
  v6 = a3;
  v5 = (a2 - a1) / 16;
  std::__constexpr_memmove[abi:de200100]<AAB::CurveUpdate,AAB::CurveUpdate,0>(a3, a1, v5);
  v4 = &v6[16 * v5];
  return std::make_pair[abi:de200100]<AAB::CurveUpdate *&,AAB::CurveUpdate *>(v7, &v4);
}

void *std::__constexpr_memmove[abi:de200100]<AAB::CurveUpdate,AAB::CurveUpdate,0>(void *a1, const void *a2, uint64_t a3)
{
  if (a3)
  {
    memmove(a1, a2, 16 * (a3 - 1) + 16);
  }

  return a1;
}

void *std::pair<AAB::CurveUpdate *,AAB::CurveUpdate *>::pair[abi:de200100]<AAB::CurveUpdate *&,AAB::CurveUpdate *,0>(void *result, void *a2, void *a3)
{
  *result = *a2;
  result[1] = *a3;
  return result;
}

uint64_t std::__copy_move_unwrap_iters[abi:de200100]<std::__move_backward_impl<std::_ClassicAlgPolicy>,AAB::CurveUpdate *,AAB::CurveUpdate *,AAB::CurveUpdate *,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v13 = std::__unwrap_range[abi:de200100]<AAB::CurveUpdate *,AAB::CurveUpdate *>(a1, a2);
  v14 = v3;
  v7 = v3;
  std::__unwrap_iter[abi:de200100]<AAB::CurveUpdate *,std::__unwrap_iter_impl<AAB::CurveUpdate *,true>,0>();
  v11 = std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:de200100]<AAB::CurveUpdate,AAB::CurveUpdate,0>(&v10, v13, v7, v4);
  v12 = v5;
  v9 = std::__rewrap_range[abi:de200100]<AAB::CurveUpdate *,AAB::CurveUpdate *,AAB::CurveUpdate *>(v17, v11);
  v8 = std::__rewrap_iter[abi:de200100]<AAB::CurveUpdate *,AAB::CurveUpdate *,std::__unwrap_iter_impl<AAB::CurveUpdate *,true>>(v15, v12);
  return std::make_pair[abi:de200100]<AAB::CurveUpdate *,AAB::CurveUpdate *>(&v9, &v8);
}

uint64_t std::__copy_backward_trivial_impl[abi:de200100]<AAB::CurveUpdate,AAB::CurveUpdate>(const void *a1, uint64_t a2, uint64_t a3)
{
  v6[1] = a1;
  v6[0] = a2;
  v4 = (a2 - a1) / 16;
  v5 = (a3 - 16 * v4);
  std::__constexpr_memmove[abi:de200100]<AAB::CurveUpdate,AAB::CurveUpdate,0>(v5, a1, v4);
  return std::make_pair[abi:de200100]<AAB::CurveUpdate *&,AAB::CurveUpdate *&>(v6, &v5);
}

void *std::pair<AAB::CurveUpdate *,AAB::CurveUpdate *>::pair[abi:de200100]<AAB::CurveUpdate *&,AAB::CurveUpdate *&,0>(void *result, void *a2, void *a3)
{
  *result = *a2;
  result[1] = *a3;
  return result;
}

uint64_t std::__copy_move_unwrap_iters[abi:de200100]<std::__copy_impl,std::__wrap_iter<AAB::CurveUpdate *>,std::__wrap_iter<AAB::CurveUpdate *>,AAB::CurveUpdate *,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a1;
  v18 = a2;
  v17 = a3;
  v14 = a1;
  v13 = a2;
  v15 = std::__unwrap_range[abi:de200100]<std::__wrap_iter<AAB::CurveUpdate *>,std::__wrap_iter<AAB::CurveUpdate *>>(a1, a2);
  v16 = v3;
  v7 = v3;
  std::__unwrap_iter[abi:de200100]<AAB::CurveUpdate *,std::__unwrap_iter_impl<AAB::CurveUpdate *,true>,0>();
  v11 = std::__copy_impl::operator()[abi:de200100]<AAB::CurveUpdate,AAB::CurveUpdate,0>(&v10, v15, v7, v4);
  v12 = v5;
  v8[1] = v19;
  v9 = std::__rewrap_range[abi:de200100]<std::__wrap_iter<AAB::CurveUpdate *>,std::__wrap_iter<AAB::CurveUpdate *>,AAB::CurveUpdate *>(v19, v11);
  v8[0] = std::__rewrap_iter[abi:de200100]<AAB::CurveUpdate *,AAB::CurveUpdate *,std::__unwrap_iter_impl<AAB::CurveUpdate *,true>>(v17, v12);
  return std::make_pair[abi:de200100]<std::__wrap_iter<AAB::CurveUpdate *>,AAB::CurveUpdate *>(&v9, v8);
}

void *std::pair<std::__wrap_iter<AAB::CurveUpdate *>,AAB::CurveUpdate *>::pair[abi:de200100]<std::__wrap_iter<AAB::CurveUpdate *>,AAB::CurveUpdate *,0>(void *result, void *a2, void *a3)
{
  *result = *a2;
  result[1] = *a3;
  return result;
}

uint64_t std::__unwrap_iter_impl<std::__wrap_iter<AAB::CurveUpdate *>,true>::__rewrap[abi:de200100](uint64_t a1, uint64_t a2)
{
  v5 = a1;
  std::__to_address[abi:de200100]<std::__wrap_iter<AAB::CurveUpdate *>,0>(&v5);
  return std::__wrap_iter<AAB::CurveUpdate *>::operator+[abi:de200100](&v5, (a2 - v2) / 16);
}

uint64_t std::__wrap_iter<AAB::CurveUpdate *>::operator+[abi:de200100](uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  std::__wrap_iter<AAB::CurveUpdate *>::operator+=[abi:de200100](&v3, a2);
  return v3;
}

void *std::__split_buffer<AAB::CurveUpdate>::_ConstructTransaction::_ConstructTransaction[abi:de200100](void *result, void *a2, uint64_t a3)
{
  *result = *a2;
  result[1] = *a2 + 16 * a3;
  result[2] = a2;
  return result;
}

__n128 std::construct_at[abi:de200100]<AAB::CurveUpdate,AAB::CurveUpdate&,AAB::CurveUpdate*>(__n128 *a1, __n128 *a2)
{
  if (!a1)
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__memory/construct_at.h:39: assertion __location != nullptr failed: null pointer given to construct_at\n");
  }

  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t std::__distance[abi:de200100]<std::__wrap_iter<AAB::CurveUpdate *>>(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v3 = a2;
  return std::operator-[abi:de200100]<AAB::CurveUpdate *,AAB::CurveUpdate *>(&v3, &v4);
}

void std::vector<AAB::CurveUpdate>::__destroy_vector::operator()[abi:de200100](uint64_t **a1)
{
  if (**a1)
  {
    std::vector<AAB::CurveUpdate>::clear[abi:de200100](*a1);
    v1 = *a1;
    std::vector<AAB::CurveUpdate>::__annotate_delete[abi:de200100]();
    v4 = *a1;
    v3 = **a1;
    v2 = std::vector<AAB::CurveUpdate>::capacity[abi:de200100](*a1);
    std::allocator_traits<std::allocator<AAB::CurveUpdate>>::deallocate[abi:de200100](v4, v3, v2);
  }
}

void std::vector<AAB::CurveUpdate>::clear[abi:de200100](uint64_t *a1)
{
  std::vector<AAB::CurveUpdate>::size[abi:de200100](a1);
  std::vector<AAB::CurveUpdate>::__base_destruct_at_end[abi:de200100](a1, *a1);
  std::vector<AAB::CurveUpdate>::__annotate_shrink[abi:de200100]();
}

void std::vector<AAB::CurveUpdate>::__base_destruct_at_end[abi:de200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); a2 != i; i -= 16)
  {
    std::__to_address[abi:de200100]<AAB::CurveUpdate>();
    std::allocator_traits<std::allocator<AAB::CurveUpdate>>::destroy[abi:de200100]<AAB::CurveUpdate,void,0>(a1, v2);
  }

  *(a1 + 8) = a2;
}

uint64_t std::allocator<CBBOLTS::Bin>::allocator[abi:de200100](uint64_t a1)
{
  std::allocator<CBBOLTS::Bin>::allocator[abi:de200100](a1);
  return a1;
}

{
  std::__non_trivial_if<true>::__non_trivial_if[abi:de200100]();
  return a1;
}

uint64_t std::vector<CBBOLTS::Bin>::max_size[abi:de200100](uint64_t a1)
{
  v3[1] = a1;
  v3[0] = std::allocator_traits<std::allocator<CBBOLTS::Bin>>::max_size[abi:de200100]<std::allocator<CBBOLTS::Bin>,void,0>();
  v2 = std::numeric_limits<long>::max[abi:de200100]();
  return *std::min[abi:de200100]<unsigned long>(v3, &v2);
}

void **std::__split_buffer<CBBOLTS::Bin>::__split_buffer(void **a1, unint64_t a2, uint64_t a3, void *a4)
{
  std::__split_buffer<CBBOLTS::Bin>::__split_buffer(a1, a2, a3, a4);
  return a1;
}

{
  v9 = a2;
  a1[3] = 0;
  a1[4] = a4;
  if (a2)
  {
    *a1 = std::__allocate_at_least[abi:de200100]<std::allocator<CBBOLTS::Bin>>(a1[4], a2);
    v9 = v4;
  }

  else
  {
    *a1 = 0;
  }

  v5 = *a1 + 48 * a3;
  a1[2] = v5;
  a1[1] = v5;
  a1[3] = *a1 + 48 * v9;
  return a1;
}

void std::vector<CBBOLTS::Bin>::__swap_out_circular_buffer(uint64_t *a1, uint64_t *a2)
{
  std::vector<CBBOLTS::Bin>::__annotate_delete[abi:de200100]();
  v10 = a2[1] - 48 * ((a1[1] - *a1) / 48);
  v2 = *a1;
  std::__to_address[abi:de200100]<CBBOLTS::Bin>();
  v7 = v3;
  v4 = a1[1];
  std::__to_address[abi:de200100]<CBBOLTS::Bin>();
  v8 = v5;
  std::__to_address[abi:de200100]<CBBOLTS::Bin>();
  std::__uninitialized_allocator_relocate[abi:de200100]<std::allocator<CBBOLTS::Bin>,CBBOLTS::Bin*>(a1, v7, v8, v6);
  a2[1] = v10;
  a1[1] = *a1;
  std::swap[abi:de200100]<CBBOLTS::Bin *>(a1, a2 + 1);
  std::swap[abi:de200100]<CBBOLTS::Bin *>(a1 + 1, a2 + 2);
  std::swap[abi:de200100]<CBBOLTS::Bin *>(a1 + 2, a2 + 3);
  *a2 = a2[1];
  std::vector<CBBOLTS::Bin>::size[abi:de200100](a1);
  std::vector<CBBOLTS::Bin>::__annotate_new[abi:de200100]();
}

void **std::__split_buffer<CBBOLTS::Bin>::~__split_buffer(void **a1)
{
  std::__split_buffer<CBBOLTS::Bin>::~__split_buffer(a1);
  return a1;
}

{
  std::__split_buffer<CBBOLTS::Bin>::clear[abi:de200100](a1);
  if (*a1)
  {
    v2 = a1[4];
    v3 = *a1;
    v4 = std::__split_buffer<CBBOLTS::Bin>::capacity[abi:de200100](a1);
    std::allocator_traits<std::allocator<CBBOLTS::Bin>>::deallocate[abi:de200100](v2, v3, v4);
  }

  return a1;
}

void *std::allocator<CBBOLTS::Bin>::allocate[abi:de200100](uint64_t a1, unint64_t a2)
{
  if (a2 > std::allocator_traits<std::allocator<CBBOLTS::Bin>>::max_size[abi:de200100]<std::allocator<CBBOLTS::Bin>,void,0>())
  {
    std::__throw_bad_array_new_length[abi:de200100]();
  }

  return std::__libcpp_allocate[abi:de200100]<CBBOLTS::Bin>(a2, 8uLL);
}

void *std::__libcpp_allocate[abi:de200100]<CBBOLTS::Bin>(uint64_t a1, std::align_val_t a2)
{
  v3 = 48 * a1;
  if (!std::__is_overaligned_for_new[abi:de200100](a2))
  {
    std::__libcpp_operator_new[abi:de200100]<CBBOLTS::Bin>();
  }

  return std::__libcpp_operator_new[abi:de200100]<CBBOLTS::Bin,unsigned long,std::align_val_t>(v3, a2);
}

uint64_t std::__uninitialized_allocator_relocate[abi:de200100]<std::allocator<CBBOLTS::Bin>,CBBOLTS::Bin*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a1;
  v13 = a2;
  v12 = a3;
  v11 = a4;
  v10 = a4;
  std::_AllocatorDestroyRangeReverse<std::allocator<CBBOLTS::Bin>,CBBOLTS::Bin*>::_AllocatorDestroyRangeReverse[abi:de200100](&v8, a1, &v10, &v11);
  std::__make_exception_guard[abi:de200100]<std::_AllocatorDestroyRangeReverse<std::allocator<CBBOLTS::Bin>,CBBOLTS::Bin*>>(&v8, v9);
  for (i = v13; i != v12; i += 48)
  {
    v6 = v14;
    std::__to_address[abi:de200100]<CBBOLTS::Bin>();
    std::allocator_traits<std::allocator<CBBOLTS::Bin>>::construct[abi:de200100]<CBBOLTS::Bin,CBBOLTS::Bin,void,0>(v6, v4, i);
    v11 += 48;
  }

  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<CBBOLTS::Bin>,CBBOLTS::Bin*>>::__complete[abi:de200100](v9);
  std::__allocator_destroy[abi:de200100]<std::allocator<CBBOLTS::Bin>,CBBOLTS::Bin*,CBBOLTS::Bin*>(v14, v13, v12);
  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<CBBOLTS::Bin>,CBBOLTS::Bin*>>::~__exception_guard_exceptions[abi:de200100](v9);
}

uint64_t *std::swap[abi:de200100]<CBBOLTS::Bin *>(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  return result;
}

__n128 *std::__make_exception_guard[abi:de200100]<std::_AllocatorDestroyRangeReverse<std::allocator<CBBOLTS::Bin>,CBBOLTS::Bin*>>@<X0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v6 = a2;
  v5 = a1;
  v3 = *a1;
  v4 = a1[1].n128_u64[0];
  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<CBBOLTS::Bin>,CBBOLTS::Bin*>>::__exception_guard_exceptions[abi:de200100](a2, &v3);
}

void std::__allocator_destroy[abi:de200100]<std::allocator<CBBOLTS::Bin>,CBBOLTS::Bin*,CBBOLTS::Bin*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (a2 != a3)
  {
    std::__to_address[abi:de200100]<CBBOLTS::Bin>();
    std::allocator_traits<std::allocator<CBBOLTS::Bin>>::destroy[abi:de200100]<CBBOLTS::Bin,void,0>(a1, v3);
    a2 += 48;
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<CBBOLTS::Bin>,CBBOLTS::Bin*>>::~__exception_guard_exceptions[abi:de200100](uint64_t a1)
{
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<CBBOLTS::Bin>,CBBOLTS::Bin*>>::~__exception_guard_exceptions[abi:de200100](a1);
  return a1;
}

{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<CBBOLTS::Bin>,CBBOLTS::Bin*>::operator()[abi:de200100](a1);
  }

  return a1;
}

__n128 std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<CBBOLTS::Bin>,CBBOLTS::Bin*>>::__exception_guard_exceptions[abi:de200100](__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  a1[1].n128_u8[8] = 0;
  return result;
}

void *std::_AllocatorDestroyRangeReverse<std::allocator<CBBOLTS::Bin>,CBBOLTS::Bin*>::_AllocatorDestroyRangeReverse[abi:de200100](void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = a2;
  result[1] = a3;
  result[2] = a4;
  return result;
}

uint64_t std::construct_at[abi:de200100]<CBBOLTS::Bin,CBBOLTS::Bin,CBBOLTS::Bin*>(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__memory/construct_at.h:39: assertion __location != nullptr failed: null pointer given to construct_at\n");
  }

  CBBOLTS::Bin::Bin(a1, a2);
  return a1;
}

__n128 CBBOLTS::Bin::Bin(uint64_t a1, uint64_t a2)
{
  std::list<AAB::CurveUpdate>::list(a1, a2);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  *(a1 + 40) = *(a2 + 40);
  return result;
}

uint64_t *std::list<AAB::CurveUpdate>::list(uint64_t *a1, uint64_t *a2)
{
  std::list<AAB::CurveUpdate>::list(a1, a2);
  return a1;
}

{
  v7 = a1;
  v6 = a2;
  std::__list_imp<AAB::CurveUpdate>::__list_imp(a1);
  v4 = std::list<AAB::CurveUpdate>::end[abi:de200100]();
  std::__list_const_iterator<AAB::CurveUpdate,void *>::__list_const_iterator[abi:de200100](&v5, &v4);
  std::list<AAB::CurveUpdate>::splice(a1, v5, v6);
  return a1;
}

void *std::__list_imp<AAB::CurveUpdate>::__list_imp(void *a1)
{
  std::__list_node_base<AAB::CurveUpdate,void *>::__list_node_base[abi:de200100](a1);
  result = a1;
  a1[2] = 0;
  return result;
}

{
  std::__list_node_base<AAB::CurveUpdate,void *>::__list_node_base[abi:de200100](a1);
  a1[2] = 0;
  std::allocator<std::__list_node<AAB::CurveUpdate,void *>>::allocator[abi:de200100](a1);
  return a1;
}

uint64_t std::list<AAB::CurveUpdate>::splice(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  if (a1 == a3)
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/list:1434: assertion this != std::addressof(__c) failed: list::splice(iterator, list) called with this == &list\n");
  }

  result = std::list<AAB::CurveUpdate>::empty[abi:de200100](a3);
  if ((result & 1) == 0)
  {
    v6 = a3[1];
    v5 = *a3;
    std::__list_imp<AAB::CurveUpdate>::__unlink_nodes(v6, *a3);
    result = std::list<AAB::CurveUpdate>::__link_nodes(a2, v6, v5);
    a1[2] += a3[2];
    a3[2] = 0;
  }

  return result;
}

void *std::__list_node_base<AAB::CurveUpdate,void *>::__list_node_base[abi:de200100](void *a1)
{
  std::__list_node_base<AAB::CurveUpdate,void *>::__list_node_base[abi:de200100](a1);
  return a1;
}

{
  std::__list_node_base<AAB::CurveUpdate,void *>::__self[abi:de200100]();
  *a1 = v1;
  std::__list_node_base<AAB::CurveUpdate,void *>::__self[abi:de200100]();
  v3 = v2;
  result = a1;
  a1[1] = v3;
  return result;
}

uint64_t std::list<AAB::CurveUpdate>::__link_nodes(uint64_t result, void *a2, uint64_t a3)
{
  *(*result + 8) = a2;
  *a2 = *result;
  *result = a3;
  *(a3 + 8) = result;
  return result;
}

void std::__destroy_at[abi:de200100]<CBBOLTS::Bin,0>(CBBOLTS::Bin *a1)
{
  if (!a1)
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__memory/construct_at.h:65: assertion __loc != nullptr failed: null pointer given to destroy_at\n");
  }

  CBBOLTS::Bin::~Bin(a1);
}

void CBBOLTS::Bin::~Bin(CBBOLTS::Bin *this)
{
  CBBOLTS::Bin::~Bin(this);
}

{
  std::list<AAB::CurveUpdate>::~list(this);
}

BOOL std::_AllocatorDestroyRangeReverse<std::allocator<CBBOLTS::Bin>,CBBOLTS::Bin*>::operator()[abi:de200100](uint64_t a1)
{
  v5[2] = a1;
  v3 = *a1;
  std::reverse_iterator<CBBOLTS::Bin *>::reverse_iterator[abi:de200100](v5, **(a1 + 16));
  std::reverse_iterator<CBBOLTS::Bin *>::reverse_iterator[abi:de200100](v4, **(a1 + 8));
  return std::__allocator_destroy[abi:de200100]<std::allocator<CBBOLTS::Bin>,std::reverse_iterator<CBBOLTS::Bin*>,std::reverse_iterator<CBBOLTS::Bin*>>(v3, v5[0], v5[1], v4[0], v4[1]);
}

BOOL std::__allocator_destroy[abi:de200100]<std::allocator<CBBOLTS::Bin>,std::reverse_iterator<CBBOLTS::Bin*>,std::reverse_iterator<CBBOLTS::Bin*>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9[0] = a2;
  v9[1] = a3;
  v8[0] = a4;
  v8[1] = a5;
  while (1)
  {
    result = std::operator!=[abi:de200100]<CBBOLTS::Bin *,CBBOLTS::Bin *>(v9, v8);
    if (!result)
    {
      break;
    }

    std::__to_address[abi:de200100]<std::reverse_iterator<CBBOLTS::Bin *>,0>(v9);
    std::allocator_traits<std::allocator<CBBOLTS::Bin>>::destroy[abi:de200100]<CBBOLTS::Bin,void,0>(a1, v6);
    std::reverse_iterator<CBBOLTS::Bin *>::operator++[abi:de200100](v9);
  }

  return result;
}

void *std::reverse_iterator<CBBOLTS::Bin *>::reverse_iterator[abi:de200100](void *result, uint64_t a2)
{
  *result = a2;
  result[1] = a2;
  return result;
}

void std::__split_buffer<CBBOLTS::Bin>::__destruct_at_end[abi:de200100](uint64_t a1, uint64_t a2)
{
  std::__split_buffer<CBBOLTS::Bin>::__destruct_at_end[abi:de200100](a1, a2);
}

{
  while (a2 != *(a1 + 16))
  {
    v3 = *(a1 + 32);
    *(a1 + 16) -= 48;
    std::__to_address[abi:de200100]<CBBOLTS::Bin>();
    std::allocator_traits<std::allocator<CBBOLTS::Bin>>::destroy[abi:de200100]<CBBOLTS::Bin,void,0>(v3, v2);
  }
}

void std::__libcpp_deallocate[abi:de200100]<CBBOLTS::Bin>(void *a1, uint64_t a2, unint64_t a3)
{
  if (std::__is_overaligned_for_new[abi:de200100](a3))
  {
    std::__libcpp_operator_delete[abi:de200100]<CBBOLTS::Bin *,std::align_val_t>(a1, a3);
  }

  else
  {
    std::__libcpp_operator_delete[abi:de200100]<CBBOLTS::Bin *>(a1);
  }
}

void *std::vector<CBBOLTS::Bin>::__construct_one_at_end[abi:de200100]<CBBOLTS::BinConfiguration const&>(uint64_t a1, __n128 *a2)
{
  v8 = a1;
  v7 = a2;
  std::vector<CBBOLTS::Bin>::_ConstructTransaction::_ConstructTransaction[abi:de200100](&v5, a1, 1);
  std::__to_address[abi:de200100]<CBBOLTS::Bin>();
  std::allocator_traits<std::allocator<CBBOLTS::Bin>>::construct[abi:de200100]<CBBOLTS::Bin,CBBOLTS::BinConfiguration const&,void,0>(a1, v2, v7);
  v6 += 48;
  return std::vector<CBBOLTS::Bin>::_ConstructTransaction::~_ConstructTransaction[abi:de200100](&v5);
}

uint64_t std::vector<CBBOLTS::Bin>::__emplace_back_slow_path<CBBOLTS::BinConfiguration const&>(void *a1, __n128 *a2)
{
  v12 = a1;
  v11 = a2;
  v2 = std::vector<CBBOLTS::Bin>::size[abi:de200100](a1);
  v7 = std::vector<CBBOLTS::Bin>::__recommend[abi:de200100](a1, v2 + 1);
  v3 = std::vector<CBBOLTS::Bin>::size[abi:de200100](a1);
  std::__split_buffer<CBBOLTS::Bin>::__split_buffer(v9, v7, v3, a1);
  std::__to_address[abi:de200100]<CBBOLTS::Bin>();
  std::allocator_traits<std::allocator<CBBOLTS::Bin>>::construct[abi:de200100]<CBBOLTS::Bin,CBBOLTS::BinConfiguration const&,void,0>(a1, v4, v11);
  v10 += 48;
  std::vector<CBBOLTS::Bin>::__swap_out_circular_buffer(a1, v9);
  v6 = a1[1];
  std::__split_buffer<CBBOLTS::Bin>::~__split_buffer(v9);
  return v6;
}

void *std::vector<CBBOLTS::Bin>::_ConstructTransaction::_ConstructTransaction[abi:de200100](void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = *(a2 + 8);
  result[2] = *(a2 + 8) + 48 * a3;
  return result;
}

uint64_t std::construct_at[abi:de200100]<CBBOLTS::Bin,CBBOLTS::BinConfiguration const&,CBBOLTS::Bin*>(uint64_t a1, __n128 *a2)
{
  v7 = a1;
  v6 = a2;
  if (!a1)
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__memory/construct_at.h:39: assertion __location != nullptr failed: null pointer given to construct_at\n");
  }

  v3 = v7;
  v4 = *v6;
  v5 = v6[1].n128_u64[0];
  CBBOLTS::Bin::Bin(v7, &v4);
  return v3;
}

__n128 CBBOLTS::Bin::Bin(uint64_t a1, __n128 *a2)
{
  std::list<AAB::CurveUpdate>::list[abi:de200100](a1);
  result = *a2;
  *(a1 + 24) = *a2;
  *(a1 + 40) = a2[1].n128_u64[0];
  return result;
}

unint64_t std::vector<CBBOLTS::Bin>::__recommend[abi:de200100](void *a1, uint64_t a2)
{
  v8[1] = a1;
  v8[0] = a2;
  v7 = std::vector<CBBOLTS::Bin>::max_size[abi:de200100](a1);
  if (v8[0] > v7)
  {
    std::vector<CBBOLTS::Bin>::__throw_length_error[abi:de200100]();
  }

  v2 = std::vector<CBBOLTS::Bin>::capacity[abi:de200100](a1);
  v6 = v2;
  if (v2 >= v7 / 2)
  {
    return v7;
  }

  v5 = 2 * v6;
  return *std::max[abi:de200100]<unsigned long>(&v5, v8);
}

void std::vector<CBBOLTS::Bin>::__destroy_vector::operator()[abi:de200100](uint64_t **a1)
{
  if (**a1)
  {
    std::vector<CBBOLTS::Bin>::clear[abi:de200100](*a1);
    v1 = *a1;
    std::vector<CBBOLTS::Bin>::__annotate_delete[abi:de200100]();
    v4 = *a1;
    v3 = **a1;
    v2 = std::vector<CBBOLTS::Bin>::capacity[abi:de200100](*a1);
    std::allocator_traits<std::allocator<CBBOLTS::Bin>>::deallocate[abi:de200100](v4, v3, v2);
  }
}

void std::vector<CBBOLTS::Bin>::clear[abi:de200100](uint64_t *a1)
{
  std::vector<CBBOLTS::Bin>::size[abi:de200100](a1);
  std::vector<CBBOLTS::Bin>::__base_destruct_at_end[abi:de200100](a1, *a1);
  std::vector<CBBOLTS::Bin>::__annotate_shrink[abi:de200100]();
}

void std::vector<CBBOLTS::Bin>::__base_destruct_at_end[abi:de200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); a2 != i; i -= 48)
  {
    std::__to_address[abi:de200100]<CBBOLTS::Bin>();
    std::allocator_traits<std::allocator<CBBOLTS::Bin>>::destroy[abi:de200100]<CBBOLTS::Bin,void,0>(a1, v2);
  }

  *(a1 + 8) = a2;
}

void AAB::UpdateCurveStrategy::~UpdateCurveStrategy(AAB::UpdateCurveStrategy *this)
{
  __break(1u);
}

{
  __break(1u);
}

{
  ;
}

uint64_t AAB::UpdateCurveStrategy::UpdateCurveAndCappedCurve(uint64_t a1, uint64_t a2, uint64_t a3, float *a4, uint64_t a5, __n128 a6, __n128 a7, __n128 a8)
{
  v14 = __PAIR64__(a7.n128_u32[0], a6.n128_u32[0]);
  v15 = a8.n128_f32[0];
  (*(*a1 + 24))(a1, a2, a3, a6, a7, a8);
  CapForE = AAB::findCapForE(a4, *(&v14 + 1));
  if (v15 > CapForE)
  {
    v15 = CapForE;
  }

  return (*(*a1 + 24))(a1, a2, a5, *&v14, *(&v14 + 1), v15);
}

void *std::vector<CBBOLTS::BinConfiguration>::vector[abi:de200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  *result = *a2;
  result[1] = a2[1];
  result[2] = a2[2];
  a2[2] = 0;
  a2[1] = 0;
  *a2 = 0;
  return result;
}

void std::vector<CBBOLTS::BinConfiguration>::__destroy_vector::operator()[abi:de200100](uint64_t **a1)
{
  if (**a1)
  {
    std::vector<CBBOLTS::BinConfiguration>::clear[abi:de200100](*a1);
    v1 = *a1;
    std::vector<CBBOLTS::BinConfiguration>::__annotate_delete[abi:de200100]();
    v4 = *a1;
    v3 = **a1;
    v2 = std::vector<CBBOLTS::BinConfiguration>::capacity[abi:de200100](*a1);
    std::allocator_traits<std::allocator<CBBOLTS::BinConfiguration>>::deallocate[abi:de200100](v4, v3, v2);
  }
}

void std::vector<CBBOLTS::BinConfiguration>::clear[abi:de200100](uint64_t *a1)
{
  std::vector<CBBOLTS::BinConfiguration>::size[abi:de200100](a1);
  std::vector<CBBOLTS::BinConfiguration>::__base_destruct_at_end[abi:de200100](a1, *a1);
  std::vector<CBBOLTS::BinConfiguration>::__annotate_shrink[abi:de200100]();
}

void std::vector<CBBOLTS::BinConfiguration>::__base_destruct_at_end[abi:de200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); a2 != i; i -= 24)
  {
    std::__to_address[abi:de200100]<CBBOLTS::BinConfiguration>();
    std::allocator_traits<std::allocator<CBBOLTS::BinConfiguration>>::destroy[abi:de200100]<CBBOLTS::BinConfiguration,void,0>(a1, v2);
  }

  *(a1 + 8) = a2;
}

void std::__destroy_at[abi:de200100]<CBBOLTS::BinConfiguration,0>(uint64_t a1)
{
  if (!a1)
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__memory/construct_at.h:65: assertion __loc != nullptr failed: null pointer given to destroy_at\n");
  }
}

void std::__libcpp_deallocate[abi:de200100]<CBBOLTS::BinConfiguration>(void *a1, uint64_t a2, unint64_t a3)
{
  if (std::__is_overaligned_for_new[abi:de200100](a3))
  {
    std::__libcpp_operator_delete[abi:de200100]<CBBOLTS::BinConfiguration *,std::align_val_t>(a1, a3);
  }

  else
  {
    std::__libcpp_operator_delete[abi:de200100]<CBBOLTS::BinConfiguration *>(a1);
  }
}

uint64_t std::allocator<CBBOLTS::BinConfiguration>::allocator[abi:de200100](uint64_t a1)
{
  std::allocator<CBBOLTS::BinConfiguration>::allocator[abi:de200100](a1);
  return a1;
}

{
  std::__non_trivial_if<true>::__non_trivial_if[abi:de200100]();
  return a1;
}

uint64_t std::vector<CBBOLTS::BinConfiguration>::__init_with_size[abi:de200100]<CBBOLTS::BinConfiguration const*,CBBOLTS::BinConfiguration const*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  std::vector<CBBOLTS::BinConfiguration>::__destroy_vector::__destroy_vector[abi:de200100](&v6, a1);
  std::__make_exception_guard[abi:de200100]<std::vector<CBBOLTS::BinConfiguration>::__destroy_vector>(v6, v7);
  if (v8)
  {
    std::vector<CBBOLTS::BinConfiguration>::__vallocate[abi:de200100](a1, v8);
    std::vector<CBBOLTS::BinConfiguration>::__construct_at_end<CBBOLTS::BinConfiguration const*,CBBOLTS::BinConfiguration const*>(a1, v10, v9, v8);
  }

  std::__exception_guard_exceptions<std::vector<CBBOLTS::BinConfiguration>::__destroy_vector>::__complete[abi:de200100](v7);
  return std::__exception_guard_exceptions<std::vector<CBBOLTS::BinConfiguration>::__destroy_vector>::~__exception_guard_exceptions[abi:de200100](v7);
}

void std::vector<CBBOLTS::BinConfiguration>::__vallocate[abi:de200100](void *a1, unint64_t a2)
{
  if (a2 > std::vector<CBBOLTS::BinConfiguration>::max_size[abi:de200100](a1))
  {
    std::vector<CBBOLTS::BinConfiguration>::__throw_length_error[abi:de200100]();
  }

  v4 = std::__allocate_at_least[abi:de200100]<std::allocator<CBBOLTS::BinConfiguration>>(a1, a2);
  *a1 = v4;
  a1[1] = v4;
  a1[2] = *a1 + 24 * v2;
  std::vector<CBBOLTS::BinConfiguration>::__annotate_new[abi:de200100]();
}

void *std::vector<CBBOLTS::BinConfiguration>::__construct_at_end<CBBOLTS::BinConfiguration const*,CBBOLTS::BinConfiguration const*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  std::vector<CBBOLTS::BinConfiguration>::_ConstructTransaction::_ConstructTransaction[abi:de200100](&v6, a1, a4);
  v7 = std::__uninitialized_allocator_copy[abi:de200100]<std::allocator<CBBOLTS::BinConfiguration>,CBBOLTS::BinConfiguration const*,CBBOLTS::BinConfiguration const*,CBBOLTS::BinConfiguration*>(a1, v10, v9, v7);
  return std::vector<CBBOLTS::BinConfiguration>::_ConstructTransaction::~_ConstructTransaction[abi:de200100](&v6);
}

uint64_t std::__exception_guard_exceptions<std::vector<CBBOLTS::BinConfiguration>::__destroy_vector>::~__exception_guard_exceptions[abi:de200100](uint64_t a1)
{
  std::__exception_guard_exceptions<std::vector<CBBOLTS::BinConfiguration>::__destroy_vector>::~__exception_guard_exceptions[abi:de200100](a1);
  return a1;
}

{
  if ((*(a1 + 8) & 1) == 0)
  {
    std::vector<CBBOLTS::BinConfiguration>::__destroy_vector::operator()[abi:de200100](a1);
  }

  return a1;
}

uint64_t std::__exception_guard_exceptions<std::vector<CBBOLTS::BinConfiguration>::__destroy_vector>::__exception_guard_exceptions[abi:de200100](uint64_t result, uint64_t a2)
{
  *result = a2;
  *(result + 8) = 0;
  return result;
}

uint64_t std::vector<CBBOLTS::BinConfiguration>::max_size[abi:de200100](uint64_t a1)
{
  v3[1] = a1;
  v3[0] = std::allocator_traits<std::allocator<CBBOLTS::BinConfiguration>>::max_size[abi:de200100]<std::allocator<CBBOLTS::BinConfiguration>,void,0>();
  v2 = std::numeric_limits<long>::max[abi:de200100]();
  return *std::min[abi:de200100]<unsigned long>(v3, &v2);
}

void *std::allocator<CBBOLTS::BinConfiguration>::allocate[abi:de200100](uint64_t a1, unint64_t a2)
{
  if (a2 > std::allocator_traits<std::allocator<CBBOLTS::BinConfiguration>>::max_size[abi:de200100]<std::allocator<CBBOLTS::BinConfiguration>,void,0>())
  {
    std::__throw_bad_array_new_length[abi:de200100]();
  }

  return std::__libcpp_allocate[abi:de200100]<CBBOLTS::BinConfiguration>(a2, 8uLL);
}

void *std::__libcpp_allocate[abi:de200100]<CBBOLTS::BinConfiguration>(uint64_t a1, std::align_val_t a2)
{
  v3 = 24 * a1;
  if (!std::__is_overaligned_for_new[abi:de200100](a2))
  {
    std::__libcpp_operator_new[abi:de200100]<CBBOLTS::BinConfiguration>();
  }

  return std::__libcpp_operator_new[abi:de200100]<CBBOLTS::BinConfiguration,unsigned long,std::align_val_t>(v3, a2);
}

uint64_t std::__uninitialized_allocator_copy[abi:de200100]<std::allocator<CBBOLTS::BinConfiguration>,CBBOLTS::BinConfiguration const*,CBBOLTS::BinConfiguration const*,CBBOLTS::BinConfiguration*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = std::__unwrap_range[abi:de200100]<CBBOLTS::BinConfiguration const*,CBBOLTS::BinConfiguration const*>(a2, a3);
  v8 = v4;
  std::__unwrap_iter[abi:de200100]<CBBOLTS::BinConfiguration *,std::__unwrap_iter_impl<CBBOLTS::BinConfiguration *,true>,0>();
  v6 = std::__uninitialized_allocator_copy_impl[abi:de200100]<std::allocator<CBBOLTS::BinConfiguration>,CBBOLTS::BinConfiguration const*,CBBOLTS::BinConfiguration const*,CBBOLTS::BinConfiguration*>(a1, v9, v8, v5);
  return std::__rewrap_iter[abi:de200100]<CBBOLTS::BinConfiguration *,CBBOLTS::BinConfiguration *,std::__unwrap_iter_impl<CBBOLTS::BinConfiguration *,true>>(a4, v6);
}

void *std::vector<CBBOLTS::BinConfiguration>::_ConstructTransaction::_ConstructTransaction[abi:de200100](void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = *(a2 + 8);
  result[2] = *(a2 + 8) + 24 * a3;
  return result;
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:de200100]<std::allocator<CBBOLTS::BinConfiguration>,CBBOLTS::BinConfiguration const*,CBBOLTS::BinConfiguration const*,CBBOLTS::BinConfiguration*>(uint64_t a1, __n128 *a2, __n128 *a3, uint64_t a4)
{
  v14 = a1;
  v13 = a2;
  v12 = a3;
  v11 = a4;
  v10 = a4;
  std::_AllocatorDestroyRangeReverse<std::allocator<CBBOLTS::BinConfiguration>,CBBOLTS::BinConfiguration*>::_AllocatorDestroyRangeReverse[abi:de200100](&v8, a1, &v10, &v11);
  std::__make_exception_guard[abi:de200100]<std::_AllocatorDestroyRangeReverse<std::allocator<CBBOLTS::BinConfiguration>,CBBOLTS::BinConfiguration*>>(&v8, v9);
  while (v13 != v12)
  {
    v7 = v14;
    std::__to_address[abi:de200100]<CBBOLTS::BinConfiguration>();
    std::allocator_traits<std::allocator<CBBOLTS::BinConfiguration>>::construct[abi:de200100]<CBBOLTS::BinConfiguration,CBBOLTS::BinConfiguration const&,void,0>(v7, v4, v13);
    v13 = (v13 + 24);
    v11 += 24;
  }

  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<CBBOLTS::BinConfiguration>,CBBOLTS::BinConfiguration*>>::__complete[abi:de200100](v9);
  v6 = v11;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<CBBOLTS::BinConfiguration>,CBBOLTS::BinConfiguration*>>::~__exception_guard_exceptions[abi:de200100](v9);
  return v6;
}

uint64_t std::__unwrap_range_impl<CBBOLTS::BinConfiguration const*,CBBOLTS::BinConfiguration const*>::__unwrap[abi:de200100](uint64_t a1, uint64_t a2)
{
  v6[2] = a1;
  v6[1] = a2;
  std::__unwrap_iter[abi:de200100]<CBBOLTS::BinConfiguration const*,std::__unwrap_iter_impl<CBBOLTS::BinConfiguration const*,true>,0>();
  v6[0] = v2;
  std::__unwrap_iter[abi:de200100]<CBBOLTS::BinConfiguration const*,std::__unwrap_iter_impl<CBBOLTS::BinConfiguration const*,true>,0>();
  v5 = v3;
  std::pair<CBBOLTS::BinConfiguration const*,CBBOLTS::BinConfiguration const*>::pair[abi:de200100]<CBBOLTS::BinConfiguration const*,CBBOLTS::BinConfiguration const*,0>(&v7, v6, &v5);
  return v7;
}

void *std::pair<CBBOLTS::BinConfiguration const*,CBBOLTS::BinConfiguration const*>::pair[abi:de200100]<CBBOLTS::BinConfiguration const*,CBBOLTS::BinConfiguration const*,0>(void *result, void *a2, void *a3)
{
  *result = *a2;
  result[1] = *a3;
  return result;
}

__n128 *std::__make_exception_guard[abi:de200100]<std::_AllocatorDestroyRangeReverse<std::allocator<CBBOLTS::BinConfiguration>,CBBOLTS::BinConfiguration*>>@<X0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v6 = a2;
  v5 = a1;
  v3 = *a1;
  v4 = a1[1].n128_u64[0];
  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<CBBOLTS::BinConfiguration>,CBBOLTS::BinConfiguration*>>::__exception_guard_exceptions[abi:de200100](a2, &v3);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<CBBOLTS::BinConfiguration>,CBBOLTS::BinConfiguration*>>::~__exception_guard_exceptions[abi:de200100](uint64_t a1)
{
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<CBBOLTS::BinConfiguration>,CBBOLTS::BinConfiguration*>>::~__exception_guard_exceptions[abi:de200100](a1);
  return a1;
}

{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<CBBOLTS::BinConfiguration>,CBBOLTS::BinConfiguration*>::operator()[abi:de200100](a1);
  }

  return a1;
}

__n128 std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<CBBOLTS::BinConfiguration>,CBBOLTS::BinConfiguration*>>::__exception_guard_exceptions[abi:de200100](__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  a1[1].n128_u8[8] = 0;
  return result;
}

void *std::_AllocatorDestroyRangeReverse<std::allocator<CBBOLTS::BinConfiguration>,CBBOLTS::BinConfiguration*>::_AllocatorDestroyRangeReverse[abi:de200100](void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = a2;
  result[1] = a3;
  result[2] = a4;
  return result;
}

__n128 std::construct_at[abi:de200100]<CBBOLTS::BinConfiguration,CBBOLTS::BinConfiguration const&,CBBOLTS::BinConfiguration*>(__n128 *a1, __n128 *a2)
{
  if (!a1)
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__memory/construct_at.h:39: assertion __location != nullptr failed: null pointer given to construct_at\n");
  }

  result = *a2;
  *a1 = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  return result;
}

BOOL std::_AllocatorDestroyRangeReverse<std::allocator<CBBOLTS::BinConfiguration>,CBBOLTS::BinConfiguration*>::operator()[abi:de200100](uint64_t a1)
{
  v5[2] = a1;
  v3 = *a1;
  std::reverse_iterator<CBBOLTS::BinConfiguration *>::reverse_iterator[abi:de200100](v5, **(a1 + 16));
  std::reverse_iterator<CBBOLTS::BinConfiguration *>::reverse_iterator[abi:de200100](v4, **(a1 + 8));
  return std::__allocator_destroy[abi:de200100]<std::allocator<CBBOLTS::BinConfiguration>,std::reverse_iterator<CBBOLTS::BinConfiguration*>,std::reverse_iterator<CBBOLTS::BinConfiguration*>>(v3, v5[0], v5[1], v4[0], v4[1]);
}

BOOL std::__allocator_destroy[abi:de200100]<std::allocator<CBBOLTS::BinConfiguration>,std::reverse_iterator<CBBOLTS::BinConfiguration*>,std::reverse_iterator<CBBOLTS::BinConfiguration*>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9[0] = a2;
  v9[1] = a3;
  v8[0] = a4;
  v8[1] = a5;
  while (1)
  {
    result = std::operator!=[abi:de200100]<CBBOLTS::BinConfiguration *,CBBOLTS::BinConfiguration *>(v9, v8);
    if (!result)
    {
      break;
    }

    std::__to_address[abi:de200100]<std::reverse_iterator<CBBOLTS::BinConfiguration *>,0>(v9);
    std::allocator_traits<std::allocator<CBBOLTS::BinConfiguration>>::destroy[abi:de200100]<CBBOLTS::BinConfiguration,void,0>(a1, v6);
    std::reverse_iterator<CBBOLTS::BinConfiguration *>::operator++[abi:de200100](v9);
  }

  return result;
}

void *std::reverse_iterator<CBBOLTS::BinConfiguration *>::reverse_iterator[abi:de200100](void *result, uint64_t a2)
{
  *result = a2;
  result[1] = a2;
  return result;
}

unint64_t *___ZL15getMLModelClassv_block_invoke(uint64_t a1)
{
  CoreMLLibrary();
  *(*(*(a1 + 32) + 8) + 40) = objc_getClass("MLModel");
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    abort_report_np();
  }

  return std::atomic_store_explicit[abi:de200100]<void *>(&getMLModelClass(void)::softClass, *(*(*(a1 + 32) + 8) + 40), 0);
}

unint64_t CoreMLLibrary(void)
{
  v2 = 0;
  v1 = CoreMLLibraryCore(&v2);
  if (!v1)
  {
    abort_report_np();
  }

  if (v2)
  {
    free(v2);
  }

  return v1;
}

unint64_t std::__cxx_atomic_load[abi:de200100]<void *>(atomic_ullong *a1, int a2)
{
  if (a2 == 2 || a2 == 1)
  {
    return atomic_load_explicit(a1, memory_order_acquire);
  }

  if (a2 != 5)
  {
    return *a1;
  }

  return atomic_load(a1);
}

unint64_t CoreMLLibraryCore(char **a1)
{
  v9 = a1;
  if (!std::atomic_load_explicit[abi:de200100]<void *>(&CoreMLLibraryCore(char **)::frameworkLibrary, 0))
  {
    v2 = MEMORY[0x1E69E9820];
    v3 = -1073741824;
    v4 = 0;
    v5 = ___ZL17CoreMLLibraryCorePPc_block_invoke;
    v6 = &__block_descriptor_40_e5_v8__0l;
    v7 = v9;
    ___ZL17CoreMLLibraryCorePPc_block_invoke(&v2);
  }

  return std::atomic_load_explicit[abi:de200100]<void *>(&CoreMLLibraryCore(char **)::frameworkLibrary, 0);
}

unint64_t *___ZL17CoreMLLibraryCorePPc_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = _sl_dlopen();
  result = std::atomic_store_explicit[abi:de200100]<void *>(&CoreMLLibraryCore(char **)::frameworkLibrary, v2, 0);
  *MEMORY[0x1E69E9840];
  return result;
}

unint64_t *std::__cxx_atomic_store[abi:de200100]<void *>(unint64_t *result, unint64_t a2, int a3)
{
  if (a3 == 3 || a3 == 5)
  {
    atomic_store(a2, result);
  }

  else
  {
    *result = a2;
  }

  return result;
}

unint64_t *___ZL20getMLMultiArrayClassv_block_invoke(uint64_t a1)
{
  CoreMLLibrary();
  *(*(*(a1 + 32) + 8) + 40) = objc_getClass("MLMultiArray");
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    abort_report_np();
  }

  return std::atomic_store_explicit[abi:de200100]<void *>(&getMLMultiArrayClass(void)::softClass, *(*(*(a1 + 32) + 8) + 40), 0);
}

void *std::initializer_list<AAB::CurveUpdate>::initializer_list[abi:de200100](void *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

unint64_t *___ZL28getMLModelConfigurationClassv_block_invoke(uint64_t a1)
{
  CoreMLLibrary();
  *(*(*(a1 + 32) + 8) + 40) = objc_getClass("MLModelConfiguration");
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    abort_report_np();
  }

  return std::atomic_store_explicit[abi:de200100]<void *>(&getMLModelConfigurationClass(void)::softClass, *(*(*(a1 + 32) + 8) + 40), 0);
}

uint64_t std::allocator<std::__list_node<AAB::CurveUpdate,void *>>::allocator[abi:de200100](uint64_t a1)
{
  std::allocator<std::__list_node<AAB::CurveUpdate,void *>>::allocator[abi:de200100](a1);
  return a1;
}

{
  std::__non_trivial_if<true>::__non_trivial_if[abi:de200100]();
  return a1;
}

uint64_t std::__list_imp<AAB::CurveUpdate>::__create_node[abi:de200100]<AAB::CurveUpdate const&>(uint64_t a1, uint64_t a2, uint64_t a3, __n128 *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v12[1] = a1;
  v12[0] = a2;
  v11 = a3;
  std::__allocation_guard<std::allocator<std::__list_node<AAB::CurveUpdate,void *>>>::__allocation_guard[abi:de200100]<std::allocator<std::__list_node<AAB::CurveUpdate,void *>>>(v13, 1);
  v4 = std::__allocation_guard<std::allocator<std::__list_node<AAB::CurveUpdate,void *>>>::__get[abi:de200100](v13);
  std::__construct_at[abi:de200100]<std::__list_node<AAB::CurveUpdate,void *>,std::__list_node_base<AAB::CurveUpdate,void *> *&,std::__list_node_base<AAB::CurveUpdate,void *> *&,std::__list_node<AAB::CurveUpdate,void *>*>(v4, v12, &v11);
  v5 = std::__allocation_guard<std::allocator<std::__list_node<AAB::CurveUpdate,void *>>>::__get[abi:de200100](v13);
  v6 = std::__list_node<AAB::CurveUpdate,void *>::__get_value[abi:de200100](v5);
  std::allocator_traits<std::allocator<std::__list_node<AAB::CurveUpdate,void *>>>::construct[abi:de200100]<AAB::CurveUpdate,AAB::CurveUpdate const&,void,0>(a1, v6, a4);
  v8 = std::__allocation_guard<std::allocator<std::__list_node<AAB::CurveUpdate,void *>>>::__release_ptr[abi:de200100](v13);
  std::__allocation_guard<std::allocator<std::__list_node<AAB::CurveUpdate,void *>>>::~__allocation_guard[abi:de200100](v13);
  *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t std::list<AAB::CurveUpdate>::__link_nodes_at_back(void *a1, uint64_t a2, uint64_t a3)
{
  result = std::__list_imp<AAB::CurveUpdate>::__end_as_link[abi:de200100]();
  *(a3 + 8) = result;
  *a2 = *a1;
  *(*a2 + 8) = a2;
  *a1 = a3;
  return result;
}

uint64_t std::__allocation_guard<std::allocator<std::__list_node<AAB::CurveUpdate,void *>>>::__allocation_guard[abi:de200100]<std::allocator<std::__list_node<AAB::CurveUpdate,void *>>>(uint64_t a1, uint64_t a2)
{
  std::__allocation_guard<std::allocator<std::__list_node<AAB::CurveUpdate,void *>>>::__allocation_guard[abi:de200100]<std::allocator<std::__list_node<AAB::CurveUpdate,void *>>>(a1, a2);
  return a1;
}

{
  *(a1 + 8) = a2;
  v2 = std::allocator_traits<std::allocator<std::__list_node<AAB::CurveUpdate,void *>>>::allocate[abi:de200100](a1, *(a1 + 8));
  result = a1;
  *(a1 + 16) = v2;
  return result;
}

uint64_t std::__allocation_guard<std::allocator<std::__list_node<AAB::CurveUpdate,void *>>>::__release_ptr[abi:de200100](uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  return v2;
}

uint64_t std::__allocation_guard<std::allocator<std::__list_node<AAB::CurveUpdate,void *>>>::~__allocation_guard[abi:de200100](uint64_t a1)
{
  std::__allocation_guard<std::allocator<std::__list_node<AAB::CurveUpdate,void *>>>::~__allocation_guard[abi:de200100](a1);
  return a1;
}

{
  std::__allocation_guard<std::allocator<std::__list_node<AAB::CurveUpdate,void *>>>::__destroy[abi:de200100](a1);
  return a1;
}

void *std::allocator<std::__list_node<AAB::CurveUpdate,void *>>::allocate[abi:de200100](uint64_t a1, unint64_t a2)
{
  if (a2 > std::allocator_traits<std::allocator<std::__list_node<AAB::CurveUpdate,void *>>>::max_size[abi:de200100]<std::allocator<std::__list_node<AAB::CurveUpdate,void *>>,void,0>())
  {
    std::__throw_bad_array_new_length[abi:de200100]();
  }

  return std::__libcpp_allocate[abi:de200100]<std::__list_node<AAB::CurveUpdate,void *>>(a2, 8uLL);
}

void *std::__libcpp_allocate[abi:de200100]<std::__list_node<AAB::CurveUpdate,void *>>(uint64_t a1, std::align_val_t a2)
{
  v3 = 32 * a1;
  if (!std::__is_overaligned_for_new[abi:de200100](a2))
  {
    std::__libcpp_operator_new[abi:de200100]<std::__list_node<AAB::CurveUpdate,void *>>();
  }

  return std::__libcpp_operator_new[abi:de200100]<std::__list_node<AAB::CurveUpdate,void *>,unsigned long,std::align_val_t>(v3, a2);
}

void *std::construct_at[abi:de200100]<std::__list_node<AAB::CurveUpdate,void *>,std::__list_node_base<AAB::CurveUpdate,void *> *&,std::__list_node_base<AAB::CurveUpdate,void *> *&,std::__list_node<AAB::CurveUpdate,void *>*>(void *a1, uint64_t *a2, uint64_t *a3)
{
  if (!a1)
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__memory/construct_at.h:39: assertion __location != nullptr failed: null pointer given to construct_at\n");
  }

  std::__list_node<AAB::CurveUpdate,void *>::__list_node[abi:de200100](a1, *a2, *a3);
  return a1;
}

void *std::__list_node<AAB::CurveUpdate,void *>::__list_node[abi:de200100](void *a1, uint64_t a2, uint64_t a3)
{
  std::__list_node<AAB::CurveUpdate,void *>::__list_node[abi:de200100](a1, a2, a3);
  return a1;
}

{
  std::__list_node_base<AAB::CurveUpdate,void *>::__list_node_base[abi:de200100](a1, a2, a3);
  return a1;
}

void *std::__list_node_base<AAB::CurveUpdate,void *>::__list_node_base[abi:de200100](void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

void std::__allocation_guard<std::allocator<std::__list_node<AAB::CurveUpdate,void *>>>::__destroy[abi:de200100](uint64_t a1)
{
  if (*(a1 + 16))
  {
    std::allocator_traits<std::allocator<std::__list_node<AAB::CurveUpdate,void *>>>::deallocate[abi:de200100](a1, *(a1 + 16), *(a1 + 8));
  }
}

uint64_t std::__list_imp<AAB::CurveUpdate>::__create_node[abi:de200100]<AAB::CurveUpdate>(uint64_t a1, uint64_t a2, uint64_t a3, __n128 *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v12[1] = a1;
  v12[0] = a2;
  v11 = a3;
  std::__allocation_guard<std::allocator<std::__list_node<AAB::CurveUpdate,void *>>>::__allocation_guard[abi:de200100]<std::allocator<std::__list_node<AAB::CurveUpdate,void *>>>(v13, 1);
  v4 = std::__allocation_guard<std::allocator<std::__list_node<AAB::CurveUpdate,void *>>>::__get[abi:de200100](v13);
  std::__construct_at[abi:de200100]<std::__list_node<AAB::CurveUpdate,void *>,std::__list_node_base<AAB::CurveUpdate,void *> *&,std::__list_node_base<AAB::CurveUpdate,void *> *&,std::__list_node<AAB::CurveUpdate,void *>*>(v4, v12, &v11);
  v5 = std::__allocation_guard<std::allocator<std::__list_node<AAB::CurveUpdate,void *>>>::__get[abi:de200100](v13);
  v6 = std::__list_node<AAB::CurveUpdate,void *>::__get_value[abi:de200100](v5);
  std::allocator_traits<std::allocator<std::__list_node<AAB::CurveUpdate,void *>>>::construct[abi:de200100]<AAB::CurveUpdate,AAB::CurveUpdate,void,0>(a1, v6, a4);
  v8 = std::__allocation_guard<std::allocator<std::__list_node<AAB::CurveUpdate,void *>>>::__release_ptr[abi:de200100](v13);
  std::__allocation_guard<std::allocator<std::__list_node<AAB::CurveUpdate,void *>>>::~__allocation_guard[abi:de200100](v13);
  *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t std::__list_imp<AAB::CurveUpdate>::begin[abi:de200100](uint64_t a1)
{
  std::__list_const_iterator<AAB::CurveUpdate,void *>::__list_const_iterator[abi:de200100](&v2, *(a1 + 8));
  return v2;
}

{
  std::__list_iterator<AAB::CurveUpdate,void *>::__list_iterator[abi:de200100](&v2, *(a1 + 8));
  return v2;
}

uint64_t std::__list_imp<AAB::CurveUpdate>::end[abi:de200100]()
{
  v0 = std::__list_imp<AAB::CurveUpdate>::__end_as_link[abi:de200100]();
  std::__list_const_iterator<AAB::CurveUpdate,void *>::__list_const_iterator[abi:de200100](&v2, v0);
  return v2;
}

{
  v0 = std::__list_imp<AAB::CurveUpdate>::__end_as_link[abi:de200100]();
  std::__list_iterator<AAB::CurveUpdate,void *>::__list_iterator[abi:de200100](&v2, v0);
  return v2;
}

BOOL std::operator==[abi:de200100](void *a1, void *a2)
{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

void std::__list_imp<AAB::CurveUpdate>::__copy_assign_alloc[abi:de200100]()
{
  std::__list_imp<AAB::CurveUpdate>::__copy_assign_alloc[abi:de200100]();
}

{
  ;
}

void *std::list<AAB::CurveUpdate>::__assign_with_sentinel[abi:de200100]<std::__list_const_iterator<AAB::CurveUpdate,void *>,std::__list_const_iterator<AAB::CurveUpdate,void *>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = a2;
  v12 = a3;
  v11[1] = a1;
  v11[0] = std::list<AAB::CurveUpdate>::begin[abi:de200100](a1);
  v10 = std::list<AAB::CurveUpdate>::end[abi:de200100]();
  while (1)
  {
    v5 = 0;
    if (std::operator!=[abi:de200100](&v13, &v12))
    {
      v5 = std::operator!=[abi:de200100](v11, &v10);
    }

    if (!v5)
    {
      break;
    }

    v4 = std::__list_const_iterator<AAB::CurveUpdate,void *>::operator*[abi:de200100](&v13);
    *std::__list_iterator<AAB::CurveUpdate,void *>::operator*[abi:de200100](v11) = *v4;
    std::__list_const_iterator<AAB::CurveUpdate,void *>::operator++[abi:de200100](&v13);
    std::__list_iterator<AAB::CurveUpdate,void *>::operator++[abi:de200100](v11);
  }

  if (std::operator==[abi:de200100](v11, &v10))
  {
    std::__list_const_iterator<AAB::CurveUpdate,void *>::__list_const_iterator[abi:de200100](&v9, &v10);
    v8[3] = v13;
    v8[2] = v12;
    result = std::list<AAB::CurveUpdate>::__insert_with_sentinel[abi:de200100]<std::__list_const_iterator<AAB::CurveUpdate,void *>,std::__list_const_iterator<AAB::CurveUpdate,void *>>(a1, v9, v13, v12);
    v8[1] = result;
  }

  else
  {
    std::__list_const_iterator<AAB::CurveUpdate,void *>::__list_const_iterator[abi:de200100](v8, v11);
    std::__list_const_iterator<AAB::CurveUpdate,void *>::__list_const_iterator[abi:de200100](&v7, &v10);
    return std::list<AAB::CurveUpdate>::erase(a1, v8[0], v7);
  }

  return result;
}

void *std::list<AAB::CurveUpdate>::__insert_with_sentinel[abi:de200100]<std::__list_const_iterator<AAB::CurveUpdate,void *>,std::__list_const_iterator<AAB::CurveUpdate,void *>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a2;
  v16 = a3;
  v15 = a4;
  v14 = a1;
  std::__list_iterator<AAB::CurveUpdate,void *>::__list_iterator[abi:de200100](&v18, a2);
  if (std::operator!=[abi:de200100](&v16, &v15))
  {
    v4 = std::__list_const_iterator<AAB::CurveUpdate,void *>::operator*[abi:de200100](&v16);
    v12[1] = std::__list_imp<AAB::CurveUpdate>::__create_node[abi:de200100]<AAB::CurveUpdate const&>(a1, 0, 0, v4);
    v13 = 1;
    std::__list_node<AAB::CurveUpdate,void *>::__as_link[abi:de200100]();
    std::__list_iterator<AAB::CurveUpdate,void *>::__list_iterator[abi:de200100](v12, v5);
    v18 = v12[0];
    v11 = v12[0];
    std::__list_const_iterator<AAB::CurveUpdate,void *>::operator++[abi:de200100](&v16);
    while (std::operator!=[abi:de200100](&v16, &v15))
    {
      v9 = v11;
      v6 = std::__list_const_iterator<AAB::CurveUpdate,void *>::operator*[abi:de200100](&v16);
      std::__list_imp<AAB::CurveUpdate>::__create_node[abi:de200100]<AAB::CurveUpdate const&>(a1, v9, 0, v6);
      std::__list_node<AAB::CurveUpdate,void *>::__as_link[abi:de200100]();
      *(v11 + 8) = v7;
      std::__list_const_iterator<AAB::CurveUpdate,void *>::operator++[abi:de200100](&v16);
      std::__list_iterator<AAB::CurveUpdate,void *>::operator++[abi:de200100](&v11);
      ++v13;
    }

    std::list<AAB::CurveUpdate>::__link_nodes(v17, v18, v11);
    *(a1 + 16) += v13;
  }

  return v18;
}

uint64_t std::list<AAB::CurveUpdate>::erase(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = a2;
  v6 = a3;
  if (std::operator!=[abi:de200100](&v7, &v6))
  {
    std::__list_imp<AAB::CurveUpdate>::__unlink_nodes(v7, *v6);
    while (std::operator!=[abi:de200100](&v7, &v6))
    {
      std::__list_const_iterator<AAB::CurveUpdate,void *>::operator++[abi:de200100](&v7);
      --*(a1 + 16);
      std::__list_node_base<AAB::CurveUpdate,void *>::__as_node[abi:de200100]();
      std::__list_imp<AAB::CurveUpdate>::__delete_node[abi:de200100](a1, v3);
    }
  }

  std::__list_iterator<AAB::CurveUpdate,void *>::__list_iterator[abi:de200100](&v8, v6);
  return v8;
}

void *std::list<AAB::CurveUpdate>::__assign_with_sentinel[abi:de200100]<AAB::CurveUpdate const*,AAB::CurveUpdate const*>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  v14 = a1;
  v13 = a2;
  v12 = a3;
  v11 = std::list<AAB::CurveUpdate>::begin[abi:de200100](a1);
  v10 = std::list<AAB::CurveUpdate>::end[abi:de200100]();
  while (1)
  {
    v5 = 0;
    if (v13 != v12)
    {
      v5 = std::operator!=[abi:de200100](&v11, &v10);
    }

    if (!v5)
    {
      break;
    }

    v4 = v13;
    *std::__list_iterator<AAB::CurveUpdate,void *>::operator*[abi:de200100](&v11) = *v4;
    ++v13;
    std::__list_iterator<AAB::CurveUpdate,void *>::operator++[abi:de200100](&v11);
  }

  if (std::operator==[abi:de200100](&v11, &v10))
  {
    std::__list_const_iterator<AAB::CurveUpdate,void *>::__list_const_iterator[abi:de200100](&v9, &v10);
    result = std::list<AAB::CurveUpdate>::__insert_with_sentinel[abi:de200100]<AAB::CurveUpdate const*,AAB::CurveUpdate const*>(a1, v9, v13, v12);
    v8[1] = result;
  }

  else
  {
    std::__list_const_iterator<AAB::CurveUpdate,void *>::__list_const_iterator[abi:de200100](v8, &v11);
    std::__list_const_iterator<AAB::CurveUpdate,void *>::__list_const_iterator[abi:de200100](&v7, &v10);
    return std::list<AAB::CurveUpdate>::erase(a1, v8[0], v7);
  }

  return result;
}

void *std::list<AAB::CurveUpdate>::__insert_with_sentinel[abi:de200100]<AAB::CurveUpdate const*,AAB::CurveUpdate const*>(uint64_t a1, uint64_t a2, __n128 *a3, __n128 *a4)
{
  v14 = a2;
  v13 = a1;
  v12 = a3;
  v11 = a4;
  std::__list_iterator<AAB::CurveUpdate,void *>::__list_iterator[abi:de200100](&v15, a2);
  if (v12 != v11)
  {
    v9[1] = std::__list_imp<AAB::CurveUpdate>::__create_node[abi:de200100]<AAB::CurveUpdate const&>(a1, 0, 0, v12);
    v10 = 1;
    std::__list_node<AAB::CurveUpdate,void *>::__as_link[abi:de200100]();
    std::__list_iterator<AAB::CurveUpdate,void *>::__list_iterator[abi:de200100](v9, v4);
    v15 = v9[0];
    v8 = v9[0];
    ++v12;
    while (v12 != v11)
    {
      std::__list_imp<AAB::CurveUpdate>::__create_node[abi:de200100]<AAB::CurveUpdate const&>(a1, v8, 0, v12);
      std::__list_node<AAB::CurveUpdate,void *>::__as_link[abi:de200100]();
      *(v8 + 8) = v5;
      ++v12;
      std::__list_iterator<AAB::CurveUpdate,void *>::operator++[abi:de200100](&v8);
      ++v10;
    }

    std::list<AAB::CurveUpdate>::__link_nodes(v14, v15, v8);
    *(a1 + 16) += v10;
  }

  return v15;
}

void sub_1DE97987C(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id obj)
{
  *(v9 - 24) = a1;
  *(v9 - 28) = a2;
  objc_sync_exit(obj);
  _Unwind_Resume(*(v9 - 24));
}

uint64_t __os_log_helper_16_2_4_8_64_8_64_8_0_8_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 0;
  *(result + 33) = 8;
  *(result + 34) = a5;
  return result;
}

float BUIlluminanceToLuminance(uint64_t a1, float a2)
{
  v5 = 0.0;
  if (*(a1 + 160) <= 1)
  {
    if (*(a1 + 160) == 1)
    {
      v3 = *(a1 + 80);
    }

    else
    {
      v3 = 0.0;
    }

    v5 = v3;
  }

  else
  {
    for (i = 0; i < *(a1 + 160) - 1; ++i)
    {
      if (a2 <= *(a1 + 4 * (i + 1)))
      {
        if ((*(a1 + 4 * (i + 1)) - *(a1 + 4 * i)) != 0.0)
        {
          v5 = *(a1 + 80 + 4 * i) + (((*(a1 + 80 + 4 * (i + 1)) - *(a1 + 80 + 4 * i)) / (*(a1 + 4 * (i + 1)) - *(a1 + 4 * i))) * (a2 - *(a1 + 4 * i)));
        }

        return fmaxf(fmaxf(v5, 0.0), *(a1 + 80));
      }

      if (i == *(a1 + 160) - 2)
      {
        v5 = *(a1 + 80 + 4 * (i + 1));
        return fmaxf(fmaxf(v5, 0.0), *(a1 + 80));
      }
    }
  }

  return fmaxf(fmaxf(v5, 0.0), *(a1 + 80));
}

float BULuminanceToIlluminance(float *a1, float a2)
{
  v8 = 0.0;
  if (*(a1 + 40) <= 1)
  {
    if (*(a1 + 40) == 1)
    {
      v4 = *a1;
    }

    else
    {
      v4 = 0.0;
    }

    v8 = v4;
  }

  else
  {
    for (i = 0; i < *(a1 + 40) - 1; ++i)
    {
      if (a2 <= a1[i + 21])
      {
        if ((a1[i + 1] - a1[i]) != 0.0)
        {
          v7 = (a1[i + 21] - a1[i + 20]) / (a1[i + 1] - a1[i]);
          if (v7 == 0.0)
          {
            v5 = a1[i];
          }

          else
          {
            v2 = (a1[i + 21] - a1[i + 20]) / (a1[i + 1] - a1[i]);
            v5 = ((a2 - a1[i + 20]) + (a1[i] * v7)) / v7;
          }

          v8 = fminf(v5, 20000.0);
        }

        return fmaxf(v8, 0.0);
      }

      if (i == *(a1 + 40) - 2)
      {
        v8 = fminf(a1[i + 1], 20000.0);
        return fmaxf(v8, 0.0);
      }
    }
  }

  return fmaxf(v8, 0.0);
}

uint64_t __os_log_helper_16_2_4_8_64_8_0_8_0_8_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 0;
  *(result + 33) = 8;
  *(result + 34) = a5;
  return result;
}

void PerceptualLuminanceThresholding::PerceptualLuminanceThresholding(PerceptualLuminanceThresholding *this, float a2, float a3, char a4, float a5)
{
  *this = &unk_1F599BB30;
  *(this + 2) = a5;
  *(this + 2) = os_log_create("com.apple.CoreBrightness.AABC", "PLT");
  *(this + 6) = 1045220557;
  *(this + 7) = 1036831949;
  *(this + 8) = a3;
  *(this + 9) = a2;
  *(this + 164) = a4 & 1;
}

unint64_t PerceptualLuminanceThresholding::_reconfigureTimeConstantTable(unint64_t this)
{
  v2 = this;
  if (*(this + 164))
  {
    for (i = 0; ; ++i)
    {
      this = std::array<PerceptualLuminanceThresholding::TimeConstantTableEntry,13ul>::size[abi:de200100]();
      v1 = 0;
      if (i < this)
      {
        this = std::array<PerceptualLuminanceThresholding::TimeConstantTableEntry,13ul>::operator[][abi:de200100](v2 + 60, i);
        v1 = *this < 0.0;
      }

      if (!v1)
      {
        break;
      }

      *(std::array<PerceptualLuminanceThresholding::TimeConstantTableEntry,13ul>::operator[][abi:de200100](v2 + 60, i) + 4) = 5.0;
    }
  }

  return this;
}

uint64_t std::array<PerceptualLuminanceThresholding::TimeConstantTableEntry,13ul>::operator[][abi:de200100](uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xD)
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/array:269: assertion __n < _Size failed: out-of-bounds access in std::array<T, N>\n");
  }

  return a1 + 8 * a2;
}

{
  if (a2 >= 0xD)
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/array:273: assertion __n < _Size failed: out-of-bounds access in std::array<T, N>\n");
  }

  return a1 + 8 * a2;
}

void *PerceptualLuminanceThresholding::UpdateTimeConstantTable(PerceptualLuminanceThresholding *this, unsigned int a2)
{
  v21 = this;
  v20 = a2;
  v19 = *(this + 9);
  v18 = *(this + 8);
  __b[0] = -1027080192;
  __b[1] = v19;
  __b[2] = -1.0;
  __b[3] = v19;
  __b[4] = -1097229926;
  __b[5] = v19;
  __b[6] = -1102263091;
  __b[7] = v19;
  __b[8] = -1110651699;
  __b[9] = v19;
  __b[10] = 0;
  __b[11] = v19;
  __b[12] = 0;
  *&__b[13] = v18 * 2.0;
  __b[14] = 1025758986;
  *&__b[15] = v18 * 2.0;
  __b[16] = 1036831949;
  *&__b[17] = v18 * 1.714;
  __b[18] = 1045220557;
  *&__b[19] = v18 * 1.143;
  __b[20] = 1050253722;
  *&__b[21] = v18;
  __b[22] = 1.0;
  *&__b[23] = v18;
  __b[24] = 1120403456;
  *&__b[25] = v18;
  if (a2)
  {
    v2 = std::array<PerceptualLuminanceThresholding::TimeConstantTableEntry,13ul>::operator[][abi:de200100](__b, 1uLL);
    v12 = -*v2 / v20;
    v3 = std::array<PerceptualLuminanceThresholding::TimeConstantTableEntry,13ul>::operator[][abi:de200100](__b, 1uLL);
    *(v3 + 4) = *(v3 + 4) * v12;
    v4 = std::array<PerceptualLuminanceThresholding::TimeConstantTableEntry,13ul>::operator[][abi:de200100](__b, 2uLL);
    v13 = -*v4 / v20;
    v5 = std::array<PerceptualLuminanceThresholding::TimeConstantTableEntry,13ul>::operator[][abi:de200100](__b, 2uLL);
    *(v5 + 4) = *(v5 + 4) * v13;
    v6 = std::array<PerceptualLuminanceThresholding::TimeConstantTableEntry,13ul>::operator[][abi:de200100](__b, 3uLL);
    v14 = -*v6 / v20;
    v7 = std::array<PerceptualLuminanceThresholding::TimeConstantTableEntry,13ul>::operator[][abi:de200100](__b, 3uLL);
    *(v7 + 4) = *(v7 + 4) * v14;
    v8 = std::array<PerceptualLuminanceThresholding::TimeConstantTableEntry,13ul>::operator[][abi:de200100](__b, 4uLL);
    v15 = -*v8 / v20;
    v9 = std::array<PerceptualLuminanceThresholding::TimeConstantTableEntry,13ul>::operator[][abi:de200100](__b, 4uLL);
    *(v9 + 4) = *(v9 + 4) * v15;
    v10 = 5.0 / v20;
    *(std::array<PerceptualLuminanceThresholding::TimeConstantTableEntry,13ul>::operator[][abi:de200100](__b, 5uLL) + 4) = v10;
  }

  result = memcpy(this + 60, __b, 0x68uLL);
  if (*(this + 164))
  {
    return PerceptualLuminanceThresholding::_reconfigureTimeConstantTable(this);
  }

  return result;
}

void *PerceptualLuminanceThresholding::SetAggressivity(PerceptualLuminanceThresholding *this, unsigned int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  *(this + 10) = a2;
  if (a2)
  {
    v6 = 1.0 / (*(this + 2) * a2);
  }

  else
  {
    v6 = 1.0;
  }

  v2 = v6;
  *(this + 11) = v2;
  *(this + 12) = a2;
  *(this + 13) = 1128792064;
  *(this + 14) = 1060320051;
  if (*(this + 2))
  {
    v5 = *(this + 2);
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v5 = inited;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_5_4_0_8_0_8_0_8_0_8_0(v9, a2, COERCE__INT64(*(this + 11)), COERCE__INT64(*(this + 12)), COERCE__INT64(*(this + 13)), COERCE__INT64(*(this + 14)));
    _os_log_impl(&dword_1DE8E5000, v5, OS_LOG_TYPE_DEFAULT, "Setting aggressivity %d, Parameters: %f, %f, %f, %f", v9, 0x30u);
  }

  result = PerceptualLuminanceThresholding::UpdateTimeConstantTable(this, a2);
  *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __os_log_helper_16_0_5_4_0_8_0_8_0_8_0_8_0(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *result = 0;
  *(result + 1) = 5;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 0;
  *(result + 9) = 8;
  *(result + 10) = a3;
  *(result + 18) = 0;
  *(result + 19) = 8;
  *(result + 20) = a4;
  *(result + 28) = 0;
  *(result + 29) = 8;
  *(result + 30) = a5;
  *(result + 38) = 0;
  *(result + 39) = 8;
  *(result + 40) = a6;
  return result;
}

float PerceptualLuminanceThresholding::DurationFromPerceptualDelta(PerceptualLuminanceThresholding *this, float a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v18 = 0.0;
  for (i = 0; i < std::array<PerceptualLuminanceThresholding::TimeConstantTableEntry,13ul>::size[abi:de200100](); ++i)
  {
    if (a2 <= *std::array<PerceptualLuminanceThresholding::TimeConstantTableEntry,13ul>::operator[][abi:de200100](this + 60, i))
    {
      if (i)
      {
        v10 = a2 - *std::array<PerceptualLuminanceThresholding::TimeConstantTableEntry,13ul>::operator[][abi:de200100](this + 60, i - 1);
        v9 = *std::array<PerceptualLuminanceThresholding::TimeConstantTableEntry,13ul>::operator[][abi:de200100](this + 60, i);
        v16 = v10 / (v9 - *std::array<PerceptualLuminanceThresholding::TimeConstantTableEntry,13ul>::operator[][abi:de200100](this + 60, i - 1));
        v11 = *(std::array<PerceptualLuminanceThresholding::TimeConstantTableEntry,13ul>::operator[][abi:de200100](this + 60, i) + 4);
        v12 = v11 - *(std::array<PerceptualLuminanceThresholding::TimeConstantTableEntry,13ul>::operator[][abi:de200100](this + 60, i - 1) + 4);
        v18 = *(std::array<PerceptualLuminanceThresholding::TimeConstantTableEntry,13ul>::operator[][abi:de200100](this + 60, i - 1) + 4) + (v16 * v12);
        if (*(this + 2))
        {
          v8 = *(this + 2);
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            inited = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            inited = init_default_corebrightness_log();
          }

          v8 = inited;
        }

        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          *&v4 = *std::array<PerceptualLuminanceThresholding::TimeConstantTableEntry,13ul>::operator[][abi:de200100](this + 60, i - 1);
          *&v5 = *std::array<PerceptualLuminanceThresholding::TimeConstantTableEntry,13ul>::operator[][abi:de200100](this + 60, i);
          *&v6 = *(std::array<PerceptualLuminanceThresholding::TimeConstantTableEntry,13ul>::operator[][abi:de200100](this + 60, i - 1) + 4);
          v2 = std::array<PerceptualLuminanceThresholding::TimeConstantTableEntry,13ul>::operator[][abi:de200100](this + 60, i);
          __os_log_helper_16_0_7_8_0_8_0_4_0_8_0_8_0_8_0_8_0(v20, COERCE__INT64(a2), COERCE__INT64(v18), i, v4, v5, v6, COERCE__INT64(*(v2 + 4)));
          _os_log_debug_impl(&dword_1DE8E5000, v8, OS_LOG_TYPE_DEBUG, "Pdelta=%f timeConstant=%f i=%d  Pdeltas={%f, %f}  Ts={%f, %f}", v20, 0x44u);
        }
      }

      else
      {
        v18 = *(std::array<PerceptualLuminanceThresholding::TimeConstantTableEntry,13ul>::operator[][abi:de200100](this + 60, 0) + 4);
        if (*(this + 2))
        {
          v14 = *(this + 2);
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v13 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v13 = init_default_corebrightness_log();
          }

          v14 = v13;
        }

        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          __os_log_helper_16_0_3_8_0_8_0_4_0(v21, COERCE__INT64(a2), COERCE__INT64(v18), 0);
          _os_log_debug_impl(&dword_1DE8E5000, v14, OS_LOG_TYPE_DEBUG, "Pdelta=%f timeConstant=%f i=%d", v21, 0x1Cu);
        }
      }

      break;
    }
  }

  *MEMORY[0x1E69E9840];
  return v18;
}

uint64_t __os_log_helper_16_0_3_8_0_8_0_4_0(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  *result = 0;
  *(result + 1) = 3;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 4;
  *(result + 24) = a4;
  return result;
}

uint64_t __os_log_helper_16_0_7_8_0_8_0_4_0_8_0_8_0_8_0_8_0(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *result = 0;
  *(result + 1) = 7;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 4;
  *(result + 24) = a4;
  *(result + 28) = 0;
  *(result + 29) = 8;
  *(result + 30) = a5;
  *(result + 38) = 0;
  *(result + 39) = 8;
  *(result + 40) = a6;
  *(result + 48) = 0;
  *(result + 49) = 8;
  *(result + 50) = a7;
  *(result + 58) = 0;
  *(result + 59) = 8;
  *(result + 60) = a8;
  return result;
}

void PerceptualLuminanceThresholding_1nit::PerceptualLuminanceThresholding_1nit(PerceptualLuminanceThresholding_1nit *this, unsigned int a2, float a3, float a4, char a5)
{
  v17 = this;
  v16 = a2;
  v15 = a3;
  v14 = a4;
  v13 = a5;
  v18 = this;
  PerceptualLuminanceThresholding::PerceptualLuminanceThresholding(this, a3, a4, a5 & 1, 1.0);
  *this = &unk_1F599BB60;
  *(this + 42) = 0.25;
  *(this + 43) = 1052602532;
  *(this + 44) = 1036831949;
  if (*(this + 2))
  {
    v8 = *(this + 2);
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v8 = inited;
  }

  v12 = v8;
  v11 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    log = v12;
    type = v11;
    __os_log_helper_16_0_0(v10);
    _os_log_impl(&dword_1DE8E5000, log, type, "Using 1nit PLT logic", v10, 2u);
  }

  PerceptualLuminanceThresholding::SetPthresholdDim(this, 0.1);
  PerceptualLuminanceThresholding::SetAggressivity(this, v16);
}

{
  PerceptualLuminanceThresholding_1nit::PerceptualLuminanceThresholding_1nit(this, a2, a3, a4, a5 & 1);
}

void PerceptualLuminanceThresholding::~PerceptualLuminanceThresholding(PerceptualLuminanceThresholding *this)
{
  ;
}

{
  __break(1u);
}

{
  __break(1u);
}

uint64_t PerceptualLuminanceThresholding_1nit::shallUpdateBacklight(PerceptualLuminanceThresholding_1nit *this, float a2, float a3, float a4, char a5, char a6, float a7, float a8, char a9)
{
  v68 = *MEMORY[0x1E69E9840];
  v61 = this;
  v60 = a2;
  v59 = a3;
  v58 = a4;
  v57 = a5;
  v56 = a6;
  v55 = a7;
  v54 = a8;
  v53 = a9;
  v52 = a4 - a2;
  v51 = 0.0;
  v50 = 1.0;
  v49 = 1.0;
  if (a3 > *(this + 42))
  {
    if (v59 > *(this + 43))
    {
      v51 = *(this + 44);
    }

    else
    {
      v51 = linear_interpolation(v59, *(this + 42), *(this + 42), *(this + 43), *(this + 44));
    }
  }

  else
  {
    v51 = *(this + 42);
  }

  if (*(this + 10))
  {
    v49 = *(this + 12);
    if (v60 > v51)
    {
      v50 = *(this + 11);
      if (v54 < *(this + 14) && v55 > *(this + 13))
      {
        v50 = v50 / 2.0;
      }
    }
  }

  v48 = v51 * v50;
  v47 = *(this + 7) * v49;
  if (*(this + 2))
  {
    v28 = *(this + 2);
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v28 = inited;
  }

  v46 = v28;
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_14_8_32_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0(v67, "shallUpdateBacklight", COERCE__INT64(v60), COERCE__INT64(v59), COERCE__INT64(v58), COERCE__INT64(v52), COERCE__INT64(v48), COERCE__INT64(v51), COERCE__INT64(v50), COERCE__INT64(v47), COERCE__INT64(*(this + 7)), COERCE__INT64(v49), COERCE__INT64(*(this + 42)), COERCE__INT64(*(this + 43)), COERCE__INT64(*(this + 44)));
    _os_log_debug_impl(&dword_1DE8E5000, v46, type, "%s: Pstart=%f Pcurrent=%f Pnewtarget=%f Pdelta=%f Pthreshold_dim=%f (%f * %f) Pthreshold_brighten=%f (%f * %f) plt_x=%f plt_y=%f plt_z=%f", v67, 0x8Eu);
  }

  if (v58 >= 0.97 && v52 > 0.0)
  {
    if (*(this + 2))
    {
      v26 = *(this + 2);
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v25 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v25 = init_default_corebrightness_log();
      }

      v26 = v25;
    }

    oslog = v26;
    v43 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v23 = oslog;
      v24 = v43;
      __os_log_helper_16_0_0(v42);
      _os_log_debug_impl(&dword_1DE8E5000, v23, v24, "Forcing backlight update due to (Pnewtarget >= 0.97f && Pdelta > 0)", v42, 2u);
    }

    v62 = 1;
    goto LABEL_89;
  }

  v22 = 1;
  if (v52 <= v47)
  {
    v22 = v52 < -v48;
  }

  v41 = v22;
  if ((v57 & 1) == 0 && v41)
  {
    if (*(this + 2))
    {
      v21 = *(this + 2);
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v20 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v20 = init_default_corebrightness_log();
      }

      v21 = v20;
    }

    v40 = v21;
    v39 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_2_8_0_8_0(v66, COERCE__INT64(-v48), COERCE__INT64(v47));
      _os_log_debug_impl(&dword_1DE8E5000, v40, v39, "Ramp is not in progress. Thresholds (%f, %f) are satisfied", v66, 0x16u);
    }

    v62 = 1;
    goto LABEL_89;
  }

  if ((v57 & 1) != 0 && v41)
  {
    v38 = 1041865114;
    v37 = vabds_f32(v54, 1.0) > 0.15;
    if (v37 || (v56 & 1) != 0)
    {
      if (*(this + 2))
      {
        v19 = *(this + 2);
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v18 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v18 = init_default_corebrightness_log();
        }

        v19 = v18;
      }

      v36 = v19;
      v35 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_4_8_0_8_0_8_0_8_0(v65, COERCE__INT64(-v48), COERCE__INT64(v47), 0x402E000020000000, COERCE__INT64(v54));
        _os_log_debug_impl(&dword_1DE8E5000, v36, v35, "Ramp in progress. Thresholds (%f,%f) are satisfied. Lux change is bigger than %.1f%% (ratio %.3f)", v65, 0x2Au);
      }

      v62 = 1;
      goto LABEL_89;
    }
  }

  v34 = 1030590824;
  v33 = fabsf(v52) > 0.058;
  if ((v57 & 1) == 0 || (v53 & 1) != 0 || v60 > *(this + 42) || v58 > *(this + 42))
  {
    goto LABEL_88;
  }

  if (*(this + 2))
  {
    v17 = *(this + 2);
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v16 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      v16 = init_default_corebrightness_log();
    }

    v17 = v16;
  }

  v32 = v17;
  v31 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v14 = v32;
    v15 = v31;
    __os_log_helper_16_0_0(v30);
    _os_log_debug_impl(&dword_1DE8E5000, v14, v15, "1nit PLT extension", v30, 2u);
  }

  if (v58 > v59)
  {
    if (*(this + 2))
    {
      v13 = *(this + 2);
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v12 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v12 = init_default_corebrightness_log();
      }

      v13 = v12;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_2_8_0_8_0(v64, COERCE__INT64(v58), COERCE__INT64(v59));
      _os_log_debug_impl(&dword_1DE8E5000, v13, OS_LOG_TYPE_DEBUG, "Not changing ramp target, because Pnewtarget=%f > Pcurrent=%f", v64, 0x16u);
    }

    v62 = 0;
    goto LABEL_89;
  }

  if (!v33)
  {
LABEL_88:
    v62 = 0;
    goto LABEL_89;
  }

  if (*(this + 2))
  {
    v11 = *(this + 2);
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v10 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      v10 = init_default_corebrightness_log();
    }

    v11 = v10;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_2_8_0_8_0(v63, 0xBFADB22D00000000, 0x3FADB22D00000000);
    _os_log_debug_impl(&dword_1DE8E5000, v11, OS_LOG_TYPE_DEBUG, "Ramp to stuck zone in progress. Thresholds (%f,%f) are satisfied.", v63, 0x16u);
  }

  v62 = 1;
LABEL_89:
  *MEMORY[0x1E69E9840];
  return v62 & 1;
}

uint64_t __os_log_helper_16_2_14_8_32_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *result = 2;
  *(result + 1) = 14;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 0;
  *(result + 33) = 8;
  *(result + 34) = a5;
  *(result + 42) = 0;
  *(result + 43) = 8;
  *(result + 44) = a6;
  *(result + 52) = 0;
  *(result + 53) = 8;
  *(result + 54) = a7;
  *(result + 62) = 0;
  *(result + 63) = 8;
  *(result + 64) = a8;
  *(result + 72) = 0;
  *(result + 73) = 8;
  *(result + 74) = a9;
  *(result + 82) = 0;
  *(result + 83) = 8;
  *(result + 84) = a10;
  *(result + 92) = 0;
  *(result + 93) = 8;
  *(result + 94) = a11;
  *(result + 102) = 0;
  *(result + 103) = 8;
  *(result + 104) = a12;
  *(result + 112) = 0;
  *(result + 113) = 8;
  *(result + 114) = a13;
  *(result + 122) = 0;
  *(result + 123) = 8;
  *(result + 124) = a14;
  *(result + 132) = 0;
  *(result + 133) = 8;
  *(result + 134) = a15;
  return result;
}

void PerceptualLuminanceThresholding_1nit::SetFloatProperty(PerceptualLuminanceThresholding_1nit *this, NSString *a2, float a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = this;
  v13 = a2;
  v12 = a3;
  if (*(this + 2))
  {
    v10 = *(this + 2);
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v10 = inited;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_64_8_0(v18, v13, COERCE__INT64(v12));
    _os_log_debug_impl(&dword_1DE8E5000, v10, OS_LOG_TYPE_DEBUG, "Received property %@ = %f", v18, 0x16u);
  }

  if ([v13 isEqualToString:@"PLT_X"])
  {
    if (v12 >= *(this + 43))
    {
      if (*(this + 2))
      {
        v8 = *(this + 2);
      }

      else
      {
        v7 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
        v8 = v7;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_2_8_0_8_0(v17, COERCE__INT64(v12), COERCE__INT64(*(this + 43)));
        _os_log_debug_impl(&dword_1DE8E5000, v8, OS_LOG_TYPE_DEBUG, "Clamping PLT_X=%f to PLT_Y=%f (X can't be larger than Y)", v17, 0x16u);
      }
    }

    *(this + 42) = *std::min[abi:de200100]<float>(&v12, this + 43);
  }

  else if ([v13 isEqualToString:@"PLT_Y"])
  {
    if (v12 <= *(this + 42))
    {
      if (*(this + 2))
      {
        v6 = *(this + 2);
      }

      else
      {
        v5 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
        v6 = v5;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_2_8_0_8_0(v16, COERCE__INT64(v12), COERCE__INT64(*(this + 42)));
        _os_log_debug_impl(&dword_1DE8E5000, v6, OS_LOG_TYPE_DEBUG, "Clamping PLT_Y=%f to PLT_X=%f (Y can't be smaller than X)", v16, 0x16u);
      }
    }

    *(this + 43) = *std::max[abi:de200100]<float>(&v12, this + 42);
  }

  else if ([v13 isEqualToString:@"PLT_Z"])
  {
    *(this + 44) = v12;
  }

  if (*(this + 2))
  {
    v4 = *(this + 2);
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v3 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      v3 = init_default_corebrightness_log();
    }

    v4 = v3;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_3_8_0_8_0_8_0(v15, COERCE__INT64(*(this + 42)), COERCE__INT64(*(this + 43)), COERCE__INT64(*(this + 44)));
    _os_log_debug_impl(&dword_1DE8E5000, v4, OS_LOG_TYPE_DEBUG, "PLT_X=%f PLT_Y=%f PLT_Z=%f", v15, 0x20u);
  }

  *MEMORY[0x1E69E9840];
}

void PerceptualLuminanceThresholding_legacy::PerceptualLuminanceThresholding_legacy(PerceptualLuminanceThresholding_legacy *this, unsigned int a2, float a3, float a4, char a5)
{
  v17 = this;
  v16 = a2;
  v15 = a3;
  v14 = a4;
  v13 = a5;
  v18 = this;
  PerceptualLuminanceThresholding::PerceptualLuminanceThresholding(this, a3, a4, a5 & 1, 2.0);
  *this = &unk_1F599BB90;
  if (*(this + 2))
  {
    v8 = *(this + 2);
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v8 = inited;
  }

  v12 = v8;
  v11 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    log = v12;
    type = v11;
    __os_log_helper_16_0_0(v10);
    _os_log_impl(&dword_1DE8E5000, log, type, "Using legacy PLT logic", v10, 2u);
  }

  PerceptualLuminanceThresholding::SetAggressivity(this, v16);
}

{
  PerceptualLuminanceThresholding_legacy::PerceptualLuminanceThresholding_legacy(this, a2, a3, a4, a5 & 1);
}

void PerceptualLuminanceThresholding_1nit::~PerceptualLuminanceThresholding_1nit(PerceptualLuminanceThresholding_1nit *this)
{
  PerceptualLuminanceThresholding_1nit::~PerceptualLuminanceThresholding_1nit(this);
}

{
  PerceptualLuminanceThresholding_1nit::~PerceptualLuminanceThresholding_1nit(this);
  MEMORY[0x1E12C4020](this, 0x1081C40BE6C51FCLL);
}

{
  PerceptualLuminanceThresholding::~PerceptualLuminanceThresholding(this);
}

void PerceptualLuminanceThresholding_legacy::~PerceptualLuminanceThresholding_legacy(PerceptualLuminanceThresholding_legacy *this)
{
  PerceptualLuminanceThresholding_legacy::~PerceptualLuminanceThresholding_legacy(this);
}

{
  PerceptualLuminanceThresholding_legacy::~PerceptualLuminanceThresholding_legacy(this);
  MEMORY[0x1E12C4020](this, 0x1081C40B823A476);
}

{
  PerceptualLuminanceThresholding::~PerceptualLuminanceThresholding(this);
}

float *std::min[abi:de200100]<float,std::__less<void,void>>(float *a1, float *a2)
{
  if (std::__less<void,void>::operator()[abi:de200100]<float,float>(&v6, a2, a1))
  {
    return a2;
  }

  else
  {
    return a1;
  }
}

float *std::max[abi:de200100]<float,std::__less<void,void>>(float *a1, float *a2)
{
  if (std::__less<void,void>::operator()[abi:de200100]<float,float>(&v6, a1, a2))
  {
    return a2;
  }

  else
  {
    return a1;
  }
}

uint64_t __os_log_helper_16_0_4_8_0_4_0_8_0_8_0(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  *result = 0;
  *(result + 1) = 4;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 0;
  *(result + 19) = 8;
  *(result + 20) = a4;
  *(result + 28) = 0;
  *(result + 29) = 8;
  *(result + 30) = a5;
  return result;
}

uint64_t __os_log_helper_16_2_3_8_64_8_64_8_64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 64;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

__CFString *aabUpdateStrategyTypeToString(uint64_t a1)
{
  v2 = 0;
  switch(a1)
  {
    case 0:
      return @"preference based";
    case 1:
      return @"BOLTS";
    case 2:
      return @"hybrid with pref based as main and BOLTS as alternative";
    case 3:
      return @"hybrid with BOLTS as main and pref based as alternative";
  }

  return v2;
}

{
  v2 = 0;
  switch(a1)
  {
    case 0:
      return @"preference based";
    case 1:
      return @"BOLTS";
    case 2:
      return @"hybrid with pref based as main and BOLTS as alternative";
    case 3:
      return @"hybrid with BOLTS as main and pref based as alternative";
  }

  return v2;
}

{
  v2 = 0;
  switch(a1)
  {
    case 0:
      return @"preference based";
    case 1:
      return @"BOLTS";
    case 2:
      return @"hybrid with pref based as main and BOLTS as alternative";
    case 3:
      return @"hybrid with BOLTS as main and pref based as alternative";
  }

  return v2;
}

{
  v2 = 0;
  switch(a1)
  {
    case 0:
      return @"preference based";
    case 1:
      return @"BOLTS";
    case 2:
      return @"hybrid with pref based as main and BOLTS as alternative";
    case 3:
      return @"hybrid with BOLTS as main and pref based as alternative";
  }

  return v2;
}

uint64_t __os_log_helper_16_2_2_4_0_8_64(uint64_t result, int a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 64;
  *(result + 9) = 8;
  *(result + 10) = a3;
  return result;
}

uint64_t __os_log_helper_16_2_3_8_64_8_64_8_34(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 34;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

uint64_t __os_log_helper_16_2_3_8_64_8_0_8_64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 64;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

uint64_t __os_log_helper_16_2_2_8_0_8_64(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

uint64_t __os_log_helper_16_2_3_8_64_8_64_8_32(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 32;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

uint64_t __os_log_helper_16_2_3_8_64_8_64_4_0(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 4;
  *(result + 24) = a4;
  return result;
}

uint64_t __os_log_helper_16_0_3_8_0_4_0_8_0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  *result = 0;
  *(result + 1) = 3;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 0;
  *(result + 19) = 8;
  *(result + 20) = a4;
  return result;
}

uint64_t keyboardUsesAdjustedBrightnessCurve(int a1)
{
  v2 = 0;
  if (a1 == 630 || a1 == 631 || a1 == 632 || a1 == 633 || a1 == 634 || a1 == 635 || a1 == 636 || a1 == 637)
  {
    v2 = 1;
  }

  return v2 & 1;
}

uint64_t __os_log_helper_16_0_7_8_0_8_0_8_0_8_0_8_0_8_0_8_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *result = 0;
  *(result + 1) = 7;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 0;
  *(result + 33) = 8;
  *(result + 34) = a5;
  *(result + 42) = 0;
  *(result + 43) = 8;
  *(result + 44) = a6;
  *(result + 52) = 0;
  *(result + 53) = 8;
  *(result + 54) = a7;
  *(result + 62) = 0;
  *(result + 63) = 8;
  *(result + 64) = a8;
  return result;
}

unint64_t load_array_from_reader<unsigned int>(void *a1, uint64_t a2, void *a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = 0;
  v5 = [a1 copyProperty:a2];
  if (!v5)
  {
    return v6;
  }

  v4 = 0;
  v6 = create_array_from_cfdata<unsigned int>(v5, &v4);
  MEMORY[0x1E69E5920](v5);
  if (v6)
  {
    *v7 = v4;
  }

  return v6;
}

unint64_t load_array_from_reader<short>(void *a1, uint64_t a2, void *a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = 0;
  v5 = [a1 copyProperty:a2];
  if (!v5)
  {
    return v6;
  }

  v4 = 0;
  v6 = create_array_from_cfdata<short>(v5, &v4);
  MEMORY[0x1E69E5920](v5);
  if (v6)
  {
    *v7 = v4;
  }

  return v6;
}

unint64_t load_array_from_reader<unsigned short>(void *a1, uint64_t a2, void *a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = 0;
  v5 = [a1 copyProperty:a2];
  if (!v5)
  {
    return v6;
  }

  v4 = 0;
  v6 = create_array_from_cfdata<unsigned short>(v5, &v4);
  MEMORY[0x1E69E5920](v5);
  if (v6)
  {
    *v7 = v4;
  }

  return v6;
}

unint64_t load_array_from_reader<float>(void *a1, uint64_t a2, void *a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = 0;
  v5 = [a1 copyProperty:a2];
  if (!v5)
  {
    return v6;
  }

  v4 = 0;
  v6 = create_array_from_cfdata<float>(v5, &v4);
  MEMORY[0x1E69E5920](v5);
  if (v6)
  {
    *v7 = v4;
  }

  return v6;
}

float *std::transform[abi:de200100]<unsigned int *,float *,-[CBIORegistryParser loadIOFixedArray:toDestination:]::$_0>(int *a1, int *a2, float *a3)
{
  while (a1 != a2)
  {
    *a3++ = [CBIORegistryParser loadIOFixedArray:toDestination:]::$_0::operator()(&v7, a1++);
  }

  return a3;
}

uint64_t std::unique_ptr<unsigned int,void (*)(void *)>::~unique_ptr[abi:de200100](uint64_t a1)
{
  std::unique_ptr<unsigned int,void (*)(void *)>::~unique_ptr[abi:de200100](a1);
  return a1;
}

{
  std::unique_ptr<unsigned int,void (*)(void *)>::reset[abi:de200100](a1, 0);
  return a1;
}

uint64_t load_from_reader<int>(void *a1, uint64_t a2, _DWORD *a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = 0;
  if (a3)
  {
    v5 = [v9 copyProperty:v8];
    if (v5)
    {
      value_from = get_value_from_cfdata<int>(v5, &v6);
      MEMORY[0x1E69E5920](v5);
      if (value_from)
      {
        *v7 = v6;
        v10 = 1;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t load_from_reader<float>(void *a1, uint64_t a2, _DWORD *a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = 0;
  if (a3)
  {
    v5 = [v9 copyProperty:v8];
    if (v5)
    {
      value_from = get_value_from_cfdata<float>(v5, &v6);
      MEMORY[0x1E69E5920](v5);
      if (value_from)
      {
        *v7 = v6;
        v10 = 1;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t load_from_reader<unsigned int>(void *a1, uint64_t a2, _DWORD *a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = 0;
  if (a3)
  {
    v5 = [v9 copyProperty:v8];
    if (v5)
    {
      value_from = get_value_from_cfdata<unsigned int>(v5, &v6);
      MEMORY[0x1E69E5920](v5);
      if (value_from)
      {
        *v7 = v6;
        v10 = 1;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t __os_log_helper_16_2_3_8_64_4_0_8_64(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 64;
  *(result + 19) = 8;
  *(result + 20) = a4;
  return result;
}

unint64_t create_array_from_cfdata<short>(const void *a1, UInt8 **a2)
{
  count = 0;
  buffer = 0;
  if (!a1)
  {
    goto LABEL_8;
  }

  v3 = CFGetTypeID(a1);
  if (v3 != CFDataGetTypeID())
  {
    goto LABEL_8;
  }

  count = CFDataGetLength(a1) / 2uLL;
  if (!(CFDataGetLength(a1) % 2uLL))
  {
    buffer = malloc_type_calloc(count, 2uLL, 0x1000040BDFB0063uLL);
    if (buffer)
    {
      v9.location = 0;
      v9.length = 2 * count;
      CFDataGetBytes(a1, v9, buffer);
    }

    else
    {
      count = 0;
    }

LABEL_8:
    *a2 = buffer;
    return count;
  }

  return 0;
}

unint64_t create_array_from_cfdata<unsigned short>(const void *a1, UInt8 **a2)
{
  count = 0;
  buffer = 0;
  if (!a1)
  {
    goto LABEL_8;
  }

  v3 = CFGetTypeID(a1);
  if (v3 != CFDataGetTypeID())
  {
    goto LABEL_8;
  }

  count = CFDataGetLength(a1) / 2uLL;
  if (!(CFDataGetLength(a1) % 2uLL))
  {
    buffer = malloc_type_calloc(count, 2uLL, 0x1000040BDFB0063uLL);
    if (buffer)
    {
      v9.location = 0;
      v9.length = 2 * count;
      CFDataGetBytes(a1, v9, buffer);
    }

    else
    {
      count = 0;
    }

LABEL_8:
    *a2 = buffer;
    return count;
  }

  return 0;
}

unint64_t create_array_from_cfdata<float>(const void *a1, UInt8 **a2)
{
  count = 0;
  buffer = 0;
  if (!a1)
  {
    goto LABEL_8;
  }

  v3 = CFGetTypeID(a1);
  if (v3 != CFDataGetTypeID())
  {
    goto LABEL_8;
  }

  count = CFDataGetLength(a1) / 4uLL;
  if (!(CFDataGetLength(a1) % 4uLL))
  {
    buffer = malloc_type_calloc(count, 4uLL, 0x100004052888210uLL);
    if (buffer)
    {
      v9.location = 0;
      v9.length = 4 * count;
      CFDataGetBytes(a1, v9, buffer);
    }

    else
    {
      count = 0;
    }

LABEL_8:
    *a2 = buffer;
    return count;
  }

  return 0;
}

void *std::unique_ptr<unsigned int,void (*)(void *)>::unique_ptr[abi:de200100]<true,void>(void *result, uint64_t a2, void *a3)
{
  *result = a2;
  result[1] = *a3;
  return result;
}

uint64_t std::unique_ptr<unsigned int,void (*)(void *)>::reset[abi:de200100](uint64_t result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    return (*(result + 8))(v2);
  }

  return result;
}

uint64_t get_value_from_cfdata<float>(const void *a1, _DWORD *a2)
{
  v7 = a1;
  v6 = a2;
  v5 = 0;
  *buffer = 0;
  if (a1)
  {
    v3 = CFGetTypeID(v7);
    if (v3 == CFDataGetTypeID() && CFDataGetLength(v7) == 4)
    {
      v9 = 0;
      v8 = 4;
      v10 = 0;
      v11 = 4;
      v12.location = 0;
      v12.length = 4;
      CFDataGetBytes(v7, v12, buffer);
      v5 = 1;
    }
  }

  *v6 = *buffer;
  return v5 & 1;
}

id getMLFeatureValueClass_0()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = getMLFeatureValueClass_softClass_0;
  v13 = getMLFeatureValueClass_softClass_0;
  if (!getMLFeatureValueClass_softClass_0)
  {
    v2 = MEMORY[0x1E69E9820];
    v3 = -1073741824;
    v4 = 0;
    v5 = __getMLFeatureValueClass_block_invoke_0;
    v6 = &unk_1E867B4F8;
    v7 = &v9;
    __getMLFeatureValueClass_block_invoke_0(&v2);
  }

  v1 = MEMORY[0x1E69E5928](v10[3]);
  _Block_object_dispose(&v9, 8);

  return v1;
}

id getMLModelClass_0()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = getMLModelClass_softClass_0;
  v13 = getMLModelClass_softClass_0;
  if (!getMLModelClass_softClass_0)
  {
    v2 = MEMORY[0x1E69E9820];
    v3 = -1073741824;
    v4 = 0;
    v5 = __getMLModelClass_block_invoke_0;
    v6 = &unk_1E867B4F8;
    v7 = &v9;
    __getMLModelClass_block_invoke_0(&v2);
  }

  v1 = MEMORY[0x1E69E5928](v10[3]);
  _Block_object_dispose(&v9, 8);

  return v1;
}

id getMLPredictionOptionsClass_0()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = getMLPredictionOptionsClass_softClass_0;
  v13 = getMLPredictionOptionsClass_softClass_0;
  if (!getMLPredictionOptionsClass_softClass_0)
  {
    v2 = MEMORY[0x1E69E9820];
    v3 = -1073741824;
    v4 = 0;
    v5 = __getMLPredictionOptionsClass_block_invoke_0;
    v6 = &unk_1E867B4F8;
    v7 = &v9;
    __getMLPredictionOptionsClass_block_invoke_0(&v2);
  }

  v1 = MEMORY[0x1E69E5928](v10[3]);
  _Block_object_dispose(&v9, 8);

  return v1;
}

id getMLArrayBatchProviderClass_0()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = getMLArrayBatchProviderClass_softClass_0;
  v13 = getMLArrayBatchProviderClass_softClass_0;
  if (!getMLArrayBatchProviderClass_softClass_0)
  {
    v2 = MEMORY[0x1E69E9820];
    v3 = -1073741824;
    v4 = 0;
    v5 = __getMLArrayBatchProviderClass_block_invoke_0;
    v6 = &unk_1E867B4F8;
    v7 = &v9;
    __getMLArrayBatchProviderClass_block_invoke_0(&v2);
  }

  v1 = MEMORY[0x1E69E5928](v10[3]);
  _Block_object_dispose(&v9, 8);

  return v1;
}

uint64_t __getMLFeatureValueClass_block_invoke_0(uint64_t a1)
{
  CoreMLLibrary_0();
  Class = objc_getClass("MLFeatureValue");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np();
  }

  getMLFeatureValueClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t CoreMLLibrary_0()
{
  v2 = 0;
  v1 = CoreMLLibraryCore_0(&v2);
  if (!v1)
  {
    abort_report_np();
  }

  if (v2)
  {
    free(v2);
  }

  return v1;
}

uint64_t CoreMLLibraryCore_0(uint64_t a1)
{
  v10 = a1;
  v8 = CoreMLLibraryCore_frameworkLibrary_0;
  v9 = CoreMLLibraryCore_frameworkLibrary_0;
  if (!CoreMLLibraryCore_frameworkLibrary_0)
  {
    v2 = MEMORY[0x1E69E9820];
    v3 = -1073741824;
    v4 = 0;
    v5 = __CoreMLLibraryCore_block_invoke_0;
    v6 = &__block_descriptor_40_e5_v8__0l;
    v7 = v10;
    __CoreMLLibraryCore_block_invoke_0(&v2);
  }

  return CoreMLLibraryCore_frameworkLibrary_0;
}

uint64_t __CoreMLLibraryCore_block_invoke_0(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreMLLibraryCore_frameworkLibrary_0 = result;
  *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __getMLModelClass_block_invoke_0(uint64_t a1)
{
  CoreMLLibrary_0();
  Class = objc_getClass("MLModel");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np();
  }

  getMLModelClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __getMLPredictionOptionsClass_block_invoke_0(uint64_t a1)
{
  CoreMLLibrary_0();
  Class = objc_getClass("MLPredictionOptions");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np();
  }

  getMLPredictionOptionsClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __getMLArrayBatchProviderClass_block_invoke_0(uint64_t a1)
{
  CoreMLLibrary_0();
  Class = objc_getClass("MLArrayBatchProvider");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np();
  }

  getMLArrayBatchProviderClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void CBHybridUpdateCurveStrategy::CBHybridUpdateCurveStrategy(CBHybridUpdateCurveStrategy *this, AAB::UpdateCurveStrategy *a2, AAB::UpdateCurveStrategy *a3)
{
  v24 = this;
  v23 = a2;
  v22 = a3;
  v25 = this;
  AAB::UpdateCurveStrategy::UpdateCurveStrategy(this);
  *this = &unk_1F599BC00;
  *(this + 1) = os_log_create("com.apple.CoreBrightness.CBHybridUpdateCurveStrategy", "default");
  if (!*(this + 1))
  {
    v11 = (_COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log());
    v21 = v11;
    v20 = 16;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      log = v21;
      type = v20;
      __os_log_helper_16_0_0(v19);
      _os_log_error_impl(&dword_1DE8E5000, log, type, "Failed to create CBHybridUpdateCurveStrategy log handle", v19, 2u);
    }
  }

  if (!v23)
  {
    v8 = (_COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log());
    v18 = v8;
    v17 = 16;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v6 = v18;
      v7 = v17;
      __os_log_helper_16_0_0(v16);
      _os_log_error_impl(&dword_1DE8E5000, v6, v7, "Baseline strategy is null.", v16, 2u);
    }
  }

  if (!v22)
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v15 = inited;
    v14 = 16;
    if (os_log_type_enabled(inited, OS_LOG_TYPE_ERROR))
    {
      v3 = v15;
      v4 = v14;
      __os_log_helper_16_0_0(v13);
      _os_log_error_impl(&dword_1DE8E5000, v3, v4, "Alternative strategy is null.", v13, 2u);
    }
  }

  *(this + 2) = v23;
  *(this + 3) = v22;
}

{
  CBHybridUpdateCurveStrategy::CBHybridUpdateCurveStrategy(this, a2, a3);
}

void CBHybridUpdateCurveStrategy::~CBHybridUpdateCurveStrategy(CBHybridUpdateCurveStrategy *this)
{
  *this = &unk_1F599BC00;
  if (*(this + 2))
  {
    v2 = *(this + 2);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  if (*(this + 3))
  {
    v1 = *(this + 3);
    if (v1)
    {
      (*(*v1 + 8))(v1);
    }
  }

  if (*(this + 1))
  {
    MEMORY[0x1E69E5920](*(this + 1));
    *(this + 1) = 0;
  }

  AAB::UpdateCurveStrategy::~UpdateCurveStrategy(this);
}

{
  CBHybridUpdateCurveStrategy::~CBHybridUpdateCurveStrategy(this);
}

{
  CBHybridUpdateCurveStrategy::~CBHybridUpdateCurveStrategy(this);
  MEMORY[0x1E12C4020](this, 0xA1C40711E6FFCLL);
}

void CBHybridUpdateCurveStrategy::UpdateCurve(uint64_t a1, uint64_t a2, uint64_t a3, float a4, float a5, float a6)
{
  v18 = __PAIR64__(LODWORD(a5), LODWORD(a4));
  v19 = a6;
  v17 = a1;
  v16 = a2;
  v15 = a3;
  if (*(a1 + 16))
  {
    v6 = *(a1 + 16);
    v13 = v18;
    v14 = v19;
    (*(*v6 + 24))(v6, v16, v15, *&v18, *(&v18 + 1), v19);
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    oslog = inited;
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(inited, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      v8 = type;
      __os_log_helper_16_0_0(v10);
      _os_log_error_impl(&dword_1DE8E5000, log, v8, "Baseline strategy were not initialized.", v10, 2u);
    }
  }
}

void CBHybridUpdateCurveStrategy::UpdateCurveAndCappedCurve(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float a6, float a7, float a8)
{
  v22 = __PAIR64__(LODWORD(a7), LODWORD(a6));
  v23 = a8;
  v21 = a1;
  v20 = a2;
  v19 = a3;
  v18 = a4;
  v17 = a5;
  if (*(a1 + 16))
  {
    v8 = *(a1 + 16);
    v15 = v22;
    v16 = v23;
    (*(*v8 + 32))(v8, v20, v19, v18, v17, *&v22, *(&v22 + 1), v23);
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    oslog = inited;
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(inited, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      v10 = type;
      __os_log_helper_16_0_0(v12);
      _os_log_error_impl(&dword_1DE8E5000, log, v10, "Baseline strategy were not initialized.", v12, 2u);
    }
  }
}

void CBHybridUpdateCurveStrategy::UpdateAlternativeCurveAndCappedCurve(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float a6, float a7, float a8)
{
  v22 = __PAIR64__(LODWORD(a7), LODWORD(a6));
  v23 = a8;
  v21 = a1;
  v20 = a2;
  v19 = a3;
  v18 = a4;
  v17 = a5;
  if (*(a1 + 24))
  {
    v8 = *(a1 + 24);
    v15 = v22;
    v16 = v23;
    (*(*v8 + 32))(v8, v20, v19, v18, v17, *&v22, *(&v22 + 1), v23);
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    oslog = inited;
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(inited, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      v10 = type;
      __os_log_helper_16_0_0(v12);
      _os_log_error_impl(&dword_1DE8E5000, log, v10, "Alternative strategy were not initialized.", v12, 2u);
    }
  }
}

uint64_t CBHybridUpdateCurveStrategy::curveUpdates@<X0>(CBHybridUpdateCurveStrategy *this@<X0>, uint64_t *a2@<X8>)
{
  v9 = a2;
  v8 = this;
  v7 = 0;
  std::list<AAB::CurveUpdate>::list[abi:de200100](a2);
  (*(**(this + 2) + 48))(v6);
  std::list<AAB::CurveUpdate>::operator=(a2, v6);
  std::list<AAB::CurveUpdate>::~list(v6);
  result = std::list<AAB::CurveUpdate>::empty[abi:de200100](a2);
  if (result)
  {
    (*(**(this + 3) + 48))(v5);
    std::list<AAB::CurveUpdate>::operator=(a2, v5);
    return std::list<AAB::CurveUpdate>::~list(v5);
  }

  return result;
}

uint64_t CBHybridUpdateCurveStrategy::SetCurveUpdates(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (*(result + 16))
  {
    result = (*(**(result + 16) + 56))(*(result + 16), a2);
  }

  if (*(v2 + 24))
  {
    return (*(**(v2 + 24) + 56))(*(v2 + 24), a2);
  }

  return result;
}

uint64_t CBHybridUpdateCurveStrategy::Reset(uint64_t this)
{
  v1 = this;
  if (*(this + 16))
  {
    this = (*(**(this + 16) + 16))(*(this + 16));
  }

  if (*(v1 + 24))
  {
    return (*(**(v1 + 24) + 16))(*(v1 + 24));
  }

  return this;
}

uint64_t CBHybridUpdateCurveStrategy::alternativeCappedCurve(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  if (*(a1 + 24))
  {
    v3 = (*(**(a1 + 24) + 64))(*(a1 + 24), a2);
  }

  return v3 & 1;
}

uint64_t CBHybridUpdateCurveStrategy::cappedCurve(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  if (*(a1 + 16))
  {
    v3 = (*(**(a1 + 16) + 64))(*(a1 + 16), a2);
  }

  return v3 & 1;
}

uint64_t CBHybridUpdateCurveStrategy::setCappedCurve(uint64_t result, uint64_t a2)
{
  if (*(result + 16))
  {
    return (*(**(result + 16) + 80))(*(result + 16), a2);
  }

  return result;
}

uint64_t CBHybridUpdateCurveStrategy::setAlternativeCappedCurve(uint64_t result, uint64_t a2)
{
  if (*(result + 24))
  {
    return (*(**(result + 24) + 80))(*(result + 24), a2);
  }

  return result;
}

uint64_t CBHybridUpdateCurveStrategy::preservePreferences(uint64_t this)
{
  v1 = this;
  if (*(this + 16))
  {
    this = (*(**(this + 16) + 96))(*(this + 16));
  }

  if (*(v1 + 24))
  {
    return (*(**(v1 + 24) + 96))(*(v1 + 24));
  }

  return this;
}

uint64_t CBHybridUpdateCurveStrategy::curveType(CBHybridUpdateCurveStrategy *this)
{
  if (*(this + 2))
  {
    return (*(**(this + 2) + 104))(*(this + 2));
  }

  else
  {
    return 0;
  }
}

uint64_t CBHybridUpdateCurveStrategy::alternativeCurveType(CBHybridUpdateCurveStrategy *this)
{
  if (*(this + 3))
  {
    return (*(**(this + 3) + 104))(*(this + 3));
  }

  else
  {
    return 0;
  }
}

uint64_t std::list<AAB::CurveUpdate>::__move_assign(uint64_t *a1, uint64_t *a2)
{
  v7 = a1;
  v6 = a2;
  std::list<AAB::CurveUpdate>::clear[abi:de200100](a1);
  std::__list_imp<AAB::CurveUpdate>::__move_assign_alloc[abi:de200100]();
  v4 = std::list<AAB::CurveUpdate>::end[abi:de200100]();
  std::__list_const_iterator<AAB::CurveUpdate,void *>::__list_const_iterator[abi:de200100](&v5, &v4);
  return std::list<AAB::CurveUpdate>::splice(a1, v5, v6);
}

void std::__list_imp<AAB::CurveUpdate>::__move_assign_alloc[abi:de200100]()
{
  std::__list_imp<AAB::CurveUpdate>::__move_assign_alloc[abi:de200100]();
}

{
  ;
}

CFStringRef createAmmoliteKey(const char *a1, unsigned int a2)
{
  if ((a2 & 0x80000000) == 0)
  {
    return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%s-%d", a1, a2);
  }

  alloc = *MEMORY[0x1E695E480];
  SystemEncoding = CFStringGetSystemEncoding();
  return CFStringCreateWithCString(alloc, a1, SystemEncoding);
}

BOOL CFXAmmoliteSupported(io_registry_entry_t a1)
{
  v6 = a1;
  v5 = 0;
  v4 = 0;
  if (!readExactDataFromIOService(a1, @"pab-scaler-index", &v5, 4))
  {
    v5 = -1;
  }

  cf = createAmmoliteKey("aml-table-factor", v5);
  ExactDataFromIOService = 0;
  if (cf)
  {
    ExactDataFromIOService = readExactDataFromIOService(v6, cf, &v4, 4);
    CFRelease(cf);
  }

  if (!ExactDataFromIOService)
  {
    return readExactDataFromIOService(v6, @"aml-table-factor", &v4, 4);
  }

  return ExactDataFromIOService;
}

void *CFXAmmoliteCreateFromData(uint64_t a1, int a2, const __CFData *a3, float a4, float a5, float a6)
{
  v39 = *MEMORY[0x1E69E9840];
  v37 = a1;
  v36 = a2;
  v35 = a4;
  v34 = a5;
  v33 = a6;
  v32 = a3;
  v31 = 0;
  v30 = os_log_create("com.apple.CBColorModule.Primary.Ammolite", "default");
  v29 = 10;
  v28 = 40;
  if (CFDataGetLength(v32) % 40)
  {
    __assert_rtn("CFXAmmoliteCreateFromData", "Ammolite.c", 66, "CFDataGetLength(elemData) % rowSize == 0");
  }

  v27 = CFDataGetLength(v32) / 40;
  BytePtr = CFDataGetBytePtr(v32);
  v25 = malloc_type_malloc(40 * v27, 0x10000400A747E1EuLL);
  for (i = 0; i < v27; ++i)
  {
    v23 = *&BytePtr[40 * i];
    LODWORD(v6) = v36;
    v6 = *&v6;
    v7 = v23 / v6;
    v25[10 * i] = v7;
    for (j = 0; j < 3; ++j)
    {
      for (k = 0; k < 3; ++k)
      {
        LODWORD(v6) = v36;
        v6 = *&v6;
        v20 = *&BytePtr[40 * i + 4 + 12 * j + 4 * k] / v6;
        v8 = v20;
        v25[10 * i + 1 + 3 * j + k] = v8;
      }
    }
  }

  if (v30)
  {
    v15 = v30;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v15 = inited;
  }

  oslog = v15;
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    log = oslog;
    v13 = type;
    __os_log_helper_16_0_0(v17);
    _os_log_debug_impl(&dword_1DE8E5000, log, v13, "Ammolite table:", v17, 2u);
  }

  for (m = 0; m < v27; ++m)
  {
    if (v30)
    {
      v11 = v30;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v10 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v10 = init_default_corebrightness_log();
      }

      v11 = v10;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_10_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0(v38, COERCE__INT64(v25[10 * m]), COERCE__INT64(v25[10 * m + 1]), COERCE__INT64(v25[10 * m + 2]), COERCE__INT64(v25[10 * m + 3]), COERCE__INT64(v25[10 * m + 4]), COERCE__INT64(v25[10 * m + 5]), COERCE__INT64(v25[10 * m + 6]), COERCE__INT64(v25[10 * m + 7]), COERCE__INT64(v25[10 * m + 8]), COERCE__INT64(v25[10 * m + 9]));
      _os_log_debug_impl(&dword_1DE8E5000, v11, OS_LOG_TYPE_DEBUG, "\t%f: %f %f %f %f %f %f %f %f %f", v38, 0x66u);
    }
  }

  v31 = malloc_type_malloc(0x38uLL, 0x102004028F26F39uLL);
  v31[6] = v30;
  v31[1] = v27;
  *(v31 + 24) = 0;
  *(v31 + 7) = 0;
  *(v31 + 8) = v35;
  *(v31 + 9) = v34;
  *(v31 + 10) = v33;
  *v31 = v25;
  v31[2] = v37;
  if (!v31 && v30)
  {
    CFRelease(v30);
  }

  *MEMORY[0x1E69E9840];
  return v31;
}

uint64_t __os_log_helper_16_0_10_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *result = 0;
  *(result + 1) = 10;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 0;
  *(result + 33) = 8;
  *(result + 34) = a5;
  *(result + 42) = 0;
  *(result + 43) = 8;
  *(result + 44) = a6;
  *(result + 52) = 0;
  *(result + 53) = 8;
  *(result + 54) = a7;
  *(result + 62) = 0;
  *(result + 63) = 8;
  *(result + 64) = a8;
  *(result + 72) = 0;
  *(result + 73) = 8;
  *(result + 74) = a9;
  *(result + 82) = 0;
  *(result + 83) = 8;
  *(result + 84) = a10;
  *(result + 92) = 0;
  *(result + 93) = 8;
  *(result + 94) = a11;
  return result;
}

void *CFXAmmoliteCreate(io_registry_entry_t a1, uint64_t a2)
{
  v116 = *MEMORY[0x1E69E9840];
  entry = a1;
  v105 = a2;
  if (!a1)
  {
    v107 = 0;
    goto LABEL_161;
  }

  v104 = 0;
  v103 = os_log_create("com.apple.CBColorModule.Primary.Ammolite", "default");
  v102 = 0;
  v101 = 0;
  key = 0;
  v97 = 0;
  v98 = 0;
  v99 = 0;
  AmmoliteKey = 0;
  if (readExactDataFromIOService(entry, @"pab-scaler-index", &v102, 4))
  {
    if (v103)
    {
      v44 = v103;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      v44 = inited;
    }

    oslog = v44;
    type = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_1_4_0(v115, v102);
      _os_log_debug_impl(&dword_1DE8E5000, oslog, type, "Display vendor index is %d", v115, 8u);
    }

    if ((v102 & 0x80000000) != 0)
    {
      v102 = -1;
    }

    else
    {
      AmmoliteKey = createAmmoliteKey("aml-table-factor", v102);
      if (AmmoliteKey && readExactDataFromIOService(entry, AmmoliteKey, &v101, 4))
      {
        if (v103)
        {
          v42 = v103;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v41 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v41 = init_default_corebrightness_log();
          }

          v42 = v41;
        }

        v93 = v42;
        v92 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_0_1_4_0(v114, v102);
          _os_log_impl(&dword_1DE8E5000, v93, v92, "Ammolite configuration found for display vendor index: %d", v114, 8u);
        }
      }

      else
      {
        v102 = -1;
      }
    }
  }

  else
  {
    v102 = -1;
  }

  if ((v102 & 0x80000000) != 0)
  {
    if (!readExactDataFromIOService(entry, @"aml-table-factor", &v101, 4))
    {
      if (AmmoliteKey)
      {
        if (v103)
        {
          v36 = v103;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v35 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v35 = init_default_corebrightness_log();
          }

          v36 = v35;
        }

        v88 = v36;
        v87 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_2_2_8_66_8_32(v113, AmmoliteKey, "aml-table-factor");
          _os_log_impl(&dword_1DE8E5000, v88, v87, "Ammolite is not supported on this device (unable to find %{public}@ or %s in EDT)", v113, 0x16u);
        }
      }

      else
      {
        if (v103)
        {
          v34 = v103;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v33 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v33 = init_default_corebrightness_log();
          }

          v34 = v33;
        }

        v86 = v34;
        v85 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_2_1_8_32(v112, "aml-table-factor");
          _os_log_impl(&dword_1DE8E5000, v86, v85, "Ammolite is not supported on this device (unable to find %s in EDT)", v112, 0xCu);
        }
      }

      goto LABEL_152;
    }

    if (v103)
    {
      v40 = v103;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v39 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v39 = init_default_corebrightness_log();
      }

      v40 = v39;
    }

    v91 = v40;
    v90 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v37 = v91;
      v38 = v90;
      __os_log_helper_16_0_0(v89);
      _os_log_impl(&dword_1DE8E5000, v37, v38, "Ammolite global configuration found (no display vendor specific config found)", v89, 2u);
    }
  }

  if (v103)
  {
    v32 = v103;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v31 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      v31 = init_default_corebrightness_log();
    }

    v32 = v31;
  }

  v84 = v32;
  v83 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_4_0(v111, v101);
    _os_log_impl(&dword_1DE8E5000, v84, v83, "Ammolite factor: %d", v111, 8u);
  }

  v82 = 0;
  v81 = 0;
  v80 = 0;
  v99 = createAmmoliteKey("aml-abs-lux-thresh", v102);
  if (v99 && readExactDataFromIOService(entry, v99, &v82, 4))
  {
    v98 = createAmmoliteKey("aml-rel-lux-thresh", v102);
    if (v98 && readExactDataFromIOService(entry, v98, &v81, 4))
    {
      v97 = createAmmoliteKey("aml-period", v102);
      if (v97 && readExactDataFromIOService(entry, v97, &v80, 4))
      {
        v70 = 1199570944;
        v69 = v82 / 65536.0;
        v68 = v81 / 65536.0;
        v67 = v80 / 65536.0;
        if (v103)
        {
          v18 = v103;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v17 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v17 = init_default_corebrightness_log();
          }

          v18 = v17;
        }

        v66 = v18;
        v65 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_0_3_8_0_8_0_8_0(v110, COERCE__INT64(v69), COERCE__INT64(v68), COERCE__INT64(v67));
          _os_log_impl(&dword_1DE8E5000, v66, v65, "Ammolite: absLux = %f relLux = %f period = %f", v110, 0x20u);
        }

        key = createAmmoliteKey("aml-table", v102);
        if (key)
        {
          cf = IORegistryEntrySearchCFProperty(entry, "IOService", key, *MEMORY[0x1E695E480], 3u);
          if (cf && (v16 = CFGetTypeID(cf), v16 == CFDataGetTypeID()))
          {
            v60 = 10;
            v59 = 40;
            theData = cf;
            if (CFDataGetLength(cf) % 40)
            {
              __assert_rtn("CFXAmmoliteCreate", "Ammolite.c", 214, "CFDataGetLength(elemData) % rowSize == 0");
            }

            v57 = CFDataGetLength(theData) / 40;
            BytePtr = CFDataGetBytePtr(theData);
            v55 = malloc_type_malloc(40 * v57, 0x10000400A747E1EuLL);
            for (i = 0; i < v57; ++i)
            {
              v53 = *&BytePtr[40 * i];
              LODWORD(v2) = v101;
              v2 = *&v2;
              v3 = v53 / v2;
              v55[10 * i] = v3;
              for (j = 0; j < 3; ++j)
              {
                for (k = 0; k < 3; ++k)
                {
                  LODWORD(v2) = v101;
                  v2 = *&v2;
                  v50 = *&BytePtr[40 * i + 4 + 12 * j + 4 * k] / v2;
                  v4 = v50;
                  v55[10 * i + 1 + 3 * j + k] = v4;
                }
              }
            }

            if (v103)
            {
              v11 = v103;
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v10 = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                v10 = init_default_corebrightness_log();
              }

              v11 = v10;
            }

            v49 = v11;
            v48 = OS_LOG_TYPE_DEBUG;
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
            {
              v8 = v49;
              v9 = v48;
              __os_log_helper_16_0_0(v47);
              _os_log_debug_impl(&dword_1DE8E5000, v8, v9, "Ammolite table:", v47, 2u);
            }

            for (m = 0; m < v57; ++m)
            {
              if (v103)
              {
                v7 = v103;
              }

              else
              {
                if (_COREBRIGHTNESS_LOG_DEFAULT)
                {
                  v6 = _COREBRIGHTNESS_LOG_DEFAULT;
                }

                else
                {
                  v6 = init_default_corebrightness_log();
                }

                v7 = v6;
              }

              if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
              {
                __os_log_helper_16_0_10_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0(v109, COERCE__INT64(v55[10 * m]), COERCE__INT64(v55[10 * m + 1]), COERCE__INT64(v55[10 * m + 2]), COERCE__INT64(v55[10 * m + 3]), COERCE__INT64(v55[10 * m + 4]), COERCE__INT64(v55[10 * m + 5]), COERCE__INT64(v55[10 * m + 6]), COERCE__INT64(v55[10 * m + 7]), COERCE__INT64(v55[10 * m + 8]), COERCE__INT64(v55[10 * m + 9]));
                _os_log_debug_impl(&dword_1DE8E5000, v7, OS_LOG_TYPE_DEBUG, "\t%f: %f %f %f %f %f %f %f %f %f", v109, 0x66u);
              }
            }

            v104 = malloc_type_malloc(0x38uLL, 0x102004028F26F39uLL);
            v104[6] = v103;
            v104[1] = v57;
            *(v104 + 24) = 0;
            *(v104 + 7) = 0;
            *(v104 + 8) = v69;
            *(v104 + 9) = v68;
            *(v104 + 10) = v67;
            *v104 = v55;
            v104[2] = v105;
            if (cf)
            {
              CFRelease(cf);
            }
          }

          else
          {
            if (cf)
            {
              CFRelease(cf);
            }

            if (v103)
            {
              v15 = v103;
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v14 = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                v14 = init_default_corebrightness_log();
              }

              v15 = v14;
            }

            v63 = v15;
            v62 = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              v12 = v63;
              v13 = v62;
              __os_log_helper_16_0_0(v61);
              _os_log_error_impl(&dword_1DE8E5000, v12, v13, "Unable to read Ammolite table data from device tree", v61, 2u);
            }
          }
        }
      }

      else
      {
        if (v103)
        {
          v22 = v103;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v21 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v21 = init_default_corebrightness_log();
          }

          v22 = v21;
        }

        v73 = v22;
        v72 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v19 = v73;
          v20 = v72;
          __os_log_helper_16_0_0(v71);
          _os_log_error_impl(&dword_1DE8E5000, v19, v20, "Unable to read Ammolite period from device tree", v71, 2u);
        }
      }
    }

    else
    {
      if (v103)
      {
        v26 = v103;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v25 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v25 = init_default_corebrightness_log();
        }

        v26 = v25;
      }

      v76 = v26;
      v75 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v23 = v76;
        v24 = v75;
        __os_log_helper_16_0_0(v74);
        _os_log_error_impl(&dword_1DE8E5000, v23, v24, "Unable to read Ammolite relative threshold from device tree", v74, 2u);
      }
    }
  }

  else
  {
    if (v103)
    {
      v30 = v103;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v29 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v29 = init_default_corebrightness_log();
      }

      v30 = v29;
    }

    v79 = v30;
    v78 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v27 = v79;
      v28 = v78;
      __os_log_helper_16_0_0(v77);
      _os_log_error_impl(&dword_1DE8E5000, v27, v28, "Unable to read Ammolite absolute threshold from device tree", v77, 2u);
    }
  }

LABEL_152:
  if (!v104 && v103)
  {
    CFRelease(v103);
  }

  __b[0] = AmmoliteKey;
  __b[1] = v99;
  __b[2] = v98;
  __b[3] = v97;
  __b[4] = key;
  for (n = 0; n < 5; ++n)
  {
    if (__b[n])
    {
      CFRelease(__b[n]);
    }
  }

  v107 = v104;
LABEL_161:
  *MEMORY[0x1E69E9840];
  return v107;
}

uint64_t __os_log_helper_16_2_2_8_66_8_32(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 66;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 32;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

void CFXAmmoliteFree(void *a1)
{
  v8 = a1;
  if (a1)
  {
    if (*(v8 + 6))
    {
      v4 = *(v8 + 6);
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      v4 = inited;
    }

    v7 = v4;
    v6 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      log = v7;
      type = v6;
      __os_log_helper_16_0_0(v5);
      _os_log_impl(&dword_1DE8E5000, log, type, "Turning Ammolite off", v5, 2u);
    }

    CFRelease(*(v8 + 6));
    free(*v8);
    free(v8);
  }
}

uint64_t CFXAmmoliteFadeInternal(uint64_t a1, int a2, uint64_t a3, double a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v13 = a4 - *(a1 + 8);
  v10 = v13 / *a1;
  v9 = 0;
  if (*a1 == 0.0 || (v4 = v13 / *a1, v10 >= 1.0) || v13 < 0.0)
  {
    memcpy(__dst, (a1 + 20), sizeof(__dst));
    *a1 = 0;
    *(a1 + 16) = 1;
  }

  else
  {
    v11 = v10 * (a2 - 1);
    v12 = (1.0 - (v11 - v11)) * *(a3 + 4 * v11) + (v11 - v11) * *(a3 + 4 * (v11 + 1));
    for (i = 0; i < 3; ++i)
    {
      for (j = 0; j < 3; ++j)
      {
        v5 = *(a1 + 92 + 12 * i + 4 * j) + v12 * (*(a1 + 20 + 12 * i + 4 * j) - *(a1 + 92 + 12 * i + 4 * j));
        *&__dst[3 * i + j] = v5;
      }
    }

    v9 = 1;
  }

  __memcpy_chk();
  *MEMORY[0x1E69E9840];
  return v9 & 1;
}

uint64_t __os_log_helper_16_2_3_4_0_8_64_8_0(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 64;
  *(result + 9) = 8;
  *(result + 10) = a3;
  *(result + 18) = 0;
  *(result + 19) = 8;
  *(result + 20) = a4;
  return result;
}

uint64_t __os_log_helper_16_2_4_8_64_4_0_8_0_8_0(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 0;
  *(result + 19) = 8;
  *(result + 20) = a4;
  *(result + 28) = 0;
  *(result + 29) = 8;
  *(result + 30) = a5;
  return result;
}

uint64_t __os_log_helper_16_0_3_4_0_8_0_8_0(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  *result = 0;
  *(result + 1) = 3;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 0;
  *(result + 9) = 8;
  *(result + 10) = a3;
  *(result + 18) = 0;
  *(result + 19) = 8;
  *(result + 20) = a4;
  return result;
}

uint64_t __os_log_helper_16_2_4_4_0_8_66_8_66_8_0(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 66;
  *(result + 9) = 8;
  *(result + 10) = a3;
  *(result + 18) = 66;
  *(result + 19) = 8;
  *(result + 20) = a4;
  *(result + 28) = 0;
  *(result + 29) = 8;
  *(result + 30) = a5;
  return result;
}

uint64_t __os_log_helper_16_2_5_8_64_8_0_8_64_8_0_8_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *result = 2;
  *(result + 1) = 5;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 64;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 0;
  *(result + 33) = 8;
  *(result + 34) = a5;
  *(result + 42) = 0;
  *(result + 43) = 8;
  *(result + 44) = a6;
  return result;
}

float __mach_time_to_nanoseconds_block_invoke(uint64_t a1)
{
  v4 = a1;
  v3 = a1;
  mach_timebase_info(&info);
  result = info.numer / info.denom;
  *&mach_time_to_nanoseconds::machTimeBaseFactor = result;
  return result;
}

unint64_t create_array_from_cfdata<int>(const void *a1, UInt8 **a2)
{
  count = 0;
  buffer = 0;
  if (!a1)
  {
    goto LABEL_8;
  }

  v3 = CFGetTypeID(a1);
  if (v3 != CFDataGetTypeID())
  {
    goto LABEL_8;
  }

  count = CFDataGetLength(a1) / 4uLL;
  if (!(CFDataGetLength(a1) % 4uLL))
  {
    buffer = malloc_type_calloc(count, 4uLL, 0x100004052888210uLL);
    if (buffer)
    {
      v9.location = 0;
      v9.length = 4 * count;
      CFDataGetBytes(a1, v9, buffer);
    }

    else
    {
      count = 0;
    }

LABEL_8:
    *a2 = buffer;
    return count;
  }

  return 0;
}

unint64_t load_integer_array_from_edt(io_registry_entry_t a1, const __CFString *a2, UInt8 **a3)
{
  cf = IORegistryEntrySearchCFProperty(a1, "IOService", a2, *MEMORY[0x1E695E480], 3u);
  if (cf)
  {
    integer_array_from_cfdata = create_integer_array_from_cfdata(cf, a3);
    CFRelease(cf);
  }

  else
  {
    integer_array_from_cfdata = 0;
    *a3 = 0;
  }

  return integer_array_from_cfdata;
}

unint64_t load_float_array_from_edt(io_registry_entry_t a1, const __CFString *a2, void *a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = 0;
  cf = IORegistryEntrySearchCFProperty(a1, "IOService", a2, *MEMORY[0x1E695E480], 3u);
  if (cf)
  {
    v4 = 0;
    v6 = create_integer_array_from_cfdata(cf, &v4);
    *v7 = v4;
    CFRelease(cf);
  }

  else
  {
    v6 = 0;
    *v7 = 0;
  }

  return v6;
}

float load_float_from_edt(io_registry_entry_t a1, const __CFString *a2)
{
  v6 = a1;
  key = a2;
  v4 = NAN;
  cf = IORegistryEntrySearchCFProperty(a1, "IOService", a2, *MEMORY[0x1E695E480], 3u);
  if (cf)
  {
    get_value_from_cfdata<float>(cf, &v4);
    CFRelease(cf);
  }

  return v4;
}

uint64_t load_BOOL_from_edt(io_registry_entry_t a1, const __CFString *a2, BOOL *a3)
{
  v8 = a1;
  v7 = a2;
  v6 = a3;
  v5 = 0;
  v4 = 0;
  if (load_uint_from_edt(a1, a2, &v4))
  {
    *v6 = v4 != 0;
    v9 = 1;
  }

  else
  {
    v9 = v5 & 1;
  }

  return v9 & 1;
}

double scaleForExponent(int a1)
{
  v4 = 1.0;
  if (a1 >= 8)
  {
    for (i = 16; i > a1; --i)
    {
      v4 = v4 * 10.0;
    }
  }

  else
  {
    for (j = 0; j < a1; ++j)
    {
      v4 = v4 * 10.0;
    }

    return 1.0 / v4;
  }

  return v4;
}

double AAP_GCP_LuxThreshold(double a1)
{
  if (a1 <= 1000.0)
  {
    return 74.694167 - (0.146673 * a1 - 0.000081 * a1 * a1);
  }

  if (a1 < 10000.0)
  {
    return 13.0;
  }

  v1 = a1 - 10000.0;
  return clamp(v1, 13.0, 50.0);
}

uint64_t get_int_from_bootarg(char *a1, _DWORD *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  __s = a1;
  v8 = a2;
  v7 = 0;
  bzero(v10, 0x400uLL);
  v6 = 1024;
  if (!sysctlbyname("kern.bootargs", v10, &v6, 0, 0))
  {
    v5 = strstr[abi:de200100](v10, __s);
    if (v5)
    {
      v2 = strlen(__s);
      v3 = strtol(&v5[v2 + 1], 0, 0);
      *v8 = v3;
      v7 = 1;
    }
  }

  *MEMORY[0x1E69E9840];
  return v7 & 1;
}

uint64_t get_float_from_bootarg(char *a1, float *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  __s = a1;
  v8 = a2;
  v7 = 0;
  bzero(v10, 0x400uLL);
  v6 = 1024;
  if (!sysctlbyname("kern.bootargs", v10, &v6, 0, 0))
  {
    v5 = strstr[abi:de200100](v10, __s);
    if (v5)
    {
      v2 = strlen(__s);
      v3 = strtof(&v5[v2 + 1], 0);
      *v8 = v3;
      v7 = 1;
    }
  }

  *MEMORY[0x1E69E9840];
  return v7 & 1;
}

uint64_t CFXStoreComment(uint64_t result, const __CFString *a2)
{
  if (result)
  {
    if (a2)
    {
      return CFStringGetCString(a2, (result + 1820), 256, 0x8000100u);
    }
  }

  return result;
}

FILE *CFXForceLogCommit(FILE *result)
{
  if (result)
  {
    return _CFXCommitLog(result);
  }

  return result;
}

FILE *_CFXCommitLog(FILE *result)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = result;
  if (SLODWORD(result[11]._offset) > 0)
  {
    __sprintf_chk(v3, 0, 0x100uLL, "%s/%s_%s.csv", "/var/mobile/Library/Logs/CrashReporter/harmony", "HarmonyLog", &result[13]._ub._size + 5);
    mkdir("/var/mobile/Library/Logs/CrashReporter/harmony", 0x1EDu);
    result = fopen(v3, "a");
    __stream = result;
    if (result)
    {
      fwrite("date,time,orientation_s,nChannels_s,R_s,G_s,B_s,C_s,Y_s,x_s,y_s,CCT1_s,x_restricted,y_restricted,brightness_d,sample_ignored,adptLevel,x_algo,y_algo,R_wp,G_wp,B_wp,ramp_in_progress,ramp_period,transition_count,comments\n", 1uLL, 0xDBuLL, result);
      fwrite(*&v2[11]._blksize, 1uLL, SLODWORD(v2[11]._offset), __stream);
      result = fclose(__stream);
    }

    LODWORD(v2[11]._offset) = 0;
  }

  *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CFXEnableLog(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 1801) = a2 & 1;
  }

  return result;
}

float _CFXCCT2xy_Generic(float a1, uint64_t a2, uint64_t a3, int a4, float *a5)
{
  v9 = a4 / 3;
    ;
  }

  if (i == v9)
  {
    v11 = *(a3 + 4 * (2 * v9 - 1));
    v10 = *(a3 + 4 * (3 * v9 - 1));
  }

  else if (i)
  {
    v7 = *(a3 + 4 * i);
    v6 = *(a3 + 4 * (i - 1));
    v11 = (((a1 - v7) / (v6 - v7)) * *(a3 + 4 * (i - 1 + v9))) + ((1.0 - ((a1 - v7) / (v6 - v7))) * *(a3 + 4 * (i + v9)));
    v10 = (((a1 - v7) / (v6 - v7)) * *(a3 + 4 * (i - 1 + 2 * v9))) + ((1.0 - ((a1 - v7) / (v6 - v7))) * *(a3 + 4 * (i + 2 * v9)));
  }

  else
  {
    v11 = *(a3 + 4 * v9);
    v10 = *(a3 + 8 * v9);
  }

  *a5 = v11;
  result = v10;
  a5[1] = v10;
  return result;
}

uint64_t CFXZeroSample(uint64_t result)
{
  if (result)
  {
    return __memset_chk();
  }

  return result;
}

void *CFXCreate()
{
  v1 = malloc_type_malloc(0xA30uLL, 0x10F004054DC366FuLL);
  if (v1)
  {
    __memset_chk();
    *(v1 + 14) = &MemoryColorCoeff;
    *(v1 + 17) = CFAbsoluteTimeGetCurrent();
    *(v1 + 144) = 1;
    *(v1 + 49) = 1.0;
    *(v1 + 1800) = 0;
    *(v1 + 44) = &rampProfile;
    *(v1 + 90) = 201;
    *(v1 + 93) = &CCT_Shifted_Table;
    *(v1 + 188) = 66;
    *(v1 + 535) = 1.0;
    _CFXInitStats(v1 + 760);
    *(v1 + 8) = &CCT_BB_Table;
    *(v1 + 18) = 813;
    *(v1 + 282) = 0;
    __memset_chk();
    *(v1 + 2280) = 1;
    *(v1 + 579) = 1.0;
    *(v1 + 575) = 1.0;
    *(v1 + 571) = 1.0;
    *(v1 + 588) = 1.0;
    *(v1 + 584) = 1.0;
    *(v1 + 580) = 1.0;
    *(v1 + 597) = 1.0;
    *(v1 + 593) = 1.0;
    *(v1 + 589) = 1.0;
    _CFXClearReport(v1);
    __memcpy_chk();
    *(v1 + 529) = 1050408072;
    *(v1 + 530) = 1050941587;
    __memcpy_chk();
    __memcpy_chk();
    __memcpy_chk();
    *(v1 + 531) = 1172084122;
    *(v1 + 23) = 1172084122;
    __memcpy_chk();
    _CFXIdentity(v1 + 176);
    *(v1 + 185) = 0;
    *(v1 + 563) = -1.0;
    *(v1 + 2448) = 1;
    *(v1 + 613) = 0;
    *(v1 + 614) = 0;
    *(v1 + 615) = 0;
    *(v1 + 2520) = 0;
    *(v1 + 631) = 0;
    *(v1 + 632) = 0;
    *(v1 + 633) = 0;
    *(v1 + 2552) = 0;
    *(v1 + 320) = 0;
    *(v1 + 321) = 0;
    *(v1 + 322) = 0;
    *(v1 + 323) = 0;
    *(v1 + 324) = 0;
    *(v1 + 650) = 0;
  }

  return v1;
}

float _CFXInitStats(uint64_t a1)
{
  __memset_chk();
  *(a1 + 32) = 0x404E000000000000;
  *a1 = -1;
  result = 5.0;
  *(a1 + 44) = 5.0;
  return result;
}

void _CFXReleaseTwilightNightShiftAdaptation(uint64_t a1)
{
  if (*(a1 + 2552))
  {
    if (*(a1 + 2568))
    {
      free(*(a1 + 2568));
    }

    if (*(a1 + 2584))
    {
      free(*(a1 + 2584));
    }

    if (*(a1 + 2592))
    {
      free(*(a1 + 2592));
    }
  }
}

void CFXRelease(void **a1)
{
  if (a1)
  {
    _CFXClearStats((a1 + 95));
    if (a1[12])
    {
      if (*(a1[12] + 7))
      {
        free(*(a1[12] + 7));
      }

      if (*(a1[12] + 12))
      {
        free(*(a1[12] + 12));
      }

      if (*(a1[12] + 17))
      {
        free(*(a1[12] + 17));
      }

      free(a1[12]);
      _CFXCloseLog(a1);
    }

    if (a1[13])
    {
      free(a1[13]);
    }

    _CFXReleaseTwilightNightShiftAdaptation(a1);
    free(a1);
  }
}

float _CFXClearStats(uint64_t a1)
{
  for (i = *(a1 + 8); i; i = v2)
  {
    v2 = i[1];
    free(i);
  }

  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *a1 = -1;
  *(a1 + 40) = 0;
  result = 5.0;
  *(a1 + 44) = 5.0;
  return result;
}

void _CFXCloseLog(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 1808))
    {
      _CFXCommitLog(a1);
    }

    free(*(a1 + 1808));
  }
}

uint64_t CFXInstallCallback(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    *(result + 328) = a2;
    *(result + 336) = a3;
  }

  return result;
}

void CFXSetWhitePointType(_DWORD *a1, int a2)
{
  if (a2 == 1)
  {
    __memcpy_chk();
    a1[23] = 1170948096;
    a1[529] = 1050680396;
    a1[530] = 1051226834;
    __memcpy_chk();
    __memcpy_chk();
    __memcpy_chk();
    a1[531] = 1170948096;
    __memcpy_chk();
    syslog(7, "D65 whitepoint");
  }

  else
  {
    syslog(7, "Legacy whitepoint");
  }
}

uint64_t CFXGetCurrentMatrix(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = 0;
  if (a1)
  {
    oslog = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_0_2_4_0_8_0(v5, *(*(a1 + 96) + 184) & 1, COERCE__INT64(**(a1 + 96)));
      _os_log_impl(&dword_1DE8E5000, oslog, OS_LOG_TYPE_INFO, "ctx->harmony->adaptationEnabled: %i ctx->harmony->strength: %f", v5, 0x12u);
    }

    __memcpy_chk();
    v4 = 1;
  }

  *MEMORY[0x1E69E9840];
  return v4 & 1;
}

uint64_t CFXSetABShift(uint64_t a1, _DWORD *a2)
{
  v3 = 0;
  if (a1)
  {
    if (*(a1 + 96))
    {
      if (a2)
      {
        *(*(a1 + 96) + 292) = *a2;
        *(*(a1 + 96) + 296) = a2[1];
        v3 = 1;
        *(*(a1 + 96) + 300) = 1;
        if (*(a1 + 328))
        {
          (*(a1 + 328))(*(a1 + 336), 0);
        }
      }
    }
  }

  return v3 & 1;
}

uint64_t CFXGetABShift(uint64_t a1, _DWORD *a2)
{
  v3 = 0;
  if (a1 && *(a1 + 96) && a2)
  {
    *a2 = *(*(a1 + 96) + 292);
    a2[1] = *(*(a1 + 96) + 296);
    v3 = 1;
  }

  return v3 & 1;
}

uint64_t CFXGetMagicCoeff(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 112))
  {
    for (i = 0; i < 6; ++i)
    {
      *(a2 + 4 * i) = *(*(a1 + 112) + 4 * i);
    }

    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t CFXSetMagicCoeff(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (a2)
    {
      v2 = *(result + 112);
      return __memcpy_chk();
    }

    else
    {
      *(result + 112) = 0;
    }
  }

  return result;
}

uint64_t CFXColorRampEnableLogging(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 1800) = a2 & 1;
  }

  return result;
}

uint64_t CFXInitializeAmbientAdaptation(uint64_t a1)
{
  v7 = 0;
  if (!*(a1 + 96))
  {
    *(a1 + 96) = malloc_type_malloc(0x158uLL, 0x10E004084D8D114uLL);
    if (*(a1 + 96))
    {
      v1 = *(a1 + 96);
      __memset_chk();
      v5 = *(a1 + 96);
      *v5 = 0;
      *(v5 + 152) = 994352038;
      *(v5 + 156) = 1024416809;
      *(v5 + 180) = 1114636288;
      *(v5 + 176) = 20.0;
      *(v5 + 160) = 5.0;
      *(v5 + 164) = 5.0;
      *(v5 + 168) = 5.0;
      *(v5 + 172) = 5.0;
      *(v5 + 188) = 2.0;
      *(v5 + 148) = 18;
      *(v5 + 40) = "k+OA";
      *(v5 + 48) = &defaultPolygonLarge;
      *(v5 + 64) = &AggressiveLUT_x;
      *(v5 + 72) = 29;
      *(v5 + 80) = &AggressiveLUT_y;
      *(v5 + 88) = 55;
      *(v5 + 96) = malloc_type_malloc(8 * *(v5 + 88), 0x80040B8603338uLL);
      if (*(v5 + 96))
      {
        for (i = 0; i < *(v5 + 88); ++i)
        {
          *(*(v5 + 96) + 8 * i) = &AggressiveLUT + 116 * i;
        }
      }

      *(v5 + 104) = &RelaxedLUT_x;
      *(v5 + 112) = 29;
      *(v5 + 120) = &RelaxedLUT_y;
      *(v5 + 128) = 55;
      *(v5 + 136) = malloc_type_malloc(8 * *(v5 + 128), 0x80040B8603338uLL);
      if (*(v5 + 136))
      {
        for (j = 0; j < *(v5 + 128); ++j)
        {
          *(*(v5 + 136) + 8 * j) = &RelaxedLUT + 116 * j;
        }
      }

      *(v5 + 144) = 1;
      *(v5 + 145) = 1;
      *(v5 + 192) = 10.0;
      *(v5 + 196) = 15.0;
      *(v5 + 200) = 25.0;
      *(v5 + 204) = 1108082688;
      *(v5 + 208) = 1167867904;
      *(v5 + 212) = 1053027365;
      *(v5 + 216) = 1053093869;
      __memcpy_chk();
      *(a1 + 92) = 1170948096;
      *(a1 + 2116) = 1050680396;
      *(a1 + 2120) = 1051226834;
      __memcpy_chk();
      __memcpy_chk();
      __memcpy_chk();
      *(a1 + 2124) = 1170948096;
      __memcpy_chk();
      *(v5 + 224) = 0;
      *(v5 + 228) = 1045220557;
      *(v5 + 232) = 1045220557;
      *(v5 + 236) = 1036831949;
      *(v5 + 240) = 1036831949;
      *(v5 + 244) = 1036831949;
      *(v5 + 248) = 1;
      *(v5 + 252) = 1.0;
      v7 = 1;
      _CFXInitializeLog(a1);
      CFXEnableFades(a1, 1);
      *(v5 + 288) = 1;
      *(a1 + 344) = 1;
      *(v5 + 292) = 0;
      *(v5 + 296) = 0;
      *(v5 + 301) = 0;
      *(v5 + 328) = 1;
      *(v5 + 332) = 1049247089;
      *(v5 + 336) = 1049247089;
      *(v5 + 340) = 1049247089;
      *(v5 + 308) = fminf(*v5, *(v5 + 332));
    }
  }

  return v7 & 1;
}

uint64_t _CFXInitializeLog(uint64_t a1)
{
  *(a1 + 1808) = 0;
  *(a1 + 1816) = 0;
  result = __memset_chk();
  *(a1 + 2076) = 0;
  *(a1 + 2104) = 0;
  return result;
}

float CFXEnableFades(uint64_t a1, char a2)
{
  if ((a2 & 1) != (*(a1 + 364) & 1))
  {
    *(a1 + 364) = a2 & 1;
    if (a2)
    {
      _CFXIdentity((a1 + 496));
      _CFXIdentity((a1 + 460));
      _CFXIdentity((a1 + 388));
      _CFXIdentity((a1 + 424));
      *(a1 + 384) = 1;
      _CFXIdentity((a1 + 628));
      _CFXIdentity((a1 + 556));
      result = _CFXIdentity((a1 + 592));
      *(a1 + 552) = 1;
      if (*(a1 + 96))
      {
        *(*(a1 + 96) + 272) = 1;
        result = **(a1 + 96);
        *(*(a1 + 96) + 276) = result;
        *(*(a1 + 96) + 280) = result;
        *(*(a1 + 96) + 284) = result;
      }
    }
  }

  return result;
}

float CFXSetStrengthRampTweakFactor(uint64_t a1, float result)
{
  if (a1)
  {
    if (*(a1 + 96))
    {
      *(*(a1 + 96) + 252) = result;
    }
  }

  return result;
}

float CFXGetStrengthRampTweakFactor(uint64_t a1)
{
  v2 = -1.0;
  if (a1 && *(a1 + 96))
  {
    return *(*(a1 + 96) + 252);
  }

  return v2;
}

uint64_t CFXGetAdaptationModesMapping(uint64_t a1, uint64_t a2, int a3)
{
  v5 = 0;
  if (a1 && *(a1 + 96) && a2 && a3 >= 6)
  {
    v3 = *(a1 + 96);
    __memcpy_chk();
    v5 = 1;
  }

  return v5 & 1;
}

uint64_t CFXSetAdaptationModesMapping(uint64_t a1, uint64_t a2, int a3)
{
  v5 = 0;
  if (a1 && *(a1 + 96) && a2 && a3 >= 6)
  {
    v3 = *(a1 + 96);
    __memcpy_chk();
    v5 = 1;
  }

  return v5 & 1;
}

void CFXSetAmbientAdaptationMode(uint64_t a1, unsigned int a2, float a3)
{
  if (a1 && *(a1 + 96))
  {
    v3 = _CFXGetStrengthFromMode(a1, a2);
    if (*(*(a1 + 96) + 184))
    {
      CFXSetAmbientAdaptationStrength(a1, v3, a3);
    }

    *(*(a1 + 96) + 248) = a2;
  }
}

void CFXSuspendHarmony(uint64_t a1, char a2, float a3)
{
  if (a1 && *(a1 + 96))
  {
    *(*(a1 + 96) + 301) = a2 & 1;
    if (a2)
    {
      if (*(a1 + 364))
      {
        *(*(a1 + 96) + 272) = 0;
        *(*(a1 + 96) + 284) = *(*(a1 + 96) + 280);
        *(*(a1 + 96) + 276) = 0;
        *(*(a1 + 96) + 264) = CFAbsoluteTimeGetCurrent();
        *(*(a1 + 96) + 256) = a3;
        if (*(a1 + 328))
        {
          (*(a1 + 328))(*(a1 + 336), 0);
        }
      }
    }

    else
    {
      v3 = **(a1 + 96);
      **(a1 + 96) = 0;
      CFXSetAmbientAdaptationStrength(a1, v3, a3);
    }
  }
}

void CFXEnableAmbientAdaptation(uint64_t a1, char a2)
{
  if (a1 && *(a1 + 96) && (a2 & 1) != (*(*(a1 + 96) + 184) & 1))
  {
    _CFXClearStats(a1 + 760);
    *(*(a1 + 96) + 184) = a2 & 1;
    if (a2)
    {
      _CFXSetNativeWhitePointCorrection(a1, 1, 1, *(*(a1 + 96) + 188));
      v2 = _CFXGetStrengthFromMode(a1, *(*(a1 + 96) + 248));
      CFXSetAmbientAdaptationStrength(a1, v2, *(*(a1 + 96) + 188));
    }

    _CFXUpdateTarget(a1, (a1 + 80), 1, 0, *(*(a1 + 96) + 188));
    if ((a2 & 1) == 0)
    {
      CFXSetAmbientAdaptationStrength(a1, 0.0, *(*(a1 + 96) + 188));
      _CFXSetNativeWhitePointCorrection(a1, 0, 1, *(*(a1 + 96) + 188));
    }
  }
}

void _CFXSetNativeWhitePointCorrection(uint64_t a1, char a2, int a3, float a4)
{
  if (*(a1 + 2520))
  {
    if (a2)
    {
      *(a1 + 2524) |= a3;
    }

    else
    {
      *(a1 + 2524) &= ~a3;
    }

    v4 = 1.0;
    if (!*(a1 + 2524))
    {
      v4 = 0.0;
    }

    v5 = v4;
    v11 = v5;
    if (*(a1 + 2252) >= 0.0)
    {
      a4 = *(a1 + 2252);
    }

    if (v5 == *(a1 + 2456))
    {
      a4 = 0.0;
    }

    if ((a2 & 1) == 0 || (v9 = 1, *(a1 + 2452) <= 0.0))
    {
      v8 = 0;
      if ((a2 & 1) == 0)
      {
        v8 = *(a1 + 2452) == 0.0;
      }

      v9 = v8;
    }

    Current = CFAbsoluteTimeGetCurrent();
    if (v9)
    {
      if (*(a1 + 2448))
      {
        v7 = 0.0;
      }

      else
      {
        v7 = Current - *(a1 + 2460);
      }

      v6 = v7;
      a4 = fmaxf(fminf(a4, v6), 0.0);
    }

    if (*(a1 + 364))
    {
      syslog(7, "NativeWPMatrixRamp to %f in %fs\n", v11, a4);
      *(a1 + 2448) = 0;
      *(a1 + 2460) = *(a1 + 2456);
      *(a1 + 2452) = v11;
      *(a1 + 2432) = a4;
      *(a1 + 2440) = Current;
      if (*(a1 + 328))
      {
        (*(a1 + 328))(*(a1 + 336), 0);
      }
    }
  }
}

uint64_t _CFXLogSample(uint64_t a1, unsigned __int8 a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v29 = a1;
  v28 = a2;
  *v27 = 0;
  CFXTristimulus2Chromaticity_0((a1 + 80), v27);
  v35 = (*(v29 + 156) + *(v29 + 160)) + *(v29 + 164);
  v36 = (*(v29 + 168) + *(v29 + 172)) + *(v29 + 176);
  v37 = (*(v29 + 180) + *(v29 + 184)) + *(v29 + 188);
  v18 = *(v29 + 136);
  v26 = v18 - CFAbsoluteTimeGetCurrent() > 0.0;
  calendar = CFCalendarCopyCurrent();
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  if (calendar)
  {
    at = CFAbsoluteTimeGetCurrent();
    componentDesc = "yMdHms";
    CFCalendarDecomposeAbsoluteTime(calendar, at, "yMdHms", &v30, &v30 + 4, &v31, &v31 + 4, &v32, &v32 + 4);
    v23 = 0.0;
    CFCalendarComposeAbsoluteTime(calendar, &v23, "yMdHms", v30, HIDWORD(v30), v31, HIDWORD(v31), v32, HIDWORD(v32));
    v33 = ((at - v23) * 1000000.0);
    CFRelease(calendar);
  }

  v15 = 0;
  __sprintf_chk((v29 + 2077), 0, 0x14uLL, "%04d-%02d-%02d_%02d-%02d-%02d", v30, HIDWORD(v30), v31, HIDWORD(v31), v32, HIDWORD(v32));
  v22 = 0;
  v2 = *(v29 + 24);
  v3 = *(v29 + 52);
  v16 = v13;
  v22 = __sprintf_chk(v34, 0, 0x400uLL, "%04d/%02d/%02d,%02d:%02d:%02d.%06d,%d,%d,", v30, HIDWORD(v30), v31, HIDWORD(v31), v32, HIDWORD(v32), v33, v2, v3);
  for (i = 0; i < *(v29 + 52); ++i)
  {
    v4 = __sprintf_chk(&v34[v22], 0, 0xFFFFFFFFFFFFFFFFLL, "%.4f,", *(v29 + 28 + 4 * i));
    v22 += v4;
  }

  v20 = -1.0;
  v19 = 0xBF800000BF800000;
  if (v28)
  {
    v20 = *(v29 + 2100);
    v19 = *(v29 + 2108);
  }

  v14 = v34;
  v5 = *(v29 + 4);
  v6 = *(v29 + 12);
  v7 = *(v29 + 16);
  v8 = *(v29 + 20);
  v9 = *(v29 + 56);
  v10 = *(v29 + 152);
  v11 = *(v29 + 2104);
  v13[18] = v13;
  __sprintf_chk(&v34[v22], 0, 0xFFFFFFFFFFFFFFFFLL, "%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%d,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%d,%f,%d,%s\n", v5, v6, v7, v8, v27[0], v27[1], v9, (v28 ^ 1) & 1, v20, *&v19, *(&v19 + 1), v35, v36, v37, v26, v10, v11, (v29 + 1820));
  result = _CFXLogString(v29, v14);
  *(v29 + 2076) = 0;
  *(v29 + 1820) = 0;
  *(v29 + 2104) = 0;
  *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CFXResetAdaptation(uint64_t result, float a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = result;
  if (result && (*(result + 104) && **(result + 104) > 0.0 || *(result + 96) && (*(*(result + 96) + 184) & 1) != 0))
  {
    _CFXIdentity(v4);
    result = _CFXSetTarget(v2, v4, 1, 0, 0.0, a2);
    *(v2 + 344) = 1;
    if (*(v2 + 96))
    {
      *(*(v2 + 96) + 220) = 1;
    }
  }

  *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CFXInitializeBlueLightReduction(uint64_t a1)
{
  v3 = 0;
  if (!*(a1 + 104))
  {
    *(a1 + 104) = malloc_type_malloc(0x34uLL, 0x1000040CC89259EuLL);
    if (*(a1 + 104))
    {
      **(a1 + 104) = 0;
      *(*(a1 + 104) + 4) = 2.0;
      *(*(a1 + 104) + 28) = 1166024704;
      *(*(a1 + 104) + 32) = 1169915904;
      *(*(a1 + 104) + 36) = 1160298496;
      *(*(a1 + 104) + 40) = 1166024704;
      *(*(a1 + 104) + 20) = *(a1 + 2116);
      CFXChromaticity2Tristimulus((*(a1 + 104) + 20), (*(a1 + 104) + 8), 150.0);
      *(*(a1 + 104) + 44) = -1.0;
      *(*(a1 + 104) + 48) = 0;
      v3 = 1;
    }
  }

  return v3 & 1;
}

uint64_t CFXInitializeTwilightNightShiftAdaptation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  _CFXReleaseTwilightNightShiftAdaptation(a1);
  *(a1 + 2552) = 1;
  *(a1 + 2560) = a3;
  *(a1 + 2568) = a2;
  *(a1 + 2576) = a5;
  *(a1 + 2584) = a4;
  *(a1 + 2592) = a6;
  return 1;
}

uint64_t _CFXUpdateBLRTarget(uint64_t a1, float a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 104);
  _CFXIdentity(v6);
  if (v3 && (*v3 > 0.0 || v3[11] >= 0.0))
  {
    _CFXGetTarget(a1, (*(a1 + 104) + 8), v6, 0, 0, 0, 0, 1, 1.0);
  }

  result = _CFXSetBLRTarget(a1, v6, 1, 1, a2, 1.0);
  *MEMORY[0x1E69E9840];
  return result;
}

float CFXGetBlueLightReductionTargetCCT(uint64_t a1)
{
  v2 = 0.0;
  if (a1 && *(a1 + 104))
  {
    return *(*(a1 + 104) + 28);
  }

  return v2;
}

float CFXOverrideBlueLightReductionCCTRange(uint64_t a1, float result, float a3, float a4)
{
  if (a1)
  {
    if (*(a1 + 104))
    {
      *(*(a1 + 104) + 36) = a3;
      *(*(a1 + 104) + 32) = result;
      result = a4;
      *(*(a1 + 104) + 40) = a4;
      *(*(a1 + 104) + 28) = a4;
    }
  }

  return result;
}

float CFXGetBlueLightReductionCCTRange(uint64_t a1, _DWORD *a2, _DWORD *a3, float *a4)
{
  if (a1)
  {
    if (*(a1 + 104))
    {
      *a3 = *(*(a1 + 104) + 36);
      *a2 = *(*(a1 + 104) + 32);
      result = *(*(a1 + 104) + 40);
      *a4 = result;
    }
  }

  return result;
}

uint64_t CFXSetBlueReductionFactorOverride(uint64_t result, float a2, float a3)
{
  v7 = result;
  if (result && *(result + 104))
  {
    *(*(result + 104) + 44) = a2;
    if (a2 >= 0.0)
    {
      v5 = a2;
    }

    else
    {
      v5 = **(result + 104);
    }

    v6 = fminf(fmaxf(v5, 0.0), 1.0);
    v3 = (v6 * *(*(result + 104) + 28)) + (1.0 - v6) * *(result + 2124);
    _CFXCCT2xy_Shifted(result, (*(result + 104) + 20), v3);
    CFXChromaticity2Tristimulus((*(v7 + 104) + 20), (*(v7 + 104) + 8), 150.0);
    v4 = fmax(a3, 0.0);
    return _CFXUpdateBLRTarget(v7, v4);
  }

  return result;
}

void CFXSetBlueLightReductionTargetCCT(uint64_t a1, char a2, float a3, float a4, float a5)
{
  if (a1 && *(a1 + 104))
  {
    v5 = fmax(a3, *(*(a1 + 104) + 36));
    *(*(a1 + 104) + 28) = fminf(v5, *(*(a1 + 104) + 32));
    v8 = fminf(fmaxf(**(a1 + 104), 0.0), 1.0);
    if (a5 == 0.0)
    {
      *(*(a1 + 104) + 44) = -1.0;
    }

    else
    {
      *(*(a1 + 104) + 44) = 1.0;
      v8 = 1.0;
    }

    v6 = (v8 * *(*(a1 + 104) + 28)) + (1.0 - v8) * *(a1 + 2124);
    _CFXCCT2xy_Shifted(a1, (*(a1 + 104) + 20), v6);
    CFXChromaticity2Tristimulus((*(a1 + 104) + 20), (*(a1 + 104) + 8), 150.0);
    if (a4 < 0.0)
    {
      v7 = *(*(a1 + 104) + 4);
    }

    else
    {
      v7 = a4;
    }

    if (a2)
    {
      *(*(a1 + 104) + 48) = 1;
    }

    else
    {
      _CFXSetNativeWhitePointCorrection(a1, a5 != 0.0, 4, v7);
      _CFXUpdateBLRTarget(a1, v7);
    }
  }
}

void CFXCancelColorFade(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v4 = a1;
  if (a1)
  {
    v3 = v4 + 368;
    if ((*(v4 + 384) & 1) == 0)
    {
      *(v3 + 16) = 1;
      *v3 = 0;
      __memcpy_chk();
      v2 = 0;
      v1 = 0;
      _CFXGetWPFromMatrix(v4, (v3 + 20), &v2, &v1);
      CFXChromaticity2uv(&v2, v6);
      *(v4 + 120) = v6[0];
      *(v4 + 124) = v6[1];
    }
  }

  *MEMORY[0x1E69E9840];
}

BOOL _CFXIsIdentity(float *a1)
{
  v2 = 0;
  if (float_equal(*a1, 1.0))
  {
    v2 = 0;
    if (float_equal(a1[1], 0.0))
    {
      v2 = 0;
      if (float_equal(a1[2], 0.0))
      {
        v2 = 0;
        if (float_equal(a1[3], 0.0))
        {
          v2 = 0;
          if (float_equal(a1[4], 1.0))
          {
            v2 = 0;
            if (float_equal(a1[5], 0.0))
            {
              v2 = 0;
              if (float_equal(a1[6], 0.0))
              {
                v2 = 0;
                if (float_equal(a1[7], 0.0))
                {
                  return float_equal(a1[8], 1.0);
                }
              }
            }
          }
        }
      }
    }
  }

  return v2;
}

float _CFXCorrectForNativeWP(uint64_t a1, float *a2, float a3)
{
  if ((*(a1 + 2520) & 1) == 0)
  {
    return _CFXIdentity(a2);
  }

  v9 = fminf(fmaxf(a3, 0.0), 1.0);
  result = 1.0 - v9;
  v8 = result;
  for (i = 0; i < 3; ++i)
  {
    for (j = 0; j < 3; ++j)
    {
      v4 = 1.0;
      if (i != j)
      {
        v4 = 0.0;
      }

      v5 = v4;
      result = (v8 * v5) + (v9 * *(a1 + 2472 + 12 * i + 4 * j));
      a2[3 * i + j] = result;
    }
  }

  return result;
}

void _CFXGetXYZD50Matrix(uint64_t a1, float *a2, float *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v15 = a1;
  v14 = a2;
  v13 = a3;
  v12[10] = v17;
  _CFXGetLMSD50Matrix(a1, a2);
  v12[11] = v16;
  Mul33MatrixBy33Matrix(v17, Mcat, v16);
  Mul33MatrixBy33Matrix(&InvMcat, v16, v13);
  v3 = *v13;
  v4 = v13[1];
  v5 = v13[2];
  v6 = v13[3];
  v7 = v13[4];
  v8 = v13[5];
  v9 = v13[6];
  v10 = v13[7];
  v11 = v13[8];
  v12[12] = v12;
  syslog(7, "XYZD50M = %f %f %f; %f %f %f; %f %f %f\n", v3, v4, v5, v6, v7, v8, v9, v10, v11);
  *MEMORY[0x1E69E9840];
}

void _CFXGetsRGBD50Matrix(uint64_t a1, float *a2, float *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13[10] = v21;
  _CFXGetLMSD50Matrix(a1, a2);
  v13[11] = v20;
  Mul33MatrixBy33Matrix(v21, v16 + 2144, v20);
  Mul33MatrixBy33Matrix(v16 + 2180, v20, v14);
  v19[2] = 1.0;
  v19[1] = 1.0;
  v19[0] = 1.0;
  v13[12] = &v17;
  v17 = 0;
  v18 = 0;
  Mul33MatrixBy31Vector(v14, v19, &v17);
  v13[13] = v14;
  v3 = MaxOfVector(&v17);
  Div33MatrixByScalar(v14, v14, v3);
  v4 = *v14;
  v5 = v14[1];
  v6 = v14[2];
  v7 = v14[3];
  v8 = v14[4];
  v9 = v14[5];
  v10 = v14[6];
  v11 = v14[7];
  v12 = v14[8];
  v13[14] = v13;
  syslog(7, "sRGBD50M = %f %f %f; %f %f %f; %f %f %f\n", v4, v5, v6, v7, v8, v9, v10, v11, v12);
  *MEMORY[0x1E69E9840];
}

void _CFXGetXYZMatrixWithLMSIlluminant(uint64_t a1, float *a2, float *a3, float *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v14 = a4;
  v13[9] = v19;
  _CFXGetLMSMatrixWithLMSIlluminant(a1, a2, a3);
  v13[10] = v18;
  Mul33MatrixBy33Matrix(v19, Mcat, v18);
  Mul33MatrixBy33Matrix(&InvMcat, v18, v14);
  v4 = *v14;
  v5 = v14[1];
  v6 = v14[2];
  v7 = v14[3];
  v8 = v14[4];
  v9 = v14[5];
  v10 = v14[6];
  v11 = v14[7];
  v12 = v14[8];
  v13[11] = v13;
  syslog(7, "XYZM = %f %f %f; %f %f %f; %f %f %f\n", v4, v5, v6, v7, v8, v9, v10, v11, v12);
  *MEMORY[0x1E69E9840];
}

void _CFXGetsRGBMatrixWithLMSIlluminant(uint64_t a1, float *a2, float *a3, float *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v18 = a1;
  v17 = a2;
  v16 = a3;
  v15 = a4;
  v14[9] = v23;
  _CFXGetLMSMatrixWithLMSIlluminant(a1, a2, a3);
  v14[10] = v22;
  Mul33MatrixBy33Matrix(v23, v18 + 2144, v22);
  Mul33MatrixBy33Matrix(v18 + 2180, v22, v15);
  v21[2] = 1.0;
  v21[1] = 1.0;
  v21[0] = 1.0;
  v14[11] = &v19;
  v19 = 0;
  v20 = 0;
  Mul33MatrixBy31Vector(v15, v21, &v19);
  v14[12] = v15;
  v4 = MaxOfVector(&v19);
  Div33MatrixByScalar(v15, v15, v4);
  v5 = *v15;
  v6 = v15[1];
  v7 = v15[2];
  v8 = v15[3];
  v9 = v15[4];
  v10 = v15[5];
  v11 = v15[6];
  v12 = v15[7];
  v13 = v15[8];
  v14[13] = v14;
  syslog(7, "sRGBM = %f %f %f; %f %f %f; %f %f %f\n", v5, v6, v7, v8, v9, v10, v11, v12, v13);
  *MEMORY[0x1E69E9840];
}

double CFXGetReport(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    v12 = mach_absolute_time();
    *(a1 + 808 + 8 * *(a1 + 1012)) = *(a1 + 808 + 8 * *(a1 + 1012)) + MachTimeToSeconds(v12 - *(a1 + 1016));
    *(a1 + 1024 + 8 * *(a1 + 1228)) = *(a1 + 1024 + 8 * *(a1 + 1228)) + MachTimeToSeconds(v12 - *(a1 + 1232));
    *(a1 + 1240 + 8 * *(a1 + 1608)) = *(a1 + 1240 + 8 * *(a1 + 1608)) + MachTimeToSeconds(v12 - *(a1 + 1616));
    v10 = MachTimeToSeconds((v12 - *(a1 + 1640)));
    if (*(a1 + 1648))
    {
      *(a1 + 1624) = *(a1 + 1624) + v10;
    }

    else
    {
      *(a1 + 1632) = *(a1 + 1632) + v10;
    }

    if (*(a1 + 96) && (*(*(a1 + 96) + 184) & 1) != 0)
    {
      *(a1 + 1656 + 8 * *(a1 + 1736)) = *(a1 + 1656 + 8 * *(a1 + 1736)) + MachTimeToSeconds((v12 - *(a1 + 1744)));
    }

    v11 = MachTimeToSeconds((v12 - *(a1 + 1776)));
    *(a1 + 1752) = *(a1 + 1752) + v11;
    *(a1 + 1760) = *(a1 + 1760) + v11 * *(a1 + 1788);
    *(a1 + 1768) = *(a1 + 1768) + v11 * *(a1 + 1784);
    if (*(a1 + 104))
    {
      *(a1 + 1652) = *(*(a1 + 104) + 28);
    }

    __memcpy_chk();
    v9 = *(a1 + 1012);
    v8 = *(a1 + 1228);
    v7 = *(a1 + 1736);
    v6 = *(a1 + 1608);
    v5 = *(a1 + 1648) & 1;
    v4 = *(a1 + 1788);
    v3 = *(a1 + 1784);
    __memset_chk();
    *(a1 + 1016) = v12;
    *(a1 + 1012) = v9;
    *(a1 + 1232) = v12;
    *(a1 + 1228) = v8;
    *(a1 + 1640) = v12;
    *(a1 + 1648) = v5 & 1;
    *(a1 + 1736) = v7;
    *(a1 + 1744) = v12;
    *(a1 + 1788) = v4;
    *(a1 + 1784) = v3;
    result = v12;
    *(a1 + 1776) = v12;
    *(a1 + 1616) = v12;
    *(a1 + 1608) = v6;
  }

  return result;
}

float CFXOverrideRampPeriod(uint64_t a1, float result)
{
  if (a1)
  {
    *(a1 + 2252) = result;
  }

  return result;
}

uint64_t CFXGetLuxThreshold(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  if (a1 && a2 < 4)
  {
    *a3 = *(*(a1 + 96) + 192 + 4 * a2);
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void CFXInitAmmolite(uint64_t a1, io_registry_entry_t a2)
{
  if (!CFXAmmoliteEnabled(a1))
  {
    syslog(7, "CFXInitAmmolite() - proceeding with enablement");
    if (*(a1 + 2256))
    {
      __assert_rtn("CFXInitAmmolite", "ColorEffects.c", 3770, "cfx->ammolite == NULL");
    }

    *(a1 + 2256) = CFXAmmoliteCreate(a2, a1 + 2264);
    if (CFXAmmoliteEnabled(a1))
    {
      _CFXUpdateTarget(a1, (a1 + 80), 1, 0, *(*(a1 + 2256) + 40));
    }
  }
}

void CFXInitAmmoliteFromData(uint64_t a1, int a2, const __CFData *a3, float a4, float a5, float a6)
{
  if (!CFXAmmoliteEnabled(a1))
  {
    syslog(7, "CFXInitAmmoliteFromData() - proceeding with enablement");
    if (*(a1 + 2256))
    {
      __assert_rtn("CFXInitAmmoliteFromData", "ColorEffects.c", 3785, "cfx->ammolite == NULL");
    }

    *(a1 + 2256) = CFXAmmoliteCreateFromData(a1 + 2264, a2, a3, a4, a5, a6);
    if (CFXAmmoliteEnabled(a1))
    {
      _CFXUpdateTarget(a1, (a1 + 80), 1, 0, *(*(a1 + 2256) + 40));
    }
  }
}

void CFXAmmoliteDisable(uint64_t a1)
{
  if (CFXAmmoliteEnabled(a1))
  {
    syslog(7, "CFXAmmoliteDisable() - proceeding with disablement");
    _CFXUpdateTarget(a1, (a1 + 80), 1, 0, *(*(a1 + 2256) + 40));
    *(a1 + 2280) = 0;
    _CFXIdentity((a1 + 2284));
    __memcpy_chk();
    *(a1 + 2264) = *(*(a1 + 2256) + 40);
    *(a1 + 2272) = CFAbsoluteTimeGetCurrent();
  }

  CFXAmmoliteFree(*(a1 + 2256));
  *(a1 + 2256) = 0;
}

void CFXSetNativeWhitePoint(uint64_t a1, _DWORD *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v19 = a1;
  v18 = a2;
  v17 = a1;
  if (a1 && v18)
  {
    *(v17 + 2464) = *v18;
    *(v17 + 2468) = v18[1];
    v13 = &v24;
    v24 = 0;
    v25 = 0;
    v16 = &v22;
    v22 = 0;
    v23 = 0;
    v12 = 1.0;
    CFXChromaticity2Tristimulus((v17 + 2116), &v24, 1.0);
    CFXChromaticity2Tristimulus((v17 + 2464), &v22, 1.0);
    v14 = &v20;
    v20 = 0;
    v21 = 0;
    CFXTristimulus2lms(&v22, &v20);
    _CFXGetMatrix(v17, &v24, v17 + 2472, &v20);
    v2 = *(v17 + 2472);
    v3 = *(v17 + 2476);
    v4 = *(v17 + 2480);
    v5 = *(v17 + 2484);
    v6 = *(v17 + 2488);
    v7 = *(v17 + 2492);
    v8 = *(v17 + 2496);
    v9 = *(v17 + 2500);
    v10 = *(v17 + 2504);
    v15 = &v11;
    syslog(7, "NativeWPMatrix = %f %f %f; %f %f %f; %f %f %f\n", v2, v3, v4, v5, v6, v7, v8, v9, v10);
    Mul33MatrixBy31Vector(InvMrgb2xyzD65, v16, (v17 + 2508));
    *(v17 + 2520) = 1;
  }

  *MEMORY[0x1E69E9840];
}

void CFXSetOutputFormat(uint64_t a1, int a2, int a3, float *a4)
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = a4;
  v5 = a1;
  if (a1)
  {
    *(v5 + 2528) = v8;
    *(v5 + 2532) = v7;
    if (v7 == 2)
    {
      if (v6)
      {
        v4 = &v10;
        v10 = 0;
        v11 = 0.0;
        CFXChromaticity2Tristimulus(v6, &v10, 1.0);
        CFXTristimulus2lms(&v10, (v5 + 2536));
        syslog(7, "Custom Illuminant XYZ = (%f, %f, %f), LMS = (%f, %f, %f)\n", *&v10, *(&v10 + 1), v11, *(v5 + 2536), *(v5 + 2540), *(v5 + 2544));
      }
    }
  }

  *MEMORY[0x1E69E9840];
}

uint64_t CFXEnableMitigations(uint64_t result, char a2)
{
  if (result)
  {
    if (*(result + 96))
    {
      *(*(result + 96) + 303) = a2 & 1;
    }
  }

  return result;
}

float CFXGetAdaptationStrength(uint64_t a1)
{
  if (a1 && *(a1 + 96))
  {
    return *(*(a1 + 96) + 308);
  }

  else
  {
    return 0.0;
  }
}

float CFXEnableOverrides(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5 = 0;
    if (a2)
    {
      v5 = *(a2 + 1) & 1;
      if (v5)
      {
        if (*(a1 + 96))
        {
          v4 = *(a1 + 96);
          *(v4 + 180) = *(a2 + 4);
          *(v4 + 176) = *(a2 + 8);
          *(v4 + 160) = *(a2 + 12);
          *(v4 + 164) = *(a2 + 12);
          *(v4 + 168) = *(a2 + 12);
          result = *(a2 + 12);
          *(v4 + 172) = result;
        }
      }
    }

    if ((v5 & 1) == 0)
    {
      if (*(a1 + 96))
      {
        v3 = *(a1 + 96);
        *(v3 + 180) = 1114636288;
        *(v3 + 176) = 20.0;
        result = 5.0;
        *(v3 + 160) = 5.0;
        *(v3 + 164) = 5.0;
        *(v3 + 168) = 5.0;
        *(v3 + 172) = 5.0;
      }
    }
  }

  return result;
}

uint64_t _CFXLogString(uint64_t result, const char *a2)
{
  v6 = result;
  if (result)
  {
    if (!*(result + 1808))
    {
      *(result + 1808) = malloc_type_malloc(0x32000uLL, 0xC2F1B394uLL);
      *(v6 + 1816) = 0;
      mkdir("/var/mobile/Library/Logs/CrashReporter/harmony", 0x1EDu);
    }

    v4 = strlen(a2);
    if (v4 + *(v6 + 1816) > 204800)
    {
      _CFXCommitLog(v6);
    }

    v2 = *(v6 + 1808);
    v3 = *(v6 + 1816);
    result = __memcpy_chk();
    *(v6 + 1816) += v4;
  }

  return result;
}

uint64_t _CFXSetBLRTarget(uint64_t a1, float *a2, char a3, char a4, float a5, float a6)
{
  v40 = *MEMORY[0x1E69E9840];
  v32 = a1;
  v31 = a2;
  v30 = a5;
  v29 = a3;
  v28 = a4;
  v27 = a6;
  if (*(a1 + 2252) >= 0.0)
  {
    v30 = *(v32 + 2252);
  }

  Current = CFAbsoluteTimeGetCurrent();
  v25 = mach_absolute_time();
  if (*(v32 + 364))
  {
    memcpy(__dst, v31, sizeof(__dst));
  }

  else
  {
    if (*(v32 + 112))
    {
      _CFXMagic(v31, __dst, *(v32 + 112));
      v38[2] = 1.0;
      v38[1] = 1.0;
      v38[0] = 1.0;
      v36 = 0;
      v37 = 0;
      Mul33MatrixBy31Vector(__dst, v38, &v36);
      v6 = MaxOfVector(&v36);
      Div33MatrixByScalar(__dst, __dst, v6);
    }

    else
    {
      memcpy(__dst, v31, sizeof(__dst));
    }

    v24 = 0;
    *v23 = 0;
    v22 = 0.0;
    _CFXGetWPFromMatrix(v32, __dst, v23, &v22);
    v7 = 1.0 / v22;
    *(v32 + 2140) = v7;
    v34 = 0;
    v35 = 0;
    CFXChromaticity2Tristimulus(v23, &v34, 100.0);
    v20 = 0;
    v21 = 0;
    CFXTristimulus2Lab(&v34, &v20);
    v24 = binFromAb(&v20 + 1);
    if (v24 != *(v32 + 1228))
    {
      v19 = MachTimeToSeconds(v25 - *(v32 + 1232));
      v9 = *(v32 + 1228);
      v8 = *(v32 + 1024 + 8 * v9) + v19;
      *(v32 + 1024 + 8 * v9) = v8;
      *(v32 + 1232) = v25;
      *(v32 + 1228) = v24;
      *(v32 + 320) = v24;
    }

    LODWORD(v8) = *(v32 + 1784);
    _CFXUpdateCompensatedBacklight(v32, v25, v8);
  }

  v18 = 0;
  v18 = *(v32 + 296);
  *(v32 + 288) = 9;
  __memcpy_chk();
  __memcpy_chk();
  __memcpy_chk();
  v17 = 0;
  _CFXGetWPFromMatrix(v32, __dst, (v32 + 296), &v17);
  *(v32 + 248) = v30;
  *(v32 + 292) = 1.0;
  *(v32 + 240) = 0;
  *(v32 + 232) = Current + v30;
  v16 = 0;
  if (_COREBRIGHTNESS_LOG_DEFAULT || init_default_corebrightness_log())
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v14 = inited;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v13 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      v13 = init_default_corebrightness_log();
    }

    v14 = v13;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_6_8_32_8_0_8_0_8_0_8_0_8_0(v33, "BLR", COERCE__INT64(*&v18), COERCE__INT64(*(&v18 + 1)), COERCE__INT64(*(v32 + 296)), COERCE__INT64(*(v32 + 300)), COERCE__INT64(*(v32 + 248)));
    _os_log_impl(&dword_1DE8E5000, v14, OS_LOG_TYPE_DEFAULT, "[WP update: %s]: (%f;%f) -> (%f;%f) t: %f", v33, 0x3Eu);
  }

  if (*(v32 + 364))
  {
    __memcpy_chk();
    __memcpy_chk();
    *(v32 + 536) = *(v32 + 248);
    *(v32 + 544) = Current;
    v16 = 1;
    *(v32 + 552) = 0;
  }

  if (*(v32 + 328))
  {
    v11 = *(v32 + 328);
    v12 = *(v32 + 336);
    if (v16)
    {
      v11(v12, 0);
    }

    else
    {
      v11(v12, v32 + 248);
    }
  }

  *MEMORY[0x1E69E9840];
  return 1;
}

uint64_t _CFXGetLMSMatrixWithLMSIlluminant(uint64_t a1, float *a2, float *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = 0;
  v8 = 0;
  v9 = 0;
  CFXChromaticity2Tristimulus(a2, &v10, 1.0);
  CFXTristimulus2lms(&v10, &v8);
  v6 = 0;
  v7 = 0;
  Div31VectorBy31Vector(&v8, a3, &v6);
  memset(__b, 0, sizeof(__b));
  __b[4] = HIDWORD(v6);
  __b[0] = v6;
  __b[8] = v7;
  result = __memcpy_chk();
  *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _CFXGetLMSD50Matrix(uint64_t a1, float *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 0x3F829D7C3F7F0EA2;
  v4 = 1062305199;
  result = _CFXGetLMSMatrixWithLMSIlluminant(a1, a2, &v3);
  *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __os_log_helper_16_2_3_8_66_8_66_8_66(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 66;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

uint64_t __os_log_helper_16_2_2_8_66_8_66(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 66;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

uint64_t __os_log_helper_16_2_3_8_66_8_64_4_0(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 66;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 4;
  *(result + 24) = a4;
  return result;
}

uint64_t __os_log_helper_16_0_4_4_0_4_0_4_0_4_0(uint64_t result, int a2, int a3, int a4, int a5)
{
  *result = 0;
  *(result + 1) = 4;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 0;
  *(result + 9) = 4;
  *(result + 10) = a3;
  *(result + 14) = 0;
  *(result + 15) = 4;
  *(result + 16) = a4;
  *(result + 20) = 0;
  *(result + 21) = 4;
  *(result + 22) = a5;
  return result;
}

uint64_t __os_log_helper_16_2_2_8_66_4_0(uint64_t result, uint64_t a2, int a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 66;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  return result;
}

float linearBrightnessToPerceptualBrightness(float a1)
{
  if (a1 < 0.0)
  {
    return 0.0;
  }

  v2 = log2f(a1);
  return (v2 / log2f(500.0)) + 1.0;
}

float perceptualBrightnessToLinearBrightness(float a1)
{
  if (a1 == 0.0)
  {
    return 0.0;
  }

  else
  {
    return powf(500.0, a1 - 1.0);
  }
}

float AAB::DefaultCurve@<S0>(uint64_t a1@<X0>, int a2@<W1>, char a3@<W2>, float *a4@<X3>, uint64_t a5@<X4>, float *a6@<X5>, uint64_t a7@<X8>, float a8@<S0>, float a9@<S1>, float a10@<S2>)
{
  if (a2)
  {
    if (a2 == 1)
    {
      v17 = 1.0;
    }

    else if (a2 == 2)
    {
      v17 = 2.0;
    }

    else
    {
      v17 = 1.0;
    }
  }

  else
  {
    v17 = 0.5;
  }

  *(a7 + 16) = 0;
  *(a7 + 24) = (((a9 - 100.0) / 420.0) * -30.0) + 100.0;
  *(a7 + 20) = 1157234688;
  *(a7 + 28) = (((a9 - 100.0) / 420.0) * 1970.0) + 100.0;
  *a7 = 0;
  *(a7 + 4) = a8;
  *(a7 + 8) = 30.0;
  *(a7 + 12) = a8 + (((100.0 - a8) / 30.0) * (*(a7 + 8) - 0.0));
  if (a3)
  {
    *(a7 + 20) = 1142292480;
    *(a7 + 28) = 1125515264;
    v16 = (*(a7 + 28) - *(a7 + 12)) / (*(a7 + 20) - *(a7 + 8));
    *(a7 + 16) = 0;
    *(a7 + 24) = *(a7 + 28) - ((*(a7 + 20) - *(a7 + 16)) * v16);
  }

  if (a5 && *(a5 + 4) >= 0.0)
  {
    *(a7 + 12) = *(a5 + 4);
  }

  if (a6 && *a6 >= 0.0 && a6[1] >= 0.0)
  {
    *(a7 + 20) = *a6;
    *(a7 + 28) = a6[1];
    v15 = (*(a7 + 28) - *(a7 + 12)) / (*(a7 + 20) - *(a7 + 8));
    *(a7 + 16) = 0;
    *(a7 + 24) = *(a7 + 28) - ((*(a7 + 20) - *(a7 + 16)) * v15);
  }

  v14 = -(*(a7 + 24) - (*(a7 + 24) * v17));
  if (v17 == 2.0)
  {
    v13 = (*(a7 + 12) - *(a7 + 4)) / (*(a7 + 8) - *a7);
    *(a7 + 24) = *(a7 + 24) - (*(a7 + 24) - (*(a7 + 24) * v17));
    *(a7 + 28) = *(a7 + 28) + v14;
    *(a7 + 8) = 1114636288;
    *(a7 + 12) = *(a7 + 24) + (((*(a7 + 28) - *(a7 + 24)) / (*(a7 + 20) - *(a7 + 16))) * *(a7 + 8));
    *(a7 + 4) = *(a7 + 12) - (v13 * *(a7 + 8));
  }

  else if (v17 == 0.5)
  {
    *(a7 + 24) = *(a7 + 24) - (*(a7 + 24) - (*(a7 + 24) * v17));
    *(a7 + 28) = *(a7 + 28) + v14;
    *(a7 + 4) = *(a7 + 4) + v14;
    *(a7 + 12) = *(a7 + 12) + v14;
  }

  (*(*a1 + 16))(a1, "%s: curve: (_E1 = %0.2f, _L1 = %0.4f) (_E2 = %0.2f, _L2 = %0.4f)", "DefaultCurve", *(a7 + 16), *(a7 + 24), *(a7 + 20), *(a7 + 28));
  (*(*a1 + 16))(a1, "%s:  dark  (E0a = %0.2f, L0a = %0.4f) (E0b = %0.2f, L0b = %0.4f)", "DefaultCurve", *a7, *(a7 + 4), *(a7 + 8), *(a7 + 12));
  *(a1 + 52) = *(a7 + 28);
  *(a1 + 40) = *(a7 + 4);
  *(a1 + 48) = *(a7 + 20);
  *(a1 + 44) = *a7;
  *(a7 + 68) = 0;
  *(a7 + 72) = 2;
  *(a7 + 76) = 1;
  *(a7 + 32) = *(a1 + 44);
  *(a7 + 44) = *(a1 + 40);
  *(a7 + 36) = 0;
  *(a7 + 48) = 0;
  *(a7 + 40) = *(a1 + 48);
  *(a7 + 52) = *(a1 + 52);
  *(a7 + 64) = -1;
  *(a7 + 80) = 0;
  *(a7 + 56) = 0;
  *(a7 + 60) = 0;
  *(a7 + 100) = -1.0;
  *(a1 + 56) = a10;
  *(a1 + 60) = a8;
  if (a4 && *a4 > 0.0 && a4[1] > 0.0)
  {
    result = (a4[1] - *(a7 + 28)) / (*a4 - *(a7 + 20));
    *(a7 + 84) = result;
  }

  else
  {
    result = *(a7 + 28) / *(a7 + 20);
    *(a7 + 84) = result;
  }

  return result;
}

float AAB::LuminanceToIlluminance(AAB *this, float a2, const CustomCurve *a3)
{
  v9 = 0.0;
  if (a3->size <= 1)
  {
    if (a3->size == 1)
    {
      v5 = a3->_E[0];
    }

    else
    {
      v5 = 0.0;
    }

    v9 = v5;
  }

  else
  {
    for (i = 0; i < a3->size - 1; ++i)
    {
      if (a2 <= a3->_L[i + 1])
      {
        if ((a3->_E[i + 1] - a3->_E[i]) != 0.0)
        {
          v8 = (a3->_L[i + 1] - a3->_L[i]) / (a3->_E[i + 1] - a3->_E[i]);
          if (v8 == 0.0)
          {
            v6 = a3->_E[i];
          }

          else
          {
            v3 = (a3->_L[i + 1] - a3->_L[i]) / (a3->_E[i + 1] - a3->_E[i]);
            v6 = ((a2 - a3->_L[i]) + (a3->_E[i] * v8)) / v8;
          }

          v9 = fminf(v6, 20000.0);
        }

        return fmaxf(v9, 0.0);
      }

      if (i == a3->size - 2)
      {
        v9 = fminf(a3->_E[i + 1], 20000.0);
        return fmaxf(v9, 0.0);
      }
    }
  }

  return fmaxf(v9, 0.0);
}

float AAB::IlluminanceToLuminance(AAB *this, float a2, const CustomCurve *a3)
{
  v6 = 0.0;
  if (*(this + 40) <= 1)
  {
    if (*(this + 40) == 1)
    {
      v4 = *(this + 20);
    }

    else
    {
      v4 = 0.0;
    }

    v6 = v4;
  }

  else
  {
    for (i = 0; i < *(this + 40) - 1; ++i)
    {
      if (a2 <= *(this + i + 1))
      {
        if ((*(this + i + 1) - *(this + i)) != 0.0)
        {
          v6 = *(this + i + 20) + (((*(this + i + 21) - *(this + i + 20)) / (*(this + i + 1) - *(this + i))) * (a2 - *(this + i)));
        }

        return fmaxf(fmaxf(v6, 0.0), *(this + 20));
      }

      if (i == *(this + 40) - 2)
      {
        v6 = *(this + i + 21);
        return fmaxf(fmaxf(v6, 0.0), *(this + 20));
      }
    }
  }

  return fmaxf(fmaxf(v6, 0.0), *(this + 20));
}

uint64_t AAB::UpdateCurve_Block3(uint64_t a1, uint64_t a2, float a3, float a4, float a5)
{
  v10 = __PAIR64__(LODWORD(a4), LODWORD(a3));
  v11 = a5;
  v9 = a1;
  v8 = a2;
  std::unique_lock<std::mutex>::unique_lock[abi:de200100](v7, a1 + 72);
  (*(**(a1 + 64) + 24))(*(a1 + 64), a1, v8, *&v10, *(&v10 + 1), v11);
  *(v8 + 88) = CFAbsoluteTimeGetCurrent();
  return std::unique_lock<std::mutex>::~unique_lock[abi:de200100](v7);
}

uint64_t std::unique_lock<std::mutex>::unique_lock[abi:de200100](uint64_t a1, uint64_t a2)
{
  std::unique_lock<std::mutex>::unique_lock[abi:de200100](a1, a2);
  return a1;
}

{
  *a1 = a2;
  *(a1 + 8) = 1;
  std::mutex::lock(*a1);
  return a1;
}

uint64_t std::unique_lock<std::mutex>::~unique_lock[abi:de200100](uint64_t a1)
{
  std::unique_lock<std::mutex>::~unique_lock[abi:de200100](a1);
  return a1;
}

{
  if (*(a1 + 8))
  {
    std::mutex::unlock(*a1);
  }

  return a1;
}

uint64_t AAB::UpdateCurve_Block3_WithCappedCurve(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5, float a6, float a7)
{
  v14 = __PAIR64__(LODWORD(a6), LODWORD(a5));
  v15 = a7;
  v13 = a1;
  v12 = a2;
  v11 = a3;
  v10 = a4;
  std::unique_lock<std::mutex>::unique_lock[abi:de200100](v9, a1 + 72);
  (*(**(a1 + 64) + 32))(*(a1 + 64), a1, v12, v11, v10, *&v14, *(&v14 + 1), v15);
  *(v12 + 88) = CFAbsoluteTimeGetCurrent();
  *(v10 + 88) = CFAbsoluteTimeGetCurrent();
  return std::unique_lock<std::mutex>::~unique_lock[abi:de200100](v9);
}

uint64_t AAB::UpdateCurve_Block3_WithCappedCurve_AlternativeCurve(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, float a7, float a8, float a9)
{
  v18 = __PAIR64__(LODWORD(a8), LODWORD(a7));
  v19 = a9;
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v14 = a4;
  v13 = a5;
  v12 = a6;
  std::unique_lock<std::mutex>::unique_lock[abi:de200100](v11, a1 + 72);
  (*(**(a1 + 64) + 32))(*(a1 + 64), a1, v16, v15, v14, *&v18, *(&v18 + 1), v19);
  (*(**(a1 + 64) + 40))(*(a1 + 64), a1, v13, v15, v12, *&v18, *(&v18 + 1), v19);
  *(v16 + 88) = CFAbsoluteTimeGetCurrent();
  *(v14 + 88) = CFAbsoluteTimeGetCurrent();
  *(v13 + 88) = CFAbsoluteTimeGetCurrent();
  *(v12 + 88) = CFAbsoluteTimeGetCurrent();
  return std::unique_lock<std::mutex>::~unique_lock[abi:de200100](v11);
}

uint64_t AAB::GetCurveUpdates@<X0>(AAB *this@<X0>, uint64_t a2@<X8>)
{
  v6 = a2;
  v5 = this;
  std::unique_lock<std::mutex>::unique_lock[abi:de200100](v4, this + 72);
  (*(**(this + 8) + 48))(*(this + 8));
  return std::unique_lock<std::mutex>::~unique_lock[abi:de200100](v4);
}

uint64_t AAB::SetCurveUpdates(uint64_t a1, uint64_t a2)
{
  v6 = a1;
  v5 = a2;
  std::unique_lock<std::mutex>::unique_lock[abi:de200100](v4, a1 + 72);
  (*(**(a1 + 64) + 56))(*(a1 + 64), v5);
  return std::unique_lock<std::mutex>::~unique_lock[abi:de200100](v4);
}

uint64_t AAB::TraditionalUpdateCurveStrategy::UpdateCurve(double a1, float a2, float a3, uint64_t a4, float *a5, uint64_t a6)
{
  (*(*a5 + 8))(a5, "%s: inputs: Esensor=%f Luser=%f %x", "UpdateCurve", a2, a3);
  v16 = (*(a6 + 28) - *(a6 + 24)) / (*(a6 + 20) - *(a6 + 16));
  v15 = *(a6 + 24) / v16;
  if (v15 <= 0.0)
  {
    v15 = (*(a6 + 16) + *(a6 + 20)) / 2.0;
  }

  if (v15 > 300.0)
  {
    v15 = 300.0;
  }

  if (v15 > a5[6] / 1.2)
  {
    v6 = a5[6] / 1.2;
    v15 = v6;
  }

  if (v15 < 30.0)
  {
    v15 = 30.0;
  }

  if (v15 < a5[5] * 1.2)
  {
    v7 = a5[5] * 1.2;
    v15 = v7;
  }

  a5[7] = v15;
  a5[8] = a2;
  a5[9] = a3;
  if (a2 >= *(a6 + 8) || (*(a6 + 24) + (v16 * *(a6 + 8))) >= 200.0)
  {
    if (a2 <= v15)
    {
      a5[5] = a2;
      v9 = (*(a6 + 28) - a3) / (*(a6 + 20) - a5[5]);
      (**a5)(a5, "Esensor: %0.2f Luser: %0.4f Eth_dyn=%0.2f _Mmax=%0.4f _Mmin=%0.4f slope=%0.4f CCCC", a2, a3, v15, a5[2], a5[3], v9);
      v10 = fmaxf(fminf(v9, a5[2]), a5[3]);
      (*(*a5 + 8))(a5, "%s: <= Eth_dyn=%f _Mmax=%f _Mmin=%f slope=%f", "UpdateCurve", v15, a5[2], a5[3], v10);
      *(a6 + 28) = a3 + (v10 * (*(a6 + 20) - a5[5]));
      *(a6 + 24) = a3 + (v10 * (*(a6 + 16) - a5[5]));
      if ((*(a6 + 24) + (v10 * *(a6 + 8))) >= 200.0)
      {
        *(a6 + 4) = *(a6 + 24);
        *(a6 + 12) = *(a6 + 24) + (v10 * *(a6 + 8));
      }

      else
      {
        *(a6 + 8) = *(a6 + 8);
        *(a6 + 12) = *(a6 + 24) + (v10 * *(a6 + 8));
        *(a6 + 4) = *(a6 + 12) - (std::__math::fmax[abi:de200100](fminf((*(a6 + 12) - *(a6 + 4)) / (*(a6 + 8) - *a6), a5[4]), v10) * *(a6 + 8));
      }
    }

    else
    {
      a5[6] = a2;
      v11 = fmaxf(fminf((a3 - *(a6 + 24)) / (a5[6] - *(a6 + 16)), a5[2]), a5[3]);
      (**a5)(a5, "Esensor: %0.2f Luser: %0.4f Eth_dyn=%0.2f _Mmax=%0.4f _Mmin=%0.4f slope=%0.4f", a2, a3, v15, a5[2], a5[3], v11);
      if (a5[6] < 200.0)
      {
        *(a6 + 20) = 1128792064;
        *(a6 + 28) = a3 + (v11 * (*(a6 + 20) - a5[6]));
      }

      else
      {
        *(a6 + 20) = a5[6];
        *(a6 + 28) = a3;
      }

      *(a6 + 24) = *(a6 + 28) + (v11 * (*(a6 + 16) - *(a6 + 20)));
      if ((*(a6 + 24) + (v11 * *(a6 + 8))) >= 200.0)
      {
        *(a6 + 4) = *(a6 + 24);
        *(a6 + 12) = *(a6 + 24) + (v11 * *(a6 + 8));
      }

      else
      {
        *(a6 + 8) = *(a6 + 8);
        *(a6 + 12) = *(a6 + 24) + (v11 * *(a6 + 8));
        *(a6 + 4) = *(a6 + 12) - (std::__math::fmax[abi:de200100](fminf((*(a6 + 12) - *(a6 + 4)) / (*(a6 + 8) - *a6), a5[4]), v11) * *(a6 + 8));
      }
    }
  }

  else
  {
    v14 = fmaxf(fminf((*(a6 + 12) - a3) / (*(a6 + 8) - a2), a5[4]), v16);
    *(a6 + 4) = a3 - (v14 * a2);
    *(a6 + 12) = *(a6 + 4) + (v14 * *(a6 + 8));
    a5[5] = *(a6 + 8);
    v12 = (*(a6 + 28) - *(a6 + 12)) / (*(a6 + 20) - a5[5]);
    (**a5)(a5, "Esensor: %0.2f Luser: %0.4f Eth_dyn=%f _Mmax=%0.4f _Mmin=%0.4f slope=%0.4f", a2, a3, v15, a5[2], a5[3], v12);
    v13 = fmaxf(fminf(v12, a5[2]), a5[3]);
    *(a6 + 28) = *(a6 + 12) + (v13 * (*(a6 + 20) - a5[5]));
    *(a6 + 24) = *(a6 + 12) + (v13 * (*(a6 + 16) - a5[5]));
  }

  return (*(*a5 + 8))(a5, "%s: outputs: E1=%f L1=%f E2=%f L2=%f", "UpdateCurve", *(a6 + 16), *(a6 + 24), *(a6 + 20), *(a6 + 28));
}

float AAB::FitCurveToReferencePoints(float *a1, uint64_t a2, int a3)
{
  result = 0.0;
  if (a3)
  {
    if (a3 == 1)
    {
      if (a1[11] < *(a2 + 8))
      {
        result = a1[11];
        if (result < *(a2 + 8))
        {
          for (i = a1[13] - (a1[3] * (a1[12] - *(a2 + 8))); i >= (a1[13] - (a1[2] * (a1[12] - *(a2 + 8)))); i = i - 0.01)
          {
            v15 = (i - a1[10]) / (*(a2 + 8) - a1[11]);
            if (v15 <= ((a1[13] - i) / (a1[12] - *(a2 + 8))) || v15 < a1[4])
            {
              break;
            }
          }

          v12 = (a1[13] - i) / (a1[12] - *(a2 + 8));
          *(a2 + 12) = a1[13] - (v12 * (a1[12] - *(a2 + 8)));
          if (a1[12] < 301.0)
          {
            *(a2 + 20) = 1133936640;
          }

          else
          {
            *(a2 + 20) = a1[12];
          }

          *(a2 + 28) = a1[13] + (v12 * (*(a2 + 20) - a1[12]));
          *(a2 + 24) = *(a2 + 28) - (v12 * *(a2 + 20));
          result = *(a2 + 12) - (fminf(fmaxf((*(a2 + 12) - a1[10]) / (*(a2 + 8) - a1[11]), v12), a1[4]) * (*(a2 + 8) - *a2));
          *(a2 + 4) = result;
        }
      }

      else
      {
        v11 = fminf(fmaxf((a1[13] - a1[10]) / (a1[12] - a1[11]), a1[3]), a1[2]);
        if (a1[12] < 301.0)
        {
          *(a2 + 20) = 1133936640;
        }

        else
        {
          *(a2 + 20) = a1[12];
        }

        *(a2 + 28) = a1[13] + (v11 * (*(a2 + 20) - a1[12]));
        *(a2 + 24) = *(a2 + 28) - (v11 * *(a2 + 20));
        *(a2 + 12) = *(a2 + 28) - (v11 * (*(a2 + 20) - *(a2 + 8)));
        result = *(a2 + 12) - (fmaxf(fminf(a1[4], (*(a2 + 12) - a1[15]) / (*(a2 + 8) - *a2)), v11) * *(a2 + 8));
        *(a2 + 4) = result;
      }
    }
  }

  else if (a1[11] == *(a2 + 8))
  {
    *(a2 + 12) = a1[10];
    v7 = fminf(fmaxf((a1[13] - *(a2 + 12)) / (a1[12] - *(a2 + 8)), a1[3]), a1[2]);
    *(a2 + 28) = *(a2 + 12) + (v7 * (*(a2 + 20) - *(a2 + 8)));
    *(a2 + 24) = *(a2 + 28) - (v7 * *(a2 + 20));
    result = a1[10] - (fmaxf(fminf(a1[4], (a1[10] - a1[15]) / (*(a2 + 8) - *a2)), v7) * a1[11]);
    *(a2 + 4) = result;
  }

  else if (a1[11] >= *(a2 + 8))
  {
    v10 = fminf(fmaxf((a1[13] - a1[10]) / (a1[12] - a1[11]), a1[3]), a1[2]);
    *(a2 + 28) = a1[10] + (v10 * (*(a2 + 20) - a1[11]));
    *(a2 + 24) = *(a2 + 28) - (v10 * *(a2 + 20));
    *(a2 + 12) = *(a2 + 28) - (v10 * (*(a2 + 20) - *(a2 + 8)));
    result = *(a2 + 12) - (fmaxf(fminf(a1[4], (*(a2 + 12) - a1[15]) / (*(a2 + 8) - *a2)), v10) * *(a2 + 8));
    *(a2 + 4) = result;
  }

  else
  {
    v13 = a1[4];
    for (j = a1[10]; j < a1[14]; j = j + 0.01)
    {
      v13 = (j - a1[10]) / (*(a2 + 8) - a1[11]);
      if (v13 > a1[3])
      {
        v8 = (a1[13] - j) / (a1[12] - *(a2 + 8));
        if (v13 >= a1[4])
        {
          v13 = a1[4];
          break;
        }

        if (v8 <= a1[3] || v13 >= v8 && v8 <= a1[2] && (j - (v13 * (*(a2 + 8) - *a2))) <= a1[15] && *a2 != a1[11])
        {
          break;
        }
      }
    }

    v14 = fminf(v13, a1[4]);
    *(a2 + 4) = a1[10] - (v14 * a1[11]);
    *(a2 + 12) = a1[10] + (v14 * (*(a2 + 8) - a1[11]));
    v9 = fminf(fmaxf((a1[13] - *(a2 + 12)) / (a1[12] - *(a2 + 8)), a1[3]), a1[2]);
    *(a2 + 28) = *(a2 + 12) + (v9 * (*(a2 + 20) - *(a2 + 8)));
    result = *(a2 + 28) - (v9 * *(a2 + 20));
    *(a2 + 24) = result;
  }

  return result;
}

uint64_t AAB::UpdateAge(uint64_t result, _DWORD *a2)
{
  if (a2[9] != result)
  {
    if (a2[10] != result)
    {
      a2[11] = a2[10];
    }

    a2[10] = a2[9];
  }

  a2[9] = result;
  return result;
}

uint64_t AAB::Reset(AAB *this)
{
  v4 = this;
  std::unique_lock<std::mutex>::unique_lock[abi:de200100](v3, this + 72);
  (*(**(this + 8) + 16))(*(this + 8));
  return std::unique_lock<std::mutex>::~unique_lock[abi:de200100](v3);
}

uint64_t AAB::SetUpdateStrategy(AAB *this, AAB::UpdateCurveStrategy *a2)
{
  v7 = this;
  v6 = a2;
  std::unique_lock<std::mutex>::unique_lock[abi:de200100](v5, this + 72);
  if (v6)
  {
    if (*(this + 8))
    {
      if (*(this + 8) != v6)
      {
        v3 = *(this + 8);
        if (v3)
        {
          (*(*v3 + 8))(v3);
        }
      }
    }

    *(this + 8) = v6;
  }

  return std::unique_lock<std::mutex>::~unique_lock[abi:de200100](v5);
}

float AAB::PreferenceUpdateCurveStrategy::UpdateCurveAndCappedCurve(uint64_t a1, uint64_t a2, uint64_t a3, float *a4, uint64_t a5, double a6, float a7, float a8)
{
  v15 = __PAIR64__(LODWORD(a7), LODWORD(a6));
  v16 = a8;
  AAB::PreferenceUpdateCurveStrategy::UpdateCurve(a6, a7, a8, a1, a2, a3);
  CapForE = AAB::findCapForE(a4, *&v15);
  if (v16 > CapForE)
  {
    v16 = CapForE;
  }

  LODWORD(v8) = v15;
  return AAB::PreferenceUpdateCurveStrategy::UpdateCurve(v8, *(&v15 + 1), v16, a1, a2, a5);
}

float AAB::PreferenceUpdateCurveStrategy::UpdateCurve(double a1, float a2, float a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a6 + 32;
  *(a6 + 100) = -1.0;
  v11 = *(a6 + 20) + ((*(a5 + 56) - *(a6 + 28)) / *(a6 + 84));
  if (a2 > 300.0)
  {
    v13 = 2;
    *(a6 + 80) = 0;
  }

  else if (a2 > *(a6 + 8))
  {
    v13 = 1;
    *(a6 + 80) = 0;
  }

  else
  {
    v13 = 0;
  }

  if (v13 != 1 && *(a6 + 64) != -1)
  {
    *(a6 + 32 + 4 * *(a6 + 64)) = *(a6 + 56);
    *(a6 + 44 + 4 * *(a6 + 64)) = *(a6 + 60);
  }

  *(a6 + 64) = -1;
  AAB::UpdateAge(v13, v12);
  *(v12 + 4 * v13) = a2;
  *(v12 + 12 + 4 * v13) = a3;
  if (*(v12 + 36) || *(v12 + 40) != 2)
  {
    if (*(v12 + 36) != 2 || *(v12 + 40))
    {
      v10 = *(v12 + 4) - *v12;
      v9 = *(v12 + 8) - *(v12 + 4);
      if (*(v12 + 36) == 1)
      {
        if (v10 > v9)
        {
          *(a5 + 44) = *v12;
          *(a5 + 40) = *(v12 + 12);
          *(a5 + 48) = *(v12 + 4);
          *(a5 + 52) = *(v12 + 16);
          v14 = 1;
          AAB::FitCurveToReferencePoints(a5, a6, 1);
        }

        else
        {
          *(a5 + 44) = *(v12 + 4);
          *(a5 + 40) = *(v12 + 16);
          *(a5 + 48) = *(v12 + 8);
          *(a5 + 52) = *(v12 + 20);
          v14 = 0;
          AAB::FitCurveToReferencePoints(a5, a6, 0);
        }
      }

      else
      {
        if (*(v12 + 36))
        {
          *(a5 + 48) = *(v12 + 8);
          *(a5 + 52) = *(v12 + 20);
          v14 = 1;
          if (v10 > v9)
          {
            *(a5 + 44) = *v12;
            *(a5 + 40) = *(v12 + 12);
          }

          else
          {
            *(a5 + 44) = *(v12 + 4);
            *(a5 + 40) = *(v12 + 16);
          }
        }

        else
        {
          *(a5 + 44) = *v12;
          *(a5 + 40) = *(v12 + 12);
          v14 = 0;
          if (v10 > v9)
          {
            *(a5 + 48) = *(v12 + 4);
            *(a5 + 52) = *(v12 + 16);
          }

          else
          {
            if ((*(v12 + 48) & 1) == 0)
            {
              *(v12 + 8) = *(a6 + 20);
              *(v12 + 20) = *(a6 + 28);
              *(v12 + 48) = 1;
            }

            *(a5 + 48) = *(v12 + 8);
            *(a5 + 52) = *(v12 + 20);
          }
        }

        AAB::FitCurveToReferencePoints(a5, a6, v14);
      }
    }

    else
    {
      *(a5 + 44) = *v12;
      *(a5 + 40) = *(v12 + 12);
      *(a5 + 48) = *(v12 + 8);
      *(a5 + 52) = *(v12 + 20);
      v14 = 1;
      AAB::FitCurveToReferencePoints(a5, a6, 1);
    }
  }

  else
  {
    *(a5 + 44) = *v12;
    *(a5 + 40) = *(v12 + 12);
    *(a5 + 48) = *(v12 + 8);
    *(a5 + 52) = *(v12 + 20);
    v14 = 0;
    AAB::FitCurveToReferencePoints(a5, a6, 0);
  }

  if (*(v12 + 36) == 1)
  {
    if (v14)
    {
      v8 = (*(a6 + 28) - *(a6 + 12)) / (*(a6 + 20) - *(a6 + 8));
      *(v12 + 32) = 2;
      *(v12 + 24) = *(v12 + 8);
      *(v12 + 28) = *(a6 + 28) + (v8 * (*(v12 + 8) - *(a6 + 20)));
    }

    else
    {
      *(v12 + 24) = *(a6 + 8);
      *(v12 + 28) = *(a6 + 12);
      *(v12 + 32) = 0;
    }
  }

  v7 = *(a6 + 28) / *(a6 + 20);
  if ((*(a6 + 20) + ((*(a5 + 56) - *(a6 + 28)) / v7)) < v11)
  {
    *(a6 + 84) = fmaxf((*(a5 + 56) - *(a6 + 28)) / (v11 - *(a6 + 20)), (*(a6 + 28) - *(a6 + 12)) / (*(a6 + 20) - *(a6 + 8)));
  }

  else
  {
    *(a6 + 84) = v7;
  }

  *(a5 + 32) = a2;
  result = a3;
  *(a5 + 36) = a3;
  return result;
}

float AAB::findCapForE(float *a1, float a2)
{
  v6 = a1[4];
  if (a2 <= *a1)
  {
    return a1[4];
  }

  if (a2 >= a1[3])
  {
    return a1[7];
  }

  for (i = 1; i < 4; ++i)
  {
    if (a2 < a1[i])
    {
      v4 = a1[i - 1];
      v2 = a1[i + 3];
      return v2 + (((a2 - v4) / (a1[i] - v4)) * (a1[i + 4] - v2));
    }
  }

  return v6;
}

void AAB::curveToCustomCurve(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 160) = 4;
  *a3 = *a2;
  *(a3 + 4) = *(a2 + 8);
  *(a3 + 8) = *(a2 + 20);
  *(a3 + 12) = 1184645120;
  *(a3 + 80) = *(a2 + 4);
  *(a3 + 84) = *(a2 + 12);
  *(a3 + 88) = *(a2 + 28);
  *(a3 + 92) = AAB::IlluminanceToLuminance(a1, a2, 20000.0);
}

BOOL lineIntersection(float *a1, float a2, float a3, float a4, float a5, float a6, float a7, float a8, float a9)
{
  v14 = 0;
  if ((a4 - a2) == 0.0)
  {
    return 0;
  }

  else
  {
    v13 = (a5 - a3) / (a4 - a2);
    v12 = (a9 - a7) / (a8 - a6);
    v11 = a3 - (v13 * a2);
    if ((v13 - v12) == 0.0)
    {
      return 0;
    }

    else
    {
      v10 = ((a7 - (v12 * a6)) - v11) / (v13 - v12);
      *a1 = v10;
      a1[1] = v11 + (v13 * v10);
      if (a2 <= v10 && a6 <= v10 && a4 >= v10)
      {
        return a8 >= v10;
      }

      return v14;
    }
  }
}

void AAB::findDarkerCurve(AAB *this, CustomCurve *a2, CustomCurve *a3, CustomCurve *a4)
{
  v24 = this;
  v23 = a2;
  v22 = a3;
  v21 = 0;
  v20 = 0;
  v19 = 0;
  if (COERCE_INT(*this * 10000.0) == COERCE_INT(a2->_E[0] * 10000.0))
  {
    v22->_E[0] = *this;
    if (*(this + 20) >= a2->_L[0])
    {
      v5 = a2->_L[0];
    }

    else
    {
      v5 = *(this + 20);
    }

    v22->_L[0] = v5;
  }

  else if (*this >= a2->_E[0])
  {
    v22->_E[0] = a2->_E[0];
    v22->_L[0] = a2->_L[0];
  }

  else
  {
    v22->_E[0] = *this;
    v22->_L[0] = *(this + 20);
  }

  ++v19;
  while (1)
  {
    v4 = 0;
    if (v21 + 1 < *(this + 40))
    {
      v4 = v20 + 1 < a2->size;
    }

    if (!v4)
    {
      break;
    }

    *v18 = 0;
    v16 = *(this + v21);
    v17 = *(this + v21 + 20);
    v14 = *(this + v21 + 1);
    v15 = *(this + v21 + 21);
    v12 = a2->_E[v20];
    v13 = a2->_L[v20];
    v10 = a2->_E[v20 + 1];
    v11 = a2->_L[v20 + 1];
    if (lineIntersection(v18, v16, v17, v14, v15, v12, v13, v10, v11))
    {
      v22->_E[v19] = v18[0];
      v22->_L[v19++] = v18[1];
    }

    if (*(this + v21 + 1) > a2->_E[v20 + 1])
    {
      v8 = getY(v16, v17, v14, v15, a2->_E[v20 + 1]);
      if (v8 > a2->_L[v20 + 1])
      {
        v22->_E[v19] = a2->_E[v20 + 1];
        v22->_L[v19++] = a2->_L[v20 + 1];
      }

      ++v20;
    }

    else
    {
      v9 = getY(v12, v13, v10, v11, *(this + v21 + 1));
      if (v9 > *(this + v21 + 21))
      {
        v22->_E[v19] = *(this + v21 + 1);
        v22->_L[v19++] = *(this + v21 + 21);
      }

      ++v21;
    }
  }

  if (*(this + 40) - 1 > v21 && *(this + ++v21 + 20) < a2->_L[v20])
  {
    v22->_E[v19] = *(this + v21);
    v22->_L[v19++] = *(this + v21 + 20);
  }

  if (a2->size - 1 > v20 && a2->_L[++v20] < *(this + v21 + 20))
  {
    v22->_E[v19] = a2->_E[v20];
    v22->_L[v19++] = a2->_L[v20];
  }

  v22->size = v19;
}

float AAB::customCurveToCurve@<S0>(const CustomCurve *a1@<X1>, float *a2@<X8>)
{
  memset(a2, 0, 0x68uLL);
  if (a1->size == 4)
  {
    *a2 = a1->_E[0];
    a2[2] = a1->_E[1];
    a2[5] = a1->_E[2];
    a2[1] = a1->_L[0];
    a2[3] = a1->_L[1];
    a2[7] = a1->_L[2];
    a2[4] = 0.0;
    a2[6] = a2[3] - ((a2[2] - a2[4]) * ((a2[7] - a2[3]) / (a2[5] - a2[2])));
    result = (a1->_L[3] - a1->_L[2]) / (a1->_E[3] - a1->_E[2]);
    a2[21] = result;
  }

  return result;
}

void AAB::TraditionalUpdateCurveStrategy::~TraditionalUpdateCurveStrategy(AAB::TraditionalUpdateCurveStrategy *this)
{
  AAB::TraditionalUpdateCurveStrategy::~TraditionalUpdateCurveStrategy(this);
}

{
  AAB::TraditionalUpdateCurveStrategy::~TraditionalUpdateCurveStrategy(this);
  MEMORY[0x1E12C4020](this, 0x81C40B8603338);
}

{
  AAB::UpdateCurveStrategy::~UpdateCurveStrategy(this);
}

uint64_t __os_log_helper_16_2_3_8_66_8_66_8_32(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 66;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 32;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

uint64_t __os_log_helper_16_2_4_8_0_8_32_8_0_8_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 32;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 0;
  *(result + 33) = 8;
  *(result + 34) = a5;
  return result;
}

uint64_t __os_log_helper_16_2_2_8_32_8_0(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

uint64_t __os_log_helper_16_2_3_8_32_8_64_8_64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 64;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

uint64_t __os_log_helper_16_0_5_8_0_8_0_8_0_4_0_8_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  *result = 0;
  *(result + 1) = 5;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 0;
  *(result + 33) = 4;
  *(result + 34) = a5;
  *(result + 38) = 0;
  *(result + 39) = 8;
  *(result + 40) = a6;
  return result;
}

void load_libEDR()
{
  v2 = *MEMORY[0x1E69E9840];
  oslog = MEMORY[0x1E69E9C10];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_2_1_8_32(v1, "load_libEDR");
    _os_log_impl(&dword_1DE8E5000, oslog, OS_LOG_TYPE_INFO, "%s: ", v1, 0xCu);
  }

  if (load_libEDR_onceToken_libEDRLoad != -1)
  {
    dispatch_once(&load_libEDR_onceToken_libEDRLoad, &__block_literal_global_9);
  }

  *MEMORY[0x1E69E9840];
}

void __load_libEDR_block_invoke()
{
  v30 = *MEMORY[0x1E69E9840];
  libEDRHandle = dlopen("/System/Library/PrivateFrameworks/libEDR.framework/libEDR", 1);
  if (libEDRHandle)
  {
    v14 = dlsym(libEDRHandle, "EDRServerStartService");
    if (v14)
    {
      edrServiceStartFunction = v14;
    }

    else
    {
      oslog = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v0 = dlerror();
        __os_log_helper_16_2_3_8_32_8_32_8_32(v28, "load_libEDR_block_invoke", "EDRServerStartService", v0);
        _os_log_error_impl(&dword_1DE8E5000, oslog, OS_LOG_TYPE_ERROR, "%s: couldn't lookup symbol %s:\n%s", v28, 0x20u);
      }
    }

    v15 = dlsym(libEDRHandle, "EDRServerSetDisplayBrightnessForDisplay");
    if (v15)
    {
      edrServerSetDisplayBrightnessFunction = v15;
    }

    else
    {
      v12 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v1 = dlerror();
        __os_log_helper_16_2_3_8_32_8_32_8_32(v27, "load_libEDR_block_invoke", "EDRServerSetDisplayBrightnessForDisplay", v1);
        _os_log_error_impl(&dword_1DE8E5000, v12, OS_LOG_TYPE_ERROR, "%s: couldn't lookup symbol %s:\n%s", v27, 0x20u);
      }
    }

    v16 = dlsym(libEDRHandle, "EDRServerAddMainDisplay");
    if (v16)
    {
      edrServerAddMainDisplayFunction = v16;
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v2 = dlerror();
        __os_log_helper_16_2_3_8_32_8_32_8_32(v26, "load_libEDR_block_invoke", "EDRServerAddMainDisplay", v2);
        _os_log_error_impl(&dword_1DE8E5000, v11, OS_LOG_TYPE_ERROR, "%s: couldn't lookup symbol %s:\n%s", v26, 0x20u);
      }
    }

    v17 = dlsym(libEDRHandle, "EDRServerAddDisplay");
    if (v17)
    {
      edrServerAddDisplayFunction = v17;
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v3 = dlerror();
        __os_log_helper_16_2_3_8_32_8_32_8_32(v25, "load_libEDR_block_invoke", "EDRServerAddDisplay", v3);
        _os_log_error_impl(&dword_1DE8E5000, v10, OS_LOG_TYPE_ERROR, "%s: couldn't lookup symbol %s:\n%s", v25, 0x20u);
      }
    }

    v18 = dlsym(libEDRHandle, "EDRServerRemoveDisplay");
    if (v18)
    {
      edrServerRemoveDisplayFunction = v18;
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v4 = dlerror();
        __os_log_helper_16_2_3_8_32_8_32_8_32(v24, "load_libEDR_block_invoke", "EDRServerRemoveDisplay", v4);
        _os_log_error_impl(&dword_1DE8E5000, v9, OS_LOG_TYPE_ERROR, "%s: couldn't lookup symbol %s:\n%s", v24, 0x20u);
      }
    }

    v19 = dlsym(libEDRHandle, "EDRServerGetCurrentDisplayPropertiesForDisplay");
    if (v19)
    {
      edrServerGetCurrentDisplayPropertiesFunction = v19;
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v5 = dlerror();
        __os_log_helper_16_2_3_8_32_8_32_8_32(v23, "load_libEDR_block_invoke", "EDRServerGetCurrentDisplayPropertiesForDisplay", v5);
        _os_log_error_impl(&dword_1DE8E5000, v8, OS_LOG_TYPE_ERROR, "%s: couldn't lookup symbol %s:\n%s", v23, 0x20u);
      }
    }

    v20 = dlsym(libEDRHandle, "EDRServerRegisterCallbackBlockOnQueue");
    if (v20)
    {
      edrServerRegisterCallbackBlockOnQueueFunction = v20;
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v6 = dlerror();
        __os_log_helper_16_2_3_8_32_8_32_8_32(v22, "load_libEDR_block_invoke", "EDRServerRegisterCallbackBlockOnQueue", v6);
        _os_log_error_impl(&dword_1DE8E5000, v7, OS_LOG_TYPE_ERROR, "%s: couldn't lookup symbol %s:\n%s", v22, 0x20u);
      }
    }
  }

  else
  {
    v21 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_32(v29, "load_libEDR_block_invoke");
      _os_log_error_impl(&dword_1DE8E5000, v21, OS_LOG_TYPE_ERROR, "%s: libEDR.framework not found!\n", v29, 0xCu);
    }
  }

  *MEMORY[0x1E69E9840];
}

BOOL CBEDRServerStartServer()
{
  load_libEDR();
  if (CBEDRServerStartServer_onceToken_libEDRServiceStar != -1)
  {
    dispatch_once(&CBEDRServerStartServer_onceToken_libEDRServiceStar, &__block_literal_global_11);
  }

  return libEDRHandle != 0;
}

void __CBEDRServerStartServer_block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  if (edrServiceStartFunction)
  {
    v1 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_1_8_32(v3, "CBEDRServerStartServer_block_invoke");
      _os_log_impl(&dword_1DE8E5000, v1, OS_LOG_TYPE_INFO, "%s: EDR service kick off", v3, 0xCu);
    }

    edrServiceStartFunction();
  }

  else
  {
    oslog = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_32(v2, "CBEDRServerStartServer_block_invoke");
      _os_log_error_impl(&dword_1DE8E5000, oslog, OS_LOG_TYPE_ERROR, "%s: missing edrServiceStartFunction", v2, 0xCu);
    }
  }

  *MEMORY[0x1E69E9840];
}

uint64_t __os_log_helper_16_2_6_8_32_4_0_8_0_8_0_8_0_8_0(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *result = 2;
  *(result + 1) = 6;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 0;
  *(result + 19) = 8;
  *(result + 20) = a4;
  *(result + 28) = 0;
  *(result + 29) = 8;
  *(result + 30) = a5;
  *(result + 38) = 0;
  *(result + 39) = 8;
  *(result + 40) = a6;
  *(result + 48) = 0;
  *(result + 49) = 8;
  *(result + 50) = a7;
  return result;
}

void CBEDRServerAddMainDisplay(unsigned int a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (edrServerAddMainDisplayFunction)
  {
    v2 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_2_8_32_4_0(v5, "CBEDRServerAddMainDisplay", a1);
      _os_log_impl(&dword_1DE8E5000, v2, OS_LOG_TYPE_INFO, "%s: main display: %u", v5, 0x12u);
    }

    edrServerAddMainDisplayFunction(a1);
  }

  else
  {
    oslog = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_32(v4, "CBEDRServerAddMainDisplay");
      _os_log_error_impl(&dword_1DE8E5000, oslog, OS_LOG_TYPE_ERROR, "%s: missing edrServerSetMainDisplayFunction", v4, 0xCu);
    }
  }

  *MEMORY[0x1E69E9840];
}

void CBEDRServerAddDisplay(unsigned int a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (edrServerAddDisplayFunction)
  {
    v2 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_2_8_32_4_0(v5, "CBEDRServerAddDisplay", a1);
      _os_log_impl(&dword_1DE8E5000, v2, OS_LOG_TYPE_INFO, "%s: adding display: %u", v5, 0x12u);
    }

    edrServerAddDisplayFunction(a1);
  }

  else
  {
    oslog = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_32(v4, "CBEDRServerAddDisplay");
      _os_log_error_impl(&dword_1DE8E5000, oslog, OS_LOG_TYPE_ERROR, "%s: missing edrServerAddDisplayFunction", v4, 0xCu);
    }
  }

  *MEMORY[0x1E69E9840];
}

void CBEDRServerRemoveDisplay(unsigned int a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (edrServerRemoveDisplayFunction)
  {
    v2 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_2_8_32_4_0(v5, "CBEDRServerRemoveDisplay", a1);
      _os_log_impl(&dword_1DE8E5000, v2, OS_LOG_TYPE_INFO, "%s: removing display: %u", v5, 0x12u);
    }

    edrServerRemoveDisplayFunction(a1);
  }

  else
  {
    oslog = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_32(v4, "CBEDRServerRemoveDisplay");
      _os_log_error_impl(&dword_1DE8E5000, oslog, OS_LOG_TYPE_ERROR, "%s: missing edrServerRemoveDisplayFunction", v4, 0xCu);
    }
  }

  *MEMORY[0x1E69E9840];
}

void CBEDRServerGetCurrentDisplayPropertiesForDisplay(unsigned int a1, float *a2, float *a3, float *a4, float *a5, float *a6)
{
  v16 = *MEMORY[0x1E69E9840];
  if (edrServerGetCurrentDisplayPropertiesFunction)
  {
    edrServerGetCurrentDisplayPropertiesFunction(a1, a2, a3, a4, a5, a6);
    oslog = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_7_8_32_4_0_8_0_8_0_8_0_8_0_8_0(v15, "CBEDRServerGetCurrentDisplayPropertiesForDisplay", a1, COERCE__INT64(*a2), COERCE__INT64(*a3), COERCE__INT64(*a4), COERCE__INT64(*a5), COERCE__INT64(*a6));
      _os_log_debug_impl(&dword_1DE8E5000, oslog, OS_LOG_TYPE_DEBUG, "%s: display: %u | backlight: %f | EDR factor: %f | max luminance: %f | ambient illuminance: %f | brightness scaler: %f", v15, 0x44u);
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_32(v14, "CBEDRServerGetCurrentDisplayPropertiesForDisplay");
      _os_log_error_impl(&dword_1DE8E5000, v6, OS_LOG_TYPE_ERROR, "%s: missing edrServerGetCurrentDisplayPropertiesFunction", v14, 0xCu);
    }
  }

  *MEMORY[0x1E69E9840];
}

uint64_t __os_log_helper_16_2_7_8_32_4_0_8_0_8_0_8_0_8_0_8_0(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *result = 2;
  *(result + 1) = 7;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 0;
  *(result + 19) = 8;
  *(result + 20) = a4;
  *(result + 28) = 0;
  *(result + 29) = 8;
  *(result + 30) = a5;
  *(result + 38) = 0;
  *(result + 39) = 8;
  *(result + 40) = a6;
  *(result + 48) = 0;
  *(result + 49) = 8;
  *(result + 50) = a7;
  *(result + 58) = 0;
  *(result + 59) = 8;
  *(result + 60) = a8;
  return result;
}

void CBEDRServerRegisterCallbackBlockOnQueue(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (edrServerRegisterCallbackBlockOnQueueFunction)
  {
    oslog = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_3_8_32_8_0_8_0(v7, "CBEDRServerRegisterCallbackBlockOnQueue", a2, a1);
      _os_log_impl(&dword_1DE8E5000, oslog, OS_LOG_TYPE_INFO, "%s: register callback (%p) on a queue (%p)", v7, 0x20u);
    }

    edrServerRegisterCallbackBlockOnQueueFunction(a1, a2);
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_32(v6, "CBEDRServerRegisterCallbackBlockOnQueue");
      _os_log_error_impl(&dword_1DE8E5000, v2, OS_LOG_TYPE_ERROR, "%s: missing edrServerRegisterCallbackBlockOnQueueFunction", v6, 0xCu);
    }
  }

  *MEMORY[0x1E69E9840];
}

BOOL aabParamsDiffer(const CBAABParams *a1, const CBAABParams *a2)
{
  v3 = 1;
  if (a1->e0a == a2->e0a)
  {
    v3 = 1;
    if (a1->e0b == a2->e0b)
    {
      v3 = 1;
      if (a1->e1 == a2->e1)
      {
        v3 = 1;
        if (a1->e2 == a2->e2)
        {
          v3 = 1;
          if (a1->l0a == a2->l0a)
          {
            v3 = 1;
            if (a1->l0b == a2->l0b)
            {
              v3 = 1;
              if (a1->l1 == a2->l1)
              {
                v3 = 1;
                if (a1->l2 == a2->l2)
                {
                  return a1->thirdSlope != a2->thirdSlope;
                }
              }
            }
          }
        }
      }
    }
  }

  return v3;
}

uint64_t std::array<CBSliderCommitInfo,100ul>::operator[][abi:de200100](uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x64)
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/array:269: assertion __n < _Size failed: out-of-bounds access in std::array<T, N>\n");
  }

  return a1 + 232 * a2;
}

void TrackedState::TrackedState(TrackedState *this)
{
  TrackedState::TrackedState(this);
}

{
  this->darkThemeApplied = 0;
  this->landscapeOrientation = 0;
  this->autobrightnessEnabled = 0;
  this->ecoModeEnabled = 0;
}

uint64_t CBU_IsHarmonySupported()
{
  v6 = *MEMORY[0x1E69E9840];
  bzero(__s1, 0x400uLL);
  v2 = 1024;
  if (sysctlbyname("kern.bootargs", __s1, &v2, 0, 0) || !strstr(__s1, "FORCE_HARMONY_SUPPORT"))
  {
    v3 = 0;
  }

  else
  {
    oslog = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_1_8_32(v4, "CBU_IsHarmonySupported");
      _os_log_impl(&dword_1DE8E5000, oslog, OS_LOG_TYPE_INFO, "%s: boot-arg to enforce harmony support", v4, 0xCu);
    }

    v3 = 1;
  }

  *MEMORY[0x1E69E9840];
  return v3 & 1;
}

uint64_t CBU_PlatformNativelySupportsALS()
{
  if ((CBU_IsAppleSiliconMac() & 1) != 0 && CBU_PlatformNativelySupportsALS_onceToken != -1)
  {
    dispatch_once(&CBU_PlatformNativelySupportsALS_onceToken, &__block_literal_global_10);
  }

  return CBU_PlatformNativelySupportsALS_supported & 1;
}

uint64_t CBU_PlatformNativelySupportsColorALS()
{
  if (CBU_PlatformNativelySupportsColorALS_onceToken != -1)
  {
    dispatch_once(&CBU_PlatformNativelySupportsColorALS_onceToken, &__block_literal_global_25);
  }

  return CBU_PlatformNativelySupportsColorALS_supported & 1;
}

uint64_t CBU_ForceUpdateFrequencyAndFrameSkip()
{
  if (CBU_ForceUpdateFrequencyAndFrameSkip_once != -1)
  {
    dispatch_once(&CBU_ForceUpdateFrequencyAndFrameSkip_once, &__block_literal_global_36);
  }

  return CBU_ForceUpdateFrequencyAndFrameSkip_force & 1;
}

uint64_t CBU_ForceFrameAfterBrightnessUpdate()
{
  if (CBU_ForceFrameAfterBrightnessUpdate_once != -1)
  {
    dispatch_once(&CBU_ForceFrameAfterBrightnessUpdate_once, &__block_literal_global_40);
  }

  return CBU_ForceFrameAfterBrightnessUpdate_force & 1;
}

uint64_t CBU_RampLumaBoostFactorInAOD()
{
  if (CBU_RampLumaBoostFactorInAOD_once != -1)
  {
    dispatch_once(&CBU_RampLumaBoostFactorInAOD_once, &__block_literal_global_84);
  }

  return CBU_RampLumaBoostFactorInAOD_result & 1;
}

uint64_t CBU_ShouldWaitForALS()
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = 0;
  v16 = xmmword_1DEACDBA8;
  v17 = 414393924;
  v14 = xmmword_1DEACDBBC;
  v15 = 897736383;
  v12 = xmmword_1DEACDBD0;
  v13 = -996295886;
  v10 = xmmword_1DEACDBE4;
  v11 = -453987047;
  v8 = xmmword_1DEACDBF8;
  v9 = -337121064;
  v6 = xmmword_1DEACDC0C;
  v7 = 450980336;
  v4 = xmmword_1DEACDC20;
  v5 = -1431778695;
  v1[8] = v1;
  v1[0] = &v14;
  v1[1] = &v12;
  v1[2] = &v10;
  v1[3] = &v8;
  v1[4] = &v6;
  v1[5] = &v4;
  v1[6] = 0;
  v1[7] = 0;
  v3 = MGIsDeviceOneOfType();
  v2 = v3;
  *MEMORY[0x1E69E9840];
  return v3 & 1;
}

uint64_t CBU_IsPad()
{
  if (CBU_IsPad_once != -1)
  {
    dispatch_once(&CBU_IsPad_once, &__block_literal_global_99);
  }

  return CBU_IsPad_result & 1;
}

uint64_t __os_log_helper_16_2_3_8_32_8_32_4_0(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 32;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 4;
  *(result + 24) = a4;
  return result;
}

uint64_t CBU_IsTestModeEnabled()
{
  if (CBU_IsTestModeEnabled_once != -1)
  {
    dispatch_once(&CBU_IsTestModeEnabled_once, &__block_literal_global_108);
  }

  return CBU_IsTestModeEnabled_result & 1;
}

void CBU_GetNightShiftCCTRange(io_registry_entry_t a1, float *a2, float *a3, float *a4, float *a5)
{
  if (a2 && a3 && a4 && a5)
  {
    cf = IORegistryEntrySearchCFProperty(a1, "IOService", @"blr-cct-min", *MEMORY[0x1E695E480], 3u);
    if (cf)
    {
      TypeID = CFDataGetTypeID();
      if (TypeID == CFGetTypeID(cf) && CFDataGetLength(cf) >= 4)
      {
        *a2 = *CFDataGetBytePtr(cf);
      }

      CFRelease(cf);
    }

    cfa = IORegistryEntrySearchCFProperty(a1, "IOService", @"blr-cct-max", *MEMORY[0x1E695E480], 3u);
    if (cfa)
    {
      v7 = CFDataGetTypeID();
      if (v7 == CFGetTypeID(cfa) && CFDataGetLength(cfa) >= 4)
      {
        *a4 = *CFDataGetBytePtr(cfa);
      }

      CFRelease(cfa);
    }

    cfb = IORegistryEntrySearchCFProperty(a1, "IOService", @"blr-cct-default", *MEMORY[0x1E695E480], 3u);
    if (cfb)
    {
      v6 = CFDataGetTypeID();
      if (v6 == CFGetTypeID(cfb) && CFDataGetLength(cfb) >= 4)
      {
        *a3 = *CFDataGetBytePtr(cfb);
      }

      CFRelease(cfb);
    }

    cfc = IORegistryEntrySearchCFProperty(a1, "IOService", @"blr-cct-warning", *MEMORY[0x1E695E480], 3u);
    if (cfc)
    {
      v5 = CFDataGetTypeID();
      if (v5 == CFGetTypeID(cfc) && CFDataGetLength(cfc) >= 4)
      {
        *a5 = *CFDataGetBytePtr(cfc);
      }

      CFRelease(cfc);
    }
  }
}

uint64_t CBU_ShouldNotHandleExistingInternalDisplayAttachment()
{
  if (CBU_ShouldNotHandleExistingInternalDisplayAttachment_once != -1)
  {
    dispatch_once(&CBU_ShouldNotHandleExistingInternalDisplayAttachment_once, &__block_literal_global_125);
  }

  return CBU_ShouldNotHandleExistingInternalDisplayAttachment_result & 1;
}

uint64_t CBU_ImplicitUserInteractedWithUI()
{
  if (CBU_ImplicitUserInteractedWithUI_once != -1)
  {
    dispatch_once(&CBU_ImplicitUserInteractedWithUI_once, &__block_literal_global_134);
  }

  return CBU_ImplicitUserInteractedWithUI_result & 1;
}

unint64_t readDataFromIOService(io_registry_entry_t a1, const __CFString *a2, UInt8 *a3, CFIndex *a4)
{
  cf = IORegistryEntrySearchCFProperty(a1, "IOService", a2, *MEMORY[0x1E695E480], 3u);
  if (!cf)
  {
    return 0;
  }

  v6 = CFGetTypeID(cf);
  if (v6 == CFDataGetTypeID())
  {
    Length = CFDataGetLength(cf);
    if (Length >= *a4)
    {
      v5 = *a4;
    }

    else
    {
      v5 = Length;
    }

    *a4 = v5;
    v13.location = 0;
    v13.length = v5;
    CFDataGetBytes(cf, v13, a3);
    v8 = Length;
  }

  else
  {
    v8 = 0;
  }

  CFRelease(cf);
  return v8;
}

BOOL readExactDataFromIOService(io_registry_entry_t a1, const __CFString *a2, UInt8 *a3, CFIndex a4)
{
  v6 = a1;
  v5[3] = a2;
  v5[2] = a3;
  v5[1] = a4;
  v5[0] = a4;
  return a4 == readDataFromIOService(a1, a2, a3, v5);
}

uint64_t __os_log_helper_16_2_2_8_64_4_0(uint64_t result, uint64_t a2, int a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  return result;
}

id getMLFeatureValueClass_1()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = getMLFeatureValueClass_softClass_1;
  v13 = getMLFeatureValueClass_softClass_1;
  if (!getMLFeatureValueClass_softClass_1)
  {
    v2 = MEMORY[0x1E69E9820];
    v3 = -1073741824;
    v4 = 0;
    v5 = __getMLFeatureValueClass_block_invoke_1;
    v6 = &unk_1E867B4F8;
    v7 = &v9;
    __getMLFeatureValueClass_block_invoke_1(&v2);
  }

  v1 = MEMORY[0x1E69E5928](v10[3]);
  _Block_object_dispose(&v9, 8);

  return v1;
}

id getMLModelClass_1()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = getMLModelClass_softClass_1;
  v13 = getMLModelClass_softClass_1;
  if (!getMLModelClass_softClass_1)
  {
    v2 = MEMORY[0x1E69E9820];
    v3 = -1073741824;
    v4 = 0;
    v5 = __getMLModelClass_block_invoke_1;
    v6 = &unk_1E867B4F8;
    v7 = &v9;
    __getMLModelClass_block_invoke_1(&v2);
  }

  v1 = MEMORY[0x1E69E5928](v10[3]);
  _Block_object_dispose(&v9, 8);

  return v1;
}

id getMLPredictionOptionsClass_1()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = getMLPredictionOptionsClass_softClass_1;
  v13 = getMLPredictionOptionsClass_softClass_1;
  if (!getMLPredictionOptionsClass_softClass_1)
  {
    v2 = MEMORY[0x1E69E9820];
    v3 = -1073741824;
    v4 = 0;
    v5 = __getMLPredictionOptionsClass_block_invoke_1;
    v6 = &unk_1E867B4F8;
    v7 = &v9;
    __getMLPredictionOptionsClass_block_invoke_1(&v2);
  }

  v1 = MEMORY[0x1E69E5928](v10[3]);
  _Block_object_dispose(&v9, 8);

  return v1;
}

id getMLArrayBatchProviderClass_1()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = getMLArrayBatchProviderClass_softClass_1;
  v13 = getMLArrayBatchProviderClass_softClass_1;
  if (!getMLArrayBatchProviderClass_softClass_1)
  {
    v2 = MEMORY[0x1E69E9820];
    v3 = -1073741824;
    v4 = 0;
    v5 = __getMLArrayBatchProviderClass_block_invoke_1;
    v6 = &unk_1E867B4F8;
    v7 = &v9;
    __getMLArrayBatchProviderClass_block_invoke_1(&v2);
  }

  v1 = MEMORY[0x1E69E5928](v10[3]);
  _Block_object_dispose(&v9, 8);

  return v1;
}

uint64_t __getMLFeatureValueClass_block_invoke_1(uint64_t a1)
{
  CoreMLLibrary_1();
  Class = objc_getClass("MLFeatureValue");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np();
  }

  getMLFeatureValueClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t CoreMLLibrary_1()
{
  v2 = 0;
  v1 = CoreMLLibraryCore_1(&v2);
  if (!v1)
  {
    abort_report_np();
  }

  if (v2)
  {
    free(v2);
  }

  return v1;
}

uint64_t CoreMLLibraryCore_1(uint64_t a1)
{
  v10 = a1;
  v8 = CoreMLLibraryCore_frameworkLibrary_1;
  v9 = CoreMLLibraryCore_frameworkLibrary_1;
  if (!CoreMLLibraryCore_frameworkLibrary_1)
  {
    v2 = MEMORY[0x1E69E9820];
    v3 = -1073741824;
    v4 = 0;
    v5 = __CoreMLLibraryCore_block_invoke_1;
    v6 = &__block_descriptor_40_e5_v8__0l;
    v7 = v10;
    __CoreMLLibraryCore_block_invoke_1(&v2);
  }

  return CoreMLLibraryCore_frameworkLibrary_1;
}

uint64_t __CoreMLLibraryCore_block_invoke_1(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreMLLibraryCore_frameworkLibrary_1 = result;
  *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __getMLModelClass_block_invoke_1(uint64_t a1)
{
  CoreMLLibrary_1();
  Class = objc_getClass("MLModel");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np();
  }

  getMLModelClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __getMLPredictionOptionsClass_block_invoke_1(uint64_t a1)
{
  CoreMLLibrary_1();
  Class = objc_getClass("MLPredictionOptions");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np();
  }

  getMLPredictionOptionsClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __getMLArrayBatchProviderClass_block_invoke_1(uint64_t a1)
{
  CoreMLLibrary_1();
  Class = objc_getClass("MLArrayBatchProvider");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np();
  }

  getMLArrayBatchProviderClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getMLModelConfigurationClass()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1375731712;
  v12 = 48;
  v13 = __Block_byref_object_copy__14;
  v14 = __Block_byref_object_dispose__14;
  v8 = getMLModelConfigurationClass_softClass;
  v15 = getMLModelConfigurationClass_softClass;
  if (!getMLModelConfigurationClass_softClass)
  {
    v2 = MEMORY[0x1E69E9820];
    v3 = -1073741824;
    v4 = 0;
    v5 = __getMLModelConfigurationClass_block_invoke;
    v6 = &unk_1E867B4F8;
    v7 = &v9;
    __getMLModelConfigurationClass_block_invoke(&v2);
  }

  v1 = v10[5];
  _Block_object_dispose(&v9, 8);
  return v1;
}

uint64_t __os_log_helper_16_0_11_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *result = 0;
  *(result + 1) = 11;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 0;
  *(result + 33) = 8;
  *(result + 34) = a5;
  *(result + 42) = 0;
  *(result + 43) = 8;
  *(result + 44) = a6;
  *(result + 52) = 0;
  *(result + 53) = 8;
  *(result + 54) = a7;
  *(result + 62) = 0;
  *(result + 63) = 8;
  *(result + 64) = a8;
  *(result + 72) = 0;
  *(result + 73) = 8;
  *(result + 74) = a9;
  *(result + 82) = 0;
  *(result + 83) = 8;
  *(result + 84) = a10;
  *(result + 92) = 0;
  *(result + 93) = 8;
  *(result + 94) = a11;
  *(result + 102) = 0;
  *(result + 103) = 8;
  *(result + 104) = a12;
  return result;
}

uint64_t getMLMultiArrayClass()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1375731712;
  v12 = 48;
  v13 = __Block_byref_object_copy__14;
  v14 = __Block_byref_object_dispose__14;
  v8 = getMLMultiArrayClass_softClass;
  v15 = getMLMultiArrayClass_softClass;
  if (!getMLMultiArrayClass_softClass)
  {
    v2 = MEMORY[0x1E69E9820];
    v3 = -1073741824;
    v4 = 0;
    v5 = __getMLMultiArrayClass_block_invoke;
    v6 = &unk_1E867B4F8;
    v7 = &v9;
    __getMLMultiArrayClass_block_invoke(&v2);
  }

  v1 = v10[5];
  _Block_object_dispose(&v9, 8);
  return v1;
}

uint64_t __os_log_helper_16_2_3_8_64_8_0_8_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

uint64_t __getMLModelConfigurationClass_block_invoke(uint64_t a1)
{
  CoreMLLibrary_2();
  Class = objc_getClass("MLModelConfiguration");
  result = a1;
  *(*(*(a1 + 32) + 8) + 40) = Class;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    result = abort_report_np();
  }

  getMLModelConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t CoreMLLibrary_2()
{
  v2 = 0;
  v1 = CoreMLLibraryCore_2(&v2);
  if (!v1)
  {
    abort_report_np();
  }

  if (v2)
  {
    free(v2);
  }

  return v1;
}

uint64_t CoreMLLibraryCore_2(uint64_t a1)
{
  v10 = a1;
  v8 = CoreMLLibraryCore_frameworkLibrary_2;
  v9 = CoreMLLibraryCore_frameworkLibrary_2;
  if (!CoreMLLibraryCore_frameworkLibrary_2)
  {
    v2 = MEMORY[0x1E69E9820];
    v3 = -1073741824;
    v4 = 0;
    v5 = __CoreMLLibraryCore_block_invoke_2;
    v6 = &__block_descriptor_40_e5_v8__0l;
    v7 = v10;
    __CoreMLLibraryCore_block_invoke_2(&v2);
  }

  return CoreMLLibraryCore_frameworkLibrary_2;
}

uint64_t __CoreMLLibraryCore_block_invoke_2(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreMLLibraryCore_frameworkLibrary_2 = result;
  *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __getMLMultiArrayClass_block_invoke(uint64_t a1)
{
  CoreMLLibrary_2();
  Class = objc_getClass("MLMultiArray");
  result = a1;
  *(*(*(a1 + 32) + 8) + 40) = Class;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    result = abort_report_np();
  }

  getMLMultiArrayClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}
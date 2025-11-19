void sub_1E4F90604(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  std::__state<char>::~__state(&a11);
  std::__state<char>::~__state(&a27);
  a27 = v27 - 112;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](&a27);
  _Unwind_Resume(a1);
}

__n128 std::deque<std::__state<char>>::push_back(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = 42 * ((v5 - v6) >> 3) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = *(a1 + 40) + *(a1 + 32);
  if (v7 == v8)
  {
    std::deque<std::__state<char>>::__add_back_capacity(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40) + *(a1 + 32);
  }

  v9 = *(v6 + 8 * (v8 / 0x2A)) + 96 * (v8 % 0x2A);
  v10 = *(a2 + 16);
  *v9 = *a2;
  *(v9 + 16) = v10;
  *(v9 + 40) = 0;
  *(v9 + 48) = 0;
  *(v9 + 32) = 0;
  *(v9 + 32) = *(a2 + 32);
  *(v9 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v9 + 56) = 0;
  *(v9 + 64) = 0;
  *(v9 + 72) = 0;
  result = *(a2 + 56);
  *(v9 + 56) = result;
  *(v9 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v12 = *(a2 + 80);
  *(v9 + 85) = *(a2 + 85);
  *(v9 + 80) = v12;
  ++*(a1 + 40);
  return result;
}

uint64_t std::deque<std::__state<char>>::pop_back(void *a1)
{
  v2 = a1[5] + a1[4] - 1;
  std::__destroy_at[abi:ne200100]<std::__state<char>,0>((*(a1[1] + 8 * (v2 / 0x2A)) + 96 * (v2 % 0x2A)));
  --a1[5];

  return std::deque<std::__state<char>>::__maybe_remove_back_spare[abi:ne200100](a1, 1);
}

int64x2_t std::deque<std::__state<char>>::push_front(int64x2_t *a1, uint64_t a2)
{
  v4 = a1[2].u64[0];
  if (!v4)
  {
    std::deque<std::__state<char>>::__add_front_capacity(a1);
    v4 = a1[2].u64[0];
  }

  v5 = a1->i64[1];
  v6 = (v5 + 8 * (v4 / 0x2A));
  v7 = *v6 + 96 * (v4 % 0x2A);
  if (a1[1].i64[0] == v5)
  {
    v7 = 0;
  }

  if (v7 == *v6)
  {
    v7 = *(v6 - 1) + 4032;
  }

  v8 = *(a2 + 16);
  *(v7 - 96) = *a2;
  *(v7 - 80) = v8;
  *(v7 - 56) = 0;
  *(v7 - 48) = 0;
  *(v7 - 64) = 0;
  *(v7 - 64) = *(a2 + 32);
  *(v7 - 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v7 - 40) = 0;
  *(v7 - 32) = 0;
  *(v7 - 24) = 0;
  *(v7 - 40) = *(a2 + 56);
  *(v7 - 24) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v9 = *(a2 + 80);
  *(v7 - 11) = *(a2 + 85);
  *(v7 - 16) = v9;
  result = vaddq_s64(a1[2], xmmword_1E5177540);
  a1[2] = result;
  return result;
}

void *std::deque<std::__state<char>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x2A;
  v3 = v1 - 42;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<XmlParserGenericItem *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<SipUri *>::emplace_back<SipUri *&>(a1, &v10);
}

void sub_1E4F90A6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::deque<std::__state<char>>::__maybe_remove_back_spare[abi:ne200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 42 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x2A)
  {
    a2 = 1;
  }

  if (v5 < 0x54)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

const void **std::deque<std::__state<char>>::__add_front_capacity(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = v2 - v1;
  if (v2 == v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 42 * ((v2 - v1) >> 3) - 1;
  }

  v5 = *(a1 + 32);
  if ((v4 - (*(a1 + 40) + v5)) < 0x2A)
  {
    v7 = *(a1 + 24);
    v8 = *a1;
    v9 = &v7[-*a1];
    if (v3 < v9)
    {
      if (v1 != v8)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9 >> 2;
    }

    v11[4] = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<XmlParserGenericItem *>>(a1, v10);
  }

  *(a1 + 32) = v5 + 42;
  v11[0] = *(v2 - 1);
  *(a1 + 16) = v2 - 8;
  return std::__split_buffer<SipUri *>::emplace_front<SipUri *>(a1, v11);
}

void sub_1E4F90D34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  operator delete(v12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::deque<std::__state<char>>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0x2A];
    v7 = *v6 + 96 * (v5 % 0x2A);
    v8 = v2[(a1[5] + v5) / 0x2A] + 96 * ((a1[5] + v5) % 0x2A);
    if (v7 != v8)
    {
      do
      {
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v7);
        v7 += 96;
        if (v7 - *v6 == 4032)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v10 = v3 - v2;
    }

    while (v10 > 2);
  }

  if (v10 == 1)
  {
    v11 = 21;
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_16;
    }

    v11 = 42;
  }

  a1[4] = v11;
LABEL_16:
  while (v2 != v3)
  {
    v12 = *v2++;
    operator delete(v12);
  }

  return std::__split_buffer<SipUri *>::~__split_buffer(a1);
}

_BYTE *std::vector<std::sub_match<char const*>>::__assign_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(void *a1, uint64_t a2, __int128 *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - result) >> 3) < a4)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](a1, v11);
    }

    std::vector<std::string_view>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - result) >> 3) >= a4)
  {
    while (v5 != a3)
    {
      *result = *v5;
      result[16] = *(v5 + 16);
      v5 += 24;
      result += 24;
    }

    a1[1] = result;
  }

  else
  {
    v13 = (a2 + v12 - result);
    if (v12 != result)
    {
      do
      {
        *result = *v5;
        result[16] = *(v5 + 16);
        v5 += 24;
        result += 24;
      }

      while (v5 != v13);
    }

    if (v13 == a3)
    {
      v14 = v12;
    }

    else
    {
      v14 = v12;
      do
      {
        v15 = *v13;
        *(v12 + 16) = *(v13 + 2);
        *v12 = v15;
        v12 += 24;
        v13 = (v13 + 24);
        v14 += 24;
      }

      while (v13 != a3);
    }

    a1[1] = v14;
  }

  return result;
}

char *std::vector<std::pair<unsigned long,char const*>>::__assign_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(char **a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 4)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::pair<unsigned long,char const*>>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<std::string_view>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1];
  if (a4 <= (v11 - result) >> 4)
  {
    while (v5 != a3)
    {
      v17 = *v5;
      v18 = v5[1];
      v5 += 2;
      *result = v17;
      *(result + 1) = v18;
      result += 16;
    }

    a1[1] = result;
  }

  else
  {
    v12 = (a2 + v11 - result);
    if (v11 != result)
    {
      do
      {
        v13 = *v5;
        v14 = v5[1];
        v5 += 2;
        *result = v13;
        *(result + 1) = v14;
        result += 16;
      }

      while (v5 != v12);
    }

    if (v12 == a3)
    {
      v15 = v11;
    }

    else
    {
      v15 = v11;
      do
      {
        v16 = *v12++;
        *v11 = v16;
        v11 += 16;
        v15 += 16;
      }

      while (v12 != a3);
    }

    a1[1] = v15;
  }

  return result;
}

void std::vector<std::sub_match<std::__wrap_iter<char const*>>>::resize(std::vector<std::ssub_match> *this, std::vector<std::ssub_match>::size_type __sz)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((this->__end_ - this->__begin_) >> 3);
  v3 = __sz >= v2;
  v4 = __sz - v2;
  if (v4 != 0 && v3)
  {
    std::vector<std::sub_match<std::__wrap_iter<char const*>>>::__append(this, v4);
  }

  else if (!v3)
  {
    this->__end_ = &this->__begin_[__sz];
  }
}

void std::vector<std::sub_match<std::__wrap_iter<char const*>>>::__append(std::vector<std::ssub_match> *this, std::vector<std::ssub_match>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3) >= __n)
  {
    if (__n)
    {
      v10 = &end[__n];
      v11 = 24 * __n;
      do
      {
        end->first.__i_ = 0;
        end->second.__i_ = 0;
        end->matched = 0;
        ++end;
        v11 -= 24;
      }

      while (v11);
      end = v10;
    }

    this->__end_ = end;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((end - this->__begin_) >> 3);
    v7 = v6 + __n;
    if (v6 + __n > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::string_view>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((value - this->__begin_) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<char const*>>>(this, v9);
    }

    v12 = 24 * __n;
    v13 = 24 * v6;
    do
    {
      *v13 = 0;
      *(v13 + 8) = 0;
      *(v13 + 16) = 0;
      v13 += 24;
      v12 -= 24;
    }

    while (v12);
    begin = this->__begin_;
    v15 = this->__end_;
    v16 = (24 * v6 + this->__begin_ - v15);
    if (v15 != this->__begin_)
    {
      v17 = (24 * v6 + this->__begin_ - v15);
      do
      {
        v18 = begin->std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>>;
        *(v17 + 2) = *&begin->matched;
        *v17 = v18;
        v17 += 24;
        ++begin;
      }

      while (begin != v15);
      begin = this->__begin_;
    }

    this->__begin_ = v16;
    this->__end_ = (24 * v6 + 24 * __n);
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

void SDPAudioBuilder::adjustModel(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v144 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  v7 = *(*a2 + 448);
  v6 = *(*a2 + 456);
  if (v7 != v6)
  {
    v12 = v7 + 136;
    while (*(v12 - 124) != 2)
    {
      v13 = v12 + 64;
      v12 += 200;
      if (v13 == v6)
      {
        goto LABEL_5;
      }
    }

    if (*(a3 + 432) == 1)
    {
      *(v5 + 176) = *(a3 + 96);
      ResponseDirection = SDPModelBuilder::getResponseDirection(a1, *(a3 + 40), a5);
      v124 = ResponseDirection;
      v16 = SDPModelBuilder::getResponseDirection(a1, *(a3 + 36), a5);
      v17 = v16;
      v123 = v16;
      if (*(a1 + 25) == 1)
      {
        if (ResponseDirection <= v16)
        {
          if (ResponseDirection < v16)
          {
            std::string::basic_string[abi:ne200100]<0>(&v130, "sdp");
            v115[0] = 0;
            v118 = 0;
            v27 = ims::debug(&v130, v115);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v27 + 8), "Media-level direction was: ", 27);
            *(v27 + 17) = 0;
            ims::toString<MediaDirection>(&v124, &v125);
            (*(*v27 + 32))(v27, &v125);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v27 + 8), " setting it to: ", 16);
            *(v27 + 17) = 0;
            ims::toString<MediaDirection>(&v123, __p);
            (*(*v27 + 32))(v27, __p);
            (*(*v27 + 64))(v27, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v27 + 17) = 0;
            if (SBYTE7(v94) < 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v125.__r_.__value_.__l.__data_);
            }

            if (v118 == 1 && v117 < 0)
            {
              operator delete(v116);
            }

            if (SHIBYTE(v131) < 0)
            {
              operator delete(v130);
            }

            v124 = v17;
            ResponseDirection = v17;
          }
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(&v130, "sdp");
          v119[0] = 0;
          v122 = 0;
          v18 = ims::debug(&v130, v119);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "Session-level direction was: ", 29);
          *(v18 + 17) = 0;
          ims::toString<MediaDirection>(&v123, &v125);
          (*(*v18 + 32))(v18, &v125);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), " setting it to: ", 16);
          *(v18 + 17) = 0;
          ims::toString<MediaDirection>(&v124, __p);
          (*(*v18 + 32))(v18, __p);
          (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v18 + 17) = 0;
          if (SBYTE7(v94) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v125.__r_.__value_.__l.__data_);
          }

          if (v122 == 1 && v121 < 0)
          {
            operator delete(v120);
          }

          if (SHIBYTE(v131) < 0)
          {
            operator delete(v130);
          }
        }

        if (!ResponseDirection)
        {
          std::string::basic_string[abi:ne200100]<0>(&v130, "sdp");
          v111[0] = 0;
          v114 = 0;
          v28 = ims::warn(&v130, v111);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v28 + 8), "The audio direction was set to undefined, setting to sendrecv", 61);
          *(v28 + 17) = 0;
          (*(*v28 + 64))(v28, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v28 + 17) = 0;
          if (v114 == 1 && v113 < 0)
          {
            operator delete(v112);
          }

          if (SHIBYTE(v131) < 0)
          {
            operator delete(v130);
          }

          ResponseDirection = 1;
          v124 = 1;
        }
      }

      else if (!ResponseDirection)
      {
        if (v16 <= 1)
        {
          ResponseDirection = 1;
        }

        else
        {
          ResponseDirection = v16;
        }

        v124 = ResponseDirection;
        std::string::basic_string[abi:ne200100]<0>(&v130, "sdp");
        v107[0] = 0;
        v110 = 0;
        v26 = ims::warn(&v130, v107);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v26 + 8), "The audio direction was set to undefined, setting to ", 53);
        *(v26 + 17) = 0;
        ims::toString<MediaDirection>(&v124, &v125);
        (*(*v26 + 32))(v26, &v125);
        (*(*v26 + 64))(v26, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v26 + 17) = 0;
        if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v125.__r_.__value_.__l.__data_);
        }

        if (v110 == 1 && v109 < 0)
        {
          operator delete(v108);
        }

        if (SHIBYTE(v131) < 0)
        {
          operator delete(v130);
        }
      }

      v29 = *a2 + 424;
      v30 = *(*a2 + 432);
      if (v30 != v29)
      {
        v31 = *(*a2 + 432);
        while (*(v31 + 136) != 4)
        {
          v31 = *(v31 + 8);
          if (v31 == v29)
          {
            goto LABEL_77;
          }
        }

        while (*(v30 + 136) != 4)
        {
          v30 = *(v30 + 8);
        }

        *(v30 + 56) = ResponseDirection;
      }

LABEL_77:
      v32 = *(v12 + 8);
      if (v12 != v32)
      {
        v33 = *(v12 + 8);
        while (*(v33 + 136) != 4)
        {
          v33 = *(v33 + 8);
          if (v12 == v33)
          {
            goto LABEL_85;
          }
        }

        while (*(v32 + 136) != 4)
        {
          v32 = *(v32 + 8);
        }

        *(v32 + 56) = ResponseDirection;
      }

LABEL_85:
      if (*(a3 + 28) != 255)
      {
        std::__list_imp<SDPMediaFormatInfo>::clear((v12 - 96));
        v131 = 0u;
        v132 = 0u;
        v133 = 0u;
        v143 = 0;
        v142 = 0u;
        v141 = 0u;
        v140 = 0u;
        v139 = 0u;
        v138 = 0u;
        v137 = 0u;
        v136 = 0u;
        v135 = 0u;
        memset(v134, 0, sizeof(v134));
        v34 = *(a3 + 28);
        v130 = &unk_1F5EEA550;
        LOWORD(v131) = v34;
        LOBYTE(v132) = 1;
        *(&v132 + 1) = 0;
        v133 = 0uLL;
        *(&v131 + 1) = &unk_1F5EF7520;
        LOWORD(v134[0]) = 255;
        v134[1] = 0;
        LODWORD(v135) = 0x10000;
        v136 = 1uLL;
        v137 = 0uLL;
        v138 = 0xFFuLL;
        *(&v135 + 1) = &unk_1F5EBF288;
        v139 = 0uLL;
        v35 = (a3 + 280);
        if (*(a3 + 303) < 0)
        {
          std::string::__init_copy_ctor_external(&v106, *(a3 + 280), *(a3 + 288));
        }

        else
        {
          *&v106.__r_.__value_.__l.__data_ = *v35;
          v106.__r_.__value_.__r.__words[2] = *(a3 + 296);
        }

        SDPMediaRTPMap::SDPMediaRTPMap(&v125, v34, &v106, *(a3 + 308), 1);
        LOBYTE(v132) = v125.__r_.__value_.__s.__data_[8];
        std::string::operator=((&v132 + 8), &v125.__r_.__value_.__r.__words[2]);
        LOWORD(v134[0]) = v126;
        std::string::operator=(&v134[1], &v127);
        LODWORD(v135) = v128;
        SDPMediaRTPMap::~SDPMediaRTPMap(&v125.__r_.__value_.__l.__data_);
        if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v106.__r_.__value_.__l.__data_);
        }

        if (*(a3 + 303) < 0)
        {
          std::string::__init_copy_ctor_external(&v125, *(a3 + 280), *(a3 + 288));
        }

        else
        {
          *&v125.__r_.__value_.__l.__data_ = *v35;
          v125.__r_.__value_.__r.__words[2] = *(a3 + 296);
        }

        v36 = HIBYTE(v125.__r_.__value_.__r.__words[2]);
        if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
        {
          if (v125.__r_.__value_.__l.__size_ != 6)
          {
            goto LABEL_103;
          }

          v37 = v125.__r_.__value_.__r.__words[0];
        }

        else
        {
          if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) != 6)
          {
            goto LABEL_103;
          }

          v37 = &v125;
        }

        data = v37->__r_.__value_.__l.__data_;
        v39 = WORD2(v37->__r_.__value_.__r.__words[0]);
        if (data == 760368449 && v39 == 16983)
        {
          v42 = 1;
          goto LABEL_126;
        }

LABEL_103:
        if (*(a3 + 303) < 0)
        {
          std::string::__init_copy_ctor_external(__p, *(a3 + 280), *(a3 + 288));
        }

        else
        {
          *__p = *v35;
          *&v94 = *(a3 + 296);
        }

        if (SBYTE7(v94) < 0)
        {
          v42 = __p[1] == 3 && *__p[0] == 19777 && *(__p[0] + 2) == 82;
          operator delete(__p[0]);
        }

        else
        {
          v42 = SBYTE7(v94) == 3 && LOWORD(__p[0]) == 19777 && BYTE2(__p[0]) == 82;
        }

        v36 = HIBYTE(v125.__r_.__value_.__r.__words[2]);
LABEL_126:
        if (v36 < 0)
        {
          operator delete(v125.__r_.__value_.__l.__data_);
        }

        if (v42)
        {
          v103 = &unk_1F5EBE678;
          v44 = *(a3 + 344);
          v104 = *(a3 + 328);
          v105 = v44;
          v95 = 0u;
          v96 = 0u;
          *__p = 0u;
          v94 = 0u;
          v45 = *(a3 + 28);
          v46 = (*(*(&v131 + 1) + 24))();
          if (v46)
          {
            if (SHIBYTE(v134[3]) < 0)
            {
              std::string::__init_copy_ctor_external(&v102, v134[1], v134[2]);
            }

            else
            {
              v102 = *&v134[1];
            }

            if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
            {
              if (v102.__r_.__value_.__l.__size_ == 6)
              {
                v61 = v102.__r_.__value_.__r.__words[0];
                goto LABEL_173;
              }
            }

            else if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) == 6)
            {
              v61 = &v102;
LABEL_173:
              v62 = v61->__r_.__value_.__l.__data_;
              v63 = WORD2(v61->__r_.__value_.__r.__words[0]);
              v65 = v62 == 760368449 && v63 == 16983;
              goto LABEL_180;
            }
          }

          v65 = 0;
LABEL_180:
          SDPMediaFormatAMRParams::SDPMediaFormatAMRParams(__p, v45, v65);
          if (v46 && SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v102.__r_.__value_.__l.__data_);
          }

          if (HIBYTE(v104) == 1)
          {
            BYTE11(v95) = v104;
            BYTE12(v95) = 1;
          }

          if (BYTE14(v104) == 1)
          {
            HIWORD(v95) = WORD2(v104);
            HIBYTE(v96) = 0;
          }

          if (v105 == 1)
          {
            LOWORD(v96) = WORD3(v104);
            BYTE2(v96) = 1;
          }

          if (BYTE1(v105) == 1)
          {
            WORD2(v96) = WORD4(v104);
            BYTE6(v96) = 1;
          }

          if (BYTE2(v105) == 1)
          {
            WORD4(v96) = WORD5(v104);
            BYTE10(v96) = 1;
          }

          if (BYTE3(v105) == 1)
          {
            WORD6(v96) = WORD6(v104);
            BYTE14(v96) = 1;
          }

          SDPMediaFormatAMRParams::SDPMediaFormatAMRParams(&v125, __p);
          LODWORD(v129) = 1;
          SDPMediaFormatInfo::setSDPMediaFormatParams(&v130, &v125);
          std::__variant_detail::__dtor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v125);
          v66 = *a2;
          v55 = a2[1];
          v101[0] = v66;
          v101[1] = v55;
          if (v55)
          {
            atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
            if (*(a3 + 432))
            {
              v60 = *(&v105 + 1);
              v56 = v101;
              v57 = a1;
              v58 = v12 - 136;
              v59 = a3;
              goto LABEL_198;
            }

LABEL_223:
            std::__throw_bad_optional_access[abi:ne200100]();
          }

          if ((*(a3 + 432) & 1) == 0)
          {
            goto LABEL_223;
          }

          v67 = *(&v105 + 1);
          v68 = v101;
          v69 = a1;
          v70 = v12 - 136;
          v71 = a3;
LABEL_201:
          SDPModelBuilder::setBandwidthSpecifiers(v69, v68, v70, v71, v67);
          goto LABEL_202;
        }

        if (*(a3 + 303) < 0)
        {
          std::string::__init_copy_ctor_external(&v125, *(a3 + 280), *(a3 + 288));
        }

        else
        {
          *&v125.__r_.__value_.__l.__data_ = *v35;
          v125.__r_.__value_.__r.__words[2] = *(a3 + 296);
        }

        if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
        {
          v48 = v125.__r_.__value_.__r.__words[0];
          if (v125.__r_.__value_.__l.__size_ != 3)
          {
LABEL_204:
            operator delete(v48);
            goto LABEL_205;
          }

          v50 = *v125.__r_.__value_.__l.__data_ != 22085 || *(v125.__r_.__value_.__r.__words[0] + 2) != 83;
          operator delete(v125.__r_.__value_.__l.__data_);
          if (v50)
          {
LABEL_205:
            std::__list_imp<SDPMediaFormatInfo>::__create_node[abi:ne200100]<SDPMediaFormatInfo const&>();
          }
        }

        else
        {
          if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) != 3)
          {
            goto LABEL_205;
          }

          if (LOWORD(v125.__r_.__value_.__l.__data_) != 22085 || v125.__r_.__value_.__s.__data_[2] != 83)
          {
            goto LABEL_205;
          }
        }

        v83 = *(a3 + 360);
        v51 = *(a3 + 368);
        v52 = *(a3 + 374);
        v88 = *(a3 + 380);
        v86 = *(a3 + 377);
        v87 = *(a3 + 382);
        v82 = *(a3 + 396);
        v53 = *(a3 + 400);
        v81 = *(a3 + 408);
        v77 = *(a3 + 416);
        v78 = *(a3 + 418);
        v79 = *(a3 + 420);
        v80 = *(a3 + 376);
        v84 = *(a3 + 378);
        v85 = *(a3 + 422);
        v89 = *(a3 + 423);
        v90 = *(a3 + 424);
        v91 = *(a3 + 425);
        v100 = 0;
        v99 = 0u;
        v97 = 0u;
        v98 = 0u;
        v95 = 0u;
        v96 = 0u;
        *__p = 0u;
        v94 = 0u;
        SDPMediaFormatEVSParams::SDPMediaFormatEVSParams(__p, *(a3 + 28));
        BYTE14(v95) = v53;
        WORD1(v96) = v52;
        *(&v96 + 1) = v83;
        HIBYTE(v99) = 0;
        SDPMediaFormatEVSParams::updateConfigName(__p);
        DWORD1(v98) = v82;
        HIBYTE(v99) = 0;
        SDPMediaFormatEVSParams::updateConfigName(__p);
        BYTE4(v99) = v84;
        if (v86)
        {
          HIBYTE(v95) = v80;
          LOBYTE(v96) = 1;
        }

        WORD1(v99) = v88;
        WORD5(v95) = v87;
        if ((v85 & 1) != 0 || WORD1(v100) <= 2u && v51 == 7 && !v80)
        {
          LOWORD(v98) = v51;
          LOBYTE(v100) = 0;
        }

        if (v89)
        {
          WORD3(v99) = v77;
          BYTE12(v99) = 1;
        }

        if (v90)
        {
          WORD4(v99) = v78;
          BYTE13(v99) = 1;
        }

        if (v91)
        {
          WORD5(v99) = v79;
          BYTE14(v99) = 1;
        }

        SDPMediaFormatEVSParams::SDPMediaFormatEVSParams(&v125, __p);
        LODWORD(v129) = 2;
        SDPMediaFormatInfo::setSDPMediaFormatParams(&v130, &v125);
        std::__variant_detail::__dtor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v125);
        v54 = *a2;
        v55 = a2[1];
        v92[0] = v54;
        v92[1] = v55;
        if (v55)
        {
          atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
          if (*(a3 + 432))
          {
            v56 = v92;
            v57 = a1;
            v58 = v12 - 136;
            v59 = a3;
            v60 = v81;
LABEL_198:
            SDPModelBuilder::setBandwidthSpecifiers(v57, v56, v58, v59, v60);
            std::__shared_weak_count::__release_shared[abi:ne200100](v55);
LABEL_202:
            __p[0] = &unk_1F5EF5FB8;
            if ((SBYTE7(v95) & 0x80000000) == 0)
            {
              goto LABEL_205;
            }

            v48 = v94;
            goto LABEL_204;
          }
        }

        else if (*(a3 + 432))
        {
          v68 = v92;
          v69 = a1;
          v70 = v12 - 136;
          v71 = a3;
          v67 = v81;
          goto LABEL_201;
        }

        std::__throw_bad_optional_access[abi:ne200100]();
      }

      SDPMedia::setMaxPacketizationTime((v12 - 136), *(a3 + 314));
      SDPMedia::setPacketizationTime((v12 - 136), *(a3 + 312));
      if (*(a3 + 272) == 1)
      {
        SDPMedia::mediaCryptoList(v12 - 136, &v130);
        v72 = v131;
        if (v131 != &v130)
        {
          v73 = a3 + 192;
          if (!*(a3 + 272))
          {
            v73 = 0;
          }

          v74 = *(v73 + 40);
          do
          {
            v75 = *(v72 + 16);
            if (*(v75 + 40) == v74)
            {
              *(v75 + 73) = *(v73 + 73);
              *(v75 + 75) = *(v73 + 75);
            }

            v72 = *(v72 + 8);
          }

          while (v72 != &v130);
        }

        std::__list_imp<unsigned long long>::clear(&v130);
      }

      for (i = *(v12 + 8); v12 != i; i = *(i + 8))
      {
        if (*(i + 136) == 5)
        {
          if (*(a3 + 316) == 1)
          {
            *(i + 56) = 0;
          }

          break;
        }
      }
    }

    else
    {
      v19 = *(v12 + 8);
      if (v12 != v19)
      {
        v20 = *(v12 + 8);
        while (*(v20 + 136) != 4)
        {
          v20 = *(v20 + 8);
          if (v12 == v20)
          {
            goto LABEL_29;
          }
        }

        while (*(v19 + 136) != 4)
        {
          v19 = *(v19 + 8);
        }

        if (a5)
        {
          v21 = 3;
        }

        else
        {
          v21 = 1;
        }

        *(v19 + 56) = v21;
      }

LABEL_29:
      v22 = v5 + 424;
      v23 = *(v5 + 432);
      if (v23 != v22)
      {
        v24 = v23;
        while (*(v24 + 136) != 4)
        {
          v24 = *(v24 + 8);
          if (v24 == v22)
          {
            goto LABEL_5;
          }
        }

        while (*(v23 + 136) != 4)
        {
          v23 = *(v23 + 8);
        }

        if (a5)
        {
          v25 = 3;
        }

        else
        {
          v25 = 1;
        }

        *(v23 + 56) = v25;
      }
    }
  }

LABEL_5:
  v14 = *MEMORY[0x1E69E9840];
}

void sub_1E4F9255C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  if (a34 < 0)
  {
    operator delete(__p);
  }

  SDPMediaFormatInfo::~SDPMediaFormatInfo(&STACK[0x348]);
  _Unwind_Resume(a1);
}

void SDPAudioBuilder::~SDPAudioBuilder(SDPAudioBuilder *this)
{
  *this = &unk_1F5EE30D8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_1F5EE30D8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E69235B0);
}

void IBIRTPClient::IBIRTPClient(IBIRTPClient *this, NSObject **a2)
{
  v24 = *MEMORY[0x1E69E9840];
  ims::getQueue(&object);
  *(this + 1) = 0;
  *(this + 2) = 0;
  v4 = object.__r_.__value_.__r.__words[0];
  *(this + 3) = object.__r_.__value_.__r.__words[0];
  if (v4)
  {
    dispatch_retain(v4);
  }

  *(this + 4) = 0;
  ctu::OsLogLogger::OsLogLogger((this + 40), "com.apple.ipTelephony", "ibi.client");
  if (v4)
  {
    dispatch_release(v4);
  }

  *(this + 3) = 0u;
  v5 = (this + 48);
  *this = &unk_1F5EE3110;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 4) = 0u;
  v6 = *a2;
  *(this + 13) = *a2;
  if (v6)
  {
    dispatch_retain(v6);
  }

  v7 = (this + 56);
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 80) = 0;
  std::to_string(&object, ++_MergedGlobals_22);
  if (byte_1EE2BC88F >= 0)
  {
    v8 = &qword_1EE2BC878;
  }

  else
  {
    v8 = qword_1EE2BC878;
  }

  if (byte_1EE2BC88F >= 0)
  {
    v9 = byte_1EE2BC88F;
  }

  else
  {
    v9 = unk_1EE2BC880;
  }

  v10 = std::string::insert(&object, 0, v8, v9);
  v11 = v10->__r_.__value_.__r.__words[0];
  *&v23 = v10->__r_.__value_.__l.__size_;
  *(&v23 + 7) = *(&v10->__r_.__value_.__r.__words[1] + 7);
  v12 = HIBYTE(v10->__r_.__value_.__r.__words[2]);
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (*(this + 79) < 0)
  {
    operator delete(*v7);
  }

  v13 = v23;
  *(this + 7) = v11;
  *(this + 8) = v13;
  *(this + 71) = *(&v23 + 7);
  *(this + 79) = v12;
  if (SHIBYTE(object.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(object.__r_.__value_.__l.__data_);
    v12 = *(this + 79);
  }

  v14 = this + 56;
  if (v12 < 0)
  {
    v14 = *v7;
  }

  v15 = dispatch_queue_create(v14, 0);
  v16 = *v5;
  *v5 = v15;
  if (v16)
  {
    dispatch_release(v16);
  }

  v23 = 0uLL;
  ctu::LogServer::create();
  if (v23)
  {
    operator new();
  }

  v21 = *v5;
  if (*v5)
  {
    dispatch_retain(*v5);
  }

  v20 = *(&v23 + 1);
  if (*(&v23 + 1))
  {
    atomic_fetch_add_explicit((*(&v23 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  ice::Client::create();
  v17 = *&object.__r_.__value_.__l.__data_;
  *&object.__r_.__value_.__l.__data_ = 0uLL;
  v18 = *(this + 15);
  *(this + 7) = v17;
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    if (object.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](object.__r_.__value_.__l.__size_);
    }
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (v21)
  {
    dispatch_release(v21);
  }

  if (*(&v23 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v23 + 1));
  }

  v19 = *MEMORY[0x1E69E9840];
}

void sub_1E4F92B94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, dispatch_object_t object, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v25);
  operator delete(v28);
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  v29 = *(v22 + 120);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  v30 = *(v22 + 104);
  if (v30)
  {
    dispatch_release(v30);
  }

  v31 = *(v22 + 96);
  if (v31)
  {
    std::__shared_weak_count::__release_weak(v31);
  }

  if (*(v22 + 79) < 0)
  {
    operator delete(*v24);
  }

  if (*v26)
  {
    dispatch_release(*v26);
  }

  MEMORY[0x1E69225A0](v22 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(v23);
  _Unwind_Resume(a1);
}

void sub_1E4F92C80()
{
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(v0);
  if (v1)
  {
    dispatch_release(v1);
  }

  JUMPOUT(0x1E4F92C78);
}

void IBIRTPClient::~IBIRTPClient(IBIRTPClient *this)
{
  *this = &unk_1F5EE3110;
  v2 = *(this + 15);
  *(this + 14) = 0;
  *(this + 15) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    v3 = *(this + 15);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  v4 = *(this + 13);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(this + 12);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  v6 = *(this + 6);
  if (v6)
  {
    dispatch_release(v6);
  }

  MEMORY[0x1E69225A0](this + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 1);
}

{
  IBIRTPClient::~IBIRTPClient(this);

  JUMPOUT(0x1E69235B0);
}

void IBIRTPClient::registerClient(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 80) == 1)
  {
    v4 = std::string::basic_string[abi:ne200100]<0>(&v32, "ibi.client");
    v28[0] = 0;
    v31 = 0;
    v5 = ims::debug(v4, v28);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "ARI client already registered, skipping another register request.", 65);
    *(v5 + 17) = 0;
    (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v5 + 17) = 0;
    if (v31 == 1 && v30 < 0)
    {
      operator delete(__p);
    }

    if (v34 < 0)
    {
      operator delete(v32);
    }

    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *a3 = &unk_1F5EBDEF8;
    *(a3 + 8) = &_bambiDomain;
    *(a3 + 16) = 0;
LABEL_35:
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
    return;
  }

  if (!*(a1 + 112))
  {
    v14 = std::string::basic_string[abi:ne200100]<0>(&v32, "ibi.client");
    v24[0] = 0;
    v27 = 0;
    v15 = ims::error(v14, v24);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "IceClient creation failed.", 26);
    *(v15 + 17) = 0;
    (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v15 + 17) = 0;
    if (v27 == 1 && v26 < 0)
    {
      operator delete(v25);
    }

    if (v34 < 0)
    {
      operator delete(v32);
    }

    v16 = a2[1];
    if (v16)
    {
      v17 = std::__shared_weak_count::lock(v16);
      if (v17)
      {
        v18 = v17;
        v19 = *a2;
        if (*a2)
        {
          v20 = *(v19 + 72);
          v21 = *(v19 + 80);
          if (v21)
          {
            atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          RTPManager::logRTPError(v20, 1);
          if (v21)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v21);
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      }
    }

    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *a3 = &unk_1F5EBDEF8;
    *(a3 + 8) = &_bambiDomain;
    *(a3 + 16) = 0x40000000;
    goto LABEL_35;
  }

  *(a1 + 80) = 1;
  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v32, (a1 + 8));
  v9 = v32;
  v8 = v33;
  if (v33)
  {
    atomic_fetch_add_explicit(&v33->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v10 = *(a1 + 112);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1174405120;
  v22[2] = ___ZN12IBIRTPClient14registerClientENSt3__18weak_ptrI21IBIRTPStackControllerEE_block_invoke;
  v22[3] = &__block_descriptor_tmp_51;
  v22[4] = v9;
  v23 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v32 = v22;
  ice::Client::setEventHandler<void({block_pointer})(void)>(v10, 0, &v32);
  ice::Client::start(*(a1 + 112));
  v12 = *a2;
  v11 = a2[1];
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 16), 1uLL, memory_order_relaxed);
  }

  v13 = *(a1 + 96);
  *(a1 + 88) = v12;
  *(a1 + 96) = v11;
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *a3 = &unk_1F5EBDEF8;
  *(a3 + 8) = &_bambiDomain;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  if (v23)
  {
    std::__shared_weak_count::__release_weak(v23);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }
}

void sub_1E4F930FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, char a35)
{
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  _Unwind_Resume(a1);
}

void ___ZN12IBIRTPClient14registerClientENSt3__18weak_ptrI21IBIRTPStackControllerEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v8 = 0;
        v9 = 0;
        std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v8, (v5 + 8));
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 1174405120;
        block[2] = ___ZN12IBIRTPClient19handleClientStartedEv_block_invoke;
        block[3] = &__block_descriptor_tmp_7_1;
        block[4] = v5;
        block[5] = v8;
        v7 = v9;
        if (v9)
        {
          atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        dispatch_async(*(v5 + 104), block);
        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        }

        if (v9)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void ___ZN12IBIRTPClient19handleClientStartedEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 96);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4 && *(v2 + 88))
    {
      v5 = *(a1 + 40);
      v6 = std::string::basic_string[abi:ne200100]<0>(&v25, "ibi.client");
      LOBYTE(v32[0]) = 0;
      v35 = 0;
      v7 = ims::debug(v6, v32);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Registered ARI client ", 22);
      *(v7 + 17) = 0;
      (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v7 + 17) = 0;
      if (v35 == 1 && v34 < 0)
      {
        operator delete(v33);
      }

      if (SHIBYTE(v27) < 0)
      {
        operator delete(v25);
      }

      std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v25, (v5 + 8));
      v9 = v25;
      v8 = v26;
      if (v26)
      {
        atomic_fetch_add_explicit((v26 + 16), 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      v25 = MEMORY[0x1E69E9820];
      v26 = 1174405120;
      v27 = ___ZN12IBIRTPClient22registerForIndicationsEv_block_invoke;
      v28 = &__block_descriptor_tmp_12_1;
      v29 = v9;
      v30 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v31 = &v25;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 1174405120;
      v22[2] = ___ZN12IBIRTPClient22registerForIndicationsEv_block_invoke_13;
      v22[3] = &__block_descriptor_tmp_16_4;
      v22[4] = v9;
      v23 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v24 = v22;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 1174405120;
      v19[2] = ___ZN12IBIRTPClient22registerForIndicationsEv_block_invoke_17;
      v19[3] = &__block_descriptor_tmp_20_4;
      v19[4] = v9;
      v20 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v21 = v19;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 1174405120;
      v16[2] = ___ZN12IBIRTPClient22registerForIndicationsEv_block_invoke_21;
      v16[3] = &__block_descriptor_tmp_24_2;
      v16[4] = v9;
      v17 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v18 = v16;
      ice::Client::regIndication<int({block_pointer}&)(unsigned char *,unsigned int)>(*(v5 + 112), 1166049280, &v31);
      ice::Client::regIndication<int({block_pointer}&)(unsigned char *,unsigned int)>(*(v5 + 112), 1166082048, &v24);
      ice::Client::regIndication<int({block_pointer}&)(unsigned char *,unsigned int)>(*(v5 + 112), 1166114816, &v21);
      ice::Client::regIndication<int({block_pointer}&)(unsigned char *,unsigned int)>(*(v5 + 112), 1166147584, &v18);
      if (v17)
      {
        std::__shared_weak_count::__release_weak(v17);
      }

      if (v20)
      {
        std::__shared_weak_count::__release_weak(v20);
      }

      if (v23)
      {
        std::__shared_weak_count::__release_weak(v23);
      }

      if (v30)
      {
        std::__shared_weak_count::__release_weak(v30);
      }

      if (v8)
      {
        std::__shared_weak_count::__release_weak(v8);
      }

LABEL_36:
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      return;
    }
  }

  else
  {
    v4 = 0;
  }

  v10 = std::string::basic_string[abi:ne200100]<0>(v32, "ibi.client");
  v12[0] = 0;
  v15 = 0;
  v11 = ims::debug(v10, v12);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "ARI client started notification after stackController goes away", 63);
  *(v11 + 17) = 0;
  (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v11 + 17) = 0;
  if (v15 == 1 && v14 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32[0]);
  }

  if (v4)
  {
    goto LABEL_36;
  }
}

uint64_t __copy_helper_block_e8_40c40_ZTSNSt3__110shared_ptrI12IBIRTPClientEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c40_ZTSNSt3__110shared_ptrI12IBIRTPClientEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t ___ZN12IBIRTPClient22registerForIndicationsEv_block_invoke(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 32);
      if (!v9)
      {
LABEL_41:
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        return 0;
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "ibi.client");
      v45[0] = 0;
      v48 = 0;
      v10 = ims::debug(__p, v45);
      v11 = *(*(*v9 - 8) + 8);
      v12 = strlen((v11 & 0x7FFFFFFFFFFFFFFFLL));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), v11 & 0x7FFFFFFFFFFFFFFFLL, v12);
      *(v10 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "::", 2);
      *(v10 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "handleMediaSessionErrIndication", 31);
      *(v10 + 17) = 0;
      (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v10 + 17) = 0;
      if (v48 == 1 && v47 < 0)
      {
        operator delete(v46);
      }

      if (SHIBYTE(v24) < 0)
      {
        operator delete(__p[0]);
      }

      v44 = 0u;
      memset(v43, 0, sizeof(v43));
      AriSdk::ARI_IBIImsMEMediaSessionErrIndCb_SDK::ARI_IBIImsMEMediaSessionErrIndCb_SDK(v43, a2);
      if (ice::isARIResponseValid())
      {
        if (!AriSdk::ARI_IBIImsMEMediaSessionErrIndCb_SDK::unpack(v43))
        {
          v40[0] = 0;
          v40[1] = v40;
          v41 = 0x2000000000;
          v42 = *v44;
          v38[0] = 0;
          v38[1] = v38;
          v38[2] = 0x2000000000;
          v20 = **(&v44 + 1);
          v39 = **(&v44 + 1) == 4;
          v36[0] = 0;
          v36[1] = v36;
          v36[2] = 0x2000000000;
          v37 = v20 == 5;
          memset(&v35, 0, sizeof(v35));
          BufGmid = AriMsg::GetBufGmid(a2, a3);
          IBIRTPClient::getMsgName(BufGmid, &v35);
          v33 = 0;
          v34 = 0;
          std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v33, (v9 + 8));
          __p[0] = MEMORY[0x1E69E9820];
          __p[1] = 1174405120;
          v24 = ___ZN12IBIRTPClient31handleMediaSessionErrIndicationEPhj_block_invoke;
          v25 = &unk_1F5EE3450;
          v32 = a3;
          if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v29, v35.__r_.__value_.__l.__data_, v35.__r_.__value_.__l.__size_);
          }

          else
          {
            v29 = v35;
          }

          v30 = v33;
          v31 = v34;
          if (v34)
          {
            atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v26 = v40;
          v27 = v38;
          v28 = v36;
          dispatch_async(*(v9 + 104), __p);
          if (v31)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v31);
          }

          if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v29.__r_.__value_.__l.__data_);
          }

          if (v34)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v34);
          }

          if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v35.__r_.__value_.__l.__data_);
          }

          _Block_object_dispose(v36, 8);
          _Block_object_dispose(v38, 8);
          _Block_object_dispose(v40, 8);
          goto LABEL_40;
        }

        v13 = *(v9 + 96);
        if (v13)
        {
          v14 = std::__shared_weak_count::lock(v13);
          if (v14)
          {
            v15 = v14;
            v16 = *(v9 + 88);
            if (v16)
            {
              v17 = *(v16 + 72);
              v18 = *(v16 + 80);
              if (v18)
              {
                atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              RTPManager::logRTPError(v17, 3);
              if (v18)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v18);
              }
            }

            std::__shared_weak_count::__release_shared[abi:ne200100](v15);
          }
        }

        std::string::basic_string[abi:ne200100]<0>(v40, "ibi.client");
        LOBYTE(__p[0]) = 0;
        LOBYTE(v28) = 0;
        v19 = ims::error(v40, __p);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "Failed to extract IBIImsMEMediaSessionErrIndCb: ", 48);
        *(v19 + 17) = 0;
        MEMORY[0x1E6923350](*(v19 + 8), 1166049280);
        *(v19 + 17) = 0;
        (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(v40, "ibi.client");
        LOBYTE(__p[0]) = 0;
        LOBYTE(v28) = 0;
        v19 = ims::error(v40, __p);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "Invalid MediaSessionErrIndication", 33);
        *(v19 + 17) = 0;
        (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      }

      *(v19 + 17) = 0;
      if (v28 == 1 && SHIBYTE(v26) < 0)
      {
        operator delete(v24);
      }

      if (SHIBYTE(v41) < 0)
      {
        operator delete(v40[0]);
      }

LABEL_40:
      MEMORY[0x1E6922C50](v43);
      goto LABEL_41;
    }
  }

  return 0;
}

void sub_1E4F93C14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  }

  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a41, 8);
  MEMORY[0x1E6922C50](v47 - 208);
  std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  _Unwind_Resume(a1);
}

uint64_t ___ZN12IBIRTPClient22registerForIndicationsEv_block_invoke_13(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 32);
      if (!v9)
      {
LABEL_46:
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        return 0;
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "ibi.client");
      v58[0] = 0;
      v61 = 0;
      v10 = ims::debug(__p, v58);
      v11 = *(*(*v9 - 8) + 8);
      v12 = strlen((v11 & 0x7FFFFFFFFFFFFFFFLL));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), v11 & 0x7FFFFFFFFFFFFFFFLL, v12);
      *(v10 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "::", 2);
      *(v10 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "handleRTCPSRReportInd", 21);
      *(v10 + 17) = 0;
      (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v10 + 17) = 0;
      if (v61 == 1 && v60 < 0)
      {
        operator delete(v59);
      }

      if (SBYTE7(v51) < 0)
      {
        operator delete(__p[0]);
      }

      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      *__p = 0u;
      v51 = 0u;
      AriSdk::ARI_IBIImsMERtcpSenderReportIndCb_SDK::ARI_IBIImsMERtcpSenderReportIndCb_SDK(__p, a2);
      if (ice::isARIResponseValid())
      {
        if (AriSdk::ARI_IBIImsMERtcpSenderReportIndCb_SDK::unpack(__p))
        {
          std::string::basic_string[abi:ne200100]<0>(v30, "ibi.client");
          LOBYTE(v41[0]) = 0;
          BYTE8(v45) = 0;
          v13 = ims::error(v30, v41);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "Failed to extract IBIImsMERtcpSenderReportInd: ", 47);
          *(v13 + 17) = 0;
          MEMORY[0x1E6923350](*(v13 + 8), 1166082048);
          *(v13 + 17) = 0;
          (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v13 + 17) = 0;
          if (BYTE8(v45) == 1 && SHIBYTE(v44) < 0)
          {
            operator delete(v42);
          }

          if (SHIBYTE(v31) < 0)
          {
            operator delete(v30[0]);
          }

          v14 = *(v9 + 96);
          if (v14)
          {
            v15 = std::__shared_weak_count::lock(v14);
            if (v15)
            {
              v16 = v15;
              v17 = *(v9 + 88);
              if (v17)
              {
                v18 = *(v17 + 72);
                v19 = *(v17 + 80);
                if (v19)
                {
                  atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                RTPManager::logRTPError(v18, 3);
                if (v19)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v19);
                }
              }

              std::__shared_weak_count::__release_shared[abi:ne200100](v16);
            }
          }

          goto LABEL_45;
        }

        v22 = **(&v55 + 1);
        v23 = *v56;
        v24 = **(&v56 + 1);
        v25 = *v57;
        v26 = **(&v57 + 1);
        v41[0] = 0;
        v41[1] = v41;
        v42 = 0x7002000000;
        v43 = __Block_byref_object_copy__3;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v44 = __Block_byref_object_dispose__3;
        v49 = 0;
        v27 = *v55;
        *&v45 = &unk_1F5EF0658;
        *(&v46 + 1) = __PAIR64__(v22, v27);
        *&v47 = __PAIR64__(v24, v23);
        *(&v47 + 1) = __PAIR64__(v26, v25);
        v49 = 0;
        v48 = 0uLL;
        memset(&v40, 0, sizeof(v40));
        BufGmid = AriMsg::GetBufGmid(a2, a3);
        IBIRTPClient::getMsgName(BufGmid, &v40);
        v38 = 0;
        v39 = 0;
        std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v38, (v9 + 8));
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 1174405120;
        v31 = ___ZN12IBIRTPClient21handleRTCPSRReportIndEPhj_block_invoke;
        v32 = &unk_1F5EE3488;
        v37 = a3;
        if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v34, v40.__r_.__value_.__l.__data_, v40.__r_.__value_.__l.__size_);
        }

        else
        {
          v34 = v40;
        }

        v35 = v38;
        v36 = v39;
        if (v39)
        {
          atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v33 = v41;
        dispatch_async(*(v9 + 104), v30);
        if (v36)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v36);
        }

        if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v34.__r_.__value_.__l.__data_);
        }

        if (v39)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v39);
        }

        if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v40.__r_.__value_.__l.__data_);
        }

        _Block_object_dispose(v41, 8);
        *&v45 = &unk_1F5EF0658;
        v21 = v48;
        if (!v48)
        {
          goto LABEL_45;
        }

        *(&v48 + 1) = v48;
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(v30, "ibi.client");
        LOBYTE(v41[0]) = 0;
        BYTE8(v45) = 0;
        v20 = ims::error(v30, v41);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "Invalid RTCPSRReportIndication", 30);
        *(v20 + 17) = 0;
        (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v20 + 17) = 0;
        if (BYTE8(v45) == 1 && SHIBYTE(v44) < 0)
        {
          operator delete(v42);
        }

        if ((SHIBYTE(v31) & 0x80000000) == 0)
        {
          goto LABEL_45;
        }

        v21 = v30[0];
      }

      operator delete(v21);
LABEL_45:
      MEMORY[0x1E6922D00](__p);
      goto LABEL_46;
    }
  }

  return 0;
}

void sub_1E4F94260(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a31, 8);
  if (a45)
  {
    a46 = a45;
    operator delete(a45);
  }

  MEMORY[0x1E6922D00](&a48);
  std::__shared_weak_count::__release_shared[abi:ne200100](v53);
  _Unwind_Resume(a1);
}

uint64_t ___ZN12IBIRTPClient22registerForIndicationsEv_block_invoke_17(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 32);
      if (!v9)
      {
LABEL_43:
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        return 0;
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "ibi.client");
      v60[0] = 0;
      v63 = 0;
      v10 = ims::debug(__p, v60);
      v11 = *(*(*v9 - 8) + 8);
      v12 = strlen((v11 & 0x7FFFFFFFFFFFFFFFLL));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), v11 & 0x7FFFFFFFFFFFFFFFLL, v12);
      *(v10 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "::", 2);
      *(v10 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "handleRTCPRRReportInd", 21);
      *(v10 + 17) = 0;
      (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v10 + 17) = 0;
      if (v63 == 1 && v62 < 0)
      {
        operator delete(v61);
      }

      if (SBYTE7(v51) < 0)
      {
        operator delete(__p[0]);
      }

      v59 = 0;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      *__p = 0u;
      AriSdk::ARI_IBIImsMERtcpReceiverReportIndCb_SDK::ARI_IBIImsMERtcpReceiverReportIndCb_SDK(__p, a2);
      if (ice::isARIResponseValid())
      {
        if (!AriSdk::ARI_IBIImsMERtcpReceiverReportIndCb_SDK::unpack(__p))
        {
          v21 = **(&v55 + 1);
          v22 = *v56;
          v23 = **(&v56 + 1);
          v24 = *v57;
          v25 = **(&v57 + 1);
          v26 = *v58;
          v27 = **(&v58 + 1);
          v42[0] = 0;
          v42[1] = v42;
          v43 = 0x6002000000;
          v44 = __Block_byref_object_copy__77;
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          v45 = __Block_byref_object_dispose__78;
          v49 = 0;
          v28 = *v55;
          *&v46 = &unk_1F5EF3398;
          DWORD2(v47) = v28;
          v49 = 0;
          v48 = 0uLL;
          LODWORD(v31) = v21;
          BYTE4(v31) = v22;
          *(&v31 + 5) = 0;
          BYTE7(v31) = 0;
          *(&v31 + 1) = __PAIR64__(v24, v23);
          v32 = __PAIR64__(v26, v25);
          LODWORD(v33) = v27;
          std::vector<RTCPReceiverReport>::push_back[abi:ne200100](&v48, &v31);
          memset(&v41, 0, sizeof(v41));
          BufGmid = AriMsg::GetBufGmid(a2, a3);
          IBIRTPClient::getMsgName(BufGmid, &v41);
          v39 = 0;
          v40 = 0;
          std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v39, (v9 + 8));
          *&v31 = MEMORY[0x1E69E9820];
          *(&v31 + 1) = 1174405120;
          v32 = ___ZN12IBIRTPClient21handleRTCPRRReportIndEPhj_block_invoke;
          v33 = &unk_1F5EE34C0;
          v38 = a3;
          if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v35, v41.__r_.__value_.__l.__data_, v41.__r_.__value_.__l.__size_);
          }

          else
          {
            v35 = v41;
          }

          v36 = v39;
          v37 = v40;
          if (v40)
          {
            atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v34 = v42;
          dispatch_async(*(v9 + 104), &v31);
          if (v37)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v37);
          }

          if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v35.__r_.__value_.__l.__data_);
          }

          if (v40)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v40);
          }

          if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v41.__r_.__value_.__l.__data_);
          }

          _Block_object_dispose(v42, 8);
          *&v46 = &unk_1F5EF3398;
          v20 = v48;
          if (!v48)
          {
            goto LABEL_42;
          }

          *(&v48 + 1) = v48;
          goto LABEL_41;
        }

        v13 = *(v9 + 96);
        if (v13)
        {
          v14 = std::__shared_weak_count::lock(v13);
          if (v14)
          {
            v15 = v14;
            v16 = *(v9 + 88);
            if (v16)
            {
              v17 = *(v16 + 72);
              v18 = *(v16 + 80);
              if (v18)
              {
                atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              RTPManager::logRTPError(v17, 3);
              if (v18)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v18);
              }
            }

            std::__shared_weak_count::__release_shared[abi:ne200100](v15);
          }
        }

        std::string::basic_string[abi:ne200100]<0>(&v31, "ibi.client");
        LOBYTE(v42[0]) = 0;
        BYTE8(v46) = 0;
        v19 = ims::error(&v31, v42);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "Failed to extract IBIImsMERtcpReceiverReportInd: ", 49);
        *(v19 + 17) = 0;
        MEMORY[0x1E6923350](*(v19 + 8), 1166114816);
        *(v19 + 17) = 0;
        (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(&v31, "ibi.client");
        LOBYTE(v42[0]) = 0;
        BYTE8(v46) = 0;
        v19 = ims::error(&v31, v42);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "Invalid RTCPRRReportIndication", 30);
        *(v19 + 17) = 0;
        (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      }

      *(v19 + 17) = 0;
      if (BYTE8(v46) == 1 && SHIBYTE(v45) < 0)
      {
        operator delete(v43);
      }

      if ((SHIBYTE(v32) & 0x80000000) == 0)
      {
        goto LABEL_42;
      }

      v20 = v31;
LABEL_41:
      operator delete(v20);
LABEL_42:
      MEMORY[0x1E6922D90](__p);
      goto LABEL_43;
    }
  }

  return 0;
}

void sub_1E4F948AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a31, 8);
  if (a43)
  {
    a44 = a43;
    operator delete(a43);
  }

  MEMORY[0x1E6922D90](&a46);
  std::__shared_weak_count::__release_shared[abi:ne200100](v51);
  _Unwind_Resume(a1);
}

uint64_t ___ZN12IBIRTPClient22registerForIndicationsEv_block_invoke_21(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 32);
      if (!v9)
      {
LABEL_38:
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        return 0;
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "ibi.client");
      v41[0] = 0;
      v44 = 0;
      v10 = ims::debug(__p, v41);
      v11 = *(*(*v9 - 8) + 8);
      v12 = strlen((v11 & 0x7FFFFFFFFFFFFFFFLL));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), v11 & 0x7FFFFFFFFFFFFFFFLL, v12);
      *(v10 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "::", 2);
      *(v10 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "handleRTCPSDESReportInd", 23);
      *(v10 + 17) = 0;
      (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v10 + 17) = 0;
      if (v44 == 1 && v43 < 0)
      {
        operator delete(v42);
      }

      if (SBYTE7(v33) < 0)
      {
        operator delete(__p[0]);
      }

      v40 = 0;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v33 = 0u;
      *__p = 0u;
      AriSdk::ARI_IBIImsMERtcpSDESReportIndCb_SDK::ARI_IBIImsMERtcpSDESReportIndCb_SDK(__p, a2);
      if (ice::isARIResponseValid())
      {
        if (!AriSdk::ARI_IBIImsMERtcpSDESReportIndCb_SDK::unpack(__p))
        {
          memset(&v31, 0, sizeof(v31));
          BufGmid = AriMsg::GetBufGmid(a2, a3);
          IBIRTPClient::getMsgName(BufGmid, &v31);
          v29 = 0;
          v30 = 0;
          std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v29, (v9 + 8));
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 1174405120;
          v23 = ___ZN12IBIRTPClient23handleRTCPSDESReportIndEPhj_block_invoke;
          v24 = &__block_descriptor_tmp_86_0;
          v28 = a3;
          if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v25, v31.__r_.__value_.__l.__data_, v31.__r_.__value_.__l.__size_);
          }

          else
          {
            v25 = v31;
          }

          v26 = v29;
          v27 = v30;
          if (v30)
          {
            atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          dispatch_async(*(v9 + 104), block);
          if (v27)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v27);
          }

          if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v25.__r_.__value_.__l.__data_);
          }

          if (v30)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v30);
          }

          goto LABEL_35;
        }

        v13 = *(v9 + 96);
        if (v13)
        {
          v14 = std::__shared_weak_count::lock(v13);
          if (v14)
          {
            v15 = v14;
            v16 = *(v9 + 88);
            if (v16)
            {
              v17 = *(v16 + 72);
              v18 = *(v16 + 80);
              if (v18)
              {
                atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              RTPManager::logRTPError(v17, 3);
              if (v18)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v18);
              }
            }

            std::__shared_weak_count::__release_shared[abi:ne200100](v15);
          }
        }

        std::string::basic_string[abi:ne200100]<0>(&v31, "ibi.client");
        LOBYTE(block[0]) = 0;
        v25.__r_.__value_.__s.__data_[16] = 0;
        v19 = ims::error(&v31, block);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "Failed to extract IBIImsMERtcpSDESReportInd: ", 45);
        *(v19 + 17) = 0;
        MEMORY[0x1E6923350](*(v19 + 8), 1166147584);
        *(v19 + 17) = 0;
        (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(&v31, "ibi.client");
        LOBYTE(block[0]) = 0;
        v25.__r_.__value_.__s.__data_[16] = 0;
        v19 = ims::error(&v31, block);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "Invalid RTCPSDESReportIndication", 32);
        *(v19 + 17) = 0;
        (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      }

      *(v19 + 17) = 0;
      if (v25.__r_.__value_.__s.__data_[16] == 1 && v25.__r_.__value_.__s.__data_[7] < 0)
      {
        operator delete(v23);
      }

LABEL_35:
      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }

      MEMORY[0x1E6922B90](__p);
      goto LABEL_38;
    }
  }

  return 0;
}

void sub_1E4F94DE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  if (a30 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1E6922B90](&a31);
  std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  _Unwind_Resume(a1);
}

uint64_t (*IBIRTPClient::callbackForRequest(IBIRTPClient *this, int a2))(unsigned __int8 *a1, unsigned int a2, uint64_t *a3)
{
  v2 = IBIRTPClient::handleGetMediaCapabilityResponse;
  if (a2 > 1149370367)
  {
    if (a2 <= 1149435903)
    {
      if (a2 == 1149370368)
      {
        return IBIRTPClient::handleTerminateMediaSessionResponse;
      }

      if (a2 == 1149403136)
      {
        return IBIRTPClient::handleStartDTMFCodeResponse;
      }
    }

    else
    {
      switch(a2)
      {
        case 1149435904:
          return IBIRTPClient::handleStopDTMFCodeResponse;
        case 1149468672:
          return IBIRTPClient::handleCreateAudioMediaSessionResponse;
        case 1149501440:
          return IBIRTPClient::handleConfigureAudioMediaResponse;
      }
    }

    return IBIRTPClient::handleUnknownResponse;
  }

  if (a2 <= 1149272063)
  {
    if (a2 == -259653632)
    {
      return IBIRTPClient::handleAudioCallEventResponse;
    }

    if (a2 == 210337792)
    {
      return IBIRTPClient::handleCallPsRtpResponse;
    }

    return IBIRTPClient::handleUnknownResponse;
  }

  if (a2 != 1149272064)
  {
    if (a2 == 1149304832)
    {
      return IBIRTPClient::handleStartMediaResponse;
    }

    if (a2 == 1149337600)
    {
      return IBIRTPClient::handleStopMediaResponse;
    }

    return IBIRTPClient::handleUnknownResponse;
  }

  return v2;
}

uint64_t IBIRTPClient::handleGetMediaCapabilityResponse(unsigned __int8 *a1, unsigned int a2, uint64_t *a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "ibi.client");
  v29[0] = 0;
  v32 = 0;
  v6 = ims::debug(__p, v29);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "handleGetMediaCapabilityResponse", 32);
  *(v6 + 17) = 0;
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  if (v32 == 1 && v31 < 0)
  {
    operator delete(v30);
  }

  if (SBYTE7(v25) < 0)
  {
    operator delete(__p[0]);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  *__p = 0u;
  AriSdk::ARI_IBIImsMEGetMediaCapabilityRspCb_SDK::ARI_IBIImsMEGetMediaCapabilityRspCb_SDK(__p, a1);
  if (ice::isARIResponseValid())
  {
    memset(&v23, 0, sizeof(v23));
    BufGmid = AriMsg::GetBufGmid(a1, a2);
    IBIRTPClient::getMsgName(BufGmid, &v23);
    v8 = *a3;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 1174405120;
    v14[2] = ___ZN12IBIRTPClient32handleGetMediaCapabilityResponseEPhjNSt3__110shared_ptrIS_EE_block_invoke;
    v14[3] = &__block_descriptor_tmp_28_0;
    v18 = a2;
    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v15, v23.__r_.__value_.__l.__data_, v23.__r_.__value_.__l.__size_);
      v9 = *a3;
    }

    else
    {
      v15 = v23;
      v9 = v8;
    }

    v12 = a3[1];
    v16 = v9;
    v17 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    dispatch_async(*(v8 + 104), v14);
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      v11 = v15.__r_.__value_.__r.__words[0];
      goto LABEL_19;
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v23, "ibi.client");
    v19[0] = 0;
    v22 = 0;
    v10 = ims::error(&v23, v19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Invalid GetMediaCapabilityResponse", 34);
    *(v10 + 17) = 0;
    (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v10 + 17) = 0;
    if (v22 == 1 && v21 < 0)
    {
      v11 = v20;
LABEL_19:
      operator delete(v11);
    }
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  return MEMORY[0x1E6922D60](__p);
}

void sub_1E4F952C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1E6922D60](&a35);
  _Unwind_Resume(a1);
}

uint64_t IBIRTPClient::handleStartMediaResponse(unsigned __int8 *a1, unsigned int a2, uint64_t *a3)
{
  v6 = std::string::basic_string[abi:ne200100]<0>(&v35, "ibi.client");
  v40[0] = 0;
  v43 = 0;
  v7 = ims::debug(v6, v40);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "handleStartMediaResponse", 24);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v43 == 1 && v42 < 0)
  {
    operator delete(v41);
  }

  if (SBYTE7(v36) < 0)
  {
    operator delete(v35);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  AriSdk::ARI_IBIImsMEStartMediaRspCb_SDK::ARI_IBIImsMEStartMediaRspCb_SDK(&v35, a1);
  if ((ice::isARIResponseValid() & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v24, "ibi.client");
    v31[0] = 0;
    v34 = 0;
    v10 = ims::error(v24, v31);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Invalid StartMediaResponse", 26);
    *(v10 + 17) = 0;
    (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v10 + 17) = 0;
    if (v34 == 1 && v33 < 0)
    {
      v9 = __p;
      goto LABEL_14;
    }

LABEL_15:
    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24[0]);
    }

    return MEMORY[0x1E6922A30](&v35);
  }

  if (AriSdk::ARI_IBIImsMEStartMediaRspCb_SDK::unpack(&v35))
  {
    std::string::basic_string[abi:ne200100]<0>(v24, "ibi.client");
    v27[0] = 0;
    v30 = 0;
    v8 = ims::error(v24, v27);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "Failed to extract StartMediaSessionResponse : ", 46);
    *(v8 + 17) = 0;
    MEMORY[0x1E6923350](*(v8 + 8), 1157693440);
    *(v8 + 17) = 0;
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
    if (v30 == 1 && v29 < 0)
    {
      v9 = v28;
LABEL_14:
      operator delete(v9);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  v24[0] = 0;
  v24[1] = v24;
  v25 = 0x2000000000;
  v26 = *v39;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2000000000;
  v23 = **(&v39 + 1);
  memset(&v21, 0, sizeof(v21));
  BufGmid = AriMsg::GetBufGmid(a1, a2);
  IBIRTPClient::getMsgName(BufGmid, &v21);
  v12 = *a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 1174405120;
  block[2] = ___ZN12IBIRTPClient24handleStartMediaResponseEPhjNSt3__110shared_ptrIS_EE_block_invoke;
  block[3] = &unk_1F5EE3290;
  v20 = a2;
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
    v13 = *a3;
  }

  else
  {
    v17 = v21;
    v13 = v12;
  }

  v14 = a3[1];
  v18 = v13;
  v19 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v24;
  block[5] = v22;
  dispatch_async(*(v12 + 104), block);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  _Block_object_dispose(v22, 8);
  _Block_object_dispose(v24, 8);
  return MEMORY[0x1E6922A30](&v35);
}

void sub_1E4F95714(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, uint64_t a57, char a58)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a32, 8);
  MEMORY[0x1E6922A30](v58 - 192);
  _Unwind_Resume(a1);
}

uint64_t IBIRTPClient::handleStopMediaResponse(unsigned __int8 *a1, unsigned int a2, uint64_t *a3)
{
  v6 = std::string::basic_string[abi:ne200100]<0>(&v35, "ibi.client");
  v40[0] = 0;
  v43 = 0;
  v7 = ims::debug(v6, v40);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "handleStopMediaResponse", 23);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v43 == 1 && v42 < 0)
  {
    operator delete(v41);
  }

  if (SBYTE7(v36) < 0)
  {
    operator delete(v35);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  AriSdk::ARI_IBIImsMEStopMediaRspCb_SDK::ARI_IBIImsMEStopMediaRspCb_SDK(&v35, a1);
  if ((ice::isARIResponseValid() & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v24, "ibi.client");
    v31[0] = 0;
    v34 = 0;
    v10 = ims::error(v24, v31);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Invalid StopMediaSessionResponse", 32);
    *(v10 + 17) = 0;
    (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v10 + 17) = 0;
    if (v34 == 1 && v33 < 0)
    {
      v9 = __p;
      goto LABEL_14;
    }

LABEL_15:
    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24[0]);
    }

    return MEMORY[0x1E6922A00](&v35);
  }

  if (AriSdk::ARI_IBIImsMEStopMediaRspCb_SDK::unpack(&v35))
  {
    std::string::basic_string[abi:ne200100]<0>(v24, "ibi.client");
    v27[0] = 0;
    v30 = 0;
    v8 = ims::error(v24, v27);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "Failed to extract StopMediaSessionResponse : ", 45);
    *(v8 + 17) = 0;
    MEMORY[0x1E6923350](*(v8 + 8), 1157726208);
    *(v8 + 17) = 0;
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
    if (v30 == 1 && v29 < 0)
    {
      v9 = v28;
LABEL_14:
      operator delete(v9);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  v24[0] = 0;
  v24[1] = v24;
  v25 = 0x2000000000;
  v26 = *v39;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2000000000;
  v23 = **(&v39 + 1);
  memset(&v21, 0, sizeof(v21));
  BufGmid = AriMsg::GetBufGmid(a1, a2);
  IBIRTPClient::getMsgName(BufGmid, &v21);
  v12 = *a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 1174405120;
  block[2] = ___ZN12IBIRTPClient23handleStopMediaResponseEPhjNSt3__110shared_ptrIS_EE_block_invoke;
  block[3] = &unk_1F5EE32C8;
  v20 = a2;
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
    v13 = *a3;
  }

  else
  {
    v17 = v21;
    v13 = v12;
  }

  v14 = a3[1];
  v18 = v13;
  v19 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v24;
  block[5] = v22;
  dispatch_async(*(v12 + 104), block);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  _Block_object_dispose(v22, 8);
  _Block_object_dispose(v24, 8);
  return MEMORY[0x1E6922A00](&v35);
}

void sub_1E4F95BBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, uint64_t a57, char a58)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a32, 8);
  MEMORY[0x1E6922A00](v58 - 192);
  _Unwind_Resume(a1);
}

uint64_t IBIRTPClient::handleTerminateMediaSessionResponse(unsigned __int8 *a1, unsigned int a2, uint64_t *a3)
{
  v6 = std::string::basic_string[abi:ne200100]<0>(&v35, "ibi.client");
  v40[0] = 0;
  v43 = 0;
  v7 = ims::debug(v6, v40);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "handleTerminateMediaSessionResponse", 35);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v43 == 1 && v42 < 0)
  {
    operator delete(v41);
  }

  if (SBYTE7(v36) < 0)
  {
    operator delete(v35);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  AriSdk::ARI_IBIImsMETerminateMediaSessionRspCb_SDK::ARI_IBIImsMETerminateMediaSessionRspCb_SDK(&v35, a1);
  if ((ice::isARIResponseValid() & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v24, "ibi.client");
    v31[0] = 0;
    v34 = 0;
    v10 = ims::error(v24, v31);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Invalid TerminateMediaSessionResponse", 37);
    *(v10 + 17) = 0;
    (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v10 + 17) = 0;
    if (v34 == 1 && v33 < 0)
    {
      v9 = __p;
      goto LABEL_14;
    }

LABEL_15:
    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24[0]);
    }

    return MEMORY[0x1E6922E60](&v35);
  }

  if (AriSdk::ARI_IBIImsMETerminateMediaSessionRspCb_SDK::unpack(&v35))
  {
    std::string::basic_string[abi:ne200100]<0>(v24, "ibi.client");
    v27[0] = 0;
    v30 = 0;
    v8 = ims::error(v24, v27);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "Failed to extract TerminateMediaSessionResponse : ", 50);
    *(v8 + 17) = 0;
    MEMORY[0x1E6923350](*(v8 + 8), 1157758976);
    *(v8 + 17) = 0;
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
    if (v30 == 1 && v29 < 0)
    {
      v9 = v28;
LABEL_14:
      operator delete(v9);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  v24[0] = 0;
  v24[1] = v24;
  v25 = 0x2000000000;
  v26 = *v39;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2000000000;
  v23 = **(&v39 + 1);
  memset(&v21, 0, sizeof(v21));
  BufGmid = AriMsg::GetBufGmid(a1, a2);
  IBIRTPClient::getMsgName(BufGmid, &v21);
  v12 = *a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 1174405120;
  block[2] = ___ZN12IBIRTPClient35handleTerminateMediaSessionResponseEPhjNSt3__110shared_ptrIS_EE_block_invoke;
  block[3] = &unk_1F5EE3300;
  v20 = a2;
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
    v13 = *a3;
  }

  else
  {
    v17 = v21;
    v13 = v12;
  }

  v14 = a3[1];
  v18 = v13;
  v19 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v24;
  block[5] = v22;
  dispatch_async(*(v12 + 104), block);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  _Block_object_dispose(v22, 8);
  _Block_object_dispose(v24, 8);
  return MEMORY[0x1E6922E60](&v35);
}

void sub_1E4F9605C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, uint64_t a57, char a58)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a32, 8);
  MEMORY[0x1E6922E60](v58 - 192);
  _Unwind_Resume(a1);
}

uint64_t IBIRTPClient::handleStartDTMFCodeResponse(unsigned __int8 *a1, unsigned int a2, uint64_t *a3)
{
  v6 = std::string::basic_string[abi:ne200100]<0>(&v35, "ibi.client");
  v41[0] = 0;
  v44 = 0;
  v7 = ims::debug(v6, v41);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "handleStartDTMFCodeResponse", 27);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v44 == 1 && v43 < 0)
  {
    operator delete(v42);
  }

  if (SBYTE7(v36) < 0)
  {
    operator delete(v35);
  }

  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  AriSdk::ARI_IBIImsMEStartDTMFCodeRspCb_SDK::ARI_IBIImsMEStartDTMFCodeRspCb_SDK(&v35, a1);
  if ((ice::isARIResponseValid() & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v24, "ibi.client");
    v31[0] = 0;
    v34 = 0;
    v10 = ims::error(v24, v31);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Invalid StartDTMFCodeResponse", 29);
    *(v10 + 17) = 0;
    (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v10 + 17) = 0;
    if (v34 == 1 && v33 < 0)
    {
      v9 = __p;
      goto LABEL_14;
    }

LABEL_15:
    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24[0]);
    }

    return MEMORY[0x1E6922B40](&v35);
  }

  if (AriSdk::ARI_IBIImsMEStartDTMFCodeRspCb_SDK::unpack(&v35))
  {
    std::string::basic_string[abi:ne200100]<0>(v24, "ibi.client");
    v27[0] = 0;
    v30 = 0;
    v8 = ims::error(v24, v27);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "Failed to extract StartDTMFCodeResponse : ", 42);
    *(v8 + 17) = 0;
    MEMORY[0x1E6923350](*(v8 + 8), 1157791744);
    *(v8 + 17) = 0;
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
    if (v30 == 1 && v29 < 0)
    {
      v9 = v28;
LABEL_14:
      operator delete(v9);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  v24[0] = 0;
  v24[1] = v24;
  v25 = 0x2000000000;
  v26 = *v39;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2000000000;
  v23 = **(&v39 + 1);
  memset(&v21, 0, sizeof(v21));
  BufGmid = AriMsg::GetBufGmid(a1, a2);
  IBIRTPClient::getMsgName(BufGmid, &v21);
  v12 = *a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 1174405120;
  block[2] = ___ZN12IBIRTPClient27handleStartDTMFCodeResponseEPhjNSt3__110shared_ptrIS_EE_block_invoke;
  block[3] = &unk_1F5EE3338;
  v20 = a2;
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
    v13 = *a3;
  }

  else
  {
    v17 = v21;
    v13 = v12;
  }

  v14 = a3[1];
  v18 = v13;
  v19 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v24;
  block[5] = v22;
  dispatch_async(*(v12 + 104), block);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  _Block_object_dispose(v22, 8);
  _Block_object_dispose(v24, 8);
  return MEMORY[0x1E6922B40](&v35);
}

void sub_1E4F96508(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, uint64_t a57, char a58)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a32, 8);
  MEMORY[0x1E6922B40](v58 - 192);
  _Unwind_Resume(a1);
}

uint64_t IBIRTPClient::handleStopDTMFCodeResponse(unsigned __int8 *a1, unsigned int a2, uint64_t *a3)
{
  v6 = std::string::basic_string[abi:ne200100]<0>(&v35, "ibi.client");
  v41[0] = 0;
  v44 = 0;
  v7 = ims::debug(v6, v41);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "handleStopDTMFCodeResponse", 26);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v44 == 1 && v43 < 0)
  {
    operator delete(v42);
  }

  if (SBYTE7(v36) < 0)
  {
    operator delete(v35);
  }

  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  AriSdk::ARI_IBIImsMEStopDTMFCodeRspCb_SDK::ARI_IBIImsMEStopDTMFCodeRspCb_SDK(&v35, a1);
  if ((ice::isARIResponseValid() & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v24, "ibi.client");
    v31[0] = 0;
    v34 = 0;
    v10 = ims::error(v24, v31);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Invalid StopDTMFCodeResponse", 28);
    *(v10 + 17) = 0;
    (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v10 + 17) = 0;
    if (v34 == 1 && v33 < 0)
    {
      v9 = __p;
      goto LABEL_14;
    }

LABEL_15:
    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24[0]);
    }

    return MEMORY[0x1E6922AD0](&v35);
  }

  if (AriSdk::ARI_IBIImsMEStopDTMFCodeRspCb_SDK::unpack(&v35))
  {
    std::string::basic_string[abi:ne200100]<0>(v24, "ibi.client");
    v27[0] = 0;
    v30 = 0;
    v8 = ims::error(v24, v27);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "Failed to extract StopDTMFCodeResponse : ", 41);
    *(v8 + 17) = 0;
    MEMORY[0x1E6923350](*(v8 + 8), 1157824512);
    *(v8 + 17) = 0;
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
    if (v30 == 1 && v29 < 0)
    {
      v9 = v28;
LABEL_14:
      operator delete(v9);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  v24[0] = 0;
  v24[1] = v24;
  v25 = 0x2000000000;
  v26 = *v39;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2000000000;
  v23 = **(&v39 + 1);
  memset(&v21, 0, sizeof(v21));
  BufGmid = AriMsg::GetBufGmid(a1, a2);
  IBIRTPClient::getMsgName(BufGmid, &v21);
  v12 = *a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 1174405120;
  block[2] = ___ZN12IBIRTPClient26handleStopDTMFCodeResponseEPhjNSt3__110shared_ptrIS_EE_block_invoke;
  block[3] = &unk_1F5EE3370;
  v20 = a2;
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
    v13 = *a3;
  }

  else
  {
    v17 = v21;
    v13 = v12;
  }

  v14 = a3[1];
  v18 = v13;
  v19 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v24;
  block[5] = v22;
  dispatch_async(*(v12 + 104), block);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  _Block_object_dispose(v22, 8);
  _Block_object_dispose(v24, 8);
  return MEMORY[0x1E6922AD0](&v35);
}

void sub_1E4F969AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, uint64_t a57, char a58)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a32, 8);
  MEMORY[0x1E6922AD0](v58 - 192);
  _Unwind_Resume(a1);
}

uint64_t IBIRTPClient::handleCreateAudioMediaSessionResponse(unsigned __int8 *a1, unsigned int a2, uint64_t *a3)
{
  v6 = std::string::basic_string[abi:ne200100]<0>(&v42, "ibi.client");
  v48[0] = 0;
  v51 = 0;
  v7 = ims::debug(v6, v48);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "handleCreateAudioMediaSessionResponse", 37);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v51 == 1 && v50 < 0)
  {
    operator delete(v49);
  }

  if (SBYTE7(v43) < 0)
  {
    operator delete(v42);
  }

  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v42 = 0u;
  AriSdk::ARI_IBIImsMECreateAudioMediaSessionRspCb_SDK::ARI_IBIImsMECreateAudioMediaSessionRspCb_SDK(&v42, a1);
  if (ice::isARIResponseValid())
  {
    v8 = AriSdk::ARI_IBIImsMECreateAudioMediaSessionRspCb_SDK::unpack(&v42);
    v34 = 0;
    v35 = &v34;
    v36 = 0x2000000000;
    v37 = -1;
    v30 = 0;
    v31 = &v30;
    v32 = 0x2000000000;
    v33 = 0;
    v28[0] = 0;
    v28[1] = 0;
    v29 = 0;
    std::string::basic_string[abi:ne200100]<0>(v28, "handleCreateAudioMediaSessionResponse");
    if (v8)
    {
      std::string::basic_string[abi:ne200100]<0>(v24, "ibi.client");
      v20[0] = 0;
      v23 = 0;
      v9 = ims::error(v24, v20);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "Failed to extract CreateAudioMediaSessionResponse : ", 52);
      *(v9 + 17) = 0;
      MEMORY[0x1E6923350](*(v9 + 8), 1157857280);
      *(v9 + 17) = 0;
      (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v9 + 17) = 0;
      if (v23 == 1 && v22 < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v25) < 0)
      {
        operator delete(v24[0]);
      }
    }

    else
    {
      *(v35 + 6) = **(&v46 + 1);
      *(v31 + 6) = *v47;
      BufGmid = AriMsg::GetBufGmid(a1, a2);
      IBIRTPClient::getMsgName(BufGmid, v24);
      if (SHIBYTE(v29) < 0)
      {
        operator delete(v28[0]);
      }

      *v28 = *v24;
      v29 = v25;
    }

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 1174405120;
    v18[2] = ___ZN12IBIRTPClient37handleCreateAudioMediaSessionResponseEPhjNSt3__110shared_ptrIS_EE_block_invoke_55;
    v18[3] = &unk_1F5EE33E0;
    v16 = *a3;
    v17 = a3[1];
    v18[6] = *a3;
    v19 = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v18[4] = &v34;
    v18[5] = &v30;
    dispatch_async(*(v16 + 104), v18);
    v13 = v19;
    if (!v19)
    {
      goto LABEL_22;
    }

LABEL_21:
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    goto LABEL_22;
  }

  std::string::basic_string[abi:ne200100]<0>(&v34, "ibi.client");
  v38[0] = 0;
  v41 = 0;
  v10 = ims::error(&v34, v38);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Invalid CreateAudioMediaSessionResponse", 39);
  *(v10 + 17) = 0;
  (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v10 + 17) = 0;
  if (v41 == 1 && v40 < 0)
  {
    operator delete(v39);
  }

  if (SHIBYTE(v36) < 0)
  {
    operator delete(v34);
  }

  v34 = 0;
  v35 = &v34;
  v36 = 0x2000000000;
  v37 = -1;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2000000000;
  v33 = 0;
  v28[0] = 0;
  v28[1] = 0;
  v29 = 0;
  std::string::basic_string[abi:ne200100]<0>(v28, "handleCreateAudioMediaSessionResponse");
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 1174405120;
  block[2] = ___ZN12IBIRTPClient37handleCreateAudioMediaSessionResponseEPhjNSt3__110shared_ptrIS_EE_block_invoke;
  block[3] = &unk_1F5EE33A8;
  v11 = *a3;
  v12 = a3[1];
  block[6] = *a3;
  v27 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = &v34;
  block[5] = &v30;
  dispatch_async(*(v11 + 104), block);
  v13 = v27;
  if (v27)
  {
    goto LABEL_21;
  }

LABEL_22:
  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28[0]);
  }

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v34, 8);
  return MEMORY[0x1E6922EB0](&v42);
}

void sub_1E4F96F2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (a46 < 0)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a51, 8);
  MEMORY[0x1E6922EB0](v56 - 192);
  _Unwind_Resume(a1);
}

void sub_1E4F96FF0()
{
  if (*(v0 - 56) == 1 && *(v0 - 65) < 0)
  {
    operator delete(*(v0 - 88));
  }

  if (*(v0 - 169) < 0)
  {
    operator delete(*(v0 - 192));
  }

  JUMPOUT(0x1E4F96FE8);
}

uint64_t IBIRTPClient::handleConfigureAudioMediaResponse(unsigned __int8 *a1, unsigned int a2, uint64_t *a3)
{
  v6 = std::string::basic_string[abi:ne200100]<0>(&v35, "ibi.client");
  v40[0] = 0;
  v43 = 0;
  v7 = ims::debug(v6, v40);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "handleConfigureAudioMediaResponse", 33);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v43 == 1 && v42 < 0)
  {
    operator delete(v41);
  }

  if (SBYTE7(v36) < 0)
  {
    operator delete(v35);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  AriSdk::ARI_IBIImsMEConfigureAudioMediaRspCb_SDK::ARI_IBIImsMEConfigureAudioMediaRspCb_SDK(&v35, a1);
  if ((ice::isARIResponseValid() & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v24, "ibi.client");
    v31[0] = 0;
    v34 = 0;
    v10 = ims::error(v24, v31);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Invalid ConfigureAudioMediaSessionResponse", 42);
    *(v10 + 17) = 0;
    (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v10 + 17) = 0;
    if (v34 == 1 && v33 < 0)
    {
      v9 = __p;
      goto LABEL_14;
    }

LABEL_15:
    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24[0]);
    }

    return MEMORY[0x1E6922DC0](&v35);
  }

  if (AriSdk::ARI_IBIImsMEConfigureAudioMediaRspCb_SDK::unpack(&v35))
  {
    std::string::basic_string[abi:ne200100]<0>(v24, "ibi.client");
    v27[0] = 0;
    v30 = 0;
    v8 = ims::error(v24, v27);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "Failed to extract ConfigureAudioMediaSessionResponse : ", 55);
    *(v8 + 17) = 0;
    MEMORY[0x1E6923350](*(v8 + 8), 1157890048);
    *(v8 + 17) = 0;
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
    if (v30 == 1 && v29 < 0)
    {
      v9 = v28;
LABEL_14:
      operator delete(v9);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  v24[0] = 0;
  v24[1] = v24;
  v25 = 0x2000000000;
  v26 = *v39;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2000000000;
  v23 = **(&v39 + 1);
  memset(&v21, 0, sizeof(v21));
  BufGmid = AriMsg::GetBufGmid(a1, a2);
  IBIRTPClient::getMsgName(BufGmid, &v21);
  v12 = *a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 1174405120;
  block[2] = ___ZN12IBIRTPClient33handleConfigureAudioMediaResponseEPhjNSt3__110shared_ptrIS_EE_block_invoke;
  block[3] = &unk_1F5EE3418;
  v20 = a2;
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
    v13 = *a3;
  }

  else
  {
    v17 = v21;
    v13 = v12;
  }

  v14 = a3[1];
  v18 = v13;
  v19 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v24;
  block[5] = v22;
  dispatch_async(*(v12 + 104), block);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  _Block_object_dispose(v22, 8);
  _Block_object_dispose(v24, 8);
  return MEMORY[0x1E6922DC0](&v35);
}

void sub_1E4F973E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, uint64_t a57, char a58)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a32, 8);
  MEMORY[0x1E6922DC0](v58 - 192);
  _Unwind_Resume(a1);
}

uint64_t IBIRTPClient::handleAudioCallEventResponse(const unsigned __int8 *a1)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "ibi.client");
  v22[0] = 0;
  v25 = 0;
  v2 = ims::debug(&__p, v22);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "handleAudioCallEventResponse", 28);
  *(v2 + 17) = 0;
  (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v2 + 17) = 0;
  if (v25 == 1 && v24 < 0)
  {
    operator delete(v23);
  }

  if (SBYTE7(v18) < 0)
  {
    operator delete(__p);
  }

  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  __p = 0u;
  v18 = 0u;
  AriSdk::ARI_CsiIceAudCallEventRespCb_SDK::ARI_CsiIceAudCallEventRespCb_SDK(&__p, a1);
  if (ice::isARIResponseValid())
  {
    if (!AriSdk::ARI_CsiIceAudCallEventRespCb_SDK::unpack(&__p))
    {
      return MEMORY[0x1E6922A80](&__p);
    }

    std::string::basic_string[abi:ne200100]<0>(v15, "ibi.client");
    v7[0] = 0;
    v10 = 0;
    v3 = ims::error(v15, v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "Failed to extract CsiIceAudCallEventResponse : ", 47);
    *(v3 + 17) = 0;
    MEMORY[0x1E6923350](*(v3 + 8), 4043702272);
    *(v3 + 17) = 0;
    (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v3 + 17) = 0;
    if (v10 == 1 && v9 < 0)
    {
      v4 = v8;
LABEL_14:
      operator delete(v4);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v15, "ibi.client");
    v11[0] = 0;
    v14 = 0;
    v5 = ims::error(v15, v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Invalid AudioCallEventResponse", 30);
    *(v5 + 17) = 0;
    (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v5 + 17) = 0;
    if (v14 == 1 && v13 < 0)
    {
      v4 = v12;
      goto LABEL_14;
    }
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  return MEMORY[0x1E6922A80](&__p);
}

uint64_t IBIRTPClient::handleCallPsRtpResponse(const unsigned __int8 *a1)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "ibi.client");
  v22[0] = 0;
  v25 = 0;
  v2 = ims::debug(&__p, v22);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "handleCallPsRtpResponse", 23);
  *(v2 + 17) = 0;
  (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v2 + 17) = 0;
  if (v25 == 1 && v24 < 0)
  {
    operator delete(v23);
  }

  if (SBYTE7(v18) < 0)
  {
    operator delete(__p);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  __p = 0u;
  AriSdk::ARI_IBICallPsRtpRspCb_SDK::ARI_IBICallPsRtpRspCb_SDK(&__p, a1);
  if (ice::isARIResponseValid())
  {
    if (!AriSdk::ARI_IBICallPsRtpRspCb_SDK::unpack(&__p))
    {
      return MEMORY[0x1E6922970](&__p);
    }

    std::string::basic_string[abi:ne200100]<0>(v15, "ibi.client");
    v7[0] = 0;
    v10 = 0;
    v3 = ims::error(v15, v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "Failed to extract IBICallPsRtpRspCb: ", 37);
    *(v3 + 17) = 0;
    MEMORY[0x1E6923350](*(v3 + 8), 4043702272);
    *(v3 + 17) = 0;
    (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v3 + 17) = 0;
    if (v10 == 1 && v9 < 0)
    {
      v4 = v8;
LABEL_14:
      operator delete(v4);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v15, "ibi.client");
    v11[0] = 0;
    v14 = 0;
    v5 = ims::error(v15, v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Invalid CallPsRtpResponse", 25);
    *(v5 + 17) = 0;
    (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v5 + 17) = 0;
    if (v14 == 1 && v13 < 0)
    {
      v4 = v12;
      goto LABEL_14;
    }
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  return MEMORY[0x1E6922970](&__p);
}

void IBIRTPClient::handleUnknownResponse()
{
  v0 = std::string::basic_string[abi:ne200100]<0>(&v6, "ibi.client");
  v2[0] = 0;
  v5 = 0;
  v1 = ims::error(v0, v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v1 + 8), "handleUnknownResponse", 21);
  *(v1 + 17) = 0;
  (*(*v1 + 64))(v1, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v1 + 17) = 0;
  if (v5 == 1 && v4 < 0)
  {
    operator delete(__p);
  }

  if (v7 < 0)
  {
    operator delete(v6);
  }
}

void sub_1E4F97BC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  if (a18 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v18 - 17) < 0)
  {
    operator delete(*(v18 - 40));
  }

  _Unwind_Resume(exception_object);
}

_BYTE *IBIRTPClient::getMsgName@<X0>(unsigned int a1@<W1>, _BYTE *a2@<X8>)
{
  v4 = Ari::MsgDefById((a1 >> 26));
  v5 = "Unknown";
  if (v4 && *(v4 + 48))
  {
    v5 = *(v4 + 48);
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v5);
}

void ___ZN12IBIRTPClient32handleGetMediaCapabilityResponseEPhjNSt3__110shared_ptrIS_EE_block_invoke(uint64_t a1)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(&v10, "ibi.client");
  v6[0] = 0;
  v9 = 0;
  v3 = ims::debug(v2, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "RECV: Length: ", 14);
  *(v3 + 17) = 0;
  MEMORY[0x1E6923350](*(v3 + 8), *(a1 + 72));
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), ", Name: ", 8);
  *(v3 + 17) = 0;
  (*(*v3 + 32))(v3, a1 + 32);
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v9 == 1 && v8 < 0)
  {
    operator delete(__p);
  }

  if (v11 < 0)
  {
    operator delete(v10);
  }

  v4 = *(*(a1 + 56) + 96);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void sub_1E4F97D90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  if (a18 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v18 - 17) < 0)
  {
    operator delete(*(v18 - 40));
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE56c40_ZTSNSt3__110shared_ptrI12IBIRTPClientEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v4 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v4;
  }

  v5 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }
}

void __destroy_helper_block_e8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE56c40_ZTSNSt3__110shared_ptrI12IBIRTPClientEE(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 55) < 0)
  {
    v3 = *(a1 + 32);

    operator delete(v3);
  }
}

void ___ZN12IBIRTPClient24handleStartMediaResponseEPhjNSt3__110shared_ptrIS_EE_block_invoke(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(v12, "ibi.client");
  v8[0] = 0;
  v11 = 0;
  v2 = ims::debug(v12, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "RECV: Length: ", 14);
  *(v2 + 17) = 0;
  MEMORY[0x1E6923350](*(v2 + 8), *(a1 + 88));
  *(v2 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), ", Name: ", 8);
  *(v2 + 17) = 0;
  (*(*v2 + 32))(v2, a1 + 48);
  (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v2 + 17) = 0;
  if (v11 == 1 && v10 < 0)
  {
    operator delete(__p);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  v3 = *(a1 + 72);
  v4 = *(v3 + 96);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = v5;
      v7 = *(v3 + 88);
      if (v7)
      {
        IBIRTPStackController::handleStartMediaResponse(v7, *(*(*(a1 + 32) + 8) + 24), *(*(*(a1 + 40) + 8) + 24));
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void __copy_helper_block_e8_48c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE72c40_ZTSNSt3__110shared_ptrI12IBIRTPClientEE(std::string *a1, uint64_t a2)
{
  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 2, *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v4 = *(a2 + 48);
    a1[2].__r_.__value_.__r.__words[2] = *(a2 + 64);
    *&a1[2].__r_.__value_.__l.__data_ = v4;
  }

  v5 = *(a2 + 80);
  a1[3].__r_.__value_.__r.__words[0] = *(a2 + 72);
  a1[3].__r_.__value_.__l.__size_ = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }
}

void __destroy_helper_block_e8_48c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE72c40_ZTSNSt3__110shared_ptrI12IBIRTPClientEE(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 71) < 0)
  {
    v3 = *(a1 + 48);

    operator delete(v3);
  }
}

void ___ZN12IBIRTPClient23handleStopMediaResponseEPhjNSt3__110shared_ptrIS_EE_block_invoke(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(v12, "ibi.client");
  v8[0] = 0;
  v11 = 0;
  v2 = ims::debug(v12, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "RECV: Length: ", 14);
  *(v2 + 17) = 0;
  MEMORY[0x1E6923350](*(v2 + 8), *(a1 + 88));
  *(v2 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), ", Name: ", 8);
  *(v2 + 17) = 0;
  (*(*v2 + 32))(v2, a1 + 48);
  (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v2 + 17) = 0;
  if (v11 == 1 && v10 < 0)
  {
    operator delete(__p);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  v3 = *(a1 + 72);
  v4 = *(v3 + 96);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = v5;
      v7 = *(v3 + 88);
      if (v7)
      {
        IBIRTPStackController::handleStopMediaResponse(v7, *(*(*(a1 + 32) + 8) + 24), *(*(*(a1 + 40) + 8) + 24));
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void ___ZN12IBIRTPClient35handleTerminateMediaSessionResponseEPhjNSt3__110shared_ptrIS_EE_block_invoke(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(v12, "ibi.client");
  v8[0] = 0;
  v11 = 0;
  v2 = ims::debug(v12, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "RECV: Length: ", 14);
  *(v2 + 17) = 0;
  MEMORY[0x1E6923350](*(v2 + 8), *(a1 + 88));
  *(v2 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), ", Name: ", 8);
  *(v2 + 17) = 0;
  (*(*v2 + 32))(v2, a1 + 48);
  (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v2 + 17) = 0;
  if (v11 == 1 && v10 < 0)
  {
    operator delete(__p);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  v3 = *(a1 + 72);
  v4 = *(v3 + 96);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = v5;
      v7 = *(v3 + 88);
      if (v7)
      {
        IBIRTPStackController::handleTerminateMediaSessionResponse(v7, *(*(*(a1 + 32) + 8) + 24), *(*(*(a1 + 40) + 8) + 24));
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void ___ZN12IBIRTPClient27handleStartDTMFCodeResponseEPhjNSt3__110shared_ptrIS_EE_block_invoke(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(v12, "ibi.client");
  v8[0] = 0;
  v11 = 0;
  v2 = ims::debug(v12, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "RECV: Length: ", 14);
  *(v2 + 17) = 0;
  MEMORY[0x1E6923350](*(v2 + 8), *(a1 + 88));
  *(v2 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), ", Name: ", 8);
  *(v2 + 17) = 0;
  (*(*v2 + 32))(v2, a1 + 48);
  (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v2 + 17) = 0;
  if (v11 == 1 && v10 < 0)
  {
    operator delete(__p);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  v3 = *(a1 + 72);
  v4 = *(v3 + 96);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = v5;
      v7 = *(v3 + 88);
      if (v7)
      {
        IBIRTPStackController::handleStartDTMFCodeResponse(v7, *(*(*(a1 + 32) + 8) + 24), *(*(*(a1 + 40) + 8) + 24));
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void ___ZN12IBIRTPClient26handleStopDTMFCodeResponseEPhjNSt3__110shared_ptrIS_EE_block_invoke(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(v12, "ibi.client");
  v8[0] = 0;
  v11 = 0;
  v2 = ims::debug(v12, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "RECV: Length: ", 14);
  *(v2 + 17) = 0;
  MEMORY[0x1E6923350](*(v2 + 8), *(a1 + 88));
  *(v2 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), ", Name: ", 8);
  *(v2 + 17) = 0;
  (*(*v2 + 32))(v2, a1 + 48);
  (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v2 + 17) = 0;
  if (v11 == 1 && v10 < 0)
  {
    operator delete(__p);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  v3 = *(a1 + 72);
  v4 = *(v3 + 96);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = v5;
      v7 = *(v3 + 88);
      if (v7)
      {
        IBIRTPStackController::handleStopDTMFCodeResponse(v7, *(*(*(a1 + 32) + 8) + 24), *(*(*(a1 + 40) + 8) + 24));
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void ___ZN12IBIRTPClient37handleCreateAudioMediaSessionResponseEPhjNSt3__110shared_ptrIS_EE_block_invoke(void *a1)
{
  v2 = a1[6];
  v3 = *(v2 + 96);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v4;
      v6 = *(v2 + 88);
      if (v6)
      {
        IBIRTPStackController::handleCreateAudioMediaSessionResponse(v6, *(*(a1[4] + 8) + 24), *(*(a1[5] + 8) + 24));
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

uint64_t __copy_helper_block_e8_48c40_ZTSNSt3__110shared_ptrI12IBIRTPClientEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 56);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_48c40_ZTSNSt3__110shared_ptrI12IBIRTPClientEE(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void ___ZN12IBIRTPClient37handleCreateAudioMediaSessionResponseEPhjNSt3__110shared_ptrIS_EE_block_invoke_55(void *a1)
{
  v2 = a1[6];
  v3 = *(v2 + 96);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v4;
      v6 = *(v2 + 88);
      if (v6)
      {
        IBIRTPStackController::handleCreateAudioMediaSessionResponse(v6, *(*(a1[4] + 8) + 24), *(*(a1[5] + 8) + 24));
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void ___ZN12IBIRTPClient33handleConfigureAudioMediaResponseEPhjNSt3__110shared_ptrIS_EE_block_invoke(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(v12, "ibi.client");
  v8[0] = 0;
  v11 = 0;
  v2 = ims::debug(v12, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "RECV: Length: ", 14);
  *(v2 + 17) = 0;
  MEMORY[0x1E6923350](*(v2 + 8), *(a1 + 88));
  *(v2 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), ", Name: ", 8);
  *(v2 + 17) = 0;
  (*(*v2 + 32))(v2, a1 + 48);
  (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v2 + 17) = 0;
  if (v11 == 1 && v10 < 0)
  {
    operator delete(__p);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  v3 = *(a1 + 72);
  v4 = *(v3 + 96);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = v5;
      v7 = *(v3 + 88);
      if (v7)
      {
        IBIRTPStackController::handleConfigureAudioMediaSessionResponse(v7, *(*(*(a1 + 32) + 8) + 24), *(*(*(a1 + 40) + 8) + 24));
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void ___ZN12IBIRTPClient31handleMediaSessionErrIndicationEPhj_block_invoke(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(v12, "ibi.client");
  v8[0] = 0;
  v11 = 0;
  v2 = ims::debug(v12, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "RECV: Length: ", 14);
  *(v2 + 17) = 0;
  MEMORY[0x1E6923350](*(v2 + 8), *(a1 + 96));
  *(v2 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), ", Name: ", 8);
  *(v2 + 17) = 0;
  (*(*v2 + 32))(v2, a1 + 56);
  (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v2 + 17) = 0;
  if (v11 == 1 && v10 < 0)
  {
    operator delete(__p);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  v3 = *(a1 + 80);
  v4 = *(v3 + 96);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = v5;
      v7 = *(v3 + 88);
      if (v7)
      {
        IBIRTPStackController::handleMediaError(v7, *(*(*(a1 + 32) + 8) + 24), *(*(*(a1 + 40) + 8) + 24), *(*(*(a1 + 48) + 8) + 24));
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void __copy_helper_block_e8_56c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE80c40_ZTSNSt3__110shared_ptrI12IBIRTPClientEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 79) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 56), *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v4 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v4;
  }

  v5 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }
}

void __destroy_helper_block_e8_56c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE80c40_ZTSNSt3__110shared_ptrI12IBIRTPClientEE(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 79) < 0)
  {
    v3 = *(a1 + 56);

    operator delete(v3);
  }
}

__n128 __Block_byref_object_copy__3(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = &unk_1F5EDD2D8;
  v2 = *(a2 + 48);
  *(a1 + 54) = *(a2 + 54);
  *(a1 + 40) = &unk_1F5EF0658;
  *(a1 + 48) = v2;
  v3 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v3;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  result = *(a2 + 88);
  *(a1 + 88) = result;
  *(a1 + 104) = *(a2 + 104);
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  return result;
}

void __Block_byref_object_dispose__3(void *a1)
{
  a1[5] = &unk_1F5EF0658;
  v1 = a1[11];
  if (v1)
  {
    a1[12] = v1;
    operator delete(v1);
  }
}

void ___ZN12IBIRTPClient21handleRTCPSRReportIndEPhj_block_invoke(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(v14, "ibi.client");
  v10[0] = 0;
  v13 = 0;
  v2 = ims::debug(v14, v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "RECV: Length: ", 14);
  *(v2 + 17) = 0;
  MEMORY[0x1E6923350](*(v2 + 8), *(a1 + 80));
  *(v2 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), ", Name: ", 8);
  *(v2 + 17) = 0;
  (*(*v2 + 32))(v2, a1 + 40);
  (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v2 + 17) = 0;
  if (v13 == 1 && v12 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  v3 = *(a1 + 64);
  v4 = *(v3 + 96);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = v5;
      v7 = *(v3 + 88);
      if (v7)
      {
        v8 = *(v7 + 72);
        v9 = *(v7 + 80);
        if (v9)
        {
          atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        RTPManager::logRemoteRTCPSRPacket(v8, (*(*(a1 + 32) + 8) + 40));
        if (v9)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void sub_1E4F98F78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_40c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE64c40_ZTSNSt3__110shared_ptrI12IBIRTPClientEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v4 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v4;
  }

  v5 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }
}

void __destroy_helper_block_e8_40c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE64c40_ZTSNSt3__110shared_ptrI12IBIRTPClientEE(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 63) < 0)
  {
    v3 = *(a1 + 40);

    operator delete(v3);
  }
}

__n128 __Block_byref_object_copy__77(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = &unk_1F5EDD2D8;
  v2 = *(a2 + 48);
  *(a1 + 54) = *(a2 + 54);
  *(a1 + 40) = &unk_1F5EF3398;
  *(a1 + 48) = v2;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  result = *(a2 + 72);
  *(a1 + 72) = result;
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  return result;
}

void __Block_byref_object_dispose__78(void *a1)
{
  a1[5] = &unk_1F5EF3398;
  v1 = a1[9];
  if (v1)
  {
    a1[10] = v1;
    operator delete(v1);
  }
}

void ___ZN12IBIRTPClient21handleRTCPRRReportIndEPhj_block_invoke(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(v14, "ibi.client");
  v10[0] = 0;
  v13 = 0;
  v2 = ims::debug(v14, v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "RECV: Length: ", 14);
  *(v2 + 17) = 0;
  MEMORY[0x1E6923350](*(v2 + 8), *(a1 + 80));
  *(v2 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), ", Name: ", 8);
  *(v2 + 17) = 0;
  (*(*v2 + 32))(v2, a1 + 40);
  (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v2 + 17) = 0;
  if (v13 == 1 && v12 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  v3 = *(a1 + 64);
  v4 = *(v3 + 96);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = v5;
      v7 = *(v3 + 88);
      if (v7)
      {
        v8 = *(v7 + 72);
        v9 = *(v7 + 80);
        if (v9)
        {
          atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        RTPManager::logRemoteRTCPRRPacket(v8, (*(*(a1 + 32) + 8) + 40), 0);
        if (v9)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void sub_1E4F992B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  _Unwind_Resume(a1);
}

void ___ZN12IBIRTPClient23handleRTCPSDESReportIndEPhj_block_invoke(uint64_t a1)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(&v15, "ibi.client");
  v11[0] = 0;
  v14 = 0;
  v3 = ims::debug(v2, v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "RECV: Length: ", 14);
  *(v3 + 17) = 0;
  MEMORY[0x1E6923350](*(v3 + 8), *(a1 + 72));
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), ", Name: ", 8);
  *(v3 + 17) = 0;
  (*(*v3 + 32))(v3, a1 + 32);
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v14 == 1 && v13 < 0)
  {
    operator delete(__p);
  }

  if (v16 < 0)
  {
    operator delete(v15);
  }

  v4 = *(a1 + 56);
  v5 = *(v4 + 96);
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = v6;
      v8 = *(v4 + 88);
      if (v8)
      {
        v9 = *(v8 + 72);
        v10 = *(v8 + 80);
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        RTPManager::logSdesRTCPTime(v9);
        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

void sub_1E4F99478(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  v20 = v19;
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  _Unwind_Resume(a1);
}

void IBIRTPClient::logPrefix(IBIRTPClient *this, ImsOutStream *a2)
{
  LoggableString::LoggableString(&__p, (this + 56));
  (*(*a2 + 40))(a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1E4F99554(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<ImsDebugLogWriter>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EE35E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

uint64_t _GLOBAL__sub_I_IBIRTPClient_cpp()
{
  std::string::basic_string[abi:ne200100]<0>(&qword_1EE2BC878, "com.apple.ipTelephony.iceClient.");
  v0 = MEMORY[0x1E69E52C0];

  return __cxa_atexit(v0, &qword_1EE2BC878, &dword_1E4C3F000);
}

void SipSessionTimer::SipSessionTimer(SipSessionTimer *this, const ClientConfig *a2)
{
  *this = &unk_1F5EBEEC0;
  v4 = (this + 8);
  std::string::basic_string[abi:ne200100]<0>(v15, "sip.session");
  v11 = *a2;
  v12 = *(a2 + 2);
  if (*(a2 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 2), *(a2 + 3));
  }

  else
  {
    __p = *(a2 + 16);
  }

  v14 = *(a2 + 40);
  ims::getQueue(&v20);
  ClientConfig::getLogTag(&v11, &v17);
  if ((v16 & 0x80u) == 0)
  {
    v5 = v15;
  }

  else
  {
    v5 = v15[0];
  }

  if ((v16 & 0x80u) == 0)
  {
    v6 = v16;
  }

  else
  {
    v6 = v15[1];
  }

  v7 = std::string::insert(&v17, 0, v5, v6);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v19 = v7->__r_.__value_.__r.__words[2];
  v18 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (v19 >= 0)
  {
    v9 = &v18;
  }

  else
  {
    v9 = v18;
  }

  *(this + 2) = 0;
  *(this + 3) = 0;
  v10 = v20;
  *(this + 4) = v20;
  if (v10)
  {
    dispatch_retain(v10);
  }

  *(this + 5) = 0;
  ctu::OsLogLogger::OsLogLogger((this + 48), "com.apple.ipTelephony", v9);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(v18);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (v10)
  {
    dispatch_release(v10);
  }

  *v4 = &unk_1F5EE3760;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  *this = &unk_1F5EE3630;
  *(this + 1) = &unk_1F5EE3668;
  *(this + 7) = 0;
  *(this + 16) = 90;
  *(this + 9) = 0;
  SipTimerContainer::SipTimerContainer((this + 80));
  *(this + 31) = 0;
  *(this + 32) = 0;
  *(this + 132) = 256;
  *(this + 26) = this;
}

void sub_1E4F99884(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipSessionTimer::loggableName(SipSessionTimer *this@<X0>, LoggableString *a2@<X8>)
{
  v4 = *(this + 32);
  if (!v4)
  {
    v5 = 0;
    goto LABEL_6;
  }

  v5 = std::__shared_weak_count::lock(v4);
  if (!v5 || (v6 = *(this + 31)) == 0)
  {
LABEL_6:
    LoggableString::LoggableString(a2, "Unknown SipSessionTimer");
    if (!v5)
    {
      return;
    }

    goto LABEL_7;
  }

  (*(*v6 + 320))(v6);
LABEL_7:

  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
}

std::string *SipSessionTimer::initialize(uint64_t a1, void *a2, char a3)
{
  v7 = *a2;
  v6 = a2[1];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  v8 = *(a1 + 256);
  *(a1 + 248) = v7;
  *(a1 + 256) = v6;
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  *(a1 + 264) = a3;
  v9 = *a2;
  std::string::operator=((a1 + 128), (*a2 + 8));
  v10 = *(v9 + 200);
  *(a1 + 152) = *(v9 + 192);
  *(a1 + 160) = v10;
  result = std::string::operator=((a1 + 168), (v9 + 208));
  *(a1 + 192) = *(v9 + 232);
  v12 = *a2;
  v13 = *(*a2 + 880);
  *(a1 + 64) = v13;
  if (*(v12 + 876) > v13)
  {
    v13 = *(v12 + 876);
  }

  v14 = *(v12 + 872);
  if (v14 <= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  *(a1 + 56) = v16;
  *(a1 + 60) = v13;
  *(a1 + 265) = 1;
  return result;
}

void SipSessionTimer::handleTimer(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 256);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 248);
      if (v7)
      {
        v8 = *(a2 + 23);
        v9 = v8;
        if ((v8 & 0x80u) != 0)
        {
          v8 = *(a2 + 8);
        }

        if (v8 == 19)
        {
          if (v9 >= 0)
          {
            v10 = a2;
          }

          else
          {
            v10 = *a2;
          }

          if (*v10 == 0x456E6F6973736553 && v10[1] == 0x6954736572697078 && *(v10 + 11) == 0x72656D6954736572)
          {
            v24 = 0;
            v25 = 0;
            SipSessionInterface::stack(v7, &v24);
            if (v24)
            {
              v18 = *(v24 + 31);
              v19 = *(v24 + 32);
              if (v19)
              {
                atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (v18 && (*(SipUserAgent::config(v18) + 1153) & 1) == 0)
              {
                v21 = (v7->__on_zero_shared_weak)(v7);
                (v7->__on_zero_shared)(v7, v21);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "did not receive session refresh update in time.  Terminating session.", 69);
                *(v21 + 17) = 0;
                (*(*v21 + 64))(v21, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                *(v21 + 17) = 0;
                std::string::basic_string[abi:ne200100]<0>(&__p, "SessionExpired");
                SipSession::bye(v7);
              }

              v20 = (v7->__on_zero_shared_weak)(v7);
              (v7->__on_zero_shared)(v7, v20);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "ignoring session refresh timeout", 32);
              *(v20 + 17) = 0;
              (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              *(v20 + 17) = 0;
              if (v19)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v19);
              }
            }

            if (v25)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v25);
            }
          }

          else
          {
            v13 = *v10;
            v14 = v10[1];
            v15 = *(v10 + 11);
            if (v13 == 0x526E6F6973736553 && v14 == 0x6954687365726665 && v15 == 0x72656D6954687365)
            {
              SipSession::sendSessionRefresh(v7, v22);
              ImsResult::~ImsResult(v22);
            }
          }
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void sub_1E4F99DCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  v30 = *(v28 - 56);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  _Unwind_Resume(a1);
}

uint64_t SipSessionTimer::handleIntervalTooSmallResponse(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a1 + 256);
  if (!v4)
  {
    return 0;
  }

  v7 = std::__shared_weak_count::lock(v4);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = *(a1 + 248);
  if (v9 && (v10 = SipMessage::header<SipMinSEHeader>(*a2)) != 0 && (v11 = v10[26], v11 > *(a1 + 60)))
  {
    *(a1 + 60) = v11;
    v12 = (*(*v9 + 64))(v9);
    (*(*v9 + 16))(v9, v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "received 422 response to ", 25);
    *(v12 + 17) = 0;
    v13 = *(*a3 + 264);
    v14 = *(*a3 + 272);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v15 = (*(*v13 + 120))(v13);
    (*(*v12 + 32))(v12, v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), " request in confirmed session.  Re-sending with Min-SE = ", 57);
    *(v12 + 17) = 0;
    MEMORY[0x1E6923350](*(v12 + 8), *(a1 + 60));
    *(v12 + 17) = 0;
    (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v12 + 17) = 0;
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  return v16;
}

void sub_1E4F99FFC(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

uint64_t SipSessionTimer::validateIncomingRequestAndUpdateResponse(uint64_t a1, uint64_t *a2, SipMessage **a3)
{
  v4 = *(a1 + 256);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 248);
      if (!v9)
      {
        goto LABEL_63;
      }

      v10 = *a3;
      std::string::basic_string[abi:ne200100]<0>(&__p, "timer");
      SipMessage::addSupportedOption(v10, &__p.__r_.__value_.__l.__data_);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v11 = *a2;
      std::string::basic_string[abi:ne200100]<0>(&__p, "timer");
      v12 = SipMessage::supportsOption(v11, &__p.__r_.__value_.__l.__data_);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (!v12)
      {
        *(a1 + 264) = 1;
      }

      v13 = *(a1 + 60);
      v14 = SipMessage::header<SipMinSEHeader>(*a2);
      if (v14)
      {
        v15 = v14[26];
        if (v15 <= v13)
        {
          v13 = v13;
        }

        else
        {
          v13 = v15;
        }
      }

      v16 = SipMessage::header<SipSessionExpiresHeader>(*a2);
      if (v16)
      {
        if (v16[26] < v13)
        {
          v17 = (v9->__on_zero_shared_weak)(v9);
          (v9->__on_zero_shared)(v9, v17);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "proposed SessionExpires is less than minimum of ", 48);
          *(v17 + 17) = 0;
          MEMORY[0x1E6923350](*(v17 + 8), v13);
          *(v17 + 17) = 0;
          (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v17 + 17) = 0;
          v18 = *a3;
          std::string::basic_string[abi:ne200100]<0>(&__p, "Interval Too Small");
          *(v18 + 32) = 422;
          std::string::operator=((v18 + 136), &__p);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v19 = SipMessage::header<SipMinSEHeader>(*a3);
          v20 = 0;
          *(v19 + 26) = v13;
          goto LABEL_64;
        }

        v21 = (*(*v16 + 32))(v16);
        SipMessage::addHeader(*a3, v21, 0);
      }

      else
      {
        if (!*(a1 + 56))
        {
          goto LABEL_63;
        }

        v21 = SipMessage::header<SipSessionExpiresHeader>(*a3);
        *(v21 + 26) = *(a1 + 56);
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "refresher");
      v22 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>((v21 + 9), &__p.__r_.__value_.__l.__data_);
      if (v21 + 10 == v22)
      {
        v23 = &ims::kEmptyString;
      }

      else
      {
        v23 = (v22 + 56);
      }

      v24 = *(v23 + 23);
      v25 = *(v23 + 1);
      if ((v24 & 0x80u) == 0)
      {
        v26 = v24;
      }

      else
      {
        v26 = v25;
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if (!v26)
        {
          goto LABEL_33;
        }
      }

      else if (!v26)
      {
LABEL_33:
        v46 = 0;
        v47 = 0;
        SipSessionInterface::stack(v9, &v46);
        if (v46 && (v27 = SipStack::prefs(v46), ImsPrefs::UseUacAsRefresher(v27)))
        {
          v28 = (*(**a2 + 120))();
          v29 = *(v28 + 23);
          v30 = v29;
          if ((v29 & 0x80u) != 0)
          {
            v29 = *(v28 + 8);
          }

          if (v29 == 6 && (v30 >= 0 ? (v31 = v28) : (v31 = *v28), (v32 = *v31, v33 = *(v31 + 4), v32 == *"INVITE") ? (v34 = v33 == *"TE") : (v34 = 0), v34))
          {
            v44 = *a2;
            std::string::basic_string[abi:ne200100]<0>(&__p, "timer");
            v45 = SipMessage::supportsOption(v44, &__p.__r_.__value_.__l.__data_);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            std::string::basic_string[abi:ne200100]<0>(&__p, "refresher");
            if (v45)
            {
              SipParameterMap::setParameter((v21 + 8), &__p.__r_.__value_.__l.__data_, &SipSessionTimer::kRoleUAC);
            }

            else
            {
              SipParameterMap::setParameter((v21 + 8), &__p.__r_.__value_.__l.__data_, &SipSessionTimer::kRoleUAS);
            }
          }

          else
          {
            std::string::basic_string[abi:ne200100]<0>(&__p, "refresher");
            if (*(a1 + 265))
            {
              v35 = &SipSessionTimer::kRoleUAS;
            }

            else
            {
              v35 = &SipSessionTimer::kRoleUAC;
            }

            SipParameterMap::setParameter((v21 + 8), &__p.__r_.__value_.__l.__data_, v35);
          }
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(&__p, "refresher");
          v36 = *(a1 + 265);
          p_p = &__p;
          v37 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v21 + 9), &__p.__r_.__value_.__l.__data_);
          if (v36)
          {
            v38 = &SipSessionTimer::kRoleUAS;
          }

          else
          {
            v38 = &SipSessionTimer::kRoleUAC;
          }

          std::string::operator=((v37 + 56), v38);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v47)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v47);
        }
      }

      v39 = *a2;
      std::string::basic_string[abi:ne200100]<0>(&__p, "timer");
      v40 = SipMessage::supportsOption(v39, &__p.__r_.__value_.__l.__data_);
      v41 = v40;
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        if (!v40)
        {
          goto LABEL_63;
        }

LABEL_61:
        v42 = *a3;
        std::string::basic_string[abi:ne200100]<0>(&__p, "timer");
        SipMessage::addRequiredOption(v42, &__p.__r_.__value_.__l.__data_);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        goto LABEL_63;
      }

      operator delete(__p.__r_.__value_.__l.__data_);
      if (v41)
      {
        goto LABEL_61;
      }

LABEL_63:
      v20 = 1;
LABEL_64:
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      return v20;
    }
  }

  return 1;
}

void sub_1E4F9A548(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  _Unwind_Resume(a1);
}

void *SipMessage::header<SipSessionExpiresHeader>(uint64_t a1)
{
  v1 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>((a1 + 72), "Session-Expires");
  if (!v1)
  {
    return 0;
  }

  v2 = v1[5];
  if (!v2)
  {
    return 0;
  }

  v3 = **v2;
}

const void **SipMessage::header<SipMinSEHeader>(SipMessage *a1)
{
  result = SipMessage::headerWithName(a1, "Min-SE", 1);
  if (result)
  {
    v2 = **result;
  }

  return result;
}

const void **SipMessage::header<SipSessionExpiresHeader>(SipMessage *a1)
{
  result = SipMessage::headerWithName(a1, "Session-Expires", 1);
  if (result)
  {
    v2 = **result;
  }

  return result;
}

void SipSessionTimer::updateFromOutgoingResponse(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  v3[0] = *a2;
  v3[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipSessionTimer::updateFromResponse(a1, v3, &SipSessionTimer::kRoleUAS);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void sub_1E4F9A7F0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void SipSessionTimer::updateFromResponse(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 256);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 248);
      if (v9)
      {
        SipTimerContainer::cancelAllTimers((a1 + 80));
        v10 = *(a1 + 24);
        if (!v10 || (v11 = *(a1 + 16), (v12 = std::__shared_weak_count::lock(v10)) == 0))
        {
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

        v13 = v12;
        p_shared_weak_owners = &v12->__shared_weak_owners_;
        atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
        v15 = SipMessage::header<SipSessionExpiresHeader>(*a2);
        v16 = v15;
        if (v15)
        {
          *(a1 + 56) = v15[26];
          *(a1 + 72) = time(0) + *(a1 + 56);
          v17 = (*(*v9 + 64))(v9);
          (*(*v9 + 16))(v9, v17);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "next session refresh due at ", 28);
          *(v17 + 17) = 0;
          ims::formatTimeAndIntervalFromNow(*(a1 + 72), v17, v18);
          (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v17 + 17) = 0;
          memset(&v48, 0, sizeof(v48));
          std::string::basic_string[abi:ne200100]<0>(__p, "refresher");
          v19 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>((v16 + 18), __p);
          if (v16 + 20 == v19)
          {
            v20 = &ims::kEmptyString;
          }

          else
          {
            v20 = (v19 + 56);
          }

          if (*(v20 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&v48, *v20, *(v20 + 1));
          }

          else
          {
            v48 = *v20;
          }

          if (v47 < 0)
          {
            operator delete(__p[0]);
          }

          if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v48.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v48.__r_.__value_.__l.__size_;
          }

          v33 = *(a3 + 23);
          v34 = v33;
          if ((v33 & 0x80u) != 0)
          {
            v33 = *(a3 + 8);
          }

          if (size == v33)
          {
            if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v35 = &v48;
            }

            else
            {
              v35 = v48.__r_.__value_.__r.__words[0];
            }

            v36 = *a3;
            if (v34 >= 0)
            {
              v37 = a3;
            }

            else
            {
              v37 = *a3;
            }

            if (!memcmp(v35, v37, size))
            {
              v45 = (*(*v9 + 64))(v9);
              (*(*v9 + 16))(v9, v45);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v45 + 8), "I'm responsible for session refresh", 35);
              *(v45 + 17) = 0;
              (*(*v45 + 64))(v45, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              *(v45 + 17) = 0;
              atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              v51 = 0;
              operator new();
            }
          }

          v38 = (*(*v9 + 64))(v9);
          (*(*v9 + 16))(v9, v38);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v38 + 8), "the other guy is responsible for session refresh", 48);
          *(v38 + 17) = 0;
          (*(*v38 + 64))(v38, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v38 + 17) = 0;
          v39 = *(a1 + 56);
          v40 = *(a1 + 64);
          v41 = v9[221];
          atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          v50 = 0;
          operator new();
        }

        v21 = *(a3 + 23);
        v22 = v21;
        if ((v21 & 0x80u) != 0)
        {
          v21 = *(a3 + 8);
        }

        if (v21 == 3)
        {
          v23 = v22 >= 0 ? a3 : *a3;
          v24 = *v23;
          v25 = *(v23 + 2);
          v26 = v24 == 24949 && v25 == 99;
          if (v26 && *(a1 + 56))
          {
            *&v48.__r_.__value_.__l.__data_ = 0uLL;
            SipSessionInterface::stack(v9, &v48);
            if (v48.__r_.__value_.__r.__words[0])
            {
              v27 = SipStack::prefs(v48.__r_.__value_.__l.__data_);
              if (!ImsPrefs::DoNotRefreshSessionIfNoSessionExpiresHeaderFromRemote(v27))
              {
                v28 = (*(*v9 + 64))(v9);
                (*(*v9 + 16))(v9, v28);
                v29 = ImsOutStream::operator<<(v28, "No Session-Expires in response, but we sent one in our request");
                (*(*v29 + 64))(v29, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                v29[17] = 0;
                v30 = (*(*v9 + 64))(v9);
                (*(*v9 + 16))(v9, v30);
                v31 = ImsOutStream::operator<<(v30, "I'm responsible for session refresh");
                (*(*v31 + 64))(v31, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                v31[17] = 0;
                atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                v49 = 0;
                operator new();
              }
            }

            if (v48.__r_.__value_.__l.__size_)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v48.__r_.__value_.__l.__size_);
            }
          }
        }

        v42 = SipMessage::header<SipMinSEHeader>(*a2);
        if (v42)
        {
          v43 = v42[26];
          if (v43 > *(a1 + 60))
          {
            *(a1 + 60) = v43;
          }
        }

        std::__shared_weak_count::__release_weak(v13);
        std::__shared_weak_count::__release_weak(v13);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  v44 = *MEMORY[0x1E69E9840];
}

void sub_1E4F9AF90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, std::__shared_weak_count *a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  std::__function::__value_func<void ()(std::string &)>::~__value_func[abi:ne200100](&a22);
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  std::__shared_weak_count::__release_weak(v31);
  std::__shared_weak_count::__release_weak(v31);
  std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  _Unwind_Resume(a1);
}

void SipSessionTimer::updateFromIncomingResponse(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "timer");
  v5 = SipMessage::supportsOption(v4, __p);
  v6 = v5;
  if ((v11 & 0x80000000) == 0)
  {
    if (v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  operator delete(__p[0]);
  if (!v6)
  {
LABEL_3:
    *(a1 + 264) = 1;
  }

LABEL_4:
  v7 = *a2;
  v8 = a2[1];
  v9[0] = v7;
  v9[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipSessionTimer::updateFromResponse(a1, v9, &SipSessionTimer::kRoleUAC);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void sub_1E4F9B114(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  _Unwind_Resume(exception_object);
}

void SipSessionTimer::addHeadersToRequest(uint64_t a1, SipMessage **a2)
{
  v3 = *(a1 + 256);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (!*(a1 + 248))
      {
LABEL_22:
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        return;
      }

      v7 = *a2;
      std::string::basic_string[abi:ne200100]<0>(__p, "timer");
      SipMessage::addSupportedOption(v7, __p);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }

      v8 = *(a1 + 60);
      if (v8 > *(a1 + 64))
      {
        v9 = SipMessage::header<SipMinSEHeader>(*a2);
        v10 = *(v9 + 26);
        if (v10 >= v8)
        {
          goto LABEL_10;
        }

        *(v9 + 26) = v8;
      }

      v10 = v8;
LABEL_10:
      v11 = *(a1 + 56);
      if (v11)
      {
        if (v11 <= v10)
        {
          v12 = v10;
        }

        else
        {
          v12 = *(a1 + 56);
        }

        v13 = SipMessage::header<SipSessionExpiresHeader>(*a2);
        v14 = v13;
        if (*(v13 + 26) - 1 >= v12)
        {
          *(v13 + 26) = v12;
        }

        if (*(a1 + 264) == 1)
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "refresher");
          v15 = *(a1 + 265);
          v20 = __p;
          v16 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v14 + 9), __p);
          if (v15)
          {
            v17 = &SipSessionTimer::kRoleUAC;
          }

          else
          {
            v17 = &SipSessionTimer::kRoleUAS;
          }

          std::string::operator=((v16 + 56), v17);
          if (v19 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      goto LABEL_22;
    }
  }
}

void SipSessionTimer::~SipSessionTimer(SipSessionTimer *this)
{
  *this = &unk_1F5EE3630;
  *(this + 1) = &unk_1F5EE3668;
  v2 = *(this + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  SipTimerContainer::~SipTimerContainer((this + 80));
  MEMORY[0x1E69225A0](this + 48);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 2);
}

{
  *this = &unk_1F5EE3630;
  *(this + 1) = &unk_1F5EE3668;
  v2 = *(this + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  SipTimerContainer::~SipTimerContainer((this + 80));
  MEMORY[0x1E69225A0](this + 48);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 2);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toSipSessionTimer::~SipSessionTimer(SipSessionTimer *this)
{
  *(this - 1) = &unk_1F5EE3630;
  *this = &unk_1F5EE3668;
  v2 = *(this + 31);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  SipTimerContainer::~SipTimerContainer((this + 72));
  MEMORY[0x1E69225A0](this + 40);

  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 1);
}

{
  *(this - 1) = &unk_1F5EE3630;
  *this = &unk_1F5EE3668;
  v2 = *(this + 31);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  SipTimerContainer::~SipTimerContainer((this + 72));
  MEMORY[0x1E69225A0](this + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 1);

  JUMPOUT(0x1E69235B0);
}

uint64_t ims::SharedLoggable<SipSessionTimer>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));
  return a1;
}

void ims::SharedLoggable<SipSessionTimer>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));

  JUMPOUT(0x1E69235B0);
}

void *std::__function::__func<SipSessionTimer::updateFromResponse(std::shared_ptr<SipResponse const>,std::string const&)::$_0,std::allocator<SipSessionTimer::updateFromResponse(std::shared_ptr<SipResponse const>,std::string const&)::$_0>,void ()(std::string&)>::~__func(void *a1)
{
  *a1 = &unk_1F5EE3788;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipSessionTimer::updateFromResponse(std::shared_ptr<SipResponse const>,std::string const&)::$_0,std::allocator<SipSessionTimer::updateFromResponse(std::shared_ptr<SipResponse const>,std::string const&)::$_0>,void ()(std::string&)>::~__func(void *a1)
{
  *a1 = &unk_1F5EE3788;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipSessionTimer::updateFromResponse(std::shared_ptr<SipResponse const>,std::string const&)::$_0,std::allocator<SipSessionTimer::updateFromResponse(std::shared_ptr<SipResponse const>,std::string const&)::$_0>,void ()(std::string&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5EE3788;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipSessionTimer::updateFromResponse(std::shared_ptr<SipResponse const>,std::string const&)::$_0,std::allocator<SipSessionTimer::updateFromResponse(std::shared_ptr<SipResponse const>,std::string const&)::$_0>,void ()(std::string&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipSessionTimer::updateFromResponse(std::shared_ptr<SipResponse const>,std::string const&)::$_0,std::allocator<SipSessionTimer::updateFromResponse(std::shared_ptr<SipResponse const>,std::string const&)::$_0>,void ()(std::string&)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipSessionTimer::updateFromResponse(std::shared_ptr<SipResponse const>,std::string const&)::$_0,std::allocator<SipSessionTimer::updateFromResponse(std::shared_ptr<SipResponse const>,std::string const&)::$_0>,void ()(std::string&)>::operator()(void *a1, uint64_t a2)
{
  v3 = a1[3];
  if (v3)
  {
    v5 = a1[1];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[2])
      {
        (*(*v5 + 32))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<SipSessionTimer::updateFromResponse(std::shared_ptr<SipResponse const>,std::string const&)::$_0,std::allocator<SipSessionTimer::updateFromResponse(std::shared_ptr<SipResponse const>,std::string const&)::$_0>,void ()(std::string&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void NetworkInterfaceMonitor::_callback(NetworkInterfaceMonitor *this, const __SCDynamicStore *a2, const __CFArray *a3, void *a4)
{
  if (a3)
  {
    *(a3 + 8) = 1;
    if (!NetworkInterfaceMonotorManager::_instance)
    {
      operator new();
    }

    v4 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(NetworkInterfaceMonotorManager::_instance, a3 + 2);
    if (v4)
    {
      v5 = v4;
      v7 = v4[5];
      v6 = v4[6];
      v8 = v5[7];
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v9 = v5[9];
      if (v7)
      {
        v10 = v9 == 0;
      }

      else
      {
        v10 = 1;
      }

      if (!v10 && v6 != 0)
      {
        v18[0] = (*(*v6 + 40))(v6, v7 + 16);
        (*(*v9 + 16))(v9, v7 + 16, v18);
        v12 = v18[0];
        v18[0] = 0;
        if (v12)
        {
          (*(*v12 + 8))(v12);
        }
      }

      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v18, "net");
    v14[0] = 0;
    v17 = 0;
    v13 = ims::error(v18, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "No NetworkInterfaceMonitor found", 32);
    *(v13 + 17) = 0;
    (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v13 + 17) = 0;
    if (v17 == 1 && v16 < 0)
    {
      operator delete(__p);
    }

    if (v19 < 0)
    {
      operator delete(v18[0]);
    }
  }
}

void sub_1E4F9BA70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a19)
  {
    (*(*a19 + 8))(a19);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(exception_object);
}

void NetworkInterfaceMonitor::~NetworkInterfaceMonitor(void **this)
{
  NetworkInterfaceMonitor::stopMonitoring(this);
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

void NetworkInterfaceMonitor::stopMonitoring(NetworkInterfaceMonitor *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    SCDynamicStoreSetDispatchQueue(v2, 0);
    CFRelease(*(this + 1));
    *(this + 1) = 0;
  }
}

uint64_t NetworkInterfaceMonitor::startMonitoring(NetworkInterfaceMonitor *this, std::string *__str, char a3)
{
  if (*(this + 1))
  {
    NetworkInterfaceMonitor::stopMonitoring(this);
  }

  std::string::operator=((this + 16), __str);
  memset(&context, 0, sizeof(context));
  context.info = *this;
  v6 = SCDynamicStoreCreate(0, @"ims", NetworkInterfaceMonitor::_callback, &context);
  *(this + 1) = v6;
  if (v6)
  {
    v39 = 0;
    v40 = 0;
    v41 = 0;
    std::operator+<char>();
    v33 = &unk_1F5EBE6A8;
    keys = 0;
    if ((a3 & 1) == 0)
    {
      goto LABEL_11;
    }

    if (v41 >= 0)
    {
      v7 = HIBYTE(v41);
    }

    else
    {
      v7 = v40;
    }

    v30 = 0;
    v31 = 0;
    __p = 0;
    p_p = &__p;
    std::string::basic_string[abi:ne200100](&__p, v7 + 5);
    if (v31 < 0)
    {
      p_p = __p;
    }

    strcpy(&p_p[v7], "/IPv4");
    ims::CFString::CFString(v32, &__p);
    ims::CFMutableArray::appendValue(&v33, v32);
    ims::CFType::~CFType(v32);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(__p);
      if ((a3 & 2) == 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
LABEL_11:
      if ((a3 & 2) == 0)
      {
        goto LABEL_31;
      }
    }

    if (v41 >= 0)
    {
      v9 = HIBYTE(v41);
    }

    else
    {
      v9 = v40;
    }

    v30 = 0;
    v31 = 0;
    __p = 0;
    v10 = &__p;
    std::string::basic_string[abi:ne200100](&__p, v9 + 5);
    if (v31 < 0)
    {
      v10 = __p;
    }

    if (v9)
    {
      if (v41 >= 0)
      {
        v11 = &v39;
      }

      else
      {
        v11 = v39;
      }

      memmove(v10, v11, v9);
    }

    strcpy(v10 + v9, "/IPv6");
    ims::CFString::CFString(v32, &__p);
    ims::CFMutableArray::appendValue(&v33, v32);
    ims::CFType::~CFType(v32);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(__p);
    }

LABEL_31:
    if (SCDynamicStoreSetNotificationKeys(*(this + 1), keys, 0))
    {
      v15 = *(this + 1);
      ims::getQueue(&__p);
      v16 = __p;
      v17 = SCDynamicStoreSetDispatchQueue(v15, __p);
      if (v16)
      {
        dispatch_release(v16);
      }

      if (v17)
      {
        v14 = 1;
        goto LABEL_48;
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "net");
      v21[0] = 0;
      v24 = 0;
      v19 = ims::error(&__p, v21);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "NetworkInterfaceMonitor: unable to set dispatch queue for dynamic store", 71);
      *(v19 + 17) = 0;
      (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v19 + 17) = 0;
      if (v24 == 1 && v23 < 0)
      {
        operator delete(v22);
      }

      if (SHIBYTE(v31) < 0)
      {
        operator delete(__p);
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "net");
      v25[0] = 0;
      v28 = 0;
      v18 = ims::error(&__p, v25);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "NetworkInterfaceMonitor: SetNotificationKeys failed", 51);
      *(v18 + 17) = 0;
      (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v18 + 17) = 0;
      if (v28 == 1 && v27 < 0)
      {
        operator delete(v26);
      }

      if (SHIBYTE(v31) < 0)
      {
        operator delete(__p);
      }

      NetworkInterfaceMonitor::stopMonitoring(this);
    }

    v14 = 0;
LABEL_48:
    ims::CFType::~CFType(&v33);
    if (SHIBYTE(v41) < 0)
    {
      operator delete(v39);
    }

    return v14;
  }

  v12 = std::string::basic_string[abi:ne200100]<0>(&v39, "net");
  v35[0] = 0;
  v38 = 0;
  v13 = ims::error(v12, v35);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "NetworkInterfaceMonitor: couldn't create dynamic store", 54);
  *(v13 + 17) = 0;
  (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v13 + 17) = 0;
  if (v38 == 1 && v37 < 0)
  {
    operator delete(v36);
  }

  if (SHIBYTE(v41) < 0)
  {
    operator delete(v39);
  }

  return 0;
}

void sub_1E4F9C024(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36, uint64_t a37, char a38)
{
  ims::CFType::~CFType(&a38);
  if (*(v38 - 97) < 0)
  {
    operator delete(*(v38 - 120));
  }

  _Unwind_Resume(a1);
}

void sub_1E4F9C0E0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, char a40)
{
  if (a40 == 1 && a38 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1E4F9C0C8);
}

uint64_t NetworkInterfaceMonotorManager::startMonitoring(void *a1, const void **a2, std::string *a3, char a4)
{
  v6 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(a1, a2);
  if (v6)
  {
    v7 = v6[5];
    if (v7)
    {
      NetworkInterfaceMonitor::startMonitoring(v7, a3, a4);
    }
  }

  return 0;
}

void NetworkInterfaceMonotorManager::stopMonitoring(void *a1, const void **a2)
{
  v2 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(a1, a2);
  if (v2)
  {
    v3 = v2[5];
    if (v3)
    {

      NetworkInterfaceMonitor::stopMonitoring(v3);
    }
  }
}

const void **NetworkInterfaceMonotorManager::releaseMonitor(void *a1, const void **a2)
{
  result = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(a1, a2);
  if (result)
  {
    v4 = result;
    v6 = result + 5;
    v5 = result[5];
    if (v5)
    {
      NetworkInterfaceMonitor::stopMonitoring(v5);
      if (*v6)
      {
        NetworkInterfaceMonitor::~NetworkInterfaceMonitor(*v6);
        MEMORY[0x1E69235B0]();
      }
    }

    v4[9] = 0;
    *v6 = 0;
    v6[1] = 0;
    v7 = v4[7];
    v4[7] = 0;
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    v8 = v4[8];
    if (v8)
    {
      if (v8[8])
      {
        (*(*v8 + 8))(v4[8]);
      }

      else
      {
        ims::getQueue(queue);
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 0x40000000;
        v10[2] = ___ZN30NetworkInterfaceMonotorManager14releaseMonitorERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke;
        v10[3] = &__block_descriptor_tmp_10_0;
        v10[4] = v8;
        v9 = queue[0];
        dispatch_async(queue[0], v10);
        if (v9)
        {
          dispatch_release(v9);
        }
      }
    }

    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<SipDialog>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipDialog>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipDialog>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<SipDialog>>>>::remove(a1, v4, queue);
    return std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,NetworkInterfaceMonotorManager::NetworkInterfaceWatcher>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,NetworkInterfaceMonotorManager::NetworkInterfaceWatcher>,void *>>>>::~unique_ptr[abi:ne200100](queue);
  }

  return result;
}

uint64_t ___ZN30NetworkInterfaceMonotorManager14releaseMonitorERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void NetworkInterfaceMonotorManager::createMonitor(std::string *a1@<X8>)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  ImsUuid::generate(&__p);
  if (SHIBYTE(v4) < 0)
  {
    std::string::__init_copy_ctor_external(a1, __p_8[0], __p_8[1]);
    __p = &unk_1F5EBEE78;
    if (SHIBYTE(v4) < 0)
    {
      operator delete(__p_8[0]);
    }
  }

  else
  {
    *&a1->__r_.__value_.__l.__data_ = *__p_8;
    a1->__r_.__value_.__r.__words[2] = v4;
  }

  operator new();
}

void sub_1E4F9C8CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (*(v21 + 23) < 0)
  {
    operator delete(*v21);
  }

  _Unwind_Resume(exception_object);
}

void NetworkIntefaceManagerCallback::~NetworkIntefaceManagerCallback(void **this)
{
  *this = &unk_1F5EE3808;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

{
  *this = &unk_1F5EE3808;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::pair<std::string,NetworkInterfaceMonotorManager::NetworkInterfaceWatcher>::~pair(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,NetworkInterfaceMonotorManager::NetworkInterfaceWatcher>,0>(uint64_t a1)
{
  v2 = *(a1 + 40);
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

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,NetworkInterfaceMonotorManager::NetworkInterfaceWatcher>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,NetworkInterfaceMonotorManager::NetworkInterfaceWatcher>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,NetworkInterfaceMonotorManager::NetworkInterfaceWatcher>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t SipUriHeader::SipUriHeader(uint64_t a1, const std::string *a2)
{
  v3 = SipHeader::SipHeader(a1, a2);
  *(v3 + 88) = 0;
  *(v3 + 80) = 0;
  *(v3 + 64) = &unk_1F5EBEF50;
  *(v3 + 72) = v3 + 80;
  *(v3 + 96) = 256;
  *v3 = &unk_1F5EE3838;
  SipUri::SipUri((v3 + 104));
  return a1;
}

void SipUriHeader::SipUriHeader(SipUriHeader *this, const SipUriHeader *a2)
{
  SipParameterHeader::SipParameterHeader(this, a2);
  *v3 = &unk_1F5EE3838;
  SipUri::SipUri((v3 + 13), (a2 + 104));
}

__int128 *SipUriHeader::tag(SipUriHeader *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "tag");
  v2 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(this + 72, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if ((this + 80) == v2)
  {
    return &ims::kEmptyString;
  }

  else
  {
    return (v2 + 56);
  }
}

void sub_1E4F9CCC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipUriHeader::setTag(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  if (v3)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "tag");
    v8 = __p;
    v5 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 72, __p);
    std::string::operator=((v5 + 56), a2);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "tag");
    SipParameterMap::clearParameter(a1 + 64, __p);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E4F9CD9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string::size_type SipUriHeader::findUriHeaderParameterMarker(uint64_t **a1)
{
  NotQuoted = ims::findNotQuoted(a1, 0x3Cu);
  result = ims::findNotQuoted(a1, 0x3Bu);
  if (NotQuoted != -1 && result >= NotQuoted)
  {
    v5 = std::string::find(a1, 62, NotQuoted);
    if (v5 == -1)
    {
      v6 = std::string::basic_string[abi:ne200100]<0>(&v12, "sip.decode");
      v8[0] = 0;
      v11 = 0;
      v7 = ims::error(v6, v8);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "No matching close bracket in URI header: ", 41);
      *(v7 + 17) = 0;
      (*(*v7 + 32))(v7, a1);
      (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v7 + 17) = 0;
      if (v11 == 1 && v10 < 0)
      {
        operator delete(__p);
      }

      if (v13 < 0)
      {
        operator delete(v12);
      }

      return ims::findNotQuoted(a1, 0x3Bu);
    }

    else
    {

      return std::string::find(a1, 59, v5);
    }
  }

  return result;
}

void sub_1E4F9CF30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  if (a18 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v18 - 17) < 0)
  {
    operator delete(*(v18 - 40));
  }

  _Unwind_Resume(exception_object);
}

void SipUriHeader::~SipUriHeader(SipUriHeader *this)
{
  *this = &unk_1F5EE3838;
  SipUri::~SipUri((this + 104));
  *this = &unk_1F5EEE300;
  *(this + 8) = &unk_1F5EBEF50;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 72, *(this + 10));

  SipHeader::~SipHeader(this);
}

{
  *this = &unk_1F5EE3838;
  SipUri::~SipUri((this + 104));
  *this = &unk_1F5EEE300;
  *(this + 8) = &unk_1F5EBEF50;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 72, *(this + 10));
  SipHeader::~SipHeader(this);

  JUMPOUT(0x1E69235B0);
}

void BambiMessageDelegate::handleIncomingMessage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23[0] = 0;
  v23[1] = 0;
  v24 = 0;
  if (a7)
  {
    (*(*a7 + 56))(a7, v23);
    v14 = (*(*a7 + 40))(a7);
    (*(*a1 + 24))(a1, a2, a3, a4, a5, a6, v23, v14);
    if ((SHIBYTE(v24) & 0x80000000) == 0)
    {
      return;
    }

    v15 = v23[0];
    goto LABEL_9;
  }

  std::string::basic_string[abi:ne200100]<0>(v21, "sip.msg");
  v17[0] = 0;
  v20 = 0;
  v16 = ims::error(v21, v17);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "Hey, don't call handleIncomingMessage with a NULL body!", 55);
  *(v16 + 17) = 0;
  (*(*v16 + 64))(v16, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v16 + 17) = 0;
  if (v20 == 1 && v19 < 0)
  {
    operator delete(__p);
  }

  if (v22 < 0)
  {
    v15 = v21[0];
LABEL_9:
    operator delete(v15);
  }
}

void SipMessageManager::OutgoingMessage::~OutgoingMessage(SipMessageManager::OutgoingMessage *this)
{
  if (*(this + 22))
  {
    ImsPowerAssertion::deinitialize(this + 64);
  }

  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(v2 + 344);
    *(v2 + 336) = 0;
    *(v2 + 344) = 0;
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  ImsPowerAssertion::~ImsPowerAssertion(this + 8);
  v4 = *(this + 6);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 1);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void SipMessageManager::OutgoingMessage::send(SipMessage **this)
{
  if (this[3])
  {
    v2 = *(*this + 27);
    if (v2)
    {
      v3 = *(*this + 26);
      atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v4 = std::__shared_weak_count::lock(v2);
      std::__shared_weak_count::__release_weak(v2);
      if (v4)
      {
        if (v3)
        {
          v5 = this[3];
          v6 = *(*this + 60);
          *(*this + 60) = v6 + 1;
          v7 = (*(*v5 + 120))(v5);
          v8 = SipMessage::header<SipCSeqHeader>(v5, 1);
          *(v8 + 15) = v6;
          std::string::operator=((v8 + 8), v7);
          v9 = *(v3 + 264);
          v10 = *(v3 + 272);
          if (v10)
          {
            atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v11 = this[4];
          v17 = this[3];
          v18 = v11;
          if (v11)
          {
            atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v12 = this[1];
          if (*this)
          {
            v13 = *this + 8;
          }

          v16 = this[1];
          if (v12)
          {
            atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
          }

          SipTransactionLayer::sendRequest(v9, &v17, &v19);
          v14 = v19;
          v19 = 0uLL;
          v15 = this[6];
          *(this + 5) = v14;
          if (v15)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v15);
            if (*(&v19 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v19 + 1));
            }
          }

          if (v16)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v16);
          }

          if (v18)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v18);
          }

          if (v10)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v10);
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }
    }
  }
}

void sub_1E4F9D53C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  _Unwind_Resume(a1);
}

void sub_1E4F9DB10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (v40)
  {
    std::__shared_weak_count::__release_weak(v40);
  }

  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  _Unwind_Resume(a1);
}

void sub_1E4F9DBF8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31)
{
  if (a31 == 1 && a29 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  if (a15 < 0)
  {
    operator delete(a10);
  }

  JUMPOUT(0x1E4F9DBD4);
}

void sub_1E4F9DC3C()
{
  if (!v0)
  {
    JUMPOUT(0x1E4F9DBE4);
  }

  JUMPOUT(0x1E4F9DBD4);
}

void SipMessageManager::deinitialize(SipMessageManager *this)
{
  v3 = 0u;
  v4 = 0u;
  v5 = 0u;
  v6 = 0u;
  v1[0] = &unk_1F5EBDEF8;
  v1[1] = &_bambiDomain;
  v2 = 1073741827;
  SipMessageManager::clearQueueWithResult(this, v1);
  ImsResult::~ImsResult(v1);
}

void sub_1E4F9DCBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ImsResult::~ImsResult(va);
  _Unwind_Resume(a1);
}

void *SipMessageManager::clearQueueWithResult(SipMessageManager *this, const ImsResult *a2)
{
  v4 = *(this + 37);
  if (v4)
  {
    SipMessageManager::generateError(this, *(v4 + 16), a2);
    v5 = *(this + 37);
    if (v5)
    {
      SipMessageManager::OutgoingMessage::~OutgoingMessage(v5);
      MEMORY[0x1E69235B0]();
    }

    *(this + 37) = 0;
  }

  for (i = *(this + 32); i != (this + 248); i = i[1])
  {
    v7 = i[2];
    SipMessageManager::generateError(this, v7[4], a2);
    SipMessageManager::OutgoingMessage::~OutgoingMessage(v7);
    MEMORY[0x1E69235B0]();
  }

  return std::__list_imp<unsigned long long>::clear(this + 31);
}

void SipMessageManager::endAllMessages(std::__shared_weak_count **this)
{
  SipMessageManager::deinitialize(this);
  v2 = this[27];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = this[26];
      if (v5)
      {
        v7 = v5[11].__vftable;
        shared_owners = v5[11].__shared_owners_;
        if (shared_owners)
        {
          atomic_fetch_add_explicit(&shared_owners->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v45[0] = &unk_1F5EBDEF8;
        v45[1] = &_bambiDomain;
        v46 = 1073741827;
        v58 = 0;
        v56 = 0u;
        v57 = 0u;
        v44 = shared_owners;
        std::unordered_map<std::string,std::shared_ptr<SipClientTransaction>>::unordered_map(&v56, &v7[7]);
        v55 = 0;
        v53 = 0u;
        v54 = 0u;
        std::unordered_map<std::string,std::shared_ptr<SipServerTransaction>>::unordered_map(&v53, &v7[8]);
        v8 = v57;
        if (v57)
        {
          p_on_zero_shared_weak = &v7->__on_zero_shared_weak;
          do
          {
            v11 = v8[5];
            v10 = v8[6];
            if (v10)
            {
              atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
              atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v11)
            {
              v12 = v11[33];
              v13 = v11[34];
              if (v13)
              {
                atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v14 = (*(*v12 + 120))(v12);
              v15 = *(v14 + 23);
              v16 = v15;
              if ((v15 & 0x80u) != 0)
              {
                v15 = *(v14 + 8);
              }

              if (v15 == 7)
              {
                if (v16 >= 0)
                {
                  v17 = v14;
                }

                else
                {
                  v17 = *v14;
                }

                v18 = *v17;
                v19 = *(v17 + 3);
                v21 = v18 == *"MESSAGE" && v19 == *"SAGE";
                if (!v13)
                {
                  goto LABEL_30;
                }

LABEL_29:
                std::__shared_weak_count::__release_shared[abi:ne200100](v13);
                goto LABEL_30;
              }

              v21 = 0;
              if (v13)
              {
                goto LABEL_29;
              }
            }

            else
            {
              v21 = 0;
            }

LABEL_30:
            if (v10)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v10);
            }

            if (v21)
            {
              v22 = (*(*v11 + 136))(v11);
              v23 = *(*p_on_zero_shared_weak + 8);
              if (v22)
              {
                v24 = v23(&v7->__on_zero_shared_weak);
                (*(*p_on_zero_shared_weak + 2))(&v7->__on_zero_shared_weak, v24);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v24 + 8), "forcing termination of completed transaction ", 45);
                *(v24 + 17) = 0;
                (*(*v11 + 144))(__p, v11);
                (*(*v24 + 40))(v24, __p);
                (*(*v24 + 64))(v24, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                *(v24 + 17) = 0;
                if (v52 < 0)
                {
                  operator delete(__p[0]);
                }

                (*(*v11 + 32))(v11, 7);
              }

              else
              {
                v25 = v23(&v7->__on_zero_shared_weak);
                (*(*p_on_zero_shared_weak + 2))(&v7->__on_zero_shared_weak, v25);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), "Error out transaction ", 22);
                *(v25 + 17) = 0;
                (*(*v11 + 144))(__p, v11);
                (*(*v25 + 40))(v25, __p);
                (*(*v25 + 64))(v25, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                *(v25 + 17) = 0;
                if (v52 < 0)
                {
                  operator delete(__p[0]);
                }

                (*(*v11 + 104))(v11, v45);
              }
            }

            if (v10)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v10);
            }

            v8 = *v8;
          }

          while (v8);
        }

        v26 = v54;
        if (v54)
        {
          v27 = &v7->__on_zero_shared_weak;
          do
          {
            v29 = v26[5];
            v28 = v26[6];
            if (v28)
            {
              atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
              atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v29)
            {
              v30 = v29[33];
              v31 = v29[34];
              if (v31)
              {
                atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v32 = (*(*v30 + 120))(v30);
              v33 = *(v32 + 23);
              v34 = v33;
              if ((v33 & 0x80u) != 0)
              {
                v33 = *(v32 + 8);
              }

              if (v33 == 7)
              {
                if (v34 >= 0)
                {
                  v35 = v32;
                }

                else
                {
                  v35 = *v32;
                }

                v36 = *v35;
                v37 = *(v35 + 3);
                v39 = v36 == *"MESSAGE" && v37 == *"SAGE";
                if (!v31)
                {
                  goto LABEL_67;
                }

LABEL_66:
                std::__shared_weak_count::__release_shared[abi:ne200100](v31);
                goto LABEL_67;
              }

              v39 = 0;
              if (v31)
              {
                goto LABEL_66;
              }
            }

            else
            {
              v39 = 0;
            }

LABEL_67:
            if (v28)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v28);
            }

            if (v39)
            {
              v40 = (*(*v29 + 136))(v29);
              v41 = *(*v27 + 8);
              if (v40)
              {
                v42 = v41(v27);
                (*(*v27 + 2))(v27, v42);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v42 + 8), "forcing termination of completed transaction ", 45);
                *(v42 + 17) = 0;
                (*(*v29 + 152))(__p, v29);
                (*(*v42 + 40))(v42, __p);
                (*(*v42 + 64))(v42, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                *(v42 + 17) = 0;
                if (v52 < 0)
                {
                  operator delete(__p[0]);
                }

                (*(*v29 + 32))(v29, 7);
              }

              else
              {
                v43 = v41(v27);
                (*(*v27 + 2))(v27, v43);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v43 + 8), "Error out transaction ", 22);
                *(v43 + 17) = 0;
                (*(*v29 + 152))(__p, v29);
                (*(*v43 + 40))(v43, __p);
                (*(*v43 + 64))(v43, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                *(v43 + 17) = 0;
                if (v52 < 0)
                {
                  operator delete(__p[0]);
                }

                (*(*v29 + 104))(v29, v45);
              }
            }

            if (v28)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v28);
            }

            v26 = *v26;
          }

          while (v26);
        }

        std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>>>::~__hash_table(&v53);
        std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>>>::~__hash_table(&v56);
        ImsResult::~ImsResult(v45);
        if (v44)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v44);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void sub_1E4F9E5C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::__shared_weak_count *a9, std::__shared_weak_count *a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>>>::~__hash_table(v28 - 128);
  ImsResult::~ImsResult(&a11);
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](a9);
  _Unwind_Resume(a1);
}

void SipMessageManager::generateError(SipMessageManager *this, uint64_t a2, const ImsResult *a3)
{
  v4 = *(this + 27);
  if (!v4)
  {
    v7 = 0;
    goto LABEL_19;
  }

  v7 = std::__shared_weak_count::lock(v4);
  if (!v7 || (v8 = *(this + 26)) == 0)
  {
LABEL_19:
    v21 = *(this + 3);
    v20 = this + 24;
    v22 = (*(v21 + 56))(v20);
    (*(*v20 + 16))(v20, v22);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), "No SipStack", 11);
    *(v22 + 17) = 0;
    (*(*v22 + 64))(v22, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v22 + 17) = 0;
    if (!v7)
    {
      return;
    }

    goto LABEL_20;
  }

  v9 = this + 280;
  v10 = *(this + 35);
  if (!v10)
  {
    goto LABEL_12;
  }

  v11 = *(a3 + 4);
  v12 = this + 280;
  do
  {
    v13 = *(v10 + 7);
    v14 = v13 >= v11;
    v15 = v13 < v11;
    if (v14)
    {
      v12 = v10;
    }

    v10 = *&v10[8 * v15];
  }

  while (v10);
  if (v12 == v9 || v11 < *(v12 + 7))
  {
LABEL_12:
    v12 = this + 280;
  }

  v16 = *(this + 29);
  if (v16)
  {
    v17 = std::__shared_weak_count::lock(v16);
    if (v17)
    {
      v18 = v17;
      v19 = *(this + 28);
      if (v19)
      {
        if (*(v8 + 4455) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *(v8 + 4432), *(v8 + 4440));
        }

        else
        {
          __p = *(v8 + 4432);
        }

        (*(*v19 + 32))(v19, &__p, a2, a3, v12 != v9);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }
  }

  v23 = *(this + 37);
  if (v23)
  {
    SipMessageManager::OutgoingMessage::~OutgoingMessage(v23);
    MEMORY[0x1E69235B0]();
  }

  *(this + 37) = 0;
  if (v7)
  {
LABEL_20:
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_1E4F9E8B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  _Unwind_Resume(a1);
}

void SipMessageManager::initialize(uint64_t a1, const std::string **a2)
{
  std::string::operator=((a1 + 304), *a2 + 168);
  std::string::operator=((a1 + 328), *a2 + 169);
  memset(&__p, 0, sizeof(__p));
  v4 = SipStack::prefs(*a2);
  ImsPrefs::FatalSmsErrors(v4, &__p);
  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    ims::tokenize(&__p, &v9, 0x2Cu);
    v6 = v9;
    v7 = v10;
    while (v6 != v7)
    {
      v8 = v6;
      if (*(v6 + 23) < 0)
      {
        v8 = *v6;
      }

      LODWORD(v13) = strtoul(v8, 0, 10);
      if (v13)
      {
        std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(a1 + 272, &v13);
      }

      v6 += 24;
    }

    v13 = &v9;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v13);
  }

  else
  {
    std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(a1 + 272, &SipResponse::kStatusBadRequest);
    std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(a1 + 272, &SipResponse::kStatusNotFound);
    std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(a1 + 272, &SipResponse::kStatusServerInternalError);
    std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(a1 + 272, &SipResponse::kStatusBadGateway);
    std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(a1 + 272, &SipResponse::kStatusServiceUnavailable);
    std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(a1 + 272, &SipResponse::kStatusNotImplemented);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1E4F9EA74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  *(v18 - 40) = &a10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v18 - 40));
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t SipMessageManager::handleNewServerTransaction(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 176);
  if (!v3 || (v4 = *a2, v5 = *(a1 + 168), (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = v5 + 8;
  atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  v9 = *(v4 + 344);
  if (!v5)
  {
    v8 = 0;
  }

  *(v4 + 336) = v8;
  *(v4 + 344) = v7;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  return 1;
}

void SipMessageManager::handleRequestError(SipMessageManager *this)
{
  v2 = *(this + 29);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 28);
      if (v5)
      {
        v6 = *(this + 27);
        if (v6)
        {
          v7 = std::__shared_weak_count::lock(v6);
          if (v7)
          {
            v8 = v7;
            v9 = *(this + 26);
            if (v9)
            {
              if (*(v9 + 4455) < 0)
              {
                std::string::__init_copy_ctor_external(&__p, *(v9 + 4432), *(v9 + 4440));
              }

              else
              {
                __p = *(v9 + 4432);
              }

              (*(*v5 + 56))(v5, &__p);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }

            std::__shared_weak_count::__release_shared[abi:ne200100](v8);
          }
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void sub_1E4F9EC14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  _Unwind_Resume(a1);
}

uint64_t SipMessageManager::handleRequest(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *(a1 + 216);
  if (!v4)
  {
    v7 = 0;
    goto LABEL_10;
  }

  v7 = std::__shared_weak_count::lock(v4);
  if (!v7 || (v8 = *(a1 + 208)) == 0)
  {
LABEL_10:
    v12 = *(a1 + 24);
    v11 = a1 + 24;
    v13 = (*(v12 + 56))(v11);
    (*(*v11 + 16))(v11, v13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "No SipStack", 11);
    *(v13 + 17) = 0;
    (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    v14 = 0;
    *(v13 + 17) = 0;
    if (!v7)
    {
      return v14;
    }

    goto LABEL_161;
  }

  v9 = *(a1 + 232);
  if (v9 && (v104 = std::__shared_weak_count::lock(v9)) != 0)
  {
    v10 = *(a1 + 224);
    if (v10)
    {
      if (*(v8 + 4455) < 0)
      {
        std::string::__init_copy_ctor_external(&v128, *(v8 + 4432), *(v8 + 4440));
      }

      else
      {
        v128 = *(v8 + 4432);
      }

      (*(*v10 + 48))(v10, &v128);
      if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v128.__r_.__value_.__l.__data_);
      }

      v102 = 1;
    }

    else
    {
      v102 = 0;
    }
  }

  else
  {
    v102 = 0;
    v104 = 0;
    v10 = 0;
  }

  v101 = v10;
  v16 = *(v8 + 248);
  v15 = *(v8 + 256);
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v103 = v15;
  v17 = a1 + 24;
  v18 = (*(*(a1 + 24) + 64))(a1 + 24);
  (*(*(a1 + 24) + 16))(a1 + 24, v18);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "Received SMS message request ", 29);
  *(v18 + 17) = 0;
  v19 = SipMessage::header<SipCallIdHeader>(*a2);
  if (v19)
  {
    v20 = (v19 + 64);
  }

  else
  {
    v20 = &ims::kEmptyString;
  }

  (*(*v18 + 32))(v18, v20);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), " on stack ", 10);
  *(v18 + 17) = 0;
  v21 = (v8 + 4432);
  if (*(v8 + 4455) < 0)
  {
    std::string::__init_copy_ctor_external(&v128, *(v8 + 4432), *(v8 + 4440));
  }

  else
  {
    *&v128.__r_.__value_.__l.__data_ = *v21;
    v128.__r_.__value_.__r.__words[2] = *(v8 + 4448);
  }

  (*(*v18 + 32))(v18, &v128);
  (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v18 + 17) = 0;
  if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v128.__r_.__value_.__l.__data_);
  }

  if (*(SipUserAgent::config(v16) + 1154) == 1 && (*(SipUserAgent::config(v16) + 456) & 1) == 0)
  {
    v33 = (*(*v17 + 64))(a1 + 24);
    (*(*v17 + 16))(a1 + 24, v33);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v33 + 8), "Secondary device should not receive SMS.  Faking timeout.", 57);
    *(v33 + 17) = 0;
    (*(*v33 + 64))(v33, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v33 + 17) = 0;
    v34 = *a3;
    std::string::basic_string[abi:ne200100]<0>(&v128, "");
    SipServerTransaction::sendResponse(v34, v111);
    v32 = v111;
    goto LABEL_47;
  }

  if ((SipStack::registeredForSms(v8) & 1) == 0)
  {
    v30 = (*(*v17 + 48))(a1 + 24);
    (*(*v17 + 16))(a1 + 24, v30);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v30 + 8), "not registered for SMS.  Rejecting incoming message.", 52);
    *(v30 + 17) = 0;
    (*(*v30 + 64))(v30, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v30 + 17) = 0;
    v31 = *a3;
    std::string::basic_string[abi:ne200100]<0>(&v128, "");
    SipServerTransaction::sendResponse(v31, v110);
    v32 = v110;
LABEL_47:
    ImsResult::~ImsResult(v32);
    if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v128.__r_.__value_.__l.__data_);
    }

    SipMessageManager::handleRequestError(a1);
    goto LABEL_156;
  }

  v22 = *a2;
  v23 = SipUserAgent::config(v16);
  v99 = SipRequest::bestSenderIdentity(v22, *(v23 + 804));
  v98 = SipMessage::assertedIdentity(*a2, 1);
  v24 = SipMessage::header<SipToHeader>(*a2);
  v25 = v24;
  v26 = (v24 + 104);
  if (v24)
  {
    v27 = v24 + 104;
  }

  else
  {
    v27 = 0;
  }

  v100 = v27;
  if (!v24)
  {
    v35 = (*(*v17 + 48))(a1 + 24);
    (*(*v17 + 16))(a1 + 24, v35);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v35 + 8), "incoming Message missing To: header.", 36);
    *(v35 + 17) = 0;
    (*(*v35 + 64))(v35, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v35 + 17) = 0;
    v36 = *a3;
    std::string::basic_string[abi:ne200100]<0>(&v128, "Missing To header");
    SipServerTransaction::sendResponse(v36, v109);
    v37 = v109;
LABEL_122:
    ImsResult::~ImsResult(v37);
    if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v128.__r_.__value_.__l.__data_);
    }

    SipMessageManager::handleRequestError(a1);
    goto LABEL_156;
  }

  if ((v102 & *(SipUserAgent::config(v16) + 918)) == 1)
  {
    if (!SipUri::isValidUri(v26))
    {
      v38 = std::string::basic_string[abi:ne200100]<0>(&v131, "sms");
      v128.__r_.__value_.__s.__data_[0] = 0;
      v130 = 0;
      v39 = ims::error(v38, &v128);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v39 + 8), "Failed to validate recipient for MT SMS- Invalid URI", 52);
      *(v39 + 17) = 0;
      (*(*v39 + 64))(v39, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v39 + 17) = 0;
      if (v130 == 1 && v129 < 0)
      {
        operator delete(v128.__r_.__value_.__r.__words[2]);
      }

      if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v131.__r_.__value_.__l.__data_);
      }

LABEL_121:
      v70 = (*(*v17 + 48))(a1 + 24);
      (*(*v17 + 16))(a1 + 24, v70);
      v71 = ImsOutStream::operator<<(v70, "incoming Message not destined for UE. Intended Recipient:");
      (*(*v100 + 40))(v100, v71);
      (*(*v71 + 64))(v71, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      v71[17] = 0;
      v72 = *a3;
      std::string::basic_string[abi:ne200100]<0>(&v128, "");
      SipServerTransaction::sendResponse(v72, v108);
      v37 = v108;
      goto LABEL_122;
    }

    v28 = *(a1 + 327);
    if (v28 < 0)
    {
      v28 = *(a1 + 312);
    }

    if (!v28)
    {
      goto LABEL_119;
    }

    v29 = *(a1 + 351);
    if (v29 < 0)
    {
      v29 = *(a1 + 336);
    }

    if (!v29)
    {
      goto LABEL_119;
    }

    memset(&v131, 0, sizeof(v131));
    if (v25[255] < 0)
    {
      std::string::__init_copy_ctor_external(&v131, *(v25 + 29), *(v25 + 30));
    }

    else
    {
      v131 = *(v25 + 232);
    }

    v40 = *(a1 + 216);
    if (v40 && (v41 = std::__shared_weak_count::lock(v40)) != 0)
    {
      v42 = v41;
      v43 = *(a1 + 208);
      if (v43)
      {
        v44 = *(v43 + 248);
        v45 = *(v43 + 256);
        if (v45)
        {
          atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v96 = v45;
        if (v44)
        {
          v46 = SipUserAgent::publicUri(v44);
          LODWORD(v44) = SipUri::equals(v26, v46, 1);
        }

        v95 = v44;
        if (v96)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v96);
        }
      }

      else
      {
        v95 = 0;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v42);
    }

    else
    {
      v95 = 0;
    }

    size = HIBYTE(v131.__r_.__value_.__r.__words[2]);
    if ((v131.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v48 = &v131;
    }

    else
    {
      v48 = v131.__r_.__value_.__r.__words[0];
    }

    if ((v131.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v131.__r_.__value_.__l.__size_;
    }

    v49 = *(a1 + 351);
    if ((v49 & 0x8000000000000000) != 0)
    {
      v50 = *(a1 + 328);
      v49 = *(a1 + 336);
    }

    else
    {
      v50 = (a1 + 328);
    }

    if (size >= v49)
    {
      v51 = v49;
    }

    else
    {
      v51 = size;
    }

    v97 = size;
    if (!memcmp(v50, v48, v51) && v97 == v49)
    {
      v52 = std::string::basic_string[abi:ne200100]<0>(&v127, "sms");
      v124.__r_.__value_.__s.__data_[0] = 0;
      v126 = 0;
      v53 = ims::debug(v52, &v124);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v53 + 8), "Validated recipient for MT SMS - IMSI match", 43);
      *(v53 + 17) = 0;
      (*(*v53 + 64))(v53, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v53 + 17) = 0;
      if (v126 != 1 || (v125 & 0x80000000) == 0)
      {
        goto LABEL_113;
      }

      v54 = v124.__r_.__value_.__r.__words[2];
LABEL_112:
      operator delete(v54);
LABEL_113:
      if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v127.__r_.__value_.__l.__data_);
      }

      v67 = 1;
      goto LABEL_116;
    }

    if (v95)
    {
      v55 = std::string::basic_string[abi:ne200100]<0>(&v127, "sms");
      v120[0] = 0;
      v123 = 0;
      v56 = ims::debug(v55, v120);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v56 + 8), "Validated recipient for MT SMS - publicUri match", 48);
      *(v56 + 17) = 0;
      (*(*v56 + 64))(v56, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v56 + 17) = 0;
      if (v123 != 1 || (v122 & 0x80000000) == 0)
      {
        goto LABEL_113;
      }

      v54 = v121;
      goto LABEL_112;
    }

    if (SipUri::isTelUri(v26))
    {
      SipUri::normalizedPhoneNumber(v26, &v127);
      if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v131.__r_.__value_.__l.__data_);
      }

      v131 = v127;
    }

    v57 = (a1 + 304);
    v58 = *(a1 + 327);
    if ((v58 & 0x8000000000000000) != 0)
    {
      v58 = *(a1 + 312);
      if (v58 < 4)
      {
        v59 = HIBYTE(v131.__r_.__value_.__r.__words[2]);
        v60 = v131.__r_.__value_.__l.__size_;
        v57 = *v57;
LABEL_98:
        if ((v59 & 0x80u) == 0)
        {
          v61 = v59;
        }

        else
        {
          v61 = v60;
        }

        if ((v59 & 0x80u) == 0)
        {
          v62 = &v131;
        }

        else
        {
          v62 = v131.__r_.__value_.__r.__words[0];
        }

        if (v61 >= v58)
        {
          v63 = v58;
        }

        else
        {
          v63 = v61;
        }

        v64 = memcmp(v57, v62, v63);
        if (v58 != v61 || v64)
        {
LABEL_169:
          v93 = std::string::basic_string[abi:ne200100]<0>(&v127, "sms");
          v112[0] = 0;
          v115 = 0;
          v94 = ims::error(v93, v112);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v94 + 8), "Failed to validate recipient for MT SMS - MDN mismatch", 54);
          *(v94 + 17) = 0;
          (*(*v94 + 64))(v94, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v94 + 17) = 0;
          if (v115 == 1 && v114 < 0)
          {
            operator delete(v113);
          }

          if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v127.__r_.__value_.__l.__data_);
          }

          v67 = 0;
LABEL_116:
          if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v131.__r_.__value_.__l.__data_);
          }

          if (v67)
          {
            goto LABEL_119;
          }

          goto LABEL_121;
        }

        goto LABEL_109;
      }

      v57 = *v57;
    }

    else if (v58 < 4)
    {
      v59 = HIBYTE(v131.__r_.__value_.__r.__words[2]);
      v60 = v131.__r_.__value_.__l.__size_;
      goto LABEL_98;
    }

    v86 = (v57 + v58);
    v87 = HIBYTE(v131.__r_.__value_.__r.__words[2]);
    v88 = &v131;
    if ((v131.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v87 = v131.__r_.__value_.__l.__size_;
      v88 = v131.__r_.__value_.__r.__words[0];
    }

    v89 = (v88 + v87 - 1);
    while (v86 != (v57 + v58 - 4))
    {
      v91 = *(v86 - 1);
      v86 = (v86 - 1);
      v90 = v91;
      v92 = v89->__r_.__value_.__s.__data_[0];
      v89 = (v89 - 1);
      if (v90 != v92)
      {
        goto LABEL_169;
      }
    }

LABEL_109:
    v65 = std::string::basic_string[abi:ne200100]<0>(&v127, "sms");
    v116[0] = 0;
    v119 = 0;
    v66 = ims::debug(v65, v116);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v66 + 8), "Validated recipient for MT SMS - MDN match", 42);
    *(v66 + 17) = 0;
    (*(*v66 + 64))(v66, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v66 + 17) = 0;
    if (v119 != 1 || (v118 & 0x80000000) == 0)
    {
      goto LABEL_113;
    }

    v54 = __p;
    goto LABEL_112;
  }

LABEL_119:
  memset(&v128, 0, sizeof(v128));
  v68 = *(*a2 + 112);
  if (v68)
  {
    v69 = (*(*v68 + 40))(v68);
  }

  else
  {
    v69 = &SipBody::kGenericContentType;
  }

  if (*(v69 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v128, *v69, *(v69 + 1));
  }

  else
  {
    v73 = *v69;
    v128.__r_.__value_.__r.__words[2] = *(v69 + 2);
    *&v128.__r_.__value_.__l.__data_ = v73;
  }

  v74 = SipUserAgent::config(v16);
  if (*(v74 + 1144))
  {
    v75 = HIBYTE(v128.__r_.__value_.__r.__words[2]);
    if ((v128.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v75 = v128.__r_.__value_.__l.__size_;
    }

    if (!v75 || v74 + 1136 == std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v74 + 1128, &v128.__r_.__value_.__l.__data_))
    {
      v79 = (*(*v17 + 48))(a1 + 24);
      (*(*v17 + 16))(a1 + 24, v79);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v79 + 8), "unsupported SMS content type ", 29);
      *(v79 + 17) = 0;
      (*(*v79 + 32))(v79, &v128);
      (*(*v79 + 64))(v79, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v79 + 17) = 0;
      *&v124.__r_.__value_.__l.__data_ = 0uLL;
      v80 = a2[1];
      v106 = *a2;
      v107 = v80;
      if (v80)
      {
        atomic_fetch_add_explicit((v80 + 8), 1uLL, memory_order_relaxed);
      }

      SipResponse::create(415, &v124);
    }
  }

  v76 = *a3;
  std::string::basic_string[abi:ne200100]<0>(&v124, "");
  SipServerTransaction::sendResponse(v76, v105);
  ImsResult::~ImsResult(v105);
  if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v124.__r_.__value_.__l.__data_);
  }

  v77 = SipMessage::header<SipCallIdHeader>(*a2);
  if (v77)
  {
    v78 = (v77 + 64);
  }

  else
  {
    v78 = &ims::kEmptyString;
  }

  SipStack::saveEmergencyMessageCallId(v8, v78);
  if (v102)
  {
    if (*(v8 + 4455) < 0)
    {
      std::string::__init_copy_ctor_external(&v124, *(v8 + 4432), *(v8 + 4440));
    }

    else
    {
      *&v124.__r_.__value_.__l.__data_ = *v21;
      v124.__r_.__value_.__r.__words[2] = *(v8 + 4448);
    }

    v81 = SipMessage::header<SipCallIdHeader>(*a2);
    v82 = SipMessage::header<SipInReplyToContributionIdHeader>(*a2);
    v83 = v81 ? (v81 + 64) : &ims::kEmptyString;
    v84 = v82 ? (v82 + 64) : &ims::kEmptyString;
    (*(*v101 + 16))(v101, &v124, v99, v98, v83, v84, *(*a2 + 112));
    if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v124.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v128.__r_.__value_.__l.__data_);
  }

LABEL_156:
  if (v103)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v103);
  }

  if (v104)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v104);
  }

  v14 = 1;
LABEL_161:
  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  return v14;
}

void sub_1E4F9FD28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, std::__shared_weak_count *a17)
{
  if (*(v18 - 105) < 0)
  {
    operator delete(*(v18 - 128));
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  _Unwind_Resume(a1);
}

uint64_t SipMultiStringHeader::addValues<std::set<std::string>>(uint64_t result, void *a2)
{
  v2 = (a2 + 1);
  v3 = *a2;
  if (*a2 != a2 + 1)
  {
    v4 = result;
    do
    {
      result = std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(v4 + 64, v3 + 4);
      v5 = v3[1];
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
          v6 = v3[2];
          v7 = *v6 == v3;
          v3 = v6;
        }

        while (!v7);
      }

      v3 = v6;
    }

    while (v6 != v2);
  }

  return result;
}

void SipMessageManager::processSendQueue(SipMessageManager *this)
{
  v2 = *(this + 27);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_9;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3 || (v4 = *(this + 26)) == 0)
  {
LABEL_9:
    v15 = *(this + 3);
    v14 = this + 24;
    v16 = (*(v15 + 56))(v14);
    (*(*v14 + 16))(v14, v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "No SipStack", 11);
    *(v16 + 17) = 0;
    (*(*v16 + 64))(v16, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v16 + 17) = 0;
    if (!v3)
    {
      return;
    }

    goto LABEL_10;
  }

  if (!*(this + 37))
  {
    v5 = this + 24;
    v6 = *(*(this + 3) + 64);
    if (*(this + 33))
    {
      v7 = v6(this + 24);
      (*(*v5 + 16))(this + 24, v7);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "processing send queue", 21);
      *(v7 + 17) = 0;
      (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v7 + 17) = 0;
      v8 = *(this + 32);
      v9 = *(this + 33);
      *(this + 37) = v8[2];
      v11 = *v8;
      v10 = v8[1];
      *(v11 + 8) = v10;
      *v10 = v11;
      *(this + 33) = v9 - 1;
      operator delete(v8);
      if (SipStack::isRegistrationLimitedAccess(v4))
      {
        v12 = (*(*v5 + 64))(this + 24);
        (*(*v5 + 16))(this + 24, v12);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "Dropping message in Limited Access mode", 39);
        *(v12 + 17) = 0;
        (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v12 + 17) = 0;
        v13 = *(*(this + 37) + 16);
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v24[0] = &unk_1F5EBDEF8;
        v24[1] = &SipResultDomain::_domain;
        v25 = 503;
        SipMessageManager::generateError(this, v13, v24);
        ImsResult::~ImsResult(v24);
      }

      else
      {
        v18 = *(v4 + 248);
        v19 = *(v4 + 256);
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v18)
        {
          v20 = *(this + 37);
          v21 = SipUserAgent::config(v18);
          v22 = SipTimers::timerValue((v21 + 512), &SipTimers::kTimerF, 0);
          ImsPowerAssertion::initialize((v20 + 64), (v22 + 30), 0, v23);
          ImsResult::~ImsResult(v23);
          SipMessageManager::OutgoingMessage::send(*(this + 37));
        }

        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        }
      }
    }

    else
    {
      v17 = v6(this + 24);
      (*(*v5 + 16))(v5, v17);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "send queue is empty", 19);
      *(v17 + 17) = 0;
      (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v17 + 17) = 0;
    }
  }

LABEL_10:
  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
}

void sub_1E4FA03D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  ImsResult::~ImsResult(va);
  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  _Unwind_Resume(a1);
}

void SipMessageManager::handleAuthChallengeResponse(SipMessageManager *this, const SipAuthInfoInterface *a2)
{
  v3 = *(this + 37);
  if (v3 && (v3[7] & 1) != 0)
  {
    v4 = *(*v3 + 27);
    if (v4)
    {
      v5 = *(*v3 + 26);
      atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v6 = std::__shared_weak_count::lock(v4);
      std::__shared_weak_count::__release_weak(v4);
      if (v6)
      {
        if (v5)
        {
          v7 = *(v5 + 248);
          v8 = *(v5 + 256);
          if (v8)
          {
            atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v7)
          {
            v9 = *(v7 + 368);
            v10 = *(v7 + 376);
            if (v10)
            {
              atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v11 = v3[4];
            v14 = v3[3];
            v15 = v11;
            if (v11)
            {
              atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            (*(*v9 + 48))(v16);
            ImsResult::~ImsResult(v16);
            if (v15)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v15);
            }

            if (v10)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v10);
            }
          }

          if (v8)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v8);
          }

          SipMessageManager::OutgoingMessage::send(v3);
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }
    }
  }

  else
  {
    v12 = this + 24;
    v13 = (*(*(this + 3) + 56))(this + 24, a2);
    (*(*v12 + 16))(this + 24, v13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "received unexpected auth response.  Ignoring it, but checking queue.", 68);
    *(v13 + 17) = 0;
    (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v13 + 17) = 0;

    SipMessageManager::processSendQueue(this);
  }
}

void sub_1E4FA0618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
    if (!v13)
    {
LABEL_3:
      if (!v12)
      {
LABEL_8:
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        _Unwind_Resume(a1);
      }

LABEL_7:
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      goto LABEL_8;
    }
  }

  else if (!v13)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  if (!v12)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void SipMessageManager::handleAuthChallengeTimeout(SipMessageManager *this, const SipAuthInfoInterface *a2)
{
  v3 = *(this + 37);
  if (v3 && (*(v3 + 56) & 1) != 0)
  {
    v4 = this + 24;
    v5 = (*(*(this + 3) + 56))(this + 24, a2);
    (*(*v4 + 16))(this + 24, v5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "auth challenge timed out.  Failing current message.", 51);
    *(v5 + 17) = 0;
    (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v5 + 17) = 0;
    v6 = *(*(this + 37) + 16);
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v9[0] = &unk_1F5EBDEF8;
    v9[1] = &SipResultDomain::_domain;
    v10 = 401;
    SipMessageManager::generateError(this, v6, v9);
    ImsResult::~ImsResult(v9);
    SipMessageManager::processSendQueue(this);
  }

  else
  {
    v7 = this + 24;
    v8 = (*(*(this + 3) + 56))(this + 24, a2);
    (*(*v7 + 16))(this + 24, v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "received unexpected auth challenge timeout.  Ignoring it, but checking queue.", 77);
    *(v8 + 17) = 0;
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;

    SipMessageManager::processSendQueue(this);
  }
}

void sub_1E4FA0894(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ImsResult::~ImsResult(va);
  _Unwind_Resume(a1);
}

uint64_t SipMessageManager::handleResponse(SipMessageManager *this, uint64_t a2, void *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = *(this + 37);
  if (!v3)
  {
    goto LABEL_67;
  }

  if (*a3 != *(v3 + 40))
  {
    goto LABEL_67;
  }

  v4 = *a2;
  v5 = *(*a2 + 128);
  if (v5 - 100 < 0x64)
  {
    goto LABEL_67;
  }

  if (v5 != 401)
  {
    if (v5 - 200 > 0x63)
    {
      if (v5 < 0x12C)
      {
LABEL_66:
        SipMessageManager::processSendQueue(this);
        goto LABEL_67;
      }

LABEL_38:
      v27 = *(v3 + 16);
      SipResponse::asImsResult(*a2, __p);
      SipMessageManager::generateError(this, v27, __p);
      ImsResult::~ImsResult(__p);
      goto LABEL_66;
    }

    v20 = *(this + 27);
    if (v20)
    {
      v21 = std::__shared_weak_count::lock(v20);
      if (v21)
      {
        v22 = *(this + 26);
        if (v22)
        {
          v23 = *(this + 29);
          if (v23)
          {
            v24 = std::__shared_weak_count::lock(v23);
            if (v24)
            {
              v25 = v24;
              v26 = *(this + 28);
              if (v26)
              {
                if (*(v22 + 4455) < 0)
                {
                  std::string::__init_copy_ctor_external(__p, *(v22 + 4432), *(v22 + 4440));
                }

                else
                {
                  __p[0] = *(v22 + 4432);
                }

                (*(*v26 + 40))(v26, __p, *(*(this + 37) + 16));
                if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p[0].__r_.__value_.__l.__data_);
                }
              }

              std::__shared_weak_count::__release_shared[abi:ne200100](v25);
            }
          }

          v32 = *(this + 37);
          if (v32)
          {
            SipMessageManager::OutgoingMessage::~OutgoingMessage(v32);
            MEMORY[0x1E69235B0]();
          }

          *(this + 37) = 0;
LABEL_65:
          std::__shared_weak_count::__release_shared[abi:ne200100](v21);
          goto LABEL_66;
        }
      }
    }

    else
    {
      v21 = 0;
    }

    v29 = (*(*(this + 3) + 56))(this + 24);
    (*(*(this + 3) + 16))(this + 24, v29);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v29 + 8), "No SipStack", 11);
    *(v29 + 17) = 0;
    (*(*v29 + 64))(v29, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v29 + 17) = 0;
    if (!v21)
    {
      goto LABEL_66;
    }

    goto LABEL_65;
  }

  if (*(v3 + 60) > 1u)
  {
    goto LABEL_38;
  }

  v7 = *(a2 + 8);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(this + 27);
  if (!v8)
  {
    v9 = 0;
LABEL_40:
    v28 = *(this + 25);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      (*(*(this + 20) + 16))(__p, this + 160);
      v31 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
      *buf = 141558275;
      *&buf[4] = 1752392040;
      *&buf[12] = 2081;
      *&buf[14] = v31;
      _os_log_error_impl(&dword_1E4C3F000, v28, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", buf, 0x16u);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }
    }

    if (!v9)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  v9 = std::__shared_weak_count::lock(v8);
  if (!v9)
  {
    goto LABEL_40;
  }

  v10 = *(this + 26);
  if (!v10)
  {
    goto LABEL_40;
  }

  v12 = *(v10 + 248);
  v11 = *(v10 + 256);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v12)
  {
    v13 = *(this + 25);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      (*(*(this + 20) + 16))(__p);
      v35 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
      *buf = 141558275;
      *&buf[4] = 1752392040;
      *&buf[12] = 2081;
      *&buf[14] = v35;
      _os_log_error_impl(&dword_1E4C3F000, v13, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno user agent", buf, 0x16u);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }
    }
  }

  v14 = *(this + 37);
  if (v14)
  {
    *(v14 + 56) = 1;
    v15 = *(v14 + 48);
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    ++*(v14 + 60);
    v16 = *(v12 + 368);
    v17 = *(v12 + 376);
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *buf = v4;
    *&buf[8] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v18 = (*(*v16 + 56))(v16, buf, this + 16);
    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
    }

    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    if (v18)
    {
      goto LABEL_48;
    }

    v19 = *(*(this + 37) + 16);
    SipResponse::asImsResult(v4, __p);
    SipMessageManager::generateError(this, v19, __p);
    ImsResult::~ImsResult(__p);
  }

  else
  {
    v30 = (*(*(this + 3) + 48))(this + 24);
    (*(*(this + 3) + 16))(this + 24, v30);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v30 + 8), "received unexpected 401 response.  Ignoring it, but checking queue.", 67);
    *(v30 + 17) = 0;
    (*(*v30 + 64))(v30, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v30 + 17) = 0;
  }

  SipMessageManager::processSendQueue(this);
LABEL_48:
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

LABEL_50:
  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
LABEL_51:
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

LABEL_67:
  v33 = *MEMORY[0x1E69E9840];
  return 1;
}

void sub_1E4FA0EAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  _Unwind_Resume(a1);
}

void SipMessageManager::deferError(void *a1, int a2, const ImsResult *a3)
{
  v6 = a1 + 3;
  v7 = (*(a1[3] + 64))(a1 + 3);
  (*(*v6 + 16))(v6, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "deferring error: ", 17);
  *(v7 + 17) = 0;
  (*(*a3 + 16))(a3, v7);
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1174405120;
  v13[2] = ___ZN17SipMessageManager10deferErrorEj9ImsResult_block_invoke;
  v13[3] = &__block_descriptor_tmp_52;
  v13[4] = a1;
  v14[22] = a2;
  ImsResult::ImsResult(v14, a3);
  v8 = a1[22];
  if (!v8 || (v9 = a1[21], (v10 = std::__shared_weak_count::lock(v8)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v11 = v10;
  v12 = a1[23];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI17SipMessageManagerE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_1F5EE3DB0;
  block[5] = v9;
  v16 = v11;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v13;
  dispatch_async(v12, block);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  ImsResult::~ImsResult(v14);
}

void SipMessageManager::handleTransactionError(SipMessageManager *a1, const ImsResult *a2, uint64_t a3)
{
  v5 = *a3;
  {
    v8 = *(a3 + 8);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 37);
  if (v9 && v5 == *(v9 + 40))
  {
    SipMessageManager::generateError(a1, *(v9 + 16), a2);
  }

  if (v8)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void sub_1E4FA12AC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void SipMessageManager::transactionTerminated(SipMessageManager::OutgoingMessage **a1, uint64_t a2)
{
  v3 = *a2;
  {
    v6 = *(a2 + 8);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = a1[37];
  if (v7 && v3 == *(v7 + 5))
  {
    SipMessageManager::OutgoingMessage::~OutgoingMessage(a1[37]);
    MEMORY[0x1E69235B0]();
    a1[37] = 0;
    SipMessageManager::processSendQueue(a1);
  }

  if (v6)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1E4FA13C4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipMessageManager::send(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = a1[27];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = a1[26];
      if (v4)
      {
        v6 = *(v4 + 248);
        v5 = *(v4 + 256);
        if (v5)
        {
          atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v6)
        {
          v15[0] = 0;
          v15[1] = 0;
          v7 = *(v4 + 248);
          ims::AccessNetwork::isWifi((v4 + 3432));
          v8 = *(v4 + 296);
          SipMessageEncodingMap::createRequestFromTemplate(v7 + 384, v15);
        }

        v11 = a1[25];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          (*(a1[20] + 16))(&__str, a1 + 20);
          v14 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__str : __str.__r_.__value_.__r.__words[0];
          __p[0] = 141558275;
          *&__p[1] = 1752392040;
          v18 = 2081;
          v19 = v14;
          _os_log_error_impl(&dword_1E4C3F000, v11, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno user agent", __p, 0x16u);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }
        }

        if (v5)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v5);
        }

LABEL_15:
        std::__shared_weak_count::__release_shared[abi:ne200100](v3);
        result = 0;
        goto LABEL_16;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v9 = a1[25];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    (*(a1[20] + 16))(&__str, a1 + 20);
    v13 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__str : __str.__r_.__value_.__r.__words[0];
    __p[0] = 141558275;
    *&__p[1] = 1752392040;
    v18 = 2081;
    v19 = v13;
    _os_log_error_impl(&dword_1E4C3F000, v9, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", __p, 0x16u);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  result = 0;
  if (v3)
  {
    goto LABEL_15;
  }

LABEL_16:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E4FA1CB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  _Unwind_Resume(a1);
}

uint64_t SipMessageManager::send(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const std::string *a5, uint64_t a6)
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a1[27];
  if (v7)
  {
    v11 = std::__shared_weak_count::lock(v7);
    if (v11)
    {
      v12 = a1[26];
      if (v12)
      {
        v14 = *(v12 + 248);
        v13 = *(v12 + 256);
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v26 = v13;
        if (v14)
        {
          Body = SipMessageEncodingMap::createBody((v14 + 384), a5);
          if (Body)
          {
            memset(&v27, 0, sizeof(v27));
            if (*(a6 + 40) > 0.0)
            {
              operator new();
            }

            if ((*(*Body + 88))(Body, a4, v14 + 384))
            {
              v17 = SipMessageManager::send(a1);
            }

            else
            {
              v17 = 0;
            }

            if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v27.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            v21 = a1[3];
            v20 = a1 + 3;
            v22 = (*(v21 + 56))(v20);
            (*(*v20 + 16))(v20, v22);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), "unknown content type ", 21);
            *(v22 + 17) = 0;
            (*(*v22 + 32))(v22, a5);
            (*(*v22 + 64))(v22, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            v17 = 0;
            *(v22 + 17) = 0;
          }
        }

        else
        {
          v19 = a1[25];
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            (*(a1[20] + 16))(&v27, a1 + 20);
            v25 = (v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v27 : v27.__r_.__value_.__r.__words[0];
            LODWORD(__str.__r_.__value_.__l.__data_) = 141558275;
            *(__str.__r_.__value_.__r.__words + 4) = 1752392040;
            WORD2(__str.__r_.__value_.__r.__words[1]) = 2081;
            *(&__str.__r_.__value_.__r.__words[1] + 6) = v25;
            _os_log_error_impl(&dword_1E4C3F000, v19, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno user agent", &__str, 0x16u);
            if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v27.__r_.__value_.__l.__data_);
            }
          }

          v17 = 0;
        }

        if (v26)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v26);
        }

LABEL_29:
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        result = v17;
        goto LABEL_30;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  v16 = a1[25];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    (*(a1[20] + 16))(&v27, a1 + 20);
    v23 = (v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v27 : v27.__r_.__value_.__r.__words[0];
    LODWORD(__str.__r_.__value_.__l.__data_) = 141558275;
    *(__str.__r_.__value_.__r.__words + 4) = 1752392040;
    WORD2(__str.__r_.__value_.__r.__words[1]) = 2081;
    *(&__str.__r_.__value_.__r.__words[1] + 6) = v23;
    _os_log_error_impl(&dword_1E4C3F000, v16, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", &__str, 0x16u);
    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }
  }

  v17 = 0;
  result = 0;
  if (v11)
  {
    goto LABEL_29;
  }

LABEL_30:
  v24 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E4FA24DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (*(v21 - 153) < 0)
  {
    operator delete(*(v21 - 176));
  }

  if (*(v21 - 105) < 0)
  {
    operator delete(*(v21 - 128));
  }

  if (*(v21 - 129) < 0)
  {
    operator delete(*(v21 - 152));
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  _Unwind_Resume(a1);
}

void SipMessageManager::logPrefix(SipMessageManager *this, ImsOutStream *a2)
{
  v4 = *(this + 27);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = *(this + 26);
      if (v6)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "SipMessageManager[", 18);
        *(a2 + 17) = 0;
        if (*(v6 + 4455) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *(v6 + 4432), *(v6 + 4440));
        }

        else
        {
          __p = *(v6 + 4432);
        }

        (*(*a2 + 32))(a2, &__p);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "]: ", 3);
        *(a2 + 17) = 0;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        goto LABEL_12;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "SipMessageManager: ", 19);
  *(a2 + 17) = 0;
  if (v5)
  {
LABEL_12:
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}
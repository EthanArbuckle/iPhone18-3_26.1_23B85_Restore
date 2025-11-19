ctb::FileTransferDescriptor::FileDescriptor *std::__optional_copy_base<ctb::FileTransferDescriptor,false>::__optional_copy_base[abi:ne200100](ctb::FileTransferDescriptor::FileDescriptor *this, uint64_t a2)
{
  *this = 0;
  *(this + 328) = 0;
  if (*(a2 + 328) == 1)
  {
    ctb::FileTransferDescriptor::FileDescriptor::FileDescriptor(this, a2);
    std::__optional_copy_base<ctb::FileTransferDescriptor::FileDescriptor,false>::__optional_copy_base[abi:ne200100]((this + 144), (a2 + 144));
    std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((this + 296), (a2 + 296));
    *(this + 328) = 1;
  }

  return this;
}

void sub_2426524E0(_Unwind_Exception *a1)
{
  std::optional<ctb::FileTransferDescriptor::FileDescriptor>::~optional(v1 + 144);
  ctb::FileTransferDescriptor::FileDescriptor::~FileDescriptor(v1);
  if (*(v1 + 328) == 1)
  {
    ctb::FileTransferDescriptor::~FileTransferDescriptor(v1);
  }

  _Unwind_Resume(a1);
}

__n128 std::__optional_storage_base<ctb::BootstrappingInfo,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::BootstrappingInfo,false>>(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 32) == a2[2].n128_u8[0])
  {
    if (*(a1 + 32))
    {
      if (*(a1 + 23) < 0)
      {
        operator delete(*a1);
      }

      result = *a2;
      *(a1 + 16) = a2[1].n128_u64[0];
      *a1 = result;
      a2[1].n128_u8[7] = 0;
      a2->n128_u8[0] = 0;
      *(a1 + 24) = a2[1].n128_u64[1];
    }
  }

  else if (*(a1 + 32))
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *(a1 + 32) = 0;
  }

  else
  {
    result = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    *a1 = result;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    a2->n128_u64[0] = 0;
    *(a1 + 24) = a2[1].n128_u64[1];
    *(a1 + 32) = 1;
  }

  return result;
}

std::string *std::__optional_copy_base<ctb::BootstrappingInfo,false>::__optional_copy_base[abi:ne200100](std::string *this, uint64_t a2)
{
  this->__r_.__value_.__s.__data_[0] = 0;
  this[1].__r_.__value_.__s.__data_[8] = 0;
  if (*(a2 + 32) == 1)
  {
    std::__optional_storage_base<ctb::CPMGroupManagement,false>::__construct[abi:ne200100]<ctb::CPMGroupManagement const&>(this, a2);
  }

  return this;
}

void sub_2426526A8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 32) == 1)
  {
    std::__optional_copy_base<ctb::CPMGroupManagement,false>::__optional_copy_base[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__optional_storage_base<ctb::SIPConferenceInfo,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::SIPConferenceInfo,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 96) == *(a2 + 96))
  {
    if (*(a1 + 96))
    {
      std::__optional_storage_base<ctb::SIPConferenceInfo::Description,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::SIPConferenceInfo::Description,false>>(a1, a2);
      std::vector<ctb::SIPConferenceInfo::User>::__vdeallocate((a1 + 72));
      result = *(a2 + 72);
      *(a1 + 72) = result;
      *(a1 + 88) = *(a2 + 88);
      *(a2 + 72) = 0;
      *(a2 + 80) = 0;
      *(a2 + 88) = 0;
    }
  }

  else if (*(a1 + 96))
  {
    v5 = (a1 + 72);
    std::vector<ctb::SIPConferenceInfo::User>::__destroy_vector::operator()[abi:ne200100](&v5);
    if (*(a1 + 64) == 1)
    {
      if (*(a1 + 56) == 1 && *(a1 + 55) < 0)
      {
        operator delete(*(a1 + 32));
      }

      if (*(a1 + 24) == 1 && *(a1 + 23) < 0)
      {
        operator delete(*a1);
      }
    }

    *(a1 + 96) = 0;
  }

  else
  {
    std::__optional_move_base<ctb::SIPConferenceInfo::Description,false>::__optional_move_base[abi:ne200100](a1, a2);
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    result = *(a2 + 72);
    *(a1 + 72) = result;
    *(a1 + 88) = *(a2 + 88);
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
    *(a1 + 96) = 1;
  }

  return result;
}

void std::__optional_storage_base<ctb::SIPConferenceInfo::Description,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::SIPConferenceInfo::Description,false>>(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 64) == a2[4].n128_u8[0])
  {
    if (*(a1 + 64))
    {
      std::__optional_storage_base<ctb::chatbot::CardStyle,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::chatbot::CardStyle,false>>(a1, a2);
      std::__optional_storage_base<ctb::chatbot::CardStyle,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::chatbot::CardStyle,false>>(a1 + 32, a2 + 2);
    }
  }

  else
  {
    if (*(a1 + 64))
    {
      if (*(a1 + 56) == 1 && *(a1 + 55) < 0)
      {
        operator delete(*(a1 + 32));
      }

      if (*(a1 + 24) == 1 && *(a1 + 23) < 0)
      {
        operator delete(*a1);
      }

      v4 = 0;
    }

    else
    {
      *a1 = 0;
      *(a1 + 24) = 0;
      if (a2[1].n128_u8[8] == 1)
      {
        v5 = *a2;
        *(a1 + 16) = a2[1].n128_u64[0];
        *a1 = v5;
        a2->n128_u64[1] = 0;
        a2[1].n128_u64[0] = 0;
        a2->n128_u64[0] = 0;
        *(a1 + 24) = 1;
      }

      *(a1 + 32) = 0;
      *(a1 + 56) = 0;
      v4 = 1;
      if (a2[3].n128_u8[8] == 1)
      {
        v6 = a2[2];
        *(a1 + 48) = a2[3].n128_u64[0];
        *(a1 + 32) = v6;
        a2[2].n128_u64[1] = 0;
        a2[3].n128_u64[0] = 0;
        a2[2].n128_u64[0] = 0;
        *(a1 + 56) = 1;
      }
    }

    *(a1 + 64) = v4;
  }
}

void std::vector<ctb::SIPConferenceInfo::User>::__vdeallocate(void ***a1)
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
        v3 -= 3;
        v5 = v3;
        std::vector<ctb::SIPConferenceInfo::Endpoint>::__destroy_vector::operator()[abi:ne200100](&v5);
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

void ctb::SIPConferenceInfo::~SIPConferenceInfo(void **this)
{
  v2 = this + 9;
  std::vector<ctb::SIPConferenceInfo::User>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 64) == 1)
  {
    if (*(this + 56) == 1 && *(this + 55) < 0)
    {
      operator delete(this[4]);
    }

    if (*(this + 24) == 1 && *(this + 23) < 0)
    {
      operator delete(*this);
    }
  }
}

uint64_t std::__optional_move_base<ctb::SIPConferenceInfo::Description,false>::__optional_move_base[abi:ne200100](uint64_t result, __int128 *a2)
{
  *result = 0;
  *(result + 64) = 0;
  if (*(a2 + 64) == 1)
  {
    *(result + 24) = 0;
    if (*(a2 + 24) == 1)
    {
      v2 = *a2;
      *(result + 16) = *(a2 + 2);
      *result = v2;
      *(a2 + 1) = 0;
      *(a2 + 2) = 0;
      *a2 = 0;
      *(result + 24) = 1;
    }

    *(result + 32) = 0;
    *(result + 56) = 0;
    if (*(a2 + 56) == 1)
    {
      v3 = a2[2];
      *(result + 48) = *(a2 + 6);
      *(result + 32) = v3;
      *(a2 + 5) = 0;
      *(a2 + 6) = 0;
      *(a2 + 4) = 0;
      *(result + 56) = 1;
    }

    *(result + 64) = 1;
  }

  return result;
}

uint64_t std::__optional_copy_base<ctb::SIPConferenceInfo,false>::__optional_copy_base[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 96) = 0;
  if (*(a2 + 96) == 1)
  {
    std::__optional_copy_base<ctb::SIPConferenceInfo::Description,false>::__optional_copy_base[abi:ne200100](a1, a2);
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    std::vector<ctb::SIPConferenceInfo::User>::__init_with_size[abi:ne200100]<ctb::SIPConferenceInfo::User*,ctb::SIPConferenceInfo::User*>(a1 + 72, *(a2 + 72), *(a2 + 80), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 80) - *(a2 + 72)) >> 3));
    *(a1 + 96) = 1;
  }

  return a1;
}

void sub_242652BD4(_Unwind_Exception *a1)
{
  std::optional<ctb::SIPConferenceInfo::Description>::~optional(v1);
  if (*(v1 + 96) == 1)
  {
    ctb::SIPConferenceInfo::~SIPConferenceInfo(v1);
  }

  _Unwind_Resume(a1);
}

__n128 std::__optional_storage_base<ctb::IMDispositionNotification,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::IMDispositionNotification,false>>(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 80) == *(a2 + 80))
  {
    if (*(a1 + 80))
    {
      v4 = *a2;
      *(a1 + 12) = *(a2 + 12);
      *a1 = v4;
      if (*(a1 + 55) < 0)
      {
        operator delete(*(a1 + 32));
      }

      v5 = a2[2];
      *(a1 + 48) = *(a2 + 6);
      *(a1 + 32) = v5;
      *(a2 + 55) = 0;
      *(a2 + 32) = 0;
      if (*(a1 + 79) < 0)
      {
        operator delete(*(a1 + 56));
      }

      result = *(a2 + 56);
      *(a1 + 72) = *(a2 + 9);
      *(a1 + 56) = result;
      *(a2 + 79) = 0;
      *(a2 + 56) = 0;
    }
  }

  else if (*(a1 + 80))
  {
    if (*(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
    }

    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    *(a1 + 80) = 0;
  }

  else
  {
    v7 = *a2;
    *(a1 + 12) = *(a2 + 12);
    *a1 = v7;
    v8 = a2[2];
    *(a1 + 48) = *(a2 + 6);
    *(a1 + 32) = v8;
    *(a2 + 5) = 0;
    *(a2 + 6) = 0;
    *(a2 + 4) = 0;
    result = *(a2 + 56);
    *(a1 + 72) = *(a2 + 9);
    *(a1 + 56) = result;
    *(a2 + 8) = 0;
    *(a2 + 9) = 0;
    *(a2 + 7) = 0;
    *(a1 + 80) = 1;
  }

  return result;
}

void ctb::IMDispositionNotification::~IMDispositionNotification(void **this)
{
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }
}

uint64_t std::__optional_copy_base<ctb::IMDispositionNotification,false>::__optional_copy_base[abi:ne200100](uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 80) = 0;
  if (*(a2 + 80) == 1)
  {
    v4 = *a2;
    *(a1 + 12) = *(a2 + 12);
    *a1 = v4;
    if (*(a2 + 55) < 0)
    {
      std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 4), *(a2 + 5));
    }

    else
    {
      v5 = a2[2];
      *(a1 + 48) = *(a2 + 6);
      *(a1 + 32) = v5;
    }

    if (*(a2 + 79) < 0)
    {
      std::string::__init_copy_ctor_external((a1 + 56), *(a2 + 7), *(a2 + 8));
    }

    else
    {
      v6 = *(a2 + 56);
      *(a1 + 72) = *(a2 + 9);
      *(a1 + 56) = v6;
    }

    *(a1 + 80) = 1;
  }

  return a1;
}

void sub_242652ED8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  if (*(v1 + 80) == 1)
  {
    ctb::IMDispositionNotification::~IMDispositionNotification(v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__optional_storage_base<ctb::ClientAuthenticityRequest,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::ClientAuthenticityRequest,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 72) == *(a2 + 72))
  {
    if (*(a1 + 72))
    {
      std::vector<ctb::ClientAuthenticityRequest::Method>::__vdeallocate(a1);
      *a1 = *a2;
      *(a1 + 16) = *(a2 + 16);
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      if (*(a1 + 47) < 0)
      {
        operator delete(*(a1 + 24));
      }

      v4 = *(a2 + 24);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 24) = v4;
      *(a2 + 47) = 0;
      *(a2 + 24) = 0;
      if (*(a1 + 71) < 0)
      {
        operator delete(*(a1 + 48));
      }

      result = *(a2 + 48);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 48) = result;
      *(a2 + 71) = 0;
      *(a2 + 48) = 0;
    }
  }

  else if (*(a1 + 72))
  {
    if (*(a1 + 71) < 0)
    {
      operator delete(*(a1 + 48));
    }

    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    v7 = a1;
    std::vector<ctb::ClientAuthenticityRequest::Method>::__destroy_vector::operator()[abi:ne200100](&v7);
    *(a1 + 72) = 0;
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
    v6 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v6;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 24) = 0;
    result = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = result;
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 48) = 0;
    *(a1 + 72) = 1;
  }

  return result;
}

void std::vector<ctb::ClientAuthenticityRequest::Method>::__vdeallocate(void **a1)
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
        v3 -= 56;
        std::__destroy_at[abi:ne200100]<ctb::ClientAuthenticityRequest::Method,0>(v3);
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

void std::__destroy_at[abi:ne200100]<ctb::ClientAuthenticityRequest::Method,0>(uint64_t a1)
{
  v2 = (a1 + 32);
  std::vector<ctb::ClientAuthenticityRequest::Parameter>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }
}

void std::vector<ctb::ClientAuthenticityRequest::Parameter>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<ctb::ClientAuthenticityRequest::Parameter>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<ctb::ClientAuthenticityRequest::Parameter>::__base_destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v4 = *(a1 + 8);
  while (v4 != a2)
  {
    v5 = v4;
    v4 -= 4;
    if (*(v5 - 8) == 1)
    {
      v6 = *v4;
      if (*v4)
      {
        *(v5 - 3) = v6;
        operator delete(v6);
      }
    }
  }

  *(a1 + 8) = a2;
}

void ctb::ClientAuthenticityRequest::~ClientAuthenticityRequest(void **this)
{
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  v2 = this;
  std::vector<ctb::ClientAuthenticityRequest::Method>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void std::vector<ctb::ClientAuthenticityRequest::Method>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 56;
        std::__destroy_at[abi:ne200100]<ctb::ClientAuthenticityRequest::Method,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

std::string *std::__optional_copy_base<ctb::ClientAuthenticityRequest,false>::__optional_copy_base[abi:ne200100](std::string *a1, uint64_t a2)
{
  a1->__r_.__value_.__s.__data_[0] = 0;
  a1[3].__r_.__value_.__s.__data_[0] = 0;
  if (*(a2 + 72) == 1)
  {
    a1->__r_.__value_.__r.__words[0] = 0;
    a1->__r_.__value_.__l.__size_ = 0;
    a1->__r_.__value_.__r.__words[2] = 0;
    std::vector<ctb::ClientAuthenticityRequest::Method>::__init_with_size[abi:ne200100]<ctb::ClientAuthenticityRequest::Method*,ctb::ClientAuthenticityRequest::Method*>(a1, *a2, *(a2 + 8), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 8) - *a2) >> 3));
    if (*(a2 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(a1 + 1, *(a2 + 24), *(a2 + 32));
    }

    else
    {
      v4 = *(a2 + 24);
      a1[1].__r_.__value_.__r.__words[2] = *(a2 + 40);
      *&a1[1].__r_.__value_.__l.__data_ = v4;
    }

    if (*(a2 + 71) < 0)
    {
      std::string::__init_copy_ctor_external(a1 + 2, *(a2 + 48), *(a2 + 56));
    }

    else
    {
      v5 = *(a2 + 48);
      a1[2].__r_.__value_.__r.__words[2] = *(a2 + 64);
      *&a1[2].__r_.__value_.__l.__data_ = v5;
    }

    a1[3].__r_.__value_.__s.__data_[0] = 1;
  }

  return a1;
}

void sub_24265344C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  if (*(v10 + 47) < 0)
  {
    operator delete(*(v10 + 24));
  }

  a10 = v10;
  std::vector<ctb::ClientAuthenticityRequest::Method>::__destroy_vector::operator()[abi:ne200100](&a10);
  if (*(v10 + 72) == 1)
  {
    ctb::ClientAuthenticityRequest::~ClientAuthenticityRequest(v10);
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<ctb::ClientAuthenticityRequest::Method>::__init_with_size[abi:ne200100]<ctb::ClientAuthenticityRequest::Method*,ctb::ClientAuthenticityRequest::Method*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ctb::ClientAuthenticityRequest::Method>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_242653500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<ctb::ClientAuthenticityRequest::Method>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<ctb::ClientAuthenticityRequest::Method>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ctb::ClientAuthenticityRequest::Method>>(a1, a2);
  }

  std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ctb::ClientAuthenticityRequest::Method>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ctb::ClientAuthenticityRequest::Method>,ctb::ClientAuthenticityRequest::Method*,ctb::ClientAuthenticityRequest::Method*,ctb::ClientAuthenticityRequest::Method*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a2 + v7;
      *(a4 + v7) = *(a2 + v7);
      v9 = (a4 + v7 + 8);
      if (*(a2 + v7 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(v9, *(v8 + 8), *(v8 + 16));
      }

      else
      {
        v10 = *(v8 + 8);
        *(a4 + v7 + 24) = *(v8 + 24);
        *&v9->__r_.__value_.__l.__data_ = v10;
      }

      v11 = a4 + v7;
      *(v11 + 32) = 0;
      *(v11 + 40) = 0;
      v12 = a4 + v7 + 32;
      *(v12 + 16) = 0;
      std::vector<ctb::ClientAuthenticityRequest::Parameter>::__init_with_size[abi:ne200100]<ctb::ClientAuthenticityRequest::Parameter*,ctb::ClientAuthenticityRequest::Parameter*>(v12, *(v8 + 32), *(v8 + 40), (*(v8 + 40) - *(v8 + 32)) >> 5);
      v7 += 56;
    }

    while (v8 + 56 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_24265367C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 + v2 - 56;
    v5 = -v2;
    do
    {
      std::__destroy_at[abi:ne200100]<ctb::ClientAuthenticityRequest::Method,0>(v4);
      v4 -= 56;
      v5 += 56;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<ctb::ClientAuthenticityRequest::Parameter>::__init_with_size[abi:ne200100]<ctb::ClientAuthenticityRequest::Parameter*,ctb::ClientAuthenticityRequest::Parameter*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ctb::ClientAuthenticityRequest::Parameter>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_24265372C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<ctb::ClientAuthenticityRequest::Parameter>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<ctb::ClientAuthenticityRequest::Parameter>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ctb::ClientAuthenticityRequest::Parameter>>(a1, a2);
  }

  std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ctb::ClientAuthenticityRequest::Parameter>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ctb::ClientAuthenticityRequest::Parameter>,ctb::ClientAuthenticityRequest::Parameter*,ctb::ClientAuthenticityRequest::Parameter*,ctb::ClientAuthenticityRequest::Parameter*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      std::__optional_copy_base<std::vector<unsigned char>,false>::__optional_copy_base[abi:ne200100](v4, v6);
      v6 += 32;
      v4 = v11 + 32;
      v11 += 32;
    }

    while (v6 != a3);
  }

  LOBYTE(v9) = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ctb::ClientAuthenticityRequest::Parameter>,ctb::ClientAuthenticityRequest::Parameter*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__optional_copy_base<std::vector<unsigned char>,false>::__optional_copy_base[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a1, *a2, *(a2 + 8), *(a2 + 8) - *a2);
    *(a1 + 24) = 1;
  }

  return a1;
}

void sub_2426538CC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    std::__optional_copy_base<ctb::MLSFileTransfer,false>::__optional_copy_base[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ctb::ClientAuthenticityRequest::Parameter>,ctb::ClientAuthenticityRequest::Parameter*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<ctb::ClientAuthenticityRequest::Parameter>,ctb::ClientAuthenticityRequest::Parameter*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<ctb::ClientAuthenticityRequest::Parameter>,ctb::ClientAuthenticityRequest::Parameter*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = v1;
    v1 -= 4;
    if (*(v3 - 8) == 1)
    {
      v4 = *v1;
      if (*v1)
      {
        *(v3 - 3) = v4;
        operator delete(v4);
      }
    }
  }
}

char *sub_24265397C@<X0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v36 = a1;
  v37 = a2;
  v2 = sub_2426A9EA0();
  v3 = sub_2426A9E70();
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *(v2 + 16);
  if (!v45)
  {

    v9 = MEMORY[0x277D84F90];
LABEL_28:
    sub_242683514(v9, &v54);
    v35 = sub_2426A9EB0();
    (*(*(v35 - 8) + 8))(v36, v35);
    std::vector<std::string>::vector[abi:ne200100](v37, &v54);
    return std::vector<std::string>::~vector[abi:ne200100](&v54.__begin_);
  }

  v8 = 0;
  v43 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v42 = v4 + 16;
  v9 = MEMORY[0x277D84F90];
  v44 = (v4 + 8);
  v40 = v3;
  v41 = v2;
  v38 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v4;
  while (v8 < *(v2 + 16))
  {
    v48 = v9;
    (*(v4 + 16))(v7, v43 + *(v4 + 72) * v8, v3);
    v10 = sub_2426A9E60();
    v11 = *(v10 + 16);
    if (v11)
    {
      v47 = v8;
      v53 = MEMORY[0x277D84F90];
      sub_242684C4C(0, v11, 0);
      v12 = v53;
      v13 = sub_2426A9E90();
      v52 = v13;
      v14 = *(v13 - 8);
      v15 = *(v14 + 16);
      v50 = v14 + 16;
      v51 = v15;
      v16 = *(v14 + 80);
      v46 = v10;
      v17 = v10 + ((v16 + 32) & ~v16);
      v18 = *(v14 + 64);
      v49 = *(v14 + 72);
      v19 = (v14 + 8);
      do
      {
        MEMORY[0x28223BE20](v13);
        v20 = v52;
        v51(&v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v17, v52);
        v54.__begin_ = sub_2426A9E80();
        v54.__end_ = v21;
        v22 = sub_2426ABAB0();
        v24 = v23;
        v13 = (*v19)(&v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v20);
        v53 = v12;
        v26 = *(v12 + 16);
        v25 = *(v12 + 24);
        if (v26 >= v25 >> 1)
        {
          v13 = sub_242684C4C((v25 > 1), v26 + 1, 1);
          v12 = v53;
        }

        *(v12 + 16) = v26 + 1;
        v27 = v12 + 16 * v26;
        *(v27 + 32) = v22;
        *(v27 + 40) = v24;
        v17 += v49;
        --v11;
      }

      while (v11);
      v7 = v38;
      v3 = v40;
      (*v44)(v38, v40);

      v2 = v41;
      v4 = v39;
      v8 = v47;
    }

    else
    {

      result = (*v44)(v7, v3);
      v12 = MEMORY[0x277D84F90];
    }

    v28 = *(v12 + 16);
    v9 = v48;
    v29 = *(v48 + 16);
    v30 = v29 + v28;
    if (__OFADD__(v29, v28))
    {
      goto LABEL_30;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v30 <= *(v9 + 24) >> 1)
    {
      if (*(v12 + 16))
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (v29 <= v30)
      {
        v31 = v29 + v28;
      }

      else
      {
        v31 = v29;
      }

      result = sub_242656310(result, v31, 1, v9);
      v9 = result;
      if (*(v12 + 16))
      {
LABEL_22:
        if ((*(v9 + 24) >> 1) - *(v9 + 16) < v28)
        {
          goto LABEL_32;
        }

        swift_arrayInitWithCopy();

        if (v28)
        {
          v32 = *(v9 + 16);
          v33 = __OFADD__(v32, v28);
          v34 = v32 + v28;
          if (v33)
          {
            goto LABEL_33;
          }

          *(v9 + 16) = v34;
        }

        goto LABEL_4;
      }
    }

    if (v28)
    {
      goto LABEL_31;
    }

LABEL_4:
    if (++v8 == v45)
    {

      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

unint64_t sub_242653EFC@<X0>(unint64_t *a1@<X8>)
{
  result = std::vector<ctb::chatbot::URIEntry>::size[abi:ne200100](v1);
  *a1 = result;
  return result;
}

unint64_t sub_242653F54@<X0>(unint64_t *a1@<X8>)
{
  result = std::vector<ctb::chatbot::MediaEntry>::size[abi:ne200100](v1);
  *a1 = result;
  return result;
}

unint64_t sub_242654160@<X0>(unint64_t *a1@<X8>)
{
  result = std::vector<ctb::chatbot::AddressEntry>::size[abi:ne200100](v1);
  *a1 = result;
  return result;
}

_BYTE *sub_242654250@<X0>(uint64_t (*a1)(int *)@<X2>, _BYTE *a2@<X8>)
{
  v7 = *v2;
  result = a1(&v7);
  v5 = result[1];
  v6 = result[2];
  *a2 = *result;
  a2[1] = v5;
  a2[2] = v6;
  return result;
}

__n128 sub_2426543B8@<Q0>(__n128 *a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v3;
  v8 = v4;
  v5 = std::optional<ctb::chatbot::MenuItem>::operator*[abi:ne200100](v7);
  result = *v5;
  *a1 = *v5;
  return result;
}

uint64_t sub_242654408@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = std::set<std::string>::insert[abi:ne200100](v2, a1);
  *a2 = result;
  *(a2 + 8) = v5 & 1;
  return result;
}

uint64_t sub_242654444@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = std::set<std::string>::count[abi:ne200100](v2, a1);
  *a2 = result;
  return result;
}

void *sub_24265449C@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 8);
  v5 = *v1;
  v6 = v3;
  result = std::optional<ctb::chatbot::MenuItem>::operator*[abi:ne200100](&v5);
  *a1 = *result;
  return result;
}

uint64_t sub_242654508@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24265DE5C(v1);
  *a1 = result;
  return result;
}

uint64_t std::vector<ctb::ClientAuthenticityRequest::Method>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<ctb::ClientAuthenticityRequest::Method>::__emplace_back_slow_path<ctb::ClientAuthenticityRequest::Method const&>(a1, a2);
  }

  else
  {
    std::vector<ctb::ClientAuthenticityRequest::Method>::__construct_one_at_end[abi:ne200100]<ctb::ClientAuthenticityRequest::Method const&>(a1, a2);
    result = v3 + 56;
  }

  a1[1] = result;
  return result;
}

void *std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::vector[abi:ne200100](void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

void *sub_2426545AC(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::vector[abi:ne200100](result);
}

uint64_t std::vector<ctb::ClientAuthenticityRequest::Parameter>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<ctb::ClientAuthenticityRequest::Parameter>::__emplace_back_slow_path<ctb::ClientAuthenticityRequest::Parameter const&>(a1, a2);
  }

  else
  {
    std::__optional_copy_base<std::vector<unsigned char>,false>::__optional_copy_base[abi:ne200100](a1[1], a2);
    result = v3 + 32;
    a1[1] = v3 + 32;
  }

  a1[1] = result;
  return result;
}

uint64_t std::vector<ctb::chatbot::AddressEntry>::push_back[abi:ne200100](uint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<ctb::chatbot::AddressEntry>::__emplace_back_slow_path<ctb::chatbot::AddressEntry const&>(a1, a2);
  }

  else
  {
    std::vector<ctb::chatbot::AddressEntry>::__construct_one_at_end[abi:ne200100]<ctb::chatbot::AddressEntry const&>(a1, a2);
    result = v3 + 48;
  }

  a1[1] = result;
  return result;
}

uint64_t std::vector<ctb::chatbot::URIEntry>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  if (v4 >= a1[2])
  {
    result = std::vector<ctb::chatbot::URIEntry>::__emplace_back_slow_path<ctb::chatbot::URIEntry const&>(a1, a2);
  }

  else
  {
    sub_24266155C(a1[1]);
    *(v4 + 32) = *(a2 + 32);
    result = v4 + 40;
    a1[1] = v4 + 40;
  }

  a1[1] = result;
  return result;
}

uint64_t std::vector<ctb::chatbot::MediaEntry>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<ctb::chatbot::MediaEntry>::__emplace_back_slow_path<ctb::chatbot::MediaEntry const&>(a1, a2);
  }

  else
  {
    std::vector<ctb::chatbot::MediaEntry>::__construct_one_at_end[abi:ne200100]<ctb::chatbot::MediaEntry const&>(a1, a2);
    result = v3 + 72;
  }

  a1[1] = result;
  return result;
}

uint64_t std::vector<ctb::chatbot::OrgNameEntry>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<ctb::chatbot::OrgNameEntry>::__emplace_back_slow_path<ctb::chatbot::OrgNameEntry const&>(a1, a2);
  }

  else
  {
    std::vector<ctb::chatbot::OrgNameEntry>::__construct_one_at_end[abi:ne200100]<ctb::chatbot::OrgNameEntry const&>(a1, a2);
    result = v3 + 32;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t std::vector<ctb::chatbot::CardCarouselContent>::push_back[abi:ne200100](uint64_t *a1, const ctb::chatbot::CardMedia *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<ctb::chatbot::CardCarouselContent>::__emplace_back_slow_path<ctb::chatbot::CardCarouselContent const&>(a1, a2);
  }

  else
  {
    std::vector<ctb::chatbot::CardCarouselContent>::__construct_one_at_end[abi:ne200100]<ctb::chatbot::CardCarouselContent const&>(a1, a2);
    result = v3 + 280;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_24265477C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24265DEA4(v1);
  *a1 = result;
  return result;
}

_DWORD *sub_2426547CC@<X0>(_DWORD *a1@<X8>)
{
  v3 = *(v1 + 4);
  v5 = *v1;
  v6 = v3;
  result = std::optional<ctb::chatbot::MenuItem>::operator*[abi:ne200100](&v5);
  *a1 = *result;
  return result;
}

uint64_t sub_242654894(uint64_t a1)
{
  v2 = sub_24265AB5C(&qword_27ECB57F0, type metadata accessor for std.__1.optional_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___);

  return CxxOptional.init(nilLiteral:)(a1, v2);
}

uint64_t sub_242654910(uint64_t a1)
{
  v2 = sub_24265AB5C(&qword_27ECB5740, type metadata accessor for std.__1.optional_ctb.SIPConferenceInfo.SubjectExt_);

  return CxxOptional.init(nilLiteral:)(a1, v2);
}

uint64_t sub_24265498C(uint64_t a1)
{
  v2 = sub_24265AB5C(&qword_27ECB5748, type metadata accessor for std.__1.optional_ctb.SIPConferenceInfo.Description_);

  return CxxOptional.init(nilLiteral:)(a1, v2);
}

uint64_t sub_242654A0C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::vector[abi:ne200100](a2);
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (a1 + 32);
    do
    {
      ctb::chatbot::URIEntry::URIEntry(&v7, v5);
      std::vector<ctb::chatbot::URIEntry>::push_back[abi:ne200100](a2, &v7);
      std::optional<ctb::SIPConferenceInfo::SubjectExt>::~optional(&v7);
      v5 = (v5 + 40);
      --v4;
    }

    while (v4);
  }

  else
  {
  }
}

uint64_t sub_242654AC0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::vector[abi:ne200100](a2);
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (a1 + 32);
    do
    {
      ctb::chatbot::MediaEntry::MediaEntry(v7, v5);
      std::vector<ctb::chatbot::MediaEntry>::push_back[abi:ne200100](a2, v7);
      ctb::chatbot::MediaEntry::~MediaEntry(v7);
      v5 = (v5 + 72);
      --v4;
    }

    while (v4);
  }

  else
  {
  }
}

uint64_t sub_242654B74@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::vector[abi:ne200100](a2);
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (a1 + 32);
    do
    {
      ctb::chatbot::OrgNameEntry::OrgNameEntry(&v7, v5);
      std::vector<ctb::chatbot::OrgNameEntry>::push_back[abi:ne200100](a2, &v7);
      sub_242658E20(&v7);
      v5 = (v5 + 32);
      --v4;
    }

    while (v4);
  }

  else
  {
  }
}

uint64_t sub_242654C28@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::vector[abi:ne200100](a2);
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (a1 + 32);
    do
    {
      ctb::chatbot::AddressEntry::AddressEntry(v7, v5);
      std::vector<ctb::chatbot::AddressEntry>::push_back[abi:ne200100](a2, v7);
      ctb::chatbot::AddressEntry::~AddressEntry(&v7[0].__r_.__value_.__l.__data_);
      v5 += 3;
      --v4;
    }

    while (v4);
  }

  else
  {
  }
}

uint64_t sub_242654CDC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::vector[abi:ne200100](a2);
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (a1 + 32);
    do
    {
      ctb::ClientAuthenticityRequest::Parameter::Parameter(v7, v5);
      std::vector<ctb::ClientAuthenticityRequest::Parameter>::push_back[abi:ne200100](a2, v7);
      ctb::ClientAuthenticityRequest::Parameter::~Parameter(v7);
      v5 = (v5 + 32);
      --v4;
    }

    while (v4);
  }

  else
  {
  }
}

uint64_t sub_242654D90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::vector[abi:ne200100](a2);
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (a1 + 32);
    do
    {
      ctb::ClientAuthenticityRequest::Method::Method(v7, v5);
      std::vector<ctb::ClientAuthenticityRequest::Method>::push_back[abi:ne200100](a2, v7);
      ctb::ClientAuthenticityRequest::Method::~Method(v7);
      v5 = (v5 + 56);
      --v4;
    }

    while (v4);
  }

  else
  {
  }
}

uint64_t sub_242654E44@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::vector[abi:ne200100](a2);
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (a1 + 32);
    do
    {
      ctb::ProvisioningConfiguration::AccessControl::Server::Server(&v7, v5);
      std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::push_back[abi:ne200100](a2, &v7);
      ctb::ProvisioningConfiguration::AccessControl::Server::~Server(&v7.__r_.__value_.__l.__data_);
      v5 = (v5 + 56);
      --v4;
    }

    while (v4);
  }

  else
  {
  }
}

uint64_t sub_242654F60(uint64_t a1)
{
  v2 = sub_24265AB5C(&qword_27ECB57C0, type metadata accessor for std.__1.optional_ctb.chatbot.CommunicationAddress_);

  return CxxOptional.init(nilLiteral:)(a1, v2);
}

uint64_t sub_242654FDC(uint64_t a1)
{
  v2 = sub_24265AB5C(&qword_27ECB57B8, type metadata accessor for std.__1.optional_ctb.chatbot.MediaList_);

  return CxxOptional.init(nilLiteral:)(a1, v2);
}

uint64_t sub_242655058(uint64_t a1)
{
  v2 = sub_24265AB5C(&qword_27ECB57B0, type metadata accessor for std.__1.optional_ctb.chatbot.OrgName_);

  return CxxOptional.init(nilLiteral:)(a1, v2);
}

uint64_t sub_2426550D4(uint64_t a1)
{
  v2 = sub_24265AB5C(&qword_27ECB57A8, type metadata accessor for std.__1.optional_ctb.chatbot.CategoryList_);

  return CxxOptional.init(nilLiteral:)(a1, v2);
}

uint64_t sub_242655150(uint64_t a1)
{
  v2 = sub_24265AB5C(&qword_27ECB57A0, type metadata accessor for std.__1.optional_ctb.chatbot.WebResources_);

  return CxxOptional.init(nilLiteral:)(a1, v2);
}

uint64_t sub_2426551CC(uint64_t a1)
{
  v2 = sub_24265AB5C(&qword_27ECB57C8, type metadata accessor for std.__1.optional_ctb.chatbot.OrgDetails_);

  return CxxOptional.init(nilLiteral:)(a1, v2);
}

uint64_t sub_24265526C(uint64_t a1)
{
  v2 = sub_24265AB5C(&qword_27ECB57D0, type metadata accessor for std.__1.optional_ctb.chatbot.AddressEntryList_);

  return CxxOptional.init(nilLiteral:)(a1, v2);
}

uint64_t sub_2426552E8(uint64_t a1)
{
  v2 = sub_24265AB5C(&qword_27ECB57F8, type metadata accessor for std.__1.optional_ctb.chatbot.MenuItem_);

  return CxxOptional.init(nilLiteral:)(a1, v2);
}

uint64_t sub_242655364(uint64_t a1)
{
  v2 = sub_24265AB5C(&qword_27ECB5768, type metadata accessor for std.__1.optional_ctb.chatbot.CardTitleStyle_);

  return CxxOptional.init(nilLiteral:)(a1, v2);
}

uint64_t sub_2426553E0(uint64_t a1)
{
  v2 = sub_24265AB5C(&qword_27ECB5760, type metadata accessor for std.__1.optional_ctb.chatbot.CardDescriptionStyle_);

  return CxxOptional.init(nilLiteral:)(a1, v2);
}

uint64_t sub_24265545C(uint64_t a1)
{
  v2 = sub_24265AB5C(&qword_27ECB5758, type metadata accessor for std.__1.optional_ctb.chatbot.CardStyle_);

  return CxxOptional.init(nilLiteral:)(a1, v2);
}

uint64_t sub_2426554D8(uint64_t a1)
{
  v2 = sub_24265AB5C(&qword_27ECB5790, type metadata accessor for std.__1.optional_ctb.chatbot.CardMedia_);

  return CxxOptional.init(nilLiteral:)(a1, v2);
}

uint64_t sub_242655554(uint64_t a1)
{
  v2 = sub_24265AB5C(&qword_27ECB5788, type metadata accessor for std.__1.optional_ctb.chatbot.CardTitle_);

  return CxxOptional.init(nilLiteral:)(a1, v2);
}

uint64_t sub_2426555D0(uint64_t a1)
{
  v2 = sub_24265AB5C(&qword_27ECB5780, type metadata accessor for std.__1.optional_ctb.chatbot.CardDescription_);

  return CxxOptional.init(nilLiteral:)(a1, v2);
}

uint64_t sub_24265564C(uint64_t a1)
{
  v2 = sub_24265AB5C(&qword_27ECB5778, type metadata accessor for std.__1.optional_ctb.chatbot.SuggestedChipList_);

  return CxxOptional.init(nilLiteral:)(a1, v2);
}

uint64_t sub_2426556C8(uint64_t a1)
{
  v2 = sub_24265AB5C(&qword_27ECB5798, type metadata accessor for std.__1.optional_std.__1.variant_ctb.chatbot.CardMessage_ ctb.chatbot.CardCarouselMessage_ ctb.chatbot.SuggestedChipList__);

  return CxxOptional.init(nilLiteral:)(a1, v2);
}

uint64_t sub_242655744(uint64_t a1)
{
  v2 = sub_24265AB5C(&qword_27ECB57E0, type metadata accessor for std.__1.optional_ctb.chatbot.SuggestedActionShowQuery_);

  return CxxOptional.init(nilLiteral:)(a1, v2);
}

uint64_t sub_2426557C0(uint64_t a1)
{
  v2 = sub_24265AB5C(&qword_27ECB57E8, type metadata accessor for std.__1.optional_ctb.chatbot.SuggestedActionShowCoordinates_);

  return CxxOptional.init(nilLiteral:)(a1, v2);
}

uint64_t sub_24265583C(uint64_t a1)
{
  v2 = sub_24265AB5C(&qword_27ECB57D8, type metadata accessor for std.__1.optional_ctb.chatbot.PostbackData_);

  return CxxOptional.init(nilLiteral:)(a1, v2);
}

uint64_t sub_2426558BC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::set<std::string>::set[abi:ne200100](a2);
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (a1 + 32);
    do
    {
      std::string::basic_string(&v7, v5);
      std::set<std::string>::insert[abi:ne200100](a2, &v7.__r_.__value_.__l.__data_);
      std::string::~string(&v7);
      ++v5;
      --v4;
    }

    while (v4);
  }

  else
  {
  }
}

uint64_t sub_242655970(uint64_t a1)
{
  v2 = sub_24265AB5C(&qword_27ECB5770, type metadata accessor for std.__1.optional_CUnsignedLong_);

  return CxxOptional.init(nilLiteral:)(a1, v2);
}

uint64_t sub_242655A2C(uint64_t a1)
{
  v2 = sub_24265AB5C(&qword_27ECB5750, type metadata accessor for std.__1.optional_ctb.CPMGroupManagement.Response_);

  return CxxOptional.init(nilLiteral:)(a1, v2);
}

uint64_t sub_242655AA8(uint64_t a1)
{
  v2 = sub_24265AB5C(&qword_27ECB5730, type metadata accessor for std.__1.optional_ctb.FileTransferDescriptor.FileDescriptor.FileDisposition_);

  return CxxOptional.init(nilLiteral:)(a1, v2);
}

uint64_t sub_242655B24(uint64_t a1)
{
  v2 = sub_24265AB5C(&qword_27ECB5738, type metadata accessor for std.__1.optional_ctb.FileTransferDescriptor.FileDescriptor_);

  return CxxOptional.init(nilLiteral:)(a1, v2);
}

uint64_t sub_242655BBC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(uint64_t *, uint64_t *)@<X4>, uint64_t *a4@<X8>)
{
  v5 = *a1;
  v7 = *a2;
  v8 = v5;
  result = a3(&v8, &v7);
  *a4 = result;
  return result;
}

void (*sub_242655C04(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = *v1;
  v5 = std::__wrap_iter<ctb::ProvisioningConfiguration::AccessControl::Server const*>::operator*[abi:ne200100](v3 + 40);
  ctb::chatbot::URIEntry::URIEntry(v4, v5);
  return sub_242655C8C;
}

void sub_242655C8C(uint64_t *a1)
{
  v1 = std::optional<ctb::SIPConferenceInfo::SubjectExt>::~optional(*a1);

  free(v1);
}

void *sub_242655CB8@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  result = std::__wrap_iter<ctb::chatbot::URIEntry const*>::operator++[abi:ne200100](&v4);
  *a1 = v4;
  return result;
}

void (*sub_242655CF8(uint64_t *a1))(void ***a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = *v1;
  v5 = std::__wrap_iter<ctb::ProvisioningConfiguration::AccessControl::Server const*>::operator*[abi:ne200100](v3 + 72);
  ctb::chatbot::MediaEntry::MediaEntry(v4, v5);
  return sub_242655D80;
}

void sub_242655D80(void ***a1)
{
  ctb::chatbot::MediaEntry::~MediaEntry(*a1);

  free(v1);
}

void *sub_242655DAC@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  result = std::__wrap_iter<ctb::chatbot::MediaEntry const*>::operator++[abi:ne200100](&v4);
  *a1 = v4;
  return result;
}

void (*sub_242655DEC(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *v1;
  v5 = std::__wrap_iter<ctb::ProvisioningConfiguration::AccessControl::Server const*>::operator*[abi:ne200100](v3 + 32);
  ctb::chatbot::OrgNameEntry::OrgNameEntry(v4, v5);
  return sub_242655E74;
}

void sub_242655E74(uint64_t *a1)
{
  v1 = sub_242658E20(*a1);

  free(v1);
}

void *sub_242655EA0@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  result = sub_24265DE28(&v4);
  *a1 = v4;
  return result;
}

void (*sub_242655EE0(uint64_t *a1))(void ***a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = *v1;
  v5 = std::__wrap_iter<ctb::ProvisioningConfiguration::AccessControl::Server const*>::operator*[abi:ne200100](v3 + 48);
  ctb::chatbot::AddressEntry::AddressEntry(v4, v5);
  return sub_242655F68;
}

void sub_242655F68(void ***a1)
{
  ctb::chatbot::AddressEntry::~AddressEntry(*a1);

  free(v1);
}

void *sub_242655F94@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  result = std::__wrap_iter<ctb::chatbot::AddressEntry const*>::operator++[abi:ne200100](&v4);
  *a1 = v4;
  return result;
}

void (*sub_242655FD4(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *v1;
  v5 = std::__wrap_iter<ctb::ProvisioningConfiguration::AccessControl::Server const*>::operator*[abi:ne200100](v3 + 32);
  ctb::ClientAuthenticityRequest::Parameter::Parameter(v4, v5);
  return sub_24265605C;
}

void sub_24265605C(uint64_t *a1)
{
  v1 = ctb::ClientAuthenticityRequest::Parameter::~Parameter(*a1);

  free(v1);
}

void (*sub_242656088(uint64_t *a1))(void ***a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = *v1;
  v5 = std::__wrap_iter<ctb::ProvisioningConfiguration::AccessControl::Server const*>::operator*[abi:ne200100](v3 + 56);
  ctb::ClientAuthenticityRequest::Method::Method(v4, v5);
  return sub_242656110;
}

void sub_242656110(void ***a1)
{
  ctb::ClientAuthenticityRequest::Method::~Method(*a1);

  free(v1);
}

void *sub_24265613C@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  result = sub_24265DE6C(&v4);
  *a1 = v4;
  return result;
}

void (*sub_24265617C(uint64_t *a1))(char ***a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = *v1;
  v5 = std::__wrap_iter<ctb::ProvisioningConfiguration::AccessControl::Server const*>::operator*[abi:ne200100](v3 + 56);
  ctb::ProvisioningConfiguration::AccessControl::Server::Server(v4, v5);
  return sub_242656204;
}

void sub_242656204(char ***a1)
{
  ctb::ProvisioningConfiguration::AccessControl::Server::~Server(*a1);

  free(v1);
}

uint64_t sub_2426562D8(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *, uint64_t *))
{
  v5 = *a1;
  v7 = *a2;
  v8 = v5;
  return a5(&v8, &v7);
}

char *sub_242656310(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECB5468);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_2426564AC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void **std::vector<std::string>::~vector[abi:ne200100](void **a1)
{
  v3 = a1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3, std::vector<std::string>::clear[abi:ne200100]);
  return a1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::push_back[abi:ne200100](uint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::__emplace_back_slow_path<ctb::ProvisioningConfiguration::AccessControl::Server const&>(a1, a2);
  }

  else
  {
    std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::__construct_one_at_end[abi:ne200100]<ctb::ProvisioningConfiguration::AccessControl::Server const&>(a1, a2);
    result = v3 + 56;
  }

  a1[1] = result;
  return result;
}

void *std::set<std::string>::set[abi:ne200100](void *result)
{
  result[2] = 0;
  result[1] = 0;
  *result = result + 1;
  return result;
}

void *sub_242656798(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return std::set<std::string>::set[abi:ne200100](result);
}

uint64_t std::optional<ctb::ProvisioningConfiguration::Messaging::StandaloneMsg>::~optional(uint64_t a1)
{
  if (*(a1 + 40) == 1 && *(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_242656838(uint64_t a1, __int128 *a2)
{
  std::optional<ctb::ProvisioningConfiguration::Messaging::StandaloneMsg>::optional[abi:ne200100](a1, a2);
  std::optional<ctb::ProvisioningConfiguration::Messaging::StandaloneMsg>::~optional(a2);
  return a1;
}

__n128 std::optional<ctb::ProvisioningConfiguration::Messaging::StandaloneMsg>::optional[abi:ne200100](uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 40) = 0;
  if (*(a2 + 40) == 1)
  {
    v2 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v2;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    result = *(a2 + 24);
    *(a1 + 24) = result;
    *(a1 + 40) = 1;
  }

  return result;
}

uint64_t sub_2426568EC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t sub_242656974(uint64_t a1, __int128 *a2)
{
  std::optional<ctb::ProvisioningConfiguration::Messaging::Chat>::optional[abi:ne200100](a1, a2);
  std::optional<ctb::ProvisioningConfiguration::Messaging::Chat>::~optional(a2);
  return a1;
}

uint64_t std::optional<ctb::ProvisioningConfiguration::Messaging::Chat>::optional[abi:ne200100](uint64_t result, __int128 *a2)
{
  *result = 0;
  *(result + 96) = 0;
  if (*(a2 + 96) == 1)
  {
    v2 = *a2;
    v3 = a2[1];
    *(result + 32) = *(a2 + 16);
    *result = v2;
    *(result + 16) = v3;
    v4 = *(a2 + 40);
    *(result + 56) = *(a2 + 7);
    *(result + 40) = v4;
    *(a2 + 6) = 0;
    *(a2 + 7) = 0;
    *(a2 + 5) = 0;
    *(result + 64) = 0;
    *(result + 88) = 0;
    if (*(a2 + 88) == 1)
    {
      v5 = a2[4];
      *(result + 80) = *(a2 + 10);
      *(result + 64) = v5;
      *(a2 + 9) = 0;
      *(a2 + 10) = 0;
      *(a2 + 8) = 0;
      *(result + 88) = 1;
    }

    *(result + 96) = 1;
  }

  return result;
}

uint64_t sub_242656A54(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(uint64_t, uint64_t))
{
  a4();
  a5(a1, a2);
  (a4)(a2);
  return a1;
}

uint64_t sub_242656B1C(uint64_t a1, __int128 *a2)
{
  v4 = std::optional<ctb::ProvisioningConfiguration::Messaging::FileTransfer>::optional[abi:ne200100](a1, a2);
  std::optional<ctb::ProvisioningConfiguration::Messaging::FileTransfer>::~optional(a2, v4);
  return a1;
}

__n128 std::optional<ctb::ProvisioningConfiguration::Messaging::FileTransfer>::optional[abi:ne200100](uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 136) = 0;
  if (*(a2 + 136) == 1)
  {
    v2 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a1 = v2;
    v3 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 24) = v3;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v4 = a2[3];
    *(a1 + 64) = *(a2 + 8);
    *(a1 + 48) = v4;
    *(a2 + 7) = 0;
    *(a2 + 8) = 0;
    *(a2 + 6) = 0;
    v5 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 11);
    *(a1 + 72) = v5;
    *(a2 + 9) = 0;
    *(a2 + 10) = 0;
    *(a2 + 11) = 0;
    v6 = a2[6];
    *(a1 + 112) = *(a2 + 14);
    *(a1 + 96) = v6;
    *(a2 + 12) = 0;
    *(a2 + 13) = 0;
    *(a2 + 14) = 0;
    result = *(a2 + 120);
    *(a1 + 120) = result;
    *(a1 + 136) = 1;
  }

  return result;
}

uint64_t sub_242656C80(uint64_t a1, __int128 *a2)
{
  v4 = std::optional<ctb::ProvisioningConfiguration::Messaging::Chatbot>::optional[abi:ne200100](a1, a2);
  std::optional<ctb::ProvisioningConfiguration::Messaging::Chatbot>::~optional(a2, v4);
  return a1;
}

__n128 std::optional<ctb::ProvisioningConfiguration::Messaging::Chatbot>::optional[abi:ne200100](uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 88) = 0;
  if (*(a2 + 88) == 1)
  {
    v2 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v2;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v3 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 24) = v3;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    result = a2[3];
    *(a1 + 64) = *(a2 + 8);
    *(a1 + 48) = result;
    *(a2 + 7) = 0;
    *(a2 + 8) = 0;
    *(a2 + 6) = 0;
    v5 = *(a2 + 9);
    *(a1 + 80) = *(a2 + 40);
    *(a1 + 72) = v5;
    *(a1 + 88) = 1;
  }

  return result;
}

uint64_t sub_242656DC0(uint64_t a1, ctb::ProvisioningConfiguration *a2)
{
  ctb::ProvisioningConfiguration::ProvisioningConfiguration();
  ctb::ProvisioningConfiguration::~ProvisioningConfiguration(a2);
  return a1;
}

uint64_t sub_242656E24(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 1224))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_242656E44(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1208) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 1224) = v3;
  return result;
}

ctb::ProvisioningConfiguration::AccessControl *ctb::ProvisioningConfiguration::AccessControl::AccessControl(ctb::ProvisioningConfiguration::AccessControl *this, const ctb::ProvisioningConfiguration::AccessControl *a2)
{
  v4 = std::set<std::string>::set[abi:ne200100](this, a2);
  v4[3] = 0;
  v4[4] = 0;
  v4 += 3;
  v4[2] = 0;
  std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::__init_with_size[abi:ne200100]<ctb::ProvisioningConfiguration::AccessControl::Server*,ctb::ProvisioningConfiguration::AccessControl::Server*>(v4, *(a2 + 3), *(a2 + 4), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 4) - *(a2 + 3)) >> 3));
  return this;
}

void *sub_242657084(void *a1, char **a2)
{
  std::construct_at[abi:ne200100]<ctb::ProvisioningConfiguration::AccessControl,ctb::ProvisioningConfiguration::AccessControl,ctb::ProvisioningConfiguration::AccessControl*>(a1, a2);
  ctb::ProvisioningConfiguration::AccessControl::~AccessControl(a2);
  return a1;
}

uint64_t sub_2426570E4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_242657104(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 48) = v3;
  return result;
}

std::string *ctb::ProvisioningConfiguration::AccessControl::Server::Server(std::string *this, const ctb::ProvisioningConfiguration::AccessControl::Server *a2)
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

  std::set<std::string>::set[abi:ne200100](this[1].__r_.__value_.__r.__words, a2 + 24);
  this[2].__r_.__value_.__s.__data_[0] = *(a2 + 48);
  return this;
}

void sub_2426571B4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void ctb::ProvisioningConfiguration::AccessControl::Server::~Server(char **this)
{
  std::__tree<std::string>::destroy((this + 3), this[4]);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t sub_242657260(uint64_t a1, __int128 *a2)
{
  ctb::ProvisioningConfiguration::AccessControl::Server::Server(a1, a2);
  ctb::ProvisioningConfiguration::AccessControl::Server::~Server(a2);
  return a1;
}

uint64_t ctb::ProvisioningConfiguration::AccessControl::Server::Server(uint64_t result, __int128 *a2)
{
  v2 = *a2;
  *(result + 16) = *(a2 + 2);
  *result = v2;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(result + 24) = *(a2 + 3);
  v3 = a2 + 2;
  v4 = *(a2 + 4);
  *(result + 32) = v4;
  v5 = result + 32;
  v6 = *(a2 + 5);
  *(result + 40) = v6;
  if (v6)
  {
    *(v4 + 16) = v5;
    *(a2 + 3) = v3;
    *v3 = 0;
    *(a2 + 5) = 0;
  }

  else
  {
    *(result + 24) = v5;
  }

  *(result + 48) = *(a2 + 48);
  return result;
}

uint64_t sub_24265731C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 56))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_242657370(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

void *sub_242657454(void *a1, void *a2)
{
  std::set<std::string>::set[abi:ne200100](a1, a2);
  std::set<std::string>::~set[abi:ne200100](a2);
  return a1;
}

void *std::set<std::string>::set[abi:ne200100](void *result, void *a2)
{
  *result = *a2;
  v2 = a2 + 1;
  v3 = a2[1];
  result[1] = v3;
  v4 = result + 1;
  v5 = a2[2];
  result[2] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    *a2 = v2;
    *v2 = 0;
    a2[2] = 0;
  }

  else
  {
    *result = v4;
  }

  return result;
}

uint64_t sub_2426574F0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_242657510(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

void std::optional<ctb::ProvisioningConfiguration::Messaging>::~optional(uint64_t a1)
{
  if (*(a1 + 448) == 1)
  {
    ctb::ProvisioningConfiguration::Messaging::~Messaging(a1);
  }
}

_BYTE *sub_2426575CC(_BYTE *a1, uint64_t a2)
{
  std::optional<ctb::ProvisioningConfiguration::Messaging>::optional[abi:ne200100](a1, a2);
  std::optional<ctb::ProvisioningConfiguration::Messaging>::~optional(a2);
  return a1;
}

void std::optional<ctb::ProvisioningConfiguration::Messaging>::optional[abi:ne200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[448] = 0;
  if (*(a2 + 448) == 1)
  {
    ctb::ProvisioningConfiguration::Messaging::Messaging(a1, a2);
    *(v2 + 448) = 1;
  }
}

uint64_t sub_242657664(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 456))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_242657684(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 440) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 456) = v3;
  return result;
}

uint64_t std::optional<ctb::ProvisioningConfiguration::Services>::~optional(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    std::__tree<std::string>::destroy(a1 + 32, *(a1 + 40));
  }

  return a1;
}

uint64_t sub_2426577C8(uint64_t a1, uint64_t a2)
{
  std::optional<ctb::ProvisioningConfiguration::Services>::optional[abi:ne200100]();
  std::optional<ctb::ProvisioningConfiguration::Services>::~optional(a2);
  return a1;
}

void std::optional<ctb::ProvisioningConfiguration::IMS3GPP>::~optional(ctb::ProvisioningConfiguration::IMS3GPP *a1)
{
  if (*(a1 + 528) == 1)
  {
    ctb::ProvisioningConfiguration::IMS3GPP::~IMS3GPP(a1);
  }
}

_BYTE *sub_2426578BC(_BYTE *a1, ctb::ProvisioningConfiguration::IMS3GPP *a2)
{
  std::optional<ctb::ProvisioningConfiguration::IMS3GPP>::optional[abi:ne200100](a1, a2);
  std::optional<ctb::ProvisioningConfiguration::IMS3GPP>::~optional(a2);
  return a1;
}

void std::optional<ctb::ProvisioningConfiguration::IMS3GPP>::optional[abi:ne200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[528] = 0;
  if (*(a2 + 528) == 1)
  {
    ctb::ProvisioningConfiguration::IMS3GPP::IMS3GPP(a1, a2);
    *(v2 + 528) = 1;
  }
}

uint64_t sub_242657954(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 536))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_242657974(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 536) = v3;
  return result;
}

uint64_t sub_242657A98(uint64_t a1, uint64_t a2)
{
  std::optional<ctb::ProvisioningConfiguration::AccessControl>::optional[abi:ne200100](a1, a2);
  std::optional<ctb::ProvisioningConfiguration::AccessControl>::~optional(a2);
  return a1;
}

uint64_t std::optional<ctb::ProvisioningConfiguration::AccessControl>::optional[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 48) = 0;
  if (*(a2 + 48) == 1)
  {
    std::construct_at[abi:ne200100]<ctb::ProvisioningConfiguration::AccessControl,ctb::ProvisioningConfiguration::AccessControl,ctb::ProvisioningConfiguration::AccessControl*>(a1, a2);
    *(a1 + 48) = 1;
  }

  return a1;
}

uint64_t std::optional<ctb::ProvisioningConfiguration::Token>::~optional(uint64_t a1)
{
  if (*(a1 + 32) == 1 && *(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_242657BE8(uint64_t a1, uint64_t a2)
{
  std::optional<ctb::ProvisioningConfiguration::Token>::optional[abi:ne200100](a1, a2);
  std::optional<ctb::ProvisioningConfiguration::Token>::~optional(a2);
  return a1;
}

__n128 std::optional<ctb::ProvisioningConfiguration::Token>::optional[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 32) = 0;
  if (*(a2 + 32) == 1)
  {
    *a1 = *a2;
    result = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = result;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    *(a1 + 32) = 1;
  }

  return result;
}

uint64_t sub_242657D18(uint64_t a1, uint64_t a2)
{
  std::optional<ctb::FileTransferDescriptor::FileDescriptor>::optional[abi:ne200100]();
  std::optional<ctb::FileTransferDescriptor::FileDescriptor>::~optional(a2);
  return a1;
}

uint64_t sub_242657D7C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 152))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_242657D9C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 152) = v3;
  return result;
}

uint64_t std::optional<ctb::SIPConferenceInfo::ReferredInfo>::~optional(uint64_t a1)
{
  if (*(a1 + 32) == 1 && *(a1 + 24) == 1 && *(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_242657EA0(uint64_t a1, __int128 *a2)
{
  std::optional<ctb::SIPConferenceInfo::ReferredInfo>::optional[abi:ne200100](a1, a2);
  std::optional<ctb::SIPConferenceInfo::ReferredInfo>::~optional(a2);
  return a1;
}

uint64_t std::optional<ctb::SIPConferenceInfo::ReferredInfo>::optional[abi:ne200100](uint64_t result, __int128 *a2)
{
  *result = 0;
  *(result + 32) = 0;
  if (*(a2 + 32) == 1)
  {
    *(result + 24) = 0;
    if (*(a2 + 24) == 1)
    {
      v2 = *a2;
      *(result + 16) = *(a2 + 2);
      *result = v2;
      *(a2 + 1) = 0;
      *(a2 + 2) = 0;
      *a2 = 0;
      *(result + 24) = 1;
    }

    *(result + 32) = 1;
  }

  return result;
}

uint64_t sub_242657F50(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_242657F70(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 40) = v3;
  return result;
}

__n128 std::optional<ctb::chatbot::CardStyle>::optional[abi:ne200100](uint64_t a1, __n128 *a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  if (a2[1].n128_u8[8] == 1)
  {
    result = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    *a1 = result;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    a2->n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

uint64_t sub_242658020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t, uint64_t))
{
  v9 = a4();
  a5(v9, a2);
  (a4)(a2);
  return a1;
}

void *std::vector<ctb::SIPConferenceInfo::User>::vector[abi:ne200100](void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<ctb::SIPConferenceInfo::User>::__init_with_size[abi:ne200100]<ctb::SIPConferenceInfo::User*,ctb::SIPConferenceInfo::User*>(a1, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  return a1;
}

void **std::vector<ctb::SIPConferenceInfo::User>::~vector[abi:ne200100](void **a1)
{
  v3 = a1;
  std::vector<ctb::SIPConferenceInfo::User>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

__n128 *sub_242658160(__n128 *a1, __n128 *a2)
{
  std::vector<std::string>::vector[abi:ne200100](a1, a2);
  std::vector<ctb::SIPConferenceInfo::User>::~vector[abi:ne200100](a2);
  return a1;
}

__n128 std::vector<std::string>::vector[abi:ne200100](__n128 *a1, __n128 *a2)
{
  a1->n128_u64[0] = 0;
  a1->n128_u64[1] = 0;
  a1[1].n128_u64[0] = 0;
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

uint64_t sub_242658250(uint64_t a1, uint64_t a2)
{
  std::optional<ctb::SIPConferenceInfo::Description>::optional[abi:ne200100]();
  std::optional<ctb::SIPConferenceInfo::Description>::~optional(a2);
  return a1;
}

uint64_t sub_2426582C8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2426582E8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

std::string *ctb::chatbot::CardCarouselContent::CardCarouselContent(std::string *this, const ctb::chatbot::CardCarouselContent *a2)
{
  v4 = std::__optional_copy_base<ctb::chatbot::CardMedia,false>::__optional_copy_base[abi:ne200100](this, a2);
  sub_24266155C((v4 + 184));
  sub_24266155C(this + 9);
  std::__optional_copy_base<ctb::chatbot::SuggestedChipList,false>::__optional_copy_base[abi:ne200100](&this[10].__r_.__value_.__l.__size_, a2 + 248);
  return this;
}

void sub_242658374(_Unwind_Exception *a1)
{
  if (*(v1 + 240) == 1 && *(v1 + 239) < 0)
  {
    operator delete(*(v1 + 216));
  }

  if (*(v1 + 208) == 1 && *(v1 + 207) < 0)
  {
    operator delete(*(v1 + 184));
  }

  std::optional<ctb::chatbot::CardMedia>::~optional(v1);
  _Unwind_Resume(a1);
}

void ctb::chatbot::CardCarouselContent::~CardCarouselContent(ctb::chatbot::CardCarouselContent *this)
{
  if (*(this + 272) == 1)
  {
    v2 = (this + 248);
    std::vector<ctb::chatbot::SuggestedChip>::__destroy_vector::operator()[abi:ne200100](&v2);
  }

  if (*(this + 240) == 1 && *(this + 239) < 0)
  {
    operator delete(*(this + 27));
  }

  if (*(this + 208) == 1 && *(this + 207) < 0)
  {
    operator delete(*(this + 23));
  }

  std::optional<ctb::chatbot::CardMedia>::~optional(this);
}

uint64_t sub_2426584A4(uint64_t a1, ctb::chatbot::CardCarouselContent *a2)
{
  ctb::chatbot::CardCarouselContent::CardCarouselContent(a1, a2);
  ctb::chatbot::CardCarouselContent::~CardCarouselContent(a2);
  return a1;
}

__n128 ctb::chatbot::CardCarouselContent::CardCarouselContent(uint64_t a1, uint64_t a2)
{
  v3 = std::optional<ctb::chatbot::CardMedia>::optional[abi:ne200100](a1, a2);
  *(v3 + 184) = 0;
  *(v3 + 208) = 0;
  if (*(a2 + 208) == 1)
  {
    result = *(a2 + 184);
    *(v3 + 200) = *(a2 + 200);
    *(v3 + 184) = result;
    *(a2 + 192) = 0;
    *(a2 + 200) = 0;
    *(a2 + 184) = 0;
    *(v3 + 208) = 1;
  }

  *(v3 + 216) = 0;
  *(v3 + 240) = 0;
  if (*(a2 + 240) == 1)
  {
    result = *(a2 + 216);
    *(v3 + 232) = *(a2 + 232);
    *(v3 + 216) = result;
    *(a2 + 224) = 0;
    *(a2 + 232) = 0;
    *(a2 + 216) = 0;
    *(v3 + 240) = 1;
  }

  *(v3 + 248) = 0;
  *(v3 + 272) = 0;
  if (*(a2 + 272) == 1)
  {
    *(v3 + 248) = 0;
    *(v3 + 256) = 0;
    *(v3 + 264) = 0;
    result = *(a2 + 248);
    *(v3 + 248) = result;
    *(v3 + 264) = *(a2 + 264);
    *(a2 + 248) = 0;
    *(a2 + 256) = 0;
    *(a2 + 264) = 0;
    *(v3 + 272) = 1;
  }

  return result;
}

uint64_t sub_2426585D8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 280))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2426585F8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 280) = v3;
  return result;
}

uint64_t sub_2426586E4(uint64_t a1, __n128 *a2)
{
  std::optional<ctb::chatbot::CardStyle>::optional[abi:ne200100](a1, a2);
  std::optional<ctb::SIPConferenceInfo::SubjectExt>::~optional(a2);
  return a1;
}

uint64_t sub_242658744(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_242658764(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t sub_2426587C4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2426587E4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2426588D0(uint64_t a1, __n128 *a2)
{
  ctb::ClientAuthenticityRequest::Parameter::Parameter(a1, a2);
  std::optional<ctb::chatbot::SuggestedChipList>::~optional(a2, std::vector<ctb::chatbot::SuggestedChip>::__destroy_vector::operator()[abi:ne200100]);
  return a1;
}

uint64_t sub_2426589EC(uint64_t a1, __int128 *a2)
{
  std::optional<ctb::chatbot::CardMedia>::optional[abi:ne200100](a1, a2);
  std::optional<ctb::chatbot::CardMedia>::~optional(a2);
  return a1;
}

uint64_t std::optional<ctb::chatbot::CardMedia>::optional[abi:ne200100](uint64_t result, __int128 *a2)
{
  *result = 0;
  *(result + 176) = 0;
  if (*(a2 + 176) == 1)
  {
    v2 = *a2;
    *(result + 16) = *(a2 + 2);
    *result = v2;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v3 = *(a2 + 24);
    *(result + 40) = *(a2 + 5);
    *(result + 24) = v3;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v4 = *(a2 + 6);
    *(result + 56) = 0;
    *(result + 48) = v4;
    *(result + 80) = 0;
    if (*(a2 + 80) == 1)
    {
      v5 = *(a2 + 56);
      *(result + 72) = *(a2 + 9);
      *(result + 56) = v5;
      *(a2 + 8) = 0;
      *(a2 + 9) = 0;
      *(a2 + 7) = 0;
      *(result + 80) = 1;
    }

    *(result + 88) = 0;
    *(result + 112) = 0;
    if (*(a2 + 112) == 1)
    {
      v6 = *(a2 + 88);
      *(result + 104) = *(a2 + 13);
      *(result + 88) = v6;
      *(a2 + 12) = 0;
      *(a2 + 13) = 0;
      *(a2 + 11) = 0;
      *(result + 112) = 1;
    }

    v7 = *(a2 + 120);
    v8 = *(a2 + 34);
    *(result + 144) = 0;
    *(result + 136) = v8;
    *(result + 120) = v7;
    *(result + 168) = 0;
    if (*(a2 + 168) == 1)
    {
      v9 = a2[9];
      *(result + 160) = *(a2 + 20);
      *(result + 144) = v9;
      *(a2 + 19) = 0;
      *(a2 + 20) = 0;
      *(a2 + 18) = 0;
      *(result + 168) = 1;
    }

    *(result + 176) = 1;
  }

  return result;
}

uint64_t sub_242658B5C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 184))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_242658B7C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 184) = v3;
  return result;
}

uint64_t std::optional<std::variant<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>>::~optional(uint64_t a1)
{
  if (*(a1 + 336) == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
  }

  return a1;
}

_BYTE *sub_242658C74(_BYTE *a1, uint64_t a2)
{
  std::optional<std::variant<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>>::optional[abi:ne200100](a1, a2);
  std::optional<std::variant<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>>::~optional(a2);
  return a1;
}

_BYTE *std::optional<std::variant<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>>::optional[abi:ne200100](_BYTE *result, uint64_t a2)
{
  *result = 0;
  result[336] = 0;
  if (*(a2 + 336) == 1)
  {
    result = std::__variant_detail::__move_constructor<std::__variant_detail::__traits<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](result, a2);
    result[336] = 1;
  }

  return result;
}

uint64_t sub_242658D0C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 344))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_242658D2C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 344) = v3;
  return result;
}

std::string *ctb::chatbot::OrgNameEntry::OrgNameEntry(std::string *this, const OrgNameEntry *a2)
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

  LODWORD(this[1].__r_.__value_.__l.__data_) = *(a2 + 6);
  return this;
}

uint64_t sub_242658E20(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 *sub_242658EA0(__n128 *a1, __n128 *a2)
{
  ctb::chatbot::OrgNameEntry::OrgNameEntry(a1, a2);
  sub_242658E20(a2);
  return a1;
}

__n128 ctb::chatbot::OrgNameEntry::OrgNameEntry(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  a2->n128_u64[0] = 0;
  a1[1].n128_u32[2] = a2[1].n128_u32[2];
  return result;
}

ctb::chatbot::MediaEntry *ctb::chatbot::MediaEntry::MediaEntry(ctb::chatbot::MediaEntry *this, const ctb::chatbot::MediaEntry *a2)
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

  sub_24266155C((this + 32));
  *(this + 16) = *(a2 + 16);
  return this;
}

void sub_242658FB0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void ctb::chatbot::MediaEntry::~MediaEntry(void **this)
{
  if (*(this + 56) == 1 && *(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

uint64_t sub_24265906C(uint64_t a1, void **a2)
{
  ctb::chatbot::MediaEntry::MediaEntry(a1, a2);
  ctb::chatbot::MediaEntry::~MediaEntry(a2);
  return a1;
}

uint64_t ctb::chatbot::MediaEntry::MediaEntry(uint64_t result, uint64_t a2)
{
  *result = *a2;
  v2 = *(a2 + 8);
  *(result + 24) = *(a2 + 24);
  *(result + 8) = v2;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  *(result + 32) = 0;
  *(result + 56) = 0;
  if (*(a2 + 56) == 1)
  {
    v3 = *(a2 + 32);
    *(result + 48) = *(a2 + 48);
    *(result + 32) = v3;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 32) = 0;
    *(result + 56) = 1;
  }

  *(result + 64) = *(a2 + 64);
  return result;
}

uint64_t sub_242659130(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 72))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_242659150(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 72) = v3;
  return result;
}

std::string *ctb::chatbot::URIEntry::URIEntry(std::string *this, const URIEntry *a2)
{
  result = sub_24266155C(this);
  result[1].__r_.__value_.__l.__size_ = *(a2 + 4);
  return result;
}

uint64_t sub_242659218(uint64_t a1, __int128 *a2)
{
  ctb::chatbot::URIEntry::URIEntry(a1, a2);
  std::optional<ctb::SIPConferenceInfo::SubjectExt>::~optional(a2);
  return a1;
}

uint64_t ctb::chatbot::URIEntry::URIEntry(uint64_t result, __int128 *a2)
{
  *result = 0;
  *(result + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    v2 = *a2;
    *(result + 16) = *(a2 + 2);
    *result = v2;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    *(result + 24) = 1;
  }

  *(result + 32) = *(a2 + 4);
  return result;
}

uint64_t std::optional<ctb::chatbot::SuggestedChipList>::~optional(uint64_t a1, void (*a2)(uint64_t *))
{
  if (*(a1 + 24) == 1)
  {
    v4 = a1;
    a2(&v4);
  }

  return a1;
}

uint64_t sub_2426593A4(uint64_t a1, __n128 *a2)
{
  ctb::ClientAuthenticityRequest::Parameter::Parameter(a1, a2);
  std::optional<ctb::chatbot::SuggestedChipList>::~optional(a2, std::vector<ctb::chatbot::WebEntry>::__destroy_vector::operator()[abi:ne200100]);
  return a1;
}

uint64_t sub_242659404(uint64_t a1, __n128 *a2, uint64_t a3, void (*a4)(uint64_t *))
{
  v7 = std::optional<ctb::chatbot::SuggestedChipList>::~optional(a1, a4);
  ctb::ClientAuthenticityRequest::Parameter::Parameter(v7, a2);
  std::optional<ctb::chatbot::SuggestedChipList>::~optional(a2, a4);
  return a1;
}

uint64_t std::optional<ctb::chatbot::MenuItem>::~optional(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *))
{
  if (*(a1 + 24) == 1)
  {
    v5 = a1;
    a3(&v5);
  }

  return a1;
}

{
  if (*(a1 + 24) == 1)
  {
    v5 = a1;
    a3(&v5);
  }

  return a1;
}

uint64_t sub_242659568(uint64_t a1, __n128 *a2)
{
  ctb::ClientAuthenticityRequest::Parameter::Parameter(a1, a2);
  std::optional<ctb::chatbot::MenuItem>::~optional(a2, std::vector<std::string>::clear[abi:ne200100], std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]);
  return a1;
}

uint64_t sub_2426596BC(uint64_t a1, __n128 *a2)
{
  ctb::ClientAuthenticityRequest::Parameter::Parameter(a1, a2);
  std::optional<ctb::chatbot::MenuItem>::~optional(a2, std::vector<ctb::chatbot::OrgNameEntry>::clear[abi:ne200100], std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]);
  return a1;
}

uint64_t sub_242659810(uint64_t a1, __n128 *a2)
{
  ctb::ClientAuthenticityRequest::Parameter::Parameter(a1, a2);
  std::optional<ctb::chatbot::MenuItem>::~optional(a2, std::vector<ctb::chatbot::MediaEntry>::__base_destruct_at_end[abi:ne200100], std::vector<ctb::chatbot::CardCarouselContent>::__destroy_vector::operator()[abi:ne200100]);
  return a1;
}

uint64_t sub_242659898(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *))
{
  v9 = std::optional<ctb::chatbot::MenuItem>::~optional(a1, a4, a5);
  ctb::ClientAuthenticityRequest::Parameter::Parameter(v9, a2);
  std::optional<ctb::chatbot::MenuItem>::~optional(a2, a4, a5);
  return a1;
}

uint64_t sub_242659960(uint64_t a1, uint64_t a2)
{
  std::optional<ctb::chatbot::CommunicationAddress>::optional[abi:ne200100]();
  std::optional<ctb::chatbot::CommunicationAddress>::~optional(a2);
  return a1;
}

uint64_t sub_2426599C4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 104))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2426599E4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 104) = v3;
  return result;
}

void std::optional<ctb::chatbot::OrgDetails>::~optional(ctb::chatbot::OrgDetails *a1)
{
  if (*(a1 + 264) == 1)
  {
    ctb::chatbot::OrgDetails::~OrgDetails(a1);
  }
}

_BYTE *sub_242659AB8(_BYTE *a1, ctb::chatbot::OrgDetails *a2)
{
  std::optional<ctb::chatbot::OrgDetails>::optional[abi:ne200100](a1, a2);
  std::optional<ctb::chatbot::OrgDetails>::~optional(a2);
  return a1;
}

void std::optional<ctb::chatbot::OrgDetails>::optional[abi:ne200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[264] = 0;
  if (*(a2 + 264) == 1)
  {
    std::__optional_move_base<ctb::chatbot::CommunicationAddress,false>::__optional_move_base[abi:ne200100](a1, a2);
    *(v3 + 104) = 0;
    *(v3 + 128) = 0;
    if (*(a2 + 128) == 1)
    {
      *(v3 + 104) = 0;
      *(v3 + 112) = 0;
      *(v3 + 120) = 0;
      *(v3 + 104) = *(a2 + 104);
      *(v3 + 120) = *(a2 + 120);
      *(a2 + 104) = 0;
      *(a2 + 112) = 0;
      *(a2 + 120) = 0;
      *(v3 + 128) = 1;
    }

    *(v3 + 136) = 0;
    *(v3 + 160) = 0;
    if (*(a2 + 160) == 1)
    {
      *(v3 + 136) = 0;
      *(v3 + 144) = 0;
      *(v3 + 152) = 0;
      *(v3 + 136) = *(a2 + 136);
      *(v3 + 152) = *(a2 + 152);
      *(a2 + 136) = 0;
      *(a2 + 144) = 0;
      *(a2 + 152) = 0;
      *(v3 + 160) = 1;
    }

    *(v3 + 168) = 0;
    *(v3 + 192) = 0;
    if (*(a2 + 192) == 1)
    {
      v4 = *(a2 + 168);
      *(v3 + 184) = *(a2 + 184);
      *(v3 + 168) = v4;
      *(a2 + 176) = 0;
      *(a2 + 184) = 0;
      *(a2 + 168) = 0;
      *(v3 + 192) = 1;
    }

    *(v3 + 200) = 0;
    *(v3 + 224) = 0;
    if (*(a2 + 224) == 1)
    {
      *(v3 + 200) = 0;
      *(v3 + 208) = 0;
      *(v3 + 216) = 0;
      *(v3 + 200) = *(a2 + 200);
      *(v3 + 216) = *(a2 + 216);
      *(a2 + 200) = 0;
      *(a2 + 208) = 0;
      *(a2 + 216) = 0;
      *(v3 + 224) = 1;
    }

    *(v3 + 232) = 0;
    *(v3 + 256) = 0;
    if (*(a2 + 256) == 1)
    {
      *(v3 + 232) = 0;
      *(v3 + 240) = 0;
      *(v3 + 248) = 0;
      *(v3 + 232) = *(a2 + 232);
      *(v3 + 248) = *(a2 + 248);
      *(a2 + 232) = 0;
      *(a2 + 240) = 0;
      *(a2 + 248) = 0;
      *(v3 + 256) = 1;
    }

    *(v3 + 264) = 1;
  }
}

uint64_t sub_242659C94(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 272))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_242659CB4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 264) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 272) = v3;
  return result;
}

std::string *ctb::chatbot::AddressEntry::AddressEntry(std::string *this, __int128 *a2)
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

void sub_242659DB0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void ctb::chatbot::AddressEntry::~AddressEntry(void **this)
{
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t sub_242659E60(uint64_t a1, __int128 *a2)
{
  ctb::chatbot::AddressEntry::AddressEntry(a1, a2);
  ctb::chatbot::AddressEntry::~AddressEntry(a2);
  return a1;
}

__n128 ctb::chatbot::AddressEntry::AddressEntry(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v2;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  result = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = result;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 3) = 0;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

__n128 *sub_24265A020(__n128 *a1, __n128 *a2)
{
  std::string::basic_string[abi:ne200100](a1, a2);
  std::string::~string(a2);
  return a1;
}

__n128 std::string::basic_string[abi:ne200100](__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  a2->n128_u64[0] = 0;
  return result;
}

uint64_t std::optional<ctb::SIPConferenceInfo::SubjectExt>::~optional(uint64_t a1)
{
  if (*(a1 + 24) == 1 && *(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

ctb::chatbot::VerificationDetails *ctb::chatbot::VerificationDetails::VerificationDetails(ctb::chatbot::VerificationDetails *this, const ctb::chatbot::VerificationDetails *a2)
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

  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((this + 32), *(a2 + 4), *(a2 + 5));
  }

  else
  {
    v5 = *(a2 + 2);
    *(this + 6) = *(a2 + 6);
    *(this + 2) = v5;
  }

  return this;
}

void sub_24265A1A4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24265A210(uint64_t a1, void **a2)
{
  ctb::chatbot::VerificationDetails::VerificationDetails(a1, a2);
  ctb::chatbot::VerificationDetails::~VerificationDetails(a2);
  return a1;
}

__n128 ctb::chatbot::VerificationDetails::VerificationDetails(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v2;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  result = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 32) = 0;
  return result;
}

uint64_t sub_24265A2AC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[56])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_24265A300(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_24265A444(uint64_t a1, __n128 *a2)
{
  ctb::ClientAuthenticityRequest::Parameter::Parameter(a1, a2);
  std::optional<ctb::chatbot::MenuItem>::~optional(a2, std::__variant_detail::__dtor<std::__variant_detail::__traits<ctb::chatbot::SuggestedChip,ctb::chatbot::MenuL1>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100], std::vector<ctb::chatbot::MenuL1Content>::__destroy_vector::operator()[abi:ne200100]);
  return a1;
}

ctb::ClientAuthenticityRequest::Method *ctb::ClientAuthenticityRequest::Method::Method(ctb::ClientAuthenticityRequest::Method *this, const ctb::ClientAuthenticityRequest::Method *a2)
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
  std::vector<ctb::ClientAuthenticityRequest::Parameter>::__init_with_size[abi:ne200100]<ctb::ClientAuthenticityRequest::Parameter*,ctb::ClientAuthenticityRequest::Parameter*>(this + 32, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 5);
  return this;
}

void sub_24265A560(_Unwind_Exception *exception_object)
{
  if (*(v2 + 31) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void ctb::ClientAuthenticityRequest::Method::~Method(void **this)
{
  v2 = this + 4;
  std::vector<ctb::chatbot::CardCarouselContent>::__destroy_vector::operator()[abi:ne200100](&v2, std::vector<ctb::ClientAuthenticityRequest::Parameter>::__base_destruct_at_end[abi:ne200100]);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

uint64_t sub_24265A62C(uint64_t a1, void **a2)
{
  ctb::ClientAuthenticityRequest::Method::Method(a1, a2);
  ctb::ClientAuthenticityRequest::Method::~Method(a2);
  return a1;
}

__n128 ctb::ClientAuthenticityRequest::Method::Method(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v2;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  result = *(a2 + 32);
  *(a1 + 32) = result;
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return result;
}

uint64_t sub_24265A6D0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24265A6F0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 56) = v3;
  return result;
}

std::string *ctb::ClientAuthenticityRequest::ClientAuthenticityRequest(std::string *this, const ctb::ClientAuthenticityRequest *a2)
{
  this->__r_.__value_.__r.__words[0] = 0;
  this->__r_.__value_.__l.__size_ = 0;
  this->__r_.__value_.__r.__words[2] = 0;
  std::vector<ctb::ClientAuthenticityRequest::Method>::__init_with_size[abi:ne200100]<ctb::ClientAuthenticityRequest::Method*,ctb::ClientAuthenticityRequest::Method*>(this, *a2, *(a2 + 1), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 1) - *a2) >> 3));
  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v4 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v4;
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(this + 2, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v5 = *(a2 + 3);
    this[2].__r_.__value_.__r.__words[2] = *(a2 + 8);
    *&this[2].__r_.__value_.__l.__data_ = v5;
  }

  return this;
}

void sub_24265A800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  if (*(v10 + 47) < 0)
  {
    operator delete(*(v10 + 24));
  }

  a10 = v10;
  std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::__destroy_vector::operator()[abi:ne200100](&a10, std::__destroy_at[abi:ne200100]<ctb::ClientAuthenticityRequest::Method,0>);
  _Unwind_Resume(a1);
}

uint64_t sub_24265A894(uint64_t a1, void **a2)
{
  ctb::ClientAuthenticityRequest::ClientAuthenticityRequest(a1, a2);
  ctb::ClientAuthenticityRequest::~ClientAuthenticityRequest(a2);
  return a1;
}

__n128 ctb::ClientAuthenticityRequest::ClientAuthenticityRequest(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v2 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v2;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 24) = 0;
  result = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = result;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 48) = 0;
  return result;
}

uint64_t sub_24265A9C4(uint64_t a1, __n128 *a2)
{
  ctb::ClientAuthenticityRequest::Parameter::Parameter(a1, a2);
  ctb::ClientAuthenticityRequest::Parameter::~Parameter(a2);
  return a1;
}

__n128 ctb::ClientAuthenticityRequest::Parameter::Parameter(uint64_t a1, __n128 *a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  if (a2[1].n128_u8[8] == 1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    result = *a2;
    *a1 = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    a2->n128_u64[0] = 0;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

unint64_t sub_24265AAC0()
{
  result = qword_27ECB5658;
  if (!qword_27ECB5658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECB5658);
  }

  return result;
}

uint64_t sub_24265AB5C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

ctb::chatbot::MenuItem *ctb::chatbot::MenuItem::MenuItem(ctb::chatbot::MenuItem *this, const ctb::chatbot::MenuItem *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  std::vector<ctb::chatbot::MenuL0Content>::__init_with_size[abi:ne200100]<ctb::chatbot::MenuL0Content*,ctb::chatbot::MenuL0Content*>(this, *a2, *(a2 + 1), 0xEF7BDEF7BDEF7BDFLL * ((*(a2 + 1) - *a2) >> 3));
  return this;
}

_BYTE *ctb::ClientAuthenticityRequest::Parameter::Parameter(_BYTE *this)
{
  *this = 0;
  this[24] = 0;
  return this;
}

_BYTE *std::optional<ctb::chatbot::SuggestedActionShowCoordinates>::optional[abi:ne200100](_BYTE *result)
{
  *result = 0;
  result[16] = 0;
  return result;
}

_BYTE *sub_24265B32C(_BYTE *result)
{
  *result = 0;
  *(result + 1) = 0;
  *(result + 2) = 0;
  return std::optional<ctb::chatbot::SuggestedActionShowCoordinates>::optional[abi:ne200100](result);
}

void *ctb::chatbot::AddressEntryList::AddressEntryList(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<ctb::chatbot::AddressEntry>::__init_with_size[abi:ne200100]<ctb::chatbot::AddressEntry*,ctb::chatbot::AddressEntry*>(a1, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 4));
  return a1;
}

_BYTE *std::optional<ctb::chatbot::OrgDetails>::optional[abi:ne200100](_BYTE *result)
{
  *result = 0;
  result[264] = 0;
  return result;
}

_BYTE *sub_24265B3A0(_BYTE *result)
{
  *(result + 15) = 0u;
  *(result + 16) = 0u;
  *(result + 13) = 0u;
  *(result + 14) = 0u;
  *(result + 11) = 0u;
  *(result + 12) = 0u;
  *(result + 9) = 0u;
  *(result + 10) = 0u;
  *(result + 7) = 0u;
  *(result + 8) = 0u;
  *(result + 5) = 0u;
  *(result + 6) = 0u;
  *(result + 3) = 0u;
  *(result + 4) = 0u;
  *(result + 1) = 0u;
  *(result + 2) = 0u;
  *result = 0u;
  return std::optional<ctb::chatbot::OrgDetails>::optional[abi:ne200100](result);
}

std::string *ctb::chatbot::CommunicationAddress::CommunicationAddress(std::string *this, const ctb::chatbot::CommunicationAddress *a2)
{
  v4 = ctb::chatbot::TelephoneInformation::TelephoneInformation(this, a2);
  v4[3].__r_.__value_.__r.__words[0] = 0;
  v4[3].__r_.__value_.__l.__size_ = 0;
  v4 += 3;
  v4->__r_.__value_.__r.__words[2] = 0;
  std::vector<ctb::chatbot::URIEntry>::__init_with_size[abi:ne200100]<ctb::chatbot::URIEntry*,ctb::chatbot::URIEntry*>(v4, *(a2 + 9), *(a2 + 10), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 10) - *(a2 + 9)) >> 3));
  return this;
}

_BYTE *std::optional<ctb::chatbot::CommunicationAddress>::optional[abi:ne200100](_BYTE *result)
{
  *result = 0;
  result[96] = 0;
  return result;
}

_BYTE *sub_24265B444(_BYTE *result)
{
  *(result + 12) = 0;
  *(result + 4) = 0u;
  *(result + 5) = 0u;
  *(result + 2) = 0u;
  *(result + 3) = 0u;
  *result = 0u;
  *(result + 1) = 0u;
  return std::optional<ctb::chatbot::CommunicationAddress>::optional[abi:ne200100](result);
}

ctb::chatbot::MediaList *ctb::chatbot::MediaList::MediaList(ctb::chatbot::MediaList *this, const ctb::chatbot::MediaList *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  std::vector<ctb::chatbot::MediaEntry>::__init_with_size[abi:ne200100]<ctb::chatbot::MediaEntry*,ctb::chatbot::MediaEntry*>(this, *a2, *(a2 + 1), 0x8E38E38E38E38E39 * ((*(a2 + 1) - *a2) >> 3));
  return this;
}

ctb::chatbot::OrgName *ctb::chatbot::OrgName::OrgName(ctb::chatbot::OrgName *this, const ctb::chatbot::OrgName *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  std::vector<ctb::chatbot::OrgNameEntry>::__init_with_size[abi:ne200100]<ctb::chatbot::OrgNameEntry*,ctb::chatbot::OrgNameEntry*>(this, *a2, *(a2 + 1), (*(a2 + 1) - *a2) >> 5);
  return this;
}

ctb::chatbot::CategoryList *ctb::chatbot::CategoryList::CategoryList(ctb::chatbot::CategoryList *this, const ctb::chatbot::CategoryList *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this, *a2, *(a2 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 3));
  return this;
}

ctb::chatbot::WebResources *ctb::chatbot::WebResources::WebResources(ctb::chatbot::WebResources *this, const WebResources *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  std::vector<ctb::chatbot::WebEntry>::__init_with_size[abi:ne200100]<ctb::chatbot::WebEntry*,ctb::chatbot::WebEntry*>(this, a2->var0.var0, a2->var0.var1, 0xAAAAAAAAAAAAAAABLL * ((a2->var0.var1 - a2->var0.var0) >> 4));
  return this;
}

_BYTE *std::optional<std::variant<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>>::optional[abi:ne200100](_BYTE *result)
{
  *result = 0;
  result[336] = 0;
  return result;
}

_BYTE *sub_24265B5A0(_BYTE *result)
{
  *(result + 42) = 0;
  *(result + 19) = 0u;
  *(result + 20) = 0u;
  *(result + 17) = 0u;
  *(result + 18) = 0u;
  *(result + 15) = 0u;
  *(result + 16) = 0u;
  *(result + 13) = 0u;
  *(result + 14) = 0u;
  *(result + 11) = 0u;
  *(result + 12) = 0u;
  *(result + 9) = 0u;
  *(result + 10) = 0u;
  *(result + 7) = 0u;
  *(result + 8) = 0u;
  *(result + 5) = 0u;
  *(result + 6) = 0u;
  *(result + 3) = 0u;
  *(result + 4) = 0u;
  *(result + 1) = 0u;
  *(result + 2) = 0u;
  *result = 0u;
  return std::optional<std::variant<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>>::optional[abi:ne200100](result);
}

_BYTE *std::optional<ctb::chatbot::CardMedia>::optional[abi:ne200100](_BYTE *result)
{
  *result = 0;
  result[176] = 0;
  return result;
}

_BYTE *sub_24265B5F0(_BYTE *result)
{
  *(result + 22) = 0;
  *(result + 9) = 0u;
  *(result + 10) = 0u;
  *(result + 7) = 0u;
  *(result + 8) = 0u;
  *(result + 5) = 0u;
  *(result + 6) = 0u;
  *(result + 3) = 0u;
  *(result + 4) = 0u;
  *(result + 1) = 0u;
  *(result + 2) = 0u;
  *result = 0u;
  return std::optional<ctb::chatbot::CardMedia>::optional[abi:ne200100](result);
}

ctb::chatbot::SuggestedChipList *ctb::chatbot::SuggestedChipList::SuggestedChipList(ctb::chatbot::SuggestedChipList *this, const ctb::chatbot::SuggestedChipList *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  std::vector<ctb::chatbot::SuggestedChip>::__init_with_size[abi:ne200100]<ctb::chatbot::SuggestedChip*,ctb::chatbot::SuggestedChip*>(this, *a2, *(a2 + 1), 0x34F72C234F72C235 * ((*(a2 + 1) - *a2) >> 3));
  return this;
}

_BYTE *std::optional<unsigned long>::optional[abi:ne200100](_BYTE *result)
{
  *result = 0;
  result[8] = 0;
  return result;
}

_BYTE *sub_24265B67C(_BYTE *result)
{
  *result = 0;
  *(result + 1) = 0;
  return std::optional<unsigned long>::optional[abi:ne200100](result);
}

_BYTE *sub_24265B690(_BYTE *result)
{
  *result = 0;
  result[3] = 0;
  return result;
}

_BYTE *std::optional<ctb::ProvisioningConfiguration::Services::DataOffBehavior>::optional[abi:ne200100](_BYTE *result)
{
  *result = 0;
  result[4] = 0;
  return result;
}

std::string *ctb::SIPConferenceInfo::Description::Description(std::string *this, const ctb::SIPConferenceInfo::Description *a2)
{
  v3 = sub_24266155C(this);
  sub_24266155C((v3 + 32));
  return this;
}

void sub_24265B6FC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1 && *(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::optional<ctb::SIPConferenceInfo::Description>::optional[abi:ne200100](_BYTE *result)
{
  *result = 0;
  result[64] = 0;
  return result;
}

_BYTE *sub_24265B738(_BYTE *result)
{
  *(result + 8) = 0;
  *(result + 2) = 0u;
  *(result + 3) = 0u;
  *result = 0u;
  *(result + 1) = 0u;
  return std::optional<ctb::SIPConferenceInfo::Description>::optional[abi:ne200100](result);
}

_BYTE *sub_24265B74C(_BYTE *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  return ctb::ClientAuthenticityRequest::Parameter::Parameter(this);
}

_BYTE *std::optional<ctb::FileTransferDescriptor::FileDescriptor>::optional[abi:ne200100](_BYTE *result)
{
  *result = 0;
  result[144] = 0;
  return result;
}

_BYTE *sub_24265B770(_BYTE *result)
{
  *(result + 18) = 0;
  *(result + 7) = 0u;
  *(result + 8) = 0u;
  *(result + 5) = 0u;
  *(result + 6) = 0u;
  *(result + 3) = 0u;
  *(result + 4) = 0u;
  *(result + 1) = 0u;
  *(result + 2) = 0u;
  *result = 0u;
  return std::optional<ctb::FileTransferDescriptor::FileDescriptor>::optional[abi:ne200100](result);
}

__n128 *sub_24265B830(__n128 *a1, __n128 *a2)
{
  std::vector<std::string>::vector[abi:ne200100](a1, a2);
  ctb::chatbot::MenuItem::~MenuItem(a2);
  return a1;
}

uint64_t sub_24265B8A4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24265B8C4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

__n128 *sub_24265B98C(__n128 *a1, __n128 *a2)
{
  ctb::chatbot::SuggestedActionShowQuery::SuggestedActionShowQuery(a1, a2);
  sub_242658E20(a2);
  return a1;
}

__n128 ctb::chatbot::SuggestedActionShowQuery::SuggestedActionShowQuery(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  a2->n128_u64[0] = 0;
  return result;
}

uint64_t sub_24265BAFC(uint64_t a1, ctb::chatbot::OrgDetails *a2)
{
  ctb::chatbot::OrgDetails::OrgDetails(a1, a2);
  ctb::chatbot::OrgDetails::~OrgDetails(a2);
  return a1;
}

__n128 ctb::chatbot::OrgDetails::OrgDetails(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = std::__optional_move_base<ctb::chatbot::CommunicationAddress,false>::__optional_move_base[abi:ne200100](a1, a2).n128_u64[0];
  *(v3 + 104) = 0;
  *(v3 + 128) = 0;
  if (*(a2 + 128) == 1)
  {
    *(v3 + 104) = 0;
    *(v3 + 112) = 0;
    *(v3 + 120) = 0;
    result = *(a2 + 104);
    *(v3 + 104) = result;
    *(v3 + 120) = *(a2 + 120);
    *(a2 + 104) = 0;
    *(a2 + 112) = 0;
    *(a2 + 120) = 0;
    *(v3 + 128) = 1;
  }

  *(v3 + 136) = 0;
  *(v3 + 160) = 0;
  if (*(a2 + 160) == 1)
  {
    *(v3 + 136) = 0;
    *(v3 + 144) = 0;
    *(v3 + 152) = 0;
    result = *(a2 + 136);
    *(v3 + 136) = result;
    *(v3 + 152) = *(a2 + 152);
    *(a2 + 136) = 0;
    *(a2 + 144) = 0;
    *(a2 + 152) = 0;
    *(v3 + 160) = 1;
  }

  *(v3 + 168) = 0;
  *(v3 + 192) = 0;
  if (*(a2 + 192) == 1)
  {
    result = *(a2 + 168);
    *(v3 + 184) = *(a2 + 184);
    *(v3 + 168) = result;
    *(a2 + 176) = 0;
    *(a2 + 184) = 0;
    *(a2 + 168) = 0;
    *(v3 + 192) = 1;
  }

  *(v3 + 200) = 0;
  *(v3 + 224) = 0;
  if (*(a2 + 224) == 1)
  {
    *(v3 + 200) = 0;
    *(v3 + 208) = 0;
    *(v3 + 216) = 0;
    result = *(a2 + 200);
    *(v3 + 200) = result;
    *(v3 + 216) = *(a2 + 216);
    *(a2 + 200) = 0;
    *(a2 + 208) = 0;
    *(a2 + 216) = 0;
    *(v3 + 224) = 1;
  }

  *(v3 + 232) = 0;
  *(v3 + 256) = 0;
  if (*(a2 + 256) == 1)
  {
    *(v3 + 232) = 0;
    *(v3 + 240) = 0;
    *(v3 + 248) = 0;
    result = *(a2 + 232);
    *(v3 + 232) = result;
    *(v3 + 248) = *(a2 + 248);
    *(a2 + 232) = 0;
    *(a2 + 240) = 0;
    *(a2 + 248) = 0;
    *(v3 + 256) = 1;
  }

  return result;
}

uint64_t sub_24265BCB8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 264))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24265BCD8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 248) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 264) = v3;
  return result;
}

uint64_t sub_24265BDA8(uint64_t a1, __int128 *a2)
{
  ctb::chatbot::CommunicationAddress::CommunicationAddress(a1, a2);
  ctb::chatbot::CommunicationAddress::~CommunicationAddress(a2);
  return a1;
}

__n128 ctb::chatbot::CommunicationAddress::CommunicationAddress(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v2;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v3 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v3;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 3) = 0;
  v4 = a2[3];
  *(a1 + 64) = *(a2 + 8);
  *(a1 + 48) = v4;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  *(a2 + 6) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  result = *(a2 + 72);
  *(a1 + 72) = result;
  *(a1 + 88) = *(a2 + 11);
  *(a2 + 9) = 0;
  *(a2 + 10) = 0;
  *(a2 + 11) = 0;
  return result;
}

uint64_t sub_24265BE74(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 96))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24265BE94(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 96) = v3;
  return result;
}

__n128 *sub_24265BF88(__n128 *a1, __n128 *a2)
{
  std::vector<std::string>::vector[abi:ne200100](a1, a2);
  ctb::chatbot::MediaList::~MediaList(a2);
  return a1;
}

__n128 *sub_24265C098(__n128 *a1, __n128 *a2)
{
  std::vector<std::string>::vector[abi:ne200100](a1, a2);
  ctb::chatbot::OrgName::~OrgName(a2);
  return a1;
}

__n128 *sub_24265C1A8(__n128 *a1, __n128 *a2)
{
  std::vector<std::string>::vector[abi:ne200100](a1, a2);
  ctb::chatbot::CategoryList::~CategoryList(a2);
  return a1;
}

void **std::vector<ctb::chatbot::WebEntry>::~vector[abi:ne200100](void **a1)
{
  v3 = a1;
  std::vector<ctb::chatbot::WebEntry>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

__n128 *sub_24265C2A4(__n128 *a1, __n128 *a2)
{
  std::vector<std::string>::vector[abi:ne200100](a1, a2);
  std::vector<ctb::chatbot::WebEntry>::~vector[abi:ne200100](a2);
  return a1;
}

uint64_t sub_24265C364(uint64_t a1, uint64_t a2)
{
  std::variant<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>::variant[abi:ne200100]();
  std::variant<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>::~variant[abi:ne200100](a2);
  return a1;
}

uint64_t sub_24265C3C8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 336))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24265C3E8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 328) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 336) = v3;
  return result;
}

uint64_t sub_24265C4D0(uint64_t a1, __int128 *a2)
{
  ctb::chatbot::CardMedia::CardMedia(a1, a2);
  ctb::chatbot::CardMedia::~CardMedia(a2);
  return a1;
}

__n128 ctb::chatbot::CardMedia::CardMedia(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v2;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v3 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v3;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 3) = 0;
  v4 = *(a2 + 6);
  *(a1 + 56) = 0;
  *(a1 + 48) = v4;
  *(a1 + 80) = 0;
  if (*(a2 + 80) == 1)
  {
    v5 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 9);
    *(a1 + 56) = v5;
    *(a2 + 8) = 0;
    *(a2 + 9) = 0;
    *(a2 + 7) = 0;
    *(a1 + 80) = 1;
  }

  *(a1 + 88) = 0;
  *(a1 + 112) = 0;
  if (*(a2 + 112) == 1)
  {
    v6 = *(a2 + 88);
    *(a1 + 104) = *(a2 + 13);
    *(a1 + 88) = v6;
    *(a2 + 12) = 0;
    *(a2 + 13) = 0;
    *(a2 + 11) = 0;
    *(a1 + 112) = 1;
  }

  result = *(a2 + 120);
  v8 = *(a2 + 34);
  *(a1 + 144) = 0;
  *(a1 + 136) = v8;
  *(a1 + 120) = result;
  *(a1 + 168) = 0;
  if (*(a2 + 168) == 1)
  {
    result = a2[9];
    *(a1 + 160) = *(a2 + 20);
    *(a1 + 144) = result;
    *(a2 + 19) = 0;
    *(a2 + 20) = 0;
    *(a2 + 18) = 0;
    *(a1 + 168) = 1;
  }

  return result;
}

uint64_t sub_24265C624(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 176))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24265C644(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 176) = v3;
  return result;
}

__n128 *sub_24265C78C(__n128 *a1, __n128 *a2)
{
  std::vector<std::string>::vector[abi:ne200100](a1, a2);
  ctb::chatbot::SuggestedChipList::~SuggestedChipList(a2);
  return a1;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

std::string *ctb::CPMGroupManagement::CPMGroupManagement(std::string *this, const CPMGroupManagement *a2)
{
  if (*(&a2->fId.__rep_.__l + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, a2->fId.__rep_.__l.__data_, a2->fId.__rep_.__l.__size_);
  }

  else
  {
    v4 = *a2->fId.__rep_.__s.__data_;
    this->__r_.__value_.__r.__words[2] = *(&a2->fId.__rep_.__l + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  this[1].__r_.__value_.__r.__words[0] = *&a2->var0;
  return this;
}

__n128 *sub_24265C8FC(__n128 *a1, __n128 *a2)
{
  ctb::CPMGroupManagement::CPMGroupManagement(a1, a2);
  sub_242658E20(a2);
  return a1;
}

__n128 ctb::CPMGroupManagement::CPMGroupManagement(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  a2->n128_u64[0] = 0;
  a1[1].n128_u64[1] = a2[1].n128_u64[1];
  return result;
}

uint64_t sub_24265CA04(uint64_t a1, __n128 *a2)
{
  ctb::SIPConferenceInfo::Description::Description(a1, a2);
  ctb::SIPConferenceInfo::Description::~Description(a2);
  return a1;
}

__n128 ctb::SIPConferenceInfo::Description::Description(uint64_t a1, __n128 *a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  if (a2[1].n128_u8[8] == 1)
  {
    result = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    *a1 = result;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    a2->n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  if (a2[3].n128_u8[8] == 1)
  {
    result = a2[2];
    *(a1 + 48) = a2[3].n128_u64[0];
    *(a1 + 32) = result;
    a2[2].n128_u64[1] = 0;
    a2[3].n128_u64[0] = 0;
    a2[2].n128_u64[0] = 0;
    *(a1 + 56) = 1;
  }

  return result;
}

uint64_t sub_24265CAD4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24265CAF4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 64) = v3;
  return result;
}

ctb::SIPConferenceInfo *ctb::SIPConferenceInfo::SIPConferenceInfo(ctb::SIPConferenceInfo *this, const ctb::SIPConferenceInfo *a2)
{
  v4 = std::__optional_copy_base<ctb::SIPConferenceInfo::Description,false>::__optional_copy_base[abi:ne200100](this, a2);
  v4[9] = 0;
  v4[10] = 0;
  v4 += 9;
  v4[2] = 0;
  std::vector<ctb::SIPConferenceInfo::User>::__init_with_size[abi:ne200100]<ctb::SIPConferenceInfo::User*,ctb::SIPConferenceInfo::User*>(v4, *(a2 + 9), *(a2 + 10), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 10) - *(a2 + 9)) >> 3));
  return this;
}

uint64_t sub_24265CBF8(uint64_t a1, void **a2)
{
  ctb::SIPConferenceInfo::SIPConferenceInfo(a1, a2);
  ctb::SIPConferenceInfo::~SIPConferenceInfo(a2);
  return a1;
}

__n128 ctb::SIPConferenceInfo::SIPConferenceInfo(uint64_t a1, uint64_t a2)
{
  v3 = std::__optional_move_base<ctb::SIPConferenceInfo::Description,false>::__optional_move_base[abi:ne200100](a1, a2);
  v3[9] = 0;
  v3[10] = 0;
  v3[11] = 0;
  result = *(a2 + 72);
  *(v3 + 9) = result;
  v3[11] = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  return result;
}

ctb::FileTransferDescriptor *ctb::FileTransferDescriptor::FileTransferDescriptor(ctb::FileTransferDescriptor *this, const ctb::FileTransferDescriptor *a2)
{
  v4 = ctb::FileTransferDescriptor::FileDescriptor::FileDescriptor(this, a2);
  std::__optional_copy_base<ctb::FileTransferDescriptor::FileDescriptor,false>::__optional_copy_base[abi:ne200100]((v4 + 144), (a2 + 144));
  sub_24266155C((this + 296));
  return this;
}

void sub_24265CD08(_Unwind_Exception *a1)
{
  std::optional<ctb::FileTransferDescriptor::FileDescriptor>::~optional((v1 + 18));
  ctb::FileTransferDescriptor::FileDescriptor::~FileDescriptor(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_24265CD80(uint64_t a1, __int128 *a2)
{
  ctb::FileTransferDescriptor::FileTransferDescriptor(a1, a2);
  ctb::FileTransferDescriptor::~FileTransferDescriptor(a2);
  return a1;
}

uint64_t ctb::FileTransferDescriptor::FileTransferDescriptor(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  if (*(a2 + 48) == 1)
  {
    v5 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 24) = v5;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    *(a1 + 48) = 1;
  }

  v6 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 9);
  *(a1 + 56) = v6;
  *(a2 + 8) = 0;
  *(a2 + 9) = 0;
  *(a2 + 7) = 0;
  v7 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 80) = v7;
  *(a2 + 11) = 0;
  *(a2 + 12) = 0;
  *(a2 + 10) = 0;
  v8 = *(a2 + 104);
  *(a1 + 120) = *(a2 + 15);
  *(a1 + 104) = v8;
  *(a2 + 14) = 0;
  *(a2 + 15) = 0;
  *(a2 + 13) = 0;
  *(a1 + 128) = a2[8];
  std::__optional_move_base<ctb::FileTransferDescriptor::FileDescriptor,false>::__optional_move_base[abi:ne200100]((a1 + 144), a2 + 9);
  *(a1 + 296) = 0;
  *(a1 + 320) = 0;
  if (*(a2 + 320) == 1)
  {
    v9 = *(a2 + 296);
    *(a1 + 312) = *(a2 + 39);
    *(a1 + 296) = v9;
    *(a2 + 38) = 0;
    *(a2 + 39) = 0;
    *(a2 + 37) = 0;
    *(a1 + 320) = 1;
  }

  return a1;
}

uint64_t sub_24265CEE8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 328))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24265CF08(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 312) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 328) = v3;
  return result;
}

uint64_t sub_24265CFF0(uint64_t a1, __int128 *a2)
{
  ctb::FileTransferDescriptor::FileDescriptor::FileDescriptor(a1, a2);
  ctb::FileTransferDescriptor::FileDescriptor::~FileDescriptor(a2);
  return a1;
}

__n128 ctb::FileTransferDescriptor::FileDescriptor::FileDescriptor(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v2;
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  if (*(a2 + 48) == 1)
  {
    v3 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 24) = v3;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    *(a1 + 48) = 1;
  }

  v4 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 9);
  *(a1 + 56) = v4;
  *(a2 + 8) = 0;
  *(a2 + 9) = 0;
  *(a2 + 7) = 0;
  v5 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 80) = v5;
  *(a2 + 11) = 0;
  *(a2 + 12) = 0;
  *(a2 + 10) = 0;
  v6 = *(a2 + 104);
  *(a1 + 120) = *(a2 + 15);
  *(a1 + 104) = v6;
  *(a2 + 14) = 0;
  *(a2 + 15) = 0;
  *(a2 + 13) = 0;
  result = a2[8];
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_24265D0EC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 144))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24265D10C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 144) = v3;
  return result;
}

uint64_t sub_24265D184(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 16))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_24265D1D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_24265D22C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

void *std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::vector[abi:ne200100](void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::__init_with_size[abi:ne200100]<ctb::ProvisioningConfiguration::AccessControl::Server*,ctb::ProvisioningConfiguration::AccessControl::Server*>(a1, *a2, a2[1], 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 3));
  return a1;
}

void **std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::~vector[abi:ne200100](void **a1)
{
  v3 = a1;
  std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::__destroy_vector::operator()[abi:ne200100](&v3, std::__destroy_at[abi:ne200100]<ctb::ProvisioningConfiguration::AccessControl::Server,0>);
  return a1;
}

__n128 *sub_24265D388(__n128 *a1, __n128 *a2)
{
  std::vector<std::string>::vector[abi:ne200100](a1, a2);
  std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::~vector[abi:ne200100](a2);
  return a1;
}

void *sub_24265D45C(void *a1, char **a2)
{
  ctb::ProvisioningConfiguration::AccessControl::Default::Default(a1, a2);
  ctb::ProvisioningConfiguration::AccessControl::Default::~Default(a2);
  return a1;
}

void *ctb::ProvisioningConfiguration::AccessControl::Default::Default(void *result, void *a2)
{
  *result = *a2;
  v2 = a2 + 1;
  v3 = a2[1];
  result[1] = v3;
  v4 = result + 1;
  v5 = a2[2];
  result[2] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    *a2 = v2;
    *v2 = 0;
    a2[2] = 0;
  }

  else
  {
    *result = v4;
  }

  return result;
}

std::string *ctb::chatbot::Media::Media(std::string *this, const ctb::chatbot::Media *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v3;
  }

  sub_24266155C(this + 1);
  return this;
}

void sub_24265D590(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 *sub_24265D610(__n128 *a1, uint64_t a2)
{
  ctb::chatbot::Media::Media(a1, a2);
  ctb::chatbot::Media::~Media(a2);
  return a1;
}

__n128 ctb::chatbot::Media::Media(__n128 *a1, uint64_t a2)
{
  result = *a2;
  a1[1].n128_u64[0] = *(a2 + 16);
  *a1 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  a1[1].n128_u8[8] = 0;
  a1[3].n128_u8[0] = 0;
  if (*(a2 + 48) == 1)
  {
    result = *(a2 + 24);
    a1[2].n128_u64[1] = *(a2 + 40);
    *(a1 + 24) = result;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 24) = 0;
    a1[3].n128_u8[0] = 1;
  }

  return result;
}

void *std::vector<ctb::ClientAuthenticityRequest::Parameter>::vector[abi:ne200100](void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<ctb::ClientAuthenticityRequest::Parameter>::__init_with_size[abi:ne200100]<ctb::ClientAuthenticityRequest::Parameter*,ctb::ClientAuthenticityRequest::Parameter*>(a1, *a2, a2[1], (a2[1] - *a2) >> 5);
  return a1;
}

void **std::vector<ctb::ClientAuthenticityRequest::Parameter>::~vector[abi:ne200100](void **a1)
{
  v3 = a1;
  std::vector<ctb::chatbot::CardCarouselContent>::__destroy_vector::operator()[abi:ne200100](&v3, std::vector<ctb::ClientAuthenticityRequest::Parameter>::__base_destruct_at_end[abi:ne200100]);
  return a1;
}

__n128 *sub_24265D7F0(__n128 *a1, __n128 *a2)
{
  std::vector<std::string>::vector[abi:ne200100](a1, a2);
  std::vector<ctb::ClientAuthenticityRequest::Parameter>::~vector[abi:ne200100](a2);
  return a1;
}

void *std::vector<ctb::ClientAuthenticityRequest::Method>::vector[abi:ne200100](void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<ctb::ClientAuthenticityRequest::Method>::__init_with_size[abi:ne200100]<ctb::ClientAuthenticityRequest::Method*,ctb::ClientAuthenticityRequest::Method*>(a1, *a2, a2[1], 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 3));
  return a1;
}

void **std::vector<ctb::ClientAuthenticityRequest::Method>::~vector[abi:ne200100](void **a1)
{
  v3 = a1;
  std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::__destroy_vector::operator()[abi:ne200100](&v3, std::__destroy_at[abi:ne200100]<ctb::ClientAuthenticityRequest::Method,0>);
  return a1;
}

__n128 *sub_24265D954(__n128 *a1, __n128 *a2)
{
  std::vector<std::string>::vector[abi:ne200100](a1, a2);
  std::vector<ctb::ClientAuthenticityRequest::Method>::~vector[abi:ne200100](a2);
  return a1;
}

uint64_t ctb::ClientAuthenticityRequest::Parameter::~Parameter(uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v2;
      operator delete(v2);
    }
  }

  return a1;
}

uint64_t sub_24265DA08(uint64_t a1, __n128 *a2)
{
  v4 = ctb::ClientAuthenticityRequest::Parameter::~Parameter(a1);
  ctb::ClientAuthenticityRequest::Parameter::Parameter(v4, a2);
  ctb::ClientAuthenticityRequest::Parameter::~Parameter(a2);
  return a1;
}

uint64_t sub_24265DEFC(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t sub_24265DF7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

void **std::vector<ctb::chatbot::SuggestedChip>::~vector[abi:ne200100](void **a1)
{
  v3 = a1;
  std::vector<ctb::chatbot::SuggestedChip>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

__n128 *sub_24265E088(__n128 *a1, __n128 *a2)
{
  std::vector<std::string>::vector[abi:ne200100](a1, a2);
  std::vector<ctb::chatbot::SuggestedChip>::~vector[abi:ne200100](a2);
  return a1;
}

__n128 *sub_24265E184(__n128 *a1, __n128 *a2)
{
  std::vector<std::string>::vector[abi:ne200100](a1, a2);
  std::vector<std::string>::~vector[abi:ne200100](a2);
  return a1;
}

void **std::vector<ctb::chatbot::OrgNameEntry>::~vector[abi:ne200100](void **a1)
{
  v3 = a1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3, std::vector<ctb::chatbot::OrgNameEntry>::clear[abi:ne200100]);
  return a1;
}

__n128 *sub_24265E278(__n128 *a1, __n128 *a2)
{
  std::vector<std::string>::vector[abi:ne200100](a1, a2);
  std::vector<ctb::chatbot::OrgNameEntry>::~vector[abi:ne200100](a2);
  return a1;
}

void **std::vector<ctb::chatbot::MediaEntry>::~vector[abi:ne200100](void **a1)
{
  v3 = a1;
  std::vector<ctb::chatbot::CardCarouselContent>::__destroy_vector::operator()[abi:ne200100](&v3, std::vector<ctb::chatbot::MediaEntry>::__base_destruct_at_end[abi:ne200100]);
  return a1;
}

__n128 *sub_24265E36C(__n128 *a1, __n128 *a2)
{
  std::vector<std::string>::vector[abi:ne200100](a1, a2);
  std::vector<ctb::chatbot::MediaEntry>::~vector[abi:ne200100](a2);
  return a1;
}

ctb::chatbot::URIEntryList *ctb::chatbot::URIEntryList::URIEntryList(ctb::chatbot::URIEntryList *this, const ctb::chatbot::URIEntryList *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  std::vector<ctb::chatbot::URIEntry>::__init_with_size[abi:ne200100]<ctb::chatbot::URIEntry*,ctb::chatbot::URIEntry*>(this, *a2, *(a2 + 1), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 1) - *a2) >> 3));
  return this;
}

__n128 *sub_24265E4C8(__n128 *a1, __n128 *a2)
{
  std::vector<std::string>::vector[abi:ne200100](a1, a2);
  ctb::chatbot::URIEntryList::~URIEntryList(a2);
  return a1;
}

std::string *ctb::chatbot::TelephoneInformation::TelephoneInformation(std::string *this, const ctb::chatbot::TelephoneInformation *a2)
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
    v6 = *(a2 + 3);
    this[2].__r_.__value_.__r.__words[2] = *(a2 + 8);
    *&this[2].__r_.__value_.__l.__data_ = v6;
  }

  return this;
}

void sub_24265E5DC(_Unwind_Exception *exception_object)
{
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

uint64_t sub_24265E678(uint64_t a1, __int128 *a2)
{
  ctb::chatbot::TelephoneInformation::TelephoneInformation(a1, a2);
  ctb::chatbot::TelephoneInformation::~TelephoneInformation(a2);
  return a1;
}

__n128 ctb::chatbot::TelephoneInformation::TelephoneInformation(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v2;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v3 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v3;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 3) = 0;
  result = a2[3];
  *(a1 + 64) = *(a2 + 8);
  *(a1 + 48) = result;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  *(a2 + 6) = 0;
  return result;
}

void **std::vector<ctb::chatbot::MenuL0Content>::~vector[abi:ne200100](void **a1)
{
  v3 = a1;
  std::vector<ctb::chatbot::MenuL1Content>::__destroy_vector::operator()[abi:ne200100](&v3, std::__variant_detail::__dtor<std::__variant_detail::__traits<ctb::chatbot::SuggestedChip,ctb::chatbot::MenuL1>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]);
  return a1;
}

__n128 *sub_24265E7F8(__n128 *a1, __n128 *a2)
{
  std::vector<std::string>::vector[abi:ne200100](a1, a2);
  std::vector<ctb::chatbot::MenuL0Content>::~vector[abi:ne200100](a2);
  return a1;
}

void **std::vector<ctb::chatbot::URIEntry>::~vector[abi:ne200100](void **a1)
{
  v3 = a1;
  std::vector<ctb::chatbot::CardCarouselContent>::__destroy_vector::operator()[abi:ne200100](&v3, std::vector<ctb::chatbot::URIEntry>::__base_destruct_at_end[abi:ne200100]);
  return a1;
}

__n128 *sub_24265ED58(__n128 *a1, __n128 *a2)
{
  std::vector<std::string>::vector[abi:ne200100](a1, a2);
  std::vector<ctb::chatbot::URIEntry>::~vector[abi:ne200100](a2);
  return a1;
}

std::string *ctb::chatbot::SuggestedActionShowQuery::SuggestedActionShowQuery(std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v3;
  }

  return this;
}

void sub_24265EED4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t std::vector<ctb::ClientAuthenticityRequest::Method>::__construct_one_at_end[abi:ne200100]<ctb::ClientAuthenticityRequest::Method const&>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  v5 = (v4 + 1);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v5, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v6 = *(a2 + 8);
    v4[3] = *(a2 + 24);
    *&v5->__r_.__value_.__l.__data_ = v6;
  }

  v4[4] = 0;
  v4[5] = 0;
  v4[6] = 0;
  result = std::vector<ctb::ClientAuthenticityRequest::Parameter>::__init_with_size[abi:ne200100]<ctb::ClientAuthenticityRequest::Parameter*,ctb::ClientAuthenticityRequest::Parameter*>((v4 + 4), *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 5);
  *(a1 + 8) = v4 + 7;
  return result;
}

uint64_t std::vector<ctb::ClientAuthenticityRequest::Method>::__emplace_back_slow_path<ctb::ClientAuthenticityRequest::Method const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ctb::ClientAuthenticityRequest::Method>>(a1, v6);
  }

  v7 = 56 * v2;
  v17 = 0;
  v18 = 56 * v2;
  v19 = (56 * v2);
  v8 = 56 * v2;
  *v8 = *a2;
  v9 = (v8 + 8);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v9, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v10 = *(a2 + 8);
    v9->__r_.__value_.__r.__words[2] = *(a2 + 24);
    *&v9->__r_.__value_.__l.__data_ = v10;
  }

  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  std::vector<ctb::ClientAuthenticityRequest::Parameter>::__init_with_size[abi:ne200100]<ctb::ClientAuthenticityRequest::Parameter*,ctb::ClientAuthenticityRequest::Parameter*>(v7 + 32, *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 5);
  *&v19 = v19 + 56;
  v11 = a1[1];
  v12 = v18 + *a1 - v11;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ctb::ClientAuthenticityRequest::Method>,ctb::ClientAuthenticityRequest::Method*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<ctb::ClientAuthenticityRequest::Method>::~__split_buffer(&v17, std::__destroy_at[abi:ne200100]<ctb::ClientAuthenticityRequest::Method,0>);
  return v16;
}

void sub_24265F25C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (*(v5 + 31) < 0)
  {
    operator delete(*v4);
  }

  std::__split_buffer<ctb::ClientAuthenticityRequest::Method>::~__split_buffer(va, std::__destroy_at[abi:ne200100]<ctb::ClientAuthenticityRequest::Method,0>);
  _Unwind_Resume(a1);
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ctb::ClientAuthenticityRequest::Method>,ctb::ClientAuthenticityRequest::Method*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 8);
      *(a4 + 24) = *(v6 + 24);
      *(a4 + 8) = v7;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      *(v6 + 8) = 0;
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 32) = *(v6 + 32);
      *(a4 + 48) = *(v6 + 48);
      *(v6 + 32) = 0;
      *(v6 + 40) = 0;
      *(v6 + 48) = 0;
      v6 += 56;
      a4 += 56;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      std::__destroy_at[abi:ne200100]<ctb::ClientAuthenticityRequest::Method,0>(v5);
      v5 += 56;
    }
  }
}

uint64_t std::vector<ctb::ClientAuthenticityRequest::Parameter>::__emplace_back_slow_path<ctb::ClientAuthenticityRequest::Parameter const&>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ctb::ClientAuthenticityRequest::Parameter>>(a1, v7);
  }

  v14 = 0;
  v15 = 32 * v2;
  std::__optional_copy_base<std::vector<unsigned char>,false>::__optional_copy_base[abi:ne200100](32 * v2, a2);
  v16 = (32 * v2 + 32);
  v8 = a1[1];
  v9 = 32 * v2 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ctb::ClientAuthenticityRequest::Parameter>,ctb::ClientAuthenticityRequest::Parameter*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<ctb::ClientAuthenticityRequest::Parameter>::~__split_buffer(&v14, std::__split_buffer<ctb::ClientAuthenticityRequest::Parameter>::__destruct_at_end[abi:ne200100]);
  return v13;
}

void sub_24265F458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<ctb::ClientAuthenticityRequest::Parameter>::~__split_buffer(va, std::__split_buffer<ctb::ClientAuthenticityRequest::Parameter>::__destruct_at_end[abi:ne200100]);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ctb::ClientAuthenticityRequest::Parameter>,ctb::ClientAuthenticityRequest::Parameter*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v13 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v5 = a2;
    v6 = 0;
    do
    {
      v7 = a4 + v6;
      v8 = a2 + v6;
      *v7 = 0;
      *(v7 + 24) = 0;
      if (*(a2 + v6 + 24) == 1)
      {
        *v7 = 0;
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        *v7 = *v8;
        *(v7 + 16) = *(v8 + 16);
        *v8 = 0;
        *(v8 + 8) = 0;
        *(v8 + 16) = 0;
        *(v7 + 24) = 1;
      }

      v6 += 32;
    }

    while (a2 + v6 != a3);
    v14 = a4 + v6;
    v12 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 24) == 1)
      {
        v9 = *v5;
        if (*v5)
        {
          *(v5 + 8) = v9;
          operator delete(v9);
        }
      }

      v5 += 32;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ctb::ClientAuthenticityRequest::Parameter>,ctb::ClientAuthenticityRequest::Parameter*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

void std::__split_buffer<ctb::ClientAuthenticityRequest::Parameter>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 4;
      *(a1 + 16) = v2 - 4;
      if (*(v2 - 8) == 1)
      {
        v6 = *v5;
        if (*v5)
        {
          *(v2 - 3) = v6;
          operator delete(v6);
          v5 = *(a1 + 16);
        }
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void std::vector<ctb::chatbot::AddressEntry>::__construct_one_at_end[abi:ne200100]<ctb::chatbot::AddressEntry const&>(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external((v4 + 24), *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v6 = *(a2 + 24);
    *(v4 + 40) = *(a2 + 5);
    *(v4 + 24) = v6;
  }

  *(a1 + 8) = v4 + 48;
}

void sub_24265F660(_Unwind_Exception *exception_object)
{
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t std::vector<ctb::chatbot::AddressEntry>::__emplace_back_slow_path<ctb::chatbot::AddressEntry const&>(uint64_t *a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v15 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ctb::CPIMNamespace>>(a1, v6);
  }

  v7 = (48 * v2);
  v12[0] = 0;
  v12[1] = v7;
  v13 = v7;
  v14 = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v7, *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    v7->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v7->__r_.__value_.__l.__data_ = v8;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(v7 + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v9 = *(a2 + 24);
    v7[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&v7[1].__r_.__value_.__l.__data_ = v9;
  }

  v13 += 2;
  std::vector<ctb::chatbot::AddressEntry>::__swap_out_circular_buffer(a1, v12);
  v10 = a1[1];
  std::__split_buffer<ctb::chatbot::AddressEntry>::~__split_buffer(v12);
  return v10;
}

void sub_24265F7BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  std::__split_buffer<ctb::chatbot::AddressEntry>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<ctb::chatbot::AddressEntry>::__swap_out_circular_buffer(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v5;
    do
    {
      v9 = *v7;
      *(v8 + 16) = *(v7 + 16);
      *v8 = v9;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 0;
      v10 = *(v7 + 24);
      *(v8 + 40) = *(v7 + 40);
      *(v8 + 24) = v10;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 24) = 0;
      v7 += 48;
      v8 += 48;
    }

    while (v7 != v5);
    do
    {
      std::__destroy_at[abi:ne200100]<ctb::CPIMNamespace,0>(v4);
      v4 += 48;
    }

    while (v4 != v5);
  }

  a2[1] = v6;
  v11 = *a1;
  *a1 = v6;
  a1[1] = v11;
  a2[1] = v11;
  v12 = a1[1];
  a1[1] = a2[2];
  a2[2] = v12;
  v13 = a1[2];
  a1[2] = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
}

uint64_t std::__split_buffer<ctb::chatbot::AddressEntry>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    std::__destroy_at[abi:ne200100]<ctb::CPIMNamespace,0>(i - 48);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::vector<ctb::chatbot::URIEntry>::__emplace_back_slow_path<ctb::chatbot::URIEntry const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ctb::chatbot::URIEntry>>(a1, v6);
  }

  v13 = 0;
  v14 = 40 * v2;
  v15 = 40 * v2;
  sub_24266155C((40 * v2))[1].__r_.__value_.__l.__size_ = *(a2 + 32);
  *&v15 = v15 + 40;
  v7 = a1[1];
  v8 = v14 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ctb::chatbot::URIEntry>,ctb::chatbot::URIEntry*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<ctb::ClientAuthenticityRequest::Parameter>::~__split_buffer(&v13, std::__split_buffer<ctb::chatbot::URIEntry>::__destruct_at_end[abi:ne200100]);
  return v12;
}

void sub_24265FA50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<ctb::ClientAuthenticityRequest::Parameter>::~__split_buffer(va, std::__split_buffer<ctb::chatbot::URIEntry>::__destruct_at_end[abi:ne200100]);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ctb::chatbot::URIEntry>,ctb::chatbot::URIEntry*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v13 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v5 = a2;
    v6 = 0;
    do
    {
      v7 = a4 + v6;
      v8 = (a2 + v6);
      *v7 = 0;
      *(v7 + 24) = 0;
      if (*(a2 + v6 + 24) == 1)
      {
        v9 = *v8;
        *(v7 + 16) = *(v8 + 2);
        *v7 = v9;
        *(v8 + 1) = 0;
        *(v8 + 2) = 0;
        *v8 = 0;
        *(v7 + 24) = 1;
      }

      *(v7 + 32) = *(v8 + 4);
      v6 += 40;
    }

    while (a2 + v6 != a3);
    v14 = a4 + v6;
    v12 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 24) == 1 && *(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 += 40;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ctb::chatbot::URIEntry>,ctb::chatbot::URIEntry*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

void std::__split_buffer<ctb::chatbot::URIEntry>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 5;
      *(a1 + 16) = v2 - 5;
      if (*(v2 - 16) == 1 && *(v2 - 17) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

std::string *std::vector<ctb::chatbot::MediaEntry>::__construct_one_at_end[abi:ne200100]<ctb::chatbot::MediaEntry const&>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  v5 = (v4 + 8);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v5, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v6 = *(a2 + 8);
    *(v4 + 24) = *(a2 + 24);
    *&v5->__r_.__value_.__l.__data_ = v6;
  }

  result = sub_24266155C((v4 + 32));
  *(v4 + 64) = *(a2 + 64);
  *(a1 + 8) = v4 + 72;
  return result;
}

uint64_t std::vector<ctb::chatbot::MediaEntry>::__emplace_back_slow_path<ctb::chatbot::MediaEntry const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v6 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ctb::chatbot::MediaEntry>>(a1, v6);
  }

  v7 = 72 * v2;
  v17 = 0;
  v18 = 72 * v2;
  v19 = 72 * v2;
  v8 = 72 * v2;
  *v8 = *a2;
  v9 = (v8 + 8);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v9, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v10 = *(a2 + 8);
    v9->__r_.__value_.__r.__words[2] = *(a2 + 24);
    *&v9->__r_.__value_.__l.__data_ = v10;
  }

  sub_24266155C((v7 + 32));
  *(v7 + 64) = *(a2 + 64);
  *&v19 = v19 + 72;
  v11 = a1[1];
  v12 = v18 + *a1 - v11;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ctb::chatbot::MediaEntry>,ctb::chatbot::MediaEntry*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<ctb::ClientAuthenticityRequest::Parameter>::~__split_buffer(&v17, std::__split_buffer<ctb::chatbot::MediaEntry>::__destruct_at_end[abi:ne200100]);
  return v16;
}

void sub_24265FDFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (*(v5 + 31) < 0)
  {
    operator delete(*v4);
  }

  std::__split_buffer<ctb::ClientAuthenticityRequest::Parameter>::~__split_buffer(va, std::__split_buffer<ctb::chatbot::MediaEntry>::__destruct_at_end[abi:ne200100]);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ctb::chatbot::MediaEntry>,ctb::chatbot::MediaEntry*>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v14 = a4;
  v15 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  if (a2 == a3)
  {
    v13 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2 + 32;
    do
    {
      v8 = (v7 - 32);
      *a4 = *(v7 - 32);
      v9 = *(v7 - 24);
      *(a4 + 24) = *(v7 - 8);
      *(a4 + 8) = v9;
      v8[2] = 0;
      v8[3] = 0;
      v8[1] = 0;
      *(a4 + 32) = 0;
      *(a4 + 56) = 0;
      if (*(v7 + 24) == 1)
      {
        v10 = *v7;
        *(a4 + 48) = *(v7 + 16);
        *(a4 + 32) = v10;
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        *v7 = 0;
        *(a4 + 56) = 1;
      }

      *(a4 + 64) = *(v7 + 32);
      a4 += 72;
      v7 += 72;
    }

    while (v8 + 9 != a3);
    v15 = a4;
    v13 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<ctb::chatbot::MediaEntry>>::destroy[abi:ne200100]<ctb::chatbot::MediaEntry,void,0>(a1, v5);
      v5 += 72;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ctb::chatbot::MediaEntry>,ctb::chatbot::MediaEntry*>>::~__exception_guard_exceptions[abi:ne200100](v12);
}

void std::allocator_traits<std::allocator<ctb::chatbot::MediaEntry>>::destroy[abi:ne200100]<ctb::chatbot::MediaEntry,void,0>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 56) == 1 && *(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  if (*(a2 + 31) < 0)
  {
    v3 = *(a2 + 8);

    operator delete(v3);
  }
}

void std::__split_buffer<ctb::chatbot::MediaEntry>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 72;
    std::allocator_traits<std::allocator<ctb::chatbot::MediaEntry>>::destroy[abi:ne200100]<ctb::chatbot::MediaEntry,void,0>(v5, v4 - 72);
  }
}

void std::vector<ctb::chatbot::OrgNameEntry>::__construct_one_at_end[abi:ne200100]<ctb::chatbot::OrgNameEntry const&>(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  *(v4 + 24) = *(a2 + 6);
  *(a1 + 8) = v4 + 32;
}

uint64_t std::vector<ctb::chatbot::OrgNameEntry>::__emplace_back_slow_path<ctb::chatbot::OrgNameEntry const&>(uint64_t a1, __int128 *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v21 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ctb::ClientAuthenticityRequest::Parameter>>(a1, v7);
  }

  v8 = 32 * v2;
  v18 = 0;
  v19 = v8;
  v20 = v8;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v8, *a2, *(a2 + 1));
    v10 = v19;
    v11 = v20;
  }

  else
  {
    v9 = *a2;
    *(v8 + 16) = *(a2 + 2);
    *v8 = v9;
    v10 = v8;
    v11 = v8;
  }

  *(v8 + 24) = *(a2 + 6);
  *&v20 = v11 + 32;
  v12 = *(a1 + 8);
  v13 = v10 + *a1 - v12;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ctb::chatbot::OrgNameEntry>,ctb::chatbot::OrgNameEntry*>(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = *(a1 + 16);
  v17 = v20;
  *(a1 + 8) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  std::__split_buffer<ctb::ClientAuthenticityRequest::Parameter>::~__split_buffer(&v18, std::__split_buffer<ctb::chatbot::OrgNameEntry>::__destruct_at_end[abi:ne200100]);
  return v17;
}

void sub_2426601C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<ctb::ClientAuthenticityRequest::Parameter>::~__split_buffer(va, std::__split_buffer<ctb::chatbot::OrgNameEntry>::__destruct_at_end[abi:ne200100]);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ctb::chatbot::OrgNameEntry>,ctb::chatbot::OrgNameEntry*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      *(a4 + 24) = *(v6 + 6);
      v6 += 2;
      a4 += 32;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 += 2;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ctb::chatbot::OrgNameEntry>,ctb::chatbot::OrgNameEntry*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

void std::__split_buffer<ctb::chatbot::OrgNameEntry>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
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

uint64_t std::vector<ctb::chatbot::CardCarouselContent>::__construct_one_at_end[abi:ne200100]<ctb::chatbot::CardCarouselContent const&>(uint64_t a1, const ctb::chatbot::CardMedia *a2)
{
  v4 = *(a1 + 8);
  std::__optional_copy_base<ctb::chatbot::CardMedia,false>::__optional_copy_base[abi:ne200100](v4, a2);
  sub_24266155C((v4 + 184));
  sub_24266155C((v4 + 216));
  result = std::__optional_copy_base<ctb::chatbot::SuggestedChipList,false>::__optional_copy_base[abi:ne200100](v4 + 248, a2 + 248);
  *(a1 + 8) = v4 + 280;
  return result;
}

void sub_2426603A0(_Unwind_Exception *a1)
{
  if (*(v2 + 240) == 1 && *(v2 + 239) < 0)
  {
    operator delete(*(v2 + 216));
  }

  if (*(v2 + 208) == 1 && *(v2 + 207) < 0)
  {
    operator delete(*(v2 + 184));
  }

  std::optional<ctb::chatbot::CardMedia>::~optional(v2);
  *(v1 + 8) = v2;
  _Unwind_Resume(a1);
}

uint64_t std::vector<ctb::chatbot::CardCarouselContent>::__emplace_back_slow_path<ctb::chatbot::CardCarouselContent const&>(uint64_t *a1, const ctb::chatbot::CardMedia *a2)
{
  v2 = 0xAF8AF8AF8AF8AF8BLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xEA0EA0EA0EA0EALL)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  if (0x5F15F15F15F15F16 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5F15F15F15F15F16 * ((a1[2] - *a1) >> 3);
  }

  if (0xAF8AF8AF8AF8AF8BLL * ((a1[2] - *a1) >> 3) >= 0x75075075075075)
  {
    v6 = 0xEA0EA0EA0EA0EALL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ctb::chatbot::CardCarouselContent>>(a1, v6);
  }

  v13 = 0;
  v14 = 280 * v2;
  std::__optional_copy_base<ctb::chatbot::CardMedia,false>::__optional_copy_base[abi:ne200100]((280 * v2), a2);
  sub_24266155C((280 * v2 + 184));
  sub_24266155C((280 * v2 + 216));
  std::__optional_copy_base<ctb::chatbot::SuggestedChipList,false>::__optional_copy_base[abi:ne200100](280 * v2 + 248, a2 + 248);
  v15 = 280 * v2 + 280;
  v7 = a1[1];
  v8 = 280 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ctb::chatbot::CardCarouselContent>,ctb::chatbot::CardCarouselContent*>(a1, *a1, v7, v14 + *a1 - v7);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<ctb::ClientAuthenticityRequest::Parameter>::~__split_buffer(&v13, std::__split_buffer<ctb::chatbot::CardCarouselContent>::__destruct_at_end[abi:ne200100]);
  return v12;
}

void sub_242660574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (*(v4 + 240) == 1 && *(v4 + 239) < 0)
  {
    operator delete(*(v4 + 216));
  }

  if (*(v4 + 208) == 1 && *(v4 + 207) < 0)
  {
    operator delete(*(v4 + 184));
  }

  std::optional<ctb::chatbot::CardMedia>::~optional(v4);
  std::__split_buffer<ctb::ClientAuthenticityRequest::Parameter>::~__split_buffer(va, std::__split_buffer<ctb::chatbot::CardCarouselContent>::__destruct_at_end[abi:ne200100]);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ctb::chatbot::CardCarouselContent>,ctb::chatbot::CardCarouselContent*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v15 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  v13 = 0;
  if (a2 == a3)
  {
    v13 = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v8 = a2;
    do
    {
      std::optional<ctb::chatbot::CardMedia>::optional[abi:ne200100](v4, v8);
      *(v4 + 184) = 0;
      *(v4 + 208) = 0;
      if (*(v8 + 208) == 1)
      {
        v9 = *(v8 + 184);
        *(v4 + 200) = *(v8 + 200);
        *(v4 + 184) = v9;
        *(v8 + 192) = 0;
        *(v8 + 200) = 0;
        *(v8 + 184) = 0;
        *(v4 + 208) = 1;
      }

      *(v4 + 216) = 0;
      *(v4 + 240) = 0;
      if (*(v8 + 240) == 1)
      {
        v10 = *(v8 + 216);
        *(v4 + 232) = *(v8 + 232);
        *(v4 + 216) = v10;
        *(v8 + 224) = 0;
        *(v8 + 232) = 0;
        *(v8 + 216) = 0;
        *(v4 + 240) = 1;
      }

      *(v4 + 248) = 0;
      *(v4 + 272) = 0;
      if (*(v8 + 272) == 1)
      {
        *(v4 + 248) = 0;
        *(v4 + 256) = 0;
        *(v4 + 264) = 0;
        *(v4 + 248) = *(v8 + 248);
        *(v4 + 264) = *(v8 + 264);
        *(v8 + 248) = 0;
        *(v8 + 256) = 0;
        *(v8 + 264) = 0;
        *(v4 + 272) = 1;
      }

      v8 += 280;
      v4 = v15 + 280;
      v15 += 280;
    }

    while (v8 != a3);
    v13 = 1;
    while (v6 != a3)
    {
      std::allocator_traits<std::allocator<ctb::chatbot::CardCarouselContent>>::destroy[abi:ne200100]<ctb::chatbot::CardCarouselContent,void,0>(a1, v6);
      v6 += 280;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ctb::chatbot::CardCarouselContent>,ctb::chatbot::CardCarouselContent*>>::~__exception_guard_exceptions[abi:ne200100](v12);
}

void std::allocator_traits<std::allocator<ctb::chatbot::CardCarouselContent>>::destroy[abi:ne200100]<ctb::chatbot::CardCarouselContent,void,0>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 272) == 1)
  {
    v3 = (a2 + 248);
    std::vector<ctb::chatbot::SuggestedChip>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  if (*(a2 + 240) == 1 && *(a2 + 239) < 0)
  {
    operator delete(*(a2 + 216));
  }

  if (*(a2 + 208) == 1 && *(a2 + 207) < 0)
  {
    operator delete(*(a2 + 184));
  }

  if (*(a2 + 176) == 1)
  {
    if (*(a2 + 168) == 1 && *(a2 + 167) < 0)
    {
      operator delete(*(a2 + 144));
    }

    if (*(a2 + 112) == 1 && *(a2 + 111) < 0)
    {
      operator delete(*(a2 + 88));
    }

    if (*(a2 + 80) == 1 && *(a2 + 79) < 0)
    {
      operator delete(*(a2 + 56));
    }

    if (*(a2 + 47) < 0)
    {
      operator delete(*(a2 + 24));
    }

    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }
  }
}

uint64_t std::__split_buffer<ctb::ClientAuthenticityRequest::Parameter>::~__split_buffer(uint64_t a1, void (*a2)(uint64_t, void))
{
  a2(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<ctb::chatbot::CardCarouselContent>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 280;
    std::allocator_traits<std::allocator<ctb::chatbot::CardCarouselContent>>::destroy[abi:ne200100]<ctb::chatbot::CardCarouselContent,void,0>(v5, v4 - 280);
  }
}

void *std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::__construct_one_at_end[abi:ne200100]<ctb::ProvisioningConfiguration::AccessControl::Server const&>(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  result = std::set<std::string>::set[abi:ne200100]((v4 + 24), a2 + 24);
  *(v4 + 48) = *(a2 + 48);
  *(a1 + 8) = v4 + 56;
  return result;
}

uint64_t std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::__emplace_back_slow_path<ctb::ProvisioningConfiguration::AccessControl::Server const&>(uint64_t *a1, __int128 *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ctb::ClientAuthenticityRequest::Method>>(a1, v6);
  }

  v7 = 56 * v2;
  v15 = 0;
  v16 = v7;
  v17 = v7;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v7, *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    *(v7 + 16) = *(a2 + 2);
    *v7 = v8;
  }

  std::set<std::string>::set[abi:ne200100]((v7 + 24), a2 + 24);
  *(v7 + 48) = *(a2 + 48);
  *&v17 = v17 + 56;
  v9 = a1[1];
  v10 = v16 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ctb::ProvisioningConfiguration::AccessControl::Server>,ctb::ProvisioningConfiguration::AccessControl::Server*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<ctb::ClientAuthenticityRequest::Method>::~__split_buffer(&v15, std::__destroy_at[abi:ne200100]<ctb::ProvisioningConfiguration::AccessControl::Server,0>);
  return v14;
}

void sub_242660B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (*(v4 + 23) < 0)
  {
    operator delete(*v4);
  }

  std::__split_buffer<ctb::ClientAuthenticityRequest::Method>::~__split_buffer(va, std::__destroy_at[abi:ne200100]<ctb::ProvisioningConfiguration::AccessControl::Server,0>);
  _Unwind_Resume(a1);
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ctb::ProvisioningConfiguration::AccessControl::Server>,ctb::ProvisioningConfiguration::AccessControl::Server*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = 0;
    do
    {
      v7 = (a2 + v6);
      v8 = a4 + v6;
      v9 = *(a2 + v6);
      *(v8 + 16) = *(a2 + v6 + 16);
      *v8 = v9;
      v7[1] = 0;
      v7[2] = 0;
      *v7 = 0;
      *(v8 + 24) = *(a2 + v6 + 24);
      v10 = (a2 + v6 + 32);
      v11 = *v10;
      *(a4 + v6 + 32) = *v10;
      v12 = a4 + v6 + 32;
      v13 = *(a2 + v6 + 40);
      *(v8 + 40) = v13;
      if (v13)
      {
        *(v11 + 16) = v12;
        v7[3] = v10;
        *v10 = 0;
        *(a2 + v6 + 40) = 0;
      }

      else
      {
        *(v8 + 24) = v12;
      }

      *(a4 + v6 + 48) = *(a2 + v6 + 48);
      v6 += 56;
    }

    while (a2 + v6 != a3);
    while (v5 != a3)
    {
      std::__destroy_at[abi:ne200100]<ctb::ProvisioningConfiguration::AccessControl::Server,0>(v5);
      v5 += 56;
    }
  }
}

uint64_t std::__split_buffer<ctb::ClientAuthenticityRequest::Method>::~__split_buffer(uint64_t a1, void (*a2)(void))
{
  v4 = *(a1 + 8);
  for (i = *(a1 + 16); i != v4; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 56;
    a2();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(uint64_t a1, void **a2)
{
  result = *std::__tree<std::string>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::string>::__construct_node<std::string const&>();
  }

  return result;
}

uint64_t ctb::ProvisioningConfiguration::ProvisioningConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 32) = 0;
  if (*(a2 + 32) == 1)
  {
    *a1 = *a2;
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    *(a1 + 32) = 1;
  }

  v5 = *(a2 + 40);
  v6 = *(a2 + 56);
  *(a1 + 64) = 0;
  v7 = (a1 + 64);
  *(a1 + 56) = v6;
  *(a1 + 40) = v5;
  *(a1 + 112) = 0;
  if (*(a2 + 112) == 1)
  {
    std::construct_at[abi:ne200100]<ctb::ProvisioningConfiguration::AccessControl,ctb::ProvisioningConfiguration::AccessControl,ctb::ProvisioningConfiguration::AccessControl*>(v7, a2 + 64);
    *(a1 + 112) = 1;
  }

  *(a1 + 120) = 0;
  *(a1 + 648) = 0;
  if (*(a2 + 648) == 1)
  {
    ctb::ProvisioningConfiguration::IMS3GPP::IMS3GPP(a1 + 120, (a2 + 120));
    *(a1 + 648) = 1;
  }

  std::__optional_move_base<ctb::ProvisioningConfiguration::Services,false>::__optional_move_base[abi:ne200100](a1 + 656, (a2 + 656));
  *(a1 + 720) = 0;
  *(a1 + 1168) = 0;
  if (*(a2 + 1168) == 1)
  {
    v8 = *(a2 + 720);
    *(a1 + 736) = *(a2 + 736);
    *(a1 + 720) = v8;
    *(a1 + 744) = 0;
    *(a1 + 832) = 0;
    if (*(a2 + 832) == 1)
    {
      v9 = *(a2 + 744);
      *(a1 + 760) = *(a2 + 760);
      *(a1 + 744) = v9;
      *(a2 + 760) = 0;
      *(a2 + 752) = 0;
      *(a2 + 744) = 0;
      v10 = *(a2 + 768);
      *(a1 + 784) = *(a2 + 784);
      *(a1 + 768) = v10;
      *(a2 + 784) = 0;
      *(a2 + 776) = 0;
      *(a2 + 768) = 0;
      v11 = *(a2 + 792);
      *(a1 + 808) = *(a2 + 808);
      *(a1 + 792) = v11;
      *(a2 + 808) = 0;
      *(a2 + 800) = 0;
      *(a2 + 792) = 0;
      v12 = *(a2 + 816);
      *(a1 + 824) = *(a2 + 824);
      *(a1 + 816) = v12;
      *(a1 + 832) = 1;
    }

    *(a1 + 840) = 0;
    *(a1 + 976) = 0;
    if (*(a2 + 976) == 1)
    {
      v13 = *(a2 + 840);
      *(a1 + 856) = *(a2 + 856);
      *(a1 + 840) = v13;
      v14 = *(a2 + 864);
      *(a1 + 880) = *(a2 + 880);
      *(a1 + 864) = v14;
      *(a2 + 872) = 0u;
      *(a2 + 864) = 0;
      v15 = *(a2 + 888);
      *(a1 + 904) = *(a2 + 904);
      *(a1 + 888) = v15;
      *(a2 + 896) = 0u;
      *(a2 + 888) = 0;
      v16 = *(a2 + 912);
      *(a1 + 928) = *(a2 + 928);
      *(a1 + 912) = v16;
      *(a2 + 928) = 0;
      *(a2 + 912) = 0u;
      v17 = *(a2 + 936);
      *(a1 + 952) = *(a2 + 952);
      *(a1 + 936) = v17;
      *(a2 + 952) = 0;
      *(a2 + 936) = 0u;
      *(a1 + 960) = *(a2 + 960);
      *(a1 + 976) = 1;
    }

    *(a1 + 984) = 0;
    *(a1 + 1080) = 0;
    if (*(a2 + 1080) == 1)
    {
      v18 = *(a2 + 984);
      v19 = *(a2 + 1000);
      *(a1 + 1016) = *(a2 + 1016);
      *(a1 + 984) = v18;
      *(a1 + 1000) = v19;
      v20 = *(a2 + 1024);
      *(a1 + 1040) = *(a2 + 1040);
      *(a1 + 1024) = v20;
      *(a2 + 1040) = 0;
      *(a2 + 1032) = 0;
      *(a2 + 1024) = 0;
      *(a1 + 1048) = 0;
      *(a1 + 1072) = 0;
      if (*(a2 + 1072) == 1)
      {
        v21 = *(a2 + 1048);
        *(a1 + 1064) = *(a2 + 1064);
        *(a1 + 1048) = v21;
        *(a2 + 1064) = 0;
        *(a2 + 1056) = 0;
        *(a2 + 1048) = 0;
        *(a1 + 1072) = 1;
      }

      *(a1 + 1080) = 1;
    }

    *(a1 + 1088) = 0;
    *(a1 + 1128) = 0;
    if (*(a2 + 1128) == 1)
    {
      v22 = *(a2 + 1088);
      *(a1 + 1104) = *(a2 + 1104);
      *(a1 + 1088) = v22;
      *(a2 + 1104) = 0;
      *(a2 + 1096) = 0;
      *(a2 + 1088) = 0;
      *(a1 + 1112) = *(a2 + 1112);
      *(a1 + 1128) = 1;
    }

    *(a1 + 1136) = 0;
    *(a1 + 1160) = 0;
    if (*(a2 + 1160) == 1)
    {
      v23 = *(a2 + 1136);
      *(a1 + 1152) = *(a2 + 1152);
      *(a1 + 1136) = v23;
      *(a2 + 1152) = 0;
      *(a2 + 1144) = 0;
      *(a2 + 1136) = 0;
      *(a1 + 1160) = 1;
    }

    *(a1 + 1168) = 1;
  }

  v24 = *(a2 + 1176);
  v25 = *(a2 + 1208);
  *(a1 + 1192) = *(a2 + 1192);
  *(a1 + 1208) = v25;
  *(a1 + 1176) = v24;
  return a1;
}

__n128 ctb::ProvisioningConfiguration::Messaging::Messaging(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a1 = result;
  *(a1 + 24) = 0;
  *(a1 + 112) = 0;
  if (*(a2 + 112) == 1)
  {
    v3 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v3;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 24) = 0;
    v4 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = v4;
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 48) = 0;
    result = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = result;
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
    *(a2 + 72) = 0;
    v5 = *(a2 + 96);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 96) = v5;
    *(a1 + 112) = 1;
  }

  *(a1 + 120) = 0;
  *(a1 + 256) = 0;
  if (*(a2 + 256) == 1)
  {
    v6 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 120) = v6;
    v7 = *(a2 + 144);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 144) = v7;
    *(a2 + 152) = 0;
    *(a2 + 160) = 0;
    *(a2 + 144) = 0;
    v8 = *(a2 + 168);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 168) = v8;
    *(a2 + 176) = 0;
    *(a2 + 184) = 0;
    *(a2 + 168) = 0;
    v9 = *(a2 + 192);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 192) = v9;
    *(a2 + 192) = 0;
    *(a2 + 200) = 0;
    *(a2 + 208) = 0;
    v10 = *(a2 + 216);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 216) = v10;
    *(a2 + 216) = 0;
    *(a2 + 224) = 0;
    *(a2 + 232) = 0;
    result = *(a2 + 240);
    *(a1 + 240) = result;
    *(a1 + 256) = 1;
  }

  *(a1 + 264) = 0;
  *(a1 + 360) = 0;
  if (*(a2 + 360) == 1)
  {
    v11 = *(a2 + 264);
    v12 = *(a2 + 280);
    *(a1 + 296) = *(a2 + 296);
    *(a1 + 264) = v11;
    *(a1 + 280) = v12;
    result = *(a2 + 304);
    *(a1 + 320) = *(a2 + 320);
    *(a1 + 304) = result;
    *(a2 + 312) = 0;
    *(a2 + 320) = 0;
    *(a2 + 304) = 0;
    *(a1 + 328) = 0;
    *(a1 + 352) = 0;
    if (*(a2 + 352) == 1)
    {
      result = *(a2 + 328);
      *(a1 + 344) = *(a2 + 344);
      *(a1 + 328) = result;
      *(a2 + 336) = 0;
      *(a2 + 344) = 0;
      *(a2 + 328) = 0;
      *(a1 + 352) = 1;
    }

    *(a1 + 360) = 1;
  }

  *(a1 + 368) = 0;
  *(a1 + 408) = 0;
  if (*(a2 + 408) == 1)
  {
    v13 = *(a2 + 368);
    *(a1 + 384) = *(a2 + 384);
    *(a1 + 368) = v13;
    *(a2 + 376) = 0;
    *(a2 + 384) = 0;
    *(a2 + 368) = 0;
    result = *(a2 + 392);
    *(a1 + 392) = result;
    *(a1 + 408) = 1;
  }

  *(a1 + 416) = 0;
  *(a1 + 440) = 0;
  if (*(a2 + 440) == 1)
  {
    result = *(a2 + 416);
    *(a1 + 432) = *(a2 + 432);
    *(a1 + 416) = result;
    *(a2 + 424) = 0;
    *(a2 + 432) = 0;
    *(a2 + 416) = 0;
    *(a1 + 440) = 1;
  }

  return result;
}

__n128 ctb::ProvisioningConfiguration::IMS3GPP::IMS3GPP(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v2;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  if (*(a2 + 48) == 1)
  {
    v3 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 24) = v3;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    *(a1 + 48) = 1;
  }

  *(a1 + 56) = *(a2 + 7);
  v4 = a2 + 4;
  v5 = *(a2 + 8);
  *(a1 + 64) = v5;
  v6 = a1 + 64;
  v7 = *(a2 + 9);
  *(a1 + 72) = v7;
  if (v7)
  {
    *(v5 + 16) = v6;
    *(a2 + 7) = v4;
    *v4 = 0;
    *(a2 + 9) = 0;
  }

  else
  {
    *(a1 + 56) = v6;
  }

  *(a1 + 80) = *(a2 + 10);
  v8 = a2 + 11;
  v9 = *(a2 + 11);
  *(a1 + 88) = v9;
  v10 = a1 + 88;
  v11 = *(a2 + 12);
  *(a1 + 96) = v11;
  if (v11)
  {
    *(v9 + 16) = v10;
    *(a2 + 10) = v8;
    *v8 = 0;
    *(a2 + 12) = 0;
  }

  else
  {
    *(a1 + 80) = v10;
  }

  v12 = *(a2 + 104);
  *(a1 + 120) = *(a2 + 15);
  *(a1 + 104) = v12;
  *(a2 + 14) = 0;
  *(a2 + 15) = 0;
  *(a2 + 13) = 0;
  v13 = a2[8];
  *(a1 + 144) = *(a2 + 18);
  *(a1 + 128) = v13;
  *(a2 + 17) = 0;
  *(a2 + 18) = 0;
  *(a2 + 16) = 0;
  v14 = *(a2 + 152);
  *(a1 + 168) = *(a2 + 21);
  *(a1 + 152) = v14;
  v15 = a2[11];
  *(a1 + 192) = *(a2 + 24);
  *(a1 + 176) = v15;
  *(a2 + 22) = 0;
  *(a2 + 23) = 0;
  *(a2 + 24) = 0;
  v16 = *(a2 + 200);
  *(a1 + 216) = *(a2 + 27);
  *(a1 + 200) = v16;
  *(a2 + 25) = 0;
  *(a2 + 26) = 0;
  *(a2 + 27) = 0;
  v17 = a2[14];
  *(a1 + 240) = *(a2 + 30);
  *(a1 + 224) = v17;
  *(a2 + 28) = 0;
  *(a2 + 29) = 0;
  *(a2 + 30) = 0;
  v18 = *(a2 + 248);
  *(a1 + 264) = *(a2 + 33);
  *(a1 + 248) = v18;
  *(a2 + 31) = 0;
  *(a2 + 32) = 0;
  *(a2 + 33) = 0;
  v19 = a2[17];
  *(a1 + 288) = *(a2 + 36);
  *(a1 + 272) = v19;
  *(a2 + 34) = 0;
  *(a2 + 35) = 0;
  *(a2 + 36) = 0;
  v20 = *(a2 + 296);
  *(a1 + 312) = *(a2 + 39);
  *(a1 + 296) = v20;
  *(a2 + 37) = 0;
  *(a2 + 38) = 0;
  *(a2 + 39) = 0;
  v21 = a2[20];
  *(a1 + 336) = *(a2 + 42);
  *(a1 + 320) = v21;
  *(a2 + 40) = 0;
  *(a2 + 41) = 0;
  *(a2 + 42) = 0;
  v22 = *(a2 + 344);
  *(a1 + 360) = *(a2 + 45);
  *(a1 + 344) = v22;
  *(a2 + 43) = 0;
  *(a2 + 44) = 0;
  *(a2 + 45) = 0;
  v23 = a2[23];
  *(a1 + 384) = *(a2 + 48);
  *(a1 + 368) = v23;
  *(a2 + 46) = 0;
  *(a2 + 47) = 0;
  *(a2 + 48) = 0;
  v24 = *(a2 + 392);
  *(a1 + 408) = *(a2 + 51);
  *(a1 + 392) = v24;
  *(a2 + 49) = 0;
  *(a2 + 50) = 0;
  *(a2 + 51) = 0;
  v25 = a2[26];
  *(a1 + 432) = *(a2 + 54);
  *(a1 + 416) = v25;
  *(a2 + 52) = 0;
  *(a2 + 53) = 0;
  *(a2 + 54) = 0;
  v26 = *(a2 + 440);
  *(a1 + 456) = *(a2 + 57);
  *(a1 + 440) = v26;
  *(a2 + 55) = 0;
  *(a2 + 56) = 0;
  *(a2 + 57) = 0;
  v27 = a2[29];
  *(a1 + 480) = *(a2 + 60);
  *(a1 + 464) = v27;
  *(a2 + 58) = 0;
  *(a2 + 59) = 0;
  *(a2 + 60) = 0;
  result = *(a2 + 488);
  v29 = *(a2 + 504);
  *(a1 + 520) = *(a2 + 260);
  *(a1 + 488) = result;
  *(a1 + 504) = v29;
  return result;
}

std::string *sub_24266155C(std::string *a1)
{
  a1->__r_.__value_.__s.__data_[0] = 0;
  a1[1].__r_.__value_.__s.__data_[0] = 0;
  std::__optional_storage_base<std::string,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<std::string,false> const&>(a1);
  return a1;
}

void sub_24266158C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1 && *(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJN3ctb7chatbot11CardMessageENS9_19CardCarouselMessageENS9_17SuggestedChipListEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISD_LNS0_6_TraitE1EEEEEvRSE_OT_EUlSN_E_JRKNS0_6__baseILSH_1EJSA_SB_SC_EEEEEEDcSM_DpT0_(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  *v3 = *a2;
  sub_24266155C((v3 + 16));
  std::__optional_copy_base<ctb::chatbot::CardMedia,false>::__optional_copy_base[abi:ne200100]((v3 + 48), (a2 + 3));
  sub_24266155C((v3 + 232));
  sub_24266155C((v3 + 264));
  return std::__optional_copy_base<ctb::chatbot::SuggestedChipList,false>::__optional_copy_base[abi:ne200100](v3 + 296, a2 + 296);
}

void sub_24266161C(_Unwind_Exception *a1)
{
  if (*(v1 + 288) == 1 && *(v1 + 287) < 0)
  {
    operator delete(*(v1 + 264));
  }

  if (*(v1 + 256) == 1 && *(v1 + 255) < 0)
  {
    operator delete(*(v1 + 232));
  }

  std::optional<ctb::chatbot::CardMedia>::~optional(v1 + 48);
  if (*(v1 + 40) == 1 && *(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(a1);
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJN3ctb7chatbot11CardMessageENS9_19CardCarouselMessageENS9_17SuggestedChipListEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISD_LNS0_6_TraitE1EEEEEvRSE_OT_EUlSN_E_JRKNS0_6__baseILSH_1EJSA_SB_SC_EEEEEEDcSM_DpT0_(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  *(v3 + 8) = *(a2 + 2);
  *v3 = v4;
  sub_24266155C((v3 + 16));
  *(v3 + 56) = 0;
  *(v3 + 64) = 0;
  *(v3 + 48) = 0;
  return std::vector<ctb::chatbot::CardCarouselContent>::__init_with_size[abi:ne200100]<ctb::chatbot::CardCarouselContent*,ctb::chatbot::CardCarouselContent*>(v3 + 48, a2[6], a2[7], 0xAF8AF8AF8AF8AF8BLL * ((a2[7] - a2[6]) >> 3));
}

void sub_24266170C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 40) == 1 && *(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJN3ctb7chatbot11CardMessageENS9_19CardCarouselMessageENS9_17SuggestedChipListEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISD_LNS0_6_TraitE1EEEEEvRSE_OT_EUlSN_E_JRKNS0_6__baseILSH_1EJSA_SB_SC_EEEEEEDcSM_DpT0_(void **a1, uint64_t *a2)
{
  v2 = *a1;
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return std::vector<ctb::chatbot::SuggestedChip>::__init_with_size[abi:ne200100]<ctb::chatbot::SuggestedChip*,ctb::chatbot::SuggestedChip*>(v2, *a2, a2[1], 0x34F72C234F72C235 * ((a2[1] - *a2) >> 3));
}

uint64_t std::__tree<std::string>::__count_unique<std::string>(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v4 = 1;
    do
    {
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, v2 + 4) & 0x80) == 0)
      {
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v2 + 4, a2) & 0x80) == 0)
        {
          return v4;
        }

        ++v2;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return 0;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList> &&>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *v3 = *a2;
  *(v3 + 16) = 0;
  *(v3 + 40) = 0;
  if (*(a2 + 40) == 1)
  {
    v4 = *(a2 + 16);
    *(v3 + 32) = *(a2 + 32);
    *(v3 + 16) = v4;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 16) = 0;
    *(v3 + 40) = 1;
  }

  std::optional<ctb::chatbot::CardMedia>::optional[abi:ne200100](v3 + 48, (a2 + 48));
  *(v3 + 232) = 0;
  *(v3 + 256) = 0;
  if (*(a2 + 256) == 1)
  {
    result = *(a2 + 232);
    *(v3 + 248) = *(a2 + 248);
    *(v3 + 232) = result;
    *(a2 + 240) = 0;
    *(a2 + 248) = 0;
    *(a2 + 232) = 0;
    *(v3 + 256) = 1;
  }

  *(v3 + 264) = 0;
  *(v3 + 288) = 0;
  if (*(a2 + 288) == 1)
  {
    result = *(a2 + 264);
    *(v3 + 280) = *(a2 + 280);
    *(v3 + 264) = result;
    *(a2 + 272) = 0;
    *(a2 + 280) = 0;
    *(a2 + 264) = 0;
    *(v3 + 288) = 1;
  }

  *(v3 + 296) = 0;
  *(v3 + 320) = 0;
  if (*(a2 + 320) == 1)
  {
    *(v3 + 296) = 0;
    *(v3 + 304) = 0;
    *(v3 + 312) = 0;
    *(v3 + 296) = *(a2 + 296);
    result = *(a2 + 304);
    *(v3 + 304) = result;
    *(a2 + 296) = 0;
    *(a2 + 304) = 0;
    *(a2 + 312) = 0;
    *(v3 + 320) = 1;
  }

  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList> &&>(uint64_t *a1, __n128 *a2)
{
  v2 = *a1;
  v3 = a2->n128_u64[0];
  *(v2 + 8) = a2->n128_u32[2];
  *v2 = v3;
  *(v2 + 16) = 0;
  *(v2 + 40) = 0;
  if (a2[2].n128_u8[8] == 1)
  {
    v4 = a2[1];
    *(v2 + 32) = a2[2].n128_u64[0];
    *(v2 + 16) = v4;
    a2[1].n128_u64[1] = 0;
    a2[2].n128_u64[0] = 0;
    a2[1].n128_u64[0] = 0;
    *(v2 + 40) = 1;
  }

  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  result = a2[3];
  *(v2 + 48) = result;
  *(v2 + 64) = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList> &&>(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  v2->n128_u64[0] = 0;
  v2->n128_u64[1] = 0;
  v2[1].n128_u64[0] = 0;
  result = *a2;
  *v2 = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

void std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::__destroy_vector::operator()[abi:ne200100](void ***a1, void (*a2)(char *))
{
  v2 = *a1;
  v3 = **a1;
  if (v3)
  {
    v5 = v2[1];
    v6 = **a1;
    if (v5 != v3)
    {
      do
      {
        v5 -= 56;
        a2(v5);
      }

      while (v5 != v3);
      v6 = **a1;
    }

    v2[1] = v3;

    operator delete(v6);
  }
}

uint64_t ctb::chatbot::Media::~Media(uint64_t a1)
{
  if (*(a1 + 48) == 1 && *(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJN3ctb7chatbot15SuggestedActionENS9_14SuggestedReplyEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISC_LNS0_6_TraitE1EEEEEvRSD_OT_EUlSM_E_JRKNS0_6__baseILSG_1EJSA_SB_EEEEEEDcSL_DpT0_(void *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *a1;
  *v4 = *a2;
  v5 = (v4 + 2);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v5, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v6 = *(a2 + 8);
    v5->__r_.__value_.__r.__words[2] = *(a2 + 24);
    *&v5->__r_.__value_.__l.__data_ = v6;
  }

  sub_24266155C((v3 + 8));
  return std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<ctb::chatbot::SuggestedActionOpenUrlInWebView,ctb::chatbot::SuggestedActionOpenUrlInApplication,ctb::chatbot::SuggestedActionComposeText,ctb::chatbot::SuggestedActionComposeAudioRecording,ctb::chatbot::SuggestedActionComposeVideoRecording,ctb::chatbot::SuggestedActionShowLocation,ctb::chatbot::SuggestedActionRequestLocationPush,ctb::chatbot::SuggestedActionCalendar,ctb::chatbot::SuggestedActionDialVideoCall,ctb::chatbot::SuggestedActionDialEnrichedCall,ctb::chatbot::SuggestedActionDialPhoneNumber,ctb::chatbot::SuggestedActionDevice,ctb::chatbot::SuggestedActionSettings>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100]((v3 + 18), a2 + 72);
}

std::string *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJN3ctb7chatbot15SuggestedActionENS9_14SuggestedReplyEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISC_LNS0_6_TraitE1EEEEEvRSD_OT_EUlSM_E_JRKNS0_6__baseILSG_1EJSA_SB_EEEEEEDcSL_DpT0_(std::string **a1, __int128 *a2)
{
  v2 = *a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*a1, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    v2->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v2->__r_.__value_.__l.__data_ = v3;
  }

  return sub_24266155C(v2 + 1);
}

void sub_242661B6C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJN3ctb7chatbot31SuggestedActionOpenUrlInWebViewENS9_35SuggestedActionOpenUrlInApplicationENS9_26SuggestedActionComposeTextENS9_36SuggestedActionComposeAudioRecordingENS9_36SuggestedActionComposeVideoRecordingENS9_27SuggestedActionShowLocationENS9_34SuggestedActionRequestLocationPushENS9_23SuggestedActionCalendarENS9_28SuggestedActionDialVideoCallENS9_31SuggestedActionDialEnrichedCallENS9_30SuggestedActionDialPhoneNumberENS9_21SuggestedActionDeviceENS9_23SuggestedActionSettingsEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISN_LNS0_6_TraitE1EEEEEvRSO_OT_EUlSX_E_JRKNS0_6__baseILSR_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_EEEEEEDcSW_DpT0_(void *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *a1;
  *v4 = *a2;
  v5 = (v4 + 2);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v5, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v6 = *(a2 + 8);
    v5->__r_.__value_.__r.__words[2] = *(a2 + 24);
    *&v5->__r_.__value_.__l.__data_ = v6;
  }

  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((v3 + 8), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v7 = *(a2 + 32);
    *(v3 + 6) = *(a2 + 48);
    *(v3 + 2) = v7;
  }
}

void sub_242661C10(_Unwind_Exception *exception_object)
{
  if (*(v2 + 31) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJN3ctb7chatbot31SuggestedActionOpenUrlInWebViewENS9_35SuggestedActionOpenUrlInApplicationENS9_26SuggestedActionComposeTextENS9_36SuggestedActionComposeAudioRecordingENS9_36SuggestedActionComposeVideoRecordingENS9_27SuggestedActionShowLocationENS9_34SuggestedActionRequestLocationPushENS9_23SuggestedActionCalendarENS9_28SuggestedActionDialVideoCallENS9_31SuggestedActionDialEnrichedCallENS9_30SuggestedActionDialPhoneNumberENS9_21SuggestedActionDeviceENS9_23SuggestedActionSettingsEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISN_LNS0_6_TraitE1EEEEEvRSO_OT_EUlSX_E_JRKNS0_6__baseILSR_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_EEEEEEDcSW_DpT0_(std::string **a1, __int128 *a2)
{
  v3 = *a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*a1, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    v3->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v3->__r_.__value_.__l.__data_ = v4;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(v3 + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    v3[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&v3[1].__r_.__value_.__l.__data_ = v5;
  }
}

void sub_242661CA4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJN3ctb7chatbot31SuggestedActionOpenUrlInWebViewENS9_35SuggestedActionOpenUrlInApplicationENS9_26SuggestedActionComposeTextENS9_36SuggestedActionComposeAudioRecordingENS9_36SuggestedActionComposeVideoRecordingENS9_27SuggestedActionShowLocationENS9_34SuggestedActionRequestLocationPushENS9_23SuggestedActionCalendarENS9_28SuggestedActionDialVideoCallENS9_31SuggestedActionDialEnrichedCallENS9_30SuggestedActionDialPhoneNumberENS9_21SuggestedActionDeviceENS9_23SuggestedActionSettingsEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISN_LNS0_6_TraitE1EEEEEvRSO_OT_EUlSX_E_JRKNS0_6__baseILSR_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_EEEEEEDcSW_DpT0_Tm(std::string **a1, __int128 *a2)
{
  v2 = *a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v2, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    v2->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v2->__r_.__value_.__l.__data_ = v3;
  }
}

std::string *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm5EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJN3ctb7chatbot31SuggestedActionOpenUrlInWebViewENS9_35SuggestedActionOpenUrlInApplicationENS9_26SuggestedActionComposeTextENS9_36SuggestedActionComposeAudioRecordingENS9_36SuggestedActionComposeVideoRecordingENS9_27SuggestedActionShowLocationENS9_34SuggestedActionRequestLocationPushENS9_23SuggestedActionCalendarENS9_28SuggestedActionDialVideoCallENS9_31SuggestedActionDialEnrichedCallENS9_30SuggestedActionDialPhoneNumberENS9_21SuggestedActionDeviceENS9_23SuggestedActionSettingsEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISN_LNS0_6_TraitE1EEEEEvRSO_OT_EUlSX_E_JRKNS0_6__baseILSR_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_EEEEEEDcSW_DpT0_(uint64_t *a1, __int128 *a2)
{
  v2 = *a1;
  v3 = *a2;
  *(v2 + 16) = *(a2 + 2);
  *v2 = v3;
  sub_24266155C((v2 + 24));
  sub_24266155C((v2 + 56));
  return sub_24266155C((v2 + 88));
}

void sub_242661D44(_Unwind_Exception *exception_object)
{
  if (*(v1 + 80) == 1 && *(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  if (*(v1 + 48) == 1 && *(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  _Unwind_Resume(exception_object);
}

std::string *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm9EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJN3ctb7chatbot31SuggestedActionOpenUrlInWebViewENS9_35SuggestedActionOpenUrlInApplicationENS9_26SuggestedActionComposeTextENS9_36SuggestedActionComposeAudioRecordingENS9_36SuggestedActionComposeVideoRecordingENS9_27SuggestedActionShowLocationENS9_34SuggestedActionRequestLocationPushENS9_23SuggestedActionCalendarENS9_28SuggestedActionDialVideoCallENS9_31SuggestedActionDialEnrichedCallENS9_30SuggestedActionDialPhoneNumberENS9_21SuggestedActionDeviceENS9_23SuggestedActionSettingsEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISN_LNS0_6_TraitE1EEEEEvRSO_OT_EUlSX_E_JRKNS0_6__baseILSR_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_EEEEEEDcSW_DpT0_(std::string **a1, __int128 *a2)
{
  v2 = *a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*a1, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    v2->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v2->__r_.__value_.__l.__data_ = v3;
  }

  sub_24266155C(v2 + 1);
  return sub_24266155C((v2 + 56));
}

void sub_242661E0C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 48) == 1 && *(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm8EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJN3ctb7chatbot31SuggestedActionOpenUrlInWebViewENS9_35SuggestedActionOpenUrlInApplicationENS9_26SuggestedActionComposeTextENS9_36SuggestedActionComposeAudioRecordingENS9_36SuggestedActionComposeVideoRecordingENS9_27SuggestedActionShowLocationENS9_34SuggestedActionRequestLocationPushENS9_23SuggestedActionCalendarENS9_28SuggestedActionDialVideoCallENS9_31SuggestedActionDialEnrichedCallENS9_30SuggestedActionDialPhoneNumberENS9_21SuggestedActionDeviceENS9_23SuggestedActionSettingsEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISN_LNS0_6_TraitE1EEEEEvRSO_OT_EUlSX_E_JRKNS0_6__baseILSR_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_EEEEEEDcSW_DpT0_Tm(std::string **a1, __int128 *a2)
{
  v2 = *a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*a1, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    v2->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v2->__r_.__value_.__l.__data_ = v3;
  }

  return sub_24266155C(v2 + 1);
}

void sub_242661EA8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1, void (*a2)(void))
{
  if (**a1)
  {
    a2();
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<ctb::chatbot::MediaEntry>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<ctb::chatbot::MediaEntry>>::destroy[abi:ne200100]<ctb::chatbot::MediaEntry,void,0>(a1, i))
  {
    i -= 72;
  }

  *(a1 + 8) = a2;
}

void std::vector<ctb::chatbot::WebEntry>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::__destroy_at[abi:ne200100]<ctb::CPIMNamespace,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJN3ctb7chatbot13SuggestedChipENS9_6MenuL2EEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISC_LNS0_6_TraitE1EEEEEvRSD_OT_EUlSM_E_JRKNS0_6__baseILSG_1EJSA_SB_EEEEEEDcSL_DpT0__0(_DWORD **a1, _DWORD *a2)
{
  v2 = *a1;
  *v2 = *a2;
  return std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<ctb::chatbot::SuggestedAction,ctb::chatbot::SuggestedReply>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100]((v2 + 2), (a2 + 2));
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJN3ctb7chatbot13SuggestedChipENS9_6MenuL1EEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISC_LNS0_6_TraitE1EEEEEvRSD_OT_EUlSM_E_JRKNS0_6__baseILSG_1EJSA_SB_EEEEEEDcSL_DpT0_(std::string **a1, __int128 *a2)
{
  v3 = *a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*a1, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    v3->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v3->__r_.__value_.__l.__data_ = v4;
  }

  v3[1].__r_.__value_.__r.__words[0] = 0;
  v3[1].__r_.__value_.__l.__size_ = 0;
  v3[1].__r_.__value_.__r.__words[2] = 0;
  return std::vector<ctb::chatbot::MenuL1Content>::__init_with_size[abi:ne200100]<ctb::chatbot::MenuL1Content*,ctb::chatbot::MenuL1Content*>(&v3[1], *(a2 + 3), *(a2 + 4), 0xEF7BDEF7BDEF7BDFLL * ((*(a2 + 4) - *(a2 + 3)) >> 3));
}

void sub_242662118(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJN3ctb7chatbot13SuggestedChipENS9_6MenuL2EEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISC_LNS0_6_TraitE1EEEEEvRSD_OT_EUlSM_E_JRKNS0_6__baseILSG_1EJSA_SB_EEEEEEDcSL_DpT0_(std::string **a1, __int128 *a2)
{
  v3 = *a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*a1, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    v3->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v3->__r_.__value_.__l.__data_ = v4;
  }

  v3[1].__r_.__value_.__r.__words[0] = 0;
  v3[1].__r_.__value_.__l.__size_ = 0;
  v3[1].__r_.__value_.__r.__words[2] = 0;
  return std::vector<ctb::chatbot::MenuL2Content>::__init_with_size[abi:ne200100]<ctb::chatbot::MenuL2Content*,ctb::chatbot::MenuL2Content*>(&v3[1], *(a2 + 3), *(a2 + 4), 0x34F72C234F72C235 * ((*(a2 + 4) - *(a2 + 3)) >> 3));
}

void sub_2426621B0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<ctb::chatbot::MenuL1Content>::__destroy_vector::operator()[abi:ne200100](void ***a1, void (*a2)(char *))
{
  v2 = *a1;
  v3 = **a1;
  if (v3)
  {
    v5 = v2[1];
    v6 = **a1;
    if (v5 != v3)
    {
      do
      {
        v8 = v5 - 248;
        a2(v5 - 240);
        v5 = v8;
      }

      while (v8 != v3);
      v6 = **a1;
    }

    v2[1] = v3;

    operator delete(v6);
  }
}

{
  v2 = *a1;
  v3 = **a1;
  if (v3)
  {
    v5 = v2[1];
    v6 = **a1;
    if (v5 != v3)
    {
      do
      {
        v8 = v5 - 248;
        a2(v5 - 240);
        v5 = v8;
      }

      while (v8 != v3);
      v6 = **a1;
    }

    v2[1] = v3;

    operator delete(v6);
  }
}

void std::vector<ctb::chatbot::CardCarouselContent>::__destroy_vector::operator()[abi:ne200100](void ***a1, void (*a2)(void))
{
  if (**a1)
  {
    a2();
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t FileTransferInfo.init(rcsFileTransferInfo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECB5AD8);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - v7;
  v9 = sub_2426A9DD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECB5AE0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - v14;
  sub_2426AA160();
  if ((*(v10 + 48))(v15, 1, v9) == 1)
  {
    sub_2426627B0(v15);
    v16 = type metadata accessor for FileInfo();
    v17 = (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
  }

  else
  {
    v18 = (*(v10 + 32))(&v24 - v12, v15, v9);
    MEMORY[0x28223BE20](v18);
    (*(v10 + 16))(&v24 - v12, &v24 - v12, v9);
    v19 = sub_2426830E4(&v24 - v12, v8);
    (*(v10 + 8))(&v24 - v12, v9, v19);
    v16 = type metadata accessor for FileInfo();
    v17 = (*(*(v16 - 8) + 56))(v8, 0, 1, v16);
  }

  MEMORY[0x28223BE20](v17);
  sub_2426AA140();
  v20 = v25;
  sub_2426830E4(&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v25);
  v21 = sub_2426AA170();
  (*(*(v21 - 8) + 8))(a1, v21);
  sub_242662818(v8, v6);
  v22 = *(type metadata accessor for FileTransferInfo() + 20);
  type metadata accessor for FileInfo();
  (*(*(v16 - 8) + 56))(v20 + v22, 1, 1, v16);
  return sub_242662888(v6, v20 + v22);
}

uint64_t sub_2426627B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECB5AE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_242662818(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECB5AD8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_242662888(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECB5AD8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2426628F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = sub_2426A9FD0();
  sub_2426835F0(v3, v4, v67);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECB5B20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2426AA000();
  MEMORY[0x28223BE20](v8);
  sub_242664250(v7, v7, &qword_27ECB5B20);
  v9 = sub_2426A9FF0();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v7, 1, v9);
  if (v11 == 1)
  {
    sub_2426642B8(v7, &qword_27ECB5B20);
    v66 = 0;
    std::optional<ctb::ProvisioningConfiguration::Services::DataOffBehavior>::optional[abi:ne200100](&v66);
    v58 = v66;
    v57 = BYTE4(v66);
  }

  else
  {
    v12 = *(v10 + 64);
    MEMORY[0x28223BE20](v11);
    v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
    v14 = (*(v10 + 32))(&v55 - v13, v7, v9);
    MEMORY[0x28223BE20](v14);
    (*(v10 + 16))(&v55 - v13, &v55 - v13, v9);
    v15 = sub_2426643A4(&v55 - v13);
    Optional = ctb::bridging::makeOptional(v15);
    (*(v10 + 8))(&v55 - v13, v9);
    sub_2426642B8(v7, &qword_27ECB5B20);
    v57 = HIDWORD(Optional);
    v58 = Optional;
    LODWORD(v66) = Optional;
    BYTE4(v66) = BYTE4(Optional);
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECB5B28);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = &v55 - v19;
  v60 = a1;
  v21 = sub_2426AA010();
  MEMORY[0x28223BE20](v21);
  v22 = &v55 - v19;
  sub_242664250(&v55 - v19, &v55 - v19, &qword_27ECB5B28);
  v23 = sub_2426A9F00();
  v24 = *(v23 - 8);
  v25 = (*(v24 + 48))(&v55 - v19, 1, v23);
  if (v25 == 1)
  {
    sub_2426642B8(&v55 - v19, &qword_27ECB5B28);
    memset(v61, 0, sizeof(v61));
    v62 = 0;
    v63 = 1;
  }

  else
  {
    v56 = &v55;
    v26 = *(v24 + 64);
    MEMORY[0x28223BE20](v25);
    v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
    v28 = (*(v24 + 32))(&v55 - v27, v22, v23);
    MEMORY[0x28223BE20](v28);
    (*(v24 + 16))(&v55 - v27, &v55 - v27, v23);
    v29 = sub_2426A9EF0();
    sub_2426835F0(v29, v30, v64);
    v31 = *(v24 + 8);
    v31(&v55 - v27, v23);
    ctb::bridging::makeOptional(v64, v61);
    std::optional<std::string>::~optional(v64);
    v31(&v55 - v27, v23);
    sub_2426642B8(v20, &qword_27ECB5B28);
    v63 = 0;
  }

  if (v63)
  {
    v65 = 0;
    memset(v64, 0, sizeof(v64));
    std::optional<ctb::SIPConferenceInfo::ReferredInfo>::optional[abi:ne200100](v64);
    v32 = v60;
    if (v63 != 1)
    {
      sub_2426642B8(v61, &qword_27ECB5B30);
    }
  }

  else
  {
    std::optional<ctb::SIPConferenceInfo::ReferredInfo>::optional[abi:ne200100](v64, v61);
    std::optional<ctb::SIPConferenceInfo::ReferredInfo>::~optional(v61);
    v32 = v60;
  }

  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECB5B38);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF0;
  v36 = &v55 - v35;
  v37 = sub_2426A9FE0();
  MEMORY[0x28223BE20](v37);
  v38 = &v55 - v35;
  sub_242664250(&v55 - v35, &v55 - v35, &qword_27ECB5B38);
  v39 = sub_2426A9F70();
  v40 = *(v39 - 8);
  v41 = (*(v40 + 48))(&v55 - v35, 1, v39);
  if (v41 == 1)
  {
    sub_2426642B8(&v55 - v35, &qword_27ECB5B38);
    *&v61[0] = 0;
    std::optional<ctb::ProvisioningConfiguration::Services::DataOffBehavior>::optional[abi:ne200100](v61);
    v42 = sub_2426AA020();
    (*(*(v42 - 8) + 8))(v32, v42);
    v43 = v61[0];
    LOBYTE(v44) = BYTE4(v61[0]);
  }

  else
  {
    v56 = &v55;
    v45 = *(v40 + 64);
    MEMORY[0x28223BE20](v41);
    v46 = (v45 + 15) & 0xFFFFFFFFFFFFFFF0;
    v47 = (*(v40 + 32))(&v55 - v46, v38, v39);
    MEMORY[0x28223BE20](v47);
    (*(v40 + 16))(&v55 - v46, &v55 - v46, v39);
    v48 = (*(v40 + 88))(&v55 - v46, v39);
    if (MEMORY[0x277CF2230] && v48 == *MEMORY[0x277CF2230])
    {
      v49 = 1;
    }

    else if (MEMORY[0x277CF2220] && v48 == *MEMORY[0x277CF2220])
    {
      v49 = 2;
    }

    else if (MEMORY[0x277CF2228] && v48 == *MEMORY[0x277CF2228])
    {
      v49 = 3;
    }

    else if (MEMORY[0x277CF2218] && v48 == *MEMORY[0x277CF2218])
    {
      v49 = 4;
    }

    else
    {
      (*(v40 + 8))(&v55 - v46, v39);
      v49 = 0;
    }

    v50 = ctb::bridging::makeOptional(v49);
    v43 = v50;
    v44 = HIDWORD(v50);
    (*(v40 + 8))(&v55 - v46, v39);
    sub_2426642B8(v36, &qword_27ECB5B38);
    v51 = sub_2426AA020();
    (*(*(v51 - 8) + 8))(v60, v51);
    LODWORD(v61[0]) = v43;
    BYTE4(v61[0]) = v44;
  }

  v52 = v59;
  std::optional<ctb::chatbot::PostbackData>::optional[abi:ne200100](v59, v67);
  std::optional<std::string>::~optional(v67);
  v53 = v57;
  *(v52 + 32) = v58;
  *(v52 + 36) = v53;
  std::optional<ctb::SIPConferenceInfo::ReferredInfo>::optional[abi:ne200100](v52 + 40, v64);
  result = std::optional<ctb::SIPConferenceInfo::ReferredInfo>::~optional(v64);
  *(v52 + 80) = v43;
  *(v52 + 84) = v44;
  return result;
}

uint64_t sub_2426631B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2426A9F40();
  if (v5)
  {
    v6 = v4;
    v7 = v5;

    sub_24268D30C(v6, v7, &v37);
    ctb::bridging::makeOptional(&v37, &v34);
    std::string::~string(&v37);

    v36 = 0;
    std::optional<ctb::chatbot::PostbackData>::optional[abi:ne200100](&v37, &v34);
    std::optional<std::string>::~optional(&v34);
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
    v36 = 1;
    type metadata accessor for std.__1.optional_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___(0);
    v9 = v8;
    v10 = sub_24266404C(&qword_27ECB57F0, type metadata accessor for std.__1.optional_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___);
    CxxOptional.init(nilLiteral:)(v9, v10);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECB5B10);
  v32 = v30;
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2426A9F30();
  MEMORY[0x28223BE20](v14);
  sub_242664250(v13, v13, &qword_27ECB5B10);
  v15 = sub_2426A9F20();
  v16 = *(v15 - 8);
  v17 = (*(v16 + 48))(v13, 1, v15);
  if (v17 == 1)
  {
    sub_2426642B8(v13, &qword_27ECB5B10);
    v34 = 0u;
    v35 = 0u;
    v36 = 1;
  }

  else
  {
    v30[1] = v30;
    v31 = a2;
    v18 = *(v16 + 64);
    MEMORY[0x28223BE20](v17);
    v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
    v20 = (*(v16 + 32))(v30 - v19, v13, v15);
    MEMORY[0x28223BE20](v20);
    (*(v16 + 16))(v30 - v19, v30 - v19, v15);
    v21 = sub_2426A9F10();
    sub_24268D30C(v21, v22, &v33);
    v23 = *(v16 + 8);
    v23(v30 - v19, v15);
    ctb::bridging::makeOptional(&v33, &v34);
    ctb::SIPConferenceInfo::SubjectExt::~SubjectExt(&v33.__r_.__value_.__l.__data_);
    v23(v30 - v19, v15);
    sub_2426642B8(v13, &qword_27ECB5B10);
    v36 = 0;
    a2 = v31;
  }

  if (v36)
  {
    type metadata accessor for std.__1.optional_ctb.SIPConferenceInfo.SubjectExt_(0);
    v25 = v24;
    v26 = sub_24266404C(&qword_27ECB5740, type metadata accessor for std.__1.optional_ctb.SIPConferenceInfo.SubjectExt_);
    CxxOptional.init(nilLiteral:)(v25, v26);
    v27 = sub_2426A9F50();
    (*(*(v27 - 8) + 8))(a1, v27);
    if (v36 != 1)
    {
      sub_2426642B8(&v34, &qword_27ECB5B18);
    }
  }

  else
  {
    v28 = sub_2426A9F50();
    (*(*(v28 - 8) + 8))(a1, v28);
    std::optional<ctb::chatbot::PostbackData>::optional[abi:ne200100](&v33, &v34);
    std::optional<std::string>::~optional(&v34);
  }

  std::optional<ctb::chatbot::PostbackData>::optional[abi:ne200100](a2, &v37);
  std::optional<std::string>::~optional(&v37);
  std::optional<ctb::chatbot::PostbackData>::optional[abi:ne200100](a2 + 32, &v33);
  return std::optional<std::string>::~optional(&v33);
}

uint64_t sub_24266365C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v31 = a2;
  std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::vector[abi:ne200100](a2);
  v3 = sub_2426A9FA0();
  v30 = *(v3 + 16);
  if (v30)
  {
    v23 = a1;
    result = sub_2426A9F90();
    v5 = result;
    v6 = 0;
    v7 = *(result - 8);
    v28 = v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v29 = v7;
    v27 = v7 + 16;
    v26 = (v7 + 8);
    v25 = v3;
    v24 = result;
    while (v6 < *(v3 + 16))
    {
      MEMORY[0x28223BE20](result);
      v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v10 + 16))(v9);
      v11 = sub_2426A9F80();
      v35 = 0uLL;
      v36 = 0;
      std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::vector[abi:ne200100](&v35);
      v12 = sub_2426AA020();
      v33 = &v23;
      v13 = *(v12 - 8);
      MEMORY[0x28223BE20](v12);
      v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      v16 = *(v11 + 16);
      if (v16)
      {
        v32 = &v23;
        v19 = *(v13 + 16);
        v17 = v13 + 16;
        v18 = v19;
        v20 = v11 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
        v21 = *(v17 + 56);
        do
        {
          v18(v15, v20, v12);
          sub_2426628F8(v15, v34);
          std::vector<ctb::SIPConferenceInfo::Endpoint>::push_back[abi:ne200100](&v35, v34);
          ctb::SIPConferenceInfo::Endpoint::~Endpoint(v34);
          v20 += v21;
          --v16;
        }

        while (v16);

        v3 = v25;
        v5 = v24;
      }

      else
      {
      }

      (*v26)(v9, v5);
      std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::vector[abi:ne200100](v34, &v35);
      std::vector<ctb::SIPConferenceInfo::Endpoint>::~vector[abi:ne200100](&v35);
      std::vector<ctb::SIPConferenceInfo::User>::push_back[abi:ne200100](v31, v34);
      ++v6;
      result = std::vector<ctb::SIPConferenceInfo::Endpoint>::~vector[abi:ne200100](v34);
      if (v6 == v30)
      {

        a1 = v23;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_12:
    v22 = sub_2426A9FB0();
    return (*(*(v22 - 8) + 8))(a1, v22);
  }

  return result;
}

void **sub_24266398C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECB5AE8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2426A9F60();
  MEMORY[0x28223BE20](v6);
  sub_242664250(v5, v5, &qword_27ECB5AE8);
  v7 = sub_2426A9F50();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  if (v9 == 1)
  {
    sub_2426642B8(v5, &qword_27ECB5AE8);
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0;
    v40 = 1;
    type metadata accessor for std.__1.optional_ctb.SIPConferenceInfo.Description_(0);
    v14 = v13;
    v15 = sub_24266404C(&qword_27ECB5748, type metadata accessor for std.__1.optional_ctb.SIPConferenceInfo.Description_);
    CxxOptional.init(nilLiteral:)(v14, v15);
    if (v40 != 1)
    {
      sub_2426642B8(&v35, &qword_27ECB5AF0);
    }
  }

  else
  {
    v10 = *(v8 + 64);
    MEMORY[0x28223BE20](v9);
    v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
    v12 = (*(v8 + 32))(&v30 - v11, v5, v7);
    MEMORY[0x28223BE20](v12);
    (*(v8 + 16))(&v30 - v11, &v30 - v11, v7);
    sub_2426631B0(&v30 - v11, v41);
    ctb::bridging::makeOptional(v41, &v35);
    ctb::SIPConferenceInfo::Description::~Description(v41);
    (*(v8 + 8))(&v30 - v11, v7);
    sub_2426642B8(v5, &qword_27ECB5AE8);
    v40 = 0;
    std::optional<ctb::SIPConferenceInfo::Description>::optional[abi:ne200100](v41, &v35);
    std::optional<ctb::SIPConferenceInfo::Description>::~optional(&v35);
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECB5AF8);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a1;
  v19 = sub_2426A9FC0();
  MEMORY[0x28223BE20](v19);
  sub_242664250(v18, v18, &qword_27ECB5AF8);
  v20 = sub_2426A9FB0();
  v21 = *(v20 - 8);
  v22 = (*(v21 + 48))(v18, 1, v20);
  if (v22 == 1)
  {
    sub_2426642B8(v18, &qword_27ECB5AF8);
    *&v36 = 0;
    v35 = 0uLL;
    BYTE8(v36) = 1;
  }

  else
  {
    v30 = &v30;
    v23 = *(v21 + 64);
    MEMORY[0x28223BE20](v22);
    v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
    v25 = (*(v21 + 32))(&v30 - v24, v18, v20);
    MEMORY[0x28223BE20](v25);
    (*(v21 + 16))(&v30 - v24, &v30 - v24, v20);
    sub_24266365C(&v30 - v24, &v35);
    (*(v21 + 8))(&v30 - v24, v20);
    sub_2426642B8(v18, &qword_27ECB5AF8);
    BYTE8(v36) = 0;
  }

  if (BYTE8(v36))
  {
    v34 = 0;
    v33 = 0uLL;
    std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::vector[abi:ne200100](&v33);
    v26 = sub_2426AA030();
    (*(*(v26 - 8) + 8))(v31, v26);
    if (BYTE8(v36) != 1)
    {
      sub_2426642B8(&v35, &qword_27ECB5B00);
    }
  }

  else
  {
    v27 = sub_2426AA030();
    (*(*(v27 - 8) + 8))(v31, v27);
    std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::vector[abi:ne200100](&v33, &v35);
    std::vector<ctb::SIPConferenceInfo::User>::~vector[abi:ne200100](&v35);
  }

  v28 = v32;
  std::optional<ctb::SIPConferenceInfo::Description>::optional[abi:ne200100](v32, v41);
  std::optional<ctb::SIPConferenceInfo::Description>::~optional(v41);
  std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::vector[abi:ne200100]((v28 + 72), &v33);
  return std::vector<ctb::SIPConferenceInfo::User>::~vector[abi:ne200100](&v33);
}

__n128 std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::vector[abi:ne200100](__n128 *a1, __n128 *a2)
{
  a1->n128_u64[0] = 0;
  a1->n128_u64[1] = 0;
  a1[1].n128_u64[0] = 0;
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

uint64_t ctb::bridging::makeOptional@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 24) = 0;
  if (*(result + 24) == 1)
  {
    *a2 = *result;
    *(a2 + 16) = *(result + 16);
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = 0;
    *(a2 + 24) = 1;
  }

  *(a2 + 32) = 0;
  *(a2 + 56) = 0;
  if (*(result + 56) == 1)
  {
    *(a2 + 32) = *(result + 32);
    *(a2 + 48) = *(result + 48);
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 32) = 0;
    *(a2 + 56) = 1;
  }

  *(a2 + 64) = 1;
  return result;
}

{
  *a2 = 0;
  *(a2 + 24) = 0;
  if (*(result + 24) == 1)
  {
    *a2 = *result;
    *(a2 + 16) = *(result + 16);
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = 0;
    *(a2 + 24) = 1;
  }

  *(a2 + 32) = 1;
  return result;
}

{
  *a2 = *result;
  *(a2 + 16) = *(result + 16);
  *result = 0;
  *(result + 8) = 0;
  v2 = *(result + 24);
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(a2 + 24) = v2;
  v3 = *(result + 40);
  v4 = *(result + 48);
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(a2 + 40) = v3;
  *(a2 + 48) = v4;
  *(a2 + 56) = 0;
  *(a2 + 80) = 0;
  if (*(result + 80) == 1)
  {
    *(a2 + 56) = *(result + 56);
    *(a2 + 72) = *(result + 72);
    *(result + 64) = 0;
    *(result + 72) = 0;
    *(result + 56) = 0;
    *(a2 + 80) = 1;
  }

  *(a2 + 88) = 0;
  *(a2 + 112) = 0;
  if (*(result + 112) == 1)
  {
    *(a2 + 88) = *(result + 88);
    *(a2 + 104) = *(result + 104);
    *(result + 96) = 0;
    *(result + 104) = 0;
    *(result + 88) = 0;
    *(a2 + 112) = 1;
  }

  v5 = *(result + 120);
  *(a2 + 144) = 0;
  *(a2 + 120) = v5;
  *(a2 + 136) = *(result + 136);
  *(a2 + 168) = 0;
  if (*(result + 168) == 1)
  {
    *(a2 + 144) = *(result + 144);
    *(a2 + 160) = *(result + 160);
    *(result + 152) = 0;
    *(result + 160) = 0;
    *(result + 144) = 0;
    *(a2 + 168) = 1;
  }

  *(a2 + 176) = 1;
  return result;
}

{
  *a2 = *result;
  *(a2 + 16) = *(result + 16);
  *(a2 + 24) = 0;
  *(a2 + 112) = 0;
  if (*(result + 112) == 1)
  {
    *(a2 + 24) = *(result + 24);
    *(a2 + 40) = *(result + 40);
    *(result + 24) = 0;
    *(result + 32) = 0;
    v2 = *(result + 48);
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(a2 + 48) = v2;
    *(a2 + 64) = *(result + 64);
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(a2 + 72) = *(result + 72);
    *(a2 + 104) = *(result + 104);
    v3 = *(result + 88);
    v4 = *(result + 96);
    *(result + 80) = 0;
    *(result + 88) = 0;
    *(result + 72) = 0;
    *(a2 + 88) = v3;
    *(a2 + 96) = v4;
    *(a2 + 112) = 1;
  }

  *(a2 + 120) = 0;
  *(a2 + 256) = 0;
  if (*(result + 256) == 1)
  {
    *(a2 + 120) = *(result + 120);
    *(a2 + 136) = *(result + 136);
    *(a2 + 144) = *(result + 144);
    *(a2 + 160) = *(result + 160);
    *(result + 144) = 0;
    *(result + 152) = 0;
    *(a2 + 168) = *(result + 168);
    *(a2 + 184) = *(result + 184);
    *(result + 160) = 0;
    *(result + 168) = 0;
    *(result + 176) = 0;
    *(result + 184) = 0;
    v5 = *(result + 192);
    *(a2 + 208) = *(result + 208);
    *(a2 + 192) = v5;
    *(result + 192) = 0;
    *(result + 200) = 0;
    v6 = *(result + 216);
    *(a2 + 232) = *(result + 232);
    *(a2 + 216) = v6;
    *(result + 208) = 0;
    *(result + 216) = 0;
    *(result + 224) = 0;
    *(result + 232) = 0;
    *(a2 + 240) = *(result + 240);
    *(a2 + 256) = 1;
  }

  *(a2 + 264) = 0;
  *(a2 + 360) = 0;
  if (*(result + 360) == 1)
  {
    *(a2 + 296) = *(result + 296);
    v7 = *(result + 280);
    *(a2 + 264) = *(result + 264);
    *(a2 + 280) = v7;
    *(a2 + 304) = *(result + 304);
    *(a2 + 320) = *(result + 320);
    *(result + 304) = 0;
    *(result + 312) = 0;
    *(result + 320) = 0;
    *(a2 + 328) = 0;
    *(a2 + 352) = 0;
    if (*(result + 352) == 1)
    {
      *(a2 + 344) = *(result + 344);
      *(a2 + 328) = *(result + 328);
      *(result + 336) = 0;
      *(result + 344) = 0;
      *(result + 328) = 0;
      *(a2 + 352) = 1;
    }

    *(a2 + 360) = 1;
  }

  *(a2 + 368) = 0;
  *(a2 + 408) = 0;
  if (*(result + 408) == 1)
  {
    *(a2 + 368) = *(result + 368);
    *(a2 + 384) = *(result + 384);
    *(result + 376) = 0;
    *(result + 384) = 0;
    *(result + 368) = 0;
    *(a2 + 392) = *(result + 392);
    *(a2 + 408) = 1;
  }

  *(a2 + 416) = 0;
  *(a2 + 440) = 0;
  if (*(result + 440) == 1)
  {
    *(a2 + 416) = *(result + 416);
    *(a2 + 432) = *(result + 432);
    *(result + 424) = 0;
    *(result + 432) = 0;
    *(result + 416) = 0;
    *(a2 + 440) = 1;
  }

  *(a2 + 448) = 1;
  return result;
}

{
  *a2 = *result;
  *(a2 + 11) = *(result + 11);
  v2 = (result + 40);
  v3 = *(result + 40);
  *(a2 + 32) = *(result + 32);
  *(a2 + 40) = v3;
  v4 = a2 + 40;
  v5 = *(result + 48);
  *(a2 + 48) = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    *(result + 32) = v2;
    *v2 = 0;
    *(result + 48) = 0;
  }

  else
  {
    *(a2 + 32) = v4;
  }

  *(a2 + 56) = 1;
  return result;
}

{
  v2 = *(result + 16);
  *a2 = *result;
  *(a2 + 16) = v2;
  *(a2 + 32) = *(result + 32);
  *(a2 + 40) = *(result + 40);
  *(a2 + 56) = *(result + 56);
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 88) = 0;
  if (*(result + 88) == 1)
  {
    *(a2 + 64) = *(result + 64);
    *(a2 + 80) = *(result + 80);
    *(result + 72) = 0;
    *(result + 80) = 0;
    *(result + 64) = 0;
    *(a2 + 88) = 1;
  }

  *(a2 + 96) = 1;
  return result;
}
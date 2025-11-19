__n128 std::__optional_storage_base<ctb::MLSFileTransfer,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::MLSFileTransfer,false>>(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {

      result.n128_u64[0] = std::vector<unsigned char>::__move_assign(a1, a2).n128_u64[0];
    }
  }

  else if (*(a1 + 24))
  {
    v4 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v4;
      operator delete(v4);
    }

    *(a1 + 24) = 0;
  }

  else
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

__n128 std::vector<unsigned char>::__move_assign(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

uint64_t std::__optional_copy_base<ctb::MLSFileTransfer,false>::__optional_copy_base[abi:ne200100](uint64_t a1, uint64_t a2)
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

void sub_242645960(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    std::__optional_copy_base<ctb::MLSFileTransfer,false>::__optional_copy_base[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2426459E0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned char>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278D64198, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

__n128 std::__optional_storage_base<ctb::CPIMMessage,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::CPIMMessage,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 280) == *(a2 + 280))
  {
    if (*(a1 + 280))
    {

      ctb::CPIMMessage::operator=(a1, a2);
    }
  }

  else if (*(a1 + 280))
  {
    ctb::CPIMMessage::~CPIMMessage(a1);
    *(v4 + 280) = 0;
  }

  else
  {
    v5 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a1 = v5;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    v6 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v6;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 24) = 0;
    v7 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = v7;
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 48) = 0;
    v8 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v8;
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
    v9 = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 96) = v9;
    *(a2 + 96) = 0;
    *(a2 + 104) = 0;
    *(a2 + 112) = 0;
    v10 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 120) = v10;
    *(a2 + 120) = 0;
    *(a2 + 128) = 0;
    *(a2 + 136) = 0;
    v11 = *(a2 + 144);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 144) = v11;
    *(a2 + 144) = 0;
    *(a2 + 152) = 0;
    *(a2 + 160) = 0;
    v12 = *(a2 + 168);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 168) = v12;
    *(a2 + 168) = 0;
    *(a2 + 176) = 0;
    *(a2 + 184) = 0;
    v13 = *(a2 + 192);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 192) = v13;
    *(a2 + 192) = 0;
    *(a2 + 200) = 0;
    *(a2 + 208) = 0;
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 240) = 0;
    *(a1 + 248) = 0;
    *(a1 + 232) = 0;
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 248) = *(a2 + 248);
    *(a2 + 232) = 0;
    *(a2 + 240) = 0;
    *(a2 + 248) = 0;
    *(a1 + 256) = 0;
    *(a1 + 264) = 0;
    *(a1 + 272) = 0;
    result = *(a2 + 256);
    *(a1 + 256) = result;
    *(a1 + 272) = *(a2 + 272);
    *(a2 + 256) = 0;
    *(a2 + 264) = 0;
    *(a2 + 272) = 0;
    *(a1 + 280) = 1;
  }

  return result;
}

uint64_t ctb::CPIMMessage::operator=(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v5;
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v6 = a2[3];
  *(a1 + 64) = *(a2 + 8);
  *(a1 + 48) = v6;
  *(a2 + 71) = 0;
  *(a2 + 48) = 0;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v7 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 11);
  *(a1 + 72) = v7;
  *(a2 + 95) = 0;
  *(a2 + 72) = 0;
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v8 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 96) = v8;
  *(a2 + 119) = 0;
  *(a2 + 96) = 0;
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  v9 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 17);
  *(a1 + 120) = v9;
  *(a2 + 143) = 0;
  *(a2 + 120) = 0;
  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  v10 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 144) = v10;
  *(a2 + 167) = 0;
  *(a2 + 144) = 0;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  v11 = *(a2 + 168);
  *(a1 + 184) = *(a2 + 23);
  *(a1 + 168) = v11;
  *(a2 + 191) = 0;
  *(a2 + 168) = 0;
  if (*(a1 + 215) < 0)
  {
    operator delete(*(a1 + 192));
  }

  v12 = a2[12];
  *(a1 + 208) = *(a2 + 26);
  *(a1 + 192) = v12;
  *(a2 + 215) = 0;
  *(a2 + 192) = 0;
  v13 = *(a2 + 27);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 216) = v13;
  std::vector<ctb::CPIMNamespace>::__vdeallocate((a1 + 232));
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 248) = *(a2 + 31);
  *(a2 + 29) = 0;
  *(a2 + 30) = 0;
  *(a2 + 31) = 0;
  std::vector<ctb::CPIMEncapsulatedMessage>::__vdeallocate((a1 + 256));
  *(a1 + 256) = a2[16];
  *(a1 + 272) = *(a2 + 34);
  *(a2 + 32) = 0;
  *(a2 + 33) = 0;
  *(a2 + 34) = 0;
  return a1;
}

void std::vector<ctb::CPIMNamespace>::__vdeallocate(void **a1)
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
        v3 -= 48;
        std::__destroy_at[abi:ne200100]<ctb::CPIMNamespace,0>(v3);
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

void std::__destroy_at[abi:ne200100]<ctb::CPIMNamespace,0>(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::vector<ctb::CPIMEncapsulatedMessage>::__vdeallocate(void **a1)
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
        v3 -= 384;
        std::__destroy_at[abi:ne200100]<ctb::CPIMEncapsulatedMessage,0>(v3);
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

void std::__destroy_at[abi:ne200100]<ctb::CPIMEncapsulatedMessage,0>(uint64_t a1)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ctb::GeoPushLocation,ctb::CPIMMLSMessage,ctb::ServerMLSRCSContent,ctb::MLSFileTransfer,ctb::CPMGroupManagement,ctb::FileTransferDescriptor,ctb::chatbot::Message,ctb::IMCompositionIndication,ctb::IMDispositionNotification,std::string,ctb::SIPConferenceInfo>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1 + 32);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<ctb::GeoPushLocation,ctb::CPIMMLSMessage,ctb::ServerMLSRCSContent,ctb::MLSFileTransfer,ctb::CPMGroupManagement,ctb::FileTransferDescriptor,ctb::chatbot::Message,ctb::IMCompositionIndication,ctb::IMDispositionNotification,std::string,ctb::SIPConferenceInfo>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 344);
  if (v2 != -1)
  {
    result = (off_2854F6EC8[v2])(&v3, result);
  }

  *(v1 + 344) = -1;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN3ctb15GeoPushLocationENS8_14CPIMMLSMessageENS8_19ServerMLSRCSContentENS8_15MLSFileTransferENS8_18CPMGroupManagementENS8_22FileTransferDescriptorENS8_7chatbot7MessageENS8_23IMCompositionIndicationENS8_25IMDispositionNotificationENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS8_17SIPConferenceInfoEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSR_1EJS9_SA_SB_SC_SD_SE_SG_SH_SI_SO_SP_EEEEEEDcST_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN3ctb15GeoPushLocationENS8_14CPIMMLSMessageENS8_19ServerMLSRCSContentENS8_15MLSFileTransferENS8_18CPMGroupManagementENS8_22FileTransferDescriptorENS8_7chatbot7MessageENS8_23IMCompositionIndicationENS8_25IMDispositionNotificationENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS8_17SIPConferenceInfoEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSR_1EJS9_SA_SB_SC_SD_SE_SG_SH_SI_SO_SP_EEEEEEDcST_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN3ctb15GeoPushLocationENS8_14CPIMMLSMessageENS8_19ServerMLSRCSContentENS8_15MLSFileTransferENS8_18CPMGroupManagementENS8_22FileTransferDescriptorENS8_7chatbot7MessageENS8_23IMCompositionIndicationENS8_25IMDispositionNotificationENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS8_17SIPConferenceInfoEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSR_1EJS9_SA_SB_SC_SD_SE_SG_SH_SI_SO_SP_EEEEEEDcST_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN3ctb15GeoPushLocationENS8_14CPIMMLSMessageENS8_19ServerMLSRCSContentENS8_15MLSFileTransferENS8_18CPMGroupManagementENS8_22FileTransferDescriptorENS8_7chatbot7MessageENS8_23IMCompositionIndicationENS8_25IMDispositionNotificationENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS8_17SIPConferenceInfoEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSR_1EJS9_SA_SB_SC_SD_SE_SG_SH_SI_SO_SP_EEEEEEDcST_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm6EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN3ctb15GeoPushLocationENS8_14CPIMMLSMessageENS8_19ServerMLSRCSContentENS8_15MLSFileTransferENS8_18CPMGroupManagementENS8_22FileTransferDescriptorENS8_7chatbot7MessageENS8_23IMCompositionIndicationENS8_25IMDispositionNotificationENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS8_17SIPConferenceInfoEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSR_1EJS9_SA_SB_SC_SD_SE_SG_SH_SI_SO_SP_EEEEEEDcST_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 336) == 1)
  {
    return std::__variant_detail::__dtor<std::__variant_detail::__traits<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a2);
  }

  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm7EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN3ctb15GeoPushLocationENS8_14CPIMMLSMessageENS8_19ServerMLSRCSContentENS8_15MLSFileTransferENS8_18CPMGroupManagementENS8_22FileTransferDescriptorENS8_7chatbot7MessageENS8_23IMCompositionIndicationENS8_25IMDispositionNotificationENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS8_17SIPConferenceInfoEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSR_1EJS9_SA_SB_SC_SD_SE_SG_SH_SI_SO_SP_EEEEEEDcST_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  if (*(a2 + 31) < 0)
  {
    v3 = *(a2 + 8);

    operator delete(v3);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm8EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN3ctb15GeoPushLocationENS8_14CPIMMLSMessageENS8_19ServerMLSRCSContentENS8_15MLSFileTransferENS8_18CPMGroupManagementENS8_22FileTransferDescriptorENS8_7chatbot7MessageENS8_23IMCompositionIndicationENS8_25IMDispositionNotificationENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS8_17SIPConferenceInfoEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSR_1EJS9_SA_SB_SC_SD_SE_SG_SH_SI_SO_SP_EEEEEEDcST_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 79) < 0)
  {
    operator delete(*(a2 + 56));
  }

  if (*(a2 + 55) < 0)
  {
    v3 = *(a2 + 32);

    operator delete(v3);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm9EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN3ctb15GeoPushLocationENS8_14CPIMMLSMessageENS8_19ServerMLSRCSContentENS8_15MLSFileTransferENS8_18CPMGroupManagementENS8_22FileTransferDescriptorENS8_7chatbot7MessageENS8_23IMCompositionIndicationENS8_25IMDispositionNotificationENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS8_17SIPConferenceInfoEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSR_1EJS9_SA_SB_SC_SD_SE_SG_SH_SI_SO_SP_EEEEEEDcST_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm10EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN3ctb15GeoPushLocationENS8_14CPIMMLSMessageENS8_19ServerMLSRCSContentENS8_15MLSFileTransferENS8_18CPMGroupManagementENS8_22FileTransferDescriptorENS8_7chatbot7MessageENS8_23IMCompositionIndicationENS8_25IMDispositionNotificationENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS8_17SIPConferenceInfoEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSR_1EJS9_SA_SB_SC_SD_SE_SG_SH_SI_SO_SP_EEEEEEDcST_DpT0_(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 72);
  std::vector<ctb::SIPConferenceInfo::User>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a2 + 64) == 1)
  {
    if (*(a2 + 56) == 1 && *(a2 + 55) < 0)
    {
      operator delete(*(a2 + 32));
    }

    if (*(a2 + 24) == 1 && *(a2 + 23) < 0)
    {
      operator delete(*a2);
    }
  }
}

void ctb::FileTransferDescriptor::~FileTransferDescriptor(void **this)
{
  if (*(this + 320) == 1 && *(this + 319) < 0)
  {
    operator delete(this[37]);
  }

  if (*(this + 288) == 1)
  {
    if (*(this + 271) < 0)
    {
      operator delete(this[31]);
    }

    if (*(this + 247) < 0)
    {
      operator delete(this[28]);
    }

    if (*(this + 223) < 0)
    {
      operator delete(this[25]);
    }

    if (*(this + 192) == 1 && *(this + 191) < 0)
    {
      operator delete(this[21]);
    }
  }

  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }

  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  if (*(this + 48) == 1 && *(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

uint64_t std::optional<ctb::FileTransferDescriptor::FileDescriptor>::~optional(uint64_t a1)
{
  if (*(a1 + 144) == 1)
  {
    if (*(a1 + 127) < 0)
    {
      operator delete(*(a1 + 104));
    }

    if (*(a1 + 103) < 0)
    {
      operator delete(*(a1 + 80));
    }

    if (*(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
    }

    if (*(a1 + 48) == 1 && *(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }
  }

  return a1;
}

void ctb::FileTransferDescriptor::FileDescriptor::~FileDescriptor(void **this)
{
  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }

  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  if (*(this + 48) == 1 && *(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 328);
  if (v2 != -1)
  {
    result = (off_2854F6F20[v2])(&v3, result);
  }

  *(v1 + 328) = -1;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN3ctb7chatbot11CardMessageENS9_19CardCarouselMessageENS9_17SuggestedChipListEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 320) == 1)
  {
    v3 = (a2 + 296);
    std::vector<ctb::chatbot::SuggestedChip>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  if (*(a2 + 288) == 1 && *(a2 + 287) < 0)
  {
    operator delete(*(a2 + 264));
  }

  if (*(a2 + 256) == 1 && *(a2 + 255) < 0)
  {
    operator delete(*(a2 + 232));
  }

  if (*(a2 + 224) == 1)
  {
    if (*(a2 + 216) == 1 && *(a2 + 215) < 0)
    {
      operator delete(*(a2 + 192));
    }

    if (*(a2 + 160) == 1 && *(a2 + 159) < 0)
    {
      operator delete(*(a2 + 136));
    }

    if (*(a2 + 128) == 1 && *(a2 + 127) < 0)
    {
      operator delete(*(a2 + 104));
    }

    if (*(a2 + 95) < 0)
    {
      operator delete(*(a2 + 72));
    }

    if (*(a2 + 71) < 0)
    {
      operator delete(*(a2 + 48));
    }
  }

  if (*(a2 + 40) == 1 && *(a2 + 39) < 0)
  {
    operator delete(*(a2 + 16));
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN3ctb7chatbot11CardMessageENS9_19CardCarouselMessageENS9_17SuggestedChipListEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 48);
  std::vector<ctb::chatbot::CardCarouselContent>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a2 + 40) == 1 && *(a2 + 39) < 0)
  {
    operator delete(*(a2 + 16));
  }
}

uint64_t std::optional<ctb::chatbot::CardMedia>::~optional(uint64_t a1)
{
  if (*(a1 + 176) == 1)
  {
    if (*(a1 + 168) == 1 && *(a1 + 167) < 0)
    {
      operator delete(*(a1 + 144));
    }

    if (*(a1 + 112) == 1 && *(a1 + 111) < 0)
    {
      operator delete(*(a1 + 88));
    }

    if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
    }

    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

{
  if (*(a1 + 176) == 1)
  {
    if (*(a1 + 168) == 1 && *(a1 + 167) < 0)
    {
      operator delete(*(a1 + 144));
    }

    if (*(a1 + 112) == 1 && *(a1 + 111) < 0)
    {
      operator delete(*(a1 + 88));
    }

    if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
    }

    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

void std::vector<ctb::chatbot::SuggestedChip>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 232;
        std::__variant_detail::__dtor<std::__variant_detail::__traits<ctb::chatbot::SuggestedAction,ctb::chatbot::SuggestedReply>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((v4 - 224));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

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
        v6 = v4 - 232;
        std::__variant_detail::__dtor<std::__variant_detail::__traits<ctb::chatbot::SuggestedAction,ctb::chatbot::SuggestedReply>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((v4 - 224));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<ctb::chatbot::SuggestedAction,ctb::chatbot::SuggestedReply>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 216);
  if (v2 != -1)
  {
    result = (off_2854F6F38[v2])(&v3, result);
  }

  *(v1 + 216) = -1;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN3ctb7chatbot15SuggestedActionENS9_14SuggestedReplyEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSD_1EJSA_SB_EEEEEEDcSF_DpT0_(uint64_t a1, uint64_t a2)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ctb::chatbot::SuggestedActionOpenUrlInWebView,ctb::chatbot::SuggestedActionOpenUrlInApplication,ctb::chatbot::SuggestedActionComposeText,ctb::chatbot::SuggestedActionComposeAudioRecording,ctb::chatbot::SuggestedActionComposeVideoRecording,ctb::chatbot::SuggestedActionShowLocation,ctb::chatbot::SuggestedActionRequestLocationPush,ctb::chatbot::SuggestedActionCalendar,ctb::chatbot::SuggestedActionDialVideoCall,ctb::chatbot::SuggestedActionDialEnrichedCall,ctb::chatbot::SuggestedActionDialPhoneNumber,ctb::chatbot::SuggestedActionDevice,ctb::chatbot::SuggestedActionSettings>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a2 + 72);
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

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN3ctb7chatbot15SuggestedActionENS9_14SuggestedReplyEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSD_1EJSA_SB_EEEEEEDcSF_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 48) == 1 && *(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<ctb::chatbot::SuggestedActionOpenUrlInWebView,ctb::chatbot::SuggestedActionOpenUrlInApplication,ctb::chatbot::SuggestedActionComposeText,ctb::chatbot::SuggestedActionComposeAudioRecording,ctb::chatbot::SuggestedActionComposeVideoRecording,ctb::chatbot::SuggestedActionShowLocation,ctb::chatbot::SuggestedActionRequestLocationPush,ctb::chatbot::SuggestedActionCalendar,ctb::chatbot::SuggestedActionDialVideoCall,ctb::chatbot::SuggestedActionDialEnrichedCall,ctb::chatbot::SuggestedActionDialPhoneNumber,ctb::chatbot::SuggestedActionDevice,ctb::chatbot::SuggestedActionSettings>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 136);
  if (v2 != -1)
  {
    result = (off_2854F6F48[v2])(&v3, result);
  }

  *(v1 + 136) = -1;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN3ctb7chatbot31SuggestedActionOpenUrlInWebViewENS9_35SuggestedActionOpenUrlInApplicationENS9_26SuggestedActionComposeTextENS9_36SuggestedActionComposeAudioRecordingENS9_36SuggestedActionComposeVideoRecordingENS9_27SuggestedActionShowLocationENS9_34SuggestedActionRequestLocationPushENS9_23SuggestedActionCalendarENS9_28SuggestedActionDialVideoCallENS9_31SuggestedActionDialEnrichedCallENS9_30SuggestedActionDialPhoneNumberENS9_21SuggestedActionDeviceENS9_23SuggestedActionSettingsEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSO_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_EEEEEEDcSQ_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  if (*(a2 + 31) < 0)
  {
    v3 = *(a2 + 8);

    operator delete(v3);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN3ctb7chatbot31SuggestedActionOpenUrlInWebViewENS9_35SuggestedActionOpenUrlInApplicationENS9_26SuggestedActionComposeTextENS9_36SuggestedActionComposeAudioRecordingENS9_36SuggestedActionComposeVideoRecordingENS9_27SuggestedActionShowLocationENS9_34SuggestedActionRequestLocationPushENS9_23SuggestedActionCalendarENS9_28SuggestedActionDialVideoCallENS9_31SuggestedActionDialEnrichedCallENS9_30SuggestedActionDialPhoneNumberENS9_21SuggestedActionDeviceENS9_23SuggestedActionSettingsEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSO_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_EEEEEEDcSQ_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN3ctb7chatbot31SuggestedActionOpenUrlInWebViewENS9_35SuggestedActionOpenUrlInApplicationENS9_26SuggestedActionComposeTextENS9_36SuggestedActionComposeAudioRecordingENS9_36SuggestedActionComposeVideoRecordingENS9_27SuggestedActionShowLocationENS9_34SuggestedActionRequestLocationPushENS9_23SuggestedActionCalendarENS9_28SuggestedActionDialVideoCallENS9_31SuggestedActionDialEnrichedCallENS9_30SuggestedActionDialPhoneNumberENS9_21SuggestedActionDeviceENS9_23SuggestedActionSettingsEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSO_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_EEEEEEDcSQ_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN3ctb7chatbot31SuggestedActionOpenUrlInWebViewENS9_35SuggestedActionOpenUrlInApplicationENS9_26SuggestedActionComposeTextENS9_36SuggestedActionComposeAudioRecordingENS9_36SuggestedActionComposeVideoRecordingENS9_27SuggestedActionShowLocationENS9_34SuggestedActionRequestLocationPushENS9_23SuggestedActionCalendarENS9_28SuggestedActionDialVideoCallENS9_31SuggestedActionDialEnrichedCallENS9_30SuggestedActionDialPhoneNumberENS9_21SuggestedActionDeviceENS9_23SuggestedActionSettingsEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSO_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_EEEEEEDcSQ_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN3ctb7chatbot31SuggestedActionOpenUrlInWebViewENS9_35SuggestedActionOpenUrlInApplicationENS9_26SuggestedActionComposeTextENS9_36SuggestedActionComposeAudioRecordingENS9_36SuggestedActionComposeVideoRecordingENS9_27SuggestedActionShowLocationENS9_34SuggestedActionRequestLocationPushENS9_23SuggestedActionCalendarENS9_28SuggestedActionDialVideoCallENS9_31SuggestedActionDialEnrichedCallENS9_30SuggestedActionDialPhoneNumberENS9_21SuggestedActionDeviceENS9_23SuggestedActionSettingsEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSO_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_EEEEEEDcSQ_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm5EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN3ctb7chatbot31SuggestedActionOpenUrlInWebViewENS9_35SuggestedActionOpenUrlInApplicationENS9_26SuggestedActionComposeTextENS9_36SuggestedActionComposeAudioRecordingENS9_36SuggestedActionComposeVideoRecordingENS9_27SuggestedActionShowLocationENS9_34SuggestedActionRequestLocationPushENS9_23SuggestedActionCalendarENS9_28SuggestedActionDialVideoCallENS9_31SuggestedActionDialEnrichedCallENS9_30SuggestedActionDialPhoneNumberENS9_21SuggestedActionDeviceENS9_23SuggestedActionSettingsEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSO_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_EEEEEEDcSQ_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 112) == 1 && *(a2 + 111) < 0)
  {
    operator delete(*(a2 + 88));
  }

  if (*(a2 + 80) == 1 && *(a2 + 79) < 0)
  {
    operator delete(*(a2 + 56));
  }

  if (*(a2 + 48) == 1 && *(a2 + 47) < 0)
  {
    v3 = *(a2 + 24);

    operator delete(v3);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm7EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN3ctb7chatbot31SuggestedActionOpenUrlInWebViewENS9_35SuggestedActionOpenUrlInApplicationENS9_26SuggestedActionComposeTextENS9_36SuggestedActionComposeAudioRecordingENS9_36SuggestedActionComposeVideoRecordingENS9_27SuggestedActionShowLocationENS9_34SuggestedActionRequestLocationPushENS9_23SuggestedActionCalendarENS9_28SuggestedActionDialVideoCallENS9_31SuggestedActionDialEnrichedCallENS9_30SuggestedActionDialPhoneNumberENS9_21SuggestedActionDeviceENS9_23SuggestedActionSettingsEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSO_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_EEEEEEDcSQ_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 128) == 1 && *(a2 + 127) < 0)
  {
    operator delete(*(a2 + 104));
  }

  if (*(a2 + 96) == 1 && *(a2 + 95) < 0)
  {
    operator delete(*(a2 + 72));
  }

  if (*(a2 + 71) < 0)
  {
    operator delete(*(a2 + 48));
  }

  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm8EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN3ctb7chatbot31SuggestedActionOpenUrlInWebViewENS9_35SuggestedActionOpenUrlInApplicationENS9_26SuggestedActionComposeTextENS9_36SuggestedActionComposeAudioRecordingENS9_36SuggestedActionComposeVideoRecordingENS9_27SuggestedActionShowLocationENS9_34SuggestedActionRequestLocationPushENS9_23SuggestedActionCalendarENS9_28SuggestedActionDialVideoCallENS9_31SuggestedActionDialEnrichedCallENS9_30SuggestedActionDialPhoneNumberENS9_21SuggestedActionDeviceENS9_23SuggestedActionSettingsEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSO_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_EEEEEEDcSQ_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 48) == 1 && *(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm9EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN3ctb7chatbot31SuggestedActionOpenUrlInWebViewENS9_35SuggestedActionOpenUrlInApplicationENS9_26SuggestedActionComposeTextENS9_36SuggestedActionComposeAudioRecordingENS9_36SuggestedActionComposeVideoRecordingENS9_27SuggestedActionShowLocationENS9_34SuggestedActionRequestLocationPushENS9_23SuggestedActionCalendarENS9_28SuggestedActionDialVideoCallENS9_31SuggestedActionDialEnrichedCallENS9_30SuggestedActionDialPhoneNumberENS9_21SuggestedActionDeviceENS9_23SuggestedActionSettingsEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSO_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_EEEEEEDcSQ_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 80) == 1 && *(a2 + 79) < 0)
  {
    operator delete(*(a2 + 56));
  }

  if (*(a2 + 48) == 1 && *(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm10EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN3ctb7chatbot31SuggestedActionOpenUrlInWebViewENS9_35SuggestedActionOpenUrlInApplicationENS9_26SuggestedActionComposeTextENS9_36SuggestedActionComposeAudioRecordingENS9_36SuggestedActionComposeVideoRecordingENS9_27SuggestedActionShowLocationENS9_34SuggestedActionRequestLocationPushENS9_23SuggestedActionCalendarENS9_28SuggestedActionDialVideoCallENS9_31SuggestedActionDialEnrichedCallENS9_30SuggestedActionDialPhoneNumberENS9_21SuggestedActionDeviceENS9_23SuggestedActionSettingsEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSO_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_EEEEEEDcSQ_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 48) == 1 && *(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

void ctb::chatbot::CardMedia::~CardMedia(void **this)
{
  if (*(this + 168) == 1 && *(this + 167) < 0)
  {
    operator delete(this[18]);
  }

  if (*(this + 112) == 1 && *(this + 111) < 0)
  {
    operator delete(this[11]);
  }

  if (*(this + 80) == 1 && *(this + 79) < 0)
  {
    operator delete(this[7]);
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

void std::vector<ctb::chatbot::CardCarouselContent>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<ctb::chatbot::CardCarouselContent>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<ctb::chatbot::CardCarouselContent>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = v2 - 136;
    do
    {
      if (*(v4 + 128) == 1)
      {
        v6 = (v4 + 104);
        std::vector<ctb::chatbot::SuggestedChip>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      if (*(v4 + 96) == 1 && *(v4 + 95) < 0)
      {
        operator delete(*(v4 + 72));
      }

      if (*(v4 + 64) == 1 && *(v4 + 63) < 0)
      {
        operator delete(*(v4 + 40));
      }

      if (*(v4 + 32) == 1)
      {
        if (*(v4 + 24) == 1 && *(v4 + 23) < 0)
        {
          operator delete(*v4);
        }

        if (*(v4 - 32) == 1 && *(v4 - 33) < 0)
        {
          operator delete(*(v4 - 56));
        }

        if (*(v4 - 64) == 1 && *(v4 - 65) < 0)
        {
          operator delete(*(v4 - 88));
        }

        if (*(v4 - 97) < 0)
        {
          operator delete(*(v4 - 120));
        }

        if (*(v4 - 121) < 0)
        {
          operator delete(*(v4 - 144));
        }
      }

      v5 = v4 - 144;
      v4 -= 280;
    }

    while (v5 != v3);
  }

  a1[1] = v3;
}

void std::vector<ctb::SIPConferenceInfo::User>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 3;
        v6 = v4;
        std::vector<ctb::SIPConferenceInfo::Endpoint>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void std::vector<ctb::SIPConferenceInfo::Endpoint>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<ctb::SIPConferenceInfo::Endpoint>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<ctb::SIPConferenceInfo::Endpoint>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = v3;
    if (*(v3 - 16) == 1 && *(v3 - 24) == 1 && *(v3 - 25) < 0)
    {
      operator delete(*(v3 - 6));
    }

    v3 -= 11;
    if (*(v4 - 64) == 1 && *(v4 - 65) < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

uint64_t std::optional<ctb::SIPConferenceInfo::Description>::~optional(uint64_t a1)
{
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

  return a1;
}

void ctb::SIPConferenceInfo::Description::~Description(void **this)
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

void ctb::CPIMMessage::~CPIMMessage(void **this)
{
  v2 = this + 32;
  std::vector<ctb::CPIMEncapsulatedMessage>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 29;
  std::vector<ctb::CPIMNamespace>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 215) < 0)
  {
    operator delete(this[24]);
  }

  if (*(this + 191) < 0)
  {
    operator delete(this[21]);
  }

  if (*(this + 167) < 0)
  {
    operator delete(this[18]);
  }

  if (*(this + 143) < 0)
  {
    operator delete(this[15]);
  }

  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
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

void std::vector<ctb::CPIMEncapsulatedMessage>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 384;
        std::__destroy_at[abi:ne200100]<ctb::CPIMEncapsulatedMessage,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<ctb::CPIMNamespace>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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

std::string *std::__optional_copy_base<ctb::CPIMMessage,false>::__optional_copy_base[abi:ne200100](std::string *this, const ctb::CPIMMessage *a2)
{
  this->__r_.__value_.__s.__data_[0] = 0;
  this[11].__r_.__value_.__s.__data_[16] = 0;
  if (*(a2 + 280) == 1)
  {
    ctb::CPIMMessage::CPIMMessage(this, a2);
    this[11].__r_.__value_.__s.__data_[16] = 1;
  }

  return this;
}

void sub_242647284(_Unwind_Exception *exception_object)
{
  if (*(v1 + 280) == 1)
  {
    ctb::CPIMMessage::~CPIMMessage(v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *ctb::CPIMMessage::CPIMMessage(std::string *this, const ctb::CPIMMessage *a2)
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

  if (*(a2 + 119) < 0)
  {
    std::string::__init_copy_ctor_external(this + 4, *(a2 + 12), *(a2 + 13));
  }

  else
  {
    v8 = *(a2 + 6);
    this[4].__r_.__value_.__r.__words[2] = *(a2 + 14);
    *&this[4].__r_.__value_.__l.__data_ = v8;
  }

  if (*(a2 + 143) < 0)
  {
    std::string::__init_copy_ctor_external(this + 5, *(a2 + 15), *(a2 + 16));
  }

  else
  {
    v9 = *(a2 + 120);
    this[5].__r_.__value_.__r.__words[2] = *(a2 + 17);
    *&this[5].__r_.__value_.__l.__data_ = v9;
  }

  if (*(a2 + 167) < 0)
  {
    std::string::__init_copy_ctor_external(this + 6, *(a2 + 18), *(a2 + 19));
  }

  else
  {
    v10 = *(a2 + 9);
    this[6].__r_.__value_.__r.__words[2] = *(a2 + 20);
    *&this[6].__r_.__value_.__l.__data_ = v10;
  }

  if (*(a2 + 191) < 0)
  {
    std::string::__init_copy_ctor_external(this + 7, *(a2 + 21), *(a2 + 22));
  }

  else
  {
    v11 = *(a2 + 168);
    this[7].__r_.__value_.__r.__words[2] = *(a2 + 23);
    *&this[7].__r_.__value_.__l.__data_ = v11;
  }

  if (*(a2 + 215) < 0)
  {
    std::string::__init_copy_ctor_external(this + 8, *(a2 + 24), *(a2 + 25));
  }

  else
  {
    v12 = *(a2 + 12);
    this[8].__r_.__value_.__r.__words[2] = *(a2 + 26);
    *&this[8].__r_.__value_.__l.__data_ = v12;
  }

  v13 = *(a2 + 216);
  this[9].__r_.__value_.__r.__words[2] = 0;
  *&this[9].__r_.__value_.__l.__data_ = v13;
  this[10].__r_.__value_.__r.__words[0] = 0;
  this[10].__r_.__value_.__l.__size_ = 0;
  std::vector<ctb::CPIMNamespace>::__init_with_size[abi:ne200100]<ctb::CPIMNamespace*,ctb::CPIMNamespace*>(&this[9].__r_.__value_.__r.__words[2], *(a2 + 29), *(a2 + 30), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 30) - *(a2 + 29)) >> 4));
  this[10].__r_.__value_.__r.__words[2] = 0;
  this[11].__r_.__value_.__r.__words[0] = 0;
  this[11].__r_.__value_.__l.__size_ = 0;
  std::vector<ctb::CPIMEncapsulatedMessage>::__init_with_size[abi:ne200100]<ctb::CPIMEncapsulatedMessage*,ctb::CPIMEncapsulatedMessage*>(&this[10].__r_.__value_.__r.__words[2], *(a2 + 32), *(a2 + 33), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 33) - *(a2 + 32)) >> 7));
  return this;
}

void sub_242647498(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 191) < 0)
  {
    operator delete(*(v10 + 168));
  }

  if (*(v10 + 167) < 0)
  {
    operator delete(*(v10 + 144));
  }

  if (*(v10 + 143) < 0)
  {
    operator delete(*(v10 + 120));
  }

  if (*(v10 + 119) < 0)
  {
    operator delete(*(v10 + 96));
  }

  if (*(v10 + 95) < 0)
  {
    operator delete(*(v10 + 72));
  }

  if (*(v10 + 71) < 0)
  {
    operator delete(*(v10 + 48));
  }

  if (*(v10 + 47) < 0)
  {
    operator delete(*(v10 + 24));
  }

  if (*(v10 + 23) < 0)
  {
    operator delete(*v10);
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

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

uint64_t std::vector<ctb::CPIMNamespace>::__init_with_size[abi:ne200100]<ctb::CPIMNamespace*,ctb::CPIMNamespace*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ctb::CPIMNamespace>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2426476E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<ctb::CPIMNamespace>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<ctb::CPIMNamespace>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ctb::CPIMNamespace>>(a1, a2);
  }

  std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ctb::CPIMNamespace>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ctb::CPIMNamespace>,ctb::CPIMNamespace*,ctb::CPIMNamespace*,ctb::CPIMNamespace*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = (a4 + v7);
      v9 = (a2 + v7);
      if (*(a2 + v7 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v8, *v9, *(v9 + 1));
      }

      else
      {
        v10 = *v9;
        v8->__r_.__value_.__r.__words[2] = *(v9 + 2);
        *&v8->__r_.__value_.__l.__data_ = v10;
      }

      v11 = (a4 + v7);
      v12 = a2 + v7;
      if (*(a2 + v7 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(v11 + 1, *(v12 + 24), *(v12 + 32));
      }

      else
      {
        v13 = *(v12 + 24);
        v11[1].__r_.__value_.__r.__words[2] = *(v12 + 40);
        *&v11[1].__r_.__value_.__l.__data_ = v13;
      }

      v7 += 48;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_242647854(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 + v2 - 48;
    v5 = -v2;
    do
    {
      std::__destroy_at[abi:ne200100]<ctb::CPIMNamespace,0>(v4);
      v4 -= 48;
      v5 += 48;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<ctb::CPIMEncapsulatedMessage>::__init_with_size[abi:ne200100]<ctb::CPIMEncapsulatedMessage*,ctb::CPIMEncapsulatedMessage*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ctb::CPIMEncapsulatedMessage>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_242647908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<ctb::CPIMEncapsulatedMessage>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<ctb::CPIMEncapsulatedMessage>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ctb::CPIMEncapsulatedMessage>>(a1, a2);
  }

  std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ctb::CPIMEncapsulatedMessage>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ctb::CPIMEncapsulatedMessage>,ctb::CPIMEncapsulatedMessage*,ctb::CPIMEncapsulatedMessage*,ctb::CPIMEncapsulatedMessage*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = (a2 + v7);
      v9 = (a4 + v7);
      if (*(a2 + v7 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v9, *v8, *(v8 + 1));
      }

      else
      {
        v10 = *v8;
        v9->__r_.__value_.__r.__words[2] = *(v8 + 2);
        *&v9->__r_.__value_.__l.__data_ = v10;
      }

      std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<ctb::GeoPushLocation,ctb::CPIMMLSMessage,ctb::ServerMLSRCSContent,ctb::MLSFileTransfer,ctb::CPMGroupManagement,ctb::FileTransferDescriptor,ctb::chatbot::Message,ctb::IMCompositionIndication,ctb::IMDispositionNotification,std::string,ctb::SIPConferenceInfo>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](a4 + v7 + 32, a2 + v7 + 32);
      v7 += 384;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_242647A68(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 + v2 - 384;
    v5 = -v2;
    do
    {
      std::__destroy_at[abi:ne200100]<ctb::CPIMEncapsulatedMessage,0>(v4);
      v4 -= 384;
      v5 += 384;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<ctb::GeoPushLocation,ctb::CPIMMLSMessage,ctb::ServerMLSRCSContent,ctb::MLSFileTransfer,ctb::CPMGroupManagement,ctb::FileTransferDescriptor,ctb::chatbot::Message,ctb::IMCompositionIndication,ctb::IMDispositionNotification,std::string,ctb::SIPConferenceInfo>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 344) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<ctb::GeoPushLocation,ctb::CPIMMLSMessage,ctb::ServerMLSRCSContent,ctb::MLSFileTransfer,ctb::CPMGroupManagement,ctb::FileTransferDescriptor,ctb::chatbot::Message,ctb::IMCompositionIndication,ctb::IMDispositionNotification,std::string,ctb::SIPConferenceInfo>>::__generic_construct[abi:ne200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<ctb::GeoPushLocation,ctb::CPIMMLSMessage,ctb::ServerMLSRCSContent,ctb::MLSFileTransfer,ctb::CPMGroupManagement,ctb::FileTransferDescriptor,ctb::chatbot::Message,ctb::IMCompositionIndication,ctb::IMDispositionNotification,std::string,ctb::SIPConferenceInfo>,(std::__variant_detail::_Trait)1> const&>(a1, a2);
  return a1;
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<ctb::GeoPushLocation,ctb::CPIMMLSMessage,ctb::ServerMLSRCSContent,ctb::MLSFileTransfer,ctb::CPMGroupManagement,ctb::FileTransferDescriptor,ctb::chatbot::Message,ctb::IMCompositionIndication,ctb::IMDispositionNotification,std::string,ctb::SIPConferenceInfo>>::__generic_construct[abi:ne200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<ctb::GeoPushLocation,ctb::CPIMMLSMessage,ctb::ServerMLSRCSContent,ctb::MLSFileTransfer,ctb::CPMGroupManagement,ctb::FileTransferDescriptor,ctb::chatbot::Message,ctb::IMCompositionIndication,ctb::IMDispositionNotification,std::string,ctb::SIPConferenceInfo>,(std::__variant_detail::_Trait)1> const&>(uint64_t a1, uint64_t a2)
{
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<ctb::GeoPushLocation,ctb::CPIMMLSMessage,ctb::ServerMLSRCSContent,ctb::MLSFileTransfer,ctb::CPMGroupManagement,ctb::FileTransferDescriptor,ctb::chatbot::Message,ctb::IMCompositionIndication,ctb::IMDispositionNotification,std::string,ctb::SIPConferenceInfo>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
  v5 = *(a2 + 344);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_2854F6FB0[v5])(&v6, a2);
    *(a1 + 344) = v5;
  }

  return result;
}

ctb::FileTransferDescriptor::FileDescriptor *ctb::FileTransferDescriptor::FileDescriptor::FileDescriptor(ctb::FileTransferDescriptor::FileDescriptor *this, const ctb::FileTransferDescriptor::FileDescriptor *a2)
{
  v4 = *a2;
  *(this + 2) = *(a2 + 2);
  *this = v4;
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](this + 1, (a2 + 24));
  if (*(a2 + 79) < 0)
  {
    std::string::__init_copy_ctor_external((this + 56), *(a2 + 7), *(a2 + 8));
  }

  else
  {
    v5 = *(a2 + 56);
    *(this + 9) = *(a2 + 9);
    *(this + 56) = v5;
  }

  if (*(a2 + 103) < 0)
  {
    std::string::__init_copy_ctor_external((this + 80), *(a2 + 10), *(a2 + 11));
  }

  else
  {
    v6 = *(a2 + 5);
    *(this + 12) = *(a2 + 12);
    *(this + 5) = v6;
  }

  if (*(a2 + 127) < 0)
  {
    std::string::__init_copy_ctor_external((this + 104), *(a2 + 13), *(a2 + 14));
  }

  else
  {
    v7 = *(a2 + 104);
    *(this + 15) = *(a2 + 15);
    *(this + 104) = v7;
  }

  *(this + 8) = *(a2 + 8);
  return this;
}

void sub_242647C1C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 103) < 0)
  {
    operator delete(*(v1 + 80));
  }

  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  if (*(v1 + 48) == 1 && *(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  _Unwind_Resume(exception_object);
}

ctb::FileTransferDescriptor::FileDescriptor *std::__optional_copy_base<ctb::FileTransferDescriptor::FileDescriptor,false>::__optional_copy_base[abi:ne200100](ctb::FileTransferDescriptor::FileDescriptor *this, const ctb::FileTransferDescriptor::FileDescriptor *a2)
{
  *this = 0;
  *(this + 144) = 0;
  if (*(a2 + 144) == 1)
  {
    ctb::FileTransferDescriptor::FileDescriptor::FileDescriptor(this, a2);
    *(this + 144) = 1;
  }

  return this;
}

void sub_242647CBC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 144) == 1)
  {
    ctb::FileTransferDescriptor::FileDescriptor::~FileDescriptor(v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](std::string *a1, __int128 *a2)
{
  a1->__r_.__value_.__s.__data_[0] = 0;
  a1[1].__r_.__value_.__s.__data_[0] = 0;
  std::__optional_storage_base<std::string,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<std::string,false> const&>(a1, a2);
  return a1;
}

void sub_242647D0C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__optional_storage_base<std::string,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<std::string,false> const&>(std::string *this, __int128 *a2)
{
  if (*(a2 + 24) == 1)
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

    this[1].__r_.__value_.__s.__data_[0] = 1;
  }
}

_BYTE *std::__optional_copy_base<std::variant<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>,false>::__optional_copy_base[abi:ne200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[336] = 0;
  if (*(a2 + 336) == 1)
  {
    std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](a1, a2);
    a1[336] = 1;
  }

  return a1;
}

void sub_242647DD8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 336) == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 328) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>>::__generic_construct[abi:ne200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>,(std::__variant_detail::_Trait)1> const&>(a1, a2);
  return a1;
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>>::__generic_construct[abi:ne200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>,(std::__variant_detail::_Trait)1> const&>(uint64_t a1, uint64_t a2)
{
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
  v5 = *(a2 + 328);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_2854F7008[v5])(&v6, a2);
    *(a1 + 328) = v5;
  }

  return result;
}

std::string *std::__optional_copy_base<ctb::chatbot::CardMedia,false>::__optional_copy_base[abi:ne200100](std::string *this, const ctb::chatbot::CardMedia *a2)
{
  this->__r_.__value_.__s.__data_[0] = 0;
  this[7].__r_.__value_.__s.__data_[8] = 0;
  if (*(a2 + 176) == 1)
  {
    ctb::chatbot::CardMedia::CardMedia(this, a2);
    this[7].__r_.__value_.__s.__data_[8] = 1;
  }

  return this;
}

void sub_242647EEC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 176) == 1)
  {
    ctb::chatbot::CardMedia::~CardMedia(v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *ctb::chatbot::CardMedia::CardMedia(std::string *this, const ctb::chatbot::CardMedia *a2)
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

  this[2].__r_.__value_.__r.__words[0] = *(a2 + 6);
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((this + 56), (a2 + 56));
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((this + 88), (a2 + 88));
  v6 = *(a2 + 120);
  LODWORD(this[5].__r_.__value_.__r.__words[2]) = *(a2 + 34);
  *&this[5].__r_.__value_.__l.__data_ = v6;
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](this + 6, a2 + 9);
  return this;
}

void sub_242647FC0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::__optional_copy_base<ctb::chatbot::CardTitle,false>::__optional_copy_base[abi:ne200100](std::string *a1, __int128 *a2)
{
  a1->__r_.__value_.__s.__data_[0] = 0;
  a1[1].__r_.__value_.__s.__data_[0] = 0;
  std::__optional_storage_base<std::string,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<std::string,false> const&>(a1, a2);
  return a1;
}

void sub_24264806C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::__optional_copy_base<ctb::chatbot::CardDescription,false>::__optional_copy_base[abi:ne200100](std::string *a1, __int128 *a2)
{
  a1->__r_.__value_.__s.__data_[0] = 0;
  a1[1].__r_.__value_.__s.__data_[0] = 0;
  std::__optional_storage_base<std::string,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<std::string,false> const&>(a1, a2);
  return a1;
}

void sub_2426480BC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__optional_copy_base<ctb::chatbot::SuggestedChipList,false>::__optional_copy_base[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  std::__optional_storage_base<ctb::chatbot::SuggestedChipList,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<ctb::chatbot::SuggestedChipList,false> const&>(a1, a2);
  return a1;
}

void sub_242648114(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 24) == 1)
  {
    a10 = v10;
    std::vector<ctb::chatbot::SuggestedChip>::__destroy_vector::operator()[abi:ne200100](&a10);
  }

  _Unwind_Resume(exception_object);
}

void *std::__optional_storage_base<ctb::chatbot::SuggestedChipList,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<ctb::chatbot::SuggestedChipList,false> const&>(void *result, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    v2 = result;
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    result = std::vector<ctb::chatbot::SuggestedChip>::__init_with_size[abi:ne200100]<ctb::chatbot::SuggestedChip*,ctb::chatbot::SuggestedChip*>(result, *a2, *(a2 + 8), 0x34F72C234F72C235 * ((*(a2 + 8) - *a2) >> 3));
    *(v2 + 24) = 1;
  }

  return result;
}

uint64_t std::vector<ctb::chatbot::SuggestedChip>::__init_with_size[abi:ne200100]<ctb::chatbot::SuggestedChip*,ctb::chatbot::SuggestedChip*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ctb::chatbot::SuggestedChip>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_242648208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<ctb::chatbot::SuggestedChip>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<ctb::chatbot::SuggestedChip>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x11A7B9611A7B962)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ctb::chatbot::SuggestedChip>>(a1, a2);
  }

  std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ctb::chatbot::SuggestedChip>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x11A7B9611A7B962)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ctb::chatbot::SuggestedChip>,ctb::chatbot::SuggestedChip*,ctb::chatbot::SuggestedChip*,ctb::chatbot::SuggestedChip*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      *(a4 + v7) = *(a2 + v7);
      std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<ctb::chatbot::SuggestedAction,ctb::chatbot::SuggestedReply>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](a4 + v7 + 8, a2 + v7 + 8);
      v7 += 232;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_242648348(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v4 = -v1;
    v5 = v2 - 224;
    do
    {
      std::__variant_detail::__dtor<std::__variant_detail::__traits<ctb::chatbot::SuggestedAction,ctb::chatbot::SuggestedReply>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v5);
      v5 -= 232;
      v4 += 232;
    }

    while (v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<ctb::chatbot::SuggestedAction,ctb::chatbot::SuggestedReply>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 216) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<ctb::chatbot::SuggestedAction,ctb::chatbot::SuggestedReply>>::__generic_construct[abi:ne200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<ctb::chatbot::SuggestedAction,ctb::chatbot::SuggestedReply>,(std::__variant_detail::_Trait)1> const&>(a1, a2);
  return a1;
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<ctb::chatbot::SuggestedAction,ctb::chatbot::SuggestedReply>>::__generic_construct[abi:ne200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<ctb::chatbot::SuggestedAction,ctb::chatbot::SuggestedReply>,(std::__variant_detail::_Trait)1> const&>(uint64_t a1, uint64_t a2)
{
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<ctb::chatbot::SuggestedAction,ctb::chatbot::SuggestedReply>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
  v5 = *(a2 + 216);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_2854F7020[v5])(&v6, a2);
    *(a1 + 216) = v5;
  }

  return result;
}

uint64_t std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<ctb::chatbot::SuggestedActionOpenUrlInWebView,ctb::chatbot::SuggestedActionOpenUrlInApplication,ctb::chatbot::SuggestedActionComposeText,ctb::chatbot::SuggestedActionComposeAudioRecording,ctb::chatbot::SuggestedActionComposeVideoRecording,ctb::chatbot::SuggestedActionShowLocation,ctb::chatbot::SuggestedActionRequestLocationPush,ctb::chatbot::SuggestedActionCalendar,ctb::chatbot::SuggestedActionDialVideoCall,ctb::chatbot::SuggestedActionDialEnrichedCall,ctb::chatbot::SuggestedActionDialPhoneNumber,ctb::chatbot::SuggestedActionDevice,ctb::chatbot::SuggestedActionSettings>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 136) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<ctb::chatbot::SuggestedActionOpenUrlInWebView,ctb::chatbot::SuggestedActionOpenUrlInApplication,ctb::chatbot::SuggestedActionComposeText,ctb::chatbot::SuggestedActionComposeAudioRecording,ctb::chatbot::SuggestedActionComposeVideoRecording,ctb::chatbot::SuggestedActionShowLocation,ctb::chatbot::SuggestedActionRequestLocationPush,ctb::chatbot::SuggestedActionCalendar,ctb::chatbot::SuggestedActionDialVideoCall,ctb::chatbot::SuggestedActionDialEnrichedCall,ctb::chatbot::SuggestedActionDialPhoneNumber,ctb::chatbot::SuggestedActionDevice,ctb::chatbot::SuggestedActionSettings>>::__generic_construct[abi:ne200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<ctb::chatbot::SuggestedActionOpenUrlInWebView,ctb::chatbot::SuggestedActionOpenUrlInApplication,ctb::chatbot::SuggestedActionComposeText,ctb::chatbot::SuggestedActionComposeAudioRecording,ctb::chatbot::SuggestedActionComposeVideoRecording,ctb::chatbot::SuggestedActionShowLocation,ctb::chatbot::SuggestedActionRequestLocationPush,ctb::chatbot::SuggestedActionCalendar,ctb::chatbot::SuggestedActionDialVideoCall,ctb::chatbot::SuggestedActionDialEnrichedCall,ctb::chatbot::SuggestedActionDialPhoneNumber,ctb::chatbot::SuggestedActionDevice,ctb::chatbot::SuggestedActionSettings>,(std::__variant_detail::_Trait)1> const&>(a1, a2);
  return a1;
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<ctb::chatbot::SuggestedActionOpenUrlInWebView,ctb::chatbot::SuggestedActionOpenUrlInApplication,ctb::chatbot::SuggestedActionComposeText,ctb::chatbot::SuggestedActionComposeAudioRecording,ctb::chatbot::SuggestedActionComposeVideoRecording,ctb::chatbot::SuggestedActionShowLocation,ctb::chatbot::SuggestedActionRequestLocationPush,ctb::chatbot::SuggestedActionCalendar,ctb::chatbot::SuggestedActionDialVideoCall,ctb::chatbot::SuggestedActionDialEnrichedCall,ctb::chatbot::SuggestedActionDialPhoneNumber,ctb::chatbot::SuggestedActionDevice,ctb::chatbot::SuggestedActionSettings>>::__generic_construct[abi:ne200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<ctb::chatbot::SuggestedActionOpenUrlInWebView,ctb::chatbot::SuggestedActionOpenUrlInApplication,ctb::chatbot::SuggestedActionComposeText,ctb::chatbot::SuggestedActionComposeAudioRecording,ctb::chatbot::SuggestedActionComposeVideoRecording,ctb::chatbot::SuggestedActionShowLocation,ctb::chatbot::SuggestedActionRequestLocationPush,ctb::chatbot::SuggestedActionCalendar,ctb::chatbot::SuggestedActionDialVideoCall,ctb::chatbot::SuggestedActionDialEnrichedCall,ctb::chatbot::SuggestedActionDialPhoneNumber,ctb::chatbot::SuggestedActionDevice,ctb::chatbot::SuggestedActionSettings>,(std::__variant_detail::_Trait)1> const&>(uint64_t a1, uint64_t a2)
{
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<ctb::chatbot::SuggestedActionOpenUrlInWebView,ctb::chatbot::SuggestedActionOpenUrlInApplication,ctb::chatbot::SuggestedActionComposeText,ctb::chatbot::SuggestedActionComposeAudioRecording,ctb::chatbot::SuggestedActionComposeVideoRecording,ctb::chatbot::SuggestedActionShowLocation,ctb::chatbot::SuggestedActionRequestLocationPush,ctb::chatbot::SuggestedActionCalendar,ctb::chatbot::SuggestedActionDialVideoCall,ctb::chatbot::SuggestedActionDialEnrichedCall,ctb::chatbot::SuggestedActionDialPhoneNumber,ctb::chatbot::SuggestedActionDevice,ctb::chatbot::SuggestedActionSettings>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
  v5 = *(a2 + 136);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_2854F7030[v5])(&v6, a2);
    *(a1 + 136) = v5;
  }

  return result;
}

std::string *ctb::chatbot::CreateCalendarEvent::CreateCalendarEvent(std::string *this, __int128 *a2)
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

  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](this + 3, (a2 + 72));
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((this + 104), (a2 + 104));
  return this;
}

void sub_242648584(_Unwind_Exception *exception_object)
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

uint64_t std::vector<ctb::chatbot::CardCarouselContent>::__init_with_size[abi:ne200100]<ctb::chatbot::CardCarouselContent*,ctb::chatbot::CardCarouselContent*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ctb::chatbot::CardCarouselContent>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_24264865C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<ctb::chatbot::CardCarouselContent>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<ctb::chatbot::CardCarouselContent>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xEA0EA0EA0EA0EBLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ctb::chatbot::CardCarouselContent>>(a1, a2);
  }

  std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ctb::chatbot::CardCarouselContent>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xEA0EA0EA0EA0EBLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ctb::chatbot::CardCarouselContent>,ctb::chatbot::CardCarouselContent*,ctb::chatbot::CardCarouselContent*,ctb::chatbot::CardCarouselContent*>(uint64_t a1, uint64_t a2, uint64_t a3, std::string *this)
{
  v4 = this;
  v10 = this;
  v11 = this;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      std::__optional_copy_base<ctb::chatbot::CardMedia,false>::__optional_copy_base[abi:ne200100](v4, v6);
      std::__optional_copy_base<ctb::chatbot::CardTitle,false>::__optional_copy_base[abi:ne200100]((v4 + 184), (v6 + 184));
      std::__optional_copy_base<ctb::chatbot::CardDescription,false>::__optional_copy_base[abi:ne200100](v4 + 9, (v6 + 216));
      std::__optional_copy_base<ctb::chatbot::SuggestedChipList,false>::__optional_copy_base[abi:ne200100](&v4[10].__r_.__value_.__l.__size_, v6 + 248);
      v6 += 280;
      v4 = (v11 + 280);
      v11 = (v11 + 280);
    }

    while (v6 != a3);
  }

  LOBYTE(v9) = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ctb::chatbot::CardCarouselContent>,ctb::chatbot::CardCarouselContent*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ctb::chatbot::CardCarouselContent>,ctb::chatbot::CardCarouselContent*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::__allocator_destroy[abi:ne200100]<std::allocator<ctb::chatbot::CardCarouselContent>,std::reverse_iterator<ctb::chatbot::CardCarouselContent*>,std::reverse_iterator<ctb::chatbot::CardCarouselContent*>>(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<ctb::chatbot::CardCarouselContent>,std::reverse_iterator<ctb::chatbot::CardCarouselContent*>,std::reverse_iterator<ctb::chatbot::CardCarouselContent*>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v10[3] = v5;
    v10[4] = v6;
    v8 = a3 - 280;
    do
    {
      if (*(v8 + 272) == 1)
      {
        v10[0] = (v8 + 248);
        std::vector<ctb::chatbot::SuggestedChip>::__destroy_vector::operator()[abi:ne200100](v10);
      }

      if (*(v8 + 240) == 1 && *(v8 + 239) < 0)
      {
        operator delete(*(v8 + 216));
      }

      if (*(v8 + 208) == 1 && *(v8 + 207) < 0)
      {
        operator delete(*(v8 + 184));
      }

      if (*(v8 + 176) == 1)
      {
        if (*(v8 + 168) == 1 && *(v8 + 167) < 0)
        {
          operator delete(*(v8 + 144));
        }

        if (*(v8 + 112) == 1 && *(v8 + 111) < 0)
        {
          operator delete(*(v8 + 88));
        }

        if (*(v8 + 80) == 1 && *(v8 + 79) < 0)
        {
          operator delete(*(v8 + 56));
        }

        if (*(v8 + 47) < 0)
        {
          operator delete(*(v8 + 24));
        }

        if (*(v8 + 23) < 0)
        {
          operator delete(*v8);
        }
      }

      v9 = v8 == a5;
      v8 -= 280;
    }

    while (!v9);
  }
}

uint64_t std::__optional_copy_base<ctb::SIPConferenceInfo::Description,false>::__optional_copy_base[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 64) = 0;
  if (*(a2 + 64) == 1)
  {
    std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](a1, a2);
    std::__optional_copy_base<ctb::SIPConferenceInfo::SubjectExt,false>::__optional_copy_base[abi:ne200100]((a1 + 32), (a2 + 32));
    *(a1 + 64) = 1;
  }

  return a1;
}

void sub_242648A04(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1 && *(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  if (*(v1 + 64) == 1)
  {
    ctb::SIPConferenceInfo::Description::~Description(v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::__optional_copy_base<ctb::SIPConferenceInfo::SubjectExt,false>::__optional_copy_base[abi:ne200100](std::string *a1, __int128 *a2)
{
  a1->__r_.__value_.__s.__data_[0] = 0;
  a1[1].__r_.__value_.__s.__data_[0] = 0;
  std::__optional_storage_base<std::string,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<std::string,false> const&>(a1, a2);
  return a1;
}

void sub_242648A78(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<ctb::SIPConferenceInfo::User>::__init_with_size[abi:ne200100]<ctb::SIPConferenceInfo::User*,ctb::SIPConferenceInfo::User*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ctb::SIPConferenceInfo::User>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_242648B00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<ctb::SIPConferenceInfo::User>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<ctb::SIPConferenceInfo::User>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ctb::SIPConferenceInfo::User>>(a1, a2);
  }

  std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ctb::SIPConferenceInfo::User>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ctb::SIPConferenceInfo::User>,ctb::SIPConferenceInfo::User*,ctb::SIPConferenceInfo::User*,ctb::SIPConferenceInfo::User*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
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
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<ctb::SIPConferenceInfo::Endpoint>::__init_with_size[abi:ne200100]<ctb::SIPConferenceInfo::Endpoint*,ctb::SIPConferenceInfo::Endpoint*>(v4, *v6, v6[1], 0x2E8BA2E8BA2E8BA3 * ((v6[1] - *v6) >> 3));
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  LOBYTE(v9) = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ctb::SIPConferenceInfo::User>,ctb::SIPConferenceInfo::User*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::vector<ctb::SIPConferenceInfo::Endpoint>::__init_with_size[abi:ne200100]<ctb::SIPConferenceInfo::Endpoint*,ctb::SIPConferenceInfo::Endpoint*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ctb::SIPConferenceInfo::Endpoint>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_242648CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<ctb::SIPConferenceInfo::Endpoint>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<ctb::SIPConferenceInfo::Endpoint>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ctb::SIPConferenceInfo::Endpoint>>(a1, a2);
  }

  std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ctb::SIPConferenceInfo::Endpoint>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ctb::SIPConferenceInfo::Endpoint>,ctb::SIPConferenceInfo::Endpoint*,ctb::SIPConferenceInfo::Endpoint*,ctb::SIPConferenceInfo::Endpoint*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](v4, v6);
      *(v4 + 32) = *(v6 + 32);
      std::__optional_copy_base<ctb::SIPConferenceInfo::ReferredInfo,false>::__optional_copy_base[abi:ne200100]((v4 + 40), v6 + 40);
      *(v4 + 80) = *(v6 + 80);
      v6 += 88;
      v4 = v11 + 88;
      v11 += 88;
    }

    while (v6 != a3);
  }

  LOBYTE(v9) = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ctb::SIPConferenceInfo::Endpoint>,ctb::SIPConferenceInfo::Endpoint*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

std::string *std::__optional_copy_base<ctb::SIPConferenceInfo::ReferredInfo,false>::__optional_copy_base[abi:ne200100](std::string *a1, uint64_t a2)
{
  a1->__r_.__value_.__s.__data_[0] = 0;
  a1[1].__r_.__value_.__s.__data_[8] = 0;
  if (*(a2 + 32) == 1)
  {
    std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](a1, a2);
    a1[1].__r_.__value_.__s.__data_[8] = 1;
  }

  return a1;
}

void sub_242648EE4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 32) == 1)
  {
    std::__optional_copy_base<ctb::SIPConferenceInfo::ReferredInfo,false>::__optional_copy_base[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ctb::SIPConferenceInfo::Endpoint>,ctb::SIPConferenceInfo::Endpoint*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::__allocator_destroy[abi:ne200100]<std::allocator<ctb::SIPConferenceInfo::Endpoint>,std::reverse_iterator<ctb::SIPConferenceInfo::Endpoint*>,std::reverse_iterator<ctb::SIPConferenceInfo::Endpoint*>>(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<ctb::SIPConferenceInfo::Endpoint>,std::reverse_iterator<ctb::SIPConferenceInfo::Endpoint*>,std::reverse_iterator<ctb::SIPConferenceInfo::Endpoint*>>(uint64_t a1, uint64_t a2, void **a3, uint64_t a4, void **a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {
      v7 = v6;
      if (*(v6 - 16) == 1 && *(v6 - 24) == 1 && *(v6 - 25) < 0)
      {
        operator delete(*(v6 - 6));
      }

      v6 -= 11;
      if (*(v7 - 64) == 1 && *(v7 - 65) < 0)
      {
        operator delete(*v6);
      }
    }

    while (v6 != a5);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ctb::SIPConferenceInfo::User>,ctb::SIPConferenceInfo::User*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<ctb::SIPConferenceInfo::User>,ctb::SIPConferenceInfo::User*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<ctb::SIPConferenceInfo::User>,ctb::SIPConferenceInfo::User*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v1 -= 3;
    v3 = v1;
    std::vector<ctb::SIPConferenceInfo::Endpoint>::__destroy_vector::operator()[abi:ne200100](&v3);
  }
}

_BYTE *std::__optional_storage_base<ctb::chatbot::Message,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::chatbot::Message,false>>(_BYTE *result, uint64_t a2)
{
  v2 = result;
  if (result[344] == *(a2 + 344))
  {
    if (result[344])
    {
      return std::__optional_storage_base<std::variant<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::variant<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>,false>>(result, a2);
    }
  }

  else
  {
    if (result[344])
    {
      if (result[336] == 1)
      {
        result = std::__variant_detail::__dtor<std::__variant_detail::__traits<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](result);
      }

      v3 = 0;
    }

    else
    {
      *result = 0;
      result[336] = 0;
      v3 = 1;
      if (*(a2 + 336) == 1)
      {
        result = std::__variant_detail::__move_constructor<std::__variant_detail::__traits<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](result, a2);
        v2[336] = 1;
      }
    }

    v2[344] = v3;
  }

  return result;
}

uint64_t std::__optional_storage_base<std::variant<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::variant<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>,false>>(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (*(result + 336) == *(a2 + 336))
  {
    if (*(result + 336))
    {
      return std::__variant_detail::__assignment<std::__variant_detail::__traits<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>,(std::__variant_detail::_Trait)1>>(result, a2);
    }
  }

  else
  {
    if (*(result + 336))
    {
      result = std::__variant_detail::__dtor<std::__variant_detail::__traits<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](result);
      v3 = 0;
    }

    else
    {
      result = std::__variant_detail::__move_constructor<std::__variant_detail::__traits<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](result, a2);
      v3 = 1;
    }

    *(v2 + 336) = v3;
  }

  return result;
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>,(std::__variant_detail::_Trait)1>>(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 328);
  if (*(result + 328) != -1 || v4 != -1)
  {
    if (v4 == -1)
    {

      return std::__variant_detail::__dtor<std::__variant_detail::__traits<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](result);
    }

    else
    {
      v6[1] = v2;
      v6[2] = v3;
      v6[0] = result;
      return (off_2854F7098[v4])(v6);
    }
  }

  return result;
}

double std::__variant_detail::__assignment<std::__variant_detail::__traits<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>>::__assign_alt[abi:ne200100]<0ul,ctb::chatbot::CardMessage,ctb::chatbot::CardMessage>(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  if (*(a1 + 328))
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
    *a1 = *a3;
    *(a1 + 16) = 0;
    *(a1 + 40) = 0;
    if (*(a3 + 40) == 1)
    {
      v5 = *(a3 + 16);
      *(a1 + 32) = *(a3 + 32);
      *(a1 + 16) = v5;
      *(a3 + 24) = 0;
      *(a3 + 32) = 0;
      *(a3 + 16) = 0;
      *(a1 + 40) = 1;
    }

    std::__optional_move_base<ctb::chatbot::CardMedia,false>::__optional_move_base[abi:ne200100]((a1 + 48), a3 + 48);
    *(a1 + 232) = 0;
    *(a1 + 256) = 0;
    if (*(a3 + 256) == 1)
    {
      v6 = *(a3 + 232);
      *(a1 + 248) = *(a3 + 248);
      *(a1 + 232) = v6;
      *(a3 + 240) = 0;
      *(a3 + 248) = 0;
      *(a3 + 232) = 0;
      *(a1 + 256) = 1;
    }

    *(a1 + 264) = 0;
    *(a1 + 288) = 0;
    if (*(a3 + 288) == 1)
    {
      v6 = *(a3 + 264);
      *(a1 + 280) = *(a3 + 280);
      *(a1 + 264) = v6;
      *(a3 + 272) = 0;
      *(a3 + 280) = 0;
      *(a3 + 264) = 0;
      *(a1 + 288) = 1;
    }

    *(a1 + 296) = 0;
    *(a1 + 320) = 0;
    if (*(a3 + 320) == 1)
    {
      *(a1 + 296) = 0;
      *(a1 + 304) = 0;
      *(a1 + 312) = 0;
      *(a1 + 296) = *(a3 + 296);
      v6 = *(a3 + 304);
      *(a1 + 304) = v6;
      *(a3 + 296) = 0;
      *(a3 + 304) = 0;
      *(a3 + 312) = 0;
      *(a1 + 320) = 1;
    }

    *(a1 + 328) = 0;
  }

  else
  {
    *a2 = *a3;
    std::__optional_storage_base<ctb::chatbot::CardStyle,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::chatbot::CardStyle,false>>((a2 + 1), (a3 + 16));
    std::__optional_storage_base<ctb::chatbot::CardMedia,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::chatbot::CardMedia,false>>((a2 + 3), a3 + 48);
    std::__optional_storage_base<ctb::chatbot::CardStyle,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::chatbot::CardStyle,false>>(a2 + 232, (a3 + 232));
    std::__optional_storage_base<ctb::chatbot::CardStyle,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::chatbot::CardStyle,false>>(a2 + 264, (a3 + 264));
    *&v6 = std::__optional_storage_base<ctb::chatbot::SuggestedChipList,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::chatbot::SuggestedChipList,false>>(a2 + 296, (a3 + 296)).n128_u64[0];
  }

  return *&v6;
}

__n128 std::__optional_storage_base<ctb::chatbot::CardStyle,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::chatbot::CardStyle,false>>(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
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
    }
  }

  else if (*(a1 + 24))
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *(a1 + 24) = 0;
  }

  else
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

void std::__optional_storage_base<ctb::chatbot::CardMedia,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::chatbot::CardMedia,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 176) == *(a2 + 176))
  {
    if (*(a1 + 176))
    {

      ctb::chatbot::CardMedia::operator=(a1, a2);
    }
  }

  else if (*(a1 + 176))
  {
    if (*(a1 + 168) == 1 && *(a1 + 167) < 0)
    {
      operator delete(*(a1 + 144));
    }

    if (*(a1 + 112) == 1 && *(a1 + 111) < 0)
    {
      operator delete(*(a1 + 88));
    }

    if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
    }

    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *(a1 + 176) = 0;
  }

  else
  {

    std::__optional_storage_base<ctb::chatbot::CardMedia,false>::__construct[abi:ne200100]<ctb::chatbot::CardMedia>(a1, a2);
  }
}

uint64_t ctb::chatbot::CardMedia::operator=(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v5;
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  *(a1 + 48) = *(a2 + 6);
  std::__optional_storage_base<ctb::chatbot::CardStyle,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::chatbot::CardStyle,false>>(a1 + 56, (a2 + 56));
  std::__optional_storage_base<ctb::chatbot::CardStyle,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::chatbot::CardStyle,false>>(a1 + 88, (a2 + 88));
  v6 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 34);
  *(a1 + 120) = v6;
  std::__optional_storage_base<ctb::chatbot::CardStyle,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::chatbot::CardStyle,false>>(a1 + 144, a2 + 9);
  return a1;
}

uint64_t std::__optional_storage_base<ctb::chatbot::CardMedia,false>::__construct[abi:ne200100]<ctb::chatbot::CardMedia>(uint64_t result, __int128 *a2)
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
  return result;
}

__n128 std::__optional_storage_base<ctb::chatbot::SuggestedChipList,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::chatbot::SuggestedChipList,false>>(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {
      std::vector<ctb::chatbot::SuggestedChip>::__vdeallocate(a1);
      result = *a2;
      *a1 = *a2;
      *(a1 + 16) = a2[1].n128_u64[0];
      a2->n128_u64[0] = 0;
      a2->n128_u64[1] = 0;
      a2[1].n128_u64[0] = 0;
    }
  }

  else if (*(a1 + 24))
  {
    v5 = a1;
    std::vector<ctb::chatbot::SuggestedChip>::__destroy_vector::operator()[abi:ne200100](&v5);
    *(a1 + 24) = 0;
  }

  else
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

void std::vector<ctb::chatbot::SuggestedChip>::__vdeallocate(void **a1)
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
        v5 = v3 - 232;
        std::__variant_detail::__dtor<std::__variant_detail::__traits<ctb::chatbot::SuggestedAction,ctb::chatbot::SuggestedReply>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((v3 - 224));
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

_BYTE *std::__optional_move_base<ctb::chatbot::CardMedia,false>::__optional_move_base[abi:ne200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[176] = 0;
  if (*(a2 + 176) == 1)
  {
    std::__optional_storage_base<ctb::chatbot::CardMedia,false>::__construct[abi:ne200100]<ctb::chatbot::CardMedia>(a1, a2);
  }

  return a1;
}

void std::__variant_detail::__assignment<std::__variant_detail::__traits<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>>::__assign_alt[abi:ne200100]<1ul,ctb::chatbot::CardCarouselMessage,ctb::chatbot::CardCarouselMessage>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 328) == 1)
  {
    v5 = *a3;
    *(a2 + 8) = *(a3 + 8);
    *a2 = v5;
    std::__optional_storage_base<ctb::chatbot::CardStyle,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::chatbot::CardStyle,false>>(a2 + 16, (a3 + 16));
    std::vector<ctb::chatbot::CardCarouselContent>::__vdeallocate((a2 + 48));
    *(a2 + 48) = *(a3 + 48);
    *(a2 + 64) = *(a3 + 64);
    *(a3 + 48) = 0;
    *(a3 + 56) = 0;
    *(a3 + 64) = 0;
  }

  else
  {

    std::__variant_detail::__assignment<std::__variant_detail::__traits<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>>::__emplace[abi:ne200100]<1ul,ctb::chatbot::CardCarouselMessage>(a1, a3);
  }
}

void std::vector<ctb::chatbot::CardCarouselContent>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<ctb::chatbot::CardCarouselContent>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>>::__emplace[abi:ne200100]<1ul,ctb::chatbot::CardCarouselMessage>(uint64_t a1, uint64_t *a2)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
  v4 = *a2;
  *(a1 + 8) = *(a2 + 2);
  *a1 = v4;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  if (*(a2 + 40) == 1)
  {
    v5 = *(a2 + 1);
    *(a1 + 32) = a2[4];
    *(a1 + 16) = v5;
    a2[3] = 0;
    a2[4] = 0;
    a2[2] = 0;
    *(a1 + 40) = 1;
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = *(a2 + 3);
  *(a1 + 64) = a2[8];
  a2[6] = 0;
  a2[7] = 0;
  a2[8] = 0;
  *(a1 + 328) = 1;
  return a1;
}

__n128 std::__variant_detail::__assignment<std::__variant_detail::__traits<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>>::__assign_alt[abi:ne200100]<2ul,ctb::chatbot::SuggestedChipList,ctb::chatbot::SuggestedChipList>(uint64_t a1, uint64_t a2, __n128 *a3)
{
  if (*(a1 + 328) == 2)
  {
    std::vector<ctb::chatbot::SuggestedChip>::__vdeallocate(a2);
    result = *a3;
    *a2 = *a3;
    *(a2 + 16) = a3[1].n128_u64[0];
    a3->n128_u64[0] = 0;
    a3->n128_u64[1] = 0;
    a3[1].n128_u64[0] = 0;
  }

  else
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    result = *a3;
    *a1 = *a3;
    *(a1 + 16) = a3[1].n128_u64[0];
    a3->n128_u64[0] = 0;
    a3->n128_u64[1] = 0;
    a3[1].n128_u64[0] = 0;
    *(a1 + 328) = 2;
  }

  return result;
}

uint64_t std::__variant_detail::__move_constructor<std::__variant_detail::__traits<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 328) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>,(std::__variant_detail::_Trait)1>>(a1, a2);
  return a1;
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>,(std::__variant_detail::_Trait)1>>(uint64_t a1, uint64_t a2)
{
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
  v5 = *(a2 + 328);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_2854F70B0[v5])(&v6, a2);
    *(a1 + 328) = v5;
  }

  return result;
}

_BYTE *std::__optional_copy_base<ctb::chatbot::Message,false>::__optional_copy_base[abi:ne200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[344] = 0;
  if (*(a2 + 344) == 1)
  {
    std::__optional_copy_base<std::variant<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>,false>::__optional_copy_base[abi:ne200100](a1, a2);
    a1[344] = 1;
  }

  return a1;
}

void sub_242649B90(_Unwind_Exception *exception_object)
{
  if (*(v1 + 344) == 1 && *(v1 + 336) == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__optional_storage_base<ctb::chatbot::RenderInformation,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::chatbot::RenderInformation,false>>(void **this, uint64_t a2)
{
  if (*(this + 680) == *(a2 + 680))
  {
    if (*(this + 680))
    {
      ctb::chatbot::BotInformation::operator=(this, a2);
      std::__optional_storage_base<ctb::chatbot::MenuItem,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::chatbot::MenuItem,false>>((this + 70), (a2 + 560));
      *(this + 592) = *(a2 + 592);
      v4 = this + 75;
      if (*(this + 623) < 0)
      {
        operator delete(*v4);
      }

      v5 = *(a2 + 600);
      this[77] = *(a2 + 616);
      *v4 = v5;
      *(a2 + 623) = 0;
      *(a2 + 600) = 0;
      v6 = this + 78;
      if (*(this + 647) < 0)
      {
        operator delete(*v6);
      }

      v7 = *(a2 + 624);
      this[80] = *(a2 + 640);
      *v6 = v7;
      *(a2 + 647) = 0;
      *(a2 + 624) = 0;
      std::__optional_storage_base<ctb::chatbot::CardStyle,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::chatbot::CardStyle,false>>((this + 81), (a2 + 648));
    }
  }

  else
  {
    if (*(this + 680))
    {
      if (*(this + 672) == 1 && *(this + 671) < 0)
      {
        operator delete(this[81]);
      }

      if (*(this + 647) < 0)
      {
        operator delete(this[78]);
      }

      if (*(this + 623) < 0)
      {
        operator delete(this[75]);
      }

      if (*(this + 584) == 1)
      {
        v12 = this + 70;
        std::vector<ctb::chatbot::MenuL0Content>::__destroy_vector::operator()[abi:ne200100](&v12);
      }

      ctb::chatbot::BotInformation::~BotInformation(this);
      v8 = 0;
    }

    else
    {
      ctb::chatbot::BotInformation::BotInformation(this, a2);
      *(this + 560) = 0;
      *(this + 584) = 0;
      if (*(a2 + 584) == 1)
      {
        this[72] = 0;
        *(this + 35) = 0u;
        *(this + 35) = *(a2 + 560);
        this[72] = *(a2 + 576);
        *(a2 + 576) = 0;
        *(a2 + 560) = 0u;
        *(this + 584) = 1;
      }

      *(this + 592) = *(a2 + 592);
      v9 = *(a2 + 600);
      this[77] = *(a2 + 616);
      *(this + 75) = v9;
      *(a2 + 616) = 0;
      *(a2 + 608) = 0;
      *(a2 + 600) = 0;
      v10 = *(a2 + 624);
      this[80] = *(a2 + 640);
      *(this + 39) = v10;
      *(a2 + 640) = 0;
      *(a2 + 632) = 0;
      *(a2 + 624) = 0;
      *(this + 648) = 0;
      *(this + 672) = 0;
      v8 = 1;
      if (*(a2 + 672) == 1)
      {
        v11 = *(a2 + 648);
        this[83] = *(a2 + 664);
        *(this + 81) = v11;
        *(a2 + 664) = 0;
        *(a2 + 656) = 0;
        *(a2 + 648) = 0;
        *(this + 672) = 1;
      }
    }

    *(this + 680) = v8;
  }
}

ctb::chatbot::OrgDetails *ctb::chatbot::BotInformation::operator=(ctb::chatbot::OrgDetails *a1, __n128 *a2)
{
  std::__optional_storage_base<ctb::chatbot::OrgDetails,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::chatbot::OrgDetails,false>>(a1, a2);
  std::__optional_storage_base<ctb::chatbot::CardStyle,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::chatbot::CardStyle,false>>(a1 + 272, a2 + 17);
  std::__optional_storage_base<ctb::chatbot::CardStyle,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::chatbot::CardStyle,false>>(a1 + 304, a2 + 19);
  std::__optional_storage_base<ctb::chatbot::CardStyle,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::chatbot::CardStyle,false>>(a1 + 336, a2 + 21);
  std::__optional_storage_base<ctb::chatbot::CardStyle,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::chatbot::CardStyle,false>>(a1 + 368, a2 + 23);
  std::__optional_storage_base<ctb::chatbot::CardStyle,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::chatbot::CardStyle,false>>(a1 + 400, a2 + 25);
  std::__optional_storage_base<ctb::chatbot::CardStyle,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::chatbot::CardStyle,false>>(a1 + 432, a2 + 27);
  std::__optional_storage_base<ctb::chatbot::CardStyle,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::chatbot::CardStyle,false>>(a1 + 464, a2 + 29);
  std::__optional_storage_base<ctb::chatbot::CardStyle,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::chatbot::CardStyle,false>>(a1 + 496, a2 + 31);
  std::__optional_storage_base<ctb::chatbot::WebResources,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::chatbot::WebResources,false>>(a1 + 528, a2 + 33);
  return a1;
}

void std::__optional_storage_base<ctb::chatbot::OrgDetails,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::chatbot::OrgDetails,false>>(ctb::chatbot::OrgDetails *a1, uint64_t a2)
{
  if (*(a1 + 264) == *(a2 + 264))
  {
    if (*(a1 + 264))
    {

      ctb::chatbot::OrgDetails::operator=(a1, a2);
    }
  }

  else if (*(a1 + 264))
  {
    ctb::chatbot::OrgDetails::~OrgDetails(a1);
    *(v3 + 264) = 0;
  }

  else
  {

    std::__optional_storage_base<ctb::chatbot::OrgDetails,false>::__construct[abi:ne200100]<ctb::chatbot::OrgDetails>(a1, a2);
  }
}

uint64_t ctb::chatbot::OrgDetails::operator=(uint64_t a1, uint64_t a2)
{
  std::__optional_storage_base<ctb::chatbot::CommunicationAddress,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::chatbot::CommunicationAddress,false>>(a1, a2);
  std::__optional_storage_base<ctb::chatbot::MediaList,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::chatbot::MediaList,false>>(a1 + 104, (a2 + 104));
  std::__optional_storage_base<ctb::chatbot::OrgName,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::chatbot::OrgName,false>>(a1 + 136, (a2 + 136));
  std::__optional_storage_base<ctb::chatbot::CardStyle,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::chatbot::CardStyle,false>>(a1 + 168, (a2 + 168));
  std::__optional_storage_base<ctb::chatbot::CategoryList,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::chatbot::CategoryList,false>>((a1 + 200), a2 + 200);
  std::__optional_storage_base<ctb::chatbot::WebResources,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::chatbot::WebResources,false>>(a1 + 232, (a2 + 232));
  return a1;
}

void std::__optional_storage_base<ctb::chatbot::OrgDetails,false>::__construct[abi:ne200100]<ctb::chatbot::OrgDetails>(uint64_t a1, uint64_t a2)
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

__n128 std::__optional_storage_base<ctb::chatbot::CommunicationAddress,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::chatbot::CommunicationAddress,false>>(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 96) == *(a2 + 96))
  {
    if (*(a1 + 96))
    {
      if (*(a1 + 23) < 0)
      {
        operator delete(*a1);
      }

      v4 = *a2;
      *(a1 + 16) = *(a2 + 2);
      *a1 = v4;
      *(a2 + 23) = 0;
      *a2 = 0;
      if (*(a1 + 47) < 0)
      {
        operator delete(*(a1 + 24));
      }

      v5 = *(a2 + 24);
      *(a1 + 40) = *(a2 + 5);
      *(a1 + 24) = v5;
      *(a2 + 47) = 0;
      *(a2 + 24) = 0;
      if (*(a1 + 71) < 0)
      {
        operator delete(*(a1 + 48));
      }

      v6 = a2[3];
      *(a1 + 64) = *(a2 + 8);
      *(a1 + 48) = v6;
      *(a2 + 71) = 0;
      *(a2 + 48) = 0;
      std::vector<ctb::chatbot::URIEntry>::__vdeallocate(a1 + 72);
      result = *(a2 + 72);
      *(a1 + 72) = result;
      *(a1 + 88) = *(a2 + 11);
      *(a2 + 9) = 0;
      *(a2 + 10) = 0;
      *(a2 + 11) = 0;
    }
  }

  else if (*(a1 + 96))
  {
    v11 = (a1 + 72);
    std::vector<ctb::chatbot::URIEntry>::__destroy_vector::operator()[abi:ne200100](&v11);
    if (*(a1 + 71) < 0)
    {
      operator delete(*(a1 + 48));
    }

    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *(a1 + 96) = 0;
  }

  else
  {
    v8 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v8;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v9 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 24) = v9;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v10 = a2[3];
    *(a1 + 64) = *(a2 + 8);
    *(a1 + 48) = v10;
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
    *(a1 + 96) = 1;
  }

  return result;
}

void std::vector<ctb::chatbot::URIEntry>::__vdeallocate(uint64_t a1)
{
  if (*a1)
  {
    std::vector<ctb::chatbot::URIEntry>::__base_destruct_at_end[abi:ne200100](a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void std::vector<ctb::chatbot::URIEntry>::__base_destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v4 = *(a1 + 8);
  while (v4 != a2)
  {
    v5 = v4;
    v4 -= 5;
    if (*(v5 - 16) == 1 && *(v5 - 17) < 0)
    {
      operator delete(*v4);
    }
  }

  *(a1 + 8) = a2;
}

void ctb::chatbot::CommunicationAddress::~CommunicationAddress(void **this)
{
  v2 = this + 9;
  std::vector<ctb::chatbot::URIEntry>::__destroy_vector::operator()[abi:ne200100](&v2);
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

void std::vector<ctb::chatbot::URIEntry>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<ctb::chatbot::URIEntry>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void ctb::chatbot::TelephoneInformation::~TelephoneInformation(void **this)
{
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

{
  ctb::chatbot::TelephoneInformation::~TelephoneInformation(this);
}

__n128 std::__optional_storage_base<ctb::chatbot::MediaList,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::chatbot::MediaList,false>>(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {
      std::vector<ctb::chatbot::MediaEntry>::__vdeallocate(a1);
      result = *a2;
      *a1 = *a2;
      *(a1 + 16) = a2[1].n128_u64[0];
      a2->n128_u64[0] = 0;
      a2->n128_u64[1] = 0;
      a2[1].n128_u64[0] = 0;
    }
  }

  else if (*(a1 + 24))
  {
    v5 = a1;
    std::vector<ctb::chatbot::MediaEntry>::__destroy_vector::operator()[abi:ne200100](&v5);
    *(a1 + 24) = 0;
  }

  else
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

void std::vector<ctb::chatbot::MediaEntry>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<ctb::chatbot::MediaEntry>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<ctb::chatbot::MediaEntry>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 72)
  {
    if (*(i - 16) == 1 && *(i - 17) < 0)
    {
      operator delete(*(i - 40));
    }

    if (*(i - 41) < 0)
    {
      operator delete(*(i - 64));
    }
  }

  a1[1] = v2;
}

void std::vector<ctb::chatbot::MediaEntry>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<ctb::chatbot::MediaEntry>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

__n128 std::__optional_storage_base<ctb::chatbot::OrgName,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::chatbot::OrgName,false>>(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {
      std::vector<ctb::chatbot::OrgNameEntry>::__vdeallocate(a1);
      result = *a2;
      *a1 = *a2;
      *(a1 + 16) = a2[1].n128_u64[0];
      a2->n128_u64[0] = 0;
      a2->n128_u64[1] = 0;
      a2[1].n128_u64[0] = 0;
    }
  }

  else if (*(a1 + 24))
  {
    v5 = a1;
    std::vector<ctb::chatbot::OrgNameEntry>::__destroy_vector::operator()[abi:ne200100](&v5);
    *(a1 + 24) = 0;
  }

  else
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

void std::vector<ctb::chatbot::OrgNameEntry>::__vdeallocate(uint64_t a1)
{
  if (*a1)
  {
    std::vector<ctb::chatbot::OrgNameEntry>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void std::vector<ctb::chatbot::OrgNameEntry>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 9);
    v3 -= 4;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void std::vector<ctb::chatbot::OrgNameEntry>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<ctb::chatbot::OrgNameEntry>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

__n128 std::__optional_storage_base<ctb::chatbot::CategoryList,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::chatbot::CategoryList,false>>(std::vector<std::string> *this, uint64_t a2)
{
  if (LOBYTE(this[1].__begin_) == *(a2 + 24))
  {
    if (LOBYTE(this[1].__begin_))
    {
      std::vector<std::string>::__vdeallocate(this);
      result = *a2;
      *&this->__begin_ = *a2;
      this->__end_cap_.__value_ = *(a2 + 16);
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
    }
  }

  else if (LOBYTE(this[1].__begin_))
  {
    v5 = this;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
    LOBYTE(this[1].__begin_) = 0;
  }

  else
  {
    this->__begin_ = 0;
    this->__end_ = 0;
    this->__end_cap_.__value_ = 0;
    result = *a2;
    *this = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    LOBYTE(this[1].__begin_) = 1;
  }

  return result;
}

void std::vector<std::string>::__vdeallocate(std::vector<std::string> *this)
{
  if (this->__begin_)
  {
    std::vector<std::string>::clear[abi:ne200100](this);
    operator delete(this->__begin_);
    this->__begin_ = 0;
    this->__end_ = 0;
    this->__end_cap_.__value_ = 0;
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

__n128 std::__optional_storage_base<ctb::chatbot::WebResources,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::chatbot::WebResources,false>>(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {
      std::vector<ctb::CPIMNamespace>::__vdeallocate(a1);
      result = *a2;
      *a1 = *a2;
      *(a1 + 16) = a2[1].n128_u64[0];
      a2->n128_u64[0] = 0;
      a2->n128_u64[1] = 0;
      a2[1].n128_u64[0] = 0;
    }
  }

  else if (*(a1 + 24))
  {
    v5 = a1;
    std::vector<ctb::CPIMNamespace>::__destroy_vector::operator()[abi:ne200100](&v5);
    *(a1 + 24) = 0;
  }

  else
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

void ctb::chatbot::OrgDetails::~OrgDetails(ctb::chatbot::OrgDetails *this)
{
  if (*(this + 256) == 1)
  {
    v2 = (this + 232);
    std::vector<ctb::CPIMNamespace>::__destroy_vector::operator()[abi:ne200100](&v2);
  }

  if (*(this + 224) == 1)
  {
    v2 = (this + 200);
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  }

  if (*(this + 192) == 1 && *(this + 191) < 0)
  {
    operator delete(*(this + 21));
  }

  if (*(this + 160) == 1)
  {
    v2 = (this + 136);
    std::vector<ctb::chatbot::OrgNameEntry>::__destroy_vector::operator()[abi:ne200100](&v2);
  }

  if (*(this + 128) == 1)
  {
    v2 = (this + 104);
    std::vector<ctb::chatbot::MediaEntry>::__destroy_vector::operator()[abi:ne200100](&v2);
  }

  if (*(this + 96) == 1)
  {
    v2 = (this + 72);
    std::vector<ctb::chatbot::URIEntry>::__destroy_vector::operator()[abi:ne200100](&v2);
    if (*(this + 71) < 0)
    {
      operator delete(*(this + 6));
    }

    if (*(this + 47) < 0)
    {
      operator delete(*(this + 3));
    }

    if (*(this + 23) < 0)
    {
      operator delete(*this);
    }
  }
}

uint64_t std::optional<ctb::chatbot::CommunicationAddress>::~optional(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    v3 = (a1 + 72);
    std::vector<ctb::chatbot::URIEntry>::__destroy_vector::operator()[abi:ne200100](&v3);
    if (*(a1 + 71) < 0)
    {
      operator delete(*(a1 + 48));
    }

    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

__n128 std::__optional_move_base<ctb::chatbot::CommunicationAddress,false>::__optional_move_base[abi:ne200100](uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 96) = 0;
  if (*(a2 + 96) == 1)
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
    *(a1 + 96) = 1;
  }

  return result;
}

__n128 std::__optional_storage_base<ctb::chatbot::MenuItem,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::chatbot::MenuItem,false>>(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {
      std::vector<ctb::chatbot::MenuL0Content>::__vdeallocate(a1);
      result = *a2;
      *a1 = *a2;
      *(a1 + 16) = a2[1].n128_u64[0];
      a2->n128_u64[0] = 0;
      a2->n128_u64[1] = 0;
      a2[1].n128_u64[0] = 0;
    }
  }

  else if (*(a1 + 24))
  {
    v5 = a1;
    std::vector<ctb::chatbot::MenuL0Content>::__destroy_vector::operator()[abi:ne200100](&v5);
    *(a1 + 24) = 0;
  }

  else
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

void std::vector<ctb::chatbot::MenuL0Content>::__vdeallocate(void **a1)
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
        v5 = v3 - 248;
        std::__variant_detail::__dtor<std::__variant_detail::__traits<ctb::chatbot::SuggestedChip,ctb::chatbot::MenuL1>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((v3 - 240));
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

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<ctb::chatbot::SuggestedChip,ctb::chatbot::MenuL1>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 232);
  if (v2 != -1)
  {
    result = (off_2854F70C8[v2])(&v3, result);
  }

  *(v1 + 232) = -1;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN3ctb7chatbot13SuggestedChipENS9_6MenuL1EEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSD_1EJSA_SB_EEEEEEDcSF_DpT0_(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  std::vector<ctb::chatbot::MenuL1Content>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void std::vector<ctb::chatbot::MenuL1Content>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 248;
        std::__variant_detail::__dtor<std::__variant_detail::__traits<ctb::chatbot::SuggestedChip,ctb::chatbot::MenuL2>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((v4 - 240));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<ctb::chatbot::SuggestedChip,ctb::chatbot::MenuL2>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 232);
  if (v2 != -1)
  {
    result = (off_2854F70D8[v2])(&v3, result);
  }

  *(v1 + 232) = -1;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN3ctb7chatbot13SuggestedChipENS9_6MenuL2EEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSD_1EJSA_SB_EEEEEEDcSF_DpT0_(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  std::vector<ctb::chatbot::MenuL2Content>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void std::vector<ctb::chatbot::MenuL2Content>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 232;
        std::__variant_detail::__dtor<std::__variant_detail::__traits<ctb::chatbot::SuggestedAction,ctb::chatbot::SuggestedReply>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((v4 - 224));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<ctb::chatbot::MenuL0Content>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 248;
        std::__variant_detail::__dtor<std::__variant_detail::__traits<ctb::chatbot::SuggestedChip,ctb::chatbot::MenuL1>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((v4 - 240));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void ctb::chatbot::RenderInformation::~RenderInformation(void **this)
{
  if (*(this + 672) == 1 && *(this + 671) < 0)
  {
    operator delete(this[81]);
  }

  if (*(this + 647) < 0)
  {
    operator delete(this[78]);
  }

  if (*(this + 623) < 0)
  {
    operator delete(this[75]);
  }

  if (*(this + 584) == 1)
  {
    v2 = this + 70;
    std::vector<ctb::chatbot::MenuL0Content>::__destroy_vector::operator()[abi:ne200100](&v2);
  }

  ctb::chatbot::BotInformation::~BotInformation(this);
}

void ctb::chatbot::VerificationDetails::~VerificationDetails(void **this)
{
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void ctb::chatbot::BotInformation::~BotInformation(ctb::chatbot::BotInformation *this)
{
  if (*(this + 552) == 1)
  {
    v2 = (this + 528);
    std::vector<ctb::CPIMNamespace>::__destroy_vector::operator()[abi:ne200100](&v2);
  }

  if (*(this + 520) == 1 && *(this + 519) < 0)
  {
    operator delete(*(this + 62));
  }

  if (*(this + 488) == 1 && *(this + 487) < 0)
  {
    operator delete(*(this + 58));
  }

  if (*(this + 456) == 1 && *(this + 455) < 0)
  {
    operator delete(*(this + 54));
  }

  if (*(this + 424) == 1 && *(this + 423) < 0)
  {
    operator delete(*(this + 50));
  }

  if (*(this + 392) == 1 && *(this + 391) < 0)
  {
    operator delete(*(this + 46));
  }

  if (*(this + 360) == 1 && *(this + 359) < 0)
  {
    operator delete(*(this + 42));
  }

  if (*(this + 328) == 1 && *(this + 327) < 0)
  {
    operator delete(*(this + 38));
  }

  if (*(this + 296) == 1 && *(this + 295) < 0)
  {
    operator delete(*(this + 34));
  }

  if (*(this + 264) == 1)
  {
    ctb::chatbot::OrgDetails::~OrgDetails(this);
  }
}

void ctb::chatbot::PCC::~PCC(void **this)
{
  if (*(this + 296) == 1 && *(this + 295) < 0)
  {
    operator delete(this[34]);
  }

  if (*(this + 264) == 1)
  {
    ctb::chatbot::OrgDetails::~OrgDetails(this);
  }
}

double ctb::chatbot::BotInformation::BotInformation(_BYTE *a1, uint64_t a2)
{
  v3 = std::__optional_move_base<ctb::chatbot::OrgDetails,false>::__optional_move_base[abi:ne200100](a1, a2);
  v3[272] = 0;
  v3[296] = 0;
  if (*(a2 + 296) == 1)
  {
    v4 = *(a2 + 272);
    *(v3 + 36) = *(a2 + 288);
    *(v3 + 17) = v4;
    *(a2 + 280) = 0;
    *(a2 + 288) = 0;
    *(a2 + 272) = 0;
    v3[296] = 1;
  }

  v3[304] = 0;
  v3[328] = 0;
  if (*(a2 + 328) == 1)
  {
    v4 = *(a2 + 304);
    *(v3 + 40) = *(a2 + 320);
    *(v3 + 19) = v4;
    *(a2 + 312) = 0;
    *(a2 + 320) = 0;
    *(a2 + 304) = 0;
    v3[328] = 1;
  }

  v3[336] = 0;
  v3[360] = 0;
  if (*(a2 + 360) == 1)
  {
    v4 = *(a2 + 336);
    *(v3 + 44) = *(a2 + 352);
    *(v3 + 21) = v4;
    *(a2 + 344) = 0;
    *(a2 + 352) = 0;
    *(a2 + 336) = 0;
    v3[360] = 1;
  }

  v3[368] = 0;
  v3[392] = 0;
  if (*(a2 + 392) == 1)
  {
    v4 = *(a2 + 368);
    *(v3 + 48) = *(a2 + 384);
    *(v3 + 23) = v4;
    *(a2 + 376) = 0;
    *(a2 + 384) = 0;
    *(a2 + 368) = 0;
    v3[392] = 1;
  }

  v3[400] = 0;
  v3[424] = 0;
  if (*(a2 + 424) == 1)
  {
    v4 = *(a2 + 400);
    *(v3 + 52) = *(a2 + 416);
    *(v3 + 25) = v4;
    *(a2 + 408) = 0;
    *(a2 + 416) = 0;
    *(a2 + 400) = 0;
    v3[424] = 1;
  }

  v3[432] = 0;
  v3[456] = 0;
  if (*(a2 + 456) == 1)
  {
    v4 = *(a2 + 432);
    *(v3 + 56) = *(a2 + 448);
    *(v3 + 27) = v4;
    *(a2 + 440) = 0;
    *(a2 + 448) = 0;
    *(a2 + 432) = 0;
    v3[456] = 1;
  }

  v3[464] = 0;
  v3[488] = 0;
  if (*(a2 + 488) == 1)
  {
    v4 = *(a2 + 464);
    *(v3 + 60) = *(a2 + 480);
    *(v3 + 29) = v4;
    *(a2 + 472) = 0;
    *(a2 + 480) = 0;
    *(a2 + 464) = 0;
    v3[488] = 1;
  }

  v3[496] = 0;
  v3[520] = 0;
  if (*(a2 + 520) == 1)
  {
    v4 = *(a2 + 496);
    *(v3 + 64) = *(a2 + 512);
    *(v3 + 31) = v4;
    *(a2 + 504) = 0;
    *(a2 + 512) = 0;
    *(a2 + 496) = 0;
    v3[520] = 1;
  }

  v3[528] = 0;
  v3[552] = 0;
  if (*(a2 + 552) == 1)
  {
    *(v3 + 68) = 0;
    *&v4 = 0;
    *(v3 + 33) = 0u;
    *(v3 + 33) = *(a2 + 528);
    *(v3 + 68) = *(a2 + 544);
    *(a2 + 544) = 0;
    *(a2 + 528) = 0u;
    v3[552] = 1;
  }

  return *&v4;
}

_BYTE *std::__optional_move_base<ctb::chatbot::OrgDetails,false>::__optional_move_base[abi:ne200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[264] = 0;
  if (*(a2 + 264) == 1)
  {
    std::__optional_storage_base<ctb::chatbot::OrgDetails,false>::__construct[abi:ne200100]<ctb::chatbot::OrgDetails>(a1, a2);
  }

  return a1;
}

std::string *std::__optional_copy_base<ctb::chatbot::RenderInformation,false>::__optional_copy_base[abi:ne200100](std::string *this, const ctb::chatbot::RenderInformation *a2)
{
  this->__r_.__value_.__s.__data_[0] = 0;
  this[28].__r_.__value_.__s.__data_[8] = 0;
  if (*(a2 + 680) == 1)
  {
    ctb::chatbot::RenderInformation::RenderInformation(this, a2);
    this[28].__r_.__value_.__s.__data_[8] = 1;
  }

  return this;
}

void sub_24264B588(_Unwind_Exception *exception_object)
{
  if (*(v1 + 680) == 1)
  {
    ctb::chatbot::RenderInformation::~RenderInformation(v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *ctb::chatbot::RenderInformation::RenderInformation(std::string *this, const ctb::chatbot::RenderInformation *a2)
{
  v4 = ctb::chatbot::BotInformation::BotInformation(this, a2);
  std::__optional_copy_base<ctb::chatbot::MenuItem,false>::__optional_copy_base[abi:ne200100](v4 + 560, a2 + 560);
  this[24].__r_.__value_.__s.__data_[16] = *(a2 + 592);
  if (*(a2 + 623) < 0)
  {
    std::string::__init_copy_ctor_external(this + 25, *(a2 + 75), *(a2 + 76));
  }

  else
  {
    v5 = *(a2 + 600);
    this[25].__r_.__value_.__r.__words[2] = *(a2 + 77);
    *&this[25].__r_.__value_.__l.__data_ = v5;
  }

  v6 = this + 26;
  if (*(a2 + 647) < 0)
  {
    std::string::__init_copy_ctor_external(v6, *(a2 + 78), *(a2 + 79));
  }

  else
  {
    v7 = *(a2 + 39);
    this[26].__r_.__value_.__r.__words[2] = *(a2 + 80);
    *&v6->__r_.__value_.__l.__data_ = v7;
  }

  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](this + 27, (a2 + 648));
  return this;
}

void sub_24264B66C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 623) < 0)
  {
    operator delete(*v11);
  }

  if (*(v10 + 584) == 1)
  {
    std::vector<ctb::chatbot::MenuL0Content>::__destroy_vector::operator()[abi:ne200100](&a10);
  }

  ctb::chatbot::BotInformation::~BotInformation(v10);
  _Unwind_Resume(a1);
}

ctb::chatbot::BotInformation *ctb::chatbot::BotInformation::BotInformation(ctb::chatbot::BotInformation *this, const ctb::chatbot::BotInformation *a2)
{
  v4 = std::__optional_copy_base<ctb::chatbot::OrgDetails,false>::__optional_copy_base[abi:ne200100](this, a2);
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((v4 + 272), a2 + 17);
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((this + 304), a2 + 19);
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](this + 14, a2 + 21);
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((this + 368), a2 + 23);
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((this + 400), a2 + 25);
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](this + 18, a2 + 27);
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((this + 464), a2 + 29);
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((this + 496), a2 + 31);
  std::__optional_copy_base<ctb::chatbot::AddressEntryList,false>::__optional_copy_base[abi:ne200100](this + 528, a2 + 528);
  return this;
}

void sub_24264B760(_Unwind_Exception *a1)
{
  if (*(v1 + 520) == 1 && *(v1 + 519) < 0)
  {
    operator delete(*(v1 + 496));
  }

  if (*(v1 + 488) == 1 && *(v1 + 487) < 0)
  {
    operator delete(*(v1 + 464));
  }

  if (*(v1 + 456) == 1 && *(v1 + 455) < 0)
  {
    operator delete(*(v1 + 432));
  }

  if (*(v1 + 424) == 1 && *(v1 + 423) < 0)
  {
    operator delete(*(v1 + 400));
  }

  if (*(v1 + 392) == 1 && *(v1 + 391) < 0)
  {
    operator delete(*(v1 + 368));
  }

  if (*(v1 + 360) == 1 && *(v1 + 359) < 0)
  {
    operator delete(*(v1 + 336));
  }

  if (*(v1 + 328) == 1 && *(v1 + 327) < 0)
  {
    operator delete(*(v1 + 304));
  }

  ctb::chatbot::PCC::~PCC(v1);
  _Unwind_Resume(a1);
}

void sub_24264B870()
{
  if (*(v0 + 264) == 1)
  {
    ctb::chatbot::OrgDetails::~OrgDetails(v0);
  }

  JUMPOUT(0x24264B868);
}

std::string *std::__optional_copy_base<ctb::chatbot::OrgDetails,false>::__optional_copy_base[abi:ne200100](std::string *this, const ctb::chatbot::OrgDetails *a2)
{
  this->__r_.__value_.__s.__data_[0] = 0;
  this[11].__r_.__value_.__s.__data_[0] = 0;
  if (*(a2 + 264) == 1)
  {
    ctb::chatbot::OrgDetails::OrgDetails(this, a2);
    this[11].__r_.__value_.__s.__data_[0] = 1;
  }

  return this;
}

void sub_24264B8D4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 264) == 1)
  {
    ctb::chatbot::OrgDetails::~OrgDetails(v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *ctb::chatbot::OrgDetails::OrgDetails(std::string *this, const ctb::chatbot::OrgDetails *a2)
{
  v4 = std::__optional_copy_base<ctb::chatbot::CommunicationAddress,false>::__optional_copy_base[abi:ne200100](this, a2);
  std::__optional_copy_base<ctb::chatbot::MediaList,false>::__optional_copy_base[abi:ne200100](&v4[4].__r_.__value_.__l.__size_, a2 + 104);
  std::__optional_copy_base<ctb::chatbot::OrgName,false>::__optional_copy_base[abi:ne200100](&this[5].__r_.__value_.__r.__words[2], a2 + 136);
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](this + 7, (a2 + 168));
  std::__optional_copy_base<ctb::chatbot::CategoryList,false>::__optional_copy_base[abi:ne200100](&this[8].__r_.__value_.__l.__size_, a2 + 200);
  std::__optional_copy_base<ctb::chatbot::WebResources,false>::__optional_copy_base[abi:ne200100](&this[9].__r_.__value_.__r.__words[2], a2 + 232);
  return this;
}

void sub_24264B980(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 224) == 1)
  {
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  }

  if (*(v2 + 192) == 1 && *(v2 + 191) < 0)
  {
    operator delete(*(v2 + 168));
  }

  if (*(v2 + 160) == 1)
  {
    std::vector<ctb::chatbot::OrgNameEntry>::__destroy_vector::operator()[abi:ne200100](va);
  }

  if (*(v2 + 128) == 1)
  {
    std::vector<ctb::chatbot::MediaEntry>::__destroy_vector::operator()[abi:ne200100](va);
  }

  std::optional<ctb::chatbot::CommunicationAddress>::~optional(v2);
  _Unwind_Resume(a1);
}

std::string *std::__optional_copy_base<ctb::chatbot::CommunicationAddress,false>::__optional_copy_base[abi:ne200100](std::string *this, __int128 *a2)
{
  this->__r_.__value_.__s.__data_[0] = 0;
  this[4].__r_.__value_.__s.__data_[0] = 0;
  if (*(a2 + 96) == 1)
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

    this[3].__r_.__value_.__r.__words[0] = 0;
    this[3].__r_.__value_.__l.__size_ = 0;
    this[3].__r_.__value_.__r.__words[2] = 0;
    std::vector<ctb::chatbot::URIEntry>::__init_with_size[abi:ne200100]<ctb::chatbot::URIEntry*,ctb::chatbot::URIEntry*>(&this[3], *(a2 + 9), *(a2 + 10), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 10) - *(a2 + 9)) >> 3));
    this[4].__r_.__value_.__s.__data_[0] = 1;
  }

  return this;
}

void sub_24264BAFC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  if (*(v1 + 96) == 1)
  {
    ctb::chatbot::CommunicationAddress::~CommunicationAddress(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<ctb::chatbot::URIEntry>::__init_with_size[abi:ne200100]<ctb::chatbot::URIEntry*,ctb::chatbot::URIEntry*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ctb::chatbot::URIEntry>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_24264BBC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<ctb::chatbot::URIEntry>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<ctb::chatbot::URIEntry>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ctb::chatbot::URIEntry>>(a1, a2);
  }

  std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ctb::chatbot::URIEntry>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ctb::chatbot::URIEntry>,ctb::chatbot::URIEntry*,ctb::chatbot::URIEntry*,ctb::chatbot::URIEntry*>(uint64_t a1, uint64_t a2, uint64_t a3, std::string *a4)
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
      std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](v4, v6);
      v4[1].__r_.__value_.__l.__size_ = *(v6 + 32);
      v6 += 40;
      v4 = (v11 + 40);
      v11 = (v11 + 40);
    }

    while (v6 != a3);
  }

  LOBYTE(v9) = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ctb::chatbot::URIEntry>,ctb::chatbot::URIEntry*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ctb::chatbot::URIEntry>,ctb::chatbot::URIEntry*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<ctb::chatbot::URIEntry>,ctb::chatbot::URIEntry*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<ctb::chatbot::URIEntry>,ctb::chatbot::URIEntry*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = v1;
    v1 -= 5;
    if (*(v3 - 16) == 1 && *(v3 - 17) < 0)
    {
      operator delete(*v1);
    }
  }
}

uint64_t std::__optional_copy_base<ctb::chatbot::MediaList,false>::__optional_copy_base[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  std::__optional_storage_base<ctb::chatbot::MediaList,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<ctb::chatbot::MediaList,false> const&>(a1, a2);
  return a1;
}

void sub_24264BDF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 24) == 1)
  {
    a10 = v10;
    std::vector<ctb::chatbot::MediaEntry>::__destroy_vector::operator()[abi:ne200100](&a10);
  }

  _Unwind_Resume(exception_object);
}

void *std::__optional_storage_base<ctb::chatbot::MediaList,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<ctb::chatbot::MediaList,false> const&>(void *result, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    v2 = result;
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    result = std::vector<ctb::chatbot::MediaEntry>::__init_with_size[abi:ne200100]<ctb::chatbot::MediaEntry*,ctb::chatbot::MediaEntry*>(result, *a2, *(a2 + 8), 0x8E38E38E38E38E39 * ((*(a2 + 8) - *a2) >> 3));
    *(v2 + 24) = 1;
  }

  return result;
}

uint64_t std::vector<ctb::chatbot::MediaEntry>::__init_with_size[abi:ne200100]<ctb::chatbot::MediaEntry*,ctb::chatbot::MediaEntry*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ctb::chatbot::MediaEntry>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_24264BEEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<ctb::chatbot::MediaEntry>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<ctb::chatbot::MediaEntry>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ctb::chatbot::MediaEntry>>(a1, a2);
  }

  std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ctb::chatbot::MediaEntry>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ctb::chatbot::MediaEntry>,ctb::chatbot::MediaEntry*,ctb::chatbot::MediaEntry*,ctb::chatbot::MediaEntry*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 != a3)
  {
    v6 = a2 + 32;
    do
    {
      v7 = v6 - 32;
      *v4 = *(v6 - 32);
      if (*(v6 - 1) < 0)
      {
        std::string::__init_copy_ctor_external((v4 + 8), *(v6 - 24), *(v6 - 16));
      }

      else
      {
        v8 = *(v6 - 24);
        *(v4 + 24) = *(v6 - 8);
        *(v4 + 8) = v8;
      }

      std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((v4 + 32), v6);
      *(v4 + 64) = *(v6 + 32);
      v4 = v13 + 72;
      v13 += 72;
      v6 += 72;
    }

    while (v7 + 72 != a3);
  }

  LOBYTE(v11) = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ctb::chatbot::MediaEntry>,ctb::chatbot::MediaEntry*>>::~__exception_guard_exceptions[abi:ne200100](v10);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ctb::chatbot::MediaEntry>,ctb::chatbot::MediaEntry*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::__allocator_destroy[abi:ne200100]<std::allocator<ctb::chatbot::MediaEntry>,std::reverse_iterator<ctb::chatbot::MediaEntry*>,std::reverse_iterator<ctb::chatbot::MediaEntry*>>(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<ctb::chatbot::MediaEntry>,std::reverse_iterator<ctb::chatbot::MediaEntry*>,std::reverse_iterator<ctb::chatbot::MediaEntry*>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {
      if (*(v6 - 16) == 1 && *(v6 - 17) < 0)
      {
        operator delete(*(v6 - 40));
      }

      if (*(v6 - 41) < 0)
      {
        operator delete(*(v6 - 64));
      }

      v6 -= 72;
    }

    while (v6 != a5);
  }
}

uint64_t std::__optional_copy_base<ctb::chatbot::OrgName,false>::__optional_copy_base[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  std::__optional_storage_base<ctb::chatbot::OrgName,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<ctb::chatbot::OrgName,false> const&>(a1, a2);
  return a1;
}

void sub_24264C1A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 24) == 1)
  {
    a10 = v10;
    std::vector<ctb::chatbot::OrgNameEntry>::__destroy_vector::operator()[abi:ne200100](&a10);
  }

  _Unwind_Resume(exception_object);
}

void *std::__optional_storage_base<ctb::chatbot::OrgName,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<ctb::chatbot::OrgName,false> const&>(void *result, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    v2 = result;
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    result = std::vector<ctb::chatbot::OrgNameEntry>::__init_with_size[abi:ne200100]<ctb::chatbot::OrgNameEntry*,ctb::chatbot::OrgNameEntry*>(result, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 5);
    *(v2 + 24) = 1;
  }

  return result;
}

uint64_t std::vector<ctb::chatbot::OrgNameEntry>::__init_with_size[abi:ne200100]<ctb::chatbot::OrgNameEntry*,ctb::chatbot::OrgNameEntry*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ctb::chatbot::OrgNameEntry>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_24264C288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<ctb::chatbot::OrgNameEntry>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<ctb::chatbot::OrgNameEntry>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ctb::chatbot::OrgNameEntry>>(a1, a2);
  }

  std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ctb::chatbot::OrgNameEntry>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ctb::chatbot::OrgNameEntry>,ctb::chatbot::OrgNameEntry*,ctb::chatbot::OrgNameEntry*,ctb::chatbot::OrgNameEntry*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v12 = this;
  v13 = this;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v8 = v13;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
        v8 = v4;
      }

      LODWORD(v4[1].__r_.__value_.__l.__data_) = *(v6 + 6);
      v6 += 2;
      v4 = (v8 + 32);
      v13 = (v8 + 32);
    }

    while (v6 != a3);
  }

  LOBYTE(v11) = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ctb::chatbot::OrgNameEntry>,ctb::chatbot::OrgNameEntry*>>::~__exception_guard_exceptions[abi:ne200100](v10);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ctb::chatbot::OrgNameEntry>,ctb::chatbot::OrgNameEntry*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<ctb::chatbot::OrgNameEntry>,ctb::chatbot::OrgNameEntry*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<ctb::chatbot::OrgNameEntry>,ctb::chatbot::OrgNameEntry*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 9);
    v1 -= 4;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

uint64_t std::__optional_copy_base<ctb::chatbot::CategoryList,false>::__optional_copy_base[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  std::__optional_storage_base<ctb::chatbot::CategoryList,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<ctb::chatbot::CategoryList,false> const&>(a1, a2);
  return a1;
}

void sub_24264C4AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 24) == 1)
  {
    a10 = v10;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  }

  _Unwind_Resume(exception_object);
}

void *std::__optional_storage_base<ctb::chatbot::CategoryList,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<ctb::chatbot::CategoryList,false> const&>(void *result, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    v2 = result;
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    result = std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(result, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
    *(v2 + 24) = 1;
  }

  return result;
}

uint64_t std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_24264C598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
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

  std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
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

  LOBYTE(v10) = 1;
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

void std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 1);
    v1 -= 3;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

uint64_t std::__optional_copy_base<ctb::chatbot::WebResources,false>::__optional_copy_base[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  std::__optional_storage_base<ctb::chatbot::WebResources,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<ctb::chatbot::WebResources,false> const&>(a1, a2);
  return a1;
}

void sub_24264C7D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 24) == 1)
  {
    a10 = v10;
    std::vector<ctb::CPIMNamespace>::__destroy_vector::operator()[abi:ne200100](&a10);
  }

  _Unwind_Resume(exception_object);
}

void *std::__optional_storage_base<ctb::chatbot::WebResources,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<ctb::chatbot::WebResources,false> const&>(void *result, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    v2 = result;
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    result = std::vector<ctb::chatbot::WebEntry>::__init_with_size[abi:ne200100]<ctb::chatbot::WebEntry*,ctb::chatbot::WebEntry*>(result, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 4));
    *(v2 + 24) = 1;
  }

  return result;
}

uint64_t std::vector<ctb::chatbot::WebEntry>::__init_with_size[abi:ne200100]<ctb::chatbot::WebEntry*,ctb::chatbot::WebEntry*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ctb::CPIMNamespace>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_24264C8BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<ctb::CPIMNamespace>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ctb::chatbot::WebEntry>,ctb::chatbot::WebEntry*,ctb::chatbot::WebEntry*,ctb::chatbot::WebEntry*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = (a4 + v7);
      v9 = (a2 + v7);
      if (*(a2 + v7 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v8, *v9, *(v9 + 1));
      }

      else
      {
        v10 = *v9;
        v8->__r_.__value_.__r.__words[2] = *(v9 + 2);
        *&v8->__r_.__value_.__l.__data_ = v10;
      }

      v11 = (a4 + v7);
      v12 = a2 + v7;
      if (*(a2 + v7 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(v11 + 1, *(v12 + 24), *(v12 + 32));
      }

      else
      {
        v13 = *(v12 + 24);
        v11[1].__r_.__value_.__r.__words[2] = *(v12 + 40);
        *&v11[1].__r_.__value_.__l.__data_ = v13;
      }

      v7 += 48;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_24264C98C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 + v2 - 48;
    v5 = -v2;
    do
    {
      std::__destroy_at[abi:ne200100]<ctb::CPIMNamespace,0>(v4);
      v4 -= 48;
      v5 += 48;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__optional_copy_base<ctb::chatbot::AddressEntryList,false>::__optional_copy_base[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  std::__optional_storage_base<ctb::chatbot::AddressEntryList,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<ctb::chatbot::AddressEntryList,false> const&>(a1, a2);
  return a1;
}

void sub_24264CA10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 24) == 1)
  {
    a10 = v10;
    std::vector<ctb::CPIMNamespace>::__destroy_vector::operator()[abi:ne200100](&a10);
  }

  _Unwind_Resume(exception_object);
}

void *std::__optional_storage_base<ctb::chatbot::AddressEntryList,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<ctb::chatbot::AddressEntryList,false> const&>(void *result, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    v2 = result;
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    result = std::vector<ctb::chatbot::AddressEntry>::__init_with_size[abi:ne200100]<ctb::chatbot::AddressEntry*,ctb::chatbot::AddressEntry*>(result, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 4));
    *(v2 + 24) = 1;
  }

  return result;
}

uint64_t std::vector<ctb::chatbot::AddressEntry>::__init_with_size[abi:ne200100]<ctb::chatbot::AddressEntry*,ctb::chatbot::AddressEntry*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ctb::CPIMNamespace>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_24264CAFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<ctb::CPIMNamespace>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ctb::chatbot::AddressEntry>,ctb::chatbot::AddressEntry*,ctb::chatbot::AddressEntry*,ctb::chatbot::AddressEntry*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = (a4 + v7);
      v9 = (a2 + v7);
      if (*(a2 + v7 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v8, *v9, *(v9 + 1));
      }

      else
      {
        v10 = *v9;
        v8->__r_.__value_.__r.__words[2] = *(v9 + 2);
        *&v8->__r_.__value_.__l.__data_ = v10;
      }

      v11 = (a4 + v7);
      v12 = a2 + v7;
      if (*(a2 + v7 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(v11 + 1, *(v12 + 24), *(v12 + 32));
      }

      else
      {
        v13 = *(v12 + 24);
        v11[1].__r_.__value_.__r.__words[2] = *(v12 + 40);
        *&v11[1].__r_.__value_.__l.__data_ = v13;
      }

      v7 += 48;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_24264CBCC(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 + v2 - 48;
    v5 = -v2;
    do
    {
      std::__destroy_at[abi:ne200100]<ctb::CPIMNamespace,0>(v4);
      v4 -= 48;
      v5 += 48;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__optional_copy_base<ctb::chatbot::MenuItem,false>::__optional_copy_base[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  std::__optional_storage_base<ctb::chatbot::MenuItem,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<ctb::chatbot::MenuItem,false> const&>(a1, a2);
  return a1;
}

void sub_24264CC50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 24) == 1)
  {
    a10 = v10;
    std::vector<ctb::chatbot::MenuL0Content>::__destroy_vector::operator()[abi:ne200100](&a10);
  }

  _Unwind_Resume(exception_object);
}

void *std::__optional_storage_base<ctb::chatbot::MenuItem,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<ctb::chatbot::MenuItem,false> const&>(void *result, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    v2 = result;
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    result = std::vector<ctb::chatbot::MenuL0Content>::__init_with_size[abi:ne200100]<ctb::chatbot::MenuL0Content*,ctb::chatbot::MenuL0Content*>(result, *a2, *(a2 + 8), 0xEF7BDEF7BDEF7BDFLL * ((*(a2 + 8) - *a2) >> 3));
    *(v2 + 24) = 1;
  }

  return result;
}

uint64_t std::vector<ctb::chatbot::MenuL0Content>::__init_with_size[abi:ne200100]<ctb::chatbot::MenuL0Content*,ctb::chatbot::MenuL0Content*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ctb::chatbot::MenuL0Content>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_24264CD44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<ctb::chatbot::MenuL0Content>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<ctb::chatbot::MenuL0Content>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x108421084210843)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ctb::chatbot::MenuL0Content>>(a1, a2);
  }

  std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ctb::chatbot::MenuL0Content>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x108421084210843)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ctb::chatbot::MenuL0Content>,ctb::chatbot::MenuL0Content*,ctb::chatbot::MenuL0Content*,ctb::chatbot::MenuL0Content*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      *(a4 + v7) = *(a2 + v7);
      std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<ctb::chatbot::SuggestedChip,ctb::chatbot::MenuL1>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](a4 + v7 + 8, a2 + v7 + 8);
      v7 += 248;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_24264CE84(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v4 = -v1;
    v5 = v2 - 240;
    do
    {
      std::__variant_detail::__dtor<std::__variant_detail::__traits<ctb::chatbot::SuggestedChip,ctb::chatbot::MenuL1>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v5);
      v5 -= 248;
      v4 += 248;
    }

    while (v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<ctb::chatbot::SuggestedChip,ctb::chatbot::MenuL1>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 232) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<ctb::chatbot::SuggestedChip,ctb::chatbot::MenuL1>>::__generic_construct[abi:ne200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<ctb::chatbot::SuggestedChip,ctb::chatbot::MenuL1>,(std::__variant_detail::_Trait)1> const&>(a1, a2);
  return a1;
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<ctb::chatbot::SuggestedChip,ctb::chatbot::MenuL1>>::__generic_construct[abi:ne200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<ctb::chatbot::SuggestedChip,ctb::chatbot::MenuL1>,(std::__variant_detail::_Trait)1> const&>(uint64_t a1, uint64_t a2)
{
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<ctb::chatbot::SuggestedChip,ctb::chatbot::MenuL1>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
  v5 = *(a2 + 232);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_2854F70E8[v5])(&v6, a2);
    *(a1 + 232) = v5;
  }

  return result;
}

uint64_t std::vector<ctb::chatbot::MenuL1Content>::__init_with_size[abi:ne200100]<ctb::chatbot::MenuL1Content*,ctb::chatbot::MenuL1Content*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ctb::chatbot::MenuL0Content>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_24264CFC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<ctb::chatbot::MenuL1Content>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ctb::chatbot::MenuL1Content>,ctb::chatbot::MenuL1Content*,ctb::chatbot::MenuL1Content*,ctb::chatbot::MenuL1Content*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      *(a4 + v7) = *(a2 + v7);
      std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<ctb::chatbot::SuggestedChip,ctb::chatbot::MenuL2>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](a4 + v7 + 8, (a2 + v7 + 8));
      v7 += 248;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_24264D058(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v4 = -v1;
    v5 = v2 - 240;
    do
    {
      std::__variant_detail::__dtor<std::__variant_detail::__traits<ctb::chatbot::SuggestedChip,ctb::chatbot::MenuL2>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v5);
      v5 -= 248;
      v4 += 248;
    }

    while (v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<ctb::chatbot::SuggestedChip,ctb::chatbot::MenuL2>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](uint64_t a1, _DWORD *a2)
{
  *a1 = 0;
  *(a1 + 232) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<ctb::chatbot::SuggestedChip,ctb::chatbot::MenuL2>>::__generic_construct[abi:ne200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<ctb::chatbot::SuggestedChip,ctb::chatbot::MenuL2>,(std::__variant_detail::_Trait)1> const&>(a1, a2);
  return a1;
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<ctb::chatbot::SuggestedChip,ctb::chatbot::MenuL2>>::__generic_construct[abi:ne200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<ctb::chatbot::SuggestedChip,ctb::chatbot::MenuL2>,(std::__variant_detail::_Trait)1> const&>(uint64_t a1, _DWORD *a2)
{
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<ctb::chatbot::SuggestedChip,ctb::chatbot::MenuL2>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
  v5 = a2[58];
  if (v5 != -1)
  {
    v6 = a1;
    result = (*(&off_2854F70F8 + v5))(&v6, a2);
    *(a1 + 232) = v5;
  }

  return result;
}

uint64_t std::vector<ctb::chatbot::MenuL2Content>::__init_with_size[abi:ne200100]<ctb::chatbot::MenuL2Content*,ctb::chatbot::MenuL2Content*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ctb::chatbot::SuggestedChip>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_24264D198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<ctb::chatbot::MenuL2Content>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ctb::chatbot::MenuL2Content>,ctb::chatbot::MenuL2Content*,ctb::chatbot::MenuL2Content*,ctb::chatbot::MenuL2Content*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      *(a4 + v7) = *(a2 + v7);
      std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<ctb::chatbot::SuggestedAction,ctb::chatbot::SuggestedReply>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](a4 + v7 + 8, a2 + v7 + 8);
      v7 += 232;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_24264D22C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v4 = -v1;
    v5 = v2 - 224;
    do
    {
      std::__variant_detail::__dtor<std::__variant_detail::__traits<ctb::chatbot::SuggestedAction,ctb::chatbot::SuggestedReply>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v5);
      v5 -= 232;
      v4 += 232;
    }

    while (v4);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__optional_storage_base<ctb::ProvisioningConfiguration,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::ProvisioningConfiguration,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 1224) == *(a2 + 1224))
  {
    if (*(a1 + 1224))
    {

      ctb::ProvisioningConfiguration::operator=(a1, a2);
    }
  }

  else if (*(a1 + 1224))
  {
    if (*(a1 + 1168) == 1)
    {
      ctb::ProvisioningConfiguration::Messaging::~Messaging((a1 + 720));
    }

    if (*(a1 + 712) == 1)
    {
      std::__tree<std::string>::destroy(a1 + 688, *(a1 + 696));
    }

    if (*(a1 + 648) == 1)
    {
      ctb::ProvisioningConfiguration::IMS3GPP::~IMS3GPP((a1 + 120));
    }

    if (*(a1 + 112) == 1)
    {
      v10 = (a1 + 88);
      std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::__destroy_vector::operator()[abi:ne200100](&v10);
      std::__tree<std::string>::destroy(a1 + 64, *(a1 + 72));
    }

    if (*(a1 + 32) == 1 && *(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }

    *(a1 + 1224) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 32) = 0;
    if (*(a2 + 32) == 1)
    {
      *a1 = *a2;
      v5 = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 8) = v5;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 8) = 0;
      *(a1 + 32) = 1;
    }

    v6 = *(a2 + 40);
    v7 = *(a2 + 56);
    *(a1 + 64) = 0;
    v8 = (a1 + 64);
    *(a1 + 56) = v7;
    *(a1 + 40) = v6;
    *(a1 + 112) = 0;
    if (*(a2 + 112) == 1)
    {
      std::construct_at[abi:ne200100]<ctb::ProvisioningConfiguration::AccessControl,ctb::ProvisioningConfiguration::AccessControl,ctb::ProvisioningConfiguration::AccessControl*>(v8, a2 + 64);
      *(a1 + 112) = 1;
    }

    std::__optional_move_base<ctb::ProvisioningConfiguration::IMS3GPP,false>::__optional_move_base[abi:ne200100]((a1 + 120), a2 + 120);
    std::__optional_move_base<ctb::ProvisioningConfiguration::Services,false>::__optional_move_base[abi:ne200100](a1 + 656, (a2 + 656));
    std::__optional_move_base<ctb::ProvisioningConfiguration::Messaging,false>::__optional_move_base[abi:ne200100]((a1 + 720), a2 + 720);
    result = *(a2 + 1176);
    v9 = *(a2 + 1208);
    *(a1 + 1192) = *(a2 + 1192);
    *(a1 + 1208) = v9;
    *(a1 + 1176) = result;
    *(a1 + 1224) = 1;
  }

  return result;
}

uint64_t ctb::ProvisioningConfiguration::operator=(uint64_t a1, uint64_t a2)
{
  std::__optional_storage_base<ctb::ProvisioningConfiguration::Token,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::ProvisioningConfiguration::Token,false>>(a1, a2);
  v4 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v4;
  std::__optional_storage_base<ctb::ProvisioningConfiguration::AccessControl,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::ProvisioningConfiguration::AccessControl,false>>(a1 + 64, a2 + 64);
  std::__optional_storage_base<ctb::ProvisioningConfiguration::IMS3GPP,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::ProvisioningConfiguration::IMS3GPP,false>>((a1 + 120), a2 + 120);
  std::__optional_storage_base<ctb::ProvisioningConfiguration::Services,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::ProvisioningConfiguration::Services,false>>(a1 + 656, (a2 + 656));
  std::__optional_storage_base<ctb::ProvisioningConfiguration::Messaging,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::ProvisioningConfiguration::Messaging,false>>(a1 + 720, a2 + 720);
  v5 = *(a2 + 1176);
  v6 = *(a2 + 1192);
  *(a1 + 1201) = *(a2 + 1201);
  *(a1 + 1176) = v5;
  *(a1 + 1192) = v6;
  return a1;
}

__n128 std::__optional_storage_base<ctb::ProvisioningConfiguration::Token,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::ProvisioningConfiguration::Token,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == *(a2 + 32))
  {
    if (*(a1 + 32))
    {
      *a1 = *a2;
      if (*(a1 + 31) < 0)
      {
        operator delete(*(a1 + 8));
      }

      result = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 8) = result;
      *(a2 + 31) = 0;
      *(a2 + 8) = 0;
    }
  }

  else if (*(a1 + 32))
  {
    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }

    *(a1 + 32) = 0;
  }

  else
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

void std::__optional_storage_base<ctb::ProvisioningConfiguration::AccessControl,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::ProvisioningConfiguration::AccessControl,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) == *(a2 + 48))
  {
    if (*(a1 + 48))
    {
      std::__tree<std::string>::__move_assign(a1, a2);
      std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::__vdeallocate((a1 + 24));
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 40) = *(a2 + 40);
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
    }
  }

  else if (*(a1 + 48))
  {
    v4 = (a1 + 24);
    std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::__destroy_vector::operator()[abi:ne200100](&v4);
    std::__tree<std::string>::destroy(a1, *(a1 + 8));
    *(a1 + 48) = 0;
  }

  else
  {
    std::construct_at[abi:ne200100]<ctb::ProvisioningConfiguration::AccessControl,ctb::ProvisioningConfiguration::AccessControl,ctb::ProvisioningConfiguration::AccessControl*>(a1, a2);
    *(a1 + 48) = 1;
  }
}

void std::__tree<std::string>::__move_assign(uint64_t a1, void *a2)
{
  v4 = (a1 + 8);
  std::__tree<std::string>::destroy(a1, *(a1 + 8));
  *a1 = *a2;
  v5 = a2 + 1;
  v6 = a2[1];
  *v4 = v6;
  v7 = a2[2];
  *(a1 + 16) = v7;
  if (v7)
  {
    *(v6 + 16) = v4;
    *a2 = v5;
    *v5 = 0;
    a2[2] = 0;
  }

  else
  {
    *a1 = v4;
  }
}

void std::__tree<std::string>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::string>::destroy(a1, *a2);
    std::__tree<std::string>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::__vdeallocate(void **a1)
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
        std::__destroy_at[abi:ne200100]<ctb::ProvisioningConfiguration::AccessControl::Server,0>(v3);
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

void std::__destroy_at[abi:ne200100]<ctb::ProvisioningConfiguration::AccessControl::Server,0>(uint64_t a1)
{
  std::__tree<std::string>::destroy(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void ctb::ProvisioningConfiguration::AccessControl::~AccessControl(char **this)
{
  v2 = (this + 3);
  std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::__tree<std::string>::destroy(this, this[1]);
}

void std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::__destroy_at[abi:ne200100]<ctb::ProvisioningConfiguration::AccessControl::Server,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

__n128 std::construct_at[abi:ne200100]<ctb::ProvisioningConfiguration::AccessControl,ctb::ProvisioningConfiguration::AccessControl,ctb::ProvisioningConfiguration::AccessControl*>(void *a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = (a2 + 8);
  v3 = *(a2 + 8);
  a1[1] = v3;
  v4 = a1 + 1;
  v5 = *(a2 + 16);
  a1[2] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    *a2 = v2;
    *v2 = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    *a1 = v4;
  }

  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  result = *(a2 + 24);
  *(a1 + 3) = result;
  a1[5] = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return result;
}

double std::__optional_storage_base<ctb::ProvisioningConfiguration::IMS3GPP,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::ProvisioningConfiguration::IMS3GPP,false>>(ctb::ProvisioningConfiguration::IMS3GPP *a1, uint64_t a2)
{
  if (*(a1 + 528) == *(a2 + 528))
  {
    if (*(a1 + 528))
    {

      ctb::ProvisioningConfiguration::IMS3GPP::operator=(a1, a2);
    }
  }

  else if (*(a1 + 528))
  {
    ctb::ProvisioningConfiguration::IMS3GPP::~IMS3GPP(a1);
    *(v4 + 528) = 0;
  }

  else
  {

    *&result = std::__optional_storage_base<ctb::ProvisioningConfiguration::IMS3GPP,false>::__construct[abi:ne200100]<ctb::ProvisioningConfiguration::IMS3GPP>(a1, a2).n128_u64[0];
  }

  return result;
}

uint64_t ctb::ProvisioningConfiguration::IMS3GPP::operator=(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  std::__optional_storage_base<ctb::chatbot::CardStyle,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::chatbot::CardStyle,false>>(a1 + 24, (a2 + 24));
  std::__tree<std::string>::__move_assign(a1 + 56, a2 + 7);
  std::__tree<std::string>::__move_assign(a1 + 80, a2 + 10);
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  v5 = *(a2 + 104);
  *(a1 + 120) = *(a2 + 15);
  *(a1 + 104) = v5;
  *(a2 + 127) = 0;
  *(a2 + 104) = 0;
  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  v6 = a2[8];
  *(a1 + 144) = *(a2 + 18);
  *(a1 + 128) = v6;
  *(a2 + 151) = 0;
  *(a2 + 128) = 0;
  v7 = *(a2 + 21);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = v7;
  if (*(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  v8 = a2[11];
  *(a1 + 192) = *(a2 + 24);
  *(a1 + 176) = v8;
  *(a2 + 199) = 0;
  *(a2 + 176) = 0;
  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  v9 = *(a2 + 200);
  *(a1 + 216) = *(a2 + 27);
  *(a1 + 200) = v9;
  *(a2 + 223) = 0;
  *(a2 + 200) = 0;
  if (*(a1 + 247) < 0)
  {
    operator delete(*(a1 + 224));
  }

  v10 = a2[14];
  *(a1 + 240) = *(a2 + 30);
  *(a1 + 224) = v10;
  *(a2 + 247) = 0;
  *(a2 + 224) = 0;
  if (*(a1 + 271) < 0)
  {
    operator delete(*(a1 + 248));
  }

  v11 = *(a2 + 248);
  *(a1 + 264) = *(a2 + 33);
  *(a1 + 248) = v11;
  *(a2 + 271) = 0;
  *(a2 + 248) = 0;
  if (*(a1 + 295) < 0)
  {
    operator delete(*(a1 + 272));
  }

  v12 = a2[17];
  *(a1 + 288) = *(a2 + 36);
  *(a1 + 272) = v12;
  *(a2 + 295) = 0;
  *(a2 + 272) = 0;
  v13 = (a1 + 296);
  if (*(a1 + 319) < 0)
  {
    operator delete(*v13);
  }

  v14 = *(a2 + 296);
  *(a1 + 312) = *(a2 + 39);
  *v13 = v14;
  *(a2 + 319) = 0;
  *(a2 + 296) = 0;
  if (*(a1 + 343) < 0)
  {
    operator delete(*(a1 + 320));
  }

  v15 = a2[20];
  *(a1 + 336) = *(a2 + 42);
  *(a1 + 320) = v15;
  *(a2 + 343) = 0;
  *(a2 + 320) = 0;
  v16 = (a1 + 344);
  if (*(a1 + 367) < 0)
  {
    operator delete(*v16);
  }

  v17 = *(a2 + 344);
  *(a1 + 360) = *(a2 + 45);
  *v16 = v17;
  *(a2 + 367) = 0;
  *(a2 + 344) = 0;
  if (*(a1 + 391) < 0)
  {
    operator delete(*(a1 + 368));
  }

  v18 = a2[23];
  *(a1 + 384) = *(a2 + 48);
  *(a1 + 368) = v18;
  *(a2 + 391) = 0;
  *(a2 + 368) = 0;
  v19 = (a1 + 392);
  if (*(a1 + 415) < 0)
  {
    operator delete(*v19);
  }

  v20 = *(a2 + 392);
  *(a1 + 408) = *(a2 + 51);
  *v19 = v20;
  *(a2 + 415) = 0;
  *(a2 + 392) = 0;
  if (*(a1 + 439) < 0)
  {
    operator delete(*(a1 + 416));
  }

  v21 = a2[26];
  *(a1 + 432) = *(a2 + 54);
  *(a1 + 416) = v21;
  *(a2 + 439) = 0;
  *(a2 + 416) = 0;
  v22 = (a1 + 440);
  if (*(a1 + 463) < 0)
  {
    operator delete(*v22);
  }

  v23 = *(a2 + 440);
  *(a1 + 456) = *(a2 + 57);
  *v22 = v23;
  *(a2 + 463) = 0;
  *(a2 + 440) = 0;
  if (*(a1 + 487) < 0)
  {
    operator delete(*(a1 + 464));
  }

  v24 = a2[29];
  *(a1 + 480) = *(a2 + 60);
  *(a1 + 464) = v24;
  *(a2 + 487) = 0;
  *(a2 + 464) = 0;
  v25 = *(a2 + 488);
  v26 = *(a2 + 504);
  *(a1 + 520) = *(a2 + 260);
  *(a1 + 488) = v25;
  *(a1 + 504) = v26;
  return a1;
}

__n128 std::__optional_storage_base<ctb::ProvisioningConfiguration::IMS3GPP,false>::__construct[abi:ne200100]<ctb::ProvisioningConfiguration::IMS3GPP>(uint64_t a1, __int128 *a2)
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
  *(a1 + 528) = 1;
  return result;
}

void ctb::ProvisioningConfiguration::IMS3GPP::~IMS3GPP(ctb::ProvisioningConfiguration::IMS3GPP *this)
{
  if (*(this + 487) < 0)
  {
    operator delete(*(this + 58));
  }

  if (*(this + 463) < 0)
  {
    operator delete(*(this + 55));
  }

  if (*(this + 439) < 0)
  {
    operator delete(*(this + 52));
  }

  if (*(this + 415) < 0)
  {
    operator delete(*(this + 49));
  }

  if (*(this + 391) < 0)
  {
    operator delete(*(this + 46));
  }

  if (*(this + 367) < 0)
  {
    operator delete(*(this + 43));
  }

  if (*(this + 343) < 0)
  {
    operator delete(*(this + 40));
  }

  if (*(this + 319) < 0)
  {
    operator delete(*(this + 37));
  }

  if (*(this + 295) < 0)
  {
    operator delete(*(this + 34));
  }

  if (*(this + 271) < 0)
  {
    operator delete(*(this + 31));
  }

  if (*(this + 247) < 0)
  {
    operator delete(*(this + 28));
  }

  if (*(this + 223) < 0)
  {
    operator delete(*(this + 25));
  }

  if (*(this + 199) < 0)
  {
    operator delete(*(this + 22));
  }

  if (*(this + 151) < 0)
  {
    operator delete(*(this + 16));
  }

  if (*(this + 127) < 0)
  {
    operator delete(*(this + 13));
  }

  std::__tree<std::string>::destroy(this + 80, *(this + 11));
  std::__tree<std::string>::destroy(this + 56, *(this + 8));
  if (*(this + 48) == 1 && *(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::__optional_storage_base<ctb::ProvisioningConfiguration::Services,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::ProvisioningConfiguration::Services,false>>(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 56) == *(a2 + 56))
  {
    if (*(a1 + 56))
    {
      v3 = *a2;
      *(a1 + 11) = *(a2 + 11);
      *a1 = v3;
      v4 = a1 + 32;
      v5 = a2 + 2;

      std::__tree<std::string>::__move_assign(v4, v5);
    }
  }

  else if (*(a1 + 56))
  {
    std::__tree<std::string>::destroy(a1 + 32, *(a1 + 40));
    *(a1 + 56) = 0;
  }

  else
  {
    v6 = *a2;
    *(a1 + 11) = *(a2 + 11);
    *a1 = v6;
    *(a1 + 32) = *(a2 + 4);
    v7 = a2 + 5;
    v8 = *(a2 + 5);
    *(a1 + 40) = v8;
    v9 = a1 + 40;
    v10 = *(a2 + 6);
    *(a1 + 48) = v10;
    if (v10)
    {
      *(v8 + 16) = v9;
      *(a2 + 4) = v7;
      *v7 = 0;
      *(a2 + 6) = 0;
    }

    else
    {
      *(a1 + 32) = v9;
    }

    *(a1 + 56) = 1;
  }
}

void std::__optional_storage_base<ctb::ProvisioningConfiguration::Messaging,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::ProvisioningConfiguration::Messaging,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 448) == *(a2 + 448))
  {
    if (*(a1 + 448))
    {

      ctb::ProvisioningConfiguration::Messaging::operator=(a1, a2);
    }
  }

  else if (*(a1 + 448))
  {
    ctb::ProvisioningConfiguration::Messaging::~Messaging(a1);
    *(v3 + 448) = 0;
  }

  else
  {

    std::__optional_storage_base<ctb::ProvisioningConfiguration::Messaging,false>::__construct[abi:ne200100]<ctb::ProvisioningConfiguration::Messaging>(a1, a2);
  }
}

uint64_t ctb::ProvisioningConfiguration::Messaging::operator=(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  std::__optional_storage_base<ctb::ProvisioningConfiguration::Messaging::Chatbot,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::ProvisioningConfiguration::Messaging::Chatbot,false>>(a1 + 24, (a2 + 24));
  std::__optional_storage_base<ctb::ProvisioningConfiguration::Messaging::FileTransfer,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::ProvisioningConfiguration::Messaging::FileTransfer,false>>(a1 + 120, (a2 + 120));
  std::__optional_storage_base<ctb::ProvisioningConfiguration::Messaging::Chat,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::ProvisioningConfiguration::Messaging::Chat,false>>(a1 + 264, (a2 + 264));
  std::__optional_storage_base<ctb::ProvisioningConfiguration::Messaging::StandaloneMsg,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::ProvisioningConfiguration::Messaging::StandaloneMsg,false>>(a1 + 368, a2 + 23);
  std::__optional_storage_base<ctb::chatbot::CardStyle,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::chatbot::CardStyle,false>>(a1 + 416, a2 + 26);
  return a1;
}

uint64_t std::__optional_storage_base<ctb::ProvisioningConfiguration::Messaging,false>::__construct[abi:ne200100]<ctb::ProvisioningConfiguration::Messaging>(uint64_t result, __int128 *a2)
{
  v2 = *a2;
  *(result + 16) = *(a2 + 2);
  *result = v2;
  *(result + 24) = 0;
  *(result + 112) = 0;
  if (*(a2 + 112) == 1)
  {
    v3 = *(a2 + 24);
    *(result + 40) = *(a2 + 5);
    *(result + 24) = v3;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v4 = a2[3];
    *(result + 64) = *(a2 + 8);
    *(result + 48) = v4;
    *(a2 + 7) = 0;
    *(a2 + 8) = 0;
    *(a2 + 6) = 0;
    v5 = *(a2 + 72);
    *(result + 88) = *(a2 + 11);
    *(result + 72) = v5;
    *(a2 + 10) = 0;
    *(a2 + 11) = 0;
    *(a2 + 9) = 0;
    v6 = *(a2 + 12);
    *(result + 104) = *(a2 + 52);
    *(result + 96) = v6;
    *(result + 112) = 1;
  }

  *(result + 120) = 0;
  *(result + 256) = 0;
  if (*(a2 + 256) == 1)
  {
    v7 = *(a2 + 120);
    *(result + 136) = *(a2 + 136);
    *(result + 120) = v7;
    v8 = a2[9];
    *(result + 160) = *(a2 + 20);
    *(result + 144) = v8;
    *(a2 + 19) = 0;
    *(a2 + 20) = 0;
    *(a2 + 18) = 0;
    v9 = *(a2 + 168);
    *(result + 184) = *(a2 + 23);
    *(result + 168) = v9;
    *(a2 + 22) = 0;
    *(a2 + 23) = 0;
    *(a2 + 21) = 0;
    v10 = a2[12];
    *(result + 208) = *(a2 + 26);
    *(result + 192) = v10;
    *(a2 + 24) = 0;
    *(a2 + 25) = 0;
    *(a2 + 26) = 0;
    v11 = *(a2 + 216);
    *(result + 232) = *(a2 + 29);
    *(result + 216) = v11;
    *(a2 + 27) = 0;
    *(a2 + 28) = 0;
    *(a2 + 29) = 0;
    *(result + 240) = a2[15];
    *(result + 256) = 1;
  }

  *(result + 264) = 0;
  *(result + 360) = 0;
  if (*(a2 + 360) == 1)
  {
    v12 = *(a2 + 264);
    v13 = *(a2 + 280);
    *(result + 296) = *(a2 + 148);
    *(result + 264) = v12;
    *(result + 280) = v13;
    v14 = a2[19];
    *(result + 320) = *(a2 + 40);
    *(result + 304) = v14;
    *(a2 + 39) = 0;
    *(a2 + 40) = 0;
    *(a2 + 38) = 0;
    *(result + 328) = 0;
    *(result + 352) = 0;
    if (*(a2 + 352) == 1)
    {
      v15 = *(a2 + 328);
      *(result + 344) = *(a2 + 43);
      *(result + 328) = v15;
      *(a2 + 42) = 0;
      *(a2 + 43) = 0;
      *(a2 + 41) = 0;
      *(result + 352) = 1;
    }

    *(result + 360) = 1;
  }

  *(result + 368) = 0;
  *(result + 408) = 0;
  if (*(a2 + 408) == 1)
  {
    v16 = a2[23];
    *(result + 384) = *(a2 + 48);
    *(result + 368) = v16;
    *(a2 + 47) = 0;
    *(a2 + 48) = 0;
    *(a2 + 46) = 0;
    *(result + 392) = *(a2 + 392);
    *(result + 408) = 1;
  }

  *(result + 416) = 0;
  *(result + 440) = 0;
  if (*(a2 + 440) == 1)
  {
    v17 = a2[26];
    *(result + 432) = *(a2 + 54);
    *(result + 416) = v17;
    *(a2 + 53) = 0;
    *(a2 + 54) = 0;
    *(a2 + 52) = 0;
    *(result + 440) = 1;
  }

  *(result + 448) = 1;
  return result;
}

__n128 std::__optional_storage_base<ctb::ProvisioningConfiguration::Messaging::Chatbot,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::ProvisioningConfiguration::Messaging::Chatbot,false>>(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 88) == *(a2 + 88))
  {
    if (*(a1 + 88))
    {
      if (*(a1 + 23) < 0)
      {
        operator delete(*a1);
      }

      v4 = *a2;
      *(a1 + 16) = *(a2 + 2);
      *a1 = v4;
      *(a2 + 23) = 0;
      *a2 = 0;
      if (*(a1 + 47) < 0)
      {
        operator delete(*(a1 + 24));
      }

      v5 = *(a2 + 24);
      *(a1 + 40) = *(a2 + 5);
      *(a1 + 24) = v5;
      *(a2 + 47) = 0;
      *(a2 + 24) = 0;
      if (*(a1 + 71) < 0)
      {
        operator delete(*(a1 + 48));
      }

      result = a2[3];
      *(a1 + 64) = *(a2 + 8);
      *(a1 + 48) = result;
      *(a2 + 71) = 0;
      *(a2 + 48) = 0;
      v7 = *(a2 + 9);
      *(a1 + 80) = *(a2 + 40);
      *(a1 + 72) = v7;
    }
  }

  else if (*(a1 + 88))
  {
    if (*(a1 + 71) < 0)
    {
      operator delete(*(a1 + 48));
    }

    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *(a1 + 88) = 0;
  }

  else
  {
    v8 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v8;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v9 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 24) = v9;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    result = a2[3];
    *(a1 + 64) = *(a2 + 8);
    *(a1 + 48) = result;
    *(a2 + 7) = 0;
    *(a2 + 8) = 0;
    *(a2 + 6) = 0;
    v10 = *(a2 + 9);
    *(a1 + 80) = *(a2 + 40);
    *(a1 + 72) = v10;
    *(a1 + 88) = 1;
  }

  return result;
}

__n128 std::__optional_storage_base<ctb::ProvisioningConfiguration::Messaging::FileTransfer,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::ProvisioningConfiguration::Messaging::FileTransfer,false>>(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 136) == *(a2 + 136))
  {
    if (*(a1 + 136))
    {
      v4 = *a2;
      *(a1 + 16) = *(a2 + 16);
      *a1 = v4;
      if (*(a1 + 47) < 0)
      {
        operator delete(*(a1 + 24));
      }

      v5 = *(a2 + 24);
      *(a1 + 40) = *(a2 + 5);
      *(a1 + 24) = v5;
      *(a2 + 47) = 0;
      *(a2 + 24) = 0;
      if (*(a1 + 71) < 0)
      {
        operator delete(*(a1 + 48));
      }

      v6 = a2[3];
      *(a1 + 64) = *(a2 + 8);
      *(a1 + 48) = v6;
      *(a2 + 71) = 0;
      *(a2 + 48) = 0;
      if (*(a1 + 95) < 0)
      {
        operator delete(*(a1 + 72));
      }

      v7 = *(a2 + 72);
      *(a1 + 88) = *(a2 + 11);
      *(a1 + 72) = v7;
      *(a2 + 95) = 0;
      *(a2 + 72) = 0;
      if (*(a1 + 119) < 0)
      {
        operator delete(*(a1 + 96));
      }

      v8 = a2[6];
      *(a1 + 112) = *(a2 + 14);
      *(a1 + 96) = v8;
      *(a2 + 119) = 0;
      *(a2 + 96) = 0;
      result = *(a2 + 120);
      *(a1 + 120) = result;
    }
  }

  else if (*(a1 + 136))
  {
    if (*(a1 + 119) < 0)
    {
      operator delete(*(a1 + 96));
    }

    if (*(a1 + 95) < 0)
    {
      operator delete(*(a1 + 72));
    }

    if (*(a1 + 71) < 0)
    {
      operator delete(*(a1 + 48));
    }

    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    *(a1 + 136) = 0;
  }

  else
  {
    v10 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a1 = v10;
    v11 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 24) = v11;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v12 = a2[3];
    *(a1 + 64) = *(a2 + 8);
    *(a1 + 48) = v12;
    *(a2 + 7) = 0;
    *(a2 + 8) = 0;
    *(a2 + 6) = 0;
    v13 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 11);
    *(a1 + 72) = v13;
    *(a2 + 9) = 0;
    *(a2 + 10) = 0;
    *(a2 + 11) = 0;
    v14 = a2[6];
    *(a1 + 112) = *(a2 + 14);
    *(a1 + 96) = v14;
    *(a2 + 12) = 0;
    *(a2 + 13) = 0;
    *(a2 + 14) = 0;
    result = *(a2 + 120);
    *(a1 + 120) = result;
    *(a1 + 136) = 1;
  }

  return result;
}

void ctb::ProvisioningConfiguration::Messaging::FileTransfer::~FileTransfer(void **this)
{
  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
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
}

void std::__optional_storage_base<ctb::ProvisioningConfiguration::Messaging::Chat,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::ProvisioningConfiguration::Messaging::Chat,false>>(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 96) == *(a2 + 96))
  {
    if (*(a1 + 96))
    {
      v4 = *a2;
      v5 = a2[1];
      *(a1 + 32) = *(a2 + 16);
      *a1 = v4;
      *(a1 + 16) = v5;
      if (*(a1 + 63) < 0)
      {
        operator delete(*(a1 + 40));
      }

      v6 = *(a2 + 40);
      *(a1 + 56) = *(a2 + 7);
      *(a1 + 40) = v6;
      *(a2 + 63) = 0;
      *(a2 + 40) = 0;
      std::__optional_storage_base<ctb::chatbot::CardStyle,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::chatbot::CardStyle,false>>(a1 + 64, a2 + 4);
    }
  }

  else
  {
    if (*(a1 + 96))
    {
      if (*(a1 + 88) == 1 && *(a1 + 87) < 0)
      {
        operator delete(*(a1 + 64));
      }

      if (*(a1 + 63) < 0)
      {
        operator delete(*(a1 + 40));
      }

      v7 = 0;
    }

    else
    {
      v8 = *a2;
      v9 = a2[1];
      *(a1 + 32) = *(a2 + 16);
      *a1 = v8;
      *(a1 + 16) = v9;
      v10 = *(a2 + 40);
      *(a1 + 56) = *(a2 + 7);
      *(a1 + 40) = v10;
      *(a2 + 6) = 0;
      *(a2 + 7) = 0;
      *(a2 + 5) = 0;
      *(a1 + 64) = 0;
      *(a1 + 88) = 0;
      v7 = 1;
      if (*(a2 + 88) == 1)
      {
        v11 = a2[4];
        *(a1 + 80) = *(a2 + 10);
        *(a1 + 64) = v11;
        *(a2 + 9) = 0;
        *(a2 + 10) = 0;
        *(a2 + 8) = 0;
        *(a1 + 88) = 1;
      }
    }

    *(a1 + 96) = v7;
  }
}

void ctb::ProvisioningConfiguration::Messaging::Chat::~Chat(void **this)
{
  if (*(this + 88) == 1 && *(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }
}

__n128 std::__optional_storage_base<ctb::ProvisioningConfiguration::Messaging::StandaloneMsg,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::ProvisioningConfiguration::Messaging::StandaloneMsg,false>>(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 40) == *(a2 + 40))
  {
    if (*(a1 + 40))
    {
      if (*(a1 + 23) < 0)
      {
        operator delete(*a1);
      }

      v4 = *a2;
      *(a1 + 16) = *(a2 + 2);
      *a1 = v4;
      *(a2 + 23) = 0;
      *a2 = 0;
      result = *(a2 + 24);
      *(a1 + 24) = result;
    }
  }

  else if (*(a1 + 40))
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *(a1 + 40) = 0;
  }

  else
  {
    v6 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v6;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    result = *(a2 + 24);
    *(a1 + 24) = result;
    *(a1 + 40) = 1;
  }

  return result;
}

void ctb::ProvisioningConfiguration::Messaging::~Messaging(void **this)
{
  if (*(this + 440) == 1 && *(this + 439) < 0)
  {
    operator delete(this[52]);
  }

  if (*(this + 408) == 1 && *(this + 391) < 0)
  {
    operator delete(this[46]);
  }

  if (*(this + 360) == 1)
  {
    if (*(this + 352) == 1 && *(this + 351) < 0)
    {
      operator delete(this[41]);
    }

    if (*(this + 327) < 0)
    {
      operator delete(this[38]);
    }
  }

  if (*(this + 256) == 1)
  {
    if (*(this + 239) < 0)
    {
      operator delete(this[27]);
    }

    if (*(this + 215) < 0)
    {
      operator delete(this[24]);
    }

    if (*(this + 191) < 0)
    {
      operator delete(this[21]);
    }

    if (*(this + 167) < 0)
    {
      operator delete(this[18]);
    }
  }

  if (*(this + 112) == 1)
  {
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
  }
}

uint64_t std::optional<ctb::ProvisioningConfiguration::Messaging::Chat>::~optional(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    if (*(a1 + 88) == 1 && *(a1 + 87) < 0)
    {
      operator delete(*(a1 + 64));
    }

    if (*(a1 + 63) < 0)
    {
      operator delete(*(a1 + 40));
    }
  }

  return a1;
}

uint64_t std::optional<ctb::ProvisioningConfiguration::Messaging::FileTransfer>::~optional(uint64_t a1)
{
  if (*(a1 + 136) == 1)
  {
    if (*(a1 + 119) < 0)
    {
      operator delete(*(a1 + 96));
    }

    if (*(a1 + 95) < 0)
    {
      operator delete(*(a1 + 72));
    }

    if (*(a1 + 71) < 0)
    {
      operator delete(*(a1 + 48));
    }

    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }
  }

  return a1;
}

uint64_t std::optional<ctb::ProvisioningConfiguration::Messaging::Chatbot>::~optional(uint64_t a1)
{
  if (*(a1 + 88) == 1)
  {
    if (*(a1 + 71) < 0)
    {
      operator delete(*(a1 + 48));
    }

    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

void ctb::ProvisioningConfiguration::~ProvisioningConfiguration(ctb::ProvisioningConfiguration *this)
{
  if (*(this + 1168) == 1)
  {
    ctb::ProvisioningConfiguration::Messaging::~Messaging(this + 90);
  }

  if (*(this + 712) == 1)
  {
    std::__tree<std::string>::destroy(this + 688, *(this + 87));
  }

  if (*(this + 648) == 1)
  {
    ctb::ProvisioningConfiguration::IMS3GPP::~IMS3GPP((this + 120));
  }

  if (*(this + 112) == 1)
  {
    v2 = (this + 88);
    std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::__destroy_vector::operator()[abi:ne200100](&v2);
    std::__tree<std::string>::destroy(this + 64, *(this + 9));
  }

  if (*(this + 32) == 1 && *(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

uint64_t std::optional<ctb::ProvisioningConfiguration::AccessControl>::~optional(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v3 = (a1 + 24);
    std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::__destroy_vector::operator()[abi:ne200100](&v3);
    std::__tree<std::string>::destroy(a1, *(a1 + 8));
  }

  return a1;
}

_BYTE *std::__optional_move_base<ctb::ProvisioningConfiguration::IMS3GPP,false>::__optional_move_base[abi:ne200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[528] = 0;
  if (*(a2 + 528) == 1)
  {
    std::__optional_storage_base<ctb::ProvisioningConfiguration::IMS3GPP,false>::__construct[abi:ne200100]<ctb::ProvisioningConfiguration::IMS3GPP>(a1, a2);
  }

  return a1;
}

uint64_t std::__optional_move_base<ctb::ProvisioningConfiguration::Services,false>::__optional_move_base[abi:ne200100](uint64_t result, __int128 *a2)
{
  *result = 0;
  *(result + 56) = 0;
  if (*(a2 + 56) == 1)
  {
    v2 = *a2;
    *(result + 11) = *(a2 + 11);
    *result = v2;
    *(result + 32) = *(a2 + 4);
    v3 = a2 + 5;
    v4 = *(a2 + 5);
    *(result + 40) = v4;
    v5 = result + 40;
    v6 = *(a2 + 6);
    *(result + 48) = v6;
    if (v6)
    {
      *(v4 + 16) = v5;
      *(a2 + 4) = v3;
      *v3 = 0;
      *(a2 + 6) = 0;
    }

    else
    {
      *(result + 32) = v5;
    }

    *(result + 56) = 1;
  }

  return result;
}

_BYTE *std::__optional_move_base<ctb::ProvisioningConfiguration::Messaging,false>::__optional_move_base[abi:ne200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[448] = 0;
  if (*(a2 + 448) == 1)
  {
    std::__optional_storage_base<ctb::ProvisioningConfiguration::Messaging,false>::__construct[abi:ne200100]<ctb::ProvisioningConfiguration::Messaging>(a1, a2);
  }

  return a1;
}

ctb::ProvisioningConfiguration *std::__optional_copy_base<ctb::ProvisioningConfiguration,false>::__optional_copy_base[abi:ne200100](ctb::ProvisioningConfiguration *this, const ctb::ProvisioningConfiguration *a2)
{
  *this = 0;
  *(this + 1224) = 0;
  if (*(a2 + 1224) == 1)
  {
    ctb::ProvisioningConfiguration::ProvisioningConfiguration(this, a2);
    *(this + 1224) = 1;
  }

  return this;
}

void sub_24264EF30(_Unwind_Exception *exception_object)
{
  if (*(v1 + 1224) == 1)
  {
    ctb::ProvisioningConfiguration::~ProvisioningConfiguration(v1);
  }

  _Unwind_Resume(exception_object);
}

ctb::ProvisioningConfiguration *ctb::ProvisioningConfiguration::ProvisioningConfiguration(ctb::ProvisioningConfiguration *this, const ctb::ProvisioningConfiguration *a2)
{
  v4 = std::__optional_copy_base<ctb::ProvisioningConfiguration::Token,false>::__optional_copy_base[abi:ne200100](this, a2);
  v5 = *(a2 + 40);
  *(v4 + 7) = *(a2 + 7);
  *(v4 + 40) = v5;
  std::__optional_copy_base<ctb::ProvisioningConfiguration::AccessControl,false>::__optional_copy_base[abi:ne200100]((v4 + 64), a2 + 64);
  std::__optional_copy_base<ctb::ProvisioningConfiguration::IMS3GPP,false>::__optional_copy_base[abi:ne200100](this + 5, (a2 + 120));
  std::__optional_copy_base<ctb::ProvisioningConfiguration::Services,false>::__optional_copy_base[abi:ne200100](this + 656, a2 + 41);
  std::__optional_copy_base<ctb::ProvisioningConfiguration::Messaging,false>::__optional_copy_base[abi:ne200100]((this + 720), (a2 + 720));
  v6 = *(a2 + 1176);
  v7 = *(a2 + 1208);
  *(this + 1192) = *(a2 + 1192);
  *(this + 1208) = v7;
  *(this + 1176) = v6;
  return this;
}

void sub_24264EFD4(_Unwind_Exception *a1)
{
  if (*(v1 + 712) == 1)
  {
    std::__tree<std::string>::destroy(v1 + 688, *(v1 + 696));
  }

  if (*(v1 + 648) == 1)
  {
    ctb::ProvisioningConfiguration::IMS3GPP::~IMS3GPP((v1 + 120));
  }

  std::optional<ctb::ProvisioningConfiguration::AccessControl>::~optional(v1 + 64);
  if (*(v1 + 32) == 1 && *(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(a1);
}

_BYTE *std::__optional_copy_base<ctb::ProvisioningConfiguration::Token,false>::__optional_copy_base[abi:ne200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[32] = 0;
  if (*(a2 + 32) == 1)
  {
    std::__optional_storage_base<ctb::ProvisioningConfiguration::Token,false>::__construct[abi:ne200100]<ctb::ProvisioningConfiguration::Token const&>(a1, a2);
  }

  return a1;
}

void sub_24264F088(_Unwind_Exception *exception_object)
{
  if (*(v1 + 32) == 1)
  {
    std::__optional_copy_base<ctb::ProvisioningConfiguration::Token,false>::__optional_copy_base[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__optional_storage_base<ctb::ProvisioningConfiguration::Token,false>::__construct[abi:ne200100]<ctb::ProvisioningConfiguration::Token const&>(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = (a1 + 8);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v3, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    v3->__r_.__value_.__r.__words[2] = *(a2 + 24);
    *&v3->__r_.__value_.__l.__data_ = v4;
  }

  *(a1 + 32) = 1;
}

uint64_t std::__optional_copy_base<ctb::ProvisioningConfiguration::AccessControl,false>::__optional_copy_base[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 48) = 0;
  if (*(a2 + 48) == 1)
  {
    std::set<std::string>::set[abi:ne200100](a1, a2);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::__init_with_size[abi:ne200100]<ctb::ProvisioningConfiguration::AccessControl::Server*,ctb::ProvisioningConfiguration::AccessControl::Server*>(a1 + 24, *(a2 + 24), *(a2 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 32) - *(a2 + 24)) >> 3));
    *(a1 + 48) = 1;
  }

  return a1;
}

void sub_24264F17C(_Unwind_Exception *a1)
{
  std::__tree<std::string>::destroy(v1, *(v1 + 8));
  if (*(v1 + 48) == 1)
  {
    ctb::ProvisioningConfiguration::AccessControl::~AccessControl(v1);
  }

  _Unwind_Resume(a1);
}

void *std::set<std::string>::set[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::set<std::string>::insert[abi:ne200100]<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(a1, *a2, (a2 + 8));
  return a1;
}

void *std::set<std::string>::insert[abi:ne200100]<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(void *result, void **a2, void **a3)
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

void *std::__tree<std::string>::__emplace_hint_unique_key_args<std::string,std::string const&>(void *a1, uint64_t a2, void **a3)
{
  v4 = 0;
  v5 = 0;
  result = *std::__tree<std::string>::__find_equal<std::string>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::string>::__construct_node<std::string const&>();
  }

  return result;
}

void **std::__tree<std::string>::__find_equal<std::string>(void *a1, uint64_t a2, void ***a3, uint64_t *a4, void **a5)
{
  v9 = (a1 + 1);
  if (a1 + 1 == a2 || (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a5, (a2 + 32)) & 0x80) != 0)
  {
    if (*a1 == a2)
    {
      v12 = a2;
    }

    else
    {
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

      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v12 + 4, a5) & 0x80) == 0)
      {
        goto LABEL_17;
      }
    }

    if (*a2)
    {
      *a3 = v12;
      return (v12 + 1);
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a2 + 32), a5) & 0x80) == 0)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  a4 = (a2 + 8);
  v13 = *(a2 + 8);
  if (v13)
  {
    v14 = *(a2 + 8);
    do
    {
      v15 = v14;
      v14 = *v14;
    }

    while (v14);
  }

  else
  {
    v19 = a2;
    do
    {
      v15 = v19[2];
      v17 = *v15 == v19;
      v19 = v15;
    }

    while (!v17);
  }

  if (v15 == v9)
  {
LABEL_29:
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

  if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a5, v15 + 4) & 0x80) != 0)
  {
    v13 = *a4;
    goto LABEL_29;
  }

LABEL_17:

  return std::__tree<std::string>::__find_equal<std::string>(a1, a3, a5);
}

void sub_24264F548(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::string,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::string>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

void *std::__tree<std::string>::__find_equal<std::string>(uint64_t a1, void *a2, void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, (v4 + 32)) & 0x80) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v7 + 4, a3) & 0x80) == 0)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
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

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::string,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::__init_with_size[abi:ne200100]<ctb::ProvisioningConfiguration::AccessControl::Server*,ctb::ProvisioningConfiguration::AccessControl::Server*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_24264F944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ctb::ProvisioningConfiguration::AccessControl::Server>>(a1, a2);
  }

  std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ctb::ProvisioningConfiguration::AccessControl::Server>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ctb::ProvisioningConfiguration::AccessControl::Server>,ctb::ProvisioningConfiguration::AccessControl::Server*,ctb::ProvisioningConfiguration::AccessControl::Server*,ctb::ProvisioningConfiguration::AccessControl::Server*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = (a4 + v7);
      v9 = (a2 + v7);
      if (*(a2 + v7 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v8, *v9, *(v9 + 1));
      }

      else
      {
        v10 = *v9;
        v8->__r_.__value_.__r.__words[2] = *(v9 + 2);
        *&v8->__r_.__value_.__l.__data_ = v10;
      }

      std::set<std::string>::set[abi:ne200100]((a4 + v7 + 24), a2 + v7 + 24);
      *(a4 + v7 + 48) = *(a2 + v7 + 48);
      v7 += 56;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_24264FAB4(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 + v2 - 56;
    v5 = -v2;
    do
    {
      std::__destroy_at[abi:ne200100]<ctb::ProvisioningConfiguration::AccessControl::Server,0>(v4);
      v4 -= 56;
      v5 += 56;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::__optional_copy_base<ctb::ProvisioningConfiguration::IMS3GPP,false>::__optional_copy_base[abi:ne200100](std::string *this, const ctb::ProvisioningConfiguration::IMS3GPP *a2)
{
  this->__r_.__value_.__s.__data_[0] = 0;
  this[22].__r_.__value_.__s.__data_[0] = 0;
  if (*(a2 + 528) == 1)
  {
    ctb::ProvisioningConfiguration::IMS3GPP::IMS3GPP(this, a2);
    this[22].__r_.__value_.__s.__data_[0] = 1;
  }

  return this;
}

void sub_24264FB44(_Unwind_Exception *exception_object)
{
  if (*(v1 + 528) == 1)
  {
    ctb::ProvisioningConfiguration::IMS3GPP::~IMS3GPP(v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *ctb::ProvisioningConfiguration::IMS3GPP::IMS3GPP(std::string *this, const ctb::ProvisioningConfiguration::IMS3GPP *a2)
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

  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](this + 1, (a2 + 24));
  std::set<std::string>::set[abi:ne200100](&this[2].__r_.__value_.__l.__size_, a2 + 56);
  std::set<std::string>::set[abi:ne200100](&this[3].__r_.__value_.__l.__size_, a2 + 80);
  if (*(a2 + 127) < 0)
  {
    std::string::__init_copy_ctor_external((this + 104), *(a2 + 13), *(a2 + 14));
  }

  else
  {
    v5 = *(a2 + 104);
    this[5].__r_.__value_.__r.__words[0] = *(a2 + 15);
    *&this[4].__r_.__value_.__r.__words[1] = v5;
  }

  if (*(a2 + 151) < 0)
  {
    std::string::__init_copy_ctor_external((this + 128), *(a2 + 16), *(a2 + 17));
  }

  else
  {
    v6 = *(a2 + 8);
    this[6].__r_.__value_.__r.__words[0] = *(a2 + 18);
    *&this[5].__r_.__value_.__r.__words[1] = v6;
  }

  v7 = *(a2 + 152);
  this[7].__r_.__value_.__r.__words[0] = *(a2 + 21);
  *&this[6].__r_.__value_.__r.__words[1] = v7;
  if (*(a2 + 199) < 0)
  {
    std::string::__init_copy_ctor_external((this + 176), *(a2 + 22), *(a2 + 23));
  }

  else
  {
    v8 = *(a2 + 11);
    this[8].__r_.__value_.__r.__words[0] = *(a2 + 24);
    *&this[7].__r_.__value_.__r.__words[1] = v8;
  }

  if (*(a2 + 223) < 0)
  {
    std::string::__init_copy_ctor_external((this + 200), *(a2 + 25), *(a2 + 26));
  }

  else
  {
    v9 = *(a2 + 200);
    this[9].__r_.__value_.__r.__words[0] = *(a2 + 27);
    *&this[8].__r_.__value_.__r.__words[1] = v9;
  }

  if (*(a2 + 247) < 0)
  {
    std::string::__init_copy_ctor_external((this + 224), *(a2 + 28), *(a2 + 29));
  }

  else
  {
    v10 = *(a2 + 14);
    this[10].__r_.__value_.__r.__words[0] = *(a2 + 30);
    *&this[9].__r_.__value_.__r.__words[1] = v10;
  }

  if (*(a2 + 271) < 0)
  {
    std::string::__init_copy_ctor_external((this + 248), *(a2 + 31), *(a2 + 32));
  }

  else
  {
    v11 = *(a2 + 248);
    this[11].__r_.__value_.__r.__words[0] = *(a2 + 33);
    *&this[10].__r_.__value_.__r.__words[1] = v11;
  }

  if (*(a2 + 295) < 0)
  {
    std::string::__init_copy_ctor_external((this + 272), *(a2 + 34), *(a2 + 35));
  }

  else
  {
    v12 = *(a2 + 17);
    this[12].__r_.__value_.__r.__words[0] = *(a2 + 36);
    *&this[11].__r_.__value_.__r.__words[1] = v12;
  }

  if (*(a2 + 319) < 0)
  {
    std::string::__init_copy_ctor_external((this + 296), *(a2 + 37), *(a2 + 38));
  }

  else
  {
    v13 = *(a2 + 296);
    this[13].__r_.__value_.__r.__words[0] = *(a2 + 39);
    *&this[12].__r_.__value_.__r.__words[1] = v13;
  }

  if (*(a2 + 343) < 0)
  {
    std::string::__init_copy_ctor_external((this + 320), *(a2 + 40), *(a2 + 41));
  }

  else
  {
    v14 = *(a2 + 20);
    this[14].__r_.__value_.__r.__words[0] = *(a2 + 42);
    *&this[13].__r_.__value_.__r.__words[1] = v14;
  }

  if (*(a2 + 367) < 0)
  {
    std::string::__init_copy_ctor_external((this + 344), *(a2 + 43), *(a2 + 44));
  }

  else
  {
    v15 = *(a2 + 344);
    this[15].__r_.__value_.__r.__words[0] = *(a2 + 45);
    *&this[14].__r_.__value_.__r.__words[1] = v15;
  }

  if (*(a2 + 391) < 0)
  {
    std::string::__init_copy_ctor_external((this + 368), *(a2 + 46), *(a2 + 47));
  }

  else
  {
    v16 = *(a2 + 23);
    this[16].__r_.__value_.__r.__words[0] = *(a2 + 48);
    *&this[15].__r_.__value_.__r.__words[1] = v16;
  }

  if (*(a2 + 415) < 0)
  {
    std::string::__init_copy_ctor_external((this + 392), *(a2 + 49), *(a2 + 50));
  }

  else
  {
    v17 = *(a2 + 392);
    this[17].__r_.__value_.__r.__words[0] = *(a2 + 51);
    *&this[16].__r_.__value_.__r.__words[1] = v17;
  }

  if (*(a2 + 439) < 0)
  {
    std::string::__init_copy_ctor_external((this + 416), *(a2 + 52), *(a2 + 53));
  }

  else
  {
    v18 = *(a2 + 26);
    this[18].__r_.__value_.__r.__words[0] = *(a2 + 54);
    *&this[17].__r_.__value_.__r.__words[1] = v18;
  }

  if (*(a2 + 463) < 0)
  {
    std::string::__init_copy_ctor_external((this + 440), *(a2 + 55), *(a2 + 56));
  }

  else
  {
    v19 = *(a2 + 440);
    this[19].__r_.__value_.__r.__words[0] = *(a2 + 57);
    *&this[18].__r_.__value_.__r.__words[1] = v19;
  }

  if (*(a2 + 487) < 0)
  {
    std::string::__init_copy_ctor_external((this + 464), *(a2 + 58), *(a2 + 59));
  }

  else
  {
    v20 = *(a2 + 29);
    this[20].__r_.__value_.__r.__words[0] = *(a2 + 60);
    *&this[19].__r_.__value_.__r.__words[1] = v20;
  }

  v21 = *(a2 + 488);
  v22 = *(a2 + 504);
  LOWORD(this[21].__r_.__value_.__r.__words[2]) = *(a2 + 260);
  *&this[20].__r_.__value_.__r.__words[1] = v21;
  *&this[21].__r_.__value_.__l.__data_ = v22;
  return this;
}

void sub_24264FE88(_Unwind_Exception *a1)
{
  if (*(v1 + 463) < 0)
  {
    operator delete(*v5);
  }

  if (*(v1 + 439) < 0)
  {
    operator delete(*(v1 + 416));
  }

  if (*(v1 + 415) < 0)
  {
    operator delete(*v4);
  }

  if (*(v1 + 391) < 0)
  {
    operator delete(*(v1 + 368));
  }

  if (*(v1 + 367) < 0)
  {
    operator delete(*v3);
  }

  if (*(v1 + 343) < 0)
  {
    operator delete(*(v1 + 320));
  }

  if (*(v1 + 319) < 0)
  {
    operator delete(*v2);
  }

  if (*(v1 + 295) < 0)
  {
    operator delete(*(v1 + 272));
  }

  if (*(v1 + 271) < 0)
  {
    operator delete(*(v1 + 248));
  }

  if (*(v1 + 247) < 0)
  {
    operator delete(*(v1 + 224));
  }

  if (*(v1 + 223) < 0)
  {
    operator delete(*(v1 + 200));
  }

  if (*(v1 + 199) < 0)
  {
    operator delete(*(v1 + 176));
  }

  if (*(v1 + 151) < 0)
  {
    operator delete(*(v1 + 128));
  }

  if (*(v1 + 127) < 0)
  {
    operator delete(*(v1 + 104));
  }

  std::__tree<std::string>::destroy(v1 + 80, *(v1 + 88));
  std::__tree<std::string>::destroy(v1 + 56, *(v1 + 64));
  if (*(v1 + 48) == 1 && *(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__optional_copy_base<ctb::ProvisioningConfiguration::Services,false>::__optional_copy_base[abi:ne200100](uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 56) = 0;
  if (*(a2 + 56) == 1)
  {
    v3 = *a2;
    *(a1 + 11) = *(a2 + 11);
    *a1 = v3;
    std::set<std::string>::set[abi:ne200100]((a1 + 32), (a2 + 2));
    *(a1 + 56) = 1;
  }

  return a1;
}

void sub_24265009C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 56) == 1)
  {
    std::__tree<std::string>::destroy(v1 + 32, *(v1 + 40));
  }

  _Unwind_Resume(exception_object);
}

ctb::ProvisioningConfiguration::Messaging *std::__optional_copy_base<ctb::ProvisioningConfiguration::Messaging,false>::__optional_copy_base[abi:ne200100](ctb::ProvisioningConfiguration::Messaging *this, const ctb::ProvisioningConfiguration::Messaging *a2)
{
  *this = 0;
  *(this + 448) = 0;
  if (*(a2 + 448) == 1)
  {
    ctb::ProvisioningConfiguration::Messaging::Messaging(this, a2);
    *(this + 448) = 1;
  }

  return this;
}

void sub_242650108(_Unwind_Exception *exception_object)
{
  if (*(v1 + 448) == 1)
  {
    ctb::ProvisioningConfiguration::Messaging::~Messaging(v1);
  }

  _Unwind_Resume(exception_object);
}

ctb::ProvisioningConfiguration::Messaging *ctb::ProvisioningConfiguration::Messaging::Messaging(ctb::ProvisioningConfiguration::Messaging *this, const ctb::ProvisioningConfiguration::Messaging *a2)
{
  v4 = *a2;
  *(this + 2) = *(a2 + 2);
  *this = v4;
  std::__optional_copy_base<ctb::ProvisioningConfiguration::Messaging::Chatbot,false>::__optional_copy_base[abi:ne200100](this + 1, (a2 + 24));
  std::__optional_copy_base<ctb::ProvisioningConfiguration::Messaging::FileTransfer,false>::__optional_copy_base[abi:ne200100]((this + 120), (a2 + 120));
  std::__optional_copy_base<ctb::ProvisioningConfiguration::Messaging::Chat,false>::__optional_copy_base[abi:ne200100](this + 264, (a2 + 264));
  std::__optional_copy_base<ctb::ProvisioningConfiguration::Messaging::StandaloneMsg,false>::__optional_copy_base[abi:ne200100]((this + 368), a2 + 23);
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((this + 416), a2 + 26);
  return this;
}

void sub_242650198(_Unwind_Exception *a1)
{
  if (*(v1 + 408) == 1 && *(v1 + 391) < 0)
  {
    operator delete(*(v1 + 368));
  }

  std::optional<ctb::ProvisioningConfiguration::Messaging::Chat>::~optional(v1 + 264);
  std::optional<ctb::ProvisioningConfiguration::Messaging::FileTransfer>::~optional(v1 + 120);
  std::optional<ctb::ProvisioningConfiguration::Messaging::Chatbot>::~optional(v1 + 24);
  _Unwind_Resume(a1);
}

std::string *std::__optional_copy_base<ctb::ProvisioningConfiguration::Messaging::Chatbot,false>::__optional_copy_base[abi:ne200100](std::string *this, __int128 *a2)
{
  this->__r_.__value_.__s.__data_[0] = 0;
  this[3].__r_.__value_.__s.__data_[16] = 0;
  if (*(a2 + 88) == 1)
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

    v7 = *(a2 + 9);
    LOWORD(this[3].__r_.__value_.__r.__words[1]) = *(a2 + 40);
    this[3].__r_.__value_.__r.__words[0] = v7;
    this[3].__r_.__value_.__s.__data_[16] = 1;
  }

  return this;
}

void sub_2426502BC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  if (*(v1 + 88) == 1)
  {
    ctb::chatbot::TelephoneInformation::~TelephoneInformation(v1);
  }

  _Unwind_Resume(exception_object);
}

ctb::ProvisioningConfiguration::Messaging::FileTransfer *std::__optional_copy_base<ctb::ProvisioningConfiguration::Messaging::FileTransfer,false>::__optional_copy_base[abi:ne200100](ctb::ProvisioningConfiguration::Messaging::FileTransfer *this, const ctb::ProvisioningConfiguration::Messaging::FileTransfer *a2)
{
  *this = 0;
  *(this + 136) = 0;
  if (*(a2 + 136) == 1)
  {
    ctb::ProvisioningConfiguration::Messaging::FileTransfer::FileTransfer(this, a2);
    *(this + 136) = 1;
  }

  return this;
}

void sub_242650354(_Unwind_Exception *exception_object)
{
  if (*(v1 + 136) == 1)
  {
    ctb::ProvisioningConfiguration::Messaging::FileTransfer::~FileTransfer(v1);
  }

  _Unwind_Resume(exception_object);
}

ctb::ProvisioningConfiguration::Messaging::FileTransfer *ctb::ProvisioningConfiguration::Messaging::FileTransfer::FileTransfer(ctb::ProvisioningConfiguration::Messaging::FileTransfer *this, const ctb::ProvisioningConfiguration::Messaging::FileTransfer *a2)
{
  v4 = *a2;
  *(this + 16) = *(a2 + 16);
  *this = v4;
  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(this + 5) = *(a2 + 5);
    *(this + 24) = v5;
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(this + 2, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = *(a2 + 3);
    *(this + 8) = *(a2 + 8);
    *(this + 3) = v6;
  }

  if (*(a2 + 95) < 0)
  {
    std::string::__init_copy_ctor_external(this + 3, *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v7 = *(a2 + 72);
    *(this + 11) = *(a2 + 11);
    *(this + 72) = v7;
  }

  if (*(a2 + 119) < 0)
  {
    std::string::__init_copy_ctor_external(this + 4, *(a2 + 12), *(a2 + 13));
  }

  else
  {
    v8 = *(a2 + 6);
    *(this + 14) = *(a2 + 14);
    *(this + 6) = v8;
  }

  *(this + 120) = *(a2 + 120);
  return this;
}

void sub_242650454(_Unwind_Exception *exception_object)
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

  _Unwind_Resume(exception_object);
}

uint64_t std::__optional_copy_base<ctb::ProvisioningConfiguration::Messaging::Chat,false>::__optional_copy_base[abi:ne200100](uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 96) = 0;
  if (*(a2 + 96) == 1)
  {
    v4 = *a2;
    v5 = a2[1];
    *(a1 + 32) = *(a2 + 16);
    *a1 = v4;
    *(a1 + 16) = v5;
    if (*(a2 + 63) < 0)
    {
      std::string::__init_copy_ctor_external((a1 + 40), *(a2 + 5), *(a2 + 6));
    }

    else
    {
      v6 = *(a2 + 40);
      *(a1 + 56) = *(a2 + 7);
      *(a1 + 40) = v6;
    }

    std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((a1 + 64), a2 + 4);
    *(a1 + 96) = 1;
  }

  return a1;
}

void sub_242650528(_Unwind_Exception *exception_object)
{
  if (*(v1 + 96) == 1)
  {
    ctb::ProvisioningConfiguration::Messaging::Chat::~Chat(v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::__optional_copy_base<ctb::ProvisioningConfiguration::Messaging::StandaloneMsg,false>::__optional_copy_base[abi:ne200100](std::string *this, __int128 *a2)
{
  this->__r_.__value_.__s.__data_[0] = 0;
  this[1].__r_.__value_.__s.__data_[16] = 0;
  if (*(a2 + 40) == 1)
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

    *&this[1].__r_.__value_.__l.__data_ = *(a2 + 24);
    this[1].__r_.__value_.__s.__data_[16] = 1;
  }

  return this;
}

void sub_2426505D4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 40) == 1)
  {
    std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__optional_storage_base<ctb::CPMGroupManagement,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::CPMGroupManagement,false>>(uint64_t a1, __n128 *a2)
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
      v5 = a2[1].n128_u32[2];
      *(a1 + 28) = a2[1].n128_u8[12];
      *(a1 + 24) = v5;
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

std::string *std::__optional_copy_base<ctb::CPMGroupManagement,false>::__optional_copy_base[abi:ne200100](std::string *this, uint64_t a2)
{
  this->__r_.__value_.__s.__data_[0] = 0;
  this[1].__r_.__value_.__s.__data_[8] = 0;
  if (*(a2 + 32) == 1)
  {
    std::__optional_storage_base<ctb::CPMGroupManagement,false>::__construct[abi:ne200100]<ctb::CPMGroupManagement const&>(this, a2);
  }

  return this;
}

void sub_242650784(_Unwind_Exception *exception_object)
{
  if (*(v1 + 32) == 1)
  {
    std::__optional_copy_base<ctb::CPMGroupManagement,false>::__optional_copy_base[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__optional_storage_base<ctb::CPMGroupManagement,false>::__construct[abi:ne200100]<ctb::CPMGroupManagement const&>(std::string *this, __int128 *a2)
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

  this[1].__r_.__value_.__r.__words[0] = *(a2 + 3);
  this[1].__r_.__value_.__s.__data_[8] = 1;
}

uint64_t std::__optional_copy_base<ctb::ServerMLSRCSContent,false>::__optional_copy_base[abi:ne200100](uint64_t a1, uint64_t a2)
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

void sub_2426508F8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    std::__optional_copy_base<ctb::MLSFileTransfer,false>::__optional_copy_base[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__optional_copy_base<ctb::SIPResourceLists,false>::__optional_copy_base[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  std::__optional_storage_base<ctb::chatbot::CategoryList,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<ctb::chatbot::CategoryList,false> const&>(a1, a2);
  return a1;
}

void sub_242650A04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 24) == 1)
  {
    a10 = v10;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  }

  _Unwind_Resume(exception_object);
}

void ctb::Client::~Client(id **this)
{
  v1 = *this;
  *this = 0;
  if (v1)
  {

    MEMORY[0x245D15E70](v1, 0x80C40B8603338);
  }
}

void ctb::Client::unpackData<ctb::ProvisioningConfiguration>(id **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v9 = 0;
  v6 = [**a1 unpackProvisioningXMLData:a2 error:&v9];
  v7 = v9;
  v8 = v7;
  if (a3 && v7)
  {
    *a3 = v7;
  }

  if (v6)
  {
    [v6 wrapped];
  }

  else
  {
    *a4 = 0;
    a4[1224] = 0;
  }
}

void ctb::Client::unpackData<ctb::BootstrappingInfo>(id **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v9 = 0;
  v6 = [**a1 unpackBootstrappingInfoXMLData:a2 error:&v9];
  v7 = v9;
  v8 = v7;
  if (a3 && v7)
  {
    *a3 = v7;
  }

  if (v6)
  {
    [v6 wrapped];
  }

  else
  {
    *a4 = 0;
    a4[32] = 0;
  }
}

void ctb::Client::unpackData<ctb::CPIMMessage>(id **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v9 = 0;
  v6 = [**a1 unpackCPIMMessageData:a2 error:&v9];
  v7 = v9;
  v8 = v7;
  if (a3 && v7)
  {
    *a3 = v7;
  }

  if (v6)
  {
    [v6 wrapped];
  }

  else
  {
    *a4 = 0;
    a4[280] = 0;
  }
}

void ctb::Client::unpackData<ctb::CPIMMLSMessage>(id **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v9 = 0;
  v6 = [**a1 unpackCPIMMLSMessageData:a2 error:&v9];
  v7 = v9;
  v8 = v7;
  if (a3 && v7)
  {
    *a3 = v7;
  }

  if (v6)
  {
    [v6 wrapped];
  }

  else
  {
    *a4 = 0;
    a4[24] = 0;
  }
}

void ctb::Client::unpackData<ctb::ServerMLSRCSContent>(id **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v9 = 0;
  v6 = [**a1 unpackServerMLSRCSContentData:a2 error:&v9];
  v7 = v9;
  v8 = v7;
  if (a3 && v7)
  {
    *a3 = v7;
  }

  if (v6)
  {
    [v6 wrapped];
  }

  else
  {
    *a4 = 0;
    a4[24] = 0;
  }
}

void ctb::Client::unpackData<ctb::MLSFileTransfer>(id **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v9 = 0;
  v6 = [**a1 unpackMLSFileTransferData:a2 error:&v9];
  v7 = v9;
  v8 = v7;
  if (a3 && v7)
  {
    *a3 = v7;
  }

  if (v6)
  {
    [v6 wrapped];
  }

  else
  {
    *a4 = 0;
    a4[24] = 0;
  }
}

void ctb::Client::unpackData<ctb::FileTransferDescriptor>(id **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v9 = 0;
  v6 = [**a1 unpackFileTransferDescriptorXMLData:a2 error:&v9];
  v7 = v9;
  v8 = v7;
  if (a3 && v7)
  {
    *a3 = v7;
  }

  if (v6)
  {
    [v6 wrapped];
  }

  else
  {
    *a4 = 0;
    a4[328] = 0;
  }
}

void ctb::Client::unpackData<ctb::GeoPushLocation>(id **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v9 = 0;
  v6 = [**a1 unpackGeoPushLocationXMLData:a2 error:&v9];
  v7 = v9;
  v8 = v7;
  if (a3 && v7)
  {
    *a3 = v7;
  }

  if (v6)
  {
    [v6 wrapped];
  }

  else
  {
    *a4 = 0;
    a4[16] = 0;
  }
}

void ctb::Client::unpackData<ctb::IMDispositionNotification>(id **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v9 = 0;
  v6 = [**a1 unpackIMDNXMLData:a2 error:&v9];
  v7 = v9;
  v8 = v7;
  if (a3 && v7)
  {
    *a3 = v7;
  }

  if (v6)
  {
    [v6 wrapped];
  }

  else
  {
    *a4 = 0;
    a4[80] = 0;
  }
}

void ctb::Client::unpackData<ctb::SIPConferenceInfo>(id **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v9 = 0;
  v6 = [**a1 unpackSIPConferenceInfoXMLData:a2 error:&v9];
  v7 = v9;
  v8 = v7;
  if (a3 && v7)
  {
    *a3 = v7;
  }

  if (v6)
  {
    [v6 wrapped];
  }

  else
  {
    *a4 = 0;
    a4[96] = 0;
  }
}

void ctb::Client::unpackData<ctb::SIPResourceLists>(id **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v9 = 0;
  v6 = [**a1 unpackSIPResourceListsXMLData:a2 error:&v9];
  v7 = v9;
  v8 = v7;
  if (a3 && v7)
  {
    *a3 = v7;
  }

  if (v6)
  {
    [v6 wrapped];
  }

  else
  {
    *a4 = 0;
    a4[24] = 0;
  }
}

void ctb::Client::unpackData<ctb::CPMGroupManagement>(id **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v9 = 0;
  v6 = [**a1 unpackCPMGroupManagementXMLData:a2 error:&v9];
  v7 = v9;
  v8 = v7;
  if (a3 && v7)
  {
    *a3 = v7;
  }

  if (v6)
  {
    [v6 wrapped];
  }

  else
  {
    *a4 = 0;
    a4[32] = 0;
  }
}

void ctb::Client::unpackData<ctb::IMCompositionIndication>(id **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v9 = 0;
  v6 = [**a1 unpackIMCompositionIndicationXMLData:a2 error:&v9];
  v7 = v9;
  v8 = v7;
  if (a3 && v7)
  {
    *a3 = v7;
  }

  if (v6)
  {
    [v6 wrapped];
  }

  else
  {
    *a4 = 0;
    a4[64] = 0;
  }
}

void ctb::Client::unpackData<ctb::chatbot::RenderInformation>(id **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v9 = 0;
  v6 = [**a1 unpackChatBotRenderInformationJSONData:a2 error:&v9];
  v7 = v9;
  v8 = v7;
  if (a3 && v7)
  {
    *a3 = v7;
  }

  if (v6)
  {
    [v6 wrapped];
  }

  else
  {
    *a4 = 0;
    a4[680] = 0;
  }
}

void ctb::Client::unpackDataWithOptions<ctb::chatbot::Message,ctb::chatbot::Message::UnpackOptions>(id **a1@<X0>, uint64_t a2@<X1>, unsigned __int16 a3@<W2>, void *a4@<X3>, _BYTE *a5@<X8>)
{
  v10 = 0;
  v7 = [**a1 unpackChatBotMessageJSONData:a2 options:a3 error:&v10];
  v8 = v10;
  v9 = v8;
  if (a4 && v8)
  {
    *a4 = v8;
  }

  if (v7)
  {
    [v7 wrapped];
  }

  else
  {
    *a5 = 0;
    a5[344] = 0;
  }
}

void ctb::Client::unpackData<ctb::ClientAuthenticityRequest>(id **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v9 = 0;
  v6 = [**a1 unpackClientAuthenticityRequestXMLData:a2 error:&v9];
  v7 = v9;
  v8 = v7;
  if (a3 && v7)
  {
    *a3 = v7;
  }

  if (v6)
  {
    [v6 wrapped];
  }

  else
  {
    *a4 = 0;
    a4[72] = 0;
  }
}

void ctb::Client::unpackData<ctb::IMRevoke>(id **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v9 = 0;
  v6 = [**a1 unpackIMRevokeXMLData:a2 error:&v9];
  v7 = v9;
  v8 = v7;
  if (a3 && v7)
  {
    *a3 = v7;
  }

  if (v6)
  {
    [v6 wrapped];
  }

  else
  {
    *a4 = 0;
    a4[80] = 0;
  }
}

__n128 std::__optional_storage_base<ctb::IMCompositionIndication,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::IMCompositionIndication,false>>(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 64) == a2[4].n128_u8[0])
  {
    if (*(a1 + 64))
    {
      v4 = &a2->n128_i8[8];
      *a1 = a2->n128_u32[0];
      if (*(a1 + 31) < 0)
      {
        operator delete(*(a1 + 8));
      }

      v5 = *v4;
      *(a1 + 24) = a2[1].n128_u64[1];
      *(a1 + 8) = v5;
      a2[1].n128_u8[15] = 0;
      a2->n128_u8[8] = 0;
      if (*(a1 + 55) < 0)
      {
        operator delete(*(a1 + 32));
      }

      result = a2[2];
      *(a1 + 48) = a2[3].n128_u64[0];
      *(a1 + 32) = result;
      a2[3].n128_u8[7] = 0;
      a2[2].n128_u8[0] = 0;
      *(a1 + 56) = a2[3].n128_u64[1];
    }
  }

  else if (*(a1 + 64))
  {
    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }

    *(a1 + 64) = 0;
  }

  else
  {
    *a1 = a2->n128_u32[0];
    v7 = *(a2 + 8);
    *(a1 + 24) = a2[1].n128_u64[1];
    *(a1 + 8) = v7;
    a2[1].n128_u64[0] = 0;
    a2[1].n128_u64[1] = 0;
    a2->n128_u64[1] = 0;
    result = a2[2];
    *(a1 + 48) = a2[3].n128_u64[0];
    *(a1 + 32) = result;
    a2[2].n128_u64[1] = 0;
    a2[3].n128_u64[0] = 0;
    a2[2].n128_u64[0] = 0;
    *(a1 + 56) = a2[3].n128_u64[1];
    *(a1 + 64) = 1;
  }

  return result;
}

uint64_t std::__optional_copy_base<ctb::IMCompositionIndication,false>::__optional_copy_base[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 64) = 0;
  if (*(a2 + 64) == 1)
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

    if (*(a2 + 55) < 0)
    {
      std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 32), *(a2 + 40));
    }

    else
    {
      v5 = *(a2 + 32);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 32) = v5;
    }

    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = 1;
  }

  return a1;
}

void sub_242651A48(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  if (*(v1 + 64) == 1)
  {
    ctb::chatbot::VerificationDetails::~VerificationDetails(v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__optional_storage_base<ctb::IMRevoke,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::IMRevoke,false>>(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 80) == *(a2 + 80))
  {
    if (*(a1 + 80))
    {
      if (*(a1 + 23) < 0)
      {
        operator delete(*a1);
      }

      v4 = *a2;
      *(a1 + 16) = *(a2 + 2);
      *a1 = v4;
      *(a2 + 23) = 0;
      *a2 = 0;
      if (*(a1 + 47) < 0)
      {
        operator delete(*(a1 + 24));
      }

      v5 = *(a2 + 24);
      *(a1 + 40) = *(a2 + 5);
      *(a1 + 24) = v5;
      *(a2 + 47) = 0;
      *(a2 + 24) = 0;
      if (*(a1 + 71) < 0)
      {
        operator delete(*(a1 + 48));
      }

      result = a2[3];
      *(a1 + 64) = *(a2 + 8);
      *(a1 + 48) = result;
      *(a2 + 71) = 0;
      *(a2 + 48) = 0;
      *(a1 + 72) = *(a2 + 18);
    }
  }

  else if (*(a1 + 80))
  {
    if (*(a1 + 71) < 0)
    {
      operator delete(*(a1 + 48));
    }

    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *(a1 + 80) = 0;
  }

  else
  {
    v7 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v7;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v8 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 24) = v8;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    result = a2[3];
    *(a1 + 64) = *(a2 + 8);
    *(a1 + 48) = result;
    *(a2 + 7) = 0;
    *(a2 + 8) = 0;
    *(a2 + 6) = 0;
    *(a1 + 72) = *(a2 + 18);
    *(a1 + 80) = 1;
  }

  return result;
}

std::string *std::__optional_copy_base<ctb::IMRevoke,false>::__optional_copy_base[abi:ne200100](std::string *this, __int128 *a2)
{
  this->__r_.__value_.__s.__data_[0] = 0;
  this[3].__r_.__value_.__s.__data_[8] = 0;
  if (*(a2 + 80) == 1)
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

    LODWORD(this[3].__r_.__value_.__l.__data_) = *(a2 + 18);
    this[3].__r_.__value_.__s.__data_[8] = 1;
  }

  return this;
}

void sub_242651D80(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  if (*(v1 + 80) == 1)
  {
    ctb::chatbot::TelephoneInformation::~TelephoneInformation(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__optional_copy_base<ctb::CPIMMLSMessage,false>::__optional_copy_base[abi:ne200100](uint64_t a1, uint64_t a2)
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

void sub_242651EC8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    std::__optional_copy_base<ctb::MLSFileTransfer,false>::__optional_copy_base[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__optional_storage_base<ctb::FileTransferDescriptor,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::FileTransferDescriptor,false>>(ctb::FileTransferDescriptor *this, uint64_t a2)
{
  if (*(this + 328) == *(a2 + 328))
  {
    if (*(this + 328))
    {

      ctb::FileTransferDescriptor::operator=(this, a2);
    }
  }

  else if (*(this + 328))
  {
    ctb::FileTransferDescriptor::~FileTransferDescriptor(this);
    *(this + 328) = 0;
  }

  else
  {
    v4 = *a2;
    *(this + 2) = *(a2 + 16);
    *this = v4;
    *(this + 24) = 0;
    *(this + 48) = 0;
    if (*(a2 + 48) == 1)
    {
      v5 = *(a2 + 24);
      *(this + 5) = *(a2 + 40);
      *(this + 24) = v5;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      *(a2 + 24) = 0;
      *(this + 48) = 1;
    }

    v6 = *(a2 + 56);
    *(this + 9) = *(a2 + 72);
    *(this + 56) = v6;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(a2 + 56) = 0;
    v7 = *(a2 + 80);
    *(this + 12) = *(a2 + 96);
    *(this + 5) = v7;
    *(a2 + 88) = 0;
    *(a2 + 96) = 0;
    *(a2 + 80) = 0;
    v8 = *(a2 + 104);
    *(this + 15) = *(a2 + 120);
    *(this + 104) = v8;
    *(a2 + 112) = 0;
    *(a2 + 120) = 0;
    *(a2 + 104) = 0;
    *(this + 8) = *(a2 + 128);
    std::__optional_move_base<ctb::FileTransferDescriptor::FileDescriptor,false>::__optional_move_base[abi:ne200100](this + 144, (a2 + 144));
    *(this + 296) = 0;
    *(this + 320) = 0;
    if (*(a2 + 320) == 1)
    {
      v9 = *(a2 + 296);
      *(this + 39) = *(a2 + 312);
      *(this + 296) = v9;
      *(a2 + 304) = 0;
      *(a2 + 312) = 0;
      *(a2 + 296) = 0;
      *(this + 320) = 1;
    }

    *(this + 328) = 1;
  }
}

uint64_t ctb::FileTransferDescriptor::operator=(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  std::__optional_storage_base<ctb::chatbot::CardStyle,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::chatbot::CardStyle,false>>(a1 + 24, (a2 + 24));
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v5 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 9);
  *(a1 + 56) = v5;
  *(a2 + 79) = 0;
  *(a2 + 56) = 0;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 80) = v6;
  *(a2 + 103) = 0;
  *(a2 + 80) = 0;
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  v7 = *(a2 + 104);
  *(a1 + 120) = *(a2 + 15);
  *(a1 + 104) = v7;
  *(a2 + 127) = 0;
  *(a2 + 104) = 0;
  v8 = *(a2 + 16);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 128) = v8;
  std::__optional_storage_base<ctb::FileTransferDescriptor::FileDescriptor,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::FileTransferDescriptor::FileDescriptor,false>>(a1 + 144, a2 + 9);
  std::__optional_storage_base<ctb::chatbot::CardStyle,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::chatbot::CardStyle,false>>(a1 + 296, (a2 + 296));
  return a1;
}

__n128 std::__optional_storage_base<ctb::FileTransferDescriptor::FileDescriptor,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::FileTransferDescriptor::FileDescriptor,false>>(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 144) == *(a2 + 144))
  {
    if (*(a1 + 144))
    {
      v4 = *a2;
      *(a1 + 16) = *(a2 + 2);
      *a1 = v4;
      std::__optional_storage_base<ctb::chatbot::CardStyle,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::chatbot::CardStyle,false>>(a1 + 24, (a2 + 24));
      if (*(a1 + 79) < 0)
      {
        operator delete(*(a1 + 56));
      }

      v5 = *(a2 + 56);
      *(a1 + 72) = *(a2 + 9);
      *(a1 + 56) = v5;
      *(a2 + 79) = 0;
      *(a2 + 56) = 0;
      if (*(a1 + 103) < 0)
      {
        operator delete(*(a1 + 80));
      }

      v6 = a2[5];
      *(a1 + 96) = *(a2 + 12);
      *(a1 + 80) = v6;
      *(a2 + 103) = 0;
      *(a2 + 80) = 0;
      if (*(a1 + 127) < 0)
      {
        operator delete(*(a1 + 104));
      }

      result = *(a2 + 104);
      *(a1 + 120) = *(a2 + 15);
      *(a1 + 104) = result;
      *(a2 + 127) = 0;
      *(a2 + 104) = 0;
      v8 = *(a2 + 16);
      *(a1 + 136) = *(a2 + 136);
      *(a1 + 128) = v8;
    }
  }

  else if (*(a1 + 144))
  {
    if (*(a1 + 127) < 0)
    {
      operator delete(*(a1 + 104));
    }

    if (*(a1 + 103) < 0)
    {
      operator delete(*(a1 + 80));
    }

    if (*(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
    }

    if (*(a1 + 48) == 1 && *(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    *(a1 + 144) = 0;
  }

  else
  {
    v9 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v9;
    *(a1 + 24) = 0;
    *(a1 + 48) = 0;
    if (*(a2 + 48) == 1)
    {
      v10 = *(a2 + 24);
      *(a1 + 40) = *(a2 + 5);
      *(a1 + 24) = v10;
      *(a2 + 4) = 0;
      *(a2 + 5) = 0;
      *(a2 + 3) = 0;
      *(a1 + 48) = 1;
    }

    v11 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 9);
    *(a1 + 56) = v11;
    *(a2 + 8) = 0;
    *(a2 + 9) = 0;
    *(a2 + 7) = 0;
    v12 = a2[5];
    *(a1 + 96) = *(a2 + 12);
    *(a1 + 80) = v12;
    *(a2 + 11) = 0;
    *(a2 + 12) = 0;
    *(a2 + 10) = 0;
    v13 = *(a2 + 104);
    *(a1 + 120) = *(a2 + 15);
    *(a1 + 104) = v13;
    *(a2 + 14) = 0;
    *(a2 + 15) = 0;
    *(a2 + 13) = 0;
    result = a2[8];
    *(a1 + 128) = result;
    *(a1 + 144) = 1;
  }

  return result;
}

_BYTE *std::__optional_move_base<ctb::FileTransferDescriptor::FileDescriptor,false>::__optional_move_base[abi:ne200100](_BYTE *a1, __int128 *a2)
{
  *a1 = 0;
  a1[144] = 0;
  std::__optional_storage_base<ctb::FileTransferDescriptor::FileDescriptor,false>::__construct_from[abi:ne200100]<std::__optional_move_base<ctb::FileTransferDescriptor::FileDescriptor,false>>(a1, a2);
  return a1;
}

__n128 std::__optional_storage_base<ctb::FileTransferDescriptor::FileDescriptor,false>::__construct_from[abi:ne200100]<std::__optional_move_base<ctb::FileTransferDescriptor::FileDescriptor,false>>(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 144) == 1)
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
    *(a1 + 144) = 1;
  }

  return result;
}
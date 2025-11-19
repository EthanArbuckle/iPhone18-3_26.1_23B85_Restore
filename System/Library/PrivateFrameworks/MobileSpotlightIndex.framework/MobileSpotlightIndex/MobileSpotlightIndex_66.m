uint64_t *std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(int a1)
{
  if (!*(&getLLMTokenAttrDescriptionMap(void)::_llmTokenAttrDescriptionMap + 1))
  {
    goto LABEL_18;
  }

  v1 = vcnt_s8(*(&getLLMTokenAttrDescriptionMap(void)::_llmTokenAttrDescriptionMap + 8));
  v1.i16[0] = vaddlv_u8(v1);
  if (v1.u32[0] > 1uLL)
  {
    v2 = a1;
    if (*(&getLLMTokenAttrDescriptionMap(void)::_llmTokenAttrDescriptionMap + 1) <= a1)
    {
      v2 = a1 % *(&getLLMTokenAttrDescriptionMap(void)::_llmTokenAttrDescriptionMap + 1);
    }
  }

  else
  {
    v2 = (*(&getLLMTokenAttrDescriptionMap(void)::_llmTokenAttrDescriptionMap + 1) - 1) & a1;
  }

  v3 = *(getLLMTokenAttrDescriptionMap(void)::_llmTokenAttrDescriptionMap + 8 * v2);
  if (!v3 || (v4 = *v3) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v5 = v4[1];
    if (v5 == a1)
    {
      break;
    }

    if (v1.u32[0] > 1uLL)
    {
      if (v5 >= *(&getLLMTokenAttrDescriptionMap(void)::_llmTokenAttrDescriptionMap + 1))
      {
        v5 %= *(&getLLMTokenAttrDescriptionMap(void)::_llmTokenAttrDescriptionMap + 1);
      }
    }

    else
    {
      v5 &= *(&getLLMTokenAttrDescriptionMap(void)::_llmTokenAttrDescriptionMap + 1) - 1;
    }

    if (v5 != v2)
    {
      goto LABEL_18;
    }

LABEL_17:
    v4 = *v4;
    if (!v4)
    {
      goto LABEL_18;
    }
  }

  if (*(v4 + 4) != a1)
  {
    goto LABEL_17;
  }

  return v4;
}

void *std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
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

    v9 = v7 >> 2;
    if (v7 >> 2 <= a4)
    {
      v9 = a4;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (!(v10 >> 61))
    {
      operator new();
    }

    std::vector<long long>::__throw_length_error[abi:nn200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v17 = a3 - __src;
    if (v17)
    {
      result = memmove(*result, __src, v17);
    }

    v16 = &v8[v17];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      do
      {
        v15 = *v13;
        v13 += 8;
        *v14 = v15;
        v14 += 8;
      }

      while (v13 != a3);
    }

    v16 = v14;
  }

  v6[1] = v16;
  return result;
}

uint64_t getkQPParseAttributeKeywordKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeKeywordKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeKeywordKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKeywordKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeKeywordKey");
    getkQPParseAttributeKeywordKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKeywordKey()") description:{@"PRLLMParse.mm", 29, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5A048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL40getkQPParseAttributeLocationKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeLocationKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeLocationKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getkQPParseAttributeDateKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeDateKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeDateKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeDateKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeDateKey");
    getkQPParseAttributeDateKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeDateKey()") description:{@"PRLLMParse.mm", 31, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5A1DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL44getkQPParseAttributeFlightActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeFlightActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeFlightActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL43getkQPParseAttributeHotelActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeHotelActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeHotelActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL48getkQPParseAttributeRestaurantActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeRestaurantActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeRestaurantActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL49getkQPParseAttributeAppointmentActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeAppointmentActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeAppointmentActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL43getkQPParseAttributePartyActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributePartyActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributePartyActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL53getkQPParseAttributeTicketTransportActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeTicketTransportActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeTicketTransportActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL47getkQPParseAttributeCarRentalActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeCarRentalActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeCarRentalActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL51getkQPParseAttributeShippingOrderActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeShippingOrderActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeShippingOrderActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getkQPParseAttributeCardActionKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeCardActionKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeCardActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeCardActionKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeCardActionKey");
    getkQPParseAttributeCardActionKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeCardActionKey()") description:{@"PRLLMParse.mm", 42, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5A5A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkQPParseAttributeKindMessageKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeKindMessageKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeKindMessageKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindMessageKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeKindMessageKey");
    getkQPParseAttributeKindMessageKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindMessageKey()") description:{@"PRLLMParse.mm", 43, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5A6E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkQPParseAttributeKindPhotoKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeKindPhotoKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeKindPhotoKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindPhotoKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeKindPhotoKey");
    getkQPParseAttributeKindPhotoKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindPhotoKey()") description:{@"PRLLMParse.mm", 44, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5A828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL47getkQPParseAttributeFavoritedActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeFavoritedActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeFavoritedActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL44getkQPParseAttributeHiddenActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeHiddenActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeHiddenActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL47getkQPParseAttributeForwardedActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeForwardedActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeForwardedActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getkQPParseAttributeSharedActionKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeSharedActionKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeSharedActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeSharedActionKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeSharedActionKey");
    getkQPParseAttributeSharedActionKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeSharedActionKey()") description:{@"PRLLMParse.mm", 48, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5AA5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL38getkQPParseAttributeUnreadKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeUnreadKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeUnreadKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL46getkQPParseAttributeAcceptedActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeAcceptedActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeAcceptedActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL46getkQPParseAttributeDeclinedActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeDeclinedActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeDeclinedActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL43getkQPParseAttributeMaybeActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeMaybeActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeMaybeActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL41getkQPParseAttributeTimeStartKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeTimeStartKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeTimeStartKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL39getkQPParseAttributeTimeEndKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeTimeEndKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeTimeEndKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL43getkQPParseAttributeTimeCreatedKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeTimeCreatedKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeTimeCreatedKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL44getkQPParseAttributeTimeModifiedKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeTimeModifiedKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeTimeModifiedKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL46getkQPParseAttributeTimeLastOpenedKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeTimeLastOpenedKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeTimeLastOpenedKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL41getkQPParseAttributeEventKindKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeEventKindKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeEventKindKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL48getkQPParseAttributeGenericEventKindKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeGenericEventKindKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeGenericEventKindKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getkQPParseAttributeKindDocumentKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeKindDocumentKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeKindDocumentKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindDocumentKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeKindDocumentKey");
    getkQPParseAttributeKindDocumentKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindDocumentKey()") description:{@"PRLLMParse.mm", 59, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5AF10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkQPParseAttributeKindNotesKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeKindNotesKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeKindNotesKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindNotesKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeKindNotesKey");
    getkQPParseAttributeKindNotesKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindNotesKey()") description:{@"PRLLMParse.mm", 60, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5B054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkQPParseAttributeKindReminderKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeKindReminderKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeKindReminderKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindReminderKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeKindReminderKey");
    getkQPParseAttributeKindReminderKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindReminderKey()") description:{@"PRLLMParse.mm", 70, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5B198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkQPParseAttributeKindVideoKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeKindVideoKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeKindVideoKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindVideoKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeKindVideoKey");
    getkQPParseAttributeKindVideoKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindVideoKey()") description:{@"PRLLMParse.mm", 61, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5B2DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkQPParseAttributeKindWebsiteKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeKindWebsiteKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeKindWebsiteKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindWebsiteKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeKindWebsiteKey");
    getkQPParseAttributeKindWebsiteKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindWebsiteKey()") description:{@"PRLLMParse.mm", 62, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5B420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkQPParseAttributeKindKeynoteKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeKindKeynoteKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeKindKeynoteKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindKeynoteKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeKindKeynoteKey");
    getkQPParseAttributeKindKeynoteKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindKeynoteKey()") description:{@"PRLLMParse.mm", 63, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5B564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkQPParseAttributeKindPagesKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeKindPagesKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeKindPagesKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindPagesKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeKindPagesKey");
    getkQPParseAttributeKindPagesKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindPagesKey()") description:{@"PRLLMParse.mm", 64, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5B6A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkQPParseAttributeKindNumbersKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeKindNumbersKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeKindNumbersKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindNumbersKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeKindNumbersKey");
    getkQPParseAttributeKindNumbersKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindNumbersKey()") description:{@"PRLLMParse.mm", 65, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5B7EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkQPParseAttributeKindPhotoAlbumKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeKindPhotoAlbumKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeKindPhotoAlbumKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindPhotoAlbumKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeKindPhotoAlbumKey");
    getkQPParseAttributeKindPhotoAlbumKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindPhotoAlbumKey()") description:{@"PRLLMParse.mm", 66, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5B930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkQPParseAttributeKindMemoryKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeKindMemoryKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeKindMemoryKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindMemoryKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeKindMemoryKey");
    getkQPParseAttributeKindMemoryKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindMemoryKey()") description:{@"PRLLMParse.mm", 67, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5BA74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkQPParseAttributeKindConversationKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeKindConversationKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeKindConversationKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindConversationKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeKindConversationKey");
    getkQPParseAttributeKindConversationKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindConversationKey()") description:{@"PRLLMParse.mm", 68, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5BBB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkQPParseAttributeKindNotesFolderKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeKindNotesFolderKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeKindNotesFolderKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindNotesFolderKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeKindNotesFolderKey");
    getkQPParseAttributeKindNotesFolderKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindNotesFolderKey()") description:{@"PRLLMParse.mm", 69, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5BCFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkQPParseAttributeKindReminderListKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeKindReminderListKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeKindReminderListKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindReminderListKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeKindReminderListKey");
    getkQPParseAttributeKindReminderListKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindReminderListKey()") description:{@"PRLLMParse.mm", 71, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5BE40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL45getkQPParseAttributeArchiveActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeArchiveActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeArchiveActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL48getkQPParseAttributeBookmarkedActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeBookmarkedActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeBookmarkedActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL49getkQPParseAttributeUserCreatedActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeUserCreatedActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeUserCreatedActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL43getkQPParseAttributeDraftActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeDraftActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeDraftActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL50getkQPParseAttributeUserModifiedActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeUserModifiedActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeUserModifiedActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getkQPParseAttributeFlaggedActionKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeFlaggedActionKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeFlaggedActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeFlaggedActionKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeFlaggedActionKey");
    getkQPParseAttributeFlaggedActionKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeFlaggedActionKey()") description:{@"PRLLMParse.mm", 79, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5C114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL42getkQPParseAttributeJunkActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeJunkActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeJunkActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL45getkQPParseAttributePrintedActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributePrintedActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributePrintedActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL42getkQPParseAttributeReadActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeReadActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeReadActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL46getkQPParseAttributeReceivedActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeReceivedActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeReceivedActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL45getkQPParseAttributeRepliedActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeRepliedActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeRepliedActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL42getkQPParseAttributeSentActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeSentActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeSentActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL41getkQPParseAttributeDueActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeDueActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeDueActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL47getkQPParseAttributeCompletedActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeCompletedActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeCompletedActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getkQPParseAttributeGroundedPersonKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeGroundedPersonKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeGroundedPersonKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeGroundedPersonKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeGroundedPersonKey");
    getkQPParseAttributeGroundedPersonKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeGroundedPersonKey()") description:{@"PRLLMParse.mm", 83, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5C4D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkQPParseAttributeTaggedPersonKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeTaggedPersonKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeTaggedPersonKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeTaggedPersonKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeTaggedPersonKey");
    getkQPParseAttributeTaggedPersonKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeTaggedPersonKey()") description:{@"PRLLMParse.mm", 84, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5C61C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkQPParseAttributeSenderKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeSenderKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeSenderKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeSenderKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeSenderKey");
    getkQPParseAttributeSenderKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeSenderKey()") description:{@"PRLLMParse.mm", 85, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5C760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkQPParseAttributeSenderHandleKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeSenderHandleKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeSenderHandleKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeSenderHandleKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeSenderHandleKey");
    getkQPParseAttributeSenderHandleKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeSenderHandleKey()") description:{@"PRLLMParse.mm", 86, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5C8A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkQPParseAttributeRecipientKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeRecipientKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeRecipientKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeRecipientKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeRecipientKey");
    getkQPParseAttributeRecipientKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeRecipientKey()") description:{@"PRLLMParse.mm", 87, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5C9E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkQPParseAttributeRecipientHandleKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeRecipientHandleKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeRecipientHandleKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeRecipientHandleKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeRecipientHandleKey");
    getkQPParseAttributeRecipientHandleKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeRecipientHandleKey()") description:{@"PRLLMParse.mm", 93, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5CB2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL44getkQPParseAttributeAttachedKindKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeAttachedKindKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeAttachedKindKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL42getkQPParseAttributeAttachmentKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeAttachmentKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeAttachmentKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL46getkQPParseAttributeTagColorActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeTagColorActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeTagColorActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL47getkQPParseAttributeFlagColorActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeFlagColorActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeFlagColorActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL37getkQPParseAttributeMediaKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeMediaKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeMediaKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL55getkQPParseAttributeFlightDepartureLocationKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeFlightDepartureLocationKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeFlightDepartureLocationKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL53getkQPParseAttributeFlightArrivalLocationKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeFlightArrivalLocationKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeFlightArrivalLocationKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getkQPParseAttributeKindEmailKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeKindEmailKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeKindEmailKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindEmailKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeKindEmailKey");
    getkQPParseAttributeKindEmailKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindEmailKey()") description:{@"PRLLMParse.mm", 100, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5CEA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkQPParseAttributeKindCalendarEventKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeKindCalendarEventKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeKindCalendarEventKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindCalendarEventKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeKindCalendarEventKey");
    getkQPParseAttributeKindCalendarEventKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindCalendarEventKey()") description:{@"PRLLMParse.mm", 101, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5CFE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkQPParseAttributeKindContactKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeKindContactKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeKindContactKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindContactKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeKindContactKey");
    getkQPParseAttributeKindContactKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindContactKey()") description:{@"PRLLMParse.mm", 102, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5D128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkQPParseAttributeEarliestActionKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeEarliestActionKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeEarliestActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeEarliestActionKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeEarliestActionKey");
    getkQPParseAttributeEarliestActionKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeEarliestActionKey()") description:{@"PRLLMParse.mm", 103, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5D26C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkQPParseAttributeLatestActionKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeLatestActionKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeLatestActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeLatestActionKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeLatestActionKey");
    getkQPParseAttributeLatestActionKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeLatestActionKey()") description:{@"PRLLMParse.mm", 104, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5D3B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL40getkQPParseAttributeKindSongKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindSongKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindSongKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL41getkQPParseAttributeKindAlbumKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindAlbumKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindAlbumKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL42getkQPParseAttributeKindArtistKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindArtistKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindArtistKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL44getkQPParseAttributeKindPlaylistKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindPlaylistKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindPlaylistKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL43getkQPParseAttributeKindPodcastKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindPodcastKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindPodcastKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL40getkQPParseAttributeKindShowKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindShowKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindShowKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL41getkQPParseAttributeKindMovieKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindMovieKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindMovieKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL43getkQPParseAttributeKindArticleKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindArticleKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindArticleKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL40getkQPParseAttributeKindLinkKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindLinkKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindLinkKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL46getkQPParseAttributeKindMusicAlbumKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindMusicAlbumKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindMusicAlbumKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL40getkQPParseAttributeKindNewsKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindNewsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindNewsKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL39getkQPParseAttributeKindMapKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindMapKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindMapKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL48getkQPParseAttributeKindRadioStationKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindRadioStationKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindRadioStationKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL48getkQPParseAttributeTicketShowActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeTicketShowActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeTicketShowActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getkQPParseAttributeKindPhoneCallKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeKindPhoneCallKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeKindPhoneCallKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindPhoneCallKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeKindPhoneCallKey");
    getkQPParseAttributeKindPhoneCallKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindPhoneCallKey()") description:{@"PRLLMParse.mm", 120, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5D954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkQPParseAttributeKindVoiceMemoKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeKindVoiceMemoKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeKindVoiceMemoKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindVoiceMemoKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeKindVoiceMemoKey");
    getkQPParseAttributeKindVoiceMemoKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindVoiceMemoKey()") description:{@"PRLLMParse.mm", 121, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5DA98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkQPParseAttributeKindVoiceMailKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeKindVoiceMailKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeKindVoiceMailKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindVoiceMailKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeKindVoiceMailKey");
    getkQPParseAttributeKindVoiceMailKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindVoiceMailKey()") description:{@"PRLLMParse.mm", 122, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5DBDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkQPParseAttributeKindWalletPassKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeKindWalletPassKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeKindWalletPassKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindWalletPassKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeKindWalletPassKey");
    getkQPParseAttributeKindWalletPassKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindWalletPassKey()") description:{@"PRLLMParse.mm", 123, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5DD20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkQPParseAttributeKindFreeformBoardKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeKindFreeformBoardKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeKindFreeformBoardKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindFreeformBoardKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeKindFreeformBoardKey");
    getkQPParseAttributeKindFreeformBoardKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindFreeformBoardKey()") description:{@"PRLLMParse.mm", 124, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5DE64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkQPParseAttributeKindJournalKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeKindJournalKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeKindJournalKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindJournalKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeKindJournalKey");
    getkQPParseAttributeKindJournalKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindJournalKey()") description:{@"PRLLMParse.mm", 125, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5DFA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL50getkQPParseAttributeSourceTypeDocumentKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeSourceTypeDocumentKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeSourceTypeDocumentKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL49getkQPParseAttributeSourceTypeMessageKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeSourceTypeMessageKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeSourceTypeMessageKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL46getkQPParseAttributeSourceTypeNoteKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeSourceTypeNoteKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeSourceTypeNoteKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL47getkQPParseAttributeSourceTypePhotoKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeSourceTypePhotoKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeSourceTypePhotoKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL50getkQPParseAttributeSourceTypeReminderKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeSourceTypeReminderKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeSourceTypeReminderKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL47getkQPParseAttributeSourceTypeVideoKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeSourceTypeVideoKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeSourceTypeVideoKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL49getkQPParseAttributeSourceTypeWebsiteKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeSourceTypeWebsiteKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeSourceTypeWebsiteKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL47getkQPParseAttributeSourceTypeEmailKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeSourceTypeEmailKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeSourceTypeEmailKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL49getkQPParseAttributeSourceTypeKeynoteKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeSourceTypeKeynoteKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeSourceTypeKeynoteKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL47getkQPParseAttributeSourceTypePagesKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeSourceTypePagesKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeSourceTypePagesKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL49getkQPParseAttributeSourceTypeNumbersKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeSourceTypeNumbersKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeSourceTypeNumbersKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL55getkQPParseAttributeSourceTypeCalendarEventKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeSourceTypeCalendarEventKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeSourceTypeCalendarEventKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL52getkQPParseAttributeSourceTypePhotoAlbumKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeSourceTypePhotoAlbumKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeSourceTypePhotoAlbumKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL48getkQPParseAttributeSourceTypeMemoryKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeSourceTypeMemoryKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeSourceTypeMemoryKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL54getkQPParseAttributeSourceTypeConversationKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeSourceTypeConversationKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeSourceTypeConversationKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL52getkQPParseAttributeSourceTypeNoteFolderKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeSourceTypeNoteFolderKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeSourceTypeNoteFolderKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL54getkQPParseAttributeSourceTypeReminderListKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeSourceTypeReminderListKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeSourceTypeReminderListKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL49getkQPParseAttributeSourceTypeContactKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeSourceTypeContactKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeSourceTypeContactKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL51getkQPParseAttributeSourceTypePhoneCallKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeSourceTypePhoneCallKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeSourceTypePhoneCallKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL52getkQPParseAttributeSourceTypeVoiceMemosKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeSourceTypeVoiceMemosKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeSourceTypeVoiceMemosKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL51getkQPParseAttributeSourceTypeVoiceMailKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeSourceTypeVoiceMailKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeSourceTypeVoiceMailKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL49getkQPParseAttributeSourceTypeJournalKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeSourceTypeJournalKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeSourceTypeJournalKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL52getkQPParseAttributeSourceTypeWalletPassKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeSourceTypeWalletPassKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeSourceTypeWalletPassKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL55getkQPParseAttributeSourceTypeFreeformBoardKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeSourceTypeFreeformBoardKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeSourceTypeFreeformBoardKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL52getkQPParseAttributeContainsTypeCalendarKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeContainsTypeCalendarKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeContainsTypeCalendarKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL51getkQPParseAttributeContainsTypeContactKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeContainsTypeContactKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeContainsTypeContactKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL56getkQPParseAttributeContainsTypeConversationKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeContainsTypeConversationKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeContainsTypeConversationKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL52getkQPParseAttributeContainsTypeDocumentKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeContainsTypeDocumentKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeContainsTypeDocumentKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL52getkQPParseAttributeContainsTypeFreeformKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeContainsTypeFreeformKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeContainsTypeFreeformKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL51getkQPParseAttributeContainsTypeJournalKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeContainsTypeJournalKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeContainsTypeJournalKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL51getkQPParseAttributeContainsTypeKeynoteKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeContainsTypeKeynoteKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeContainsTypeKeynoteKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL49getkQPParseAttributeContainsTypeMediaKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeContainsTypeMediaKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeContainsTypeMediaKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL50getkQPParseAttributeContainsTypeMemoryKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeContainsTypeMemoryKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeContainsTypeMemoryKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL48getkQPParseAttributeContainsTypeNoteKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeContainsTypeNoteKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeContainsTypeNoteKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL54getkQPParseAttributeContainsTypeNoteFolderKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeContainsTypeNoteFolderKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeContainsTypeNoteFolderKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL51getkQPParseAttributeContainsTypeNumbersKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeContainsTypeNumbersKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeContainsTypeNumbersKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL49getkQPParseAttributeContainsTypePagesKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeContainsTypePagesKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeContainsTypePagesKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL52getkQPParseAttributeContainsTypePanoramaKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeContainsTypePanoramaKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeContainsTypePanoramaKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL49getkQPParseAttributeContainsTypePhotoKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeContainsTypePhotoKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeContainsTypePhotoKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL54getkQPParseAttributeContainsTypePhotoAlbumKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeContainsTypePhotoAlbumKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeContainsTypePhotoAlbumKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL54getkQPParseAttributeContainsTypeScreenshotKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeContainsTypeScreenshotKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeContainsTypeScreenshotKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL50getkQPParseAttributeContainsTypeSelfieKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeContainsTypeSelfieKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeContainsTypeSelfieKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL49getkQPParseAttributeContainsTypeSlomoKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeContainsTypeSlomoKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeContainsTypeSlomoKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL56getkQPParseAttributeContainsTypeSpatialVideoKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeContainsTypeSpatialVideoKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeContainsTypeSpatialVideoKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL49getkQPParseAttributeContainsTypeVideoKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeContainsTypeVideoKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeContainsTypeVideoKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL53getkQPParseAttributeContainsTypeVoiceMemoKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeContainsTypeVoiceMemoKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeContainsTypeVoiceMemoKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL51getkQPParseAttributeContainsTypeWebsiteKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeContainsTypeWebsiteKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeContainsTypeWebsiteKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL52getkQPParseAttributeContainsTypeReminderKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeContainsTypeReminderKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeContainsTypeReminderKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL53getkQPParseAttributeContainsTypeVoicemailKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeContainsTypeVoicemailKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeContainsTypeVoicemailKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL50getkQPParseAttributeContainsTypeWalletKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeContainsTypeWalletKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeContainsTypeWalletKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL44getkQPParseAttributeKindPanoramaKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindPanoramaKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindPanoramaKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL46getkQPParseAttributeKindScreenshotKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindScreenshotKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindScreenshotKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL42getkQPParseAttributeKindSelfieKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindSelfieKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindSelfieKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL41getkQPParseAttributeKindSlomoKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindSlomoKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindSlomoKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL48getkQPParseAttributeKindSpatialVideoKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindSpatialVideoKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindSpatialVideoKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL45getkQPParseAttributeKindLivePhotoKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindLivePhotoKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindLivePhotoKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL44getkQPParseAttributeKindPortraitKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindPortraitKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindPortraitKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL45getkQPParseAttributeKindTimeLapseKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindTimeLapseKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindTimeLapseKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL45getkQPParseAttributeKindCinematicKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindCinematicKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindCinematicKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getkQPParseAttributeKindDocumentFolderKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeKindDocumentFolderKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeKindDocumentFolderKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindDocumentFolderKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeKindDocumentFolderKey");
    getkQPParseAttributeKindDocumentFolderKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindDocumentFolderKey()") description:{@"PRLLMParse.mm", 186, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5F35C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL56getkQPParseAttributeSourceTypeDocumentFolderKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeSourceTypeDocumentFolderKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeSourceTypeDocumentFolderKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL58getkQPParseAttributeContainsTypeDocumentFolderKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeContainsTypeDocumentFolderKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeContainsTypeDocumentFolderKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getkQPParseAttributeKindGenericFolderKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeKindGenericFolderKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeKindGenericFolderKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindGenericFolderKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeKindGenericFolderKey");
    getkQPParseAttributeKindGenericFolderKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindGenericFolderKey()") description:{@"PRLLMParse.mm", 189, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5F540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL55getkQPParseAttributeSourceTypeGenericFolderKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeSourceTypeGenericFolderKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeSourceTypeGenericFolderKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL57getkQPParseAttributeContainsTypeGenericFolderKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeContainsTypeGenericFolderKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeContainsTypeGenericFolderKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getkQPParseAttributeKindTabKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeKindTabKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeKindTabKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindTabKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeKindTabKey");
    getkQPParseAttributeKindTabKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindTabKey()") description:{@"PRLLMParse.mm", 192, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5F724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkQPParseAttributeKindGroupTabKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeKindGroupTabKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeKindGroupTabKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindGroupTabKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeKindGroupTabKey");
    getkQPParseAttributeKindGroupTabKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindGroupTabKey()") description:{@"PRLLMParse.mm", 193, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5F868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkQPParseAttributeKindAlarmKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeKindAlarmKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeKindAlarmKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindAlarmKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeKindAlarmKey");
    getkQPParseAttributeKindAlarmKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindAlarmKey()") description:{@"PRLLMParse.mm", 196, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5F9AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkQPParseAttributeKindTimerKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeKindTimerKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeKindTimerKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindTimerKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeKindTimerKey");
    getkQPParseAttributeKindTimerKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindTimerKey()") description:{@"PRLLMParse.mm", 197, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5FAF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL40getkQPParseAttributeKindBookKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindBookKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindBookKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL41getkQPParseAttributeKindTimerKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindTimerKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindTimerKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL41getkQPParseAttributeKindAlarmKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindAlarmKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindAlarmKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL44getkQPParseAttributeKindGroupTabKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindGroupTabKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindGroupTabKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL39getkQPParseAttributeKindTabKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindTabKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindTabKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL49getkQPParseAttributeKindGenericFolderKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindGenericFolderKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindGenericFolderKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL50getkQPParseAttributeKindDocumentFolderKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindDocumentFolderKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindDocumentFolderKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL43getkQPParseAttributeKindJournalKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindJournalKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindJournalKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL49getkQPParseAttributeKindFreeformBoardKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindFreeformBoardKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindFreeformBoardKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL46getkQPParseAttributeKindWalletPassKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindWalletPassKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindWalletPassKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL45getkQPParseAttributeKindVoiceMailKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindVoiceMailKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindVoiceMailKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL45getkQPParseAttributeKindVoiceMemoKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindVoiceMemoKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindVoiceMemoKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL45getkQPParseAttributeKindPhoneCallKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindPhoneCallKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindPhoneCallKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL44getkQPParseAttributeLatestActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeLatestActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeLatestActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL46getkQPParseAttributeEarliestActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeEarliestActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeEarliestActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL43getkQPParseAttributeKindContactKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindContactKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindContactKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL49getkQPParseAttributeKindCalendarEventKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindCalendarEventKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindCalendarEventKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL41getkQPParseAttributeKindEmailKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindEmailKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindEmailKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL47getkQPParseAttributeRecipientHandleKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeRecipientHandleKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeRecipientHandleKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL41getkQPParseAttributeRecipientKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeRecipientKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeRecipientKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL44getkQPParseAttributeSenderHandleKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeSenderHandleKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeSenderHandleKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL38getkQPParseAttributeSenderKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeSenderKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeSenderKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL44getkQPParseAttributeTaggedPersonKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeTaggedPersonKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeTaggedPersonKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL46getkQPParseAttributeGroundedPersonKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeGroundedPersonKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeGroundedPersonKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL45getkQPParseAttributeFlaggedActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeFlaggedActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeFlaggedActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL48getkQPParseAttributeKindReminderListKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindReminderListKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindReminderListKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL47getkQPParseAttributeKindNotesFolderKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindNotesFolderKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindNotesFolderKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL48getkQPParseAttributeKindConversationKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindConversationKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindConversationKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL42getkQPParseAttributeKindMemoryKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindMemoryKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindMemoryKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL46getkQPParseAttributeKindPhotoAlbumKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindPhotoAlbumKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindPhotoAlbumKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL43getkQPParseAttributeKindNumbersKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindNumbersKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindNumbersKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL41getkQPParseAttributeKindPagesKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindPagesKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindPagesKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL43getkQPParseAttributeKindKeynoteKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindKeynoteKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindKeynoteKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL43getkQPParseAttributeKindWebsiteKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindWebsiteKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindWebsiteKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL41getkQPParseAttributeKindVideoKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindVideoKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindVideoKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL44getkQPParseAttributeKindReminderKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindReminderKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindReminderKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL41getkQPParseAttributeKindNotesKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindNotesKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindNotesKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL44getkQPParseAttributeKindDocumentKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindDocumentKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindDocumentKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL44getkQPParseAttributeSharedActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeSharedActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeSharedActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL41getkQPParseAttributeKindPhotoKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindPhotoKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindPhotoKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL43getkQPParseAttributeKindMessageKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindMessageKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindMessageKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL42getkQPParseAttributeCardActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeCardActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeCardActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL36getkQPParseAttributeDateKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeDateKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeDateKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL39getkQPParseAttributeKeywordKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKeywordKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKeywordKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::vector<__CFString const*>>,void *>>>::operator()[abi:nn200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[3];
    if (v3)
    {
      __p[4] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *fetchLLMTokenDescription(int *a1, const __CFDictionary *a2, NSAttributedString *a3, int a4)
{
  TokenIDsFromTokenInfo = getTokenIDsFromTokenInfo(a2);
  if (![TokenIDsFromTokenInfo count])
  {
    return 0;
  }

  v9 = 0;
  while (1)
  {
    v10 = [objc_msgSend(TokenIDsFromTokenInfo objectAtIndexedSubscript:{v9), "intValue"}];
    v11 = v10;
    if (!v9)
    {
      *a1 = v10;
    }

    TokenRangeFromTokenInfo = getTokenRangeFromTokenInfo(a2);
    v14 = v13;
    v17.location = TokenRangeFromTokenInfo;
    v17.length = v14;
    LLMTokenDescription = getLLMTokenDescription(v11, v17, a3, a4);
    if ([LLMTokenDescription length])
    {
      break;
    }

    if (++v9 >= [TokenIDsFromTokenInfo count])
    {
      return 0;
    }
  }

  return LLMTokenDescription;
}

CFMutableDictionaryRef __initBestLanguageDict_block_invoke()
{
  v1 = *byte_1F4281668;
  result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, &v1, 0);
  sBestLanguageDictionary = result;
  return result;
}

uint64_t fd_resetDir(int a1)
{
  result = MEMORY[0x1C6921200]();
  if ((a1 & 0x80000000) == 0)
  {

    return close(a1);
  }

  return result;
}

uint64_t sync_invalidate_fd(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a2 & ~*MEMORY[0x1E69E9AB8];
    v5 = a2 - v4;
    v6 = mmap(0, a2 - v4 + a3, 1, 1025, result, v4);
    sync_invalidate_mapping(v6, v5 + a3);

    return munmap(v6, v5 + a3);
  }

  return result;
}

uint64_t sync_invalidate_mapping(char *a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1 == -1)
  {
    *__error() = 22;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v9 = *__error();
      v12 = 134218240;
      v13 = -1;
      v14 = 1024;
      v15 = v9;
      v8 = MEMORY[0x1E69E9C10];
LABEL_16:
      _os_log_impl(&dword_1C278D000, v8, OS_LOG_TYPE_INFO, "fd_msync(%p) err %d", &v12, 0x12u);
    }
  }

  else if (a2 >= 1)
  {
    v3 = &a1[a2];
    v4 = 0x20000;
    v5 = a1;
LABEL_4:
    if (&v5[v4] > v3)
    {
      v4 = v3 - v5;
    }

    do
    {
      fd_system_status_stall_if_busy();
      v6 = msync(v5, v4, 16);
      v7 = *__error();
      madvise(v5, v4, 4);
      if (v6 != -1)
      {
        v5 += v4;
        if (v5 < v3)
        {
          goto LABEL_4;
        }

        goto LABEL_18;
      }
    }

    while (g_prot_error_callback && ((*(g_prot_error_callback + 16))() & 1) != 0);
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      goto LABEL_17;
    }

    v12 = 134218240;
    v13 = a1;
    v14 = 1024;
    v15 = v7;
    v8 = MEMORY[0x1E69E9C10];
    goto LABEL_16;
  }

LABEL_17:
  v6 = 0xFFFFFFFFLL;
LABEL_18:
  v10 = *MEMORY[0x1E69E9840];
  return v6;
}

void fd_system_status_stall_if_busy()
{
  if (_gSystemStatusBool == 1)
  {
    pthread_mutex_lock(&_gSystemStatusLock);
    if (_gSystemStatusBool == 1)
    {
      do
      {
        pthread_cond_wait(&_gSystemStatusCond, &_gSystemStatusLock);
      }

      while ((_gSystemStatusBool & 1) != 0);
    }

    pthread_mutex_unlock(&_gSystemStatusLock);
  }
}

uint64_t ci_preallocate(int a1, uint64_t a2)
{
  if (gDisablePreallocate == 1)
  {
    *__error() = 45;
    return 0xFFFFFFFFLL;
  }

  v3 = a2;
  v7[0] = 0x300000002;
  v7[1] = 0;
  v7[2] = a2;
  v7[3] = 0;
  result = fcntl(a1, 42, v7);
  if (result == -1)
  {
    if (*__error() == 45)
    {
      return 0xFFFFFFFFLL;
    }

    while (v3 >= 419430401)
    {
      v5 = xmmword_1C2C00020;
      v6 = unk_1C2C00030;
      result = fcntl(a1, 42, &v5);
      v3 -= 419430400;
      if (result == -1)
      {
        return result;
      }
    }

    v5 = 0x300000004uLL;
    v6 = v3;
    return fcntl(a1, 42, &v5);
  }

  return result;
}

uint64_t prot_write(uint64_t __fd, char *__buf, size_t __nbyte)
{
  v6 = 0;
  do
  {
    while (1)
    {
      v7 = write(__fd, __buf, __nbyte);
      if ((v7 & 0x8000000000000000) != 0)
      {
        break;
      }

      v6 += v7;
      v10 = __nbyte > v7;
      __nbyte -= v7;
      if (!v10)
      {
        return v6;
      }

      __buf += v7;
    }

    v8 = g_prot_error_callback;
    if (!g_prot_error_callback)
    {
      break;
    }

    v9 = __error();
  }

  while (((*(v8 + 16))(v8, __fd, *v9, 6) & 1) != 0);
  return -1;
}

uint64_t _fd_ftruncate(uint64_t a1, off_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if ((gDisablePreallocate & 1) != 0 || (v4 = lseek(a1, 0, 2), v5 = a2 - v4, a2 <= v4) || v5 <= *MEMORY[0x1E69E9AC8] || (ci_preallocate(a1, v5), prot_pwrite(a1, "", 1uLL, a2 - 1) != 1))
  {
    while (1)
    {
      result = ftruncate(a1, a2);
      if (result != -1)
      {
        break;
      }

      if (*__error() == 22)
      {
        result = ftruncate(a1, a2);
        if (result != -1)
        {
          break;
        }
      }

      v7 = *__error();
      v8 = g_prot_error_callback;
      if (g_prot_error_callback)
      {
        v9 = __error();
        if ((*(v8 + 16))(v8, a1, *v9, 7))
        {
          continue;
        }
      }

      bzero(v22, 0x400uLL);
      v10 = fcntl(a1, 50, v22);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v12 = "";
        if (v22[0])
        {
          v13 = v10 < 0;
        }

        else
        {
          v13 = 1;
        }

        *buf = 67109890;
        if (!v13)
        {
          v12 = v22;
        }

        v15 = a1;
        v16 = 2080;
        v17 = v12;
        v18 = 2048;
        v19 = a2;
        v20 = 1024;
        v21 = v7;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "ftruncate(%d %s, %lld) error:%d", buf, 0x22u);
      }

      *__error() = v7;
      result = 0xFFFFFFFFLL;
      break;
    }
  }

  else
  {
    result = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _fd_ftruncate_guarded(uint64_t a1, uint64_t a2, off_t a3)
{
  v25 = *MEMORY[0x1E69E9840];
  if ((gDisablePreallocate & 1) != 0 || (v6 = lseek(a1, 0, 2), v7 = a3 - v6, a3 <= v6) || v7 <= *MEMORY[0x1E69E9AC8] || (ci_preallocate(a1, v7), prot_pwrite_guarded(a1, a2, "", 1uLL, a3 - 1) != 1))
  {
    while (1)
    {
      result = ftruncate(a1, a3);
      if (result != -1)
      {
        break;
      }

      if (*__error() == 22)
      {
        result = ftruncate(a1, a3);
        if (result != -1)
        {
          break;
        }
      }

      v9 = *__error();
      v10 = g_prot_error_callback;
      if (g_prot_error_callback)
      {
        v11 = __error();
        if ((*(v10 + 16))(v10, a1, *v11, 7))
        {
          continue;
        }
      }

      bzero(v24, 0x400uLL);
      v12 = fcntl(a1, 50, v24);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v14 = "";
        if (v24[0])
        {
          v15 = v12 < 0;
        }

        else
        {
          v15 = 1;
        }

        *buf = 67109890;
        if (!v15)
        {
          v14 = v24;
        }

        v17 = a1;
        v18 = 2080;
        v19 = v14;
        v20 = 2048;
        v21 = a3;
        v22 = 1024;
        v23 = v9;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "ftruncate(%d %s, %lld) error:%d", buf, 0x22u);
      }

      *__error() = v9;
      result = 0xFFFFFFFFLL;
      break;
    }
  }

  else
  {
    result = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

size_t stringForPRBundleIDType(size_t result, uint64_t a2)
{
  if (!result)
  {
    *(a2 + 96) = 0;
    *(a2 + 32) = xmmword_1C2C00926;
    *(a2 + 48) = unk_1C2C00936;
    *(a2 + 64) = xmmword_1C2C00946;
    *(a2 + 80) = unk_1C2C00956;
    *a2 = *"None";
    *(a2 + 16) = unk_1C2C00916;
    v6 = (a2 + 99);
    goto LABEL_14;
  }

  v3 = result;
  v4 = 100;
  v5 = 12;
  v6 = a2;
  v7 = &off_1E81973F0;
  do
  {
    if ((*(v7 - 1) & v3) != 0)
    {
      result = strlen(*v7);
      if (result + 1 < v4)
      {
        v8 = result;
        result = memcpy(v6, *v7, result);
        v6 += v8;
        v4 -= v8;
        if (v4 >= 2)
        {
          *v6++ = 44;
          --v4;
        }
      }
    }

    v7 += 2;
    --v5;
  }

  while (v5);
  if (v6 != a2 && *(v6 - 1) == 44)
  {
    --v6;
LABEL_14:
    *v6 = 0;
    return result;
  }

  if (v4)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t __isTextSemanticSearchEnabled_block_invoke()
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    result = _os_feature_enabled_impl();
  }

  isTextSemanticSearchEnabled_ffStatus = result;
  return result;
}

uint64_t __isSearchToolDebugModeEnabled_block_invoke()
{
  result = _os_feature_enabled_impl();
  isSearchToolDebugModeEnabled_ffStatus = result;
  return result;
}

uint64_t __isWalletDocumentUnderstandingEnabled_block_invoke()
{
  result = _os_feature_enabled_impl();
  isWalletDocumentUnderstandingEnabled_ffStatus = result;
  return result;
}

BOOL isPhotosClient(CFStringRef theString)
{
  if (!theString)
  {
    return 0;
  }

  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, theString);
  if (!MutableCopy)
  {
    return 0;
  }

  v2 = MutableCopy;
  CFStringLowercase(MutableCopy, 0);
  v3 = CFStringHasPrefix(v2, @"com.apple.photo") || CFStringHasPrefix(v2, @"com.apple.mobileslideshow") || CFStringCompare(v2, @"com.apple.plphotosctl", 0) == kCFCompareEqualTo;
  CFRelease(v2);
  return v3;
}

uint64_t __isQUEnabled_block_invoke()
{
  result = _os_feature_enabled_impl();
  isQUEnabled_ffStatus = result;
  return result;
}

uint64_t __isLLMEnabled_block_invoke()
{
  result = _os_feature_enabled_impl();
  isLLMEnabled_ffStatus = result;
  return result;
}

NSString *redactedString(NSString *a1)
{
  v2 = [(NSString *)a1 length];
  if (v2 < 5)
  {
    return a1;
  }

  v4 = v2;
  v5 = [(NSString *)a1 substringToIndex:2];
  v6 = [(NSString *)a1 substringFromIndex:v4 - 1];
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@...%@<%lu chars>", v5, v6, v4];
}

_DWORD *SStackPushData(uint64_t *a1, size_t a2, const void *a3)
{
  v6 = (a2 + 3) & 0xFFFFFFFC;
  v7 = SQueueOpenPushData(*a1, v6 + 8);
  *v7 = a2 + 4;
  v8 = v7 + 1;
  if (a3)
  {
    memcpy(v7 + 1, a3, a2);
  }

  *(v8 + v6) = 0;
  v9 = *a1;
  v9[6] = *(*a1 + 48) + v6 + 4;
  *(v9[4] + 24) += v6 + 4;
  v9[1] += v6 + 4;
  return v8;
}

unint64_t SStackNextData(uint64_t a1, uint64_t a2)
{
  v2 = a2 + (((*(a2 - 4) - 4) + 3) & 0x1FFFFFFFCLL);
  if (*v2)
  {
    return v2 + 4;
  }

  v4 = *(*a1 + 24);
  if (v4)
  {
    v5 = *(*a1 + 24);
    while (1)
    {
      v6 = v5 + 32;
      if (v5 + 32 <= v2 && v6 + *(v5 + 16) >= v2)
      {
        break;
      }

      v5 = *(v5 + 8);
      if (!v5)
      {
        goto LABEL_8;
      }
    }

    if (v5 == v4)
    {
      v6 = *(*a1 + 40);
    }

    if (v6 + *(v5 + 24) <= v2)
    {
      v2 = *(v5 + 8);
      if (v2)
      {
        v7 = *(v2 + 24);
        v2 += 32;
        if (!v7)
        {
          v2 = 0;
        }
      }
    }
  }

  else
  {
LABEL_8:
    v2 = 0;
  }

  if (v2)
  {
    return v2 + 4;
  }

  else
  {
    return 0;
  }
}

void registerForCloning(int a1, int a2)
{
  valuePtr = a1;
  if (registerForCloning_once[0] != -1)
  {
    dispatch_once(registerForCloning_once, &__block_literal_global_11242);
  }

  v3 = *MEMORY[0x1E695E480];
  v4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  pthread_mutex_lock(&registeredFdsLock);
  if (a2)
  {
    Mutable = registeredCloneFds;
    if (!registeredCloneFds)
    {
      Mutable = CFSetCreateMutable(v3, 0, 0);
      registeredCloneFds = Mutable;
    }

    CFSetAddValue(Mutable, v4);
  }

  pthread_mutex_unlock(&registeredFdsLock);
  CFRelease(v4);
}

void unregisterForCloning(int a1)
{
  valuePtr = a1;
  v1 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  pthread_mutex_lock(&registeredFdsLock);
  if (registeredCloneFds && CFSetContainsValue(registeredCloneFds, v1))
  {
    CFSetRemoveValue(registeredCloneFds, v1);
  }

  pthread_mutex_unlock(&registeredFdsLock);
  CFRelease(v1);
}

BOOL isRegisteredForCloning(int a1)
{
  valuePtr = a1;
  v1 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  pthread_mutex_lock(&registeredFdsLock);
  if (registeredCloneFds)
  {
    v2 = CFSetContainsValue(registeredCloneFds, v1) != 0;
  }

  else
  {
    v2 = 0;
  }

  pthread_mutex_unlock(&registeredFdsLock);
  CFRelease(v1);
  return v2;
}

uint64_t _copyFile(int a1, const char *a2, int a3, const char *a4, _DWORD *a5, off_t a6)
{
  v77 = *MEMORY[0x1E69E9840];
  memset(&v70, 0, sizeof(v70));
  v68 = 0;
  v69 = 0;
  if (*a5)
  {
    v6 = *__error();
    v7 = _SILogForLogForCategory(10);
    v8 = 2 * (dword_1EBF46AF4 < 4);
    if (os_log_type_enabled(v7, v8))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, v7, v8, "canceled", buf, 2u);
    }

    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0xFFFFFFFFLL;
    v13 = -1;
    goto LABEL_36;
  }

  v11 = fd_create_protected(a1, a2, 0, 0);
  v19 = _fd_acquire_fd(v11, &v69);
  v13 = v19;
  if (!v11 || v19 == -1)
  {
    v6 = *__error();
    v33 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
LABEL_31:
      v9 = 0;
      v10 = 0;
      v12 = 0xFFFFFFFFLL;
LABEL_36:
      v45 = 0;
      *__error() = v6;
      goto LABEL_37;
    }

    v34 = *__error();
    *buf = 136315906;
    v72 = "_copyFile";
    v73 = 1024;
    v74 = 126;
    v75 = 1024;
    *v76 = v34;
    *&v76[4] = 2080;
    *&v76[6] = a2;
    v35 = "%s:%d: error (%d) opening %s\n";
    v36 = v33;
    v37 = 34;
LABEL_58:
    _os_log_error_impl(&dword_1C278D000, v36, OS_LOG_TYPE_ERROR, v35, buf, v37);
    goto LABEL_31;
  }

  if (fstat(v19, &v70) == -1)
  {
    v6 = *__error();
    v38 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_31;
    }

    v52 = *__error();
    *buf = 136315650;
    v72 = "_copyFile";
    v73 = 1024;
    v74 = 130;
    v75 = 1024;
    *v76 = v52;
    v35 = "%s:%d: fstat error (%d)\n";
    v36 = v38;
    v37 = 24;
    goto LABEL_58;
  }

  v10 = fd_create_protected(a3, a4, 536872450, 0);
  v20 = _fd_acquire_fd(v10, &v68);
  v12 = v20;
  if (!v10 || v20 == -1)
  {
    v6 = *__error();
    v39 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
LABEL_35:
      v9 = 0;
      goto LABEL_36;
    }

    v40 = *__error();
    *buf = 136315906;
    v72 = "_copyFile";
    v73 = 1024;
    v74 = 137;
    v75 = 1024;
    *v76 = v40;
    *&v76[4] = 2080;
    *&v76[6] = a4;
    v41 = "%s:%d: error (%d) opening %s\n";
    v42 = v39;
    v43 = 34;
LABEL_60:
    _os_log_error_impl(&dword_1C278D000, v42, OS_LOG_TYPE_ERROR, v41, buf, v43);
    goto LABEL_35;
  }

  if (_fd_ftruncate_guarded(v20, &v68, v70.st_size) == -1)
  {
    v6 = *__error();
    v44 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    v53 = *__error();
    *buf = 136315650;
    v72 = "_copyFile";
    v73 = 1024;
    v74 = 146;
    v75 = 1024;
    *v76 = v53;
    v41 = "%s:%d: ftruncate error (%d)\n";
    v42 = v44;
    v43 = 24;
    goto LABEL_60;
  }

  fcntl(v13, 48, 1);
  __fd = v13;
  fcntl(v13, 76, 1);
  fcntl(v12, 48, 1);
  fcntl(v12, 76, 1);
  __buf = malloc_type_malloc(0x10000uLL, 0x8C758051uLL);
  st_size = v70.st_size;
  if (v70.st_size <= a6)
  {
    v22 = 0;
    goto LABEL_49;
  }

  v22 = 0;
  v23 = a6;
  v63 = v10;
  v64 = v11;
  v65 = a6;
  while (2)
  {
    if (*a5)
    {
      v49 = *__error();
      v54 = _SILogForLogForCategory(10);
      v55 = 2 * (dword_1EBF46AF4 < 4);
      if (os_log_type_enabled(v54, v55))
      {
        *buf = 0;
LABEL_67:
        _os_log_impl(&dword_1C278D000, v54, v55, "canceled", buf, 2u);
      }

LABEL_48:
      a6 = v65;
      *__error() = v49;
      st_size = v70.st_size;
      break;
    }

    v24 = prot_pread(__fd, __buf, 0x10000uLL, v23);
    if (v24 == -1)
    {
      v49 = *__error();
      v56 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        v57 = *__error();
        *buf = 136315650;
        v72 = "_copyFile";
        v73 = 1024;
        v74 = 169;
        v75 = 1024;
        *v76 = v57;
        _os_log_error_impl(&dword_1C278D000, v56, OS_LOG_TYPE_ERROR, "%s:%d: read error (%d)\n", buf, 0x18u);
      }

      goto LABEL_48;
    }

    if (*a5)
    {
      v49 = *__error();
      v54 = _SILogForLogForCategory(10);
      v55 = 2 * (dword_1EBF46AF4 < 4);
      if (os_log_type_enabled(v54, v55))
      {
        *buf = 0;
        goto LABEL_67;
      }

      goto LABEL_48;
    }

    v25 = v24;
    v26 = 1;
    v27 = __buf;
    while (1)
    {
      v28 = prot_pwrite_guarded(v12, &v68, v27, v25, v23);
      if (v28 == -1)
      {
        v49 = *__error();
        v50 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          v58 = *__error();
          *buf = 136315650;
          v72 = "_copyFile";
          v73 = 1024;
          v74 = 185;
          v75 = 1024;
          *v76 = v58;
          _os_log_error_impl(&dword_1C278D000, v50, OS_LOG_TYPE_ERROR, "%s:%d: write error (%d)\n", buf, 0x18u);
        }

        v10 = v63;
        v11 = v64;
        goto LABEL_48;
      }

      v29 = v28;
      v30 = v25 - v28;
      if (v25 < v28)
      {
        v59 = __si_assert_copy_extra_332();
        v60 = v59;
        v61 = "";
        if (v59)
        {
          v61 = v59;
        }

        __message_assert(v59, "copyFile.c", 188, "wLen <= actual", v61);
        free(v60);
        if (__valid_fs(-1))
        {
          v62 = 2989;
        }

        else
        {
          v62 = 3072;
        }

        *v62 = -559038737;
        abort();
      }

      v22 += v28;
      if (v25 <= v28)
      {
        break;
      }

      if ((v28 != 0) | v26 & 1)
      {
        v26 &= v28 != 0;
      }

      else
      {
        v31 = *__error();
        v32 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v72 = "_copyFile";
          v73 = 1024;
          v74 = 194;
          _os_log_error_impl(&dword_1C278D000, v32, OS_LOG_TYPE_ERROR, "%s:%d: write failed", buf, 0x12u);
        }

        v26 = 0;
        *__error() = v31;
      }

      v23 += v29;
      v27 += v29;
      v25 = v30;
    }

    v23 += v25;
    st_size = v70.st_size;
    v10 = v63;
    v11 = v64;
    a6 = v65;
    if (v23 < v70.st_size)
    {
      continue;
    }

    break;
  }

LABEL_49:
  if (v22 + a6 == st_size)
  {
    v45 = 1;
  }

  else
  {
    if (!*a5)
    {
      v6 = *__error();
      v51 = _SILogForLogForCategory(0);
      v9 = __buf;
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v72 = "_copyFile";
        v73 = 1024;
        v74 = 208;
        v75 = 2048;
        *v76 = v70.st_size;
        *&v76[8] = 2048;
        *&v76[10] = v22;
        _os_log_error_impl(&dword_1C278D000, v51, OS_LOG_TYPE_ERROR, "%s:%d: write failed - expected:%lld, actual: %lld", buf, 0x26u);
      }

      v13 = __fd;
      goto LABEL_36;
    }

    v45 = 0;
  }

  v13 = __fd;
  v9 = __buf;
LABEL_37:
  v46 = *__error();
  free(v9);
  prot_fsync(v12, 0);
  if ((v13 & 0x80000000) == 0)
  {
    _fd_release_fd(v11, v13, 0, v69);
  }

  fd_release(v11);
  if ((v12 & 0x80000000) == 0)
  {
    _fd_release_fd(v10, v12, 0, v68);
  }

  fd_release(v10);
  if (v46)
  {
    *__error() = v46;
  }

  v47 = *MEMORY[0x1E69E9840];
  return v45;
}

uint64_t copyFileFallback(uint64_t a1, const char *a2, int a3, const char *a4, _DWORD *a5, char a6, int a7)
{
  v49 = *MEMORY[0x1E69E9840];
  if (a1 != a3 || !isRegisteredForCloning(a1) || !a7)
  {
    goto LABEL_35;
  }

  bzero(__s, 0x400uLL);
  bzero(&__to, 0x400uLL);
  if (fcntl(a1, 50, __s) < 0 || !__s[0])
  {
    v24 = *__error();
    v25 = *__error();
    v26 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
LABEL_29:
      *__error() = v25;
      v31 = __error();
      result = 0;
      *v31 = v24;
      goto LABEL_36;
    }

    v27 = *__error();
    *buf = 136316162;
    v42 = "copyFileFallback";
    v43 = 1024;
    *v44 = 348;
    *&v44[4] = 1024;
    *&v44[6] = v27;
    v45 = 1024;
    *v46 = a1;
    *&v46[4] = 2080;
    *&v46[6] = a2;
    v28 = "%s:%d: copy file error(%d) resolving source fd %d for %s";
    v29 = v26;
LABEL_40:
    _os_log_error_impl(&dword_1C278D000, v29, OS_LOG_TYPE_ERROR, v28, buf, 0x28u);
    goto LABEL_29;
  }

  v14 = strlen(__s);
  snprintf(&__s[v14], 1024 - v14, "/%s", a2);
  if (fcntl(a1, 50, &__to) < 0 || !__to.__pn_.__r_.__value_.__s.__data_[0])
  {
    v24 = *__error();
    v25 = *__error();
    v30 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    v37 = *__error();
    *buf = 136316162;
    v42 = "copyFileFallback";
    v43 = 1024;
    *v44 = 343;
    *&v44[4] = 1024;
    *&v44[6] = v37;
    v45 = 1024;
    *v46 = a1;
    *&v46[4] = 2080;
    *&v46[6] = a4;
    v28 = "%s:%d: copy file error(%d) resolving dest fd %d for %s";
    v29 = v30;
    goto LABEL_40;
  }

  v39 = a6;
  v15 = strlen(&__to);
  snprintf(&__to + v15, 1024 - v15, "/%s", a4);
  v16 = *__error();
  v17 = _SILogForLogForCategory(7);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v42 = __s;
    v43 = 2080;
    *v44 = &__to;
    _os_log_impl(&dword_1C278D000, v17, OS_LOG_TYPE_DEFAULT, "copy file %s to %s", buf, 0x16u);
  }

  *__error() = v16;
  while (1)
  {
    v18 = open(&__to, 0);
    to = 0;
    asprintf(&to, "%s.tmp", &__to);
    unlink(to);
    v19 = copyfile(__s, to, 0, 0x20C0000u);
    v21 = *__error();
    if (v21 != 45)
    {
      goto LABEL_14;
    }

    v22 = open(__s, 0);
    if (v22 != -1)
    {
      close(v22);
      v21 = 45;
LABEL_14:
      if (v19)
      {
        goto LABEL_16;
      }

LABEL_15:
      rename(to, &__to, v20);
      v19 = v23;
      v21 = *__error();
      goto LABEL_16;
    }

    v21 = *__error();
    if (!v19)
    {
      goto LABEL_15;
    }

LABEL_16:
    free(to);
    if (v18 != -1)
    {
      close(v18);
    }

    if (v19 != -1)
    {
      break;
    }

    if (!g_prot_error_callback || ((*(g_prot_error_callback + 16))(g_prot_error_callback, a1, v21, 1) & 1) == 0)
    {
      *__error() = v21;
      *__error() = v21;
      if (!g_prot_error_callback || ((*(g_prot_error_callback + 16))(g_prot_error_callback, a1, v21, 1) & 1) == 0)
      {
        *__error() = v21;
        goto LABEL_32;
      }
    }
  }

  *__error() = v21;
  if (!v19)
  {
    result = 1;
    goto LABEL_36;
  }

LABEL_32:
  v33 = *__error();
  v34 = *__error();
  v35 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    v38 = *__error();
    *buf = 136316162;
    v42 = "copyFileFallback";
    v43 = 1024;
    *v44 = 337;
    *&v44[4] = 1024;
    *&v44[6] = v38;
    v45 = 2080;
    *v46 = __s;
    *&v46[8] = 2080;
    *&v46[10] = &__to;
    _os_log_error_impl(&dword_1C278D000, v35, OS_LOG_TYPE_ERROR, "%s:%d: copy file error(%d) (%s) (%s)", buf, 0x2Cu);
  }

  *__error() = v34;
  *__error() = v33;
  if ((v39 & 1) == 0)
  {
    result = 0;
    goto LABEL_36;
  }

LABEL_35:
  result = _copyFile(a1, a2, a3, a4, a5, 0);
LABEL_36:
  v36 = *MEMORY[0x1E69E9840];
  return result;
}

void si_activity_journal_init(uint64_t a1, _DWORD *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *a1 = a2;
  if (a2)
  {
    v4 = fd_lseek(a2, 0, 2);
    if (v4 >= 1073741825)
    {
      v5 = v4;
      fprintf(*MEMORY[0x1E69E9848], "kSIActivityJournalReset: Journal size %lld is > %lld\n", v4, 0x40000000);
      fd_zero_truncate(a2);
      memset(v11, 0, sizeof(v11));
      Current = CFAbsoluteTimeGetCurrent();
      v7 = Current;
      if (Current > 0x7F)
      {
        if (v7 >> 14)
        {
          if (v7 >> 21)
          {
            if (v7 >> 28)
            {
              if (v7 >> 35)
              {
                if (v7 >> 42)
                {
                  if (v7 >> 49)
                  {
                    if (HIBYTE(v7))
                    {
                      LOBYTE(v11[0]) = -1;
                      *(v11 + 1) = Current;
                      v8 = 9;
                    }

                    else
                    {
                      LOBYTE(v11[0]) = -2;
                      BYTE1(v11[0]) = Current >> 48;
                      BYTE2(v11[0]) = (Current >> 32) >> 8;
                      BYTE3(v11[0]) = Current >> 32;
                      BYTE4(v11[0]) = Current >> 24;
                      BYTE5(v11[0]) = Current >> 16;
                      BYTE6(v11[0]) = Current >> 8;
                      v8 = 8;
                      BYTE7(v11[0]) = Current;
                    }
                  }

                  else
                  {
                    LOBYTE(v11[0]) = BYTE6(v7) | 0xFC;
                    BYTE1(v11[0]) = (Current >> 32) >> 8;
                    BYTE2(v11[0]) = Current >> 32;
                    BYTE3(v11[0]) = Current >> 24;
                    BYTE4(v11[0]) = Current >> 16;
                    BYTE5(v11[0]) = Current >> 8;
                    v8 = 7;
                    BYTE6(v11[0]) = Current;
                  }
                }

                else
                {
                  LOBYTE(v11[0]) = BYTE5(v7) | 0xF8;
                  BYTE1(v11[0]) = Current >> 32;
                  BYTE2(v11[0]) = Current >> 24;
                  BYTE3(v11[0]) = Current >> 16;
                  BYTE4(v11[0]) = Current >> 8;
                  BYTE5(v11[0]) = Current;
                  v8 = 6;
                }
              }

              else
              {
                LOBYTE(v11[0]) = BYTE4(v7) | 0xF0;
                BYTE1(v11[0]) = Current >> 24;
                BYTE2(v11[0]) = Current >> 16;
                BYTE3(v11[0]) = Current >> 8;
                BYTE4(v11[0]) = Current;
                v8 = 5;
              }
            }

            else
            {
              LOBYTE(v11[0]) = BYTE3(v7) | 0xE0;
              BYTE1(v11[0]) = Current >> 16;
              BYTE2(v11[0]) = Current >> 8;
              BYTE3(v11[0]) = Current;
              v8 = 4;
            }
          }

          else
          {
            LOBYTE(v11[0]) = BYTE2(v7) | 0xC0;
            BYTE1(v11[0]) = Current >> 8;
            BYTE2(v11[0]) = Current;
            v8 = 3;
          }
        }

        else
        {
          LOBYTE(v11[0]) = BYTE1(v7) | 0x80;
          BYTE1(v11[0]) = Current;
          v8 = 2;
        }
      }

      else
      {
        LOBYTE(v11[0]) = Current;
        v8 = 1;
      }

      v9 = v2_writeVInt64_11288(v11, v8, v5);
      *(v11 + v9) = 0;
      activityJournalWrite(a1, 55, v11, v9 + 1);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t v2_writeVInt64_11288(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 > 0x7F)
  {
    if (a3 >> 14)
    {
      if (a3 >> 21)
      {
        if (a3 >> 28)
        {
          if (a3 >> 35)
          {
            if (a3 >> 42)
            {
              if (a3 >> 49)
              {
                v10 = a1 + a2;
                if (HIBYTE(a3))
                {
                  *v10 = -1;
                  *(v10 + 1) = a3;
                  return a2 + 9;
                }

                else
                {
                  *v10 = -2;
                  *(v10 + 1) = BYTE6(a3);
                  *(v10 + 2) = BYTE5(a3);
                  *(v10 + 3) = BYTE4(a3);
                  *(v10 + 4) = BYTE3(a3);
                  *(v10 + 5) = BYTE2(a3);
                  *(v10 + 6) = BYTE1(a3);
                  v3 = a2 + 8;
                  *(v10 + 7) = a3;
                }
              }

              else
              {
                v9 = (a1 + a2);
                *v9 = BYTE6(a3) | 0xFC;
                v9[1] = BYTE5(a3);
                v9[2] = BYTE4(a3);
                v9[3] = BYTE3(a3);
                v9[4] = BYTE2(a3);
                v9[5] = BYTE1(a3);
                v3 = a2 + 7;
                v9[6] = a3;
              }
            }

            else
            {
              v8 = (a1 + a2);
              *v8 = BYTE5(a3) | 0xF8;
              v8[1] = BYTE4(a3);
              v8[2] = BYTE3(a3);
              v8[3] = BYTE2(a3);
              v8[4] = BYTE1(a3);
              v3 = a2 + 6;
              v8[5] = a3;
            }
          }

          else
          {
            v7 = (a1 + a2);
            *v7 = BYTE4(a3) | 0xF0;
            v7[1] = BYTE3(a3);
            v7[2] = BYTE2(a3);
            v7[3] = BYTE1(a3);
            v3 = a2 + 5;
            v7[4] = a3;
          }
        }

        else
        {
          v6 = (a1 + a2);
          *v6 = BYTE3(a3) | 0xE0;
          v6[1] = BYTE2(a3);
          v6[2] = BYTE1(a3);
          v3 = a2 + 4;
          v6[3] = a3;
        }
      }

      else
      {
        v5 = (a1 + a2);
        *v5 = BYTE2(a3) | 0xC0;
        v5[1] = BYTE1(a3);
        v3 = a2 + 3;
        v5[2] = a3;
      }
    }

    else
    {
      v4 = (a1 + a2);
      *v4 = BYTE1(a3) | 0x80;
      v3 = a2 + 2;
      v4[1] = a3;
    }
  }

  else
  {
    v3 = a2 + 1;
    *(a1 + a2) = a3;
  }

  return v3;
}

void SIActivityJournalOpen(uint64_t a1, int a2, unsigned int a3, unsigned int a4, unsigned int a5, unint64_t a6, unint64_t a7, unint64_t a8)
{
  v39 = *MEMORY[0x1E69E9840];
  if (*a1)
  {
    os_unfair_lock_lock((a1 + 32));
    memset(v38, 0, sizeof(v38));
    Current = CFAbsoluteTimeGetCurrent();
    v17 = getpid();
    if (v17 > 0x7F)
    {
      if (v17 >> 14)
      {
        if (v17 >> 21)
        {
          if (v17 >> 28)
          {
            LOBYTE(v38[0]) = -16;
            *(v38 + 1) = v17;
            v18 = 5;
          }

          else
          {
            LOBYTE(v38[0]) = HIBYTE(v17) | 0xE0;
            BYTE1(v38[0]) = BYTE2(v17);
            BYTE2(v38[0]) = BYTE1(v17);
            BYTE3(v38[0]) = v17;
            v18 = 4;
          }
        }

        else
        {
          LOBYTE(v38[0]) = BYTE2(v17) | 0xC0;
          BYTE1(v38[0]) = BYTE1(v17);
          BYTE2(v38[0]) = v17;
          v18 = 3;
        }
      }

      else
      {
        LOBYTE(v38[0]) = BYTE1(v17) | 0x80;
        BYTE1(v38[0]) = v17;
        v18 = 2;
      }
    }

    else
    {
      LOBYTE(v38[0]) = v17;
      v18 = 1;
    }

    v19 = v2_writeVInt64_11288(v38, v18, Current);
    if (a3 > 0x7F)
    {
      if (a3 >> 14)
      {
        if (a3 >> 21)
        {
          if (a3 >> 28)
          {
            v24 = v38 + v19;
            *v24 = -16;
            *(v24 + 1) = a3;
            v20 = v19 + 5;
          }

          else
          {
            v23 = v38 + v19;
            *v23 = HIBYTE(a3) | 0xE0;
            v23[1] = BYTE2(a3);
            v23[2] = BYTE1(a3);
            v20 = v19 + 4;
            v23[3] = a3;
          }
        }

        else
        {
          v22 = v38 + v19;
          *v22 = BYTE2(a3) | 0xC0;
          v22[1] = BYTE1(a3);
          v20 = v19 + 3;
          v22[2] = a3;
        }
      }

      else
      {
        v21 = v38 + v19;
        *v21 = BYTE1(a3) | 0x80;
        v20 = v19 + 2;
        v21[1] = a3;
      }
    }

    else
    {
      v20 = v19 + 1;
      *(v38 + v19) = a3;
    }

    if (a4 > 0x7F)
    {
      if (a4 >> 14)
      {
        if (a4 >> 21)
        {
          if (a4 >> 28)
          {
            v29 = v38 + v20;
            *v29 = -16;
            *(v29 + 1) = a4;
            v25 = v20 + 5;
          }

          else
          {
            v28 = v38 + v20;
            *v28 = HIBYTE(a4) | 0xE0;
            v28[1] = BYTE2(a4);
            v28[2] = BYTE1(a4);
            v25 = v20 + 4;
            v28[3] = a4;
          }
        }

        else
        {
          v27 = v38 + v20;
          *v27 = BYTE2(a4) | 0xC0;
          v27[1] = BYTE1(a4);
          v25 = v20 + 3;
          v27[2] = a4;
        }
      }

      else
      {
        v26 = v38 + v20;
        *v26 = BYTE1(a4) | 0x80;
        v25 = v20 + 2;
        v26[1] = a4;
      }
    }

    else
    {
      v25 = v20 + 1;
      *(v38 + v20) = a4;
    }

    if (a5 > 0x7F)
    {
      if (a5 >> 14)
      {
        if (a5 >> 21)
        {
          if (a5 >> 28)
          {
            v34 = v38 + v25;
            *v34 = -16;
            *(v34 + 1) = a5;
            v30 = v25 + 5;
          }

          else
          {
            v33 = v38 + v25;
            *v33 = HIBYTE(a5) | 0xE0;
            v33[1] = BYTE2(a5);
            v33[2] = BYTE1(a5);
            v30 = v25 + 4;
            v33[3] = a5;
          }
        }

        else
        {
          v32 = v38 + v25;
          *v32 = BYTE2(a5) | 0xC0;
          v32[1] = BYTE1(a5);
          v30 = v25 + 3;
          v32[2] = a5;
        }
      }

      else
      {
        v31 = v38 + v25;
        *v31 = BYTE1(a5) | 0x80;
        v30 = v25 + 2;
        v31[1] = a5;
      }
    }

    else
    {
      v30 = v25 + 1;
      *(v38 + v25) = a5;
    }

    if (a2 != 37)
    {
      v35 = v2_writeVInt64_11288(v38, v30, a6);
      v30 = v2_writeVInt64_11288(v38, v35, a7);
    }

    v36 = v2_writeVInt64_11288(v38, v30, a8);
    activityJournalWrite(a1, a2, v38, v36);
    os_unfair_lock_unlock((a1 + 32));
  }

  v37 = *MEMORY[0x1E69E9840];
}

void SIActivityJournalClose(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 8);
  Current = CFAbsoluteTimeGetCurrent();
  activityJournalWriteVInt64(a1, 4, Current);

  os_unfair_lock_unlock(a1 + 8);
}

void SIActivityJournalUnlinkJournal(os_unfair_lock_s *a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  memset(v12, 0, sizeof(v12));
  v3 = fd_name(a2, v12, 0x100uLL);
  if (v3)
  {
    v4 = v3;
    if (!strncmp(v3, "journalAttr.", 0xCuLL))
    {
      v8 = atoi(v4 + 12);
      v6 = a1 + 8;
      os_unfair_lock_lock(a1 + 8);
      v13 = 0u;
      v14 = 0u;
      if (v8 > 0x7F)
      {
        if (v8 >> 14)
        {
          if (v8 >> 21)
          {
            if (v8 >> 28)
            {
              LOBYTE(v13) = -16;
              *(&v13 + 1) = v8;
              v7 = 5;
            }

            else
            {
              LOBYTE(v13) = HIBYTE(v8) | 0xE0;
              BYTE1(v13) = BYTE2(v8);
              BYTE2(v13) = BYTE1(v8);
              BYTE3(v13) = v8;
              v7 = 4;
            }
          }

          else
          {
            LOBYTE(v13) = BYTE2(v8) | 0xC0;
            BYTE1(v13) = BYTE1(v8);
            BYTE2(v13) = v8;
            v7 = 3;
          }
        }

        else
        {
          LOBYTE(v13) = BYTE1(v8) | 0x80;
          BYTE1(v13) = v8;
          v7 = 2;
        }
      }

      else
      {
        LOBYTE(v13) = v8;
        v7 = 1;
      }

      v9 = a1;
      v10 = 25;
      goto LABEL_24;
    }

    if (!strncmp(v4, "deferAttr.", 0xAuLL))
    {
      v5 = atoi(v4 + 10);
      v6 = a1 + 8;
      os_unfair_lock_lock(a1 + 8);
      v13 = 0u;
      v14 = 0u;
      if (v5 > 0x7F)
      {
        if (v5 >> 14)
        {
          if (v5 >> 21)
          {
            if (v5 >> 28)
            {
              LOBYTE(v13) = -16;
              *(&v13 + 1) = v5;
              v7 = 5;
            }

            else
            {
              LOBYTE(v13) = HIBYTE(v5) | 0xE0;
              BYTE1(v13) = BYTE2(v5);
              BYTE2(v13) = BYTE1(v5);
              BYTE3(v13) = v5;
              v7 = 4;
            }
          }

          else
          {
            LOBYTE(v13) = BYTE2(v5) | 0xC0;
            BYTE1(v13) = BYTE1(v5);
            BYTE2(v13) = v5;
            v7 = 3;
          }
        }

        else
        {
          LOBYTE(v13) = BYTE1(v5) | 0x80;
          BYTE1(v13) = v5;
          v7 = 2;
        }
      }

      else
      {
        LOBYTE(v13) = v5;
        v7 = 1;
      }

      v9 = a1;
      v10 = 53;
LABEL_24:
      activityJournalWrite(v9, v10, &v13, v7);
      os_unfair_lock_unlock(v6);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void SIActivityJournalNewLiveIndex(os_unfair_lock_s *a1, unsigned int a2, unint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  memset(v9, 0, sizeof(v9));
  os_unfair_lock_lock(a1 + 8);
  if (a2 > 0x7F)
  {
    if (a2 >> 14)
    {
      if (a2 >> 21)
      {
        if (a2 >> 28)
        {
          LOBYTE(v9[0]) = -16;
          *(v9 + 1) = a2;
          v6 = 5;
        }

        else
        {
          LOBYTE(v9[0]) = HIBYTE(a2) | 0xE0;
          BYTE1(v9[0]) = BYTE2(a2);
          BYTE2(v9[0]) = BYTE1(a2);
          BYTE3(v9[0]) = a2;
          v6 = 4;
        }
      }

      else
      {
        LOBYTE(v9[0]) = BYTE2(a2) | 0xC0;
        BYTE1(v9[0]) = BYTE1(a2);
        BYTE2(v9[0]) = a2;
        v6 = 3;
      }
    }

    else
    {
      LOBYTE(v9[0]) = BYTE1(a2) | 0x80;
      BYTE1(v9[0]) = a2;
      v6 = 2;
    }
  }

  else
  {
    LOBYTE(v9[0]) = a2;
    v6 = 1;
  }

  v7 = v2_writeVInt64_11288(v9, v6, a3);
  activityJournalWrite(a1, 20, v9, v7);
  v8 = *MEMORY[0x1E69E9840];

  os_unfair_lock_unlock(a1 + 8);
}

void SIActivityJournalMergeIndices(os_unfair_lock_s *a1, unsigned int a2, unsigned int a3, int a4)
{
  v14 = *MEMORY[0x1E69E9840];
  memset(v13, 0, sizeof(v13));
  os_unfair_lock_lock(a1 + 8);
  if (a2 > 0x7F)
  {
    if (a2 >> 14)
    {
      if (a2 >> 21)
      {
        if (a2 >> 28)
        {
          v8 = v13 + 5;
          LOBYTE(v13[0]) = -16;
          *(v13 + 1) = a2;
          v9 = 5;
        }

        else
        {
          v8 = v13 + 4;
          LOBYTE(v13[0]) = HIBYTE(a2) | 0xE0;
          BYTE1(v13[0]) = BYTE2(a2);
          BYTE2(v13[0]) = BYTE1(a2);
          BYTE3(v13[0]) = a2;
          v9 = 4;
        }
      }

      else
      {
        v8 = v13 + 3;
        LOBYTE(v13[0]) = BYTE2(a2) | 0xC0;
        BYTE1(v13[0]) = BYTE1(a2);
        BYTE2(v13[0]) = a2;
        v9 = 3;
      }
    }

    else
    {
      v8 = v13 + 2;
      LOBYTE(v13[0]) = BYTE1(a2) | 0x80;
      BYTE1(v13[0]) = a2;
      v9 = 2;
    }
  }

  else
  {
    v8 = v13 + 1;
    LOBYTE(v13[0]) = a2;
    v9 = 1;
  }

  if (a3 > 0x7F)
  {
    if (a3 >> 14)
    {
      if (a3 >> 21)
      {
        if (a3 >> 28)
        {
          *v8 = -16;
          *(v8 + 1) = a3;
          v10 = v9 + 5;
        }

        else
        {
          *v8 = HIBYTE(a3) | 0xE0;
          v8[1] = BYTE2(a3);
          v8[2] = BYTE1(a3);
          v10 = v9 + 4;
          v8[3] = a3;
        }
      }

      else
      {
        *v8 = BYTE2(a3) | 0xC0;
        v8[1] = BYTE1(a3);
        v10 = v9 + 3;
        v8[2] = a3;
      }
    }

    else
    {
      *v8 = BYTE1(a3) | 0x80;
      v10 = v9 + 2;
      v8[1] = a3;
    }
  }

  else
  {
    v10 = v9 + 1;
    *v8 = a3;
  }

  if (a4)
  {
    v11 = 21;
  }

  else
  {
    v11 = 22;
  }

  activityJournalWrite(a1, v11, v13, v10);
  v12 = *MEMORY[0x1E69E9840];

  os_unfair_lock_unlock(a1 + 8);
}

void _SIActivityJournalAdd(uint64_t a1, char a2, unint64_t a3, unsigned int a4, unint64_t a5, int a6)
{
  v19 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((a1 + 32));
  if (*(a1 + 37) != a6)
  {
    *(a1 + 37) = a6;
    if (a6)
    {
      v12 = 26;
    }

    else
    {
      v12 = 27;
    }

    activityJournalWrite(a1, v12, 0, 0);
  }

  if (*(a1 + 8) != a4)
  {
    *(a1 + 8) = a4;
    v17 = 0u;
    v18 = 0u;
    if (a4 > 0x7F)
    {
      if (a4 >> 14)
      {
        if (a4 >> 21)
        {
          if (a4 >> 28)
          {
            LOBYTE(v17) = -16;
            *(&v17 + 1) = a4;
            v13 = 5;
          }

          else
          {
            LOBYTE(v17) = HIBYTE(a4) | 0xE0;
            BYTE1(v17) = BYTE2(a4);
            BYTE2(v17) = BYTE1(a4);
            BYTE3(v17) = a4;
            v13 = 4;
          }
        }

        else
        {
          LOBYTE(v17) = BYTE2(a4) | 0xC0;
          BYTE1(v17) = BYTE1(a4);
          BYTE2(v17) = a4;
          v13 = 3;
        }
      }

      else
      {
        LOBYTE(v17) = BYTE1(a4) | 0x80;
        BYTE1(v17) = a4;
        v13 = 2;
      }
    }

    else
    {
      LOBYTE(v17) = a4;
      v13 = 1;
    }

    activityJournalWrite(a1, 9, &v17, v13);
  }

  if (*(a1 + 24) != a5)
  {
    *(a1 + 24) = a5;
    activityJournalWriteVInt64(a1, 32, a5);
  }

  if (*(a1 + 12) != HIDWORD(a3))
  {
    *(a1 + 12) = HIDWORD(a3);
    v17 = 0u;
    v18 = 0u;
    if (a3 >> 39)
    {
      if (a3 >> 46)
      {
        if (a3 >> 53)
        {
          if (a3 >> 60)
          {
            LOBYTE(v17) = -16;
            *(&v17 + 1) = HIDWORD(a3);
            v14 = 5;
          }

          else
          {
            LOBYTE(v17) = HIBYTE(a3) | 0xE0;
            BYTE1(v17) = BYTE6(a3);
            BYTE2(v17) = BYTE5(a3);
            BYTE3(v17) = BYTE4(a3);
            v14 = 4;
          }
        }

        else
        {
          LOBYTE(v17) = BYTE6(a3) | 0xC0;
          BYTE1(v17) = BYTE5(a3);
          BYTE2(v17) = BYTE4(a3);
          v14 = 3;
        }
      }

      else
      {
        LOBYTE(v17) = BYTE5(a3) | 0x80;
        BYTE1(v17) = BYTE4(a3);
        v14 = 2;
      }
    }

    else
    {
      LOBYTE(v17) = BYTE4(a3);
      v14 = 1;
    }

    activityJournalWrite(a1, 10, &v17, v14);
  }

  v17 = 0u;
  v18 = 0u;
  if (a3 > 0x7F)
  {
    if (a3 >> 14)
    {
      if (a3 >> 21)
      {
        if (a3 >> 28)
        {
          LOBYTE(v17) = -16;
          *(&v17 + 1) = a3;
          v15 = 5;
        }

        else
        {
          LOBYTE(v17) = BYTE3(a3) | 0xE0;
          BYTE1(v17) = BYTE2(a3);
          BYTE2(v17) = BYTE1(a3);
          BYTE3(v17) = a3;
          v15 = 4;
        }
      }

      else
      {
        LOBYTE(v17) = BYTE2(a3) | 0xC0;
        BYTE1(v17) = BYTE1(a3);
        BYTE2(v17) = a3;
        v15 = 3;
      }
    }

    else
    {
      LOBYTE(v17) = BYTE1(a3) | 0x80;
      BYTE1(v17) = a3;
      v15 = 2;
    }
  }

  else
  {
    LOBYTE(v17) = a3;
    v15 = 1;
  }

  activityJournalWrite(a1, a2, &v17, v15);
  v16 = *MEMORY[0x1E69E9840];

  os_unfair_lock_unlock((a1 + 32));
}

void SIActivityJournalMailCSItem(uint64_t a1, CFStringRef theString, unint64_t a3, unsigned int a4, unint64_t a5, int a6, int a7, uint64_t a8, uint64_t a9, const void *a10)
{
  v39 = *MEMORY[0x1E69E9840];
  if (a10)
  {
    v15 = 0;
  }

  else
  {
    v15 = theString == 0;
  }

  if (!v15 || a8 != 0 || a9 != 0)
  {
    Length = CFStringGetLength(theString);
    if (Length)
    {
      v22 = Length;
      if (Length <= 31)
      {
        *buffer = 0u;
        v38 = 0u;
        if (CFStringGetCString(theString, buffer, 32, 0x8000100u))
        {
          if (v22 < 1)
          {
LABEL_22:
            v25 = atol(buffer);
            if (v25 > 0)
            {
              v26 = v25;
              os_unfair_lock_lock((a1 + 32));
              if (*(a1 + 37) != a6)
              {
                *(a1 + 37) = a6;
                if (a6)
                {
                  v27 = 26;
                }

                else
                {
                  v27 = 27;
                }

                activityJournalWrite(a1, v27, 0, 0);
              }

              if (*(a1 + 12) != HIDWORD(a3))
              {
                *(a1 + 12) = HIDWORD(a3);
                *buffer = 0u;
                v38 = 0u;
                if (a3 >> 39)
                {
                  if (a3 >> 46)
                  {
                    if (a3 >> 53)
                    {
                      if (a3 >> 60)
                      {
                        buffer[0] = -16;
                        *&buffer[1] = HIDWORD(a3);
                        v28 = 5;
                      }

                      else
                      {
                        buffer[0] = HIBYTE(a3) | 0xE0;
                        buffer[1] = BYTE6(a3);
                        buffer[2] = BYTE5(a3);
                        buffer[3] = BYTE4(a3);
                        v28 = 4;
                      }
                    }

                    else
                    {
                      buffer[0] = BYTE6(a3) | 0xC0;
                      buffer[1] = BYTE5(a3);
                      buffer[2] = BYTE4(a3);
                      v28 = 3;
                    }
                  }

                  else
                  {
                    buffer[0] = BYTE5(a3) | 0x80;
                    buffer[1] = BYTE4(a3);
                    v28 = 2;
                  }
                }

                else
                {
                  buffer[0] = BYTE4(a3);
                  v28 = 1;
                }

                activityJournalWrite(a1, 10, buffer, v28);
              }

              if (*(a1 + 8) != a4)
              {
                *(a1 + 8) = a4;
                *buffer = 0u;
                v38 = 0u;
                if (a4 > 0x7F)
                {
                  if (a4 >> 14)
                  {
                    if (a4 >> 21)
                    {
                      if (a4 >> 28)
                      {
                        buffer[0] = -16;
                        *&buffer[1] = a4;
                        v30 = 5;
                      }

                      else
                      {
                        buffer[0] = HIBYTE(a4) | 0xE0;
                        buffer[1] = BYTE2(a4);
                        buffer[2] = BYTE1(a4);
                        buffer[3] = a4;
                        v30 = 4;
                      }
                    }

                    else
                    {
                      buffer[0] = BYTE2(a4) | 0xC0;
                      buffer[1] = BYTE1(a4);
                      buffer[2] = a4;
                      v30 = 3;
                    }
                  }

                  else
                  {
                    buffer[0] = BYTE1(a4) | 0x80;
                    buffer[1] = a4;
                    v30 = 2;
                  }
                }

                else
                {
                  buffer[0] = a4;
                  v30 = 1;
                }

                activityJournalWrite(a1, 9, buffer, v30);
              }

              v31 = 4 * v26;
              if (*(a1 + 24) != a5)
              {
                *(a1 + 24) = a5;
                activityJournalWriteVInt64(a1, 32, a5);
              }

              if (a10 && (v32 = CFGetTypeID(a10), v32 == CFNumberGetTypeID()) && (*buffer = 0, CFNumberGetValue(a10, kCFNumberSInt32Type, buffer)))
              {
                if (*buffer > 7u)
                {
                  v33 = 1;
                }

                else
                {
                  v31 = (32 * v26) | (4 * *buffer);
                  v33 = 0;
                }
              }

              else
              {
                v33 = 1;
              }

              if (a7)
              {
                if (v33)
                {
                  if (*MEMORY[0x1E695E738] == a10)
                  {
                    v34 = 49;
                  }

                  else
                  {
                    v34 = 48;
                  }
                }

                else
                {
                  v34 = 51;
                }
              }

              else if (v33)
              {
                v34 = 47;
              }

              else
              {
                v34 = 50;
              }

              if (*MEMORY[0x1E695E4D0] == a9)
              {
                v35 = v31 | (*MEMORY[0x1E695E4D0] == a8) | 2;
              }

              else
              {
                v35 = v31 | (*MEMORY[0x1E695E4D0] == a8);
              }

              activityJournalWriteVInt64(a1, v34, v35);
              os_unfair_lock_unlock((a1 + 32));
              goto LABEL_32;
            }
          }

          else
          {
            v23 = buffer;
            while (1)
            {
              v24 = *v23++;
              if (v24 >= 0x3A)
              {
                break;
              }

              if (!--v22)
              {
                goto LABEL_22;
              }
            }
          }
        }
      }
    }

    SIActivityJournalCSItem(a1, theString, a3, a4, a5, a6, a7);
LABEL_32:
    v29 = *MEMORY[0x1E69E9840];
    return;
  }

  v18 = *MEMORY[0x1E69E9840];

  SIActivityJournalCSItem(a1, 0, a3, a4, a5, a6, a7);
}

void SIActivityJournalEvent(os_unfair_lock_s *a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    bzero(&v15, 0x220uLL);
    if (a2 > 0x7F)
    {
      if (a2 >> 14)
      {
        if (a2 >> 21)
        {
          if (a2 >> 28)
          {
            v15 = -16;
            v16 = HIBYTE(a2);
            v17 = BYTE2(a2);
            v18 = BYTE1(a2);
            v10 = 5;
            v19 = a2;
          }

          else
          {
            v15 = HIBYTE(a2) | 0xE0;
            v16 = BYTE2(a2);
            v17 = BYTE1(a2);
            v18 = a2;
            v10 = 4;
          }
        }

        else
        {
          v15 = BYTE2(a2) | 0xC0;
          v16 = BYTE1(a2);
          v17 = a2;
          v10 = 3;
        }
      }

      else
      {
        v15 = BYTE1(a2) | 0x80;
        v16 = a2;
        v10 = 2;
      }
    }

    else
    {
      v15 = a2;
      v10 = 1;
    }

    v11 = v2_writeVInt64_11288(&v15, v10, a3);
    v12 = v2_writeVInt64_11288(&v15, v11, a4);
    v13 = v2_writeVInt64_11288(&v15, v12, a5);
    os_unfair_lock_lock(a1 + 8);
    activityJournalWrite(a1, 59, &v15, v13);
    os_unfair_lock_unlock(a1 + 8);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void _SIActivityJournalGetOIDs(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v25 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v32[1024] = *MEMORY[0x1E69E9840];
  v8 = *MEMORY[0x1E695E480];
  v9 = MEMORY[0x1E695E9E8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
  v11 = CFDictionaryCreateMutable(v8, 0, 0, v9);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 0x40000000;
  v30[2] = ___SIActivityJournalGetOIDs_block_invoke;
  v30[3] = &__block_descriptor_tmp_11329;
  v30[4] = v11;
  v30[5] = Mutable;
  v31 = v5;
  si_activity_journal_playback(v7, v30);
  Count = CFDictionaryGetCount(v11);
  MEMORY[0x1EEE9AC00](Count);
  v13 = (&v24 - ((8 * Count + 15) & 0xFFFFFFFFFFFFFFF0));
  bzero(v13, 8 * Count);
  MEMORY[0x1EEE9AC00](v14);
  v15 = v13;
  bzero(v13, 8 * Count);
  v24 = v11;
  CFDictionaryGetKeysAndValues(v11, v13, v13);
  if (Count >= 1)
  {
    do
    {
      v17 = *v13++;
      v16 = v17;
      v18 = *v15;
      Value = CFDictionaryGetValue(Mutable, v17);
      if (Value)
      {
        v20 = Value;
        v21 = 0x20000;
        if (v3 < 0x20000)
        {
          v21 = v3;
        }

        if (v3)
        {
          v3 = v21;
        }

        else
        {
          v3 = 1024;
        }

        v26[0] = v18;
        v26[1] = v3;
        v27 = v25;
        v28 = 0;
        v29 = 0;
        v22 = v32;
        bzero(v32, 0x2000uLL);
        if (v3 >= 0x401)
        {
          v22 = malloc_type_malloc(8 * v3, 0x100004000313F17uLL);
        }

        v29 = v22;
        SIValueSet<unsigned long long>::_SIValueSetInnerIterate(v20 + 56, *(v20 + 2), *(v20 + 6), oids_for_bundle_callback, v26, 512);
        if (v28)
        {
          (*(v27 + 16))(v27, v26[0], v29);
          v28 = 0;
        }

        if (v29 != v32)
        {
          free(v29);
        }

        CFDictionaryRemoveValue(Mutable, v16);
      }

      ++v15;
      --Count;
    }

    while (Count);
  }

  CFRelease(v24);
  CFRelease(Mutable);
  v23 = *MEMORY[0x1E69E9840];
}

uint64_t si_activity_journal_playback(const char *a1, uint64_t a2)
{
  v99 = *MEMORY[0x1E69E9840];
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v89 = 0u;
  result = open(a1, 0);
  if (result != -1)
  {
    v4 = result;
    v5 = lseek(result, 0, 2);
    v6 = mmap(0, v5, 1, 1, v4, 0);
    if (v6 != -1)
    {
      v7 = v6;
      v98 = 0;
      v96 = 0u;
      v97 = 0u;
      *__str = 0u;
      v95 = 0u;
      if (v5 >= 1)
      {
        v8 = 0;
        v9 = 0;
        v10 = MEMORY[0x1E69E9848];
        do
        {
          while (2)
          {
            v11 = v8 + 1;
            v12 = &v7[v8];
            v13 = v7[v8];
            if (v7[v8] < 0)
            {
              if (v13 > 0xBF)
              {
                if (v13 > 0xDF)
                {
                  if (v13 > 0xEF)
                  {
                    v13 = *&v7[v11];
                    v8 += 5;
                  }

                  else
                  {
                    v13 = ((v13 & 0xF) << 24) | (v7[v11] << 16) | (v12[2] << 8) | v12[3];
                    v8 += 4;
                  }
                }

                else
                {
                  v13 = ((v13 & 0x1F) << 16) | (v7[v11] << 8) | v12[2];
                  v8 += 3;
                }
              }

              else
              {
                v8 += 2;
                v13 = v7[v11] | ((v13 & 0x3F) << 8);
              }
            }

            else
            {
              ++v8;
            }

            LODWORD(v89) = v13;
            if (v13)
            {
              v88 = v8;
              v14 = v13 >> 1;
              LODWORD(v89) = v13 >> 1;
              v9 = 0;
              switch(v13 >> 1)
              {
                case 1u:
                case 2u:
                case 3u:
                case 0x21u:
                case 0x22u:
                case 0x25u:
                case 0x26u:
                case 0x27u:
                  HIDWORD(v89) = 0;
                  v15 = v8 + 1;
                  v16 = &v7[v8];
                  v17 = v7[v8];
                  if (v7[v8] < 0)
                  {
                    if (v17 > 0xBF)
                    {
                      if (v17 > 0xDF)
                      {
                        if (v17 > 0xEF)
                        {
                          v17 = *&v7[v15];
                          v15 = v8 + 5;
                        }

                        else
                        {
                          v17 = ((v17 & 0xF) << 24) | (v7[v15] << 16) | (v16[2] << 8) | v16[3];
                          v15 = v8 + 4;
                        }
                      }

                      else
                      {
                        v17 = ((v17 & 0x1F) << 16) | (v7[v15] << 8) | v16[2];
                        v15 = v8 + 3;
                      }
                    }

                    else
                    {
                      v18 = v7[v15] | ((v17 & 0x3F) << 8);
                      v15 = v8 + 2;
                      v17 = v18;
                    }
                  }

                  v88 = v15;
                  DWORD2(v90) = v17;
                  *&v91 = v2_readVInt64(v7, &v88);
                  v66 = v88 + 1;
                  v67 = &v7[v88];
                  v68 = v7[v88];
                  if (v7[v88] < 0)
                  {
                    if (v68 > 0xBF)
                    {
                      if (v68 > 0xDF)
                      {
                        if (v68 > 0xEF)
                        {
                          v68 = *&v7[v66];
                          v66 = v88 + 5;
                        }

                        else
                        {
                          v68 = ((v68 & 0xF) << 24) | (v7[v66] << 16) | (v67[2] << 8) | v67[3];
                          v66 = v88 + 4;
                        }
                      }

                      else
                      {
                        v68 = ((v68 & 0x1F) << 16) | (v7[v66] << 8) | v67[2];
                        v66 = v88 + 3;
                      }
                    }

                    else
                    {
                      v69 = v7[v66] | ((v68 & 0x3F) << 8);
                      v66 = v88 + 2;
                      v68 = v69;
                    }
                  }

                  DWORD2(v91) = v68;
                  v70 = v66 + 1;
                  v71 = &v7[v66];
                  v72 = v7[v66];
                  if (v7[v66] < 0)
                  {
                    if (v72 > 0xBF)
                    {
                      if (v72 > 0xDF)
                      {
                        if (v72 > 0xEF)
                        {
                          v72 = *&v7[v70];
                          v70 = v66 + 5;
                        }

                        else
                        {
                          v72 = ((v72 & 0xF) << 24) | (v7[v70] << 16) | (v71[2] << 8) | v71[3];
                          v70 = v66 + 4;
                        }
                      }

                      else
                      {
                        v72 = ((v72 & 0x1F) << 16) | (v7[v70] << 8) | v71[2];
                        v70 = v66 + 3;
                      }
                    }

                    else
                    {
                      v73 = v7[v70] | ((v72 & 0x3F) << 8);
                      v70 = v66 + 2;
                      v72 = v73;
                    }
                  }

                  HIDWORD(v91) = v72;
                  v74 = v70 + 1;
                  v75 = &v7[v70];
                  v76 = v7[v70];
                  if (v7[v70] < 0)
                  {
                    if (v76 > 0xBF)
                    {
                      if (v76 > 0xDF)
                      {
                        if (v76 > 0xEF)
                        {
                          v76 = *&v7[v74];
                          v74 = v70 + 5;
                        }

                        else
                        {
                          v76 = ((v76 & 0xF) << 24) | (v7[v74] << 16) | (v75[2] << 8) | v75[3];
                          v74 = v70 + 4;
                        }
                      }

                      else
                      {
                        v76 = ((v76 & 0x1F) << 16) | (v7[v74] << 8) | v75[2];
                        v74 = v70 + 3;
                      }
                    }

                    else
                    {
                      v77 = v7[v74] | ((v76 & 0x3F) << 8);
                      v74 = v70 + 2;
                      v76 = v77;
                    }
                  }

                  v88 = v74;
                  LODWORD(v92) = v76;
                  if (v14 <= 0x27 && ((1 << v14) & 0xC600000000) != 0)
                  {
                    *(&v92 + 1) = v2_readVInt64(v7, &v88);
                    VInt64 = v2_readVInt64(v7, &v88);
                  }

                  else
                  {
                    VInt64 = 0;
                    *(&v92 + 1) = 0;
                  }

                  *&v93 = VInt64;
                  v9 = 0;
                  if (v14 - 37 > 2)
                  {
                    *(&v93 + 1) = 0;
                  }

                  else
                  {
                    *(&v93 + 1) = v2_readVInt64(v7, &v88);
                  }

                  goto LABEL_121;
                case 4u:
                case 5u:
                case 7u:
                case 8u:
                case 0x23u:
                case 0x24u:
                  v9 = 0;
                  *(&v90 + 1) = v2_readVInt64(v7, &v88);
                  goto LABEL_121;
                case 6u:
                case 0x28u:
                  *(&v90 + 1) = v2_readVInt64(v7, &v88);
                  *&v91 = v2_readVInt64(v7, &v88);
                  v9 = v14 == 6;
                  goto LABEL_121;
                case 9u:
                  v9 = 0;
                  HIDWORD(v89) = v2_readVInt64(v7, &v88);
                  goto LABEL_121;
                case 0xAu:
                  v45 = v8 + 1;
                  v46 = &v7[v8];
                  v47 = v7[v8];
                  if (v7[v8] < 0)
                  {
                    if (v47 > 0xBF)
                    {
                      if (v47 > 0xDF)
                      {
                        if (v47 > 0xEF)
                        {
                          v47 = *&v7[v45];
                          v45 = v8 + 5;
                        }

                        else
                        {
                          v47 = ((v47 & 0xF) << 24) | (v7[v45] << 16) | (v46[2] << 8) | v46[3];
                          v45 = v8 + 4;
                        }
                      }

                      else
                      {
                        v47 = ((v47 & 0x1F) << 16) | (v7[v45] << 8) | v46[2];
                        v45 = v8 + 3;
                      }
                    }

                    else
                    {
                      v48 = v7[v45] | ((v47 & 0x3F) << 8);
                      v45 = v8 + 2;
                      v47 = v48;
                    }
                  }

                  v9 = 0;
                  v88 = v45;
                  DWORD1(v89) = v47;
                  goto LABEL_121;
                case 0xBu:
                case 0xCu:
                case 0xDu:
                case 0xEu:
                case 0xFu:
                case 0x3Cu:
                case 0x3Du:
                  v19 = v8 + 1;
                  v20 = &v7[v8];
                  v21 = v7[v8];
                  if (v7[v8] < 0)
                  {
                    if (v21 > 0xBF)
                    {
                      if (v21 > 0xDF)
                      {
                        if (v21 > 0xEF)
                        {
                          v21 = *&v7[v19];
                          v19 = v8 + 5;
                        }

                        else
                        {
                          v21 = ((v21 & 0xF) << 24) | (v7[v19] << 16) | (v20[2] << 8) | v20[3];
                          v19 = v8 + 4;
                        }
                      }

                      else
                      {
                        v21 = ((v21 & 0x1F) << 16) | (v7[v19] << 8) | v20[2];
                        v19 = v8 + 3;
                      }
                    }

                    else
                    {
                      v22 = v7[v19] | ((v21 & 0x3F) << 8);
                      v19 = v8 + 2;
                      v21 = v22;
                    }
                  }

                  v9 = 0;
                  v88 = v19;
                  v79 = v21;
                  v80 = DWORD1(v89);
                  goto LABEL_119;
                case 0x10u:
                  v53 = v8 + 1;
                  v54 = &v7[v8];
                  v55 = v7[v8];
                  if (v7[v8] < 0)
                  {
                    if (v55 > 0xBF)
                    {
                      if (v55 > 0xDF)
                      {
                        if (v55 > 0xEF)
                        {
                          v55 = *&v7[v53];
                          v53 = v8 + 5;
                        }

                        else
                        {
                          v55 = ((v55 & 0xF) << 24) | (v7[v53] << 16) | (v54[2] << 8) | v54[3];
                          v53 = v8 + 4;
                        }
                      }

                      else
                      {
                        v55 = ((v55 & 0x1F) << 16) | (v7[v53] << 8) | v54[2];
                        v53 = v8 + 3;
                      }
                    }

                    else
                    {
                      v56 = v7[v53] | ((v55 & 0x3F) << 8);
                      v53 = v8 + 2;
                      v55 = v56;
                    }
                  }

                  v9 = 0;
                  v88 = v53;
                  DWORD2(v89) = v55;
                  goto LABEL_121;
                case 0x11u:
                case 0x12u:
                case 0x13u:
                case 0x36u:
                  v23 = v8 + 1;
                  v24 = &v7[v8];
                  v25 = v7[v8];
                  if (v7[v8] < 0)
                  {
                    if (v25 > 0xBF)
                    {
                      if (v25 > 0xDF)
                      {
                        if (v25 > 0xEF)
                        {
                          v25 = *&v7[v23];
                          v23 = v8 + 5;
                        }

                        else
                        {
                          v25 = ((v25 & 0xF) << 24) | (v7[v23] << 16) | (v24[2] << 8) | v24[3];
                          v23 = v8 + 4;
                        }
                      }

                      else
                      {
                        v25 = ((v25 & 0x1F) << 16) | (v7[v23] << 8) | v24[2];
                        v23 = v8 + 3;
                      }
                    }

                    else
                    {
                      v26 = v7[v23] | ((v25 & 0x3F) << 8);
                      v23 = v8 + 2;
                      v25 = v26;
                    }
                  }

                  v9 = 0;
                  v88 = v23;
                  v79 = v25;
                  v80 = DWORD2(v89);
LABEL_119:
                  v42 = v79 | (v80 << 32);
                  goto LABEL_120;
                case 0x14u:
                  v57 = v8 + 1;
                  v58 = &v7[v8];
                  v59 = v7[v8];
                  if (v7[v8] < 0)
                  {
                    if (v59 > 0xBF)
                    {
                      if (v59 > 0xDF)
                      {
                        if (v59 > 0xEF)
                        {
                          v59 = *&v7[v57];
                          v57 = v8 + 5;
                        }

                        else
                        {
                          v59 = ((v59 & 0xF) << 24) | (v7[v57] << 16) | (v58[2] << 8) | v58[3];
                          v57 = v8 + 4;
                        }
                      }

                      else
                      {
                        v59 = ((v59 & 0x1F) << 16) | (v7[v57] << 8) | v58[2];
                        v57 = v8 + 3;
                      }
                    }

                    else
                    {
                      v60 = v7[v57] | ((v59 & 0x3F) << 8);
                      v57 = v8 + 2;
                      v59 = v60;
                    }
                  }

                  v88 = v57;
                  DWORD2(v90) = v59;
                  v9 = 0;
                  *&v91 = v2_readVInt64(v7, &v88);
                  goto LABEL_121;
                case 0x15u:
                case 0x16u:
                  v35 = v8 + 1;
                  v36 = &v7[v8];
                  v37 = v7[v8];
                  if (v7[v8] < 0)
                  {
                    if (v37 > 0xBF)
                    {
                      if (v37 > 0xDF)
                      {
                        if (v37 > 0xEF)
                        {
                          v37 = *&v7[v35];
                          v35 = v8 + 5;
                        }

                        else
                        {
                          v37 = ((v37 & 0xF) << 24) | (v7[v35] << 16) | (v36[2] << 8) | v36[3];
                          v35 = v8 + 4;
                        }
                      }

                      else
                      {
                        v37 = ((v37 & 0x1F) << 16) | (v7[v35] << 8) | v36[2];
                        v35 = v8 + 3;
                      }
                    }

                    else
                    {
                      v38 = v7[v35] | ((v37 & 0x3F) << 8);
                      v35 = v8 + 2;
                      v37 = v38;
                    }
                  }

                  DWORD2(v90) = v37;
                  v81 = v35 + 1;
                  v82 = &v7[v35];
                  v83 = v7[v35];
                  if (v7[v35] < 0)
                  {
                    if (v83 > 0xBF)
                    {
                      if (v83 > 0xDF)
                      {
                        if (v83 > 0xEF)
                        {
                          v83 = *&v7[v81];
                          v81 = v35 + 5;
                        }

                        else
                        {
                          v83 = ((v83 & 0xF) << 24) | (v7[v81] << 16) | (v82[2] << 8) | v82[3];
                          v81 = v35 + 4;
                        }
                      }

                      else
                      {
                        v83 = ((v83 & 0x1F) << 16) | (v7[v81] << 8) | v82[2];
                        v81 = v35 + 3;
                      }
                    }

                    else
                    {
                      v84 = v7[v81] | ((v83 & 0x3F) << 8);
                      v81 = v35 + 2;
                      v83 = v84;
                    }
                  }

                  v9 = 0;
                  v88 = v81;
                  HIDWORD(v90) = v83;
                  goto LABEL_121;
                case 0x17u:
                  v61 = v8 + 1;
                  v62 = &v7[v8];
                  v63 = v7[v8];
                  if (v7[v8] < 0)
                  {
                    if (v63 > 0xBF)
                    {
                      if (v63 > 0xDF)
                      {
                        if (v63 > 0xEF)
                        {
                          v63 = *&v7[v61];
                          v61 = v8 + 5;
                        }

                        else
                        {
                          v63 = ((v63 & 0xF) << 24) | (v7[v61] << 16) | (v62[2] << 8) | v62[3];
                          v61 = v8 + 4;
                        }
                      }

                      else
                      {
                        v63 = ((v63 & 0x1F) << 16) | (v7[v61] << 8) | v62[2];
                        v61 = v8 + 3;
                      }
                    }

                    else
                    {
                      v64 = v7[v61] | ((v63 & 0x3F) << 8);
                      v61 = v8 + 2;
                      v63 = v64;
                    }
                  }

                  DWORD2(v91) = v63;
                  *&v91 = &v7[v61];
                  DWORD2(v90) = strlen(&v7[v61]);
                  v88 = v61 + DWORD2(v90) + 1;
                  v85 = MurmurHash3_x86_32(&v7[v61], DWORD2(v90) + 1);
                  v9 = 0;
                  HIDWORD(v90) = v85 & 0x7FFFFFFF;
                  goto LABEL_121;
                case 0x18u:
                case 0x19u:
                case 0x34u:
                case 0x35u:
                  v27 = v8 + 1;
                  v28 = &v7[v8];
                  v29 = v7[v8];
                  if (v7[v8] < 0)
                  {
                    if (v29 > 0xBF)
                    {
                      if (v29 > 0xDF)
                      {
                        if (v29 > 0xEF)
                        {
                          v29 = *&v7[v27];
                          v27 = v8 + 5;
                        }

                        else
                        {
                          v29 = ((v29 & 0xF) << 24) | (v7[v27] << 16) | (v28[2] << 8) | v28[3];
                          v27 = v8 + 4;
                        }
                      }

                      else
                      {
                        v29 = ((v29 & 0x1F) << 16) | (v7[v27] << 8) | v28[2];
                        v27 = v8 + 3;
                      }
                    }

                    else
                    {
                      v30 = v7[v27] | ((v29 & 0x3F) << 8);
                      v27 = v8 + 2;
                      v29 = v30;
                    }
                  }

                  v9 = 0;
                  v88 = v27;
                  DWORD2(v90) = v29;
                  goto LABEL_121;
                case 0x1Au:
                case 0x1Bu:
                  goto LABEL_121;
                case 0x1Cu:
                case 0x1Eu:
                  *&v91 = &v7[v8];
                  DWORD2(v91) = strlen(&v7[v8]);
                  v40 = DWORD2(v91) + 1;
                  v88 = v8 + DWORD2(v91) + 1;
                  *(&v90 + 1) = DWORD1(v89) << 32;
                  v39 = &v7[v8];
                  goto LABEL_41;
                case 0x1Du:
                case 0x1Fu:
                  v87 = v2_readVInt64(v7, &v88);
                  snprintf(__str, 0x41uLL, "%lld", v87);
                  goto LABEL_40;
                case 0x20u:
                  v9 = 0;
                  *&v90 = v2_readVInt64(v7, &v88);
                  goto LABEL_121;
                case 0x2Du:
                case 0x2Eu:
                  v34 = v2_readVInt64(v7, &v88);
                  BYTE12(v91) = v34 & 1;
                  v32 = v34 >> 1;
                  goto LABEL_35;
                case 0x2Fu:
                case 0x30u:
                case 0x31u:
                  v31 = v2_readVInt64(v7, &v88);
                  BYTE12(v91) = v31 & 1;
                  BYTE13(v91) = (v31 & 2) != 0;
                  BYTE14(v91) = -1;
                  v32 = v31 >> 2;
                  goto LABEL_35;
                case 0x32u:
                case 0x33u:
                  v33 = v2_readVInt64(v7, &v88);
                  BYTE12(v91) = v33 & 1;
                  BYTE13(v91) = (v33 & 2) != 0;
                  BYTE14(v91) = (v33 >> 2) & 7;
                  v32 = v33 >> 5;
LABEL_35:
                  snprintf(__str, 0x41uLL, "%lld", v32);
LABEL_40:
                  *&v91 = __str;
                  DWORD2(v91) = strlen(__str);
                  *(&v90 + 1) = DWORD1(v89) << 32;
                  v39 = __str;
                  v40 = DWORD2(v91) + 1;
LABEL_41:
                  v41 = identifierHash(v39, v40);
                  v9 = 0;
                  v42 = *(&v90 + 1) | v41;
LABEL_120:
                  *(&v90 + 1) = v42;
                  goto LABEL_121;
                case 0x37u:
                  *(&v90 + 1) = v2_readVInt64(v7, &v88);
                  *&v91 = v2_readVInt64(v7, &v88);
                  v9 = 0;
                  *(&v91 + 1) = v2_readVInt64(v7, &v88);
                  goto LABEL_121;
                case 0x38u:
                  v49 = v8 + 1;
                  v50 = &v7[v8];
                  v51 = v7[v8];
                  if (v7[v8] < 0)
                  {
                    if (v51 > 0xBF)
                    {
                      if (v51 > 0xDF)
                      {
                        if (v51 > 0xEF)
                        {
                          v51 = *&v7[v49];
                          v49 = v8 + 5;
                        }

                        else
                        {
                          v51 = ((v51 & 0xF) << 24) | (v7[v49] << 16) | (v50[2] << 8) | v50[3];
                          v49 = v8 + 4;
                        }
                      }

                      else
                      {
                        v51 = ((v51 & 0x1F) << 16) | (v7[v49] << 8) | v50[2];
                        v49 = v8 + 3;
                      }
                    }

                    else
                    {
                      v52 = v7[v49] | ((v51 & 0x3F) << 8);
                      v49 = v8 + 2;
                      v51 = v52;
                    }
                  }

                  v88 = v49;
                  DWORD2(v90) = v51;
                  *&v91 = v2_readVInt64(v7, &v88);
                  *(&v91 + 1) = &v7[v88];
                  v9 = 0;
                  v65 = v88 + strlen(&v7[v88]);
                  goto LABEL_161;
                case 0x39u:
                  *(&v90 + 1) = &v7[v8];
                  v9 = 0;
                  v65 = v8 + strlen(&v7[v8]);
LABEL_161:
                  v44 = v65 + 1;
                  goto LABEL_162;
                case 0x3Au:
                  BYTE8(v90) = v2_readVInt64(v7, &v88);
                  WORD5(v90) = v2_readVInt64(v7, &v88);
                  *&v91 = v2_readVInt64(v7, &v88);
                  *(&v91 + 1) = v2_readVInt64(v7, &v88);
                  LODWORD(v92) = v2_readVInt64(v7, &v88);
                  v43 = v2_readVInt64(v7, &v88);
                  DWORD1(v92) = v43;
                  v9 = 0;
                  if (!v43)
                  {
                    goto LABEL_121;
                  }

                  *(&v92 + 1) = &v7[v88];
                  v44 = v88 + (v43 + 1);
LABEL_162:
                  v88 = v44;
LABEL_121:
                  (*(a2 + 16))(a2, &v89);
                  v8 = v88;
                  if (v88 >= v5)
                  {
                    goto LABEL_170;
                  }

                  continue;
                case 0x3Bu:
                  DWORD2(v90) = v2_readVInt64(v7, &v88);
                  HIDWORD(v90) = v2_readVInt64(v7, &v88);
                  LODWORD(v91) = v2_readVInt64(v7, &v88);
                  v9 = 0;
                  DWORD1(v91) = v2_readVInt64(v7, &v88);
                  goto LABEL_121;
                default:
                  fprintf(*v10, "### unknown type %d at offset %ld\n", v13 >> 1, v8);
                  goto LABEL_170;
              }
            }

            break;
          }

          fprintf(*v10, "### invalid type %d at offset %ld (during activity journal reset, was previous entry kSIActivitySyncError? %d)\n", v13, v8, v9);
        }

        while (v8 < v5);
      }

LABEL_170:
      munmap(v7, v5);
    }

    result = close(v4);
  }

  v86 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t oids_for_bundle_callback(void *__src, uint64_t a2, uint64_t *a3)
{
  v6 = a3[3];
  do
  {
    v7 = v6 + a2;
    v8 = a3[1];
    v9 = v8 - v6;
    if (v6 + a2 > v8)
    {
      v10 = v8 - v6;
    }

    else
    {
      v10 = a2;
    }

    memcpy((a3[4] + 8 * v6), __src, 8 * v10);
    v6 = a3[3] + v10;
    a3[3] = v6;
    if (v6 == a3[1])
    {
      v11 = *a3;
      v12 = a3[4];
      (*(a3[2] + 16))();
      v6 = 0;
      a3[3] = 0;
    }

    a2 -= v9;
  }

  while (v7 > v8 && a2 != 0);
  return 0;
}

uint64_t identifierHash(char *__str, int a2)
{
  if (a2 > 8 || ((__endptr = 0, result = strtol(__str, &__endptr, 10), !*__endptr) ? (v5 = result == 0) : (v5 = 1), v5))
  {

    return MurmurHash3_x86_32(__str, a2);
  }

  return result;
}

void _SIActivityDump(const char *a1, FILE *a2)
{
  v4 = CFCalendarCreateWithIdentifier(*MEMORY[0x1E695E4A8], *MEMORY[0x1E695E678]);
  v5 = CFTimeZoneCopySystem();
  CFCalendarSetTimeZone(v4, v5);
  CFRelease(v5);
  v11 = 0;
  v12 = &v11;
  v13 = 0x3800000000;
  v14 = 0u;
  v15 = 0u;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = ___SIActivityDump_block_invoke;
  v6[3] = &unk_1E8197590;
  v6[6] = a2;
  v6[7] = v4;
  v6[4] = &v11;
  v6[5] = &v7;
  si_activity_journal_playback(a1, v6);
  write_timeline((v12 + 3));
  fputs(v8[3], a2);
  fflush(a2);
  CFRelease(v4);
  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);
}

uint64_t write_timeline(uint64_t result)
{
  v1 = result;
  v11 = *MEMORY[0x1E69E9840];
  if ((write_timeline_init & 1) == 0)
  {
    result = sprintf(&write_timeline_result[write_timeline_offset], "\n%-20s %-20s %-15s|%-15s|%-15s\n", "Start Time", "End Time", "Add/Update", "Mail Add/Update", "Delete");
    write_timeline_offset += result;
    write_timeline_init = 1;
  }

  if (*(v1 + 16) || *(v1 + 20) || *(v1 + 24))
  {
    if (*v1 == 0.0 || (v2 = *(v1 + 8), v2 == 0.0) || v2 - *v1 >= 300.0)
    {
      v3 = CFCalendarCreateWithIdentifier(*MEMORY[0x1E695E4A8], *MEMORY[0x1E695E678]);
      v4 = CFTimeZoneCopySystem();
      CFCalendarSetTimeZone(v3, v4);
      CFRelease(v4);
      memset(v10, 0, sizeof(v10));
      memset(v9, 0, sizeof(v9));
      if (*v1 == 0.0)
      {
        date_string = "Unknown";
      }

      else
      {
        date_string = get_date_string(v3, v10, *v1);
      }

      v6 = *(v1 + 8);
      if (v6 == 0.0)
      {
        v7 = "Unknown";
      }

      else
      {
        v7 = get_date_string(v3, v9, v6);
      }

      result = sprintf(&write_timeline_result[write_timeline_offset], "%-20s %-20s %15d|%15d|%15d\n", date_string, v7, *(v1 + 16), *(v1 + 20), *(v1 + 24));
      write_timeline_offset += result;
      *v1 = *(v1 + 8);
      *(v1 + 24) = 0;
      *(v1 + 8) = 0;
      *(v1 + 16) = 0;
    }
  }

  else
  {
    *v1 = *(v1 + 8);
    *(v1 + 8) = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

const char *get_date_string(__CFCalendar *a1, char *a2, CFAbsoluteTime a3)
{
  v6 = 0;
  v7 = 0;
  v5 = 0;
  if (!CFCalendarDecomposeAbsoluteTime(a1, a3, "yMdHms", &v7 + 4, &v7, &v6 + 4, &v6, &v5 + 4, &v5))
  {
    return "";
  }

  snprintf(a2, 0x100uLL, "%04d-%02d-%02d %02d:%02d:%02d", HIDWORD(v7), v7, HIDWORD(v6), v6, HIDWORD(v5), v5);
  return a2;
}

BOOL _DocIDRemappingContextMatchAddress(uint64_t *a1, unint64_t a2)
{
  if (*a1 < 1)
  {
    return 0;
  }

  else
  {
    v2 = (a1[1] + 16);
    v3 = 1;
    v4 = *a1;
    v5 = 1;
    do
    {
      v6 = *v2;
      v7 = *v2 == -1 || v6 > a2;
      if (!v7 && v6 + 4 * *(v2 - 2) > a2)
      {
        break;
      }

      v5 = v3++ < *a1;
      v2 += 4;
      --v4;
    }

    while (v4);
  }

  return v5;
}

uint64_t _CIMetaInfoSync(uint64_t a1, int a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v11 = 5;
  v12 = *(a1 + 32);
  v13 = *(a1 + 48);
  if (fd_pwrite(*(a1 + 8), &v11, 0x1CuLL, 0) != 28)
  {
    v5 = *__error();
    if (v5)
    {
      v4 = v5;
    }

    else
    {
      v4 = 0xFFFFFFFFLL;
    }

    v6 = *__error();
    v7 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    *buf = 136315650;
    v15 = "_CIMetaInfoSync";
    v16 = 1024;
    v17 = 175;
    v18 = 1024;
    v19 = v4;
    v8 = "%s:%d: write err: %d";
    goto LABEL_13;
  }

  if (fd_sync(*(a1 + 8), a2) == -1)
  {
    v4 = *__error();
    v6 = *__error();
    v7 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
LABEL_10:
      *__error() = v6;
      goto LABEL_11;
    }

    *buf = 136315650;
    v15 = "_CIMetaInfoSync";
    v16 = 1024;
    v17 = 179;
    v18 = 1024;
    v19 = v4;
    v8 = "%s:%d: sync err: %d";
LABEL_13:
    _os_log_error_impl(&dword_1C278D000, v7, OS_LOG_TYPE_ERROR, v8, buf, 0x18u);
    goto LABEL_10;
  }

  v4 = 0;
LABEL_11:
  v9 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t CIMetaInfoCreateWithPrefix(int a1, uint64_t a2, unsigned int a3, int a4, int a5, const char *a6)
{
  v45 = *MEMORY[0x1E69E9840];
  bzero(v44, 0x400uLL);
  *a2 = a1;
  *(a2 + 16) = -1;
  *(a2 + 8) = 0;
  *(a2 + 32) = 0;
  *(a2 + 84) = versionTable[a3];
  *(a2 + 92) = a5;
  pthread_once(&sContentIndexInitOnce, _ContentIndexInit);
  bzero(__str, 0x400uLL);
  v12 = "indexState";
  if (a6)
  {
    v12 = __str;
    snprintf(__str, 0x400uLL, "%s.%s", a6, "indexState");
  }

  if (a4)
  {
    v13 = fd_create_protected(a1, v12, 0, 3u);
    if (v13)
    {
      v14 = v13;
      v36 = 0;
      v15 = _fd_acquire_fd(v13, &v36);
      if (v15 != -1)
      {
        v16 = v15;
        v17 = *__error();
        v18 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v28 = fd_realpath(*(a2 + 8), v44);
          v38 = "CIMetaInfoCreateWithPrefix";
          v29 = "";
          *buf = 136315650;
          if (v28)
          {
            v29 = v28;
          }

          v39 = 1024;
          v40 = 240;
          v41 = 2080;
          v42[0] = v29;
          _os_log_error_impl(&dword_1C278D000, v18, OS_LOG_TYPE_ERROR, "%s:%d: Tried to create index when index already existed %s", buf, 0x1Cu);
        }

        *__error() = v17;
        _fd_release_fd(v14, v16, 0, v36);
        fd_release(v14);
        v19 = 0xFFFFFFFFLL;
        goto LABEL_12;
      }

      fd_release(v14);
    }
  }

  v20 = fd_create_protected(a1, v12, 536872450, 3u);
  *(a2 + 8) = v20;
  v21 = _fd_acquire_fd(v20, (a2 + 24));
  *(a2 + 16) = v21;
  v19 = 0xFFFFFFFFLL;
  if (!*(a2 + 8) || v21 == -1 || (v19 = _CIMetaInfoSync(a2, 0), v19))
  {
LABEL_12:
    CIMetaInfoClose(a2);
    goto LABEL_13;
  }

  if (flock(*(a2 + 16), 6) != -1)
  {
    goto LABEL_17;
  }

  v24 = *__error();
  v25 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v30 = *__error();
    v31 = fd_realpath(*(a2 + 8), v44);
    *buf = 136315906;
    v32 = "";
    v38 = "CIMetaInfoCreateWithPrefix";
    v40 = 262;
    v39 = 1024;
    if (v31)
    {
      v32 = v31;
    }

    v41 = 1024;
    LODWORD(v42[0]) = v30;
    WORD2(v42[0]) = 2080;
    *(v42 + 6) = v32;
    _os_log_error_impl(&dword_1C278D000, v25, OS_LOG_TYPE_ERROR, "%s:%d: flock err: %d,  %s", buf, 0x22u);
  }

  *__error() = v24;
  if (flock(*(a2 + 16), 2) == -1)
  {
    v26 = *__error();
    v27 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v33 = *__error();
      v34 = fd_realpath(*(a2 + 8), v44);
      *buf = 136315906;
      v35 = "";
      v38 = "CIMetaInfoCreateWithPrefix";
      v40 = 264;
      v39 = 1024;
      if (v34)
      {
        v35 = v34;
      }

      v41 = 1024;
      LODWORD(v42[0]) = v33;
      WORD2(v42[0]) = 2080;
      *(v42 + 6) = v35;
      _os_log_error_impl(&dword_1C278D000, v27, OS_LOG_TYPE_ERROR, "%s:%d: flock err: %d,  %s", buf, 0x22u);
    }

    v19 = 0;
    *__error() = v26;
  }

  else
  {
LABEL_17:
    v19 = 0;
  }

LABEL_13:
  v22 = *MEMORY[0x1E69E9840];
  return v19;
}

void CIMetaInfoClose(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 != -1)
  {
    flock(v2, 8);
    _fd_release_fd(*(a1 + 8), *(a1 + 16), 0, *(a1 + 24));
    *(a1 + 16) = -1;
  }

  fd_release(*(a1 + 8));
  *(a1 + 8) = 0;
}

void _ContentIndexInit()
{
  v29 = *MEMORY[0x1E69E9840];
  v0 = _CFCopySystemVersionDictionary();
  if (v0)
  {
    v1 = v0;
    Value = CFDictionaryGetValue(v0, *MEMORY[0x1E695E1E8]);
    if (Value)
    {
      Copy = CFStringCreateCopy(0, Value);
    }

    else
    {
      Copy = 0;
    }

    CFRelease(v1);
  }

  else
  {
    Copy = 0;
  }

  *buffer = 0u;
  v28 = 0u;
  if (Copy)
  {
    v4 = Copy;
  }

  else
  {
    v4 = &stru_1F4284FD0;
  }

  if (!CFStringGetCString(&stru_1F4284FD0, buffer, 32, 0x8000100u))
  {
    buffer[0] = 0;
  }

  buildVersionCStr = strdup(buffer);
  if (!CFStringGetCString(v4, buffer, 32, 0x8000100u))
  {
    buffer[0] = 0;
  }

  sysVersionCStr = strdup(buffer);
  v5 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v7 = Mutable;
    mainPort = 0;
    if (!IOMasterPort(0, &mainPort))
    {
      v8 = IOBSDNameMatching(mainPort, 0, "en0");
      if (v8)
      {
        v9 = v8;
        v10 = CFDictionaryCreateMutable(v5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (v10)
        {
          v11 = v10;
          CFDictionarySetValue(v10, @"IOPrimaryInterface", *MEMORY[0x1E695E4D0]);
          v23 = v11;
          CFDictionarySetValue(v9, @"IOPropertyMatch", v11);
          existing = 0;
          if (!IOServiceGetMatchingServices(mainPort, v9, &existing))
          {
            v12 = existing;
            if (existing)
            {
              while (1)
              {
                v13 = IOIteratorNext(v12);
                if (!v13)
                {
                  break;
                }

                v14 = v13;
                CFArrayRemoveAllValues(v7);
                parent = 0;
                if (!IORegistryEntryGetParentEntry(v14, "IOService", &parent))
                {
                  CFProperty = IORegistryEntryCreateCFProperty(parent, @"IOMACAddress", v5, 0);
                  if (CFProperty)
                  {
                    v16 = CFProperty;
                    BytePtr = CFDataGetBytePtr(CFProperty);
                    for (i = 0; CFDataGetLength(v16) > i; ++i)
                    {
                      v19 = CFStringCreateWithFormat(v5, 0, @"%02x", BytePtr[i]);
                      CFArrayAppendValue(v7, v19);
                      CFRelease(v19);
                    }

                    CFRelease(v16);
                  }

                  IOObjectRelease(parent);
                }

                IOObjectRelease(v14);
                v12 = existing;
              }
            }
          }

          v20 = v23;
        }

        else
        {
          v20 = v9;
        }

        CFRelease(v20);
      }
    }

    v21 = CFStringCreateByCombiningStrings(v5, v7, @":");
    CFRelease(v7);
    if (v21)
    {
      if (!CFStringGetCString(v21, buffer, 32, 0x8000100u))
      {
        buffer[0] = 0;
      }

      CFRelease(v21);
    }
  }

  CFRelease(&stru_1F4284FD0);
  CFRelease(v4);
  v22 = *MEMORY[0x1E69E9840];
}

uint64_t CIMetaInfoOpenAndLock(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v80 = *MEMORY[0x1E69E9840];
  *v3 = v7;
  v9 = *(v3 + 8);
  if (v9)
  {
    fd_release(v9);
    *(v4 + 8) = 0;
  }

  bzero(v79, 0x400uLL);
  *(v4 + 16) = -1;
  *(v4 + 88) = v6;
  *(v4 + 92) = v2;
  pthread_once(&sContentIndexInitOnce, _ContentIndexInit);
  if (v6)
  {
    v10 = 0;
  }

  else
  {
    v10 = 536870914;
  }

  v11 = fd_create_protected(v8, "indexState", v10, 3u);
  *(v4 + 8) = v11;
  if (!v11)
  {
    v14 = *__error();
    v15 = *__error();
    v16 = _SILogForLogForCategory(10);
    v17 = dword_1EBF46AF4 < 3;
    if (os_log_type_enabled(v16, (dword_1EBF46AF4 < 3)))
    {
      v18 = fcntl(v8, 50, v79);
      if (v79[0])
      {
        v19 = v18 < 0;
      }

      else
      {
        v19 = 1;
      }

      v20 = "";
      if (!v19)
      {
        v20 = v79;
      }

      buf.f_bsize = 67109378;
      buf.f_iosize = v14;
      LOWORD(buf.f_blocks) = 2080;
      *(&buf.f_blocks + 2) = v20;
      _os_log_impl(&dword_1C278D000, v16, v17, "*warn* failed to create fd_ref err: %d,  %s", &buf, 0x12u);
    }

    *__error() = v15;
    bzero(&buf, 0x400uLL);
    snprintf(&buf, 0x400uLL, "failed to create meta info fd %d", v14);
    goto LABEL_27;
  }

  v12 = _fd_acquire_fd(v11, (v4 + 24));
  *(v4 + 16) = v12;
  if (v12 == -1)
  {
    v14 = *__error();
    v27 = *__error();
    v28 = _SILogForLogForCategory(10);
    v29 = dword_1EBF46AF4 < 3;
    if (os_log_type_enabled(v28, (dword_1EBF46AF4 < 3)))
    {
      v30 = fcntl(v8, 50, v79);
      if (v79[0])
      {
        v31 = v30 < 0;
      }

      else
      {
        v31 = 1;
      }

      v32 = "";
      if (!v31)
      {
        v32 = v79;
      }

      buf.f_bsize = 67109378;
      buf.f_iosize = v14;
      LOWORD(buf.f_blocks) = 2080;
      *(&buf.f_blocks + 2) = v32;
      _os_log_impl(&dword_1C278D000, v28, v29, "*warn* failed to open fd_ref err: %d,  %s", &buf, 0x12u);
    }

    *__error() = v27;
    bzero(&buf, 0x400uLL);
    snprintf(&buf, 0x400uLL, "failed to open meta info %d", v14);
LABEL_27:
    __si_set_error_str(1, "%s:%u: %s", v21, v22, v23, v24, v25, v26, "ContentIndexCommon.c");
    *__error() = v14;
    v13 = 0xFFFFFFFFLL;
    goto LABEL_28;
  }

  if ((v6 & 1) == 0 && flock(v12, 6) == -1)
  {
    accurate_realpath(".", v79);
    v35 = *__error();
    v36 = _SILogForLogForCategory(10);
    v37 = dword_1EBF46AF4 < 3;
    if (os_log_type_enabled(v36, (dword_1EBF46AF4 < 3)))
    {
      v38 = *__error();
      v39 = fd_realpath(*(v4 + 8), v79);
      v40 = "";
      if (v39)
      {
        v40 = v39;
      }

      buf.f_bsize = 67109378;
      buf.f_iosize = v38;
      LOWORD(buf.f_blocks) = 2080;
      *(&buf.f_blocks + 2) = v40;
      _os_log_impl(&dword_1C278D000, v36, v37, "*warn* flock err: %d,  %s", &buf, 0x12u);
    }

    *__error() = v35;
    bzero(&buf, 0x878uLL);
    if (fstatfs(*(v4 + 16), &buf))
    {
      v41 = *__error();
      v42 = *__error();
      v43 = _SILogForLogForCategory(10);
      v44 = dword_1EBF46AF4 < 3;
      if (os_log_type_enabled(v43, (dword_1EBF46AF4 < 3)))
      {
        *v76 = 67109120;
        v77 = v41;
        _os_log_impl(&dword_1C278D000, v43, v44, "*warn* Couldn't statfs the CIMetaInfo. errno:%d", v76, 8u);
      }

      *__error() = v42;
      bzero(v76, 0x400uLL);
      snprintf(v76, 0x400uLL, "failed to statfs meta info %d", v41);
      __si_set_error_str(1, "%s:%u: %s", v45, v46, v47, v48, v49, v50, "ContentIndexCommon.c");
      *__error() = v41;
      v13 = 4294967294;
    }

    else
    {
      v51 = *buf.f_fstypename == 1717726579 && *&buf.f_fstypename[4] == 115;
      if (v51 || (*buf.f_fstypename == 1718642273 ? (v52 = *&buf.f_fstypename[4] == 115) : (v52 = 0), v52 || *buf.f_fstypename == 7562862))
      {
        v67 = *__error();
        v68 = _SILogForLogForCategory(10);
        v69 = dword_1EBF46AF4 < 3;
        if (os_log_type_enabled(v68, (dword_1EBF46AF4 < 3)))
        {
          *v76 = 0;
          _os_log_impl(&dword_1C278D000, v68, v69, "*warn* Failed to acquire lock on SMB CIMetaInfo; it might already be open by another machine's mds_stores.", v76, 2u);
        }

        *__error() = v67;
        __si_set_error_str(1, "%s:%u: %s", v70, v71, v72, v73, v74, v75, "ContentIndexCommon.c");
        v13 = 4294967293;
      }

      else
      {
        v53 = *__error();
        v54 = _SILogForLogForCategory(10);
        v55 = dword_1EBF46AF4 < 3;
        if (os_log_type_enabled(v54, (dword_1EBF46AF4 < 3)))
        {
          v56 = *(v4 + 16);
          *v76 = 67109120;
          v77 = v56;
          _os_log_impl(&dword_1C278D000, v54, v55, "*warn* Trying to acquire lock on CIMetaInfo again fd:%d", v76, 8u);
        }

        *__error() = v53;
        if (!flock(*(v4 + 16), 2))
        {
          goto LABEL_10;
        }

        v57 = *__error();
        v58 = *__error();
        v59 = _SILogForLogForCategory(10);
        v60 = dword_1EBF46AF4 < 3;
        if (os_log_type_enabled(v59, (dword_1EBF46AF4 < 3)))
        {
          *v76 = 67109120;
          v77 = v57;
          _os_log_impl(&dword_1C278D000, v59, v60, "*warn* Failed to acquire lock on CIMetaInfo object: errno=%d", v76, 8u);
        }

        *__error() = v58;
        bzero(v76, 0x400uLL);
        snprintf(v76, 0x400uLL, "failed to flock meta info %d", v57);
        __si_set_error_str(1, "%s:%u: %s", v61, v62, v63, v64, v65, v66, "ContentIndexCommon.c");
        *__error() = v57;
        v13 = 4294967292;
      }
    }

LABEL_28:
    CIMetaInfoClose(v4);
    goto LABEL_29;
  }

LABEL_10:
  v13 = 0;
LABEL_29:
  v33 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t CIMetaInfoRead(uint64_t a1, int a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  if (!v2 || *(a1 + 16) == -1)
  {
    goto LABEL_12;
  }

  bzero(v30, 0x400uLL);
  memset(v23, 0, 28);
  if (fd_pread(v2, v23, 0x1CuLL, 0) != 28)
  {
    v9 = *__error();
    v10 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = fd_realpath(*(a1 + 8), v30);
      v25 = "CIMetaInfoRead";
      v13 = "";
      *buf = 136315650;
      if (v12)
      {
        v13 = v12;
      }

      v26 = 1024;
      v27 = 384;
      v28 = 2080;
      v29 = v13;
      _os_log_error_impl(&dword_1C278D000, v10, OS_LOG_TYPE_ERROR, "%s:%d: invalid generation file, resetting %s", buf, 0x1Cu);
    }

    *__error() = v9;
    goto LABEL_12;
  }

  if ((LODWORD(v23[0]) - 3) > 2)
  {
LABEL_12:
    result = 0xFFFFFFFFLL;
    goto LABEL_13;
  }

  v5 = HIDWORD(v23[0]);
  v6 = v23[1];
  *(a1 + 32) = HIDWORD(v23[0]);
  *(a1 + 36) = v6;
  if (v6 > v5)
  {
    v14 = __si_assert_copy_extra_332();
    __message_assert_336(v14, v15, v16, v17, v18, v19, v20, v21, "ContentIndexCommon.c");
    free(v14);
    if (__valid_fs(-1))
    {
      v22 = 2989;
    }

    else
    {
      v22 = 3072;
    }

    *v22 = -559038737;
    abort();
  }

  result = 0;
  *(a1 + 40) = *(&v23[1] + 4);
  if (a2)
  {
    v8 = 114;
  }

  else
  {
    v8 = 102;
  }

  *(a1 + 84) = v8;
LABEL_13:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void *ContentIndexListClone(__int128 *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x18uLL, 0x1080040A085CBA5uLL);
  v3 = v2;
  if (a1)
  {
    v4 = *a1;
    v2[2] = *(a1 + 2);
    *v2 = v4;
  }

  v5 = *(v2 + 3);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = 2;
  }

  *(v3 + 3) = v6;
  v7 = malloc_type_calloc(v6, 8uLL, 0x2004093837F09uLL);
  *v3 = v7;
  if (a1)
  {
    memcpy(v7, *a1, 8 * *(v3 + 3));
  }

  return v3;
}

void ContentIndexListFree(void **a1)
{
  if (a1)
  {
    free(*a1);

    free(a1);
  }
}

void ContentIndexListAppend(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = v4;
  if (v4 == *(a1 + 12))
  {
    v6 = 2 * v4;
    if (!v4)
    {
      v6 = 2;
    }

    *(a1 + 12) = v6;
    v7 = malloc_type_realloc(*a1, 8 * v6, 0x2004093837F09uLL);
    *a1 = v7;
    bzero(&v7[8 * v4], 8 * (*(a1 + 12) - v4));
    v5 = *(a1 + 8);
  }

  v8 = *a1;
  *(a1 + 8) = v5 + 1;
  v8[v5] = a2;
  if (*(a1 + 16) == -1)
  {
    v9 = atomic_load((a2 + 36));
    if ((v9 & 3) == 0 && (*(a2 + 15203) & 1) == 0)
    {
      *(a1 + 16) = v4;
    }
  }
}

int *ContentIndexListDump(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *__error();
  v3 = _SILogForLogForCategory(0);
  v4 = gSILogLevels[0] < 3;
  if (os_log_type_enabled(v3, (gSILogLevels[0] < 3)))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
    *buf = 134218496;
    v17 = a1;
    v18 = 1024;
    v19 = v5;
    v20 = 1024;
    v21 = v6;
    _os_log_impl(&dword_1C278D000, v3, v4, "*warn* indexSet:%p count:%d current:%d", buf, 0x18u);
  }

  result = __error();
  *result = v2;
  if (*(a1 + 8))
  {
    v8 = 0;
    do
    {
      v9 = *(*a1 + 8 * v8);
      v10 = *__error();
      v11 = _SILogForLogForCategory(0);
      v12 = gSILogLevels[0] < 3;
      if (os_log_type_enabled(v11, (gSILogLevels[0] < 3)))
      {
        v13 = *(v9 + 56);
        v14 = atomic_load((v9 + 36));
        *buf = 136315650;
        v17 = v9 + 15208;
        v18 = 1024;
        v19 = v13;
        v20 = 1024;
        v21 = v14;
        _os_log_impl(&dword_1C278D000, v11, v12, "*warn* \t%s id:%d flags:%x", buf, 0x18u);
      }

      result = __error();
      *result = v10;
      ++v8;
    }

    while (v8 < *(a1 + 8));
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ContentIndexCreateNew(uint64_t a1, const __CFString *a2, uint64_t a3, int a4, unsigned int a5, int a6, int a7, uint64_t a8, uint64_t a9, const void *a10, int a11)
{
  pthread_once(&sContentIndexInitOnce, _ContentIndexInit);
  if (a8)
  {
    v18 = _CICreateNew(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
  }

  else
  {
    v19 = *__error();
    v20 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, v20, OS_LOG_TYPE_DEFAULT, "Creating index without vector store", buf, 2u);
    }

    *__error() = v19;
    v18 = _CICreateNew(a1, a2, a3, a4, a5, a6, a7, 0, a9, a10, a11);
  }

  v21 = v18;
  if (v18)
  {
    v24 = 0;
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    *buf = 0u;
    v26 = 0u;
    v30[2] = 0;
    v31 = v18;
    v30[0] = &v31;
    v30[1] = 0x100000001;
    _ContentIndexSyncIndexBulk(0, v30, 0, 0, 1, buf, &v24, 0, 0);
  }

  return v21;
}

uint64_t ContentIndexGetVersionForDirectory(int a1)
{
  v13 = *MEMORY[0x1E69E9840];
  bzero(__str, 0x400uLL);
  snprintf(__str, 0x400uLL, "%s%s", "0.", "indexHead");
  v2 = openat(a1, __str, 0, 0);
  if (v2 == -1)
  {
    __error();
    v8 = 0xFFFFFFFFLL;
  }

  else
  {
    v3 = v2;
    __buf = -1;
    while (1)
    {
      v4 = pread(v3, &__buf, 4uLL, 0);
      v5 = g_prot_error_callback;
      if (v4 != -1 || g_prot_error_callback == 0)
      {
        break;
      }

      v7 = __error();
      if (((*(v5 + 16))(v5, v3, *v7, 4) & 1) == 0)
      {
        v8 = 0xFFFFFFFFLL;
        goto LABEL_13;
      }
    }

    if (v4 == 4)
    {
      v8 = __buf;
    }

    else
    {
      v8 = 0xFFFFFFFFLL;
    }

LABEL_13:
    close(v3);
  }

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t ContentIndexUpdateState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _BYTE *a9)
{
  MEMORY[0x1EEE9AC00](a1);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v64 = *MEMORY[0x1E69E9840];
  bzero(__str, 0x400uLL);
  if (v14)
  {
    v25 = "live.%d.";
    snprintf(__str, 0x400uLL, "live.%d.");
  }

  else
  {
    v25 = "%d.";
    snprintf(__str, 0x400uLL, "%d.");
  }

  snprintf(v44, 0x400uLL, v25, v12);
  v26 = 0;
  *a9 = 0;
  if (v10 > 2)
  {
    if (v10 != 3)
    {
      if (v10 != 4)
      {
        goto LABEL_52;
      }

      goto LABEL_11;
    }

    updated = indexUpdateHeader(v24);
    if (updated)
    {
LABEL_17:
      v26 = updated;
      goto LABEL_49;
    }

    bzero(v63, 0x400uLL);
    bzero(v62, 0x400uLL);
    v43 = 0;
    bzero(v61, 0x1000uLL);
    v42 = v61;
    snprintf(v63, 0x400uLL, "%s%s", __str, "indexHead");
    v28 = openat(v24, v63, 536870914, 0);
    if (v28 == -1)
    {
      if (*__error() != 22)
      {
        goto LABEL_48;
      }

      v28 = openat(v24, v63, 2, 0);
      if (v28 == -1)
      {
        goto LABEL_48;
      }
    }

    v29 = v28;
    while (1)
    {
      v30 = pread(v29, v61, 0x1000uLL, 0);
      v31 = g_prot_error_callback;
      if (v30 != -1 || g_prot_error_callback == 0)
      {
        break;
      }

      v33 = __error();
      if (((*(v31 + 16))(v31, v29, *v33, 4) & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    if (v30 != 4096)
    {
LABEL_40:
      close(v29);
      v26 = 0xFFFFFFFFLL;
      goto LABEL_49;
    }

    close(v29);
    bzero(buf, 0x3D68uLL);
    if ((indexRestoreHeaderFromBuffer(buf, &v42, v22, v20, v18, 0) & 1) == 0)
    {
      v35 = *__error();
      v36 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_47;
      }

      *v46 = 136315650;
      v47 = "fullShadowIndex";
      v48 = 1024;
      v49 = 3490;
      v50 = 2080;
      v51 = __str;
      v37 = "%s:%d: Unrecoverable error: Malformed index head file (%s)";
      goto LABEL_61;
    }

    v34 = atomic_load(v60);
    snprintf(v63, 0x400uLL, "%s%s", __str, "indexGroups");
    snprintf(v62, 0x400uLL, "%s%s", __str, "shadowIndexGroups");
    if (copyFileFallback(v24, v63, v24, v62, &v43, 1, 1))
    {
      if (v16 && (snprintf(v63, 0x400uLL, "%s%s", __str, "directoryStoreFile"), snprintf(v62, 0x400uLL, "%s%s", __str, "directoryStoreFile.shadow"), (copyFileFallback(v24, v63, v24, v62, &v43, 1, 1) & 1) == 0))
      {
        v35 = *__error();
        v36 = _SILogForLogForCategory(0);
        if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_47;
        }

        *v46 = 136315650;
        v47 = "fullShadowIndex";
        v48 = 1024;
        v49 = 3506;
        v50 = 2080;
        v51 = v63;
        v37 = "%s:%d: error copying (%s)";
      }

      else
      {
        if ((v34 & 2) != 0)
        {
LABEL_37:
          snprintf(v63, 0x400uLL, "%s%s", __str, "indexHead");
          snprintf(v62, 0x400uLL, "%s%s", __str, "shadowIndexHead");
          if (copyFileFallback(v24, v63, v24, v62, &v43, 1, 1))
          {
            goto LABEL_11;
          }

          v35 = *__error();
          v36 = _SILogForLogForCategory(0);
          if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_47;
          }

          *v46 = 136315650;
          v47 = "fullShadowIndex";
          v48 = 1024;
          v49 = 3555;
          v50 = 2080;
          v51 = v63;
          v37 = "%s:%d: error copying (%s)";
          goto LABEL_61;
        }

        snprintf(v63, 0x400uLL, "%s%s", __str, "indexTermIds");
        snprintf(v62, 0x400uLL, "%s%s", __str, "shadowIndexTermIds");
        if (copyFileFallback(v24, v63, v24, v62, &v43, 1, 1))
        {
          snprintf(v63, 0x400uLL, "%s%s", __str, "indexPositionTable");
          snprintf(v62, 0x400uLL, "%s%s", __str, "shadowIndexPositionTable");
          if (copyFileFallback(v24, v63, v24, v62, &v43, 1, 1))
          {
            snprintf(v63, 0x400uLL, "%s%s", __str, "indexDirectory");
            snprintf(v62, 0x400uLL, "%s%s", __str, "shadowIndexDirectory");
            if ((copyFileFallback(v24, v63, v24, v62, &v43, 1, 1) & 1) == 0)
            {
              v35 = *__error();
              v36 = _SILogForLogForCategory(0);
              if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_47;
              }

              *v46 = 136315650;
              v47 = "fullShadowIndex";
              v48 = 1024;
              v49 = 3532;
              v50 = 2080;
              v51 = v63;
              v37 = "%s:%d: error copying (%s)";
              goto LABEL_61;
            }

            snprintf(v63, 0x400uLL, "%s%s", __str, "indexCompactDirectory");
            snprintf(v62, 0x400uLL, "%s%s", __str, "shadowIndexCompactDirectory");
            if ((copyFileFallback(v24, v63, v24, v62, &v43, 1, 1) & 1) == 0)
            {
              v35 = *__error();
              v36 = _SILogForLogForCategory(0);
              if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_47;
              }

              *v46 = 136315650;
              v47 = "fullShadowIndex";
              v48 = 1024;
              v49 = 3539;
              v50 = 2080;
              v51 = v63;
              v37 = "%s:%d: error copying (%s)";
              goto LABEL_61;
            }

            snprintf(v63, 0x400uLL, "%s%s", __str, "indexArrays");
            snprintf(v62, 0x400uLL, "%s%s", __str, "shadowIndexArrays");
            if ((copyFileFallback(v24, v63, v24, v62, &v43, 1, 1) & 1) == 0)
            {
              v35 = *__error();
              v36 = _SILogForLogForCategory(0);
              if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_47;
              }

              *v46 = 136315650;
              v47 = "fullShadowIndex";
              v48 = 1024;
              v49 = 3546;
              v50 = 2080;
              v51 = v63;
              v37 = "%s:%d: error copying (%s)";
              goto LABEL_61;
            }

            goto LABEL_37;
          }

          v35 = *__error();
          v36 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            *v46 = 136315650;
            v47 = "fullShadowIndex";
            v48 = 1024;
            v49 = 3524;
            v50 = 2080;
            v51 = v63;
            v37 = "%s:%d: error copying (%s)";
            goto LABEL_61;
          }

LABEL_47:
          *__error() = v35;
LABEL_48:
          v26 = 0xFFFFFFFFLL;
          goto LABEL_49;
        }

        v35 = *__error();
        v36 = _SILogForLogForCategory(0);
        if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_47;
        }

        *v46 = 136315650;
        v47 = "fullShadowIndex";
        v48 = 1024;
        v49 = 3516;
        v50 = 2080;
        v51 = v63;
        v37 = "%s:%d: error copying (%s)";
      }

LABEL_61:
      _os_log_error_impl(&dword_1C278D000, v36, OS_LOG_TYPE_ERROR, v37, v46, 0x1Cu);
      goto LABEL_47;
    }

    v35 = *__error();
    v36 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *v46 = 136315650;
      v47 = "fullShadowIndex";
      v48 = 1024;
      v49 = 3498;
      v50 = 2080;
      v51 = v63;
      v37 = "%s:%d: error copying (%s)";
      goto LABEL_61;
    }

    goto LABEL_47;
  }

  if (v10 == 1)
  {
    updated = indexUpdateHeader(v24);
    if (!updated)
    {
      if (!recoverIndex(v24))
      {
        goto LABEL_48;
      }

LABEL_11:
      v26 = indexUpdateHeader(v24);
      if (!v26)
      {
        *a9 = 4;
        goto LABEL_52;
      }

      goto LABEL_49;
    }

    goto LABEL_17;
  }

  if (v10 != 2)
  {
    goto LABEL_52;
  }

  v26 = indexUpdateHeader(v24);
  if (!v26)
  {
    *a9 = 2;
    goto LABEL_52;
  }

LABEL_49:
  v38 = *__error();
  v39 = _SILogForLogForCategory(10);
  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    v53 = "_CIUpdateState";
    v54 = 1024;
    v55 = 310;
    v56 = 1024;
    v57 = v10;
    v58 = 1024;
    v59 = v26;
    _os_log_error_impl(&dword_1C278D000, v39, OS_LOG_TYPE_ERROR, "%s:%d: update state (%d) failed err:%d", buf, 0x1Eu);
  }

  *__error() = v38;
LABEL_52:
  v40 = *MEMORY[0x1E69E9840];
  return v26;
}

uint64_t ContentIndexOpenBulk(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, const void *a11)
{
  MEMORY[0x1EEE9AC00](a1);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v341 = *MEMORY[0x1E69E9840];
  pthread_once(&sContentIndexInitOnce, _ContentIndexInit);
  if ((v18 & 0x100) != 0)
  {
    v33 = 111;
  }

  else
  {
    v33 = 95;
  }

  if ((v18 & 0x100) != 0)
  {
    v34 = 114;
  }

  else
  {
    v34 = 102;
  }

  v35 = *v26;
  if (*v16)
  {
    __si_set_error_str(1, "%s:%u: %s", v27, v28, v29, v30, v31, v32, "ContentIndex.c");
    v36 = 0xFFFFFFFFLL;
    goto LABEL_24;
  }

  v288 = v18;
  v286 = v14;
  *v14 = 0;
  *v12 = 0;
  v37 = 0x1EBF46000uLL;
  if (!*(v26 + 1))
  {
    v48 = *__error();
    v49 = _SILogForLogForCategory(10);
    v50 = 2 * (dword_1EBF46AF4 < 4);
    if (os_log_type_enabled(v49, v50))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, v49, v50, "No meta info", buf, 2u);
    }

    *__error() = v48;
    goto LABEL_17;
  }

  if (v26[8] < v26[9])
  {
    v38 = *__error();
    v39 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = v26[8];
      v41 = v26[9];
      *buf = 134218240;
      v313 = v40;
      v314 = 2048;
      v315 = v41;
      _os_log_impl(&dword_1C278D000, v39, OS_LOG_TYPE_DEFAULT, "invalid meta info, cleanGeneration:%ld, shadowedGeneraton:%ld", buf, 0x16u);
    }

    *__error() = v38;
    bzero(buf, 0x400uLL);
    snprintf(buf, 0x400uLL, "invalid meta info %d, %d", v26[8], v26[9]);
LABEL_17:
    __si_set_error_str(1, "%s:%u: %s", v42, v43, v44, v45, v46, v47, "ContentIndex.c");
    v51 = 0;
    goto LABEL_18;
  }

  v281 = v34;
  v282 = v33;
  v273 = v12;
  v278 = v20;
  if (v24)
  {
    *(v24 + 96) = 0;
    *(v24 + 64) = 0u;
    *(v24 + 80) = 0u;
    *(v24 + 32) = 0u;
    *(v24 + 48) = 0u;
    *v24 = 0u;
    *(v24 + 16) = 0u;
  }

  memset(v319, 0, 255);
  bzero(v318, 0x400uLL);
  bzero(buf, 0x3D68uLL);
  v305 = 0;
  v51 = copyVolumeInfoStr(v35);
  v57 = fcntl(v35, 50, v318);
  if (v318[0])
  {
    v64 = v57 < 0;
  }

  else
  {
    v64 = 1;
  }

  if (v64)
  {
    v65 = 0;
  }

  else
  {
    v65 = v318;
  }

  v274 = v65;
  if (!v26[8])
  {
    if ((v18 & 0x1001) == 1)
    {
      snprintf(v319, 0xFFuLL, "%d.", 0);
      v109 = createIndex(v35, v319, 0, v51, v18, 0, 0, &v305, v26[21], a9, a10, a11, v26[23]);
      if (v109)
      {
        v110 = v109;
        ContentIndexListAppend(v22, v109);
        *(v110 + 40) = 1;
        snprintf(v319, 0xFFuLL, "live.%d.", 0);
        v111 = createIndex(v35, v319, 0, v51, v18, 0, 1, &v305, v26[21], a9, a10, a11, v26[23]);
        if (v111)
        {
          v112 = v111;
          ContentIndexListAppend(v20, v111);
          *(v112 + 40) = 2;
          v36 = 1;
          goto LABEL_19;
        }

        v212 = *__error();
        v215 = _SILogForLogForCategory(10);
        if (os_log_type_enabled(v215, OS_LOG_TYPE_ERROR))
        {
          v322[0].i32[0] = 136316162;
          *(v322[0].i64 + 4) = "_CIOpenBulk";
          v322[0].i16[6] = 1024;
          *(&v322[0].i32[3] + 2) = 401;
          v322[1].i16[1] = 2080;
          *(v322[1].i64 + 4) = v274;
          v322[1].i16[6] = 2080;
          *(&v322[1].i64[1] + 6) = v319;
          v322[2].i16[3] = 1024;
          v322[2].i32[2] = -1;
          _os_log_error_impl(&dword_1C278D000, v215, OS_LOG_TYPE_ERROR, "%s:%d: Failed creating %s/%s, result:%d", v322, 0x2Cu);
        }
      }

      else
      {
        v212 = *__error();
        v213 = _SILogForLogForCategory(10);
        if (os_log_type_enabled(v213, OS_LOG_TYPE_ERROR))
        {
          v322[0].i32[0] = 136316162;
          *(v322[0].i64 + 4) = "_CIOpenBulk";
          v322[0].i16[6] = 1024;
          *(&v322[0].i32[3] + 2) = 405;
          v322[1].i16[1] = 2080;
          *(v322[1].i64 + 4) = v274;
          v322[1].i16[6] = 2080;
          *(&v322[1].i64[1] + 6) = v319;
          v322[2].i16[3] = 1024;
          v322[2].i32[2] = 0;
          _os_log_error_impl(&dword_1C278D000, v213, OS_LOG_TYPE_ERROR, "%s:%d: Failed creating %s/%s, result:%d", v322, 0x2Cu);
        }
      }

      *__error() = v212;
      __si_set_error_str(1, "%s:%u: %s", v216, v217, v218, v219, v220, v221, "ContentIndex.c");
      goto LABEL_18;
    }

    __si_set_error_str(1, "%s:%u: %s", v58, v59, v60, v61, v62, v63, "ContentIndex.c");
    __si_set_rebuild_reason(v146, v147, "%s:%u: %s", "ContentIndex.c", 380, "no data in index");
    v143 = *__error();
    v148 = _SILogForLogForCategory(10);
    if (!os_log_type_enabled(v148, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_147;
    }

    v322[0].i64[0] = -4227858176;
    v145 = "no data in index - rebuilding, result:%d";
    v149 = v148;
    v150 = 8;
LABEL_146:
    _os_log_impl(&dword_1C278D000, v149, OS_LOG_TYPE_DEFAULT, v145, v322, v150);
    goto LABEL_147;
  }

  v287 = v16;
  v285 = v51;
  v296 = v35;
  v304 = 0;
  v280 = (v18 >> 8) & 1;
  v289 = v26;
  v279 = v22;
  v272 = v24;
  if ((v18 & 2) == 0)
  {
    v275 = 0;
    v66 = 1;
    goto LABEL_36;
  }

  v113 = 0;
  v275 = 0;
  while (1)
  {
    if (v113)
    {
      v114 = "live.%d.";
    }

    else
    {
      v114 = "%d.";
    }

    v115 = 11;
    if (!v113)
    {
      v115 = 10;
    }

    v116 = v26[v115];
    if (v116 < 1)
    {
      goto LABEL_126;
    }

    v117 = v116 + 1;
    while (1)
    {
      snprintf(v319, 0xFFuLL, v114, (v117 - 2));
      v118 = v289[21];
      bzero(v322, 0x1000uLL);
      bzero(&v335, 0x400uLL);
      bzero(buf, 0x3D68uLL);
      snprintf(&v335, 0x400uLL, "%s%s", v319, "indexHead");
      v119 = fd_create_protected(v296, &v335, 0, 3u);
      v120 = v119;
      if (!v119)
      {
        goto LABEL_121;
      }

      v121 = fd_pread(v119, v322, 0x1000uLL, 0);
      if (v121 != 4096)
      {
        break;
      }

      v297[0] = v322;
      v122 = indexRestoreFromBuffer(buf, v297, v118, v282, v281, &v304, v280);
      fd_release(v120);
      if ((v122 & 1) == 0)
      {
        goto LABEL_122;
      }

      v123 = *__error();
      v124 = _SILogForLogForCategory(10);
      v125 = 2 * (dword_1EBF46AF4 < 4);
      if (os_log_type_enabled(v124, v125))
      {
        v322[0].i32[0] = 136315650;
        *(v322[0].i64 + 4) = v319;
        v322[0].i16[6] = 2048;
        *(&v322[0].i64[1] + 6) = v317;
        v322[1].i16[3] = 1024;
        v322[1].i32[2] = v316[9];
        _os_log_impl(&dword_1C278D000, v124, v125, "preflight index %s base:%ld count:%d", v322, 0x1Cu);
      }

      *__error() = v123;
      v126 = atomic_load(v316);
      if (v126 - 1 >= 2 && v126 != -1073623027)
      {
        if (v126 != -804450864)
        {
          v128 = *__error();
          v151 = _SILogForLogForCategory(10);
          if (os_log_type_enabled(v151, OS_LOG_TYPE_DEFAULT))
          {
            v322[0].i32[0] = 136315394;
            *(v322[0].i64 + 4) = v274;
            v322[0].i16[6] = 2080;
            *(&v322[0].i64[1] + 6) = v319;
            v152 = "Unclean shutdown of %s/%s; needs recovery";
            v153 = v151;
            v154 = 22;
            goto LABEL_240;
          }

          goto LABEL_241;
        }

        v275 = 1;
      }

      if (--v117 <= 1)
      {
        goto LABEL_126;
      }
    }

    if (v121 != -1)
    {
      *__error() = 22;
    }

LABEL_121:
    fd_release(v120);
LABEL_122:
    v127 = v304;
    v128 = *__error();
    v129 = _SILogForLogForCategory(10);
    v130 = os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT);
    if (v127 != 1)
    {
      break;
    }

    if (v130)
    {
      v131 = *__error();
      v322[0].i32[0] = 136315394;
      *(v322[0].i64 + 4) = v319;
      v322[0].i16[6] = 1024;
      *(&v322[0].i32[3] + 2) = v131;
      _os_log_impl(&dword_1C278D000, v129, OS_LOG_TYPE_DEFAULT, "%s invalid head (%d), will rebuild", v322, 0x12u);
    }

    *__error() = v128;
LABEL_126:
    v26 = v289;
    if (!v113)
    {
      v113 = 1;
      if ((v304 & 1) == 0)
      {
        continue;
      }
    }

    if (v304)
    {
      goto LABEL_242;
    }

    v66 = 0;
    goto LABEL_36;
  }

  if (v130)
  {
    v214 = *__error();
    v322[0].i32[0] = 136315394;
    *(v322[0].i64 + 4) = v319;
    v322[0].i16[6] = 1024;
    *(&v322[0].i32[3] + 2) = v214;
    v152 = "%s invalid head (%d), will try to recover";
    v153 = v129;
    v154 = 18;
LABEL_240:
    _os_log_impl(&dword_1C278D000, v153, OS_LOG_TYPE_DEFAULT, v152, v322, v154);
  }

LABEL_241:
  v26 = v289;
  *__error() = v128;
  if (v304)
  {
LABEL_242:
    v36 = 4294967294;
    goto LABEL_243;
  }

  v66 = 1;
LABEL_36:
  v67 = 0;
  v68 = 0;
  v69 = 0;
  v283 = v288 & 0x1000;
  v70 = 1;
  do
  {
    v71 = v70;
    if (v69)
    {
      v72 = "live.%d.";
    }

    else
    {
      v72 = "%d.";
    }

    if (v69)
    {
      v73 = 11;
    }

    else
    {
      v73 = 10;
    }

    v74 = v26[v73];
    if (v288 & 0x1000) == 0 || (v69)
    {
      bzero(v322, 0x400uLL);
      if (v74 >= 1)
      {
        v75 = 0;
        do
        {
          snprintf(v319, 0xFFuLL, v72, v75);
          index_id = index_read_index_id(v296, v319, v322[0].i8);
          if (index_id)
          {
            ++v68;
            (*(a10 + 16))(a10, index_id);
          }

          v75 = (v75 + 1);
        }

        while (v74 != v75);
        v67 += v74;
        v26 = v289;
      }
    }

    v77 = a9;
    v70 = 0;
    v69 = 1;
  }

  while ((v71 & 1) != 0);
  v37 = 0x1EBF46000uLL;
  v78 = v287;
  if (v67 != v68)
  {
    v79 = *__error();
    v80 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
    {
      v322[0].i32[0] = 136315906;
      *(v322[0].i64 + 4) = "_CIOpenBulk";
      v322[0].i16[6] = 1024;
      *(&v322[0].i32[3] + 2) = 484;
      v322[1].i16[1] = 1024;
      v322[1].i32[1] = v67;
      v322[1].i16[4] = 1024;
      *(&v322[1].i32[2] + 2) = v68;
      _os_log_error_impl(&dword_1C278D000, v80, OS_LOG_TYPE_ERROR, "%s:%d: indexes seen:%d does not match indexes with ids:%d", v322, 0x1Eu);
    }

    *__error() = v79;
  }

  v81 = v278;
  if ((v66 & 1) == 0)
  {
    v82 = *__error();
    v83 = _SILogForLogForCategory(10);
    v84 = 2 * (dword_1EBF46AF4 < 4);
    if (os_log_type_enabled(v83, v84))
    {
      v322[0].i16[0] = 0;
      _os_log_impl(&dword_1C278D000, v83, v84, "Open index - no recovery path", v322, 2u);
    }

    v85 = __error();
    v86 = 0;
    v87 = 0;
    *v85 = v82;
    v88 = v288;
    v294 = 0u;
    v295 = 0u;
    v292 = 0u;
    v293 = 0u;
    v290 = 0u;
    v291 = 0u;
    v89 = a11;
    do
    {
      v90 = 0;
      if (v87)
      {
        v91 = "live.%d.";
      }

      else
      {
        v91 = "%d.";
      }

      if (v87)
      {
        v92 = v81;
      }

      else
      {
        v92 = v279;
      }

      if (v87)
      {
        v93 = 11;
      }

      else
      {
        v93 = 10;
      }

      if (v87)
      {
        v94 = 1;
      }

      else
      {
        v94 = v283 == 0;
      }

      if (v94)
      {
        v95 = v26[v93];
        if (v95 < 1)
        {
          v105 = 0;
          v81 = v278;
        }

        else
        {
          v276 = v87;
          v96 = 0;
          while (1)
          {
            *&v325 = 0;
            v324 = 0u;
            v323 = 0u;
            memset(v322, 0, sizeof(v322));
            snprintf(v319, 0xFFuLL, v91, v96);
            v97 = openIndex(v296, v319, v317, v285, (v288 >> 3) & 1, v88, v322, &v305, v287, v26[21], v77, a10, v89, v26[23]);
            if (!v97)
            {
              break;
            }

            v98 = v97;
            v99 = *__error();
            v100 = _SILogForLogForCategory(10);
            v101 = 2 * (dword_1EBF46AF4 < 4);
            if (os_log_type_enabled(v100, v101))
            {
              v102 = *(v98 + 80);
              v103 = *(v98 + 68);
              v335 = 136315650;
              v336 = v319;
              v337 = 2048;
              v338 = v102;
              v339 = 1024;
              LODWORD(v340) = v103;
              _os_log_impl(&dword_1C278D000, v100, v101, "index %s base:%ld count:%d", &v335, 0x1Cu);
            }

            *__error() = v99;
            v104 = *(v98 + 15560);
            if (v104 >= *(v98 + 15568))
            {
              v104 = *(v98 + 15568);
            }

            if (v104 > *v286)
            {
              *v286 = v104;
            }

            ContentIndexListAppend(v92, v98);
            v292 = vaddq_s64(v322[3], v292);
            v293 = vaddq_s64(v322[2], v293);
            v294 = vaddq_s64(v322[1], v294);
            v295 = vaddq_s64(v322[0], v295);
            v290 = vaddq_s64(v324, v290);
            v291 = vaddq_s64(v323, v291);
            v86 += v325;
            v96 = (v96 + 1);
            v77 = a9;
            v26 = v289;
            v88 = v288;
            v89 = a11;
            if (v95 == v96)
            {
              v90 = 0;
              v105 = 0;
LABEL_87:
              v81 = v278;
              goto LABEL_88;
            }
          }

          v90 = *v287 == 0;
          if (*v287)
          {
            v105 = -1;
            v26 = v289;
            goto LABEL_87;
          }

          v106 = *__error();
          v107 = _SILogForLogForCategory(10);
          v26 = v289;
          v81 = v278;
          if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
          {
            v335 = 136315394;
            v336 = v274;
            v337 = 2080;
            v338 = v319;
            _os_log_impl(&dword_1C278D000, v107, OS_LOG_TYPE_DEFAULT, "Could not open %s/%s; needs recovery", &v335, 0x16u);
          }

          v108 = __error();
          v105 = 0;
          *v108 = v106;
          *v286 = 0;
          v88 = v288;
          v89 = a11;
LABEL_88:
          v87 = v276;
        }
      }

      else
      {
        v105 = 0;
      }

      if (v105 | v87)
      {
        break;
      }

      ++v87;
    }

    while (!v90);
    v132 = !v90;
    if (v105)
    {
      v132 = 1;
    }

    v37 = 0x1EBF46000uLL;
    v78 = v287;
    if (v132)
    {
      LODWORD(v35) = v296;
      if (!v105 && *(v279 + 8) | v283)
      {
LABEL_152:
        if ((v288 & 0x1000) != 0)
        {
          v155 = -1;
        }

        else
        {
          v155 = 3;
        }

        if (v275)
        {
          v36 = v155;
        }

        else
        {
          v36 = 0;
        }

        goto LABEL_281;
      }

      goto LABEL_268;
    }
  }

  v133 = *__error();
  v134 = _SILogForLogForCategory(10);
  v135 = 2 * (dword_1EBF46AF4 < 4);
  if (os_log_type_enabled(v134, v135))
  {
    v322[0].i16[0] = 0;
    _os_log_impl(&dword_1C278D000, v134, v135, "Open index - recovery path", v322, 2u);
  }

  *__error() = v133;
  _CIIndexSetRemoveAllValues(v279);
  _CIIndexSetRemoveAllValues(v81);
  v51 = v285;
  if ((v288 & 0x1000) != 0)
  {
    v143 = *__error();
    v144 = _SILogForLogForCategory(10);
    LODWORD(v35) = v296;
    if (!os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_147;
    }

    v322[0].i32[0] = 136315394;
    *(v322[0].i64 + 4) = v274;
    v322[0].i16[6] = 2080;
    *(&v322[0].i64[1] + 6) = v319;
    v145 = "recovery not allowed for %s/%s due to locked indexing";
LABEL_145:
    v149 = v144;
    v150 = 22;
    goto LABEL_146;
  }

  v35 = v296;
  v142 = v288;
  if ((v288 & 4) == 0)
  {
    if (!__si_invalid_term_update_set_key)
    {
      __si_set_error_str(1, "%s:%u: %s", v136, v137, v138, v139, v140, v141, "ContentIndex.c");
    }

    v143 = *__error();
    v144 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
    {
      v322[0].i32[0] = 136315394;
      *(v322[0].i64 + 4) = v274;
      v322[0].i16[6] = 2080;
      *(&v322[0].i64[1] + 6) = v319;
      v145 = "recovery not allowed for %s/%s";
      goto LABEL_145;
    }

LABEL_147:
    *__error() = v143;
LABEL_18:
    v36 = 0xFFFFFFFFLL;
    goto LABEL_19;
  }

  v86 = 0;
  v156 = 0;
  v294 = 0u;
  v295 = 0u;
  v292 = 0u;
  v293 = 0u;
  v290 = 0u;
  v291 = 0u;
  v157 = 1;
  v81 = v278;
  while (1)
  {
    v158 = v157;
    v159 = (v157 & 1) == 0;
    v160 = "%d.";
    if (v159)
    {
      v160 = "live.%d.";
    }

    __format = v160;
    v161 = v279;
    if (v159)
    {
      v161 = v81;
    }

    v277 = v161;
    v162 = v159 ? 52 : 48;
    v163 = *(v26 + v162);
    if (v163)
    {
      break;
    }

LABEL_231:
    v157 = 0;
    v26 = v289;
    if ((v158 & 1) == 0)
    {
      if (*(v279 + 8))
      {
        if (v156)
        {
          *(v289 + 5) = *(v289 + 6);
          v36 = 2;
          goto LABEL_281;
        }

        goto LABEL_152;
      }

      goto LABEL_268;
    }
  }

  v271 = v158;
  v164 = 0;
  v270 = v156 + v163;
  while (2)
  {
    v303 = 0;
    v301 = 0u;
    v302 = 0u;
    v299 = 0u;
    v300 = 0u;
    *v297 = 0u;
    v298 = 0u;
    snprintf(v319, 0xFFuLL, __format, v164);
    if ((v142 & 8) == 0)
    {
      v184 = v289[21];
      if (recoverIndex(v35))
      {
        v172 = openIndex(v35, v319, v317, v285, 0, v142, v297, &v305, v78, v289[21], a9, a10, a11, v289[23]);
        v185 = *__error();
        v186 = _SILogForLogForCategory(10);
        v187 = os_log_type_enabled(v186, OS_LOG_TYPE_DEFAULT);
        if (v172)
        {
          if (v187)
          {
            goto LABEL_224;
          }

          goto LABEL_225;
        }

        if (v187)
        {
          v322[0].i32[0] = 136315394;
          *(v322[0].i64 + 4) = v274;
          v322[0].i16[6] = 2080;
          *(&v322[0].i64[1] + 6) = v319;
          _os_log_impl(&dword_1C278D000, v186, OS_LOG_TYPE_DEFAULT, "could not open %s/%s", v322, 0x16u);
        }

        *__error() = v185;
        __si_set_error_str(1, "%s:%u: %s", v230, v231, v232, v233, v234, v235, "ContentIndex.c");
        v78 = v287;
      }

      else
      {
        v222 = *__error();
        v223 = _SILogForLogForCategory(10);
        if (os_log_type_enabled(v223, OS_LOG_TYPE_DEFAULT))
        {
          v322[0].i32[0] = 136315394;
          *(v322[0].i64 + 4) = v274;
          v322[0].i16[6] = 2080;
          *(&v322[0].i64[1] + 6) = v319;
          _os_log_impl(&dword_1C278D000, v223, OS_LOG_TYPE_DEFAULT, "could not recover %s/%s", v322, 0x16u);
        }

        *__error() = v222;
        __si_set_error_str(1, "%s:%u: %s", v224, v225, v226, v227, v228, v229, "ContentIndex.c");
      }

      if ((v271 & 1) == 0)
      {
        goto LABEL_261;
      }

      goto LABEL_260;
    }

    v165 = v317;
    v166 = v289[21];
    v167 = v289[23];
    bzero(&v335, 0x400uLL);
    bzero(v322, 0x1000uLL);
    v305 = -1;
    v168 = *__error();
    v169 = _SILogForLogForCategory(10);
    v170 = 2 * (dword_1EBF46AF4 < 4);
    if (os_log_type_enabled(v169, v170))
    {
      *v321 = 136315138;
      *&v321[4] = v319;
      _os_log_impl(&dword_1C278D000, v169, v170, "open index at %s", v321, 0xCu);
    }

    *__error() = v168;
    v171 = malloc_type_calloc(1uLL, 0x3D68uLL, 0x10F00405C9458FEuLL);
    v172 = v171;
    if (v171)
    {
      initIndex(v171, a11);
      __strlcpy_chk();
      *(v172 + 10) = v165;
      *(v172 + 22) = 1657;
      *(v172 + 16) = v296;
      *(v172 + 3929) = v167;
      v172[15202] = (v288 & 0x10) != 0;
      snprintf(&v335, 0x400uLL, "%s%s", v319, "shadowIndexHead");
      v173 = open_index_file(v296, &v335, 0, 4096, 4096, 0, 0, 0, &v305);
      *(v172 + 1810) = v173;
      v37 = 0x1EBF46000uLL;
      if (v173)
      {
        v174 = fd_pread(v173, v322, 0x1000uLL, 0);
        v81 = v278;
        if (v174 != 4096)
        {
          if (v174 != -1)
          {
            v175 = -1;
            goto LABEL_258;
          }

          v175 = *__error();
          if (v175)
          {
            goto LABEL_258;
          }
        }

        *v321 = v322;
        if (indexRestoreFromBuffer(v172, v321, v166, v282, v281, 0, v280))
        {
          v172[15203] = 1;
          v176 = atomic_load(v172 + 9);
          v177 = atomic_load(v172 + 9);
          v178 = atomic_load(v172 + 8);
          if (v178 == -804450864 || (v179 = atomic_load(v172 + 8), v179 == -1073623027))
          {
            snprintf(&v335, 0x400uLL, "%s%s", v319, "indexIds");
            v180 = *(v172 + 17);
            v181 = *(v172 + 18);
            v182 = 8 * v180;
            v183 = v180 >= 2 ? 8 * v180 : 0;
            if (v180 <= v181)
            {
              v182 = 8 * v181;
            }

            else
            {
              *(v172 + 18) = v180;
            }

            v188 = open_index_file(v296, &v335, 0, v182, v183, 0, v172 + 1801, 1, &v305);
            *(v172 + 1806) = v188;
            if (v188)
            {
              snprintf(&v335, 0x400uLL, "%s%s", v319, "indexBigDates");
              v189 = *(v172 + 17);
              if (v189 >= 2)
              {
                v190 = 4 * v189;
              }

              else
              {
                v190 = 0;
              }

              *(v172 + 1807) = open_index_file(v296, &v335, 0, 4 * *(v172 + 18), v190, 0, v172 + 1802, 1, &v305);
              if ((v288 & 0x100) != 0)
              {
                snprintf(&v335, 0x400uLL, "%s%s", v319, "indexScores");
                v191 = *(v172 + 17);
                if (v191 >= 2)
                {
                  v192 = 8 * v191;
                }

                else
                {
                  v192 = 0;
                }

                *(v172 + 1808) = open_index_file(v296, &v335, 0, 8 * *(v172 + 18), v192, 0, v172 + 1803, 1, &v305);
              }

              snprintf(&v335, 0x400uLL, "%s%s", v319, "shadowIndexGroups");
              v193 = *(v172 + 18);
              if (v172[45] == 1)
              {
                v194 = *(v172 + 17);
              }

              else
              {
                v193 = (4 * v193 + 4) / 5;
                v194 = (4 * *(v172 + 17) + 4) / 5u;
              }

              v195 = open_index_file(v296, &v335, 0, v193, v194, 0, v172 + 1804, 1, &v305);
              *(v172 + 1809) = v195;
              if (v195)
              {
                v196 = (v177 & 2) != 0 ? "indexTermIds" : "shadowIndexTermIds";
                if (openPayload((v172 + 4944), *(v172 + 16), v319, "indexPostings", v196, &v335, 1, (v176 & 4) != 0, 1u, *(v172 + 1), *(v172 + 617)))
                {
                  v197 = (v177 & 2) != 0 ? "indexPositionTable" : "shadowIndexPositionTable";
                  if (openPayload((v172 + 9664), *(v172 + 16), v319, "indexPositions", v197, &v335, 1, (v176 & 4) != 0, 1u, *(v172 + 1), *(v172 + 617)))
                  {
                    if (bt_openTrie((v172 + 96), *(v172 + 16), v319, (v176 >> 2) & 1, 1, (v177 & 2) == 0, *(v172 + 1), *(v172 + 617)))
                    {
                      if ((v288 & 0x40) == 0 || (v198 = openForwardStore(v296, v319, 0, 1, 1, *(v172 + 617)), (*(v172 + 616) = v198) != 0))
                      {
                        if (_os_feature_enabled_impl() && v172[15714] == 1)
                        {
                          v199 = *__error();
                          v200 = _SILogForLogForCategory(10);
                          if (os_log_type_enabled(v200, OS_LOG_TYPE_DEFAULT))
                          {
                            v201 = *(v172 + 14);
                            v320[0] = 67109120;
                            v320[1] = v201;
                            _os_log_impl(&dword_1C278D000, v200, OS_LOG_TYPE_DEFAULT, "open vector index shadow for indexid %d", v320, 8u);
                          }

                          *__error() = v199;
                          if (*(v172 + 14))
                          {
                            v306 = MEMORY[0x1E69E9820];
                            v307 = 0x40000000;
                            v308 = __openIndexShadow_block_invoke;
                            v309 = &__block_descriptor_tmp_3365;
                            v310 = v172;
                            v311 = v319;
                            openVectorIndex();
                          }
                        }

                        v172[15204] = 1;
                        v172[8] = 1;
                        v305 = 0;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      v81 = v278;
      if (v305)
      {
        goto LABEL_259;
      }

      v185 = *__error();
      v186 = _SILogForLogForCategory(10);
      v35 = v296;
      if (os_log_type_enabled(v186, OS_LOG_TYPE_DEFAULT))
      {
LABEL_224:
        v202 = *(v172 + 10);
        v203 = *(v172 + 17);
        v322[0].i32[0] = 136315650;
        *(v322[0].i64 + 4) = v319;
        v322[0].i16[6] = 2048;
        *(&v322[0].i64[1] + 6) = v202;
        v322[1].i16[3] = 1024;
        v322[1].i32[2] = v203;
        _os_log_impl(&dword_1C278D000, v186, OS_LOG_TYPE_DEFAULT, "index %s base:%ld count:%d", v322, 0x1Cu);
      }

LABEL_225:
      *__error() = v185;
      ContentIndexListAppend(v277, v172);
      v204 = v299;
      v205 = v300;
      v206 = *v297;
      v207 = v298;
      v208 = v301;
      v209 = v302;
      v210 = v303;
      v211 = *(v172 + 1945);
      if (v211 >= *(v172 + 1946))
      {
        v211 = *(v172 + 1946);
      }

      if (v211 > *v286)
      {
        *v286 = v211;
      }

      v292 = vaddq_s64(v205, v292);
      v293 = vaddq_s64(v204, v293);
      v294 = vaddq_s64(v207, v294);
      v295 = vaddq_s64(v206, v295);
      v290 = vaddq_s64(v209, v290);
      v291 = vaddq_s64(v208, v291);
      v86 += v210;
      v164 = (v164 + 1);
      ++v156;
      v78 = v287;
      v142 = v288;
      if (v163 == v164)
      {
        v156 = v270;
        v158 = v271;
        goto LABEL_231;
      }

      continue;
    }

    break;
  }

  v175 = -1;
  v37 = 0x1EBF46000;
  v81 = v278;
LABEL_258:
  v305 = v175;
LABEL_259:
  LODWORD(v35) = v296;
  freeIndex(v172);
  __si_set_error_str(1, "%s:%u: %s", v236, v237, v238, v239, v240, v241, "ContentIndex.c");
  v78 = v287;
  if ((v271 & 1) == 0)
  {
    goto LABEL_261;
  }

LABEL_260:
  if (*(v279 + 8) != v163)
  {
    goto LABEL_268;
  }

LABEL_261:
  v242 = *(v81 + 8);
  if (!v242)
  {
    v242 = *(v279 + 8);
    if (v242 && v156 && !*v78)
    {
      v81 = v279;
      goto LABEL_273;
    }

    goto LABEL_268;
  }

  if (!v156 || *v78)
  {
LABEL_268:
    _CIIndexSetRemoveAllValues(v279);
    _CIIndexSetRemoveAllValues(v81);
    if (*v78)
    {
      __si_set_error_str(1, "%s:%u: %s", v243, v244, v245, v246, v247, v248, "ContentIndex.c");
    }

    v36 = 0xFFFFFFFFLL;
    goto LABEL_271;
  }

LABEL_273:
  v249 = *(*v81 + 8 * (v242 - 1));
  *v273 = *(v249 + 80) + *(v249 + 68);
  v297[0] = *v286;
  v334 = 0u;
  v333 = 0u;
  v332 = 0u;
  v331 = 0u;
  v330 = 0u;
  v329 = 0u;
  v328 = 0u;
  v327 = 0u;
  v326 = 0u;
  v325 = 0u;
  v324 = 0u;
  v323 = 0u;
  memset(v322, 0, sizeof(v322));
  v250 = localtime(v297);
  strftime(v322[0].i8, 0x100uLL, "%F %T", v250);
  v251 = *__error();
  v252 = _SILogForLogForCategory(10);
  v253 = v289;
  if (os_log_type_enabled(v252, OS_LOG_TYPE_DEFAULT))
  {
    v254 = *v273;
    v335 = 136315650;
    v336 = v322;
    v337 = 2048;
    v338 = v254;
    v339 = 2080;
    v340 = v249 + 15208;
    _os_log_impl(&dword_1C278D000, v252, OS_LOG_TYPE_DEFAULT, "recover needed, scan date: %s, last valid doc id:%ld, %s", &v335, 0x20u);
  }

  *__error() = v251;
  v255 = *(v278 + 8);
  if (v255 < v289[13])
  {
    do
    {
      v256 = *__error();
      v257 = _SILogForLogForCategory(10);
      v258 = 2 * (*(v37 + 2804) < 4);
      if (os_log_type_enabled(v257, v258))
      {
        v322[0].i32[0] = 136315394;
        *(v322[0].i64 + 4) = v274;
        v322[0].i16[6] = 2080;
        *(&v322[0].i64[1] + 6) = v319;
        _os_log_impl(&dword_1C278D000, v257, v258, "deleting index %s/%s", v322, 0x16u);
      }

      *__error() = v256;
      snprintf(v319, 0xFFuLL, "live.%d.", v255);
      index_DeleteIndex(0, v296, v319, 1);
      ++v255;
      v253 = v289;
      v37 = 0x1EBF46000uLL;
    }

    while (v255 < v289[13]);
    v255 = *(v278 + 8);
  }

  v259 = *(v279 + 8);
  v253[12] = v259;
  v253[13] = v255;
  v253[10] = v259;
  v253[11] = v255;
  v36 = 2;
  LODWORD(v35) = v296;
LABEL_281:
  if (v272)
  {
    *v272 = v295;
    v272[1] = v294;
    v272[2] = v293;
    v272[3] = v292;
    v272[4] = v291;
    v272[5] = v290;
    v272[6].i64[0] = v86;
    v260 = *__error();
    v261 = _SILogForLogForCategory(10);
    v262 = 2 * (*(v37 + 2804) < 4);
    if (os_log_type_enabled(v261, v262))
    {
      v263 = v272[1].i32[2] + v272[3].i64[0];
      v264 = v272[2].i32[0] + v272[3].i64[1];
      v265 = v272[2].i64[1] + v272[2].i64[1];
      v266 = v272[4].i64[1];
      v267 = v272[5].i64[0];
      v268 = v272[5].i64[1];
      v269 = v272[6].i64[0];
      v322[0].i32[0] = 134219520;
      *(v322[0].i64 + 4) = v263;
      v322[0].i16[6] = 2048;
      *(&v322[0].i64[1] + 6) = v264;
      v322[1].i16[3] = 2048;
      v322[1].i64[1] = v265;
      v322[2].i16[0] = 1024;
      *(v322[2].i32 + 2) = v266;
      v322[2].i16[3] = 1024;
      v322[2].i32[2] = v267;
      v322[2].i16[6] = 1024;
      *(&v322[2].i32[3] + 2) = v268;
      v322[3].i16[1] = 1024;
      v322[3].i32[1] = v269;
      _os_log_impl(&dword_1C278D000, v261, v262, "limbo counts live:%ld scan:%ld recover:%ld internal:%d priority:%d setAttr:%d migrate:%d", v322, 0x38u);
    }

    *__error() = v260;
LABEL_243:
    LODWORD(v35) = v296;
  }

LABEL_271:
  v51 = v285;
LABEL_19:
  free(v51);
  if (g_fd_list)
  {
    _fd_close_inactive(v35, 0, 0, v35 == -1);
  }

  v52 = *__error();
  v53 = _SILogForLogForCategory(10);
  v54 = 2 * (*(v37 + 2804) < 4);
  if (os_log_type_enabled(v53, v54))
  {
    *buf = 67109120;
    LODWORD(v313) = v36;
    _os_log_impl(&dword_1C278D000, v53, v54, "Open index bulk: %d", buf, 8u);
  }

  *__error() = v52;
LABEL_24:
  v55 = *MEMORY[0x1E69E9840];
  return v36;
}

uint64_t ContentIndexCloseIndexBulk_Step1(uint64_t result, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v8 = result;
  v15 = a4[2];
  v16 = a4[3];
  v17 = *(a4 + 8);
  v13 = *a4;
  v14 = a4[1];
  if (a2 && *(a2 + 8))
  {
    v9 = 0;
    do
    {
      result = *(*a2 + 8 * v9);
      if (!atomic_load((result + 15192)))
      {
        result = indexClosing(result);
      }

      ++v9;
    }

    while (v9 < *(a2 + 8));
  }

  if (a3 && *(a3 + 8))
  {
    v11 = 0;
    do
    {
      result = *(*a3 + 8 * v11);
      if (!atomic_load((result + 15192)))
      {
        result = indexClosing(result);
      }

      ++v11;
    }

    while (v11 < *(a3 + 8));
  }

  if (v8)
  {
    if ((*(v8 + 88) & 1) == 0)
    {
      v20 = v15;
      v21 = v16;
      v22 = v17;
      v18 = v13;
      v19 = v14;
      return _ContentIndexSyncIndexBulk(v8, a2, a3, 2, 0, &v18, a5, 0, 0);
    }
  }

  else
  {
    v20 = v15;
    v21 = v16;
    v22 = v17;
    v18 = v13;
    v19 = v14;
    return _ContentIndexSyncIndexBulk(0, a2, a3, 2, 0, &v18, a5, 0, 0);
  }

  return result;
}

int *ContentIndexUpdateTimeStamp(int *result, uint64_t a2, int a3, int a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = atomic_load(result + 9);
  if ((v4 & 3) == 0 && (*(result + 15203) & 1) == 0)
  {
    v7 = result + 3890;
    v8 = *&result[2 * a3 + 3890];
    if (v8 >= a2)
    {
      if (v8 > a2 && a4 != 0)
      {
        v10 = *__error();
        v11 = _SILogForLogForCategory(0);
        v12 = gSILogLevels[0] < 3;
        if (os_log_type_enabled(v11, (gSILogLevels[0] < 3)))
        {
          v13 = *&v7[2 * a3];
          v15 = 134218240;
          v16 = a2;
          v17 = 2048;
          v18 = v13;
          _os_log_impl(&dword_1C278D000, v11, v12, "*warn* time stamp should be more recent new:%ld, old:%ld", &v15, 0x16u);
        }

        result = __error();
        *result = v10;
      }
    }

    else
    {
      *&v7[2 * a3] = a2;
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ContentIndexCalculateSize(uint64_t a1, char a2)
{
  v3 = atomic_load((a1 + 36));
  v4 = atomic_load((a1 + 36));
  v5 = 4096;
  if ((a2 & 2) != 0)
  {
    v5 = 0x2000;
  }

  v6 = 72;
  if ((v3 & 4) != 0)
  {
    v6 = 68;
  }

  v7 = *(a1 + v6);
  if (*(a1 + 45) == 1)
  {
    v8 = v5 + v7;
    v9 = v7;
    if ((a2 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v9 = ((4 * v7 + 4) * 0x3333333333333334uLL) >> 64;
  v8 = v9 + v5;
  if ((a2 & 2) != 0)
  {
LABEL_9:
    v8 += v9;
  }

LABEL_10:
  v10 = v8 + 8 * v7 + *(a1 + 4968);
  if ((v3 & 4) == 0)
  {
    v11 = *(a1 + 9404);
    v10 += 8 * v11;
    v12 = (a2 & 2) != 0 ? 8 * v11 : 0;
    v13 = v10 + v12;
    if ((v4 & 1) == 0)
    {
      v10 = v13;
    }
  }

  if (a2)
  {
    v10 += 28 * *(a1 + 9400);
  }

  v14 = *(a1 + 9688) + v10;
  v15 = (a2 & 2) == 0;
  if ((v3 & 4) != 0)
  {
    v16 = (a1 + 240);
    v17 = v4 | v15;
    v18 = 488;
    v19 = 128;
  }

  else
  {
    v20 = *(a1 + 14124);
    v21 = v14 + 8 * v20;
    v17 = v4 | v15;
    if (v17)
    {
      v22 = 0;
    }

    else
    {
      v22 = 8 * v20;
    }

    v14 = v21 + v22;
    v16 = (a1 + 244);
    v18 = 480;
    v19 = 136;
  }

  v23 = 1028 * *v16 + 1028;
  v24 = *(a1 + v19);
  if (v17)
  {
    v25 = 0;
  }

  else
  {
    v25 = v23;
  }

  if (v17)
  {
    v26 = 0;
  }

  else
  {
    v26 = v24;
  }

  v27 = *(a1 + v18);
  if (v17)
  {
    v28 = 0;
  }

  else
  {
    v28 = v27;
  }

  v29 = v24 + v23 + v26 + v25 + v27 + v28 + v14;
  v30 = *(a1 + 4928);
  if (v30)
  {
    v29 += *(v30 + 232);
    if ((v17 & 1) == 0)
    {
      v29 += *(v30 + 240);
    }
  }

  if ((a2 & 4) != 0 && (v3 & 4) == 0 && (v4 & 1) == 0)
  {
    db_read_lock(a1 + 14720);
    v31 = *(a1 + 14392);
    if (v31)
    {
      atomic_fetch_add(v31, 1u);
      pthread_mutex_lock((a1 + 14720));
      v32 = *(a1 + 14916) - 1;
      *(a1 + 14916) = v32;
      if (!v32)
      {
        db_rwlock_wakeup(a1 + 14720, 0, 0);
      }

      pthread_mutex_unlock((a1 + 14720));
      v39 = 0;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      _TermUpdateSetGetStats(v31, &v35, 0);
      TermUpdateSetRelease(v31);
      v29 += v35 + v36 + v37;
    }

    else
    {
      pthread_mutex_lock((a1 + 14720));
      v33 = *(a1 + 14916) - 1;
      *(a1 + 14916) = v33;
      if (!v33)
      {
        db_rwlock_wakeup(a1 + 14720, 0, 0);
      }

      pthread_mutex_unlock((a1 + 14720));
    }
  }

  return v29;
}

uint64_t ContentIndexSyncIndex(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v3;
  v7 = *(a2 + 64);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  v8[2] = 0;
  v9 = a1;
  v8[0] = &v9;
  v8[1] = 0x100000001;
  return _ContentIndexSyncIndexBulk(0, v8, 0, 1, 0, v6, a3, 0, 0);
}

uint64_t ContentIndexDeleteIndex(uint64_t result, int a2)
{
  v6 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    strncpy(__dst, (result + 15208), 0xFFuLL);
    result = index_DeleteIndex(v3, *(v3 + 64), __dst, a2);
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ContentIndexResetVectorIndex(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = a1 + 12288;
  _db_write_lock(a1 + 14720);
  v3 = *(a1 + 4912);
  if (v3)
  {
    IVFVectorIndex_s::~IVFVectorIndex_s((v3 + 8));
    MEMORY[0x1C691FEF0](v3, 0x1032C40E78FF076);
    *(a1 + 4912) = 0;
  }

  bzero(v12, 0x400uLL);
  v4 = fcntl(*(a1 + 64), 50, v12);
  if (v12[0])
  {
    v5 = v4 < 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = v12;
  }

  IVFVectorIndex_s::unlink(v6, (a1 + 15208), 0);
  if ((*(v2 + 2915) & 1) == 0 && *(v2 + 3426) == 1)
  {
    v7 = *(a1 + 64);
    v8 = *(a1 + 14384);
    v9 = *(a1 + 56);
    IVFVectorIndex_s::unlink(".", (a1 + 15208), 0);
    operator new();
  }

  v10 = *MEMORY[0x1E69E9840];

  return db_write_unlock(a1 + 14720);
}

int *ContentIndexUpdatePath(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6)
{
  v49 = *MEMORY[0x1E69E9840];
  if (*(a1 + 14392))
  {
    goto LABEL_19;
  }

  HIDWORD(v13) = qos_class_self() - 9;
  LODWORD(v13) = HIDWORD(v13);
  v12 = v13 >> 2;
  if (v12 > 6)
  {
    v14 = 0;
  }

  else
  {
    v14 = dword_1C2BFF8F0[v12];
  }

  pthread_mutex_lock((a1 + 14720));
  if (!*(a1 + 14904) && !*(a1 + 14916) && (*(a1 + 14932) & 1) == 0)
  {
    if (v14 > 5)
    {
LABEL_65:
      *(a1 + 14904) = pthread_self();
      goto LABEL_9;
    }

    v43 = v14 - 6;
    v44 = (a1 + 16 * v14 + 14784);
    while (!*v44)
    {
      v44 += 2;
      v39 = __CFADD__(v43++, 1);
      if (v39)
      {
        goto LABEL_65;
      }
    }
  }

  db_rwlock_wait(a1 + 14720, v14, 2);
LABEL_9:
  pthread_mutex_unlock((a1 + 14720));
  if (!*(a1 + 14392))
  {
    if (*(a1 + 46))
    {
      v15 = 32;
    }

    else
    {
      v15 = 0;
    }

    v16 = TermUpdateSetCreate(_indexProgress, a1, *(a1 + 80), *(a1 + 68), v15, *(a1 + 14384), *(a1 + 56), *(a1 + 4936));
    if (!v16)
    {
      v40 = *__error();
      v41 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v45 = 136315394;
        v46 = "_CIUpdatePath";
        v47 = 1024;
        v48 = 4446;
        _os_log_error_impl(&dword_1C278D000, v41, OS_LOG_TYPE_ERROR, "%s:%d: TermUpdateSetCreate failed", &v45, 0x12u);
      }

      result = __error();
      *result = v40;
      goto LABEL_59;
    }

    if (*(a1 + 15202) == 1)
    {
      *(v16 + 76) = getPropertyStringCallback;
    }

    *(v16 + 35) = a1 + 14184;
    __dmb(0xBu);
    *(a1 + 14392) = v16;
  }

  pthread_mutex_lock((a1 + 14720));
  *(a1 + 14924) = 0;
  v17 = *(a1 + 14896);
  *(a1 + 14896) = 0u;
  v18 = *(a1 + 14916) != 0;
  *(a1 + 14932) = 0;
  db_rwlock_wakeup(a1 + 14720, v18, 0);
  pthread_mutex_unlock((a1 + 14720));
  if (v17)
  {
    pthread_override_qos_class_end_np(v17);
  }

LABEL_19:
  if (!a3)
  {
    goto LABEL_25;
  }

  if (a3 >= 2)
  {
    v19 = a3 - 1;
    v20 = (a4 + 8);
    a3 = 1;
    do
    {
      v22 = *v20++;
      v21 = v22;
      v23 = (a4 + 8 * a3);
      if (v22 != *(v23 - 1))
      {
        ++a3;
        *v23 = v21;
      }

      --v19;
    }

    while (v19);
LABEL_25:
    if (!a5)
    {
      goto LABEL_35;
    }

    goto LABEL_28;
  }

  a3 = 1;
  if (!a5)
  {
    goto LABEL_35;
  }

LABEL_28:
  if (a5 < 2)
  {
    a5 = 1;
  }

  else
  {
    v24 = a5 - 1;
    v25 = (a6 + 8);
    a5 = 1;
    do
    {
      v27 = *v25++;
      v26 = v27;
      v28 = (a6 + 8 * a5);
      if (v27 != *(v28 - 1))
      {
        ++a5;
        *v28 = v26;
      }

      --v24;
    }

    while (v24);
  }

LABEL_35:
  v29 = *(a1 + 14392);
  HIDWORD(v31) = qos_class_self() - 9;
  LODWORD(v31) = HIDWORD(v31);
  v30 = v31 >> 2;
  if (v30 > 6)
  {
    v32 = 0;
  }

  else
  {
    v32 = dword_1C2BFF8F0[v30];
  }

  pthread_mutex_lock((v29 + 304));
  if (*(v29 + 488) || *(v29 + 500) || (*(v29 + 516) & 1) != 0)
  {
LABEL_41:
    db_rwlock_wait(v29 + 304, v32, 2);
    goto LABEL_42;
  }

  if (v32 <= 5)
  {
    v37 = v32 - 6;
    v38 = (v29 + 16 * v32 + 368);
    while (!*v38)
    {
      v38 += 2;
      v39 = __CFADD__(v37++, 1);
      if (v39)
      {
        goto LABEL_55;
      }
    }

    goto LABEL_41;
  }

LABEL_55:
  *(v29 + 488) = pthread_self();
LABEL_42:
  pthread_mutex_unlock((v29 + 304));
  ++*(v29 + 112);
  if (a3)
  {
    doChildFile(v29 + 88, (v29 + 48), a3, a4, a2, 1);
  }

  if (a5)
  {
    doChildFile(v29 + 88, (v29 + 48), a5, a6, a2, 2);
  }

  pthread_mutex_lock((v29 + 304));
  *(v29 + 508) = 0;
  v33 = *(v29 + 480);
  *(v29 + 480) = 0;
  *(v29 + 488) = 0;
  v34 = *(v29 + 500) != 0;
  *(v29 + 516) = 0;
  db_rwlock_wakeup(v29 + 304, v34, 0);
  result = pthread_mutex_unlock((v29 + 304));
  if (!v33)
  {
LABEL_59:
    v42 = *MEMORY[0x1E69E9840];
    return result;
  }

  v36 = *MEMORY[0x1E69E9840];

  return pthread_override_qos_class_end_np(v33);
}
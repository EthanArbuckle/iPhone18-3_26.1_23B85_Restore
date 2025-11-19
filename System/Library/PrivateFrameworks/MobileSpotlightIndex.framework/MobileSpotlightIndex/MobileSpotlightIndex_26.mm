uint64_t isOptionalSearchTermSuffixToRemove(const void **a1, const __CFArray *a2, CFIndex a3, uint64_t a4)
{
  if (!*(a4 + 24))
  {
    return 0;
  }

  result = CFLocaleCopyCurrent();
  if (result)
  {
    v9 = result;
    v10 = MEMORY[0x1C691EAF0]();
    HasPrefix = CFStringHasPrefix(v10, @"en");
    CFRelease(v9);
    result = std::__find[abi:nn200100]<std::__hash_const_iterator<std::__hash_node<std::string,void *> *>,std::__hash_const_iterator<std::__hash_node<std::string,void *> *>,std::string,std::__identity>(*(a4 + 16), a1);
    if (HasPrefix)
    {
      if (!result)
      {
        return result;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(a2, a3);
      AttributeIndexFromTokenInfo = getAttributeIndexFromTokenInfo(ValueAtIndex);
      if (CFArrayGetCount(a2) - 1 == a3)
      {
        return 1;
      }

      v14 = CFArrayGetValueAtIndex(a2, a3 + 1);
      if (AttributeIndexFromTokenInfo < getAttributeIndexFromTokenInfo(v14))
      {
        return 1;
      }

      if (!v14)
      {
        return 0;
      }

      TopTokenIDFromTokenInfo = getTopTokenIDFromTokenInfo(v14);
      v15 = TopTokenIDFromTokenInfo == -1 || TopTokenIDFromTokenInfo == 1;
    }

    else
    {
      v15 = result == 0;
    }

    return !v15;
  }

  return result;
}

uint64_t **std::__find[abi:nn200100]<std::__hash_const_iterator<std::__hash_node<std::string,void *> *>,std::__hash_const_iterator<std::__hash_node<std::string,void *> *>,std::string,std::__identity>(uint64_t **a1, const void **a2)
{
  v2 = a1;
  if (a1)
  {
    v3 = *(a2 + 23);
    if (v3 >= 0)
    {
      v4 = *(a2 + 23);
    }

    else
    {
      v4 = a2[1];
    }

    if (v3 >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    do
    {
      v6 = *(v2 + 39);
      v7 = v6;
      if (v6 < 0)
      {
        v6 = v2[3];
      }

      if (v6 == v4)
      {
        v8 = v7 >= 0 ? (v2 + 2) : v2[2];
        if (!memcmp(v8, v5, v4))
        {
          break;
        }
      }

      v2 = *v2;
    }

    while (v2);
  }

  return v2;
}

void ___ZL29llmSearchTermSuffixesToRemovev_block_invoke()
{
  v78.__r_.__value_.__r.__words[0] = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:nn200100]<0>(&__str, "appointment");
  std::string::basic_string[abi:nn200100]<0>(v3, "appointments");
  std::string::basic_string[abi:nn200100]<0>(v4, "trip");
  std::string::basic_string[abi:nn200100]<0>(v5, "trips");
  std::string::basic_string[abi:nn200100]<0>(v6, "reservation");
  std::string::basic_string[abi:nn200100]<0>(v7, "reservations");
  std::string::basic_string[abi:nn200100]<0>(v8, "party");
  std::string::basic_string[abi:nn200100]<0>(v9, "parties");
  std::string::basic_string[abi:nn200100]<0>(v10, "lesson");
  std::string::basic_string[abi:nn200100]<0>(v11, "lessons");
  std::string::basic_string[abi:nn200100]<0>(v12, "class");
  std::string::basic_string[abi:nn200100]<0>(v13, "classes");
  std::string::basic_string[abi:nn200100]<0>(v14, "order");
  std::string::basic_string[abi:nn200100]<0>(v15, "orders");
  std::string::basic_string[abi:nn200100]<0>(v16, "celebration");
  std::string::basic_string[abi:nn200100]<0>(v17, "celebrations");
  std::string::basic_string[abi:nn200100]<0>(v18, "confirmation");
  std::string::basic_string[abi:nn200100]<0>(v19, "confirmations");
  std::string::basic_string[abi:nn200100]<0>(v20, "ride");
  std::string::basic_string[abi:nn200100]<0>(v21, "rides");
  std::string::basic_string[abi:nn200100]<0>(v22, "number");
  std::string::basic_string[abi:nn200100]<0>(v23, "numbers");
  std::string::basic_string[abi:nn200100]<0>(v24, "conference");
  std::string::basic_string[abi:nn200100]<0>(v25, "conferences");
  std::string::basic_string[abi:nn200100]<0>(v26, "proposal");
  std::string::basic_string[abi:nn200100]<0>(v27, "proposals");
  std::string::basic_string[abi:nn200100]<0>(v28, "hotel");
  std::string::basic_string[abi:nn200100]<0>(v29, "hotels");
  std::string::basic_string[abi:nn200100]<0>(v30, "booking");
  std::string::basic_string[abi:nn200100]<0>(v31, "bookings");
  std::string::basic_string[abi:nn200100]<0>(v32, "presentation");
  std::string::basic_string[abi:nn200100]<0>(v33, "presentations");
  std::string::basic_string[abi:nn200100]<0>(v34, "ticket");
  std::string::basic_string[abi:nn200100]<0>(v35, "tickets");
  std::string::basic_string[abi:nn200100]<0>(v36, "plan");
  std::string::basic_string[abi:nn200100]<0>(v37, "plans");
  std::string::basic_string[abi:nn200100]<0>(v38, "meeting");
  std::string::basic_string[abi:nn200100]<0>(v39, "meetings");
  std::string::basic_string[abi:nn200100]<0>(v40, "card");
  std::string::basic_string[abi:nn200100]<0>(v41, "cards");
  std::string::basic_string[abi:nn200100]<0>(v42, "adventure");
  std::string::basic_string[abi:nn200100]<0>(v43, "adventures");
  std::string::basic_string[abi:nn200100]<0>(v44, "game");
  std::string::basic_string[abi:nn200100]<0>(v45, "games");
  std::string::basic_string[abi:nn200100]<0>(v46, "phone");
  std::string::basic_string[abi:nn200100]<0>(v47, "phones");
  std::string::basic_string[abi:nn200100]<0>(v48, "airport");
  std::string::basic_string[abi:nn200100]<0>(v49, "airports");
  std::string::basic_string[abi:nn200100]<0>(v50, "session");
  std::string::basic_string[abi:nn200100]<0>(v51, "sessions");
  std::string::basic_string[abi:nn200100]<0>(v52, "exam");
  std::string::basic_string[abi:nn200100]<0>(v53, "exams");
  std::string::basic_string[abi:nn200100]<0>(v54, "store");
  std::string::basic_string[abi:nn200100]<0>(v55, "stores");
  std::string::basic_string[abi:nn200100]<0>(v56, "place");
  std::string::basic_string[abi:nn200100]<0>(v57, "places");
  std::string::basic_string[abi:nn200100]<0>(v58, "getway");
  std::string::basic_string[abi:nn200100]<0>(v59, "getways");
  std::string::basic_string[abi:nn200100]<0>(v60, "getaway");
  std::string::basic_string[abi:nn200100]<0>(v61, "getaways");
  std::string::basic_string[abi:nn200100]<0>(v62, "address");
  std::string::basic_string[abi:nn200100]<0>(v63, "addresses");
  std::string::basic_string[abi:nn200100]<0>(v64, "rsvp");
  std::string::basic_string[abi:nn200100]<0>(v65, "rsvps");
  std::string::basic_string[abi:nn200100]<0>(v66, "breakfast");
  std::string::basic_string[abi:nn200100]<0>(v67, "breakfasts");
  std::string::basic_string[abi:nn200100]<0>(v68, "lunch");
  std::string::basic_string[abi:nn200100]<0>(v69, "lunches");
  std::string::basic_string[abi:nn200100]<0>(v70, "dinner");
  std::string::basic_string[abi:nn200100]<0>(v71, "dinners");
  std::string::basic_string[abi:nn200100]<0>(v72, "brunch");
  std::string::basic_string[abi:nn200100]<0>(v73, "brunches");
  std::string::basic_string[abi:nn200100]<0>(v74, "event");
  std::string::basic_string[abi:nn200100]<0>(v75, "events");
  std::string::basic_string[abi:nn200100]<0>(v76, "recommendation");
  std::string::basic_string[abi:nn200100]<0>(v77, "recommendations");
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_unique<std::string const*>(&llmSearchTermSuffixesToRemove(void)::_searchTermSuffixesToRemove, &__str, &v78);
  v0 = 1824;
  do
  {
    if (__str.__r_.__value_.__s.__data_[v0 - 1] < 0)
    {
      operator delete(*(&__str.__r_.__value_.__l + v0 - 24));
    }

    v0 -= 24;
  }

  while (v0);
  v1 = *MEMORY[0x1E69E9840];
}

void sub_1C28C558C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  v12 = (v10 + 1823);
  v13 = -1824;
  v14 = v12;
  while (1)
  {
    v15 = *v14;
    v14 -= 24;
    if (v15 < 0)
    {
      operator delete(*(v12 - 23));
    }

    v12 = v14;
    v13 += 24;
    if (!v13)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

void ___ZL37llmSearchTermCalendarSuffixesToRemovev_block_invoke()
{
  v8.__r_.__value_.__r.__words[0] = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:nn200100]<0>(&__str, "appointment");
  std::string::basic_string[abi:nn200100]<0>(v3, "appointments");
  std::string::basic_string[abi:nn200100]<0>(v4, "meeting");
  std::string::basic_string[abi:nn200100]<0>(v5, "meetings");
  std::string::basic_string[abi:nn200100]<0>(v6, "event");
  std::string::basic_string[abi:nn200100]<0>(v7, "events");
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_unique<std::string const*>(&llmSearchTermCalendarSuffixesToRemove(void)::_searchTermCalendarSuffixesToRemove, &__str, &v8);
  for (i = 0; i != -144; i -= 24)
  {
    if (v7[i + 23] < 0)
    {
      operator delete(*&v7[i]);
    }
  }

  v1 = *MEMORY[0x1E69E9840];
}

void sub_1C28C5704(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  v12 = (v10 + 143);
  v13 = -144;
  v14 = v12;
  while (1)
  {
    v15 = *v14;
    v14 -= 24;
    if (v15 < 0)
    {
      operator delete(*(v12 - 23));
    }

    v12 = v14;
    v13 += 24;
    if (!v13)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

void ___ZL37llmSearchTermCalendarOneOnOneToRemovev_block_invoke()
{
  v65.__r_.__value_.__r.__words[0] = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:nn200100]<0>(&v2, "1:1");
  std::string::basic_string[abi:nn200100]<0>(v3, "1:1 meeting");
  std::string::basic_string[abi:nn200100]<0>(v4, "1:1 meetings");
  std::string::basic_string[abi:nn200100]<0>(v5, "1:1 appointment");
  std::string::basic_string[abi:nn200100]<0>(v6, "1:1 appointments");
  std::string::basic_string[abi:nn200100]<0>(v7, "1:1 event");
  std::string::basic_string[abi:nn200100]<0>(v8, "1:1 events");
  std::string::basic_string[abi:nn200100]<0>(v9, "1-1");
  std::string::basic_string[abi:nn200100]<0>(v10, "1-1 meeting");
  std::string::basic_string[abi:nn200100]<0>(v11, "1-1 meetings");
  std::string::basic_string[abi:nn200100]<0>(v12, "1-1 appointment");
  std::string::basic_string[abi:nn200100]<0>(v13, "1-1 appointments");
  std::string::basic_string[abi:nn200100]<0>(v14, "1-1 event");
  std::string::basic_string[abi:nn200100]<0>(v15, "1-1 events");
  std::string::basic_string[abi:nn200100]<0>(v16, "1/1");
  std::string::basic_string[abi:nn200100]<0>(v17, "1/1 meeting");
  std::string::basic_string[abi:nn200100]<0>(v18, "1/1 meetings");
  std::string::basic_string[abi:nn200100]<0>(v19, "1/1 appointment");
  std::string::basic_string[abi:nn200100]<0>(v20, "1/1 appointments");
  std::string::basic_string[abi:nn200100]<0>(v21, "1/1 event");
  std::string::basic_string[abi:nn200100]<0>(v22, "1/1 events");
  std::string::basic_string[abi:nn200100]<0>(v23, "1 on 1");
  std::string::basic_string[abi:nn200100]<0>(v24, "1 on 1 meeting");
  std::string::basic_string[abi:nn200100]<0>(v25, "1 on 1 meetings");
  std::string::basic_string[abi:nn200100]<0>(v26, "1 on 1 appointment");
  std::string::basic_string[abi:nn200100]<0>(v27, "1 on 1 appointments");
  std::string::basic_string[abi:nn200100]<0>(v28, "1 on 1 event");
  std::string::basic_string[abi:nn200100]<0>(v29, "1 on 1 events");
  std::string::basic_string[abi:nn200100]<0>(v30, "1 to 1");
  std::string::basic_string[abi:nn200100]<0>(v31, "1 to 1 meeting");
  std::string::basic_string[abi:nn200100]<0>(v32, "1 to 1 meetings");
  std::string::basic_string[abi:nn200100]<0>(v33, "1 to 1 appointment");
  std::string::basic_string[abi:nn200100]<0>(v34, "1 to 1 appointments");
  std::string::basic_string[abi:nn200100]<0>(v35, "1 to 1 event");
  std::string::basic_string[abi:nn200100]<0>(v36, "1 to 1 events");
  std::string::basic_string[abi:nn200100]<0>(v37, "one on one");
  std::string::basic_string[abi:nn200100]<0>(v38, "one on one meeting");
  std::string::basic_string[abi:nn200100]<0>(v39, "one on one meetings");
  std::string::basic_string[abi:nn200100]<0>(v40, "one on one appointment");
  std::string::basic_string[abi:nn200100]<0>(v41, "one on one appointments");
  std::string::basic_string[abi:nn200100]<0>(v42, "one on one event");
  std::string::basic_string[abi:nn200100]<0>(v43, "one on one events");
  std::string::basic_string[abi:nn200100]<0>(v44, "one-on-one");
  std::string::basic_string[abi:nn200100]<0>(v45, "one-on-one meeting");
  std::string::basic_string[abi:nn200100]<0>(v46, "one-on-one meetings");
  std::string::basic_string[abi:nn200100]<0>(v47, "one-on-one appointment");
  std::string::basic_string[abi:nn200100]<0>(v48, "one-on-one appointments");
  std::string::basic_string[abi:nn200100]<0>(v49, "one-on-one event");
  std::string::basic_string[abi:nn200100]<0>(v50, "one-on-one events");
  std::string::basic_string[abi:nn200100]<0>(v51, "one to one");
  std::string::basic_string[abi:nn200100]<0>(v52, "one to one meeting");
  std::string::basic_string[abi:nn200100]<0>(v53, "one to one meetings");
  std::string::basic_string[abi:nn200100]<0>(v54, "one to one appointment");
  std::string::basic_string[abi:nn200100]<0>(v55, "one to one appointments");
  std::string::basic_string[abi:nn200100]<0>(v56, "one to one event");
  std::string::basic_string[abi:nn200100]<0>(v57, "one to one events");
  std::string::basic_string[abi:nn200100]<0>(v58, "one-to-one");
  std::string::basic_string[abi:nn200100]<0>(v59, "one-to-one meeting");
  std::string::basic_string[abi:nn200100]<0>(v60, "one-to-one meetings");
  std::string::basic_string[abi:nn200100]<0>(v61, "one-to-one appointment");
  std::string::basic_string[abi:nn200100]<0>(v62, "one-to-one appointments");
  std::string::basic_string[abi:nn200100]<0>(v63, "one-to-one event");
  std::string::basic_string[abi:nn200100]<0>(v64, "one-to-one events");
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_unique<std::string const*>(&llmSearchTermCalendarOneOnOneToRemove(void)::_searchTermCalendarOneOnOneToRemove, &v2, &v65);
  v0 = 1512;
  do
  {
    if (v2.__r_.__value_.__s.__data_[v0 - 1] < 0)
    {
      operator delete(*(&v2.__r_.__value_.__l + v0 - 24));
    }

    v0 -= 24;
  }

  while (v0);
  v1 = *MEMORY[0x1E69E9840];
}

void sub_1C28C5D60(_Unwind_Exception *exception_object)
{
  v2 = &STACK[0x5E7];
  v3 = -1512;
  v4 = &STACK[0x5E7];
  while (1)
  {
    v5 = *v4;
    v4 -= 3;
    if (v5 < 0)
    {
      operator delete(*(v2 - 23));
    }

    v2 = v4;
    v3 += 24;
    if (!v3)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

void ___ZL35llmSearchTermPhotosSuffixesToRemovev_block_invoke()
{
  v4.__r_.__value_.__r.__words[0] = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:nn200100]<0>(&__str, "card");
  std::string::basic_string[abi:nn200100]<0>(v3, "cards");
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_unique<std::string const*>(&llmSearchTermPhotosSuffixesToRemove(void)::_searchTermPhotosSuffixesToRemove, &__str, &v4);
  for (i = 0; i != -48; i -= 24)
  {
    if (v3[i + 23] < 0)
    {
      operator delete(*(&__str + i + 24));
    }
  }

  v1 = *MEMORY[0x1E69E9840];
}

void sub_1C28C5E80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  v22 = &a21;
  v23 = -48;
  v24 = &a21;
  while (1)
  {
    v25 = *v24;
    v24 -= 24;
    if (v25 < 0)
    {
      operator delete(*(v22 - 23));
    }

    v22 = v24;
    v23 += 24;
    if (!v23)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

BOOL isLLMSourceTypeArgId(int a1)
{
  {
    llmSourceTypeArgIds(void)::_sourceTypeArgIds = 0u;
    *algn_1EBF616B0 = 0u;
    dword_1EBF616C0 = 1065353216;
  }

  if (llmSourceTypeArgIds(void)::onceToken != -1)
  {
    dispatch_once(&llmSourceTypeArgIds(void)::onceToken, &__block_literal_global_195);
  }

  return std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::find<int>(&llmSourceTypeArgIds(void)::_sourceTypeArgIds, a1) != 0;
}

void ___ZL19llmSourceTypeArgIdsv_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  v1[0] = xmmword_1C2BF9F00;
  v1[1] = xmmword_1C2BF9F10;
  v1[2] = xmmword_1C2BF9F20;
  v1[3] = xmmword_1C2BFA0C0;
  v1[4] = xmmword_1C2BFA0D0;
  v1[5] = xmmword_1C2BFA0E0;
  v2 = 0xC4000000C8;
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__assign_unique<int const*>(&llmSourceTypeArgIds(void)::_sourceTypeArgIds, v1, &v3);
  v0 = *MEMORY[0x1E69E9840];
}

void ___ZL25llmPhotosSourceTypeArgIdsv_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = xmmword_1C2BFA0F0;
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__assign_unique<int const*>(&llmPhotosSourceTypeArgIds(void)::_photosSourceTypeArgIds, &v1, &v2);
  v0 = *MEMORY[0x1E69E9840];
}

BOOL isLLMAppEntityTypeArgId(int a1)
{
  {
    llmAppEntityTypeArgIds(void)::_appEntityTypeArgIds = 0u;
    unk_1EBF61720 = 0u;
    dword_1EBF61730 = 1065353216;
  }

  if (llmAppEntityTypeArgIds(void)::onceToken != -1)
  {
    dispatch_once(&llmAppEntityTypeArgIds(void)::onceToken, &__block_literal_global_199);
  }

  return std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::find<int>(&llmAppEntityTypeArgIds(void)::_appEntityTypeArgIds, a1) != 0;
}

void ___ZL22llmAppEntityTypeArgIdsv_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  v1[0] = xmmword_1C2BF9F70;
  v1[1] = xmmword_1C2BF9F80;
  v1[2] = xmmword_1C2BF9F90;
  v1[3] = xmmword_1C2BF9FA0;
  v1[4] = xmmword_1C2BFA100;
  v1[5] = xmmword_1C2BFA110;
  v1[6] = xmmword_1C2BFA120;
  v1[7] = xmmword_1C2BFA130;
  v1[8] = xmmword_1C2BFA140;
  v1[9] = xmmword_1C2BFA150;
  v1[10] = xmmword_1C2BFA160;
  v1[11] = xmmword_1C2BFA170;
  v2 = 0xD2000000D0;
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__assign_unique<int const*>(&llmAppEntityTypeArgIds(void)::_appEntityTypeArgIds, v1, &v3);
  v0 = *MEMORY[0x1E69E9840];
}

BOOL isLLMPhotosAppEntityTypeArgId(int a1)
{
  {
    llmPhotosAppEntityTypeArgIds(void)::_photosAppEntityTypeArgIds = 0u;
    unk_1EBF61758 = 0u;
    dword_1EBF61768 = 1065353216;
  }

  if (llmPhotosAppEntityTypeArgIds(void)::onceToken != -1)
  {
    dispatch_once(&llmPhotosAppEntityTypeArgIds(void)::onceToken, &__block_literal_global_201);
  }

  return std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::find<int>(&llmPhotosAppEntityTypeArgIds(void)::_photosAppEntityTypeArgIds, a1) != 0;
}

void ___ZL28llmPhotosAppEntityTypeArgIdsv_block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = xmmword_1C2BFA180;
  v1[1] = xmmword_1C2BFA190;
  v1[2] = xmmword_1C2BFA1A0;
  v2 = 192;
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__assign_unique<int const*>(&llmPhotosAppEntityTypeArgIds(void)::_photosAppEntityTypeArgIds, v1, &v3);
  v0 = *MEMORY[0x1E69E9840];
}

void ___ZL25llmMDSAppEntityTypeArgIdsv_block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = xmmword_1C2BFA1B0;
  v1[1] = xmmword_1C2BFA1C0;
  v2 = 198;
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__assign_unique<int const*>(&llmMDSAppEntityTypeArgIds(void)::_mdsAppEntityTypeArgIds, v1, &v3);
  v0 = *MEMORY[0x1E69E9840];
}

BOOL isLLMInferredAppEntityTypeArgId(int a1)
{
  {
    llmInferredAppEntityTypeArgIds(void)::_inferredAppEntityTypeArgIds = 0u;
    unk_1EBF617C8 = 0u;
    dword_1EBF617D8 = 1065353216;
  }

  if (llmInferredAppEntityTypeArgIds(void)::onceToken != -1)
  {
    dispatch_once(&llmInferredAppEntityTypeArgIds(void)::onceToken, &__block_literal_global_205);
  }

  return std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::find<int>(&llmInferredAppEntityTypeArgIds(void)::_inferredAppEntityTypeArgIds, a1) != 0;
}

void ___ZL30llmInferredAppEntityTypeArgIdsv_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  v1[0] = xmmword_1C2BFA1D0;
  v1[1] = xmmword_1C2BFA1E0;
  v1[2] = xmmword_1C2BFA1F0;
  v1[3] = xmmword_1C2BFA200;
  v1[4] = xmmword_1C2BFA210;
  v1[5] = xmmword_1C2BFA220;
  v1[6] = xmmword_1C2BFA230;
  v1[7] = xmmword_1C2BFA240;
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__assign_unique<int const*>(&llmInferredAppEntityTypeArgIds(void)::_inferredAppEntityTypeArgIds, v1, &v2);
  v0 = *MEMORY[0x1E69E9840];
}

BOOL isIgnoredAppEntityStatusArgId(int a1)
{
  {
    llmIgnoredAppEntityStatusArgIds(void)::_ignoredAppEntityStatusArgIds = 0u;
    unk_1EBF61800 = 0u;
    dword_1EBF61810 = 1065353216;
  }

  if (llmIgnoredAppEntityStatusArgIds(void)::onceToken != -1)
  {
    dispatch_once(&llmIgnoredAppEntityStatusArgIds(void)::onceToken, &__block_literal_global_211);
  }

  return std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::find<int>(&llmIgnoredAppEntityStatusArgIds(void)::_ignoredAppEntityStatusArgIds, a1) != 0;
}

void ___ZL31llmIgnoredAppEntityStatusArgIdsv_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  v1[0] = xmmword_1C2BFA250;
  v1[1] = xmmword_1C2BFA260;
  v1[2] = xmmword_1C2BFA270;
  v1[3] = xmmword_1C2BFA280;
  v2 = 0x3C0000003BLL;
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__assign_unique<int const*>(&llmIgnoredAppEntityStatusArgIds(void)::_ignoredAppEntityStatusArgIds, v1, &v3);
  v0 = *MEMORY[0x1E69E9840];
}

BOOL isBundleSpecificFilterAppEntityStatusArgId(int a1)
{
  {
    llmBundleSpecificFilterAppEntityStatusArgIds(void)::_bundleSpecificFilterAppEntityStatusArgIds = 0u;
    unk_1EBF61838 = 0u;
    dword_1EBF61848 = 1065353216;
  }

  if (llmBundleSpecificFilterAppEntityStatusArgIds(void)::onceToken != -1)
  {
    dispatch_once(&llmBundleSpecificFilterAppEntityStatusArgIds(void)::onceToken, &__block_literal_global_213);
  }

  return std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::find<int>(&llmBundleSpecificFilterAppEntityStatusArgIds(void)::_bundleSpecificFilterAppEntityStatusArgIds, a1) != 0;
}

void ___ZL44llmBundleSpecificFilterAppEntityStatusArgIdsv_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = xmmword_1C2BFA290;
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__assign_unique<int const*>(&llmBundleSpecificFilterAppEntityStatusArgIds(void)::_bundleSpecificFilterAppEntityStatusArgIds, &v1, &v2);
  v0 = *MEMORY[0x1E69E9840];
}

BOOL isLLMTopKRankingArgId(int a1)
{
  {
    llmTopKRankingArgIds(void)::_topKRankingArgIds = 0u;
    *algn_1EBF61870 = 0u;
    dword_1EBF61880 = 1065353216;
  }

  if (llmTopKRankingArgIds(void)::onceToken != -1)
  {
    dispatch_once(&llmTopKRankingArgIds(void)::onceToken, &__block_literal_global_215);
  }

  return std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::find<int>(&llmTopKRankingArgIds(void)::_topKRankingArgIds, a1) != 0;
}

void ___ZL20llmTopKRankingArgIdsv_block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = xmmword_1C2BFA2A0;
  v2 = 131;
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__assign_unique<int const*>(&llmTopKRankingArgIds(void)::_topKRankingArgIds, &v1, &v3);
  v0 = *MEMORY[0x1E69E9840];
}

BOOL isLLMPhotosIgnoredArgId(int a1)
{
  {
    llmPhotosIgnoredArgIds(void)::_photosIgnoredArgIds = 0u;
    unk_1EBF618A8 = 0u;
    dword_1EBF618B8 = 1065353216;
  }

  if (llmPhotosIgnoredArgIds(void)::onceToken != -1)
  {
    dispatch_once(&llmPhotosIgnoredArgIds(void)::onceToken, &__block_literal_global_217);
  }

  return std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::find<int>(&llmPhotosIgnoredArgIds(void)::_photosIgnoredArgIds, a1) != 0;
}

void ___ZL22llmPhotosIgnoredArgIdsv_block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  v1[0] = xmmword_1C2BFA2B0;
  v1[1] = xmmword_1C2BFA050;
  v1[2] = xmmword_1C2BFA2C0;
  v2 = 0x82000000C1;
  v3 = 131;
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__assign_unique<int const*>(&llmPhotosIgnoredArgIds(void)::_photosIgnoredArgIds, v1, v4);
  v0 = *MEMORY[0x1E69E9840];
}

BOOL isLLMPhotosEventArgId(int a1)
{
  {
    llmPhotosEventArgIds(void)::_photosEventArgIds = 0u;
    unk_1EBF618E0 = 0u;
    dword_1EBF618F0 = 1065353216;
  }

  if (llmPhotosEventArgIds(void)::onceToken != -1)
  {
    dispatch_once(&llmPhotosEventArgIds(void)::onceToken, &__block_literal_global_219);
  }

  return std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::find<int>(&llmPhotosEventArgIds(void)::_photosEventArgIds, a1) != 0;
}

void ___ZL20llmPhotosEventArgIdsv_block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  v1[0] = xmmword_1C2BFA2D0;
  v1[1] = xmmword_1C2BFA2E0;
  v2 = 0x520000004FLL;
  v3 = 211;
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__assign_unique<int const*>(&llmPhotosEventArgIds(void)::_photosEventArgIds, v1, v4);
  v0 = *MEMORY[0x1E69E9840];
}

BOOL isLLMTemporalArgId(int a1)
{
  {
    llmTemporalArgIds(void)::_temporalArgIds = 0u;
    unk_1EBF61918 = 0u;
    dword_1EBF61928 = 1065353216;
  }

  if (llmTemporalArgIds(void)::onceToken != -1)
  {
    dispatch_once(&llmTemporalArgIds(void)::onceToken, &__block_literal_global_221);
  }

  return std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::find<int>(&llmTemporalArgIds(void)::_temporalArgIds, a1) != 0;
}

void ___ZL17llmTemporalArgIdsv_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = xmmword_1C2BFA2F0;
  v2 = 0x6100000060;
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__assign_unique<int const*>(&llmTemporalArgIds(void)::_temporalArgIds, &v1, &v3);
  v0 = *MEMORY[0x1E69E9840];
}

int *___Z19logAttributedStringyPKcP8NSStringP18NSAttributedStringPK9__CFArray_block_invoke(uint64_t a1, void *a2, NSUInteger a3, NSUInteger a4, _BYTE *a5)
{
  v35 = *MEMORY[0x1E69E9840];
  result = [a2 count];
  if (result)
  {
    v11 = *__error();
    v12 = _SILogForLogForCategory(17);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 40);
      v13 = *(a1 + 48);
      v20 = *(a1 + 56);
      v15 = *(a1 + 64);
      if (v15 > 0xD2)
      {
        v16 = "Unknown";
      }

      else
      {
        v16 = off_1E8196D10[v15];
      }

      v36.location = a3;
      v36.length = a4;
      v17 = NSStringFromRange(v36);
      v18 = *(a1 + 32);
      *buf = 134219522;
      v22 = v14;
      v23 = 2080;
      v24 = v13;
      v25 = 2048;
      v26 = v20;
      v27 = 2080;
      v28 = v16;
      v29 = 2112;
      v30 = v17;
      v31 = 2112;
      v32 = v18;
      v33 = 2112;
      v34 = a2;
      _os_log_impl(&dword_1C278D000, v12, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM][%ld][%s][%@] %@ %@", buf, 0x48u);
    }

    result = __error();
    *result = v11;
    *a5 = 1;
  }

  v19 = *MEMORY[0x1E69E9840];
  return result;
}

NSString *redactString(NSString *a1, int a2)
{
  v4 = [(NSString *)a1 length];
  if (v4 < 4)
  {
    return a1;
  }

  v6 = v4;
  if (!a2)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"%c%c...%c<%lu chars>", -[NSString characterAtIndex:](a1, "characterAtIndex:", 0), -[NSString characterAtIndex:](a1, "characterAtIndex:", 1), -[NSString characterAtIndex:](a1, "characterAtIndex:", v6 - 1), v6];
  }

  if (isSearchToolDebugModeEnabled_onceToken != -1)
  {
    dispatch_once(&isSearchToolDebugModeEnabled_onceToken, &__block_literal_global_14_11145);
  }

  if (isSearchToolDebugModeEnabled_ffStatus)
  {
    return a1;
  }

  else
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"%c%c...%c<%lu chars>", -[NSString characterAtIndex:](a1, "characterAtIndex:", 0), -[NSString characterAtIndex:](a1, "characterAtIndex:", 1), -[NSString characterAtIndex:](a1, "characterAtIndex:", v6 - 1), v6];
  }
}

void storageWindowsClose(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *__error();
    v4 = _SILogForLogForCategory(10);
    v5 = 2 * (dword_1EBF46AF4 < 4);
    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(a1 + 8);
      v7 = *(a1 + 16) * 100.0 / v6;
      v10[0] = 67109376;
      v10[1] = v6 >> 10;
      v11 = 2048;
      v12 = v7;
      _os_log_impl(&dword_1C278D000, v4, v5, "Memsize: %uKB %f%% used", v10, 0x12u);
    }

    *__error() = v3;
    fd_release(v2);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    _Block_release(v8);
    *(a1 + 40) = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
}

void storageWindowDestroyImmediate(void *a1)
{
  v2 = a1[1];
  if (v2 + 1 >= 2)
  {
    munmap(v2, a1[3] - a1[2]);
  }

  free(a1);
}

void storageWindowsUnmap(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 1)
  {
    v3 = 0;
    v4 = a1 + 56;
    do
    {
      v5 = *(v4 + 8 * v3);
      if (v5)
      {
        if (atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
        {
          storageWindowDestroyImmediate(v5);
        }

        *(v4 + 8 * v3) = 0;
        v1 = *(a1 + 32);
      }

      ++v3;
    }

    while (v3 < v1);
  }
}

uint64_t storageWindowsKillPages(uint64_t result)
{
  v1 = *(result + 32);
  if (v1 >= 1)
  {
    v2 = result;
    v3 = 0;
    v4 = result + 56;
    do
    {
      v5 = *(v4 + 8 * v3);
      if (v5)
      {
        v6 = *(v5 + 8);
        if (v6)
        {
          if ((*(v5 + 40) & 1) == 0)
          {
            v7 = *(v5 + 24) - *(v5 + 16);
            fd_system_status_stall_if_busy();
            result = msync(v6, v7, 4);
            v1 = *(v2 + 32);
          }
        }
      }

      ++v3;
    }

    while (v3 < v1);
  }

  return result;
}

uint64_t storageWindowSync(uint64_t result, int a2)
{
  if (result)
  {
    v2 = *(result + 8);
    if (v2)
    {
      if ((*(result + 40) & 1) == 0)
      {
        v3 = *(result + 24) - *(result + 16);
        if (a2)
        {
          v4 = 1;
        }

        else
        {
          v4 = 16;
        }

        fd_system_status_stall_if_busy();

        return msync(v2, v3, v4);
      }
    }
  }

  return result;
}

void _windowsMapInit(uint64_t a1, int a2)
{
  v4 = 0;
  v5 = 0;
  v6 = a1 + 56;
  do
  {
    v7 = *(a1 + 8);
    if (v5 >= v7)
    {
      goto LABEL_19;
    }

    v8 = *(v6 + 8 * v4);
    v9 = *(a1 + 48);
    v10 = 1 << v9;
    if (v4)
    {
      if (v7 <= (v9 > 1))
      {
        v17 = __si_assert_copy_extra(0);
        v18 = v17;
        v19 = "";
        if (v17)
        {
          v19 = v17;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "storage_window.c", 441, "windows->_size > (1<windows->offset_shift)", v19);
        free(v18);
        if (__valid_fs(-1))
        {
          v20 = 2989;
        }

        else
        {
          v20 = 3072;
        }

        *v20 = -559038737;
        abort();
      }

      *(a1 + 32) = v4 + 1;
      if (v7 <= v10)
      {
        v13 = __si_assert_copy_extra(0);
        v14 = v13;
        v15 = "";
        if (v13)
        {
          v15 = v13;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "storage_window.c", 446, "windows->_size>(1ull<<windows->offset_shift) || windows->count <= 1", v15);
LABEL_25:
        free(v14);
        if (__valid_fs(-1))
        {
          v16 = 2989;
        }

        else
        {
          v16 = 3072;
        }

        *v16 = -559038737;
        abort();
      }

      v5 = (v4 + 1) << v9;
      if (!v8)
      {
LABEL_7:
        v11 = *(a1 + 36);
        v12 = *(a1 + 40);
        v8 = malloc_type_calloc(1uLL, 0x30uLL, 0x10800408BF3291EuLL);
        atomic_store(1u, v8);
        *(v8 + 1) = 0;
        *(v8 + 2) = 0;
        *(v8 + 40) = v11;
        *(v8 + 3) = 0;
        *(v8 + 4) = v12;
        *(v6 + 8 * v4) = v8;
        __dmb(0xBu);
      }
    }

    else
    {
      if (v7 >= v10)
      {
        v7 = 1 << v9;
      }

      if (*(a1 + 37))
      {
        v5 = 1 << v9;
      }

      else
      {
        v5 = v7;
      }

      *(a1 + 32) = 1;
      if (!v8)
      {
        goto LABEL_7;
      }
    }

    if (!*(v8 + 1))
    {
      _initWindow(v8, a1, v4 << v9, v5, a2);
    }

    ++v4;
  }

  while (v4 != 512);
  v7 = *(a1 + 8);
LABEL_19:
  if (v7 <= 1 << *(a1 + 48) && *(a1 + 32) >= 2)
  {
    v21 = __si_assert_copy_extra(0);
    v14 = v21;
    v22 = "";
    if (v21)
    {
      v22 = v21;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "storage_window.c", 461, "windows->_size>(1ull<<windows->offset_shift) || windows->count <= 1", v22);
    goto LABEL_25;
  }
}

void __message_assert(char *a1, ...)
{
  va_start(va, a1);
  v7 = *MEMORY[0x1E69E9840];
  string[0] = 0;
  va_copy(&string[1], va);
  vasprintf(string, a1, va);
  SISetCrashCStr(string[0]);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *keys = 136315138;
    *&keys[4] = string[0];
    _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%s", keys, 0xCu);
  }

  *keys = "crash_string";
  v1 = xpc_string_create(string[0]);
  values = v1;
  v2 = xpc_dictionary_create(keys, &values, 1uLL);
  analytics_send_event();
  xpc_release(v2);
  xpc_release(v1);
  free(string[0]);
  v3 = *MEMORY[0x1E69E9840];
}

{
  va_start(va, a1);
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  va_copy(&v2[1], va);
  vasprintf(v2, a1, va);
  SISetCrashCStr(v2[0]);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v4 = v2[0];
    _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
  }

  free(v2[0]);
  v1 = *MEMORY[0x1E69E9840];
}

double _initWindow(void *a1, _DWORD **a2, unint64_t a3, uint64_t a4, int a5)
{
  v5 = a1[2];
  if (v5)
  {
    v6 = v5 == a3;
  }

  else
  {
    v6 = 1;
  }

  if (!v6 || a1[1])
  {
    v15 = __si_assert_copy_extra(0);
    v16 = v15;
    v17 = "";
    if (v15)
    {
      v17 = v15;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "storage_window.c", 372, "(window->mappedStart==0||window->mappedStart==mapStart)&&window->mappedMemory==((void*)0)", v17);
LABEL_27:
    free(v16);
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

  if (*(a2 + 37) == 1 && !((a4 - a3) >> *(a2 + 48)))
  {
    v20 = __si_assert_copy_extra(0);
    v16 = v20;
    v21 = "";
    if (v20)
    {
      v21 = v20;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "storage_window.c", 374, "(1ull<<parentWindows->offset_shift) <= mapEnd-mapStart", v21);
    goto LABEL_27;
  }

  a1[2] = a3;
  if (a2[1] < a3)
  {
    v18 = __si_assert_copy_extra(0);
    v16 = v18;
    v19 = "";
    if (v18)
    {
      v19 = v18;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "storage_window.c", 378, "mapStart <= parentWindows->_size", v19);
    goto LABEL_27;
  }

  v10 = *MEMORY[0x1E69E9AC8];
  if (*MEMORY[0x1E69E9AC8] <= ((*MEMORY[0x1E69E9AC8] + ((a4 - a3) >> 5) - 1) & -*MEMORY[0x1E69E9AC8]))
  {
    v10 = (*MEMORY[0x1E69E9AC8] + ((a4 - a3) >> 5) - 1) & -*MEMORY[0x1E69E9AC8];
  }

  a1[3] = v10 + a4;
  *(a2 + 36);
  v11 = fd_mmap(*a2);
  a1[1] = v11;
  if (v11 == -1)
  {
    v13 = *__error();
    a1[1] = 0;
    if (a5)
    {
      if (v13 != 1)
      {
        v14 = mmap(0, 4uLL, 0, 4098, -50331648, 0);
        a1[1] = v14;
        if (v14 == -1)
        {
          v23 = __si_assert_copy_extra(*a2);
          v24 = v23;
          v25 = "";
          if (v23)
          {
            v25 = v23;
          }

          __message_assert("%s:%u: failed assertion '%s' %s mmap(%p, offset: %llx, size: %lld) error:%d, fSize:%lld", "storage_window.c", 399, "false", v25, a2, 0, a1[3] - a1[2], v13, a2[2]);
          free(v24);
          if (__valid_fsp(*a2))
          {
            v26 = 2989;
          }

          else
          {
            v26 = 3072;
          }

          *v26 = -559038737;
          abort();
        }

        result = 0.0;
        *(a1 + 1) = xmmword_1C2BFA300;
        *v14 = 1;
      }
    }
  }

  return result;
}

uint64_t _windowsGetPtr(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> *(a1 + 48);
  if (v3 >= *(a1 + 32))
  {
    return 0;
  }

  v5 = *(a1 + 8 * v3 + 56);
  if (!v5)
  {
    return 0;
  }

  v6 = v5[1];
  if ((v6 + 1) < 2)
  {
    return 0;
  }

  v7 = v5[2];
  v8 = a2 >= v7;
  v9 = a2 - v7;
  if (!v8)
  {
    return 0;
  }

  result = 0;
  if (a3 + a2 <= *(a1 + 8) && v5[3] >= a3 + a2)
  {
    return v6 + v9;
  }

  return result;
}

void si_analytics_log(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v15 = *MEMORY[0x1E69E9840];
  string[0] = 0;
  string[1] = &a9;
  vasprintf(string, "Deallocating window for stable mapping %p (%p %lld %lld) (%lld  %zu)", &a9);
  SISetCrashCStr(string[0]);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *keys = 136315138;
    *&keys[4] = string[0];
    _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "%s", keys, 0xCu);
  }

  *keys = "crash_string";
  v9 = xpc_string_create(string[0]);
  values = v9;
  v10 = xpc_dictionary_create(keys, &values, 1uLL);
  analytics_send_event();
  xpc_release(v10);
  xpc_release(v9);
  free(string[0]);
  v11 = *MEMORY[0x1E69E9840];
}

{
  v15 = *MEMORY[0x1E69E9840];
  string[0] = 0;
  string[1] = &a9;
  vasprintf(string, "[%s] open %s indexId %u doesn't match previous assigned %u", &a9);
  SISetCrashCStr(string[0]);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *keys = 136315138;
    *&keys[4] = string[0];
    _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "%s", keys, 0xCu);
  }

  *keys = "crash_string";
  v9 = xpc_string_create(string[0]);
  values = v9;
  v10 = xpc_dictionary_create(keys, &values, 1uLL);
  analytics_send_event();
  xpc_release(v10);
  xpc_release(v9);
  free(string[0]);
  v11 = *MEMORY[0x1E69E9840];
}

unint64_t _windowsResolvePtr(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = a2 >> *(a1 + 48);
  if (v6 < *(a1 + 32))
  {
    v7 = *(a1 + 8 * v6 + 56);
    if (v7)
    {
      if (v7[2] <= a2 && v7[3] >= a3 + a2 && *(a1 + 8) >= a3 + a2 && !v7[1])
      {
        v15 = CICleanUpThreadLoc();
        storage_windows_pushLock(v15, v6);
        if (!v7[1])
        {
          if (a2)
          {
            v16 = 0;
          }

          else
          {
            v16 = a3 == 1;
          }

          v17 = !v16;
          _windowsMapInit(a1, v17);
        }

        CIOnThreadCleanUpPop(v15);
      }
    }
  }

  result = _windowsGetPtr(a1, a2, a3);
  if (!result)
  {
    result = _moveWindowsInner(a1, a2, a3, 0, v9, v10);
    if (*MEMORY[0x1E69E9AC8] < result)
    {
      return result;
    }

    v21 = __si_assert_copy_extra(0);
    v19 = v21;
    v22 = "";
    if (v21)
    {
      v22 = v21;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "storage_window.c", 794, "vm_page_size < (uintptr_t)ptr", v22);
LABEL_31:
    free(v19);
    if (__valid_fs(-1))
    {
      v23 = 2989;
    }

    else
    {
      v23 = 3072;
    }

    *v23 = -559038737;
    abort();
  }

  if (result == a2)
  {
    v18 = __si_assert_copy_extra(0);
    v19 = v18;
    v20 = "";
    if (v18)
    {
      v20 = v18;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "storage_window.c", 784, "(offset_t)(intptr_t)ptr !=inOffset", v20);
    goto LABEL_31;
  }

  if (*MEMORY[0x1E69E9AC8] >= result)
  {
    v11 = __si_assert_copy_extra(0);
    v12 = v11;
    v13 = "";
    if (v11)
    {
      v13 = v11;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "storage_window.c", 789, "vm_page_size < (uintptr_t)ptr", v13);
    free(v12);
    if (__valid_fs(-1))
    {
      v14 = 2989;
    }

    else
    {
      v14 = 3072;
    }

    *v14 = -559038737;
    abort();
  }

  return result;
}

uint64_t storage_windows_pushLock(uint64_t a1, uint64_t a2)
{
  v3 = (&windowLock + 4 * a2);
  os_unfair_lock_lock(v3);
  v4 = MEMORY[0x1E69E9B80];

  return CIOnThreadCleanUpPush(a1, v4, v3);
}

uint64_t _storageWindowsExpandBacking(_DWORD **a1, uint64_t a2)
{
  v58 = *MEMORY[0x1E69E9840];
  v3 = a1[1];
  v4 = 1 << *(a1 + 48);
  if (v3 <= v4 && *(a1 + 8) >= 2)
  {
    v32 = __si_assert_copy_extra(0);
    v33 = v32;
    v34 = "";
    if (v32)
    {
      v34 = v32;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "storage_window.c", 805, "windows->_size>(1ull<<windows->offset_shift) || windows->count <= 1", v34);
    free(v33);
    if (__valid_fs(-1))
    {
      v35 = 2989;
    }

    else
    {
      v35 = 3072;
    }

    *v35 = -559038737;
    abort();
  }

  v5 = a1[2] + a2;
  if (v3 >> 30)
  {
    if ((v5 + 1) > v3 + 0x40000000)
    {
      v6 = v5 + 1;
    }

    else
    {
      v6 = (v3 + 0x40000000);
    }

    v7 = (&v6[~v3] & 0xFFFFFFFFC0000000) + 0x40000000;
  }

  else
  {
    v8 = 4096;
    if (v3)
    {
      v8 = a1[1];
    }

    do
    {
      v7 = v8;
      v9 = v8 + v3;
      v8 *= 2;
    }

    while (v5 >= v9);
  }

  LODWORD(v10) = *(a1 + 8);
  if (v10)
  {
    v11 = a1[7];
    if (v11)
    {
      v12 = *(v11 + 1);
      if (v10 >= 1 && v12 != 0)
      {
        v14 = 0;
        do
        {
          storageWindowSync(a1[v14++ + 7], 1);
          v10 = *(a1 + 8);
        }

        while (v14 < v10);
        v3 = a1[1];
        v4 = 1 << *(a1 + 48);
      }
    }

    if (v3 <= v4 && v10 >= 2)
    {
      v36 = __si_assert_copy_extra(0);
      v37 = v36;
      v38 = "";
      if (v36)
      {
        v38 = v36;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "storage_window.c", 826, "windows->_size>(1ull<<windows->offset_shift) || windows->count <= 1", v38);
      free(v37);
      if (__valid_fs(-1))
      {
        v39 = 2989;
      }

      else
      {
        v39 = 3072;
      }

      *v39 = -559038737;
      abort();
    }
  }

  *__error() = 0;
  if (v7 && (v15 = a1[1] + v7, v15 >= v5))
  {
    v16 = "unknown";
    while (1)
    {
      v17 = *a1;
      if (fd_truncate(*a1, v15) != -1)
      {
        a1[1] = v15;
        result = 1;
        goto LABEL_40;
      }

      v18 = *__error();
      v19 = _SILogForLogForCategory(10);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v22 = v16;
        if (v17)
        {
          v16 = fd_name_ptr(v17);
        }

        v23 = *__error();
        *buf = 136316162;
        v49 = "_storageWindowsExpandBacking";
        v50 = 1024;
        v51 = 840;
        v52 = 2080;
        v53 = v16;
        v54 = 2048;
        v55 = v15;
        v56 = 1024;
        v57 = v23;
        _os_log_error_impl(&dword_1C278D000, v19, OS_LOG_TYPE_ERROR, "%s:%d: ftruncate %s (%lld) error:%d", buf, 0x2Cu);
        v16 = v22;
      }

      *__error() = v18;
      if (*__error() != 28)
      {
        break;
      }

      v20 = *__error();
      v21 = _SILogForLogForCategory(10);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v49 = "_storageWindowsExpandBacking";
        v50 = 1024;
        v51 = 843;
        v52 = 2048;
        v53 = v7 >> 1;
        _os_log_error_impl(&dword_1C278D000, v21, OS_LOG_TYPE_ERROR, "%s:%d: ftruncate(%lld) growing size", buf, 0x1Cu);
      }

      *__error() = v20;
      if (v7 >= 2)
      {
        v15 = a1[1] + (v7 >> 1);
        v7 >>= 1;
        if (v15 >= v5)
        {
          continue;
        }
      }

      goto LABEL_36;
    }

    result = 0;
  }

  else
  {
LABEL_36:
    bzero(buf, 0x400uLL);
    v24 = *__error();
    v25 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v29 = fd_realpath(*a1, buf);
      if (v29)
      {
        v30 = v29;
      }

      else
      {
        v30 = "";
      }

      v31 = *__error();
      *v40 = 136315906;
      v41 = "_storageWindowsExpandBacking";
      v42 = 1024;
      v43 = 834;
      v44 = 2080;
      v45 = v30;
      v46 = 1024;
      v47 = v31;
      _os_log_error_impl(&dword_1C278D000, v25, OS_LOG_TYPE_ERROR, "%s:%d: _storageWindowsExpand %s error:%d", v40, 0x22u);
    }

    v26 = __error();
    result = 0;
    *v26 = v24;
  }

LABEL_40:
  v28 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _storageWindowsSetFileSize(_DWORD **a1, uint64_t a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a1[1];
  if (v3 <= 1 << *(a1 + 48) && *(a1 + 8) >= 2)
  {
    v18 = __si_assert_copy_extra(0);
    v19 = v18;
    v20 = "";
    if (v18)
    {
      v20 = v18;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "storage_window.c", 859, "windows->_size>(1ull<<windows->offset_shift) || windows->count <= 1", v20);
    free(v19);
    if (__valid_fs(-1))
    {
      v21 = 2989;
    }

    else
    {
      v21 = 3072;
    }

    *v21 = -559038737;
    abort();
  }

  v4 = a2 - v3;
  *__error() = 0;
  if (v4)
  {
    v5 = a1[1] + v4;
    while (fd_truncate(*a1, v5) == -1)
    {
      v6 = *__error();
      v7 = _SILogForLogForCategory(10);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v9 = *__error();
        *buf = 136315906;
        v31 = "_storageWindowsSetFileSize";
        v32 = 1024;
        v33 = 888;
        v34 = 2048;
        v35 = v5;
        v36 = 1024;
        v37 = v9;
        _os_log_error_impl(&dword_1C278D000, v7, OS_LOG_TYPE_ERROR, "%s:%d: ftruncate(%lld) error:%d", buf, 0x22u);
      }

      *__error() = v6;
      v5 = a1[1] + (v4 >> 1);
      v8 = v4 > 1;
      v4 >>= 1;
      if (!v8)
      {
        goto LABEL_9;
      }
    }

    a1[1] = v5;
    result = 1;
  }

  else
  {
LABEL_9:
    bzero(buf, 0x400uLL);
    v10 = *__error();
    v11 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v15 = fd_realpath(*a1, buf);
      if (v15)
      {
        v16 = v15;
      }

      else
      {
        v16 = "";
      }

      v17 = *__error();
      *v22 = 136315906;
      v23 = "_storageWindowsSetFileSize";
      v24 = 1024;
      v25 = 884;
      v26 = 2080;
      v27 = v16;
      v28 = 1024;
      v29 = v17;
      _os_log_error_impl(&dword_1C278D000, v11, OS_LOG_TYPE_ERROR, "%s:%d: _storageWindowsExpand %s error:%d", v22, 0x22u);
    }

    v12 = __error();
    result = 0;
    *v12 = v10;
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL storage_windows_contains_address(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2 < 1)
  {
    return 0;
  }

  else
  {
    v3 = (a1 + 56);
    v4 = 1;
    v5 = *(a1 + 32);
    v6 = 1;
    do
    {
      v7 = *v3;
      if (*v3)
      {
        v8 = v7[1];
        v9 = !v8 || v8 > a2;
        if (!v9 && v7[3] + v8 - v7[2] >= a2)
        {
          break;
        }
      }

      v6 = v4++ < v2;
      ++v3;
      --v5;
    }

    while (v5);
  }

  return v6;
}

uint64_t _windowsAddressOffset(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2 < 1)
  {
    return -1;
  }

  v3 = (a1 + 56);
  v4 = 1;
  do
  {
    v5 = *v3;
    if (*v3 && (v6 = v5[1], v6 + 1 >= 2) && v6 <= a2 && (v8 = v5[2], v6 - v8 + v5[3] > a2))
    {
      result = a2 - v6 + v8;
    }

    else
    {
      result = -1;
    }

    if (v4 >= v2)
    {
      break;
    }

    ++v4;
    ++v3;
  }

  while (result == -1);
  return result;
}

uint64_t storageWindowsProtect(uint64_t result, int a2)
{
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v4 = result;
    v5 = 0;
    v6 = result + 56;
    do
    {
      v7 = *(v6 + 8 * v5);
      result = v7[1];
      if ((result + 1) >= 2)
      {
        result = mprotect(result, v7[3] - v7[2], a2);
        v2 = *(v4 + 32);
      }

      ++v5;
    }

    while (v5 < v2);
  }

  return result;
}

uint64_t allocateReaderWindowAtSlot(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4)
{
  v8 = *a4;
  if (!*a4)
  {
    v9 = *(*a1 + 564);
    v10 = *(a2 + 40);
    v8 = malloc_type_calloc(1uLL, 0x30uLL, 0x10800408BF3291EuLL);
    atomic_store(1u, v8);
    *(v8 + 1) = 0;
    *(v8 + 2) = 0;
    *(v8 + 40) = v9;
    *(v8 + 3) = 0;
    *(v8 + 4) = v10;
    *a4 = v8;
    *(*a1 + a3 + 12) = 1;
  }

  v11 = *(a2 + 8 * a3 + 56);
  if (v11)
  {
    v12 = *(v11 + 16);
    v13 = *(v11 + 24);
  }

  else
  {
    v12 = (1 << *(a2 + 48)) * a3;
    v13 = v12 + (1 << *(a2 + 48));
  }

  *(v8 + 2) = v12;
  *(v8 + 3) = v13;
  result = fd_mmap(*a2);
  *(*a4 + 1) = result;
  __dmb(0xBu);
  *(*a1 + 8 * a3 + 584) = *a4;
  *(*a1 + 560) = *(a2 + 32);
  return result;
}

uint64_t compress_data_to_file(uint64_t a1, uint64_t a2, char *a3, int a4, int a5)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = 22;
  if (!a1)
  {
    goto LABEL_53;
  }

  v6 = a2;
  if (!a2 || !a3)
  {
    goto LABEL_53;
  }

  v10 = a1;
  v11 = a4;
  if (a4 != -1 || (v11 = open(a3, 1537, 384), v11 != -1))
  {
    if (a5)
    {
      valuePtr = 9;
      v12 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
      *values = *MEMORY[0x1E695E4D0];
      *&values[8] = v12;
      *&values[16] = *values;
      v13 = *MEMORY[0x1E698C1A0];
      keys = *MEMORY[0x1E698C1B8];
      v26 = v13;
      v27 = *MEMORY[0x1E698C1B0];
      v14 = CFDictionaryCreate(0, &keys, values, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v12)
      {
        CFRelease(v12);
      }

      if (!v14)
      {
        goto LABEL_25;
      }
    }

    else
    {
      *values = *MEMORY[0x1E695E4D0];
      *&values[8] = *values;
      v15 = *MEMORY[0x1E698C1B0];
      keys = *MEMORY[0x1E698C1B8];
      v26 = v15;
      v14 = CFDictionaryCreate(0, &keys, values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (!v14)
      {
        goto LABEL_25;
      }
    }

    if (CreateStreamCompressorQueueWithOptions())
    {
      CFRelease(v14);
      if (CreateStreamCompressor())
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          *values = 134218242;
          *&values[4] = v6;
          *&values[12] = 2080;
          *&values[14] = a3;
          _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "compressing %ld bytes to %s", values, 0x16u);
        }

        v16 = MEMORY[0x1E69E9C10];
        while (1)
        {
          v17 = WriteToStreamCompressor();
          if (v17 <= 0)
          {
            break;
          }

          v18 = v17;
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            *values = 134217984;
            *&values[4] = v18;
            _os_log_debug_impl(&dword_1C278D000, v16, OS_LOG_TYPE_DEBUG, "WriteToStreamCompressor wrote %lld bytes", values, 0xCu);
          }

          v10 += v18;
          v6 -= v18;
          if (!v6)
          {
            v5 = 0;
            goto LABEL_38;
          }
        }

        v19 = *__error();
        if (v19)
        {
          v5 = v19;
        }

        else
        {
          v5 = 22;
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *values = 67109378;
          *&values[4] = v5;
          *&values[8] = 2080;
          *&values[10] = a3;
          _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "WriteToStreamCompressor error %d for %s", values, 0x12u);
        }

LABEL_38:
        if (CloseStreamCompressor() == -1)
        {
          v20 = *__error();
          v5 = v5 ? v5 : v20;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *values = 67109120;
            *&values[4] = v20;
            _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "CloseStreamCompressor error %d", values, 8u);
          }
        }
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *values = 136315138;
          *&values[4] = a3;
          _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "CreateStreamCompressor error %s", values, 0xCu);
        }

        v5 = 22;
      }

      if (FinishStreamCompressorQueue() == -1 && ((v21 = *__error(), v5) ? (v5 = v5) : (v5 = v21), os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR)))
      {
        *values = 67109120;
        *&values[4] = v21;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "FinishStreamCompressorQueue error %d", values, 8u);
        if (!v5)
        {
LABEL_51:
          if (a4 == -1)
          {
            close(v11);
          }

          goto LABEL_53;
        }
      }

      else if (!v5)
      {
        goto LABEL_51;
      }

LABEL_50:
      unlink(a3);
      goto LABEL_51;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *values = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "CreateStreamCompressorQueueWithOptions failed", values, 2u);
    }

    CFRelease(v14);
LABEL_25:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *values = 136315138;
      *&values[4] = a3;
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "no stream_compressor_queue for %s", values, 0xCu);
    }

    v5 = 22;
    goto LABEL_50;
  }

  v5 = *__error();
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *values = 67109378;
    *&values[4] = v5;
    *&values[8] = 2080;
    *&values[10] = a3;
    _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "open %d with %s", values, 0x12u);
  }

LABEL_53:
  v22 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t compress_file_in_place(const std::__fs::filesystem::path *a1, int a2)
{
  v26 = *MEMORY[0x1E69E9840];
  memset(&v19, 0, sizeof(v19));
  if (stat(a1, &v19))
  {
    v4 = *__error();
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_3;
    }

    *buf = 67109378;
    *v21 = v4;
    *&v21[4] = 2080;
    *&v21[6] = a1;
    v14 = MEMORY[0x1E69E9C10];
    v15 = "stat error %d with %s";
    goto LABEL_22;
  }

  st_size = v19.st_size;
  if (v19.st_size <= 0)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v4 = 22;
      goto LABEL_3;
    }

    *buf = 134218242;
    *v21 = st_size;
    *&v21[8] = 2080;
    *&v21[10] = a1;
    v14 = MEMORY[0x1E69E9C10];
    v15 = "file too small %ld %s";
    v4 = 22;
    v17 = 22;
LABEL_23:
    _os_log_error_impl(&dword_1C278D000, v14, OS_LOG_TYPE_ERROR, v15, buf, v17);
    goto LABEL_3;
  }

  v8 = open(a1, 0);
  if (v8 == -1)
  {
    v4 = *__error();
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_3;
    }

    *buf = 67109378;
    *v21 = v4;
    *&v21[4] = 2080;
    *&v21[6] = a1;
    v14 = MEMORY[0x1E69E9C10];
    v15 = "open %d with %s";
LABEL_22:
    v17 = 18;
    goto LABEL_23;
  }

  v9 = v8;
  __from = 0;
  Current = CFAbsoluteTimeGetCurrent();
  asprintf(&__from, "%s.%ld.tmp", a1, Current);
  v11 = mmap(0, v19.st_size, 1, 1, v9, 0);
  if (v11 == -1)
  {
    v4 = *__error();
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *v21 = v4;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "mmap error %d", buf, 8u);
    }
  }

  else
  {
    v12 = v11;
    v4 = compress_data_to_file(v11, v19.st_size, __from, -1, a2);
    munmap(v12, v19.st_size);
  }

  if (v4)
  {
    unlink(__from);
  }

  else
  {
    rename(__from, a1, v13);
    if (v16 == -1)
    {
      v4 = *__error();
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *v21 = v4;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "rename error %d", buf, 8u);
      }
    }

    else
    {
      if (!queryCompressionInfo() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 67110144;
        *v21 = 0;
        *&v21[4] = 1024;
        *&v21[6] = 0;
        *&v21[10] = 2048;
        *&v21[12] = 0;
        v22 = 2048;
        v23 = 0;
        v24 = 2048;
        v25 = 0;
        _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "compressionType: 0x%x compressionOverhead: %u compressedSize: %lld uncompressedSize: %lld decmpfsFlags: 0x%llx", buf, 0x2Cu);
      }

      v4 = 0;
    }
  }

  free(__from);
  close(v9);
LABEL_3:
  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t getkQPQUOutputTokenRangeKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPQUOutputTokenRangeKeySymbolLoc(void)::ptr;
  v7 = getkQPQUOutputTokenRangeKeySymbolLoc(void)::ptr;
  if (!getkQPQUOutputTokenRangeKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPQUOutputTokenRangeKey");
    getkQPQUOutputTokenRangeKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPQUOutputTokenRangeKey()") description:{@"PRQueryQUProcessor.mm", 27, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C28C908C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkQPQUOutputTokenArgIdsKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPQUOutputTokenArgIdsKeySymbolLoc(void)::ptr;
  v7 = getkQPQUOutputTokenArgIdsKeySymbolLoc(void)::ptr;
  if (!getkQPQUOutputTokenArgIdsKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPQUOutputTokenArgIdsKey");
    getkQPQUOutputTokenArgIdsKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPQUOutputTokenArgIdsKey()") description:{@"PRQueryQUProcessor.mm", 25, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C28C91D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkQPQUOutputTokenArgScoresKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPQUOutputTokenArgScoresKeySymbolLoc(void)::ptr;
  v7 = getkQPQUOutputTokenArgScoresKeySymbolLoc(void)::ptr;
  if (!getkQPQUOutputTokenArgScoresKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPQUOutputTokenArgScoresKey");
    getkQPQUOutputTokenArgScoresKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPQUOutputTokenArgScoresKey()") description:{@"PRQueryQUProcessor.mm", 26, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C28C9314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkQPQUOutputTokenKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPQUOutputTokenKeySymbolLoc(void)::ptr;
  v7 = getkQPQUOutputTokenKeySymbolLoc(void)::ptr;
  if (!getkQPQUOutputTokenKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPQUOutputTokenKey");
    getkQPQUOutputTokenKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPQUOutputTokenKey()") description:{@"PRQueryQUProcessor.mm", 24, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C28C9458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::find<std::string>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 23);
  if (v6 >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = *a3;
  }

  if (v6 >= 0)
  {
    v8 = *(a3 + 23);
  }

  else
  {
    v8 = *(a3 + 8);
  }

  v9 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v7, v8);
  if (!a2)
  {
    return 0;
  }

  v10 = v9;
  v11 = vcnt_s8(a2);
  v11.i16[0] = vaddlv_u8(v11);
  v12 = v11.u32[0];
  if (v11.u32[0] > 1uLL)
  {
    v13 = v9;
    if (v9 >= a2)
    {
      v13 = v9 % a2;
    }
  }

  else
  {
    v13 = (a2 - 1) & v9;
  }

  v14 = *(a1 + 8 * v13);
  if (!v14)
  {
    return 0;
  }

  v15 = *v14;
  if (*v14)
  {
    do
    {
      v16 = v15[1];
      if (v16 == v10)
      {
        if (std::equal_to<std::string>::operator()[abi:nn200100](v15 + 2, a3))
        {
          return v15;
        }
      }

      else
      {
        if (v12 > 1)
        {
          if (v16 >= a2)
          {
            v16 %= a2;
          }
        }

        else
        {
          v16 &= a2 - 1;
        }

        if (v16 != v13)
        {
          return 0;
        }
      }

      v15 = *v15;
    }

    while (v15);
  }

  return v15;
}

uint64_t std::operator+[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, const void **a2, char *__s)
{
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  v7 = strlen(__s);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  result = std::string::basic_string[abi:nn200100](a1, v6 + v7);
  if (*(a1 + 23) < 0)
  {
    a1 = *a1;
  }

  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    result = memmove(a1, v9, v6);
  }

  v10 = a1 + v6;
  if (v7)
  {
    result = memmove(v10, __s, v7);
  }

  v10[v7] = 0;
  return result;
}

uint64_t ___ZL13QURankingNodePKcRKNSt3__113unordered_mapIifNS1_4hashIiEENS1_8equal_toIiEENS1_9allocatorINS1_4pairIKifEEEEEEffRKNS2_INS1_12basic_stringIcNS1_11char_traitsIcEENS7_IcEEEEfNS3_ISJ_EENS5_ISJ_EENS7_INS8_IKSJ_fEEEEEE_block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return a2;
  }

  v3 = *(a2 + 16);
  if (!v3)
  {
    return a2;
  }

  v5 = *(a1 + 32);
  std::string::basic_string[abi:nn200100]<0>(v27, *v3);
  if (std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::find<std::string>(v5, v27))
  {
    v6 = *(a1 + 32);
    std::string::basic_string[abi:nn200100]<0>(__p, **(a2 + 16));
    v7 = std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::find<std::string>(v6, __p);
    if (!v7)
    {
      goto LABEL_33;
    }

    v8 = v7[10];
    if (SHIBYTE(v26) < 0)
    {
      operator delete(__p[0]);
    }

    v9 = v8 + v8;
  }

  else
  {
    v9 = 1.0;
  }

  if (v28 < 0)
  {
    operator delete(v27[0]);
  }

  v10 = v9 * *(a1 + 48);
  v11 = *(a2 + 16);
  *(v11 + 52) = v10;
  *(v11 + 56) = *(a1 + 52);
  if (*(*(a1 + 40) + 24))
  {
    v12 = *v11;
    if (*v11)
    {
      __p[0] = 0;
      __p[1] = 0;
      v26 = 0;
      std::string::basic_string[abi:nn200100]<0>(v23, v12);
      {
        SpotlightU2AttributesToArgIDs(void)::_spotlightU2AttributesToArgIDs = 0u;
        *&qword_1EBF48208 = 0u;
        dword_1EBF48218 = 1065353216;
      }

      if (SpotlightU2AttributesToArgIDs(void)::onceToken[0] != -1)
      {
        dispatch_once(SpotlightU2AttributesToArgIDs(void)::onceToken, &__block_literal_global_71);
      }

      v13 = std::__hash_table<std::__hash_value_type<std::string,std::vector<int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<int>>>>::find<std::string>(v23);
      if (v13)
      {
        goto LABEL_20;
      }

      std::string::basic_string[abi:nn200100]<0>(v27, "default");
      v14 = std::__hash_table<std::__hash_value_type<std::string,std::vector<int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<int>>>>::find<std::string>(v27);
      if (v14)
      {
        v13 = v14;
        if (v28 < 0)
        {
          operator delete(v27[0]);
        }

LABEL_20:
        std::vector<int>::vector[abi:nn200100](__p, v13 + 5);
        if (v24 < 0)
        {
          operator delete(v23[0]);
        }

        v15 = __p[1];
        v16 = __p[0];
        if (__p[0] != __p[1])
        {
          v17 = *(a1 + 40);
          v18 = 0.0;
          v19 = __p[0];
          do
          {
            v20 = std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::find<int>(v17, *v19);
            if (v20 && v18 < *(v20 + 5))
            {
              v18 = *(v20 + 5);
            }

            ++v19;
          }

          while (v19 != v15);
          if (v18 > 0.0)
          {
            v21 = v18 * 0.1 + 0.9;
            *(*(a2 + 16) + 52) = v10 * (v21 + v21);
          }
        }

        if (v16)
        {
          __p[1] = v16;
          operator delete(v16);
        }

        return a2;
      }

LABEL_33:
      abort();
    }
  }

  return a2;
}

void sub_1C28C9898(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, uint64_t a2)
{
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
    v6 = *(a2 + 8);
  }

  v7 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v5, v6);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_24;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v9)
    {
      v12 = v7 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v7;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v8)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v9)
      {
        v15 %= *&v9;
      }
    }

    else
    {
      v15 &= *&v9 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_24;
    }

LABEL_23:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_24;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:nn200100](v14 + 2, a2))
  {
    goto LABEL_23;
  }

  return v14;
}

uint64_t std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::find<std::string>(void *a1, uint64_t a2)
{
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
    v6 = *(a2 + 8);
  }

  v7 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v5, v6);
  v8 = a1[1];
  if (!*&v8)
  {
    return 0;
  }

  v9 = v7;
  v10 = vcnt_s8(v8);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v8)
    {
      v12 = v7 % *&v8;
    }
  }

  else
  {
    v12 = (*&v8 - 1) & v7;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13)
  {
    return 0;
  }

  v14 = *v13;
  if (*v13)
  {
    do
    {
      v15 = v14[1];
      if (v9 == v15)
      {
        if (std::equal_to<std::string>::operator()[abi:nn200100](v14 + 2, a2))
        {
          return v14;
        }
      }

      else
      {
        if (v11 > 1)
        {
          if (v15 >= *&v8)
          {
            v15 %= *&v8;
          }
        }

        else
        {
          v15 &= *&v8 - 1;
        }

        if (v15 != v12)
        {
          return 0;
        }
      }

      v14 = *v14;
    }

    while (v14);
  }

  return v14;
}

void *std::vector<int>::vector[abi:nn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<int>::__vallocate[abi:nn200100](result, (v2 - *a2) >> 2);
  }

  return result;
}

void std::vector<int>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<int>>(a2);
  }

  std::vector<long long>::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<int>>(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    operator new();
  }

  std::vector<long long>::__throw_length_error[abi:nn200100]();
}

uint64_t std::string::basic_string[abi:nn200100](uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<long long>::__throw_length_error[abi:nn200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

void *___ZL31getkQPQUOutputTokenKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPQUOutputTokenKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPQUOutputTokenKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *QueryParserLibrary(void)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!QueryParserLibraryCore(char **)::frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = ___ZL22QueryParserLibraryCorePPc_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E8190B88;
    v7 = 0;
    QueryParserLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  v0 = QueryParserLibraryCore(char **)::frameworkLibrary;
  if (!QueryParserLibraryCore(char **)::frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *QueryParserLibrary()"];
    v1 = [v0 handleFailureInFunction:v4 file:@"PRQueryQUProcessor.mm" lineNumber:23 description:{@"%s", v5[0]}];
    __break(1u);
    goto LABEL_7;
  }

  v1 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t ___ZL22QueryParserLibraryCorePPc_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  QueryParserLibraryCore(char **)::frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *___ZL40getkQPQUOutputTokenArgScoresKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPQUOutputTokenArgScoresKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPQUOutputTokenArgScoresKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL37getkQPQUOutputTokenArgIdsKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPQUOutputTokenArgIdsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPQUOutputTokenArgIdsKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL36getkQPQUOutputTokenRangeKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPQUOutputTokenRangeKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPQUOutputTokenRangeKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t si_oid64psid_close(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = *(v1 + 24);
  if ((result & 0x80000000) == 0)
  {
    result = close(result);
    *(v1 + 24) = -1;
  }

  return result;
}

uint64_t si_oid64psid_path_to_oid_path(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v34[128] = *MEMORY[0x1E69E9840];
  if (v1)
  {
    v4 = v1;
    if (*v1 == 47)
    {
      v5 = v3;
      v6 = v2;
      v7 = v34;
      bzero(v34, 0x400uLL);
      v8 = 0;
      v9 = 0;
      v10 = 47;
      while (v9 != 1024)
      {
        v11 = v10;
        v12 = v10 == 47;
        if (v10 != 47 || !v8)
        {
          *v7++ = v10;
        }

        v10 = v4[++v9];
        v8 = v12;
        if (!v10)
        {
          v14 = v11 == 47 && v7 - v34 > 1;
          v7[-v14] = 0;
          v15 = &v7[!v14] - v34;
          bzero(v33, 0x400uLL);
          v16 = 0;
          v17 = &v33[v15];
          memset(&v31, 0, sizeof(v31));
          while (1)
          {
            __memcpy_chk();
            if (md_stat_real(v33, &v31))
            {
              st_ino = 0;
              v19 = 0;
            }

            else
            {
              st_ino = v31.st_ino;
              if (v5)
              {
                *v6 = v31.st_ino;
                v19 = 1;
              }

              else
              {
                v19 = 0;
              }

              v25 = v17;
              if (v15 >= 1)
              {
                v25 = v17;
                while (*v25 != 47)
                {
                  if (--v25 <= v33)
                  {
                    goto LABEL_40;
                  }
                }

                *v25 = 0;
              }

LABEL_40:
              if (v25 != v33)
              {
                v30 = v17;
                st_dev = v31.st_dev;
                v19 = v19;
                while (!md_stat_real(v33, &v31) && v31.st_dev == st_dev)
                {
                  v6[v19] = v31.st_ino;
                  if (v25 > v33)
                  {
                    while (*v25 != 47)
                    {
                      if (--v25 <= v33)
                      {
                        v25 = v33;
                        goto LABEL_49;
                      }
                    }

                    *v25 = 0;
                  }

LABEL_49:
                  ++v19;
                  if (v25 == v33)
                  {
                    v17 = v30;
                    goto LABEL_53;
                  }
                }

                v17 = v30;
              }

              if (v19)
              {
LABEL_53:
                v27 = &v6[v19];
                if (*(v27 - 1) != 2)
                {
                  v19 = (v19 + 1);
                  *v27 = 2;
                }
              }
            }

            v20 = v19 ? v5 : 1;
            if (v19 <= 1 && (v20 & 1) != 0)
            {
              goto LABEL_56;
            }

            bzero(v32, 0x1008uLL);
            __memcpy_chk();
            if ((v5 & 1) == 0)
            {
              v32[v19] = st_ino;
            }

            v21 = v19 + (v5 ^ 1);
            qsort_oids(v32, v21);
            if (v21 < 2)
            {
              goto LABEL_56;
            }

            v22 = v32[0];
            v23 = 1;
            while (1)
            {
              v24 = v32[v23];
              if (v24 == v22)
              {
                break;
              }

              ++v23;
              v22 = v24;
              if (v21 == v23)
              {
                goto LABEL_56;
              }
            }

            if (v16 == 100)
            {
              goto LABEL_55;
            }

            ++v16;
          }
        }
      }
    }
  }

LABEL_55:
  v19 = 0;
LABEL_56:
  v28 = *MEMORY[0x1E69E9840];
  return v19;
}

__darwin_ino64_t si_oid64psid_path_to_oid(int a1, char *a2, uint64_t a3)
{
  if (!a3)
  {
    memset(&v4, 0, sizeof(v4));
    if (md_stat_real(a2, &v4))
    {
      return 0;
    }

    else
    {
      return v4.st_ino;
    }
  }

  return a3;
}

char *si_oid64psid_fast_oid_to_path(uint64_t a1, uint64_t a2, char *a3)
{
  v3 = a3;
  v8 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 16);
  if (a2 == 2)
  {
    bzero(&v7, 0x878uLL);
    if (fstatfs(*(v4 + 24), &v7))
    {
      v3 = 0;
    }

    else
    {
      strlcpy(v3, v7.f_mntonname, 0x400uLL);
    }
  }

  else if ((*(v4 + 20) & 0x10) != 0)
  {
    sprintf(a3, "/.vol/%llu/%llu", *(v4 + 16), a2);
  }

  else
  {
    v3 = 0;
    *__error() = 45;
  }

  v5 = *MEMORY[0x1E69E9840];
  return v3;
}

char *si_oid64psid_oid_to_path(uint64_t a1, uint64_t a2, char *a3)
{
  v3 = a3;
  v19 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 16);
  if (fsgetpath(a3, 0x400uLL, (v6 + 4), a2) < 2)
  {
    if (dword_1EBF46AE4 >= 5)
    {
      v11 = *__error();
      v12 = _SILogForLogForCategory(6);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(v6 + 16);
        v18.f_bsize = 67109376;
        v18.f_iosize = v13;
        LOWORD(v18.f_blocks) = 2048;
        *(&v18.f_blocks + 2) = a2;
        _os_log_impl(&dword_1C278D000, v12, OS_LOG_TYPE_DEFAULT, "fsgetpath like %d/%llx\n", &v18, 0x12u);
      }

      v3 = 0;
      *__error() = v11;
    }

    else
    {
      v3 = 0;
    }
  }

  else if (*(a1 + 168) && (strstr(v3, ".migratedphotolibrary/") || strstr(v3, ".migratedaplibrary/") || strstr(v3, ".photolibrary/") || strstr(v3, ".aplibrary/")))
  {
    memset(&v15, 0, sizeof(v15));
    bzero(&v18, 0x878uLL);
    if (!stat(v3, &v15) && (v15.st_mode & 0xF000) == 0x8000 && v15.st_nlink >= 2u && !statfs(v3, &v18))
    {
      st_ino = v15.st_ino;
      do
      {
        bzero(__s1, 0x400uLL);
        f_fsid = v18.f_fsid;
        if ((*(a1 + 168))(a1, &st_ino))
        {
          break;
        }

        v7 = fsgetpath(__s1, 0x400uLL, &f_fsid, st_ino);
        if (v7 > 2 && strstr(__s1, ".photoslibrary/"))
        {
          strlcpy(v3, __s1, 0x400uLL);
          break;
        }
      }

      while (v7 >= 2 && st_ino != 0);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t si_psid_iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 16);
  pthread_mutex_lock((v4 + 2080));
  if (*(v4 + 2) != 1)
  {
    v6 = 78;
    goto LABEL_9;
  }

  v5 = *(v4 + 8);
  v38 = 0;
  v39 = 0;
  memset(v41, 0, sizeof(v41));
  v6 = sqlite3BtreeCursor(*v5, *(v5 + 8), 1, *(v5 + 24), &v38);
  if (!v6)
  {
    v7 = v38;
    v8 = moveToRoot(v38);
    if (v8)
    {
      goto LABEL_4;
    }

    v16 = *(v7 + 97);
    if (*(v7 + 97))
    {
      v8 = moveToLeftmost(v7);
      v37 = 0;
      if (!v8 && v16)
      {
        while (1)
        {
          if (*(v7 + 97))
          {
            getCellInfo(v7);
            v17 = v7[9];
            if (v17 == 8)
            {
              Payload = getPayload(v7, 8, &v39, 0);
              if (Payload)
              {
                goto LABEL_36;
              }

              v19 = *__error();
              v20 = _SILogForLogForCategory(4);
              v21 = 2 * (dword_1EBF46ADC < 4);
              if (os_log_type_enabled(v20, v21))
              {
                *buf = 134217984;
                *v43 = v39;
                v22 = v20;
                v23 = v21;
                v24 = "key: %lld # ";
                v25 = 12;
LABEL_22:
                _os_log_impl(&dword_1C278D000, v22, v23, v24, buf, v25);
                goto LABEL_23;
              }

              goto LABEL_23;
            }
          }

          else
          {
            LODWORD(v17) = 0;
          }

          Payload = getPayload(v7, v17, v41, 0);
          if (Payload)
          {
            goto LABEL_36;
          }

          v19 = *__error();
          v26 = _SILogForLogForCategory(4);
          v27 = 2 * (dword_1EBF46ADC < 4);
          if (os_log_type_enabled(v26, v27))
          {
            *buf = 134218498;
            *v43 = *&v41[0];
            *&v43[8] = 1024;
            *&v43[10] = DWORD2(v41[0]);
            v44 = 2080;
            v45 = v41 | 0xE;
            v22 = v26;
            v23 = v27;
            v24 = "key: %lld / %d / %s # value: ";
            v25 = 28;
            goto LABEL_22;
          }

LABEL_23:
          *__error() = v19;
          if (!*(v7 + 97))
          {
            v28 = 0;
LABEL_31:
            Payload = getPayload(v7, v28, v41, 1);
            if (Payload)
            {
              goto LABEL_36;
            }

            v34 = *__error();
            v35 = _SILogForLogForCategory(4);
            v36 = 2 * (dword_1EBF46ADC < 4);
            if (os_log_type_enabled(v35, v36))
            {
              *buf = 134218498;
              *v43 = *&v41[0];
              *&v43[8] = 1024;
              *&v43[10] = DWORD2(v41[0]);
              v44 = 2080;
              v45 = v41 | 0xE;
              _os_log_impl(&dword_1C278D000, v35, v36, "value: %lld / %d / %s\n", buf, 0x1Cu);
            }

            *__error() = v34;
            goto LABEL_35;
          }

          getCellInfo(v7);
          v28 = *(v7 + 20);
          if (v28 != 8)
          {
            goto LABEL_31;
          }

          Payload = getPayload(v7, 8, &v39, 1);
          if (Payload)
          {
            goto LABEL_36;
          }

          v29 = *__error();
          v30 = _SILogForLogForCategory(4);
          v31 = 2 * (dword_1EBF46ADC < 4);
          v32 = os_log_type_enabled(v30, v31);
          v33 = v39;
          if (v32)
          {
            *buf = 134217984;
            *v43 = v39;
            _os_log_impl(&dword_1C278D000, v30, v31, "value: %lld\n", buf, 0xCu);
          }

          *__error() = v29;
          bzero(buf, 0x400uLL);
          v40 = 0;
          if (!get_path_for_id_64(v5, v33, &v40, buf, 1024))
          {
            (*(a3 + 16))(a3, v33, v40);
          }

LABEL_35:
          Payload = sqlite3BtreeNext(v7, &v37);
          if (Payload | v37)
          {
LABEL_36:
            v6 = Payload;
            goto LABEL_7;
          }
        }
      }
    }

    else
    {
      v8 = 0;
      v37 = 1;
    }

LABEL_4:
    v9 = *__error();
    v10 = _SILogForLogForCategory(4);
    v11 = 2 * (dword_1EBF46ADC < 4);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = __error();
      v13 = strerror(*v12);
      *buf = 67109378;
      *v43 = v8;
      *&v43[4] = 2080;
      *&v43[6] = v13;
      _os_log_impl(&dword_1C278D000, v10, v11, "psid_dump: failed to go to the beginning of the db! (%d / %s)\n", buf, 0x12u);
    }

    *__error() = v9;
    v6 = 2;
LABEL_7:
    sqlite3BtreeCloseCursor(v7);
  }

LABEL_9:
  pthread_mutex_unlock((v4 + 2080));
  v14 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t si_psid_set_path_to_oid(uint64_t a1, const char *a2, uint64_t a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 16);
  pthread_mutex_lock((v5 + 2080));
  if (*v5)
  {
    if (dword_1EBF46AE4 >= 5)
    {
      v29 = *__error();
      v30 = _SILogForLogForCategory(6);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        *&v40[0] = a3;
        WORD4(v40[0]) = 2080;
        *(v40 + 10) = a2;
        _os_log_impl(&dword_1C278D000, v30, OS_LOG_TYPE_DEFAULT, "%lld -> %s", buf, 0x16u);
      }

      *__error() = v29;
    }

    v6 = *(v5 + 2064);
    if (!strncmp(a2, (v5 + 16), v6))
    {
      v7 = *(v5 + 8);
      v8 = &a2[v6];
      if (*(v5 + 2) == 1)
      {
        v9 = *(v5 + 2144);
        v10 = set_id_for_path_64(*(v5 + 8));
        goto LABEL_8;
      }

      v33 = 0;
      v34 = a3;
      v32 = 268;
      if (_sqlite_get(v7, &v34, 4, buf, &v32))
      {
        v10 = 22;
        goto LABEL_8;
      }

      v41 = 0;
      memset(v40, 0, sizeof(v40));
      *buf = 2;
      v16 = *v8;
      if (!*v8)
      {
        v10 = 17;
LABEL_8:
        if (v10)
        {
          v11 = *__error();
          v12 = _SILogForLogForCategory(6);
          v13 = 2 * (dword_1EBF46AE4 < 4);
          if (os_log_type_enabled(v12, v13))
          {
            *buf = 134218242;
            *&v40[0] = a3;
            WORD4(v40[0]) = 2080;
            *(v40 + 10) = a2;
            _os_log_impl(&dword_1C278D000, v12, v13, "Failed %lld -> %s", buf, 0x16u);
          }

          *__error() = v11;
        }

        goto LABEL_12;
      }

      v17 = v40 + 6;
      v10 = 17;
      while (1)
      {
        while (v16 == 47)
        {
          v18 = *++v8;
          v16 = v18;
        }

        v19 = v8;
        if (!v16)
        {
          goto LABEL_8;
        }

        do
        {
          if (v16 == 47)
          {
            break;
          }

          v20 = *++v19;
          v16 = v20;
        }

        while (v20);
        v21 = v19 - v8;
        if (((v19 - v8) & 0xFF00) != 0)
        {
          v21 = 255;
        }

        WORD2(v40[0]) = v21;
        __strncpy_chk();
        v22 = WORD2(v40[0]);
        ++WORD2(v40[0]);
        v17[v22] = 0;
        LODWORD(v40[0]) = 0;
        v8 = *v19 == 47 ? v19 + 1 : v19;
        if (psid_lookup(v7, buf, &v33))
        {
          break;
        }

LABEL_37:
        *buf = v33;
        v16 = *v8;
        if (!*v8)
        {
          goto LABEL_8;
        }
      }

      if (*v8)
      {
        v10 = 2;
        goto LABEL_8;
      }

      v31 = v17;
      if (v34 == 2 || v34 > 0x63)
      {
        if (!_psid_insert(v7, buf, &v34))
        {
          v10 = 0;
LABEL_36:
          v17 = v31;
          goto LABEL_37;
        }
      }

      else
      {
        v23 = *__error();
        v24 = _SILogForLogForCategory(4);
        v25 = 2 * (dword_1EBF46ADC < 4);
        if (os_log_type_enabled(v24, v25))
        {
          *v35 = 67109120;
          v36 = v34;
          _os_log_impl(&dword_1C278D000, v24, v25, "psid_insert_with_id: fid %d not valid!\n", v35, 8u);
        }

        *__error() = v23;
      }

      v26 = *__error();
      v27 = _SILogForLogForCategory(4);
      v28 = 2 * (dword_1EBF46ADC < 4);
      if (os_log_type_enabled(v27, v28))
      {
        *v35 = 67109378;
        v36 = v34;
        v37 = 2080;
        v38 = v31;
        _os_log_impl(&dword_1C278D000, v27, v28, "set_id_for_path: Failed to insert fid %d for %s\n", v35, 0x12u);
      }

      *__error() = v26;
      goto LABEL_36;
    }
  }

LABEL_12:
  result = pthread_mutex_unlock((v5 + 2080));
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t si_psid_set_root_path2(uint64_t a1, const char *a2, const char *a3)
{
  v5 = *(a1 + 16);
  pthread_mutex_lock((v5 + 2080));
  if (*v5)
  {
    v6 = strlen(a2);
    *(v5 + 2064) = v6;
    v7 = strlen(a3);
    *(v5 + 2068) = v7;
    v8 = 0xFFFFFFFFLL;
    if (v6 <= 0x3FF && v7 <= 0x3FF)
    {
      memcpy((v5 + 16), a2, v6 & 0x3FF);
      memcpy((v5 + 1040), a3, *(v5 + 2068));
      v8 = 0;
    }
  }

  else
  {
    v8 = 0xFFFFFFFFLL;
  }

  pthread_mutex_unlock((v5 + 2080));
  return v8;
}

void *si_psid_oid_to_firm_path(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 16);
  v14 = 0;
  pthread_mutex_lock((v5 + 2080));
  if (*v5)
  {
    v6 = *(v5 + 8);
    if (*(v5 + 2) == 1)
    {
      path_for_id_64 = get_path_for_id_64(v6, a2, &v14, a3 + *(v5 + 2068), 1024 - *(v5 + 2068));
    }

    else
    {
      path_for_id_64 = get_path_for_id(v6, a2, &v14, a3 + *(v5 + 2068), 1024 - *(v5 + 2068));
    }

    if (path_for_id_64)
    {
      v8 = 0;
      *__error() = path_for_id_64;
    }

    else
    {
      v9 = *(v5 + 2068);
      if (*(v5 + 1040 + v9 - 1) == 47)
      {
        LODWORD(v9) = v9 - 1;
      }

      v8 = (v14 - v9);
      memcpy(v8, (v5 + 1040), v9);
    }
  }

  else
  {
    v8 = 0;
  }

  if (dword_1EBF46AE4 >= 5)
  {
    v12 = *__error();
    v13 = _SILogForLogForCategory(6);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v16 = v8;
      v17 = 2048;
      v18 = a2;
      _os_log_impl(&dword_1C278D000, v13, OS_LOG_TYPE_DEFAULT, "found %s for %llx\n", buf, 0x16u);
    }

    *__error() = v12;
  }

  pthread_mutex_unlock((v5 + 2080));
  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t si_psid_check_sandbox(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *__error();
  v4 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = a2;
    _os_log_impl(&dword_1C278D000, v4, OS_LOG_TYPE_DEFAULT, "======^^^^^ si_psid_check_sandbox sandbox (NOT IMPLEMENTED!) count:%ld", &v7, 0xCu);
  }

  *__error() = v3;
  v5 = *MEMORY[0x1E69E9840];
  return 1;
}

uint64_t si_oid_to_parent(uint64_t a1, unint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a2 == 2)
  {
    v2 = 0;
    goto LABEL_12;
  }

  v4 = *(a1 + 16);
  pthread_mutex_lock((v4 + 2080));
  if (!*v4)
  {
    goto LABEL_9;
  }

  v5 = *(v4 + 8);
  if (*(v4 + 2) != 1)
  {
    LODWORD(v10) = a2;
    v25 = 0u;
    memset(v26, 0, 28);
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    memset(buf, 0, sizeof(buf));
    v11 = 268;
    if (!_sqlite_get(v5, &v10, 4, buf, &v11))
    {
      v2 = *buf;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  memset(v26, 0, sizeof(v26));
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  memset(buf, 0, sizeof(buf));
  v10 = 272;
  v11 = a2;
  if (_sqlite_get(v5, &v11, 8, buf, &v10))
  {
LABEL_8:
    *__error() = 2;
LABEL_9:
    v2 = -1;
    goto LABEL_10;
  }

  v2 = *buf;
LABEL_10:
  if (dword_1EBF46AE4 >= 5)
  {
    v8 = *__error();
    v9 = _SILogForLogForCategory(6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      *&buf[4] = v2;
      *&buf[12] = 2048;
      *&buf[14] = a2;
      _os_log_impl(&dword_1C278D000, v9, OS_LOG_TYPE_DEFAULT, "found %lld for %llx\n", buf, 0x16u);
    }

    *__error() = v8;
  }

  pthread_mutex_unlock((v4 + 2080));
LABEL_12:
  v6 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t si_psid_close(uint64_t a1)
{
  v1 = *(a1 + 16);
  pthread_mutex_lock((v1 + 2080));
  v2 = *(v1 + 8);
  if (*(v1 + 2) == 1)
  {
    release_persistent_id_64_store(v2);
  }

  else
  {
    release_persistent_id_store(v2);
  }

  *(v1 + 8) = 0;
  *v1 = 0;

  return pthread_mutex_unlock((v1 + 2080));
}

uint64_t si_psid_delete(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  v7 = 0;
  bzero(v8, 0x400uLL);
  pthread_mutex_lock((v3 + 2080));
  if (*v3)
  {
    v4 = *(v3 + 8);
    if (*(v3 + 2) == 1)
    {
      if (!get_path_for_id_64(v4, a2, &v7, &v8[*(v3 + 2064)], 1024 - *(v3 + 2064)))
      {
        remove_path_64(*(v3 + 8), v7);
      }
    }

    else if (!get_path_for_id(v4, a2, &v7, &v8[*(v3 + 2064)], 1024 - *(v3 + 2064)))
    {
      remove_path(*(v3 + 8), v7);
    }
  }

  result = pthread_mutex_unlock((v3 + 2080));
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t si_psid_rename(uint64_t a1, const char *a2, const char *a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 16);
  pthread_mutex_lock((v5 + 2080));
  if (*v5)
  {
    v6 = *(v5 + 2064);
    if (!strncmp(a2, (v5 + 16), v6) && !strncmp(a3, (v5 + 16), v6))
    {
      v7 = *(v5 + 8);
      if (*(v5 + 2) == 1)
      {
        rename_path_64(*(v5 + 8), &a2[v6], &a3[v6], *(v5 + 2144));
        goto LABEL_30;
      }

      v30 = 0;
      remove_path(v7, &a3[v6]);
      if (get_id_for_path(v7, &a2[v6], &v30 + 1, &v30, 0))
      {
        goto LABEL_30;
      }

      strncpy(__dst, &a3[v6], 0x400uLL);
      __dst[1023] = 0;
      v8 = strrchr(__dst, 47);
      if (v8)
      {
        v9 = v8;
        *v8 = 0;
      }

      else
      {
        v9 = &__dst[-(__dst[0] != 47)];
      }

      v29 = 0;
      if (get_id_for_path(v7, __dst, &v29, 0, 1))
      {
        goto LABEL_30;
      }

      memset(v42, 0, 268);
      v10 = strncpy((v42 | 0xA), v9 + 1, 0x100uLL);
      BYTE1(v42[66]) = 0;
      v11 = strlen(v10);
      v42[0] = v29;
      LOWORD(v42[2]) = v11 + 1;
      v12 = _sqlite_bulkBegin(v7);
      if (v12)
      {
        v13 = v12;
        v14 = *__error();
        v15 = _SILogForLogForCategory(4);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316418;
          v32 = "rename_path";
          v33 = 1024;
          v34 = 913;
          v35 = 1024;
          v36 = v13;
          v37 = 1024;
          *v38 = HIDWORD(v30);
          *&v38[4] = 1024;
          *&v38[6] = v42[0];
          v39 = 2080;
          v40 = v42 | 0xA;
          v16 = "%s:%d: psid-rename: begin error %d updating the file-fid record for fid %d pid %d / %s. \n";
LABEL_34:
          _os_log_error_impl(&dword_1C278D000, v15, OS_LOG_TYPE_ERROR, v16, buf, 0x2Eu);
          goto LABEL_29;
        }

        goto LABEL_29;
      }

      if (_sqlite_insert(v7, &v30 + 4, 4uLL, v42, v11 + 13, 1))
      {
        v17 = *__error();
        v18 = _SILogForLogForCategory(4);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v32 = "rename_path";
          v33 = 1024;
          v34 = 921;
          v35 = 1024;
          v36 = HIDWORD(v30);
          _os_log_error_impl(&dword_1C278D000, v18, OS_LOG_TYPE_ERROR, "%s:%d: psid-rename: Could not update the file-fid record for fid %d\n", buf, 0x18u);
        }

        *__error() = v17;
      }

      if (_sqlite_insert(v7, v42, v11 + 13, &v30 + 4, 4, 1))
      {
        v19 = *__error();
        v20 = _SILogForLogForCategory(4);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          v32 = "rename_path";
          v33 = 1024;
          v34 = 929;
          v35 = 1024;
          v36 = v42[0];
          v37 = 2080;
          *v38 = v42 | 0xA;
          _os_log_error_impl(&dword_1C278D000, v20, OS_LOG_TYPE_ERROR, "%s:%d: psid-rename: failed to insert new record for %d / %s.\n", buf, 0x22u);
        }

        *__error() = v19;
      }

      v42[0] = v30;
      v21 = strrchr(&a2[v6], 47);
      if (v21)
      {
        v22 = strncpy((v42 | 0xA), v21 + 1, 0x100uLL);
        BYTE1(v42[66]) = 0;
        LOWORD(v42[2]) = strlen(v22) + 1;
        if (_sqlite_delete(v7, v42, LOWORD(v42[2]) + 12))
        {
          v23 = *__error();
          v24 = _SILogForLogForCategory(4);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            v32 = "rename_path";
            v33 = 1024;
            v34 = 951;
            v35 = 1024;
            v36 = v42[0];
            v37 = 2080;
            *v38 = v42 | 0xA;
            _os_log_error_impl(&dword_1C278D000, v24, OS_LOG_TYPE_ERROR, "%s:%d: psid-rename: failed to delete old record for %d / %s\n", buf, 0x22u);
          }

          *__error() = v23;
        }
      }

      v25 = _sqlite_bulkEnd(v7);
      if (v25)
      {
        v26 = v25;
        v14 = *__error();
        v15 = _SILogForLogForCategory(4);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316418;
          v32 = "rename_path";
          v33 = 1024;
          v34 = 957;
          v35 = 1024;
          v36 = v26;
          v37 = 1024;
          *v38 = HIDWORD(v30);
          *&v38[4] = 1024;
          *&v38[6] = v42[0];
          v39 = 2080;
          v40 = v42 | 0xA;
          v16 = "%s:%d: psid-rename: end error %d updating the file-fid record for fid %d pid %d / %s. \n";
          goto LABEL_34;
        }

LABEL_29:
        *__error() = v14;
      }
    }
  }

LABEL_30:
  v27 = *MEMORY[0x1E69E9840];

  return pthread_mutex_unlock((v5 + 2080));
}

uint64_t si_psid_sync(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 16);
  pthread_mutex_lock((v1 + 2080));
  if (*v1)
  {
    v2 = *(v1 + 8);
    if (*(v1 + 2) == 1)
    {
      if (v2[4] <= 0x7FFFFFFFFFFFFFFELL)
      {
        v3 = *__error();
        v4 = _SILogForLogForCategory(4);
        v5 = 2 * (dword_1EBF46ADC < 4);
        if (os_log_type_enabled(v4, v5))
        {
          v6 = v2[4];
          *buf = 134217984;
          v35 = v6;
          v7 = "sync_psid_64_store: danger! master_fid %lld looks bad. not syncing.\n";
          v8 = v4;
          v9 = v5;
          v10 = 12;
LABEL_10:
          _os_log_impl(&dword_1C278D000, v8, v9, v7, buf, v10);
          goto LABEL_11;
        }

        goto LABEL_11;
      }

      v33 = v2[4];
      v15 = _sqlite_insert(v2, &master_fid_rec_4983, master_fid_rec_size_4985, &v33, 8, 0);
      if (v15)
      {
        v11 = v15;
        v3 = *__error();
        v16 = _SILogForLogForCategory(4);
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_36;
        }

        v17 = v2[4];
        *buf = 136315650;
        v35 = "sync_persistent_id_64_store";
        v36 = 1024;
        v37 = 331;
        v38 = 2048;
        v39 = v17;
        v18 = "%s:%d: psid-sync: Failed to update the master fid! (0x%llx)\n";
        v19 = v16;
        v20 = 28;
LABEL_18:
        _os_log_error_impl(&dword_1C278D000, v19, OS_LOG_TYPE_ERROR, v18, buf, v20);
        goto LABEL_36;
      }

      v24 = v2[2];
      if (v24)
      {
        sqlite3BtreeCloseCursor(v24);
        v2[2] = 0;
      }

      v25 = sqlite3BtreeSync(*v2);
      if (v25)
      {
        v11 = v25;
        v3 = *__error();
        v26 = _SILogForLogForCategory(4);
        v27 = 2 * (dword_1EBF46ADC < 4);
        if (!os_log_type_enabled(v26, v27))
        {
          goto LABEL_36;
        }

        *buf = 67109120;
        LODWORD(v35) = v11;
        v28 = "Couldn't sync btree; rc = %d\n";
LABEL_35:
        _os_log_impl(&dword_1C278D000, v26, v27, v28, buf, 8u);
        goto LABEL_36;
      }

      v11 = sqlite3BtreeCommit(*v2);
      if (v11)
      {
        v3 = *__error();
        v26 = _SILogForLogForCategory(4);
        v27 = 2 * (dword_1EBF46ADC < 4);
        if (!os_log_type_enabled(v26, v27))
        {
          goto LABEL_36;
        }

        *buf = 67109120;
        LODWORD(v35) = v11;
        v28 = "Couldn't commit; rc = %d\n";
        goto LABEL_35;
      }
    }

    else
    {
      if (*(v2 + 8) <= 0x63u)
      {
        v3 = *__error();
        v12 = _SILogForLogForCategory(4);
        v13 = 2 * (dword_1EBF46ADC < 4);
        if (os_log_type_enabled(v12, v13))
        {
          v14 = *(v2 + 8);
          *buf = 67109120;
          LODWORD(v35) = v14;
          v7 = "sync_psid_store: danger! master_fid %d looks bad. not syncing.\n";
          v8 = v12;
          v9 = v13;
          v10 = 8;
          goto LABEL_10;
        }

LABEL_11:
        v11 = 22;
LABEL_36:
        *__error() = v3;
        goto LABEL_37;
      }

      LODWORD(v33) = *(v2 + 8);
      v21 = _sqlite_insert(v2, &master_fid_rec, master_fid_rec_size, &v33, 4, 0);
      if (v21)
      {
        v11 = v21;
        v3 = *__error();
        v22 = _SILogForLogForCategory(4);
        if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_36;
        }

        v23 = *(v2 + 8);
        *buf = 136315650;
        v35 = "sync_persistent_id_store";
        v36 = 1024;
        v37 = 331;
        v38 = 1024;
        LODWORD(v39) = v23;
        v18 = "%s:%d: psid-sync: Failed to update the master fid! (0x%x)\n";
        v19 = v22;
        v20 = 24;
        goto LABEL_18;
      }

      v29 = v2[2];
      if (v29)
      {
        sqlite3BtreeCloseCursor(v29);
        v2[2] = 0;
      }

      v30 = sqlite3BtreeSync(*v2);
      if (v30)
      {
        v11 = v30;
        v3 = *__error();
        v26 = _SILogForLogForCategory(4);
        v27 = 2 * (dword_1EBF46ADC < 4);
        if (!os_log_type_enabled(v26, v27))
        {
          goto LABEL_36;
        }

        *buf = 67109120;
        LODWORD(v35) = v11;
        v28 = "Couldn't sync btree; rc = %d\n";
        goto LABEL_35;
      }

      v11 = sqlite3BtreeCommit(*v2);
      if (v11)
      {
        v3 = *__error();
        v26 = _SILogForLogForCategory(4);
        v27 = 2 * (dword_1EBF46ADC < 4);
        if (!os_log_type_enabled(v26, v27))
        {
          goto LABEL_36;
        }

        *buf = 67109120;
        LODWORD(v35) = v11;
        v28 = "Couldn't commit; rc = %d\n";
        goto LABEL_35;
      }
    }
  }

  else
  {
    v11 = 0xFFFFFFFFLL;
  }

LABEL_37:
  pthread_mutex_unlock((v1 + 2080));
  v31 = *MEMORY[0x1E69E9840];
  return v11;
}

BOOL si_psid_check_perms(uint64_t a1, int64_t a2, uint64_t a3, void *a4, uint64_t a5, _BYTE *a6, uint64_t a7, int a8)
{
  v25 = *MEMORY[0x1E69E9840];
  bzero(v24, 0x400uLL);
  if (a2 >= 1)
  {
    v14 = 0;
    v15 = 0;
    v16 = *(a1 + 16);
    while (1)
    {
      if (!*(a4 + v15))
      {
        if (a6 && *a6 == 1)
        {
          memset(a4, 1, a2);
          goto LABEL_26;
        }

        v17 = si_psid_oid_to_path(a1, *(a3 + 8 * v15), v24);
        if (v17)
        {
          if (*(v16 + 1) == 1 && (a8 & 1) == 0)
          {
            v23 = 0;
            *&v22.st_dev = xmmword_1C2BFAA08;
            *&v22.st_uid = 0;
            if (getattrlist(v17, &v22, &v23, 8uLL, 0))
            {
LABEL_18:
              if (*__error() == 2)
              {
                v18 = 2;
              }

              else
              {
                v18 = 1;
              }
            }

            else
            {
              v18 = (v23 & 0x400000000) == 0;
            }

            *(a4 + v15) = v18;
            goto LABEL_22;
          }

          if (a8)
          {
            memset(&v22, 0, sizeof(v22));
            if (stat(v17, &v22) < 0)
            {
              goto LABEL_18;
            }
          }

          else
          {
            v19 = open(v17, 0);
            if (v19 < 0)
            {
              goto LABEL_18;
            }

            close(v19);
          }

          *(a4 + v15) = 0;
        }

        else
        {
          *(a4 + v15) = 2;
        }
      }

LABEL_22:
      v14 = ++v15 >= a2;
      if (a2 == v15)
      {
        goto LABEL_26;
      }
    }
  }

  v14 = 1;
LABEL_26:
  v20 = *MEMORY[0x1E69E9840];
  return v14;
}

void *si_psid_oid_to_path(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 16);
  v14 = 0;
  pthread_mutex_lock((v5 + 2080));
  if (*v5)
  {
    v6 = *(v5 + 8);
    if (*(v5 + 2) == 1)
    {
      path_for_id_64 = get_path_for_id_64(v6, a2, &v14, a3 + *(v5 + 2064), 1024 - *(v5 + 2064));
    }

    else
    {
      path_for_id_64 = get_path_for_id(v6, a2, &v14, a3 + *(v5 + 2064), 1024 - *(v5 + 2064));
    }

    if (path_for_id_64)
    {
      v8 = 0;
      *__error() = path_for_id_64;
    }

    else
    {
      v9 = *(v5 + 2064);
      if (*(v5 + 16 + v9 - 1) == 47)
      {
        LODWORD(v9) = v9 - 1;
      }

      v8 = (v14 - v9);
      memcpy(v8, (v5 + 16), v9);
    }
  }

  else
  {
    v8 = 0;
  }

  if (dword_1EBF46AE4 >= 5)
  {
    v12 = *__error();
    v13 = _SILogForLogForCategory(6);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v16 = v8;
      v17 = 2048;
      v18 = a2;
      _os_log_impl(&dword_1C278D000, v13, OS_LOG_TYPE_DEFAULT, "found %s for %llx\n", buf, 0x16u);
    }

    *__error() = v12;
  }

  pthread_mutex_unlock((v5 + 2080));
  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t si_psid_path_to_oid_path(uint64_t a1, const char *a2, uint64_t a3, void *a4, char a5, uint64_t a6, char a7)
{
  v11 = *(a1 + 16);
  pthread_mutex_lock((v11 + 2080));
  v12 = *v11;
  if ((a7 & 1) == 0)
  {
    if (*v11)
    {
      v13 = *(v11 + 516);
      if (!strncmp(a2, v11 + 16, v13))
      {
        v14 = *(v11 + 1);
        v15 = &a2[v13];
        v16 = a4;
        v17 = a5;
        if (v11[2] == 1)
        {
          v18 = 0;
LABEL_12:
          v21 = psid64_oidPathForPath(v14, v15, v16, v17, v18);
LABEL_15:
          v20 = v21;
          goto LABEL_16;
        }

        v18 = 0;
LABEL_14:
        v21 = psid32_oidPathForPath(v14, v15, v16, v17, v18);
        goto LABEL_15;
      }

      goto LABEL_8;
    }

LABEL_10:
    v20 = 0;
    goto LABEL_16;
  }

  if (!*v11)
  {
    goto LABEL_10;
  }

  v13 = *(v11 + 516);
  if (!strncmp(a2, v11 + 16, v13))
  {
    v14 = *(v11 + 1);
    v15 = &a2[v13];
    v16 = a4;
    v17 = a5;
    v18 = 1;
    if (v11[2] == 1)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

LABEL_8:
  v19 = strlen(a2);
  if (v19 != v13 - 1)
  {
    goto LABEL_10;
  }

  v20 = 2 * (strncmp(a2, v11 + 16, v19) == 0);
LABEL_16:
  pthread_mutex_unlock((v11 + 2080));
  return v20;
}

uint64_t psid64_oidPathForPath(uint64_t *a1, uint64_t a2, void *a3, char a4, char a5)
{
  v21 = *MEMORY[0x1E69E9840];
  bzero(__s, 0x400uLL);
  __strlcpy_chk();
  v19 = 0;
  if (a4)
  {
    for (i = strlen(__s); i; __s[--i] = 0)
    {
      if (__s[i - 1] != 47)
      {
        break;
      }
    }
  }

  else
  {
    id_for_path_64 = get_id_for_path_64(a1, __s, &v18, &v19, a5, 0);
    if (id_for_path_64)
    {
      *__error() = id_for_path_64;
      v11 = 0xFFFFFFFFLL;
      goto LABEL_20;
    }

    v12 = strrchr(__s, 47);
    if (v12)
    {
      if (v12 == __s)
      {
        *a3 = v19;
        v11 = 1;
        goto LABEL_20;
      }

      *v12 = 0;
    }
  }

  v11 = 0;
  do
  {
    v18 = 0;
    get_id_for_path_64(a1, __s, &v18, &v19, a5, 0);
    v13 = v18;
    if (v18)
    {
      a3[v11] = v18;
      v11 = (v11 + 1);
    }

    v14 = strrchr(__s, 47);
    if (!v14)
    {
      break;
    }

    if (v14 == __s)
    {
      break;
    }

    *v14 = 0;
  }

  while (v13);
  if (v11)
  {
    v15 = &a3[v11];
    if (*(v15 - 1) != 2)
    {
      v11 = (v11 + 1);
      *v15 = 2;
    }
  }

LABEL_20:
  v16 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t psid32_oidPathForPath(uint64_t a1, uint64_t a2, void *a3, char a4, char a5)
{
  v21 = *MEMORY[0x1E69E9840];
  bzero(__s, 0x400uLL);
  __strlcpy_chk();
  v19 = 0;
  if (a4)
  {
    for (i = strlen(__s); i; __s[--i] = 0)
    {
      if (__s[i - 1] != 47)
      {
        break;
      }
    }
  }

  else
  {
    id_for_path = get_id_for_path(a1, __s, &v18, &v19, a5);
    if (id_for_path)
    {
      *__error() = id_for_path;
      v11 = 0xFFFFFFFFLL;
      goto LABEL_20;
    }

    v12 = strrchr(__s, 47);
    if (v12)
    {
      if (v12 == __s)
      {
        *a3 = v19;
        v11 = 1;
        goto LABEL_20;
      }

      *v12 = 0;
    }
  }

  v11 = 0;
  do
  {
    v18 = 0;
    get_id_for_path(a1, __s, &v18, &v19, a5);
    v13 = v18;
    if (v18)
    {
      a3[v11] = v18;
      v11 = (v11 + 1);
    }

    v14 = strrchr(__s, 47);
    if (!v14)
    {
      break;
    }

    if (v14 == __s)
    {
      break;
    }

    *v14 = 0;
  }

  while (v13);
  if (v11)
  {
    v15 = &a3[v11];
    if (*(v15 - 1) != 2)
    {
      v11 = (v11 + 1);
      *v15 = 2;
    }
  }

LABEL_20:
  v16 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t si_psid_path_to_oid(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, int a5)
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 16);
  v23 = 0;
  v24 = 0;
  pthread_mutex_lock((v7 + 2080));
  v8 = *v7;
  if (a5)
  {
    if (!*v7)
    {
      goto LABEL_22;
    }

    v9 = *(v7 + 516);
    if (!strncmp(a2, v7 + 16, v9))
    {
      if (v7[2] == 1)
      {
        if (!get_id_for_path_64(*(v7 + 1), &a2[v9], &v24, &v23, 1, *(v7 + 268)))
        {
          goto LABEL_22;
        }
      }

      else
      {
        *buf = 0;
        v22 = 0;
        id_for_path = get_id_for_path(*(v7 + 1), &a2[v9], buf, &v22, 1);
        v24 = *buf;
        v23 = v22;
        if (!id_for_path)
        {
          goto LABEL_22;
        }
      }

      if (dword_1EBF46AE4 >= 5)
      {
        v13 = *__error();
        v14 = _SILogForLogForCategory(6);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1C278D000, v14, OS_LOG_TYPE_DEFAULT, "Got error\n", buf, 2u);
        }

        *__error() = v13;
      }

LABEL_21:
      v24 = 0;
      goto LABEL_22;
    }

    goto LABEL_9;
  }

  if (!*v7)
  {
    goto LABEL_22;
  }

  v9 = *(v7 + 516);
  if (strncmp(a2, v7 + 16, v9))
  {
LABEL_9:
    v10 = strlen(a2);
    if (v10 == v9 - 1 && !strncmp(a2, v7 + 16, v10))
    {
      v24 = 2;
    }

    goto LABEL_22;
  }

  if (v7[2] == 1)
  {
    id_for_path_64 = get_id_for_path_64(*(v7 + 1), &a2[v9], &v24, &v23, 0, *(v7 + 268));
  }

  else
  {
    *buf = 0;
    v22 = 0;
    id_for_path_64 = get_id_for_path(*(v7 + 1), &a2[v9], buf, &v22, 0);
    v24 = *buf;
    v23 = v22;
  }

  if (id_for_path_64)
  {
    goto LABEL_21;
  }

LABEL_22:
  pthread_mutex_unlock((v7 + 2080));
  if (dword_1EBF46AE4 >= 5)
  {
    v17 = *__error();
    v18 = _SILogForLogForCategory(6);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v26 = v24;
      v27 = 2080;
      v28 = a2;
      _os_log_impl(&dword_1C278D000, v18, OS_LOG_TYPE_DEFAULT, "found %llx for %s\n", buf, 0x16u);
    }

    *__error() = v17;
    if (dword_1EBF46AE4 >= 5)
    {
      v19 = *__error();
      v20 = _SILogForLogForCategory(6);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = &a2[*(v7 + 516)];
        *buf = 134218242;
        v26 = v24;
        v27 = 2080;
        v28 = v21;
        _os_log_impl(&dword_1C278D000, v20, OS_LOG_TYPE_DEFAULT, "found %llx for %s\n", buf, 0x16u);
      }

      *__error() = v19;
    }
  }

  result = v24;
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

void si_psid_destruct(uint64_t a1)
{
  v1 = *(a1 + 16);
  pthread_mutex_destroy((v1 + 2080));
  free(*(v1 + 2072));
  v2 = *(v1 + 8);
  if (v2)
  {
    if (*(v1 + 2) == 1)
    {
      release_persistent_id_64_store(v2);
    }

    else
    {
      release_persistent_id_store(v2);
    }
  }

  _Block_release(*(v1 + 2144));

  free(v1);
}

uint64_t si_init_posix_psid(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, const void *a5)
{
  v128 = *MEMORY[0x1E69E9840];
  v10 = malloc_type_calloc(1uLL, 0x868uLL, 0x10A00403F30FE2CuLL);
  v11 = v10;
  if (a4 < 0)
  {
    v10[2] = 1;
  }

  v12 = malloc_type_malloc(0x28uLL, 0x100004090BE4F35uLL);
  *(v11 + 259) = v12;
  v13 = *(a2 + 32);
  v14 = *(a2 + 16);
  *v12 = *a2;
  v12[1] = v14;
  *(v12 + 4) = v13;
  v15 = *&off_1F427A9A0;
  *(a1 + 64) = xmmword_1F427A990;
  *(a1 + 80) = v15;
  v16 = *&off_1F427A980;
  *(a1 + 32) = SI_PersistentIDStore_PSID_TEMPLATE;
  *(a1 + 48) = v16;
  v17 = unk_1F427A9E0;
  *(a1 + 128) = xmmword_1F427A9D0;
  *(a1 + 144) = v17;
  v18 = *&off_1F427A9C0;
  *(a1 + 96) = xmmword_1F427A9B0;
  *(a1 + 112) = v18;
  v19 = unk_1F427AA30;
  *(a1 + 208) = xmmword_1F427AA20;
  *(a1 + 224) = v19;
  v20 = *&off_1F427AA10;
  *(a1 + 176) = xmmword_1F427AA00;
  *(a1 + 192) = v20;
  *(a1 + 160) = xmmword_1F427A9F0;
  if (v11[2] == 1)
  {
    *(a1 + 232) = si_psid_clone_and_reset;
  }

  v121 = 0;
  if ((fd_setDir(a3, &v121) & 1) == 0)
  {
    v25 = 0xFFFFFFFFLL;
LABEL_115:
    free(*(v11 + 259));
    free(v11);
    goto LABEL_116;
  }

  if (v11[2] == 1)
  {
    v21 = malloc_type_calloc(0x28uLL, 1uLL, 0x10A0040132C2E1DuLL);
    if (v21)
    {
      v22 = v21;
      v21[3] = keycompare_4999;
      master_fid_rec_4983 = -1;
      word_1EBF61D34 = 17;
      __strlcpy_chk();
      v23 = word_1EBF61D34 + 16;
      master_fid_rec_size_4985 = v23;
      v124 = 0;
      v24 = sqlite3BtreeOpen(v22);
      if (v24)
      {
        v25 = v24;
        v26 = *__error();
        v27 = _SILogForLogForCategory(4);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          *&buf[4] = "get_persistent_id_64_store";
          *&buf[12] = 1024;
          *&buf[14] = 164;
          *&buf[18] = 2080;
          *&buf[20] = "psid.db";
          v126 = 1024;
          v127 = v25;
LABEL_69:
          _os_log_error_impl(&dword_1C278D000, v27, OS_LOG_TYPE_ERROR, "%s:%d: sqlite3BtreeOpen failed; dbname:%s; rc = %d\n", buf, 0x22u);
          goto LABEL_15;
        }

        goto LABEL_15;
      }

      v122 = 0;
      v123 = 0;
      v31 = sqlite3BtreeCursor(*v22, 2, 0, keycompare_4999, &v122);
      if (v31)
      {
        v32 = v31;
        v116 = a5;
        v33 = *__error();
        v34 = _SILogForLogForCategory(4);
        v35 = 2 * (dword_1EBF46ADC < 4);
        if (os_log_type_enabled(v34, v35))
        {
          *buf = 67109120;
          *&buf[4] = v32;
          _os_log_impl(&dword_1C278D000, v34, v35, "sqlite3BtreeCursor failed; rc = %d\n", buf, 8u);
        }

        *__error() = v33;
        goto LABEL_36;
      }

      v41 = v122;
      v42 = sqlite3BtreeMoveto(v122, &master_fid_rec_4983, v23, &v123);
      if (v42 | v123)
      {
        v51 = v42;
        v116 = a5;
        v115 = *__error();
        v52 = _SILogForLogForCategory(4);
        v53 = 2 * (dword_1EBF46ADC < 4);
        if (os_log_type_enabled(v52, v53))
        {
          *buf = 67109120;
          *&buf[4] = v51;
          _os_log_impl(&dword_1C278D000, v52, v53, "sqlite3BtreeMoveto failed at open (need to create table); rc = %d\n", buf, 8u);
        }

        *__error() = v115;
        sqlite3BtreeCloseCursor(v41);
LABEL_36:
        a5 = v116;
        if ((a4 & 2) != 0)
        {
          v54 = *__error();
          v55 = _SILogForLogForCategory(4);
          v56 = 2 * (dword_1EBF46ADC < 4);
          if (os_log_type_enabled(v55, v56))
          {
            *buf = 136315138;
            *&buf[4] = "psid.db";
            _os_log_impl(&dword_1C278D000, v55, v56, "psid: creating db: %s\n", buf, 0xCu);
          }

          *__error() = v54;
          v57 = *v22;
          if (*(*v22 + 30))
          {
            v58 = 8;
          }

          else
          {
            v58 = 0;
            v68 = v57[18] - v57[16];
            *(v57 + 8) = 268439552;
            *(*v57 + 224) = 0x100000001000;
            v57[18] = v68 + 4096;
          }

          v69 = *__error();
          v70 = _SILogForLogForCategory(4);
          v71 = 2 * (dword_1EBF46ADC < 4);
          if (os_log_type_enabled(v70, v71))
          {
            v72 = *(*v22 + 32);
            *buf = 67109376;
            *&buf[4] = v58;
            *&buf[8] = 1024;
            *&buf[10] = v72;
            _os_log_impl(&dword_1C278D000, v70, v71, "(%d), page size %d\n", buf, 0xEu);
          }

          *__error() = v69;
          v73 = sqlite3BtreeBeginTrans(*v22);
          if (v73)
          {
            v25 = v73;
            v44 = *__error();
            v45 = _SILogForLogForCategory(4);
            v46 = 2 * (dword_1EBF46ADC < 4);
            a5 = v116;
            if (os_log_type_enabled(v45, v46))
            {
              *buf = 67109120;
              *&buf[4] = v25;
              v47 = "Couldn't begin transaction; rc = %d\n";
              goto LABEL_104;
            }

LABEL_105:
            *__error() = v44;
            goto LABEL_106;
          }

          v80 = (v22 + 8);
          Table = sqlite3BtreeCreateTable(*v22, (v22 + 8));
          a5 = v116;
          if (Table)
          {
            v25 = Table;
            v44 = *__error();
            v45 = _SILogForLogForCategory(4);
            v46 = 2 * (dword_1EBF46ADC < 4);
            if (os_log_type_enabled(v45, v46))
            {
              *buf = 67109120;
              *&buf[4] = v25;
              v47 = "Couldn't create table; rc = %d\n";
              goto LABEL_104;
            }

            goto LABEL_105;
          }

          if (*v80 == 2)
          {
            v96 = 2;
          }

          else
          {
            v98 = *__error();
            v99 = _SILogForLogForCategory(4);
            if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
            {
              v112 = *v80;
              *buf = 136315906;
              *&buf[4] = "get_persistent_id_64_store";
              *&buf[12] = 1024;
              *&buf[14] = 230;
              *&buf[18] = 2080;
              *&buf[20] = "psid.db";
              v126 = 1024;
              v127 = v112;
              _os_log_error_impl(&dword_1C278D000, v99, OS_LOG_TYPE_ERROR, "%s:%d: psid: %s : danger! ps store table id %d looks bad! resetting\n", buf, 0x22u);
            }

            *__error() = v98;
            v96 = *v80;
          }

          v100 = sqlite3BtreeCursor(*v22, v96, 1, keycompare_4999, (v22 + 16));
          if (v100)
          {
            v25 = v100;
            v44 = *__error();
            v45 = _SILogForLogForCategory(4);
            v46 = 2 * (dword_1EBF46ADC < 4);
            if (os_log_type_enabled(v45, v46))
            {
              *buf = 67109120;
              *&buf[4] = v25;
              v47 = "Couldn't create cursor; rc = %d\n";
              goto LABEL_104;
            }

            goto LABEL_105;
          }

          *(v22 + 32) = 0x7FFFFFFFFFFFFFFFLL;
          v124 = 0x7FFFFFFFFFFFFFFFLL;
          v104 = sqlite3BtreeInsert(*(v22 + 16), &master_fid_rec_4983, v23, &v124, 8);
          if (v104)
          {
            v25 = v104;
            v44 = *__error();
            v45 = _SILogForLogForCategory(4);
            v46 = 2 * (dword_1EBF46ADC < 4);
            if (os_log_type_enabled(v45, v46))
            {
              *buf = 67109120;
              *&buf[4] = v25;
              v47 = "Couldn't insert key; rc = %d\n";
              goto LABEL_104;
            }

            goto LABEL_105;
          }

          sqlite3BtreeCloseCursor(*(v22 + 16));
          *(v22 + 16) = 0;
          v25 = sqlite3BtreeSync(*v22);
          if (v25)
          {
            goto LABEL_106;
          }

          v110 = sqlite3BtreeCommit(*v22);
          if (v110)
          {
            v25 = v110;
            v44 = *__error();
            v45 = _SILogForLogForCategory(4);
            v46 = 2 * (dword_1EBF46ADC < 4);
            if (!os_log_type_enabled(v45, v46))
            {
              goto LABEL_105;
            }

            *buf = 67109120;
            *&buf[4] = v25;
            v47 = "Couldn't commit btree; rc = %d\n";
            goto LABEL_104;
          }

          goto LABEL_81;
        }

LABEL_45:
        v25 = 2;
        goto LABEL_106;
      }

      *(v22 + 8) = 2;
      Payload = getPayload(v41, 8, &v124, 1);
      if (Payload)
      {
        v25 = Payload;
        v44 = *__error();
        v45 = _SILogForLogForCategory(4);
        v46 = 2 * (dword_1EBF46ADC < 4);
        if (!os_log_type_enabled(v45, v46))
        {
          goto LABEL_105;
        }

        *buf = 67109120;
        *&buf[4] = v25;
        v47 = "psid: could not find master fid; rc = %d\n";
LABEL_104:
        _os_log_impl(&dword_1C278D000, v45, v46, v47, buf, 8u);
        goto LABEL_105;
      }

      v84 = v124;
      *(v22 + 32) = v124;
      if (v84 <= 0x7FFFFFFFFFFFFFFELL)
      {
        v85 = *__error();
        v86 = _SILogForLogForCategory(4);
        v87 = 2 * (dword_1EBF46ADC < 4);
        if (os_log_type_enabled(v86, v87))
        {
          v88 = *(v22 + 32);
          *buf = 136315394;
          *&buf[4] = "psid.db";
          *&buf[12] = 2048;
          *&buf[14] = v88;
          _os_log_impl(&dword_1C278D000, v86, v87, "psid: %s : danger! master fid %lld looks bad! resetting\n", buf, 0x16u);
        }

        *__error() = v85;
      }

      v89 = v41;
      goto LABEL_80;
    }

LABEL_16:
    v25 = 12;
    goto LABEL_112;
  }

  v28 = malloc_type_calloc(0x28uLL, 1uLL, 0x10A004010E7617FuLL);
  if (!v28)
  {
    goto LABEL_16;
  }

  v22 = v28;
  v28[3] = keycompare;
  master_fid_rec = -1;
  word_1EBF61248 = 17;
  __strlcpy_chk();
  v29 = word_1EBF61248 + 12;
  master_fid_rec_size = v29;
  LODWORD(v122) = 0;
  v30 = sqlite3BtreeOpen(v22);
  if (v30)
  {
    v25 = v30;
    v26 = *__error();
    v27 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "get_persistent_id_store";
      *&buf[12] = 1024;
      *&buf[14] = 164;
      *&buf[18] = 2080;
      *&buf[20] = "psid.db";
      v126 = 1024;
      v127 = v25;
      goto LABEL_69;
    }

LABEL_15:
    *__error() = v26;
LABEL_106:
    v106 = *(v22 + 16);
    if (v106)
    {
      sqlite3BtreeCloseCursor(v106);
    }

    if (*v22)
    {
      sqlite3BtreeClose(*v22);
    }

    free(v22);
    v22 = 0;
    goto LABEL_111;
  }

  v124 = 0;
  v123 = 0;
  v36 = sqlite3BtreeCursor(*v22, 2, 0, keycompare, &v124);
  if (v36)
  {
    v37 = v36;
    v114 = v29;
    v117 = a5;
    v38 = *__error();
    v39 = _SILogForLogForCategory(4);
    v40 = 2 * (dword_1EBF46ADC < 4);
    if (os_log_type_enabled(v39, v40))
    {
      *buf = 67109120;
      *&buf[4] = v37;
      _os_log_impl(&dword_1C278D000, v39, v40, "sqlite3BtreeCursor failed; rc = %d\n", buf, 8u);
    }

    *__error() = v38;
  }

  else
  {
    v48 = v124;
    v49 = sqlite3BtreeMoveto(v124, &master_fid_rec, v29, &v123);
    if (!(v49 | v123))
    {
      *(v22 + 8) = 2;
      v50 = getPayload(v48, 4, &v122, 1);
      if (v50)
      {
        v25 = v50;
        v44 = *__error();
        v45 = _SILogForLogForCategory(4);
        v46 = 2 * (dword_1EBF46ADC < 4);
        if (!os_log_type_enabled(v45, v46))
        {
          goto LABEL_105;
        }

        *buf = 67109120;
        *&buf[4] = v25;
        v47 = "psid: could not find master fid; rc = %d\n";
        goto LABEL_104;
      }

      v90 = v122;
      *(v22 + 32) = v122;
      if (v90 <= 0x63)
      {
        v91 = v48;
        v92 = *__error();
        v93 = _SILogForLogForCategory(4);
        v94 = 2 * (dword_1EBF46ADC < 4);
        if (os_log_type_enabled(v93, v94))
        {
          v95 = *(v22 + 32);
          *buf = 136315394;
          *&buf[4] = "psid.db";
          *&buf[12] = 1024;
          *&buf[14] = v95;
          _os_log_impl(&dword_1C278D000, v93, v94, "psid: %s : danger! master fid %d looks bad! resetting\n", buf, 0x12u);
        }

        *__error() = v92;
        v48 = v91;
      }

      v89 = v48;
LABEL_80:
      sqlite3BtreeCloseCursor(v89);
      goto LABEL_81;
    }

    v59 = v49;
    v114 = v29;
    v117 = a5;
    v60 = *__error();
    v61 = _SILogForLogForCategory(4);
    v62 = 2 * (dword_1EBF46ADC < 4);
    if (os_log_type_enabled(v61, v62))
    {
      *buf = 67109120;
      *&buf[4] = v59;
      _os_log_impl(&dword_1C278D000, v61, v62, "sqlite3BtreeMoveto failed; rc = %d\n", buf, 8u);
    }

    *__error() = v60;
    sqlite3BtreeCloseCursor(v48);
  }

  a5 = v117;
  if ((a4 & 2) == 0)
  {
    goto LABEL_45;
  }

  v63 = *__error();
  v64 = _SILogForLogForCategory(4);
  v65 = 2 * (dword_1EBF46ADC < 4);
  if (os_log_type_enabled(v64, v65))
  {
    *buf = 136315138;
    *&buf[4] = "psid.db";
    _os_log_impl(&dword_1C278D000, v64, v65, "psid: creating db: %s\n", buf, 0xCu);
  }

  *__error() = v63;
  v66 = *v22;
  if (*(*v22 + 30))
  {
    v67 = 8;
  }

  else
  {
    v67 = 0;
    v74 = v66[18] - v66[16];
    *(v66 + 8) = 268439552;
    *(*v66 + 224) = 0x100000001000;
    v66[18] = v74 + 4096;
  }

  v75 = *__error();
  v76 = _SILogForLogForCategory(4);
  v77 = 2 * (dword_1EBF46ADC < 4);
  if (os_log_type_enabled(v76, v77))
  {
    v78 = *(*v22 + 32);
    *buf = 67109376;
    *&buf[4] = v67;
    *&buf[8] = 1024;
    *&buf[10] = v78;
    _os_log_impl(&dword_1C278D000, v76, v77, "(%d), page size %d\n", buf, 0xEu);
  }

  *__error() = v75;
  v79 = sqlite3BtreeBeginTrans(*v22);
  if (v79)
  {
    v25 = v79;
    v44 = *__error();
    v45 = _SILogForLogForCategory(4);
    v46 = 2 * (dword_1EBF46ADC < 4);
    a5 = v117;
    if (os_log_type_enabled(v45, v46))
    {
      *buf = 67109120;
      *&buf[4] = v25;
      v47 = "Couldn't begin transaction; rc = %d\n";
      goto LABEL_104;
    }

    goto LABEL_105;
  }

  v82 = (v22 + 8);
  v83 = sqlite3BtreeCreateTable(*v22, (v22 + 8));
  a5 = v117;
  if (v83)
  {
    v25 = v83;
    v44 = *__error();
    v45 = _SILogForLogForCategory(4);
    v46 = 2 * (dword_1EBF46ADC < 4);
    if (os_log_type_enabled(v45, v46))
    {
      *buf = 67109120;
      *&buf[4] = v25;
      v47 = "Couldn't create table; rc = %d\n";
      goto LABEL_104;
    }

    goto LABEL_105;
  }

  if (*v82 == 2)
  {
    v97 = 2;
  }

  else
  {
    v101 = *__error();
    v102 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
    {
      v113 = *v82;
      *buf = 136315906;
      *&buf[4] = "get_persistent_id_store";
      *&buf[12] = 1024;
      *&buf[14] = 230;
      *&buf[18] = 2080;
      *&buf[20] = "psid.db";
      v126 = 1024;
      v127 = v113;
      _os_log_error_impl(&dword_1C278D000, v102, OS_LOG_TYPE_ERROR, "%s:%d: psid: %s : danger! ps store table id %d looks bad! resetting\n", buf, 0x22u);
    }

    *__error() = v101;
    v97 = *v82;
    a5 = v117;
  }

  v103 = sqlite3BtreeCursor(*v22, v97, 1, keycompare, (v22 + 16));
  if (v103)
  {
    v25 = v103;
    v44 = *__error();
    v45 = _SILogForLogForCategory(4);
    v46 = 2 * (dword_1EBF46ADC < 4);
    if (os_log_type_enabled(v45, v46))
    {
      *buf = 67109120;
      *&buf[4] = v25;
      v47 = "Couldn't create cursor; rc = %d\n";
      goto LABEL_104;
    }

    goto LABEL_105;
  }

  *(v22 + 32) = 100;
  LODWORD(v122) = 100;
  v105 = sqlite3BtreeInsert(*(v22 + 16), &master_fid_rec, v114, &v122, 4);
  if (v105)
  {
    v25 = v105;
    v44 = *__error();
    v45 = _SILogForLogForCategory(4);
    v46 = 2 * (dword_1EBF46ADC < 4);
    if (os_log_type_enabled(v45, v46))
    {
      *buf = 67109120;
      *&buf[4] = v25;
      v47 = "Couldn't insert key; rc = %d\n";
      goto LABEL_104;
    }

    goto LABEL_105;
  }

  sqlite3BtreeCloseCursor(*(v22 + 16));
  *(v22 + 16) = 0;
  v25 = sqlite3BtreeSync(*v22);
  if (v25)
  {
    goto LABEL_106;
  }

  v111 = sqlite3BtreeCommit(*v22);
  if (v111)
  {
    v25 = v111;
    v44 = *__error();
    v45 = _SILogForLogForCategory(4);
    v46 = 2 * (dword_1EBF46ADC < 4);
    if (!os_log_type_enabled(v45, v46))
    {
      goto LABEL_105;
    }

    *buf = 67109120;
    *&buf[4] = v25;
    v47 = "Couldn't commit btree; rc = %d\n";
    goto LABEL_104;
  }

LABEL_81:
  v25 = 0;
LABEL_111:
  *(v11 + 1) = v22;
LABEL_112:
  v107 = v121;
  MEMORY[0x1C6921200](v121);
  if ((v107 & 0x80000000) == 0)
  {
    close(v107);
  }

  if (v25)
  {
    goto LABEL_115;
  }

  v11[1] = 0;
  v120 = 0;
  v119 = xmmword_1C2BFA9F0;
  memset(v118, 0, 44);
  if (!fgetattrlist(*(a2 + 4), &v119, v118, 0x2CuLL, 0))
  {
    v11[1] = (DWORD1(v118[0]) & 0x200000) != 0;
  }

  *buf = 0;
  *&buf[8] = 0;
  pthread_mutexattr_init(buf);
  pthread_mutex_init((v11 + 2080), buf);
  pthread_mutexattr_destroy(buf);
  *v11 = 1;
  v25 = 0;
  *(v11 + 268) = _Block_copy(a5);
  *(a1 + 16) = v11;
LABEL_116:
  v108 = *MEMORY[0x1E69E9840];
  return v25;
}

void *si_psid_clone_and_reset(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (*(v2 + 2) == 1)
  {
    if (!__kSI_PersistentIDStoreTypeID)
    {
      __kSI_PersistentIDStoreTypeID = _CFRuntimeRegisterClass();
    }

    v5 = *MEMORY[0x1E695E480];
    Instance = _CFRuntimeCreateInstance();
    unlinkat(a2, "psid.db", 0);
    if (!si_init_posix_psid(Instance, *(v2 + 2072), a2, 32770, *(v2 + 2144)))
    {
      si_psid_set_root_path2(Instance, (v2 + 16), (v2 + 16));
      *(a1 + 16) = Instance[2];
      Instance[2] = v2;
      return Instance;
    }

    CFRelease(Instance);
  }

  return 0;
}

__int128 *getIndexAttributeScores(int a1)
{
  if (a1 > 511)
  {
    if (a1 == 512)
    {
      {
        ContactsIndexAttributeScores(void)::_safariIndexAttributeScores = 0u;
        unk_1EBF61988 = 0u;
        dword_1EBF61998 = 1065353216;
      }

      if (ContactsIndexAttributeScores(void)::onceToken[0] != -1)
      {
        dispatch_once(ContactsIndexAttributeScores(void)::onceToken, &__block_literal_global_11);
      }

      return &ContactsIndexAttributeScores(void)::_safariIndexAttributeScores;
    }

    else
    {
      if (a1 != 1024)
      {
LABEL_14:
        {
          DefaultIndexAttributeScores(void)::_indexAttributeScores = 0u;
          unk_1EBF48380 = 0u;
          dword_1EBF48390 = 1065353216;
        }

        if (DefaultIndexAttributeScores(void)::onceToken != -1)
        {
          dispatch_once(&DefaultIndexAttributeScores(void)::onceToken, &__block_literal_global_25);
        }

        return &DefaultIndexAttributeScores(void)::_indexAttributeScores;
      }

      {
        SettingsIndexAttributeScores(void)::_settingsIndexAttributeScores = 0u;
        unk_1EBF48240 = 0u;
        dword_1EBF48250 = 1065353216;
      }

      if (SettingsIndexAttributeScores(void)::onceToken != -1)
      {
        dispatch_once(&SettingsIndexAttributeScores(void)::onceToken, &__block_literal_global_16);
      }

      return &SettingsIndexAttributeScores(void)::_settingsIndexAttributeScores;
    }
  }

  else
  {
    if (a1 != 2)
    {
      if (a1 == 32)
      {
        {
          ImageAndVideoFilesInMacIndexAttributeScores(void)::_imageAndVideoFilesInMacIndexAttributeScores = 0u;
          unk_1EBF619C8 = 0u;
          dword_1EBF619D8 = 1065353216;
        }

        if (ImageAndVideoFilesInMacIndexAttributeScores(void)::onceToken != -1)
        {
          dispatch_once(&ImageAndVideoFilesInMacIndexAttributeScores(void)::onceToken, &__block_literal_global_22);
        }

        return &ImageAndVideoFilesInMacIndexAttributeScores(void)::_imageAndVideoFilesInMacIndexAttributeScores;
      }

      goto LABEL_14;
    }

    {
      SafariIndexAttributeScores(void)::_safariIndexAttributeScores = 0u;
      *algn_1EBF61950 = 0u;
      dword_1EBF61960 = 1065353216;
    }

    if (SafariIndexAttributeScores(void)::onceToken != -1)
    {
      dispatch_once(&SafariIndexAttributeScores(void)::onceToken, &__block_literal_global_4);
    }

    return &SafariIndexAttributeScores(void)::_safariIndexAttributeScores;
  }
}

void ___ZL27DefaultIndexAttributeScoresv_block_invoke()
{
  std::string::basic_string[abi:nn200100]<0>(__p, "*");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&DefaultIndexAttributeScores(void)::_indexAttributeScores, __p) + 10) = 0;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemTextContent");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&DefaultIndexAttributeScores(void)::_indexAttributeScores, __p) + 10) = 0;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1C28CE494(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, uint64_t a2)
{
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
    v6 = *(a2 + 8);
  }

  v7 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v5, v6);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_24;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v9)
    {
      v12 = v7 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v7;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v8)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v9)
      {
        v15 %= *&v9;
      }
    }

    else
    {
      v15 &= *&v9 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_24;
    }

LABEL_23:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_24;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:nn200100](v14 + 2, a2))
  {
    goto LABEL_23;
  }

  return v14;
}

void ___ZL43ImageAndVideoFilesInMacIndexAttributeScoresv_block_invoke()
{
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemDisplayName");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&ImageAndVideoFilesInMacIndexAttributeScores(void)::_imageAndVideoFilesInMacIndexAttributeScores, __p) + 10) = 0;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemAlternateNames");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&ImageAndVideoFilesInMacIndexAttributeScores(void)::_imageAndVideoFilesInMacIndexAttributeScores, __p) + 10) = 0;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "_kMDItemFileName");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&ImageAndVideoFilesInMacIndexAttributeScores(void)::_imageAndVideoFilesInMacIndexAttributeScores, __p) + 10) = 0;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1C28CE80C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL28SettingsIndexAttributeScoresv_block_invoke()
{
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemSubject");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&SettingsIndexAttributeScores(void)::_settingsIndexAttributeScores, __p) + 10) = 0;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemDescription");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&SettingsIndexAttributeScores(void)::_settingsIndexAttributeScores, __p) + 10) = 0;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemSubtitle");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&SettingsIndexAttributeScores(void)::_settingsIndexAttributeScores, __p) + 10) = 0;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemTitle");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&SettingsIndexAttributeScores(void)::_settingsIndexAttributeScores, __p) + 10) = 0;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemKeywords");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&SettingsIndexAttributeScores(void)::_settingsIndexAttributeScores, __p) + 10) = 0;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1C28CE994(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL28ContactsIndexAttributeScoresv_block_invoke()
{
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemDisplayName");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&ContactsIndexAttributeScores(void)::_safariIndexAttributeScores, __p) + 10) = 0;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemAlternateNames");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&ContactsIndexAttributeScores(void)::_safariIndexAttributeScores, __p) + 10) = 0;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemAppEntityTitle");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&ContactsIndexAttributeScores(void)::_safariIndexAttributeScores, __p) + 10) = 0;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1C28CEAA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL26SafariIndexAttributeScoresv_block_invoke()
{
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemContentURL");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&SafariIndexAttributeScores(void)::_safariIndexAttributeScores, __p) + 10) = 0;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemTitle");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&SafariIndexAttributeScores(void)::_safariIndexAttributeScores, __p) + 10) = 0;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "redirectSourceTitle");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&SafariIndexAttributeScores(void)::_safariIndexAttributeScores, __p) + 10) = 0;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "redirectSourceURL");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&SafariIndexAttributeScores(void)::_safariIndexAttributeScores, __p) + 10) = 0;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "bookmarkTitle");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&SafariIndexAttributeScores(void)::_safariIndexAttributeScores, __p) + 10) = 0;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1C28CEC2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___Z30MailRankingNameAttributeScoresv_block_invoke()
{
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemAuthors");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&MailRankingNameAttributeScores(void)::_mailAttributeScores, __p) + 10) = 1065353216;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemRecipients");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&MailRankingNameAttributeScores(void)::_mailAttributeScores, __p) + 10) = 1036831949;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1C28CED08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t getRankingAttributeScores(PRContext *a1)
{
  if (a1)
  {
    var4 = a1->var4;
    v2 = (*(a1 + 7) >> 9) & 1;
  }

  else
  {
    var4 = 0;
  }

  v3 = var4;
  if (!getRankingAttributeScores(PRContext *)::ans[var4])
  {
    std::mutex::lock(&getRankingAttributeScores(PRContext *)::mu);
    if (!getRankingAttributeScores(PRContext *)::ans[v3])
    {
      operator new();
    }

    std::mutex::unlock(&getRankingAttributeScores(PRContext *)::mu);
  }

  return getRankingAttributeScores(PRContext *)::ans[v3];
}

void sub_1C28CF2F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(va);
  std::mutex::unlock(&getRankingAttributeScores(PRContext *)::mu);
  _Unwind_Resume(a1);
}

void CalendarRankingAttributeScores(void)
{
  {
    CalendarRankingAttributeScores(void)::_calendarAttributeScores = 0u;
    unk_1EBF481C8 = 0u;
    dword_1EBF481D8 = 1065353216;
  }

  if (CalendarRankingAttributeScores(void)::onceToken[0] != -1)
  {

    dispatch_once(CalendarRankingAttributeScores(void)::onceToken, &__block_literal_global_29_247);
  }
}

uint64_t std::unordered_map<std::string,float>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,float> const&>(a1, (i + 2));
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__node_handle_merge_unique[abi:nn200100]<std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>>(uint64_t a1, void *a2)
{
  v2 = a2[2];
  v39 = a2 + 2;
  if (v2)
  {
    v38 = (a1 + 16);
    v5 = *(a1 + 8);
    while (1)
    {
      v6 = v2[2];
      v7 = *(v2 + 39);
      if (v7 >= 0)
      {
        v8 = v2 + 2;
      }

      else
      {
        v8 = v2[2];
      }

      if (v7 >= 0)
      {
        v9 = *(v2 + 39);
      }

      else
      {
        v9 = v2[3];
      }

      v10 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v8, v9);
      v11 = v10;
      if (v5)
      {
        v12 = vcnt_s8(v5);
        v12.i16[0] = vaddlv_u8(v12);
        v13 = v12.u32[0];
        if (v12.u32[0] > 1uLL)
        {
          v14 = v10;
          if (v5 <= v10)
          {
            v14 = v10 % v5;
          }
        }

        else
        {
          v14 = (v5 - 1) & v10;
        }

        v15 = *(*a1 + 8 * v14);
        if (v15)
        {
          v16 = *v15;
          if (*v15)
          {
            do
            {
              v17 = v16[1];
              if (v17 == v11)
              {
                if (std::equal_to<std::string>::operator()[abi:nn200100](v16 + 2, v2 + 2))
                {
                  v37 = *v2;
                  goto LABEL_73;
                }
              }

              else
              {
                if (v13 > 1)
                {
                  if (v17 >= v5)
                  {
                    v17 %= v5;
                  }
                }

                else
                {
                  v17 &= v5 - 1;
                }

                if (v17 != v14)
                {
                  break;
                }
              }

              v16 = *v16;
            }

            while (v16);
          }
        }
      }

      v18 = (*(a1 + 24) + 1);
      v19 = *(a1 + 32);
      if (!v5 || (v19 * v5) < v18)
      {
        v20 = (v5 & (v5 - 1)) != 0;
        if (v5 < 3)
        {
          v20 = 1;
        }

        v21 = v20 | (2 * v5);
        v22 = vcvtps_u32_f32(v18 / v19);
        if (v21 <= v22)
        {
          v23 = v22;
        }

        else
        {
          v23 = v21;
        }

        std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__rehash<true>(a1, v23);
      }

      v24 = a2[1];
      v37 = *v2;
      v25 = v2[1];
      v26 = vcnt_s8(v24);
      v26.i16[0] = vaddlv_u8(v26);
      if (v26.u32[0] > 1uLL)
      {
        if (v25 >= *&v24)
        {
          v25 %= *&v24;
        }
      }

      else
      {
        v25 &= *&v24 - 1;
      }

      v27 = *(*a2 + 8 * v25);
      do
      {
        v28 = v27;
        v27 = *v27;
      }

      while (v27 != v2);
      if (v28 != v39)
      {
        v29 = v28[1];
        if (v26.u32[0] > 1uLL)
        {
          if (v29 >= *&v24)
          {
            v29 %= *&v24;
          }
        }

        else
        {
          v29 &= *&v24 - 1;
        }

        v30 = *v2;
        if (v29 == v25)
        {
          goto LABEL_52;
        }
      }

      if (!v37)
      {
        break;
      }

      v31 = v37[1];
      if (v26.u32[0] > 1uLL)
      {
        if (v31 >= *&v24)
        {
          v31 %= *&v24;
        }
      }

      else
      {
        v31 &= *&v24 - 1;
      }

      v30 = *v2;
      if (v31 != v25)
      {
        break;
      }

LABEL_53:
      v32 = v30[1];
      if (v26.u32[0] > 1uLL)
      {
        if (v32 >= *&v24)
        {
          v32 %= *&v24;
        }
      }

      else
      {
        v32 &= *&v24 - 1;
      }

      if (v32 != v25)
      {
        *(*a2 + 8 * v32) = v28;
        v30 = *v2;
      }

LABEL_59:
      *v28 = v30;
      --a2[3];
      *v2 = 0;
      v2[1] = v11;
      v5 = *(a1 + 8);
      v33 = vcnt_s8(v5);
      v33.i16[0] = vaddlv_u8(v33);
      if (v33.u32[0] > 1uLL)
      {
        if (v11 >= v5)
        {
          v11 %= v5;
        }
      }

      else
      {
        v11 &= v5 - 1;
      }

      v34 = *a1;
      v35 = *(*a1 + 8 * v11);
      if (v35)
      {
        *v2 = *v35;
      }

      else
      {
        *v2 = *v38;
        *v38 = v2;
        *(v34 + 8 * v11) = v38;
        if (!*v2)
        {
          goto LABEL_72;
        }

        v36 = *(*v2 + 8);
        if (v33.u32[0] > 1uLL)
        {
          if (v36 >= v5)
          {
            v36 %= v5;
          }
        }

        else
        {
          v36 &= v5 - 1;
        }

        v35 = (*a1 + 8 * v36);
      }

      *v35 = v2;
LABEL_72:
      ++*(a1 + 24);
LABEL_73:
      v2 = v37;
      if (!v37)
      {
        return;
      }
    }

    *(*a2 + 8 * v25) = 0;
    v30 = *v2;
LABEL_52:
    if (!v30)
    {
      goto LABEL_59;
    }

    goto LABEL_53;
  }
}

void MessagesRankingAttributeScores(void)
{
  {
    MessagesRankingAttributeScores(void)::_messagesAttributeScores = 0u;
    *algn_1EBF48190 = 0u;
    dword_1EBF481A0 = 1065353216;
  }

  if (MessagesRankingAttributeScores(void)::onceToken != -1)
  {

    dispatch_once(&MessagesRankingAttributeScores(void)::onceToken, &__block_literal_global_33);
  }
}

void MailRankingAttributeScores(void)
{
  {
    MailRankingAttributeScores(void)::_mailAttributeScores = 0u;
    unk_1EBF483F8 = 0u;
    dword_1EBF48408 = 1065353216;
  }

  if (MailRankingAttributeScores(void)::onceToken[0] != -1)
  {

    dispatch_once(MailRankingAttributeScores(void)::onceToken, &__block_literal_global_35_245);
  }
}

void SafariRankingAttributeScores(void)
{
  {
    SafariRankingAttributeScores(void)::_safariAttributeScores = 0u;
    unk_1EBF48280 = 0u;
    dword_1EBF48290 = 1065353216;
  }

  if (SafariRankingAttributeScores(void)::onceToken != -1)
  {

    dispatch_once(&SafariRankingAttributeScores(void)::onceToken, &__block_literal_global_41_243);
  }
}

void ___ZL27FilesRankingAttributeScoresv_block_invoke()
{
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemDisplayName");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&FilesRankingAttributeScores(void)::_filesAttributeScores, __p) + 10) = 1065353216;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemFilename");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&FilesRankingAttributeScores(void)::_filesAttributeScores, __p) + 10) = 1065353216;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "FPFilename");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&FilesRankingAttributeScores(void)::_filesAttributeScores, __p) + 10) = 1065353216;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemAlternateNames");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&FilesRankingAttributeScores(void)::_filesAttributeScores, __p) + 10) = 1065353216;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemLastEditorName");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&FilesRankingAttributeScores(void)::_filesAttributeScores, __p) + 10) = 1061997773;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1C28CFB20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL28WalletRankingAttributeScoresv_block_invoke()
{
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemDisplayName");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&WalletRankingAttributeScores(void)::_filesAttributeScores, __p) + 10) = 1065353216;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemDescription");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&WalletRankingAttributeScores(void)::_filesAttributeScores, __p) + 10) = 1061997773;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemRecipients");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&WalletRankingAttributeScores(void)::_filesAttributeScores, __p) + 10) = 1058642330;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemAuthors");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&WalletRankingAttributeScores(void)::_filesAttributeScores, __p) + 10) = 1058642330;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemCreator");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&WalletRankingAttributeScores(void)::_filesAttributeScores, __p) + 10) = 1058642330;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "MDItemEventName");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&WalletRankingAttributeScores(void)::_filesAttributeScores, __p) + 10) = 1058642330;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "MDItemEventStartLocationName");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&WalletRankingAttributeScores(void)::_filesAttributeScores, __p) + 10) = 1058642330;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1C28CFD64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL32SearchToolRankingAttributeScoresv_block_invoke()
{
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemDisplayName");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&SearchToolRankingAttributeScores(void)::_searchToolAttributeScores, __p) + 10) = 1065353216;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1C28CFE00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL31RemindersRankingAttributeScoresv_block_invoke()
{
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemTitle");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&RemindersRankingAttributeScores(void)::_remindersAttributeScores, __p) + 10) = 1061997773;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1C28CFE88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL27NotesRankingAttributeScoresv_block_invoke()
{
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemDisplayName");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&NotesRankingAttributeScores(void)::_notesAttributeScores, __p) + 10) = 1065353216;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemTextContent");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&NotesRankingAttributeScores(void)::_notesAttributeScores, __p) + 10) = 1056964608;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1C28CFF50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL30SettingsRankingAttributeScoresv_block_invoke()
{
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemTitle");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&SettingsRankingAttributeScores(void)::_settingsAttributeScores, __p) + 10) = 1065353216;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemSubtitle");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&SettingsRankingAttributeScores(void)::_settingsAttributeScores, __p) + 10) = 1045220557;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemKeywords");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&SettingsRankingAttributeScores(void)::_settingsAttributeScores, __p) + 10) = 1036831949;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1C28D0068(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL28SafariRankingAttributeScoresv_block_invoke()
{
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemComment");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&SafariRankingAttributeScores(void)::_safariAttributeScores, __p) + 10) = 1065353216;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemTitle");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&SafariRankingAttributeScores(void)::_safariAttributeScores, __p) + 10) = 1061997773;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "bookmarkTitle");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&SafariRankingAttributeScores(void)::_safariAttributeScores, __p) + 10) = 1063675494;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPath");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&SafariRankingAttributeScores(void)::_safariAttributeScores, __p) + 10) = 1053609165;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "redirectSourceTitle");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&SafariRankingAttributeScores(void)::_safariAttributeScores, __p) + 10) = 1036831949;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "redirectSourceURL");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&SafariRankingAttributeScores(void)::_safariAttributeScores, __p) + 10) = 1045220557;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1C28D025C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL26MailRankingAttributeScoresv_block_invoke()
{
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemAuthors");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&MailRankingAttributeScores(void)::_mailAttributeScores, __p) + 10) = 1065353216;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemAuthorEmailAddresses");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&MailRankingAttributeScores(void)::_mailAttributeScores, __p) + 10) = 1061997773;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemSubject");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&MailRankingAttributeScores(void)::_mailAttributeScores, __p) + 10) = 1063675494;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemTextContent");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&MailRankingAttributeScores(void)::_mailAttributeScores, __p) + 10) = 1056964608;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemRecipients");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&MailRankingAttributeScores(void)::_mailAttributeScores, __p) + 10) = 1036831949;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemRecipientEmailAddresses");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&MailRankingAttributeScores(void)::_mailAttributeScores, __p) + 10) = 1036831949;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemEmailAddresses");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&MailRankingAttributeScores(void)::_mailAttributeScores, __p) + 10) = 1053609165;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemAttachmentTypes");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&MailRankingAttributeScores(void)::_mailAttributeScores, __p) + 10) = 1045220557;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemAttachmentNames");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&MailRankingAttributeScores(void)::_mailAttributeScores, __p) + 10) = 1045220557;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1C28D0530(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL30MessagesRankingAttributeScoresv_block_invoke()
{
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemAuthors");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&MessagesRankingAttributeScores(void)::_messagesAttributeScores, __p) + 10) = 1065353216;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemTextContent");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&MessagesRankingAttributeScores(void)::_messagesAttributeScores, __p) + 10) = 1056964608;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemAuthorEmailAddresses");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&MessagesRankingAttributeScores(void)::_messagesAttributeScores, __p) + 10) = 1061997773;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemRecipients");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&MessagesRankingAttributeScores(void)::_messagesAttributeScores, __p) + 10) = 1036831949;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPrimaryRecipientEmailAddresses");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&MessagesRankingAttributeScores(void)::_messagesAttributeScores, __p) + 10) = 1036831949;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1C28D06F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,float> const&>(void *a1, uint64_t a2)
{
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
    v6 = *(a2 + 8);
  }

  v7 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v5, v6);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_24;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v9)
    {
      v12 = v7 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v7;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v8)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v9)
      {
        v15 %= *&v9;
      }
    }

    else
    {
      v15 &= *&v9 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_24;
    }

LABEL_23:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_24;
    }
  }

  result = std::equal_to<std::string>::operator()[abi:nn200100](v14 + 2, a2);
  if (!result)
  {
    goto LABEL_23;
  }

  return result;
}

void ___ZL30CalendarRankingAttributeScoresv_block_invoke()
{
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemAuthors");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&CalendarRankingAttributeScores(void)::_calendarAttributeScores, __p) + 10) = 1065353216;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemAuthorEmailAddresses");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&CalendarRankingAttributeScores(void)::_calendarAttributeScores, __p) + 10) = 1061997773;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemRecipients");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&CalendarRankingAttributeScores(void)::_calendarAttributeScores, __p) + 10) = 1036831949;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPrimaryRecipientEmailAddresses");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&CalendarRankingAttributeScores(void)::_calendarAttributeScores, __p) + 10) = 1036831949;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemTitle");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&CalendarRankingAttributeScores(void)::_calendarAttributeScores, __p) + 10) = 1061997773;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1C28D0B30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t getWildCardAllowedFields(unsigned int a1)
{
  v1 = a1;
  if (!getWildCardAllowedFields(PRBundleIDType)::ans[a1])
  {
    std::mutex::lock(&getWildCardAllowedFields(PRBundleIDType)::mu);
    if (!getWildCardAllowedFields(PRBundleIDType)::ans[v1])
    {
      operator new();
    }

    std::mutex::unlock(&getWildCardAllowedFields(PRBundleIDType)::mu);
  }

  return getWildCardAllowedFields(PRBundleIDType)::ans[v1];
}

void sub_1C28D1234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::~__hash_table(va);
  std::mutex::unlock(&getWildCardAllowedFields(PRBundleIDType)::mu);
  _Unwind_Resume(a1);
}

void ___ZL25MailWildCardAllowedFieldsv_block_invoke()
{
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemSubject");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p) + 10) = 0;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemTextContent");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p) + 10) = 0;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1C28D1318(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 8);
  if (*(a1 + 23) >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    a1 = *a1;
    v3 = v2;
  }

  v4 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](a1, v3);
  v5 = v4;
  v6 = qword_1EDD78880;
  if (!qword_1EDD78880)
  {
    goto LABEL_21;
  }

  v7 = vcnt_s8(qword_1EDD78880);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= qword_1EDD78880)
    {
      v9 = v4 % qword_1EDD78880;
    }
  }

  else
  {
    v9 = (qword_1EDD78880 - 1) & v4;
  }

  v10 = *(MailWildCardAllowedFields(void)::_mailWildCardAllowedFields + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_21:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= v6)
      {
        v12 %= v6;
      }
    }

    else
    {
      v12 &= v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_21;
    }

LABEL_20:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_21;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:nn200100](v11 + 2, v1))
  {
    goto LABEL_20;
  }

  return v11;
}

void std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::unique_ptr<_freeTextCandidate>>,0>(uint64_t a1)
{
  std::unique_ptr<_freeTextCandidate>::~unique_ptr[abi:nn200100]((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t *std::unique_ptr<_freeTextCandidate>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__tree<unsigned int>::destroy(*(v2 + 48));
    if (*(v2 + 39) < 0)
    {
      operator delete(*(v2 + 16));
    }

    MEMORY[0x1C691FEF0](v2, 0x1032C40B848CA74);
  }

  return a1;
}

void std::vector<std::string>::push_back[abi:nn200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v6 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<long long>::__throw_length_error[abi:nn200100]();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + 1)
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v8;
    }

    v17.__end_cap_.__value_ = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(v9);
    }

    v11 = (24 * v6);
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(v11, *a2, *(a2 + 1));
    }

    else
    {
      v12 = *a2;
      v11->__r_.__value_.__r.__words[2] = *(a2 + 2);
      *&v11->__r_.__value_.__l.__data_ = v12;
    }

    v10 = v11 + 1;
    v13 = *(a1 + 8) - *a1;
    v14 = v11 - v13;
    memcpy(v11 - v13, *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v11 + 1;
    v16 = *(a1 + 16);
    *(a1 + 16) = 0;
    v17.__end_ = v15;
    v17.__end_cap_.__value_ = v16;
    v17.__first_ = v15;
    v17.__begin_ = v15;
    std::__split_buffer<std::string>::~__split_buffer(&v17);
  }

  else
  {
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

    v10 = (v4 + 24);
  }

  *(a1 + 8) = v10;
}

{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<long long>::__throw_length_error[abi:nn200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
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

    v17.__end_cap_.__value_ = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(v10);
    }

    v11 = 24 * v7;
    v12 = *a2;
    *(v11 + 16) = *(a2 + 2);
    *v11 = v12;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = 24 * v7 + 24;
    v13 = *(a1 + 8) - *a1;
    v14 = v11 - v13;
    memcpy((v11 - v13), *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v6;
    v16 = *(a1 + 16);
    *(a1 + 16) = 0;
    v17.__end_ = v15;
    v17.__end_cap_.__value_ = v16;
    v17.__first_ = v15;
    v17.__begin_ = v15;
    std::__split_buffer<std::string>::~__split_buffer(&v17);
  }

  else
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = v3 + 24;
  }

  *(a1 + 8) = v6;
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  begin = this->__begin_;
  end = this->__end_;
  if (end != begin)
  {
    do
    {
      v4 = end - 1;
      this->__end_ = end - 1;
      if (SHIBYTE(end[-1].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v4->__r_.__value_.__l.__data_);
        v4 = this->__end_;
      }

      end = v4;
    }

    while (v4 != begin);
  }

  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void _peopleMatchInfo::_peopleMatchInfo(_peopleMatchInfo *this, unint64_t a2)
{
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  v4 = this + 48;
  *this = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 104) = 0u;
  v5 = (this + 104);
  MEMORY[0x1C691FAE0]();
  MEMORY[0x1C691FAE0](this + 24, "");
  MEMORY[0x1C691FAE0](v4, "");
  MEMORY[0x1C691FAE0](this + 72, "");
  *(this + 12) = 0;
  std::vector<CFRange>::resize(v5, a2);
  std::vector<CFRange>::resize(this + 16, a2);
  v6 = *(this + 14);
  if (*v5 != v6)
  {
    bzero(*v5, ((v6 - *v5 - 16) & 0xFFFFFFFFFFFFFFF0) + 16);
  }

  v7 = *(this + 16);
  v8 = *(this + 17);
  if (v7 != v8)
  {
    bzero(v7, ((v8 - v7 - 16) & 0xFFFFFFFFFFFFFFF0) + 16);
  }

  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 165) = 0;
}

void std::vector<CFRange>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 4;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 16 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 4)
    {
      if (!(a2 >> 60))
      {
        v8 = v7 - v3;
        v9 = v8 >> 3;
        if (v8 >> 3 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF0)
        {
          v10 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<CFRange>>(v10);
      }

      std::vector<long long>::__throw_length_error[abi:nn200100]();
    }

    bzero(a1[1], 16 * v6);
    v11 = v4 + 16 * v6;
  }

  a1[1] = v11;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<CFRange>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::vector<long long>::__throw_length_error[abi:nn200100]();
}

uint64_t _peopleCandidate::_peopleCandidate(uint64_t a1, uint64_t a2, char a3, float a4)
{
  *(a1 + 40) = 0u;
  v8 = (a1 + 40);
  *(a1 + 88) = 0u;
  v9 = (a1 + 88);
  *(a1 + 136) = 0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 144) = 1065353216;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 112), a2) + 10) = a4;
  v10 = *(a2 + 100);
  v8[-1].__r_.__value_.__s.__data_[13] = *(a2 + 172);
  HIDWORD(v8[-2].__r_.__value_.__r.__words[1]) = v10;
  *&v8[-2].__r_.__value_.__r.__words[2] = a4;
  v11 = *(a2 + 152);
  v12 = *(a2 + 160);
  if (fabs(v11) <= 0.000000100000001)
  {
    *(a1 + 16) = v12;
  }

  if (fabs(v12) <= 0.000000100000001)
  {
    *(a1 + 16) = v11;
  }

  if (v11 > 0.000000100000001 && v12 > 0.000000100000001)
  {
    *(a1 + 16) = fmin(v11, v12);
  }

  *(a1 + 24) = (*(a2 + 168) | *(a2 + 169)) & 1;
  *(a1 + 25) = *(a2 + 170);
  v13 = *(a2 + 23);
  if ((v13 & 0x80u) != 0)
  {
    v13 = *(a2 + 8);
  }

  if (v13)
  {
    std::string::operator=(v8 + 1, a2);
    v14 = 0;
    v15 = *(a2 + 96);
  }

  else
  {
    MEMORY[0x1C691FAE0](&v8[1], "");
    v14 = 1;
    v15 = 0;
  }

  *a1 = v15;
  *(a1 + 26) = v14;
  v16 = *(a2 + 47);
  if ((v16 & 0x80u) != 0)
  {
    v16 = *(a2 + 32);
  }

  if (v16)
  {
    std::string::operator=(v9, (a2 + 24));
  }

  else
  {
    MEMORY[0x1C691FAE0](v9, "");
  }

  v17 = *(a2 + 71);
  if ((v17 & 0x80u) != 0)
  {
    v17 = *(a2 + 56);
  }

  if (v17)
  {
    std::vector<std::string>::push_back[abi:nn200100](&v8[5].__r_.__value_.__r.__words[2], (a2 + 48));
  }

  v18 = *(a2 + 95);
  if ((v18 & 0x80u) != 0)
  {
    v18 = *(a2 + 80);
  }

  if (v18)
  {
    std::string::operator=(v8, (a2 + 72));
  }

  *(a1 + 27) = a3;
  *(a1 + 28) = a3 ^ 1;
  *(a1 + 32) = 0;
  return a1;
}

void *std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, uint64_t a2)
{
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
    v6 = *(a2 + 8);
  }

  v7 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v5, v6);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_24;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v9)
    {
      v12 = v7 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v7;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v8)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v9)
      {
        v15 %= *&v9;
      }
    }

    else
    {
      v15 &= *&v9 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_24;
    }

LABEL_23:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_24;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:nn200100](v14 + 2, a2))
  {
    goto LABEL_23;
  }

  return v14;
}

uint64_t *std::__tree<long long>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

  result = std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<_topicCandidate>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<_topicCandidate>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<_topicCandidate>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<_topicCandidate>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::unique_ptr<_topicCandidate>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::unique_ptr<_peopleCandidate>>,0>(uint64_t a1)
{
  std::unique_ptr<_peopleCandidate>::~unique_ptr[abi:nn200100]((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t *std::unique_ptr<_peopleCandidate>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v4 = (v2 + 176);
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v4);
    v4 = (v2 + 152);
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v4);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v2 + 112);
    if (*(v2 + 111) < 0)
    {
      operator delete(*(v2 + 88));
    }

    if (*(v2 + 87) < 0)
    {
      operator delete(*(v2 + 64));
    }

    if (*(v2 + 63) < 0)
    {
      operator delete(*(v2 + 40));
    }

    MEMORY[0x1C691FEF0](v2, 0x10B2C405EE8648DLL);
  }

  return a1;
}

void std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::unique_ptr<_topicCandidate>>,0>(uint64_t a1)
{
  std::unique_ptr<_topicCandidate>::~unique_ptr[abi:nn200100]((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t *std::unique_ptr<_topicCandidate>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__tree<std::string>::destroy(*(v2 + 176));
    std::__tree<unsigned int>::destroy(*(v2 + 152));
    MEMORY[0x1C691FEF0](v2, 0x1020C40513055F9);
  }

  return a1;
}

void std::__tree<std::string>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::string>::destroy(*a1);
    std::__tree<std::string>::destroy(*(a1 + 1));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

uint64_t unigramsMatch(uint64_t a1, uint64_t a2, const char *a3, int a4, int a5, void *a6, const __CFDictionary *a7, const __CFLocale *a8, uint64_t a9)
{
  v50 = a5;
  v49 = a3;
  v55 = *MEMORY[0x1E69E9840];
  v53 = 0;
  v54 = 0;
  v9 = *(a1 + 32);
  v10 = *a6;
  if (v9 != (a6[1] - *a6) >> 4)
  {
    goto LABEL_43;
  }

  if (v9)
  {
    v11 = a4 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    *v10 = 0;
    v10[1] = strlen(v49);
    v36 = 1;
    goto LABEL_44;
  }

  if (!v9)
  {
LABEL_43:
    v36 = 0;
    goto LABEL_44;
  }

  v12 = a8;
  v13 = a7;
  v45 = a6;
  v36 = 0;
  v14 = 0;
  v15 = a9;
  v16 = *(a1 + 40);
  if (a7)
  {
    v17 = a9 == 0;
  }

  else
  {
    v17 = 1;
  }

  v19 = !v17 && a8 != 0;
  v44 = v19;
  v20 = *MEMORY[0x1E695E480];
  v41 = a8;
  v42 = v20;
  v40 = a7;
  v46 = a9;
  v47 = v9;
  do
  {
    v51 = 0uLL;
    v52 = 0;
    std::string::basic_string[abi:nn200100]<0>(&v51, *(v16 + 8 * v14));
    if (*(v16 + 8 * v14))
    {
      if (icu_search_context_create())
      {
        v48 = v36;
        v21 = v45;
        v22 = (*v45 + 16 * v14);
        *v22 = 0;
        v22[1] = 0;
        if (icu_search_match())
        {
          v23 = (*v21 + 16 * v14);
          *v23 = v54;
          v23[1] = v53;
          v36 = v48 + 1;
        }

        else
        {
          if (v44)
          {
            v24 = strlen(*(v16 + 8 * v14));
            Mutable = CFStringCreateMutable(v42, v24);
            CFStringAppendCString(Mutable, *(v16 + 8 * v14), 0x8000100u);
            CFStringLowercase(Mutable, v12);
            CFStringNormalize(Mutable, kCFStringNormalizationFormD);
            v26 = CFDictionaryContainsKey(v13, Mutable);
            v43 = Mutable;
            if (v26)
            {
              Value = CFDictionaryGetValue(v13, Mutable);
              for (i = 0; i < CFArrayGetCount(Value); ++i)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(Value, i);
                Length = CFStringGetLength(ValueAtIndex);
                MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
                MEMORY[0x1EEE9AC00](MaximumSizeForEncoding);
                v33 = &v39 - v32;
                bzero(&v39 - v32, v34 + 1);
                CFStringGetCString(ValueAtIndex, v33, MaximumSizeForEncoding + 1, 0x8000100u);
                v33[MaximumSizeForEncoding] = 0;
                if (icu_search_context_create())
                {
                  if (icu_search_match())
                  {
                    v35 = (*v45 + 16 * v14);
                    *v35 = v54;
                    v35[1] = v53;
                    ++v48;
                    MEMORY[0x1C691FAE0](&v51, v33);
                    icu_ctx_release();
                    break;
                  }

                  icu_ctx_release();
                }
              }

              v13 = v40;
              v12 = v41;
            }

            if (v43)
            {
              CFRelease(v43);
            }
          }

          v36 = v48;
        }

        icu_ctx_release();
      }

      v15 = v46;
      v9 = v47;
    }

    if (v15)
    {
      std::vector<std::string>::push_back[abi:nn200100](v15, &v51);
    }

    if (SHIBYTE(v52) < 0)
    {
      operator delete(v51);
    }

    ++v14;
  }

  while (v14 != v9);
LABEL_44:
  v37 = *MEMORY[0x1E69E9840];
  return v36;
}

uint64_t tokenIsStopWord(uint64_t a1, uint64_t a2)
{
  SILocalizationLoad();
  SILanguagesIsCJK();
  TokenType = SILocalizationGetTokenType();
  v4 = MEMORY[0x1C691EAF0](a2);
  if (TokenType == 5)
  {
    return 1;
  }

  v6 = v4;
  if (CFStringHasPrefix(v4, @"fr") || (result = CFStringHasPrefix(v6, @"es"), result))
  {
    CFLocaleCreate(*MEMORY[0x1E695E480], @"en");
    SILocalizationLoad();
    return SILocalizationGetTokenType() == 5;
  }

  return result;
}

int *___Z15tokenIsStopWordP13_LocalizationPK10__CFLocalePhi_block_invoke(int *result, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = result;
    v3 = *__error();
    v4 = _SILogForLogForCategory(14);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(v2 + 4);
      v7 = 136315650;
      v8 = "tokenIsStopWord_block_invoke";
      v9 = 1024;
      v10 = 1336;
      v11 = 2112;
      v12 = v6;
      _os_log_error_impl(&dword_1C278D000, v4, OS_LOG_TYPE_ERROR, "%s:%d: [Pommes_Suggestions] error loading localization for %@", &v7, 0x1Cu);
    }

    result = __error();
    *result = v3;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

int *___Z15tokenIsStopWordP13_LocalizationPK10__CFLocalePhi_block_invoke_10(int *result, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = result;
    v3 = *__error();
    v4 = _SILogForLogForCategory(14);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(v2 + 4);
      v7 = 136315650;
      v8 = "tokenIsStopWord_block_invoke";
      v9 = 1024;
      v10 = 1347;
      v11 = 2112;
      v12 = v6;
      _os_log_error_impl(&dword_1C278D000, v4, OS_LOG_TYPE_ERROR, "%s:%d: [Pommes_Suggestions] error loading localization for %@", &v7, 0x1Cu);
    }

    result = __error();
    *result = v3;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t tokenIsValid(char *src, int32_t srcLength, uint64_t a3, uint64_t a4, int a5, int a6)
{
  result = 0;
  v20 = *MEMORY[0x1E69E9840];
  if (src && (srcLength - 30) >= 0xFFFFFFE3)
  {
    if (_tokenIsAllPunctuationOrHasUnwantedChar(unsigned char *,int,BOOL)::onceToken != -1)
    {
      dispatch_once(&_tokenIsAllPunctuationOrHasUnwantedChar(unsigned char *,int,BOOL)::onceToken, &__block_literal_global_263);
    }

    v18 = 0u;
    memset(v19, 0, sizeof(v19));
    *dest = 0u;
    *pErrorCode = 0;
    u_strFromUTF8(dest, 30, &pErrorCode[1], src, srcLength, pErrorCode);
    if (pErrorCode[1] == U_ZERO_ERROR || pErrorCode[0] == U_BUFFER_OVERFLOW_ERROR)
    {
LABEL_23:
      if (!a5 || (tokenIsStopWord(*(a3 + 16), a4) & 1) == 0)
      {
        result = 1;
        goto LABEL_27;
      }
    }

    else if (pErrorCode[1] >= U_ILLEGAL_ARGUMENT_ERROR)
    {
      v13 = 0;
      v14 = 1;
      while (!CFCharacterSetIsCharacterMember(_tokenIsAllPunctuationOrHasUnwantedChar(unsigned char *,int,BOOL)::controlSet, dest[v13]) && !CFCharacterSetIsCharacterMember(_tokenIsAllPunctuationOrHasUnwantedChar(unsigned char *,int,BOOL)::newlineSet, dest[v13]) && !CFCharacterSetIsCharacterMember(_tokenIsAllPunctuationOrHasUnwantedChar(unsigned char *,int,BOOL)::whitespaceSet, dest[v13]) && !CFCharacterSetIsCharacterMember(_tokenIsAllPunctuationOrHasUnwantedChar(unsigned char *,int,BOOL)::otherUnwantedSet, dest[v13]) && (!a6 || !CFCharacterSetIsCharacterMember(_tokenIsAllPunctuationOrHasUnwantedChar(unsigned char *,int,BOOL)::decimalDigitSet, dest[v13])) && (v13 && v13 != pErrorCode[1] - 1 || !CFCharacterSetIsCharacterMember(_tokenIsAllPunctuationOrHasUnwantedChar(unsigned char *,int,BOOL)::punctuationSet, dest[v13]) && !CFCharacterSetIsCharacterMember(_tokenIsAllPunctuationOrHasUnwantedChar(unsigned char *,int,BOOL)::symbolSet, dest[v13])))
      {
        if (!CFCharacterSetIsCharacterMember(_tokenIsAllPunctuationOrHasUnwantedChar(unsigned char *,int,BOOL)::punctuationSet, dest[v13]))
        {
          v14 &= CFCharacterSetIsCharacterMember(_tokenIsAllPunctuationOrHasUnwantedChar(unsigned char *,int,BOOL)::symbolSet, dest[v13]) != 0;
        }

        if (++v13 >= pErrorCode[1])
        {
          if (v14)
          {
            break;
          }

          goto LABEL_23;
        }
      }
    }

    result = 0;
  }

LABEL_27:
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

CFCharacterSetRef ___ZL39_tokenIsAllPunctuationOrHasUnwantedCharPhib_block_invoke()
{
  _tokenIsAllPunctuationOrHasUnwantedChar(unsigned char *,int,BOOL)::punctuationSet = CFCharacterSetGetPredefined(kCFCharacterSetPunctuation);
  _tokenIsAllPunctuationOrHasUnwantedChar(unsigned char *,int,BOOL)::symbolSet = CFCharacterSetGetPredefined(kCFCharacterSetSymbol);
  _tokenIsAllPunctuationOrHasUnwantedChar(unsigned char *,int,BOOL)::decimalDigitSet = CFCharacterSetGetPredefined(kCFCharacterSetDecimalDigit);
  _tokenIsAllPunctuationOrHasUnwantedChar(unsigned char *,int,BOOL)::controlSet = CFCharacterSetGetPredefined(kCFCharacterSetControl);
  _tokenIsAllPunctuationOrHasUnwantedChar(unsigned char *,int,BOOL)::newlineSet = CFCharacterSetGetPredefined(kCFCharacterSetNewline);
  _tokenIsAllPunctuationOrHasUnwantedChar(unsigned char *,int,BOOL)::whitespaceSet = CFCharacterSetGetPredefined(kCFCharacterSetWhitespace);
  result = CFCharacterSetCreateWithCharactersInString(*MEMORY[0x1E695E480], @"");
  _tokenIsAllPunctuationOrHasUnwantedChar(unsigned char *,int,BOOL)::otherUnwantedSet = result;
  return result;
}

void postProcessCJKSuggestions(std::string *a1, uint64_t a2)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  if (*(a2 + 23) >= 0)
  {
    v2 = a2;
  }

  else
  {
    v2 = *a2;
  }

  v3 = *v2;
  if (*v2)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      if ((v3 & 0x80) != 0)
      {
        v9 = v3 >> 4;
        v10 = ~v9;
        v11 = utf8_byte_length(unsigned char)::utf8_len_table[v9];
        v12 = utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v11] & v3;
        if ((v10 & 0xC) != 0)
        {
          v3 &= utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v11];
        }

        else
        {
          if (v11 <= 2)
          {
            v11 = 2;
          }

          else
          {
            v11 = v11;
          }

          v13 = v11 - 1;
          v14 = v2 + 1;
          do
          {
            v15 = *v14++;
            v3 = v15 & 0x3F | (v12 << 6);
            v12 = v3;
            --v13;
          }

          while (v13);
        }
      }

      isUWhiteSpace = u_isUWhiteSpace(v3);
      v17 = isUWhiteSpace != 0;
      if (!isUWhiteSpace)
      {
        if (v3 >> 8 < 0x11 || (v18 = 1, v3 - 65376 >= 0x50) && (v3 & 0xFFFFFF00) != 0x1100 && (v3 - 11904) >> 7 >= 0x197)
        {
          if (!(v8 & 1 | !v7))
          {
            std::string::push_back(a1, 32);
          }

          v18 = 0;
        }

        std::string::basic_string(&__p, a2, v6, utf8_byte_length_noerror(unsigned char)::utf8_len_table[*v2 >> 4], &v23);
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

        std::string::append(a1, p_p, size);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v8 = v18;
      }

      v21 = utf8_byte_length_noerror(unsigned char)::utf8_len_table[*v2 >> 4];
      v6 += v21;
      v2 += v21;
      v3 = *v2;
      v7 = v17;
    }

    while (*v2);
  }
}

void _SIPommesSuggestionsProcessRawText(int a1, int a2, int a3, void *a4, int a5, int a6, int a7, int a8, uint64_t a9, unsigned __int8 *a10, char a11, char a12, uint64_t a13, char a14, CFArrayRef theArray)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a4 && a4[4] && *a4)
  {
    if (a10)
    {
      v15 = *a10;
      if (v15 == 106)
      {
        v18 = a10[1] == 97;
      }

      else if (v15 == 122)
      {
        v16 = a10[1];
      }
    }

    operator new();
  }

  v17 = *MEMORY[0x1E69E9840];
}

void sub_1C28D4A80(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CFRelease(v1);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<CFRange>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<CFRange>>(a2);
  }

  std::vector<long long>::__throw_length_error[abi:nn200100]();
}

uint64_t std::vector<std::string>::__init_with_size[abi:nn200100]<std::string*,std::string*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:nn200100](result, a4);
  }

  return result;
}

_BYTE *std::string::basic_string[abi:nn200100](_BYTE *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<long long>::__throw_length_error[abi:nn200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __dst[23] = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  __dst[__len] = 0;
  return __dst;
}

uint64_t stringToLowerCase(uint64_t *a1, std::string *a2, int a3)
{
  v39 = *MEMORY[0x1E69E9840];
  MEMORY[0x1C691FAE0](a2, "");
  if (*(a1 + 23) < 0)
  {
    if ((a1[1] - 513) >= 0xFFFFFFFFFFFFFE00)
    {
      bzero(dest, 0x400uLL);
      bzero(v37, 0x400uLL);
      *pErrorCode = 0;
      a1 = *a1;
      goto LABEL_7;
    }

LABEL_5:
    v6 = 0;
    goto LABEL_63;
  }

  if (!*(a1 + 23))
  {
    goto LABEL_5;
  }

  bzero(dest, 0x400uLL);
  bzero(v37, 0x400uLL);
  *pErrorCode = 0;
LABEL_7:
  u_strFromUTF8(dest, 512, &pErrorCode[1], a1, -1, pErrorCode);
  v6 = 0;
  if (pErrorCode[1])
  {
    if (pErrorCode[0] != U_BUFFER_OVERFLOW_ERROR)
    {
      pErrorCode[0] = U_ZERO_ERROR;
      v7 = u_strToLower(v37, 512, dest, pErrorCode[1], 0, pErrorCode);
      v6 = 0;
      pErrorCode[1] = v7;
      if (v7)
      {
        if (pErrorCode[0] != U_BUFFER_OVERFLOW_ERROR)
        {
          v8 = v7;
          if (a3)
          {
            normalizePunctuations(v37, v7);
          }

          bzero(__src, 0x400uLL);
          v9 = &v37[v8];
          if ((4 * v8) > 0x400)
          {
            if (v8 >= 1)
            {
              v17 = 0;
              v18 = v37;
              v11 = __src;
              v19 = v37;
              while (1)
              {
                v21 = *v19++;
                v20 = v21;
                if (v21 > 0x7F)
                {
                  if (v20 > 0x7FF)
                  {
                    if ((v20 & 0xF800) == 0xD800)
                    {
                      if ((v20 & 0x400) == 0 && v19 < v9)
                      {
                        v22 = *v19;
                        if ((v22 & 0xFC00) == 0xDC00)
                        {
                          if (v17 > 1020)
                          {
                            goto LABEL_47;
                          }

                          v19 = v18 + 2;
                          v23 = v22 + (v20 << 10) - 56613888;
                          v24 = &__src[v17];
                          *v11 = (v23 >> 18) | 0xF0;
                          v24[1] = (v23 >> 12) & 0x3F | 0x80;
                          v24[2] = (v23 >> 6) & 0x3F | 0x80;
                          v17 += 4;
                          v11[3] = v22 & 0x3F | 0x80;
                        }
                      }
                    }

                    else
                    {
                      if (v17 > 1021)
                      {
LABEL_47:
                        v11 = &__src[v17];
                        goto LABEL_48;
                      }

                      *v11 = (v20 >> 12) | 0xE0;
                      v11[1] = (v20 >> 6) & 0x3F | 0x80;
                      v17 += 3;
                      v11[2] = v20 & 0x3F | 0x80;
                    }
                  }

                  else
                  {
                    if (v17 > 1022)
                    {
                      goto LABEL_47;
                    }

                    *v11 = (v20 >> 6) | 0xC0;
                    v17 += 2;
                    v11[1] = v20 & 0x3F | 0x80;
                  }
                }

                else
                {
                  if (v17 > 1023)
                  {
                    goto LABEL_47;
                  }

                  ++v17;
                  *v11 = v20;
                }

                v11 = &__src[v17];
                v18 = v19;
                if (v19 >= v9)
                {
                  goto LABEL_48;
                }
              }
            }
          }

          else if (v8 >= 1)
          {
            v10 = v37;
            v11 = __src;
            v12 = v37;
            do
            {
              v14 = *v12++;
              v13 = v14;
              if (v14 > 0x7F)
              {
                if (v13 > 0x7FF)
                {
                  if ((v13 & 0xF800) == 0xD800)
                  {
                    if ((v13 & 0x400) == 0 && v12 < v9)
                    {
                      v15 = *v12;
                      if ((v15 & 0xFC00) == 0xDC00)
                      {
                        v12 = v10 + 2;
                        v16 = v15 + (v13 << 10) - 56613888;
                        *v11 = (v16 >> 18) | 0xF0;
                        v11[1] = (v16 >> 12) & 0x3F | 0x80;
                        v11[2] = (v16 >> 6) & 0x3F | 0x80;
                        v11[3] = v15 & 0x3F | 0x80;
                        v11 += 4;
                      }
                    }
                  }

                  else
                  {
                    *v11 = (v13 >> 12) | 0xE0;
                    v11[1] = (v13 >> 6) & 0x3F | 0x80;
                    v11[2] = v13 & 0x3F | 0x80;
                    v11 += 3;
                  }
                }

                else
                {
                  *v11 = (v13 >> 6) | 0xC0;
                  v11[1] = v13 & 0x3F | 0x80;
                  v11 += 2;
                }
              }

              else
              {
                *v11++ = v13;
              }

              v10 = v12;
            }

            while (v12 < v9);
            goto LABEL_48;
          }

          v11 = __src;
LABEL_48:
          v6 = v11 - __src;
          std::string::basic_string[abi:nn200100](&__dst, __src, v11 - __src);
          if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(a2->__r_.__value_.__l.__data_);
          }

          *&a2->__r_.__value_.__l.__data_ = __dst;
          a2->__r_.__value_.__r.__words[2] = v34;
          if (a3)
          {
            v25 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
            if (v25 >= 0)
            {
              v26 = a2;
            }

            else
            {
              v26 = a2->__r_.__value_.__r.__words[0];
            }

            if (v25 >= 0)
            {
              size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = a2->__r_.__value_.__l.__size_;
            }

            v28 = v26 + size;
            while (size)
            {
              v29 = *--v28;
              --size;
              if (!memchr(" \n\r\t", v29, 4uLL))
              {
                v30 = v28 - v26 + 1;
                goto LABEL_62;
              }
            }

            v30 = 0;
LABEL_62:
            std::string::erase(a2, v30, 0xFFFFFFFFFFFFFFFFLL);
          }
        }
      }
    }
  }

LABEL_63:
  v31 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t std::operator+[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, const void **a2, const void **a3)
{
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (*(a3 + 23) >= 0)
  {
    v6 = *(a3 + 23);
  }

  else
  {
    v6 = a3[1];
  }

  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  result = std::string::basic_string[abi:nn200100](a1, v6 + v5);
  if (*(result + 23) >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v5)
  {
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    result = memmove(v8, v9, v5);
  }

  v10 = &v8[v5];
  if (v6)
  {
    if (*(a3 + 23) >= 0)
    {
      v11 = a3;
    }

    else
    {
      v11 = *a3;
    }

    result = memmove(v10, v11, v6);
  }

  v10[v6] = 0;
  return result;
}

void _AccumulatePhotosCandidates(uint64_t *a1, os_unfair_lock_t lock, uint64_t a3, int a4, float a5)
{
  os_unfair_lock_lock(lock);
  v8 = *(a3 + 23);
  if (v8 >= 0)
  {
    v9 = a3;
  }

  else
  {
    v9 = *a3;
  }

  if (v8 >= 0)
  {
    v10 = *(a3 + 23);
  }

  else
  {
    v10 = *(a3 + 8);
  }

  v11 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v9, v10);
  v12 = a1[1];
  if (!*&v12)
  {
    goto LABEL_24;
  }

  v13 = v11;
  v14 = vcnt_s8(v12);
  v14.i16[0] = vaddlv_u8(v14);
  v15 = v14.u32[0];
  if (v14.u32[0] > 1uLL)
  {
    v16 = v11;
    if (v11 >= *&v12)
    {
      v16 = v11 % *&v12;
    }
  }

  else
  {
    v16 = (*&v12 - 1) & v11;
  }

  v17 = *a1;
  v18 = *(*a1 + 8 * v16);
  if (!v18 || (v19 = *v18) == 0)
  {
LABEL_24:
    operator new();
  }

  v30 = *&v12 - 1;
  while (1)
  {
    v20 = v19[1];
    if (v20 == v13)
    {
      break;
    }

    if (v15 > 1)
    {
      if (v20 >= *&v12)
      {
        v20 %= *&v12;
      }
    }

    else
    {
      v20 &= v30;
    }

    if (v20 != v16)
    {
      goto LABEL_24;
    }

LABEL_23:
    v19 = *v19;
    if (!v19)
    {
      goto LABEL_24;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:nn200100](v19 + 2, a3))
  {
    goto LABEL_23;
  }

  v21 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v9, v10);
  v22 = v21;
  if (v15 > 1)
  {
    v23 = v21;
    if (v21 >= *&v12)
    {
      v23 = v21 % *&v12;
    }
  }

  else
  {
    v23 = v30 & v21;
  }

  v24 = *(v17 + 8 * v23);
  if (!v24 || (v25 = *v24) == 0)
  {
LABEL_43:
    operator new();
  }

  while (2)
  {
    v26 = v25[1];
    if (v26 != v22)
    {
      if (v15 > 1)
      {
        if (v26 >= *&v12)
        {
          v26 %= *&v12;
        }
      }

      else
      {
        v26 &= v30;
      }

      if (v26 != v23)
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }

    if (!std::equal_to<std::string>::operator()[abi:nn200100](v25 + 2, a3))
    {
LABEL_42:
      v25 = *v25;
      if (!v25)
      {
        goto LABEL_43;
      }

      continue;
    }

    break;
  }

  v27 = v25[5];
  v28 = *(v27 + 8);
  ++*(v27 + 4);
  v29 = *v27;
  if (*v27 < a5)
  {
    v29 = a5;
  }

  *v27 = v29;
  if (v28 != a4)
  {
    *(v27 + 8) = 9;
  }

  os_unfair_lock_unlock(lock);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<_freeTextCandidate>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<_freeTextCandidate>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::unique_ptr<_freeTextCandidate>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void *std::__tree<long long>::__emplace_hint_unique_key_args<long long,long long const&>(void *a1, void *a2, uint64_t a3)
{
  v3 = a2;
  v4 = a1 + 1;
  if (a1 + 1 == a2 || (v5 = a2[4], v5 > a3))
  {
    v6 = *a2;
    if (*a1 == a2)
    {
      v8 = a2;
LABEL_16:
      if (v6)
      {
        v9 = v8 + 1;
      }

      else
      {
        v9 = a2;
      }

      goto LABEL_19;
    }

    if (v6)
    {
      v7 = *a2;
      do
      {
        v8 = v7;
        v7 = v7[1];
      }

      while (v7);
    }

    else
    {
      v12 = a2;
      do
      {
        v8 = v12[2];
        v13 = *v8 == v12;
        v12 = v8;
      }

      while (v13);
    }

    if (v8[4] < a3)
    {
      goto LABEL_16;
    }

    v14 = *v4;
    if (!*v4)
    {
      goto LABEL_38;
    }

    while (1)
    {
      while (1)
      {
        v15 = v14;
        v16 = v14[4];
        if (v16 <= a3)
        {
          break;
        }

        v14 = *v15;
        v4 = v15;
        if (!*v15)
        {
          goto LABEL_38;
        }
      }

      if (v16 >= a3)
      {
        break;
      }

      v4 = v15 + 1;
      v14 = v15[1];
      if (!v14)
      {
        goto LABEL_38;
      }
    }

LABEL_40:
    v9 = v4;
    goto LABEL_19;
  }

  if (v5 >= a3)
  {
    return v3;
  }

  v9 = a2 + 1;
  v10 = a2[1];
  if (v10)
  {
    do
    {
      v9 = v10;
      v10 = *v10;
      v11 = v9;
    }

    while (v10);
  }

  else
  {
    v11 = a2;
    do
    {
      v17 = v11;
      v11 = v11[2];
    }

    while (*v11 != v17);
  }

  if (v11 != v4 && v11[4] <= a3)
  {
    v18 = *v4;
    if (!*v4)
    {
      goto LABEL_38;
    }

    while (1)
    {
      while (1)
      {
        v19 = v18;
        v20 = v18[4];
        if (v20 <= a3)
        {
          break;
        }

        v18 = *v19;
        v4 = v19;
        if (!*v19)
        {
          goto LABEL_38;
        }
      }

      if (v20 >= a3)
      {
        goto LABEL_40;
      }

      v4 = v19 + 1;
      v18 = v19[1];
      if (!v18)
      {
        goto LABEL_38;
      }
    }
  }

LABEL_19:
  v3 = *v9;
  if (!*v9)
  {
LABEL_38:
    operator new();
  }

  return v3;
}

void SIPommesSuggestionsProcessDBO(uint64_t a1, int *a2, uint64_t *a3, uint64_t a4, unsigned int a5, uint64_t a6, os_unfair_lock_s *a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 *a11, int a12, char *__s1, unsigned __int8 **a14, uint64_t a15, char a16, uint64_t a17)
{
  v206 = *MEMORY[0x1E69E9840];
  if (!__s1)
  {
    goto LABEL_39;
  }

  v21 = a14;
  v22 = a9;
  v23 = strcmp(__s1, "com.apple.mobilemail");
  v24 = strcmp(__s1, "com.apple.mobileslideshow");
  os_unfair_lock_opaque = a7[2]._os_unfair_lock_opaque;
  if ((os_unfair_lock_opaque & 0x80) == 0)
  {
    if ((os_unfair_lock_opaque & 0x1000) == 0)
    {
      v27 = a3;
      v26 = a2;
      if (v24)
      {
        v28 = a5;
        v29 = a4;
        if (!v23)
        {
          v30 = a11[3];
          v97 = a11[2];
          v98 = v30;
          v99 = a11[4];
          v31 = a11[1];
          v95 = *a11;
          v96 = v31;
          *&v182 = a3;
          *&v181 = a6;
          *&v180 = a7;
          *&v141 = a8;
          *&v139 = a9;
          *&v137 = a10;
          LODWORD(v176) = a12;
          *&v166 = a15;
          LOBYTE(v173) = a16;
          if (a8 && a9)
          {
            field = db_get_field(a2, a3, "kMDItemContentURL", 0, 0);
            if (field == 2)
            {
              v179 = 0;
              if (a14)
              {
                v33 = *a14;
                v179 = v33;
                v28 = a5;
                v29 = a4;
                v27 = a3;
                if (v33)
                {
                  v34 = *v33;
                  if (v34 == 106)
                  {
                    v34 = v33[1];
                    v35 = 97;
                  }

                  else
                  {
                    v35 = 106;
                  }

                  v79 = v35 == v34;
                }

                else
                {
                  v79 = 0;
                }
              }

              else
              {
                v79 = 0;
                v28 = a5;
                v29 = a4;
                v27 = a3;
              }

              LOBYTE(v171) = v79;
              if (*(a9 + 16))
              {
                v80 = icu_search_context_create();
                v27 = a3;
                v29 = a4;
                v28 = a5;
                v178 = v80;
                if (v80)
                {
                  v81 = *(a9 + 16);
                  v82 = *v81 == 42 && v81[1] == 0;
                  LOBYTE(v168) = v82;
                  v144 = 0uLL;
                  v145 = 0;
                  v117 = 0uLL;
                  *&v118 = 0;
                  LODWORD(v175) = 0;
                  LOBYTE(lock) = 0;
                  LOBYTE(v174) = 0;
                  *&v90 = (*(a17 + 16))(a17, &v175, &v174, &lock, a4, a5);
                  *v177 = a7 + 1;
                  LOBYTE(v170) = 0;
                  operator new();
                }
              }

              v26 = a2;
            }

            else
            {
              v57 = field;
              v85 = *__error();
              v58 = _SILogForLogForCategory(14);
              v59 = 2 * (dword_1EBF46B04 < 4);
              v60 = v58;
              if (os_log_type_enabled(v58, v59))
              {
                v61 = *a3;
                *buf = 67109376;
                *&buf[4] = v57;
                LOWORD(v186) = 2048;
                *(&v186 + 2) = v61;
                _os_log_impl(&dword_1C278D000, v60, v59, "[Pommes_Suggestions]mail_debug: Skipping attachment. rc:%d for oid %lld.", buf, 0x12u);
              }

              *__error() = v85;
              v28 = a5;
              v29 = a4;
              v27 = a3;
              v26 = a2;
            }
          }

          if ((os_unfair_lock_opaque & 0x4000) != 0)
          {
            v83 = a11[3];
            v97 = a11[2];
            v98 = v83;
            v99 = a11[4];
            v84 = a11[1];
            v95 = *a11;
            v96 = v84;
            SIPommesSpotlightMailSuggestionsProcessDBO(v26, v27, a7, a8, v29, v28, a9, a14, a12, &v95, a17);
          }
        }
      }

      else
      {
        v46 = a11[3];
        v97 = a11[2];
        v98 = v46;
        v99 = a11[4];
        v47 = a11[1];
        v95 = *a11;
        v96 = v47;
        *&v144 = a3;
        *&v117 = a6;
        *&v90 = a7;
        *&v182 = a8;
        *&v181 = a9;
        LODWORD(v137) = a12;
        if (a8 && a9)
        {
          *&v180 = 0;
          if (a14 && (v48 = *a14, (*&v180 = v48) != 0))
          {
            v49 = *v48;
            if (v49 == 106)
            {
              v49 = v48[1];
              v50 = 97;
            }

            else
            {
              v50 = 106;
            }

            v56 = v50 == v49;
          }

          else
          {
            v56 = 0;
          }

          LOBYTE(v166) = v56;
          if (*(a9 + 16))
          {
            *&v141 = icu_search_context_create();
            if (v141)
            {
              *&v139 = a7 + 1;
              operator new();
            }
          }
        }
      }

      goto LABEL_39;
    }

    if (v24)
    {
      v42 = a11[3];
      v119 = a11[2];
      v120 = v42;
      v121 = a11[4];
      v43 = a11[1];
      v117 = *a11;
      v118 = v43;
      v178 = a3;
      *v177 = a7;
      v176 = a8;
      v175 = a9;
      v174 = a12;
      if (a9 && a8 && *(a9 + 24))
      {
        v173 = 0;
        if (a14 && (v21 = *a14, (v173 = v21) != 0))
        {
          v44 = *v21;
          if (v44 == 106)
          {
            v44 = v21[1];
            v45 = 97;
          }

          else
          {
            v45 = 106;
          }

          v54 = v45 == v44;
        }

        else
        {
          v54 = 0;
        }

        v172 = v54;
        if (*(a9 + 16))
        {
          v63 = icu_search_context_create();
          v171 = v63;
          if (v63)
          {
            v64 = v63;
            v170 = 0;
            v169 = 0;
            v65 = (*(a17 + 16))(a17, &v170, &v169, &v169 + 1);
            v168 = v65;
            v66 = a7[2]._os_unfair_lock_opaque;
            lock = a7 + 1;
            *&v90 = 0;
            *(&v90 + 1) = &v90;
            *&v91 = 0x2000000000;
            *(&v91 + 1) = -1;
            if ((v66 & 0x4000) != 0)
            {
              v144 = xmmword_1C2BFA7A0;
              v182 = xmmword_1C2BFA7B0;
              v181 = xmmword_1C2BFA7C0;
              v180 = xmmword_1C2BF9440;
              *&v95 = MEMORY[0x1E69E9820];
              *(&v95 + 1) = 0x40000000;
              *&v96 = ___ZL44SIPommesSpotlightSearchSuggestionsProcessDBOP8DocStoreP14datastore_infoP6db_objP17_SuggestionsModelP11CITokenizerPPKjiPPKcP23si_completion_pattern_sSE_j16ci_rankingbits_sU13block_pointerFdPjPbSJ_E_block_invoke;
              *(&v96 + 1) = &unk_1E8190CF8;
              v102 = &v90;
              v103 = a7;
              v104 = a7 + 1;
              v105 = a8;
              v106 = a9;
              v107 = v64;
              v108 = v21;
              LOBYTE(v111) = v54;
              v100 = v120;
              v101 = v121;
              v98 = v118;
              v99 = v119;
              v97 = v117;
              v67 = a5;
              v110 = __PAIR64__(v170, a12);
              BYTE1(v111) = HIBYTE(v169);
              BYTE2(v111) = v169;
              v109 = v65;
              v68 = a4;
              SIPommesDBOScoredTopicFieldIterator(a2, a3, &v144, &v182, &v181, &v180, a4, a5, &v95);
              v141 = xmmword_1C2BFA7D0;
              v139 = xmmword_1C2BFA7E0;
              v137 = xmmword_1C2BFA7F0;
              v166 = xmmword_1C2BFA800;
              *(*(&v90 + 1) + 24) = -1;
              *buf = MEMORY[0x1E69E9820];
              *&v186 = 0x40000000;
              *(&v186 + 1) = ___ZL44SIPommesSpotlightSearchSuggestionsProcessDBOP8DocStoreP14datastore_infoP6db_objP17_SuggestionsModelP11CITokenizerPPKjiPPKcP23si_completion_pattern_sSE_j16ci_rankingbits_sU13block_pointerFdPjPbSJ_E_block_invoke_2;
              v187 = &unk_1E8190D20;
              v193 = &v90;
              v194 = a7;
              v195 = a7 + 1;
              v196 = a8;
              v197 = a9;
              v198 = v64;
              v199 = v21;
              v203 = v54;
              v190 = v119;
              v191 = v120;
              v192 = v121;
              v189 = v118;
              v188 = v117;
              v201 = a12;
              v202 = v170;
              v204 = HIBYTE(v169);
              v205 = v169;
              v65 = v168;
              v200 = v168;
              SIPommesDBOScoredTopicFieldIterator(a2, a3, &v141, &v139, &v137, &v166, a4, a5, buf);
              v69 = a2;
              v70 = v178;
              v22 = v175;
            }

            else
            {
              v67 = a5;
              v68 = a4;
              v70 = a3;
              v69 = a2;
            }

            v165 = 0;
            v166 = xmmword_1C2BFA810;
            v71 = v70;
            SIPommesDBOGetIntValue(v69, v70, &v166, v68, v67, &v165);
            if (v165 >= 8)
            {
              v182 = xmmword_1C2BFA820;
              v181 = xmmword_1C2BFA830;
              *(*(&v90 + 1) + 24) = -1;
              *&v144 = MEMORY[0x1E69E9820];
              *(&v144 + 1) = 0x40000000;
              v145 = ___ZL44SIPommesSpotlightSearchSuggestionsProcessDBOP8DocStoreP14datastore_infoP6db_objP17_SuggestionsModelP11CITokenizerPPKjiPPKcP23si_completion_pattern_sSE_j16ci_rankingbits_sU13block_pointerFdPjPbSJ_E_block_invoke_3;
              v146 = &unk_1E8190D48;
              v152 = &v90;
              v153 = *v177;
              v154 = lock;
              v155 = v176;
              v156 = v22;
              v157 = v171;
              v158 = v173;
              v162 = v172;
              v150 = v120;
              v151 = v121;
              v148 = v118;
              v149 = v119;
              v147 = v117;
              v160 = a12;
              v161 = v170;
              v163 = HIBYTE(v169);
              v164 = v169;
              v159 = v65;
              SIPommesDBOScoredTopicFieldIterator(a2, v71, &v182, &v181, 0, 0, a4, a5, &v144);
            }

            v72 = *(v22 + 16);
            v73 = *v72 == 42 && v72[1] == 0;
            v143 = v73;
            v141 = 0uLL;
            v142 = 0;
            v139 = 0uLL;
            v140 = 0;
            v137 = 0uLL;
            v138 = 0;
            operator new();
          }
        }
      }

      goto LABEL_39;
    }

LABEL_38:
    v51 = a11[3];
    v97 = a11[2];
    v98 = v51;
    v99 = a11[4];
    v52 = a11[1];
    v95 = *a11;
    v96 = v52;
    SIPommesSpotlightPhotosSuggestionsProcessDBO(a1, a2, a3, a7, a8, a4, a5, a9, a14, a12, &v95, a17);
    goto LABEL_39;
  }

  if (!v24)
  {
    goto LABEL_38;
  }

  v36 = a11[3];
  v92 = a11[2];
  v93 = v36;
  v94 = a11[4];
  v37 = a11[1];
  v90 = *a11;
  v91 = v37;
  if (!a9)
  {
    goto LABEL_39;
  }

  if (!a8)
  {
    goto LABEL_39;
  }

  v38 = *(a9 + 24);
  if (!v38)
  {
    goto LABEL_39;
  }

  if (!a14)
  {
    LOBYTE(v41) = 0;
    v39 = 0;
LABEL_43:
    v55 = 0;
    goto LABEL_76;
  }

  v39 = *a14;
  if (!*a14)
  {
    LOBYTE(v41) = 0;
    goto LABEL_43;
  }

  v40 = *v39;
  if (v40 == 122)
  {
    v41 = 1;
    if (v39[1] != 104)
    {
      goto LABEL_73;
    }

    LOBYTE(v41) = 0;
LABEL_50:
    v55 = 1;
    goto LABEL_76;
  }

  if (v40 != 106)
  {
    if (v40 == 107)
    {
      v40 = v39[1];
      v62 = 111;
    }

    else
    {
      v62 = 107;
    }

    v41 = v62 - v40;
    goto LABEL_73;
  }

  v41 = 1;
  if (v39[1] == 97)
  {
    goto LABEL_50;
  }

LABEL_73:
  v74 = v41 == 0;
  LOBYTE(v41) = 0;
  v55 = v74;
LABEL_76:
  if (*(a9 + 16))
  {
    v75 = icu_search_context_create();
    if (v75)
    {
      v76 = v75;
      LODWORD(v179) = 0;
      LOBYTE(v178) = 0;
      LOBYTE(v177[0]) = 0;
      v77 = (*(a17 + 16))(a17, &v179, v177, &v178);
      v78 = a7[2]._os_unfair_lock_opaque;
      *&v182 = 0;
      *(&v182 + 1) = &v182;
      v183 = 0x2000000000;
      v184 = -1;
      if ((v78 & 0x4000) != 0)
      {
        v95 = xmmword_1C2BFA840;
        v117 = xmmword_1C2BFA850;
        v181 = xmmword_1C2BFA860;
        v180 = xmmword_1C2BFA870;
        *buf = MEMORY[0x1E69E9820];
        *&v186 = 0x40000000;
        *(&v186 + 1) = ___ZL38SIPommesSpotlightSuggestionsProcessDBOP8DocStoreP14datastore_infoP6db_objP17_SuggestionsModelP11CITokenizerPPKjiPPKcP23si_completion_pattern_sSE_j16ci_rankingbits_sU13block_pointerFdPjPbSJ_E_block_invoke;
        v187 = &unk_1E8190C58;
        v193 = &v182;
        v194 = a7;
        v195 = a7 + 1;
        v196 = a8;
        v197 = a9;
        v198 = v76;
        v199 = v39;
        v203 = v41;
        v192 = v94;
        v191 = v93;
        v190 = v92;
        v188 = v90;
        v189 = v91;
        v201 = a12;
        v202 = v179;
        v204 = v178;
        v205 = v177[0];
        v200 = v77;
        SIPommesDBOScoredTopicFieldIterator(a2, a3, &v95, &v117, &v181, &v180, a4, a5, buf);
        v141 = xmmword_1C2BFA880;
        v139 = xmmword_1C2BFA890;
        v137 = xmmword_1C2BFA8A0;
        v166 = xmmword_1C2BFA8B0;
        *(*(&v182 + 1) + 24) = -1;
        *&v144 = MEMORY[0x1E69E9820];
        *(&v144 + 1) = 0x40000000;
        v145 = ___ZL38SIPommesSpotlightSuggestionsProcessDBOP8DocStoreP14datastore_infoP6db_objP17_SuggestionsModelP11CITokenizerPPKjiPPKcP23si_completion_pattern_sSE_j16ci_rankingbits_sU13block_pointerFdPjPbSJ_E_block_invoke_2;
        v146 = &unk_1E8190C80;
        v152 = &v182;
        v153 = a7;
        v154 = a7 + 1;
        v155 = a8;
        v156 = a9;
        v157 = v76;
        v158 = v39;
        v162 = v41;
        v149 = v92;
        v150 = v93;
        v151 = v94;
        v147 = v90;
        v148 = v91;
        v160 = a12;
        v161 = v179;
        v163 = v178;
        v164 = v177[0];
        v159 = v77;
        SIPommesDBOScoredTopicFieldIterator(a2, a3, &v141, &v139, &v137, &v166, a4, a5, &v144);
      }

      LODWORD(v139) = 0;
      v181 = xmmword_1C2BFA750;
      SIPommesDBOGetIntValue(a2, a3, &v181, a4, a5, &v139);
      if (v139 >= 8)
      {
        v95 = xmmword_1C2BFA760;
        v180 = xmmword_1C2BFA770;
        *(*(&v182 + 1) + 24) = -1;
        *&v117 = MEMORY[0x1E69E9820];
        *(&v117 + 1) = 0x40000000;
        *&v118 = ___ZL38SIPommesSpotlightSuggestionsProcessDBOP8DocStoreP14datastore_infoP6db_objP17_SuggestionsModelP11CITokenizerPPKjiPPKcP23si_completion_pattern_sSE_j16ci_rankingbits_sU13block_pointerFdPjPbSJ_E_block_invoke_3;
        *(&v118 + 1) = &unk_1E8190CA8;
        v124 = &v182;
        v125 = a7;
        v126 = a7 + 1;
        v127 = a8;
        v128 = a9;
        v129 = v76;
        v130 = v39;
        v134 = v41;
        v121 = v92;
        v122 = v93;
        v123 = v94;
        v119 = v90;
        v120 = v91;
        v132 = a12;
        v133 = v179;
        v135 = v178;
        v136 = v177[0];
        v131 = v77;
        SIPommesDBOScoredTopicFieldIterator(a2, a3, &v95, &v180, 0, 0, a4, a5, &v117);
      }

      v180 = xmmword_1C2BFA780;
      v141 = xmmword_1C2BFA790;
      *(*(&v182 + 1) + 24) = -1;
      *&v95 = MEMORY[0x1E69E9820];
      *(&v95 + 1) = 0x40000000;
      *&v96 = ___ZL38SIPommesSpotlightSuggestionsProcessDBOP8DocStoreP14datastore_infoP6db_objP17_SuggestionsModelP11CITokenizerPPKjiPPKcP23si_completion_pattern_sSE_j16ci_rankingbits_sU13block_pointerFdPjPbSJ_E_block_invoke_4;
      *(&v96 + 1) = &unk_1E8190CD0;
      v104 = a7;
      v105 = a7 + 1;
      v106 = a8;
      v107 = a9;
      v108 = v76;
      v109 = *&v39;
      v113 = v41;
      v99 = v92;
      v100 = v93;
      v101 = v94;
      v97 = v90;
      v98 = v91;
      v111 = a12;
      v112 = v179;
      v114 = v178;
      v115 = v177[0];
      v110 = *&v77;
      v116 = v55;
      v102 = &v182;
      v103 = v38;
      SIPommesDBOScoredTopicFieldIterator(a2, a3, &v180, &v141, 0, 0, a4, a5, &v95);
      icu_ctx_release();
      _Block_object_dispose(&v182, 8);
    }
  }

LABEL_39:
  v53 = *MEMORY[0x1E69E9840];
}

uint64_t SIPommesSpotlightPhotosSuggestionsProcessDBO(uint64_t result, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, unsigned __int8 **a9, int a10, __int128 *a11, uint64_t a12)
{
  v101 = *MEMORY[0x1E69E9840];
  v96 = a5;
  v97 = a4;
  v95 = a8;
  if (a8)
  {
    v14 = *(a8 + 24);
    v94 = v14;
    if (a5)
    {
      if (v14)
      {
        v20 = a9;
        v93 = 0;
        if (a9)
        {
          v93 = *a9;
          v21 = v93;
          if (v93)
          {
            v22 = *v93;
            if (v22 == 106)
            {
              v22 = v93[1];
              v23 = 97;
            }

            else
            {
              v23 = 106;
            }

            v20 = v23 == v22;
          }

          else
          {
            v20 = 0;
          }
        }

        else
        {
          v21 = 0;
        }

        v55 = v20;
        v92 = v20;
        result = *(a8 + 16);
        if (result)
        {
          result = icu_search_context_create();
          v91 = result;
          if (result)
          {
            v52 = result;
            v90 = 0;
            v89 = 0;
            v24 = (*(a12 + 16))(a12, &v90, &v89, &v89 + 1);
            v88 = v24;
            v87 = a4 + 4;
            v86 = 0;
            v25 = 0x1EBF46000uLL;
            v53 = a2;
            v54 = a3;
            if (a7 > 18)
            {
              v29 = *(a6 + 152);
              if (v29)
              {
                v83[0] = 0;
                *&v82 = 0;
                if (db_get_field_by_id(a2, a3, v29, &v82, v83) || *v82 != 9)
                {
                  v30 = *__error();
                  v31 = _SILogForLogForCategory(14);
                  v32 = 2 * (dword_1EBF46B04 < 4);
                  if (os_log_type_enabled(v31, v32))
                  {
                    v33 = *v54;
                    *buf = 67109376;
                    *&buf[4] = 19;
                    LOWORD(v99) = 2048;
                    *(&v99 + 2) = v33;
                    _os_log_impl(&dword_1C278D000, v31, v32, "[Pommes_Suggestions]debug: Cannot get/process attribute %d for oid %lld.", buf, 0x12u);
                  }

                  *__error() = v30;
                  v28 = 0;
                  a2 = v53;
                  a3 = v54;
                }

                else
                {
                  v28 = *v83[0];
                  v86 = *v83[0];
                }

                v25 = 0x1EBF46000;
              }

              else
              {
                v28 = 0;
              }

              v85 = 0;
              if (a7 != 19)
              {
                v38 = *(a6 + 160);
                if (v38)
                {
                  v83[0] = 0;
                  *&v82 = 0;
                  if (!db_get_field_by_id(a2, a3, v38, &v82, v83) && *v82 == 10)
                  {
                    v37 = *v83[0];
                    v85 = *v83[0];
                    goto LABEL_40;
                  }

                  v39 = *__error();
                  v40 = _SILogForLogForCategory(14);
                  v41 = *(v25 + 2820);
                  v42 = v40;
                  v43 = 2 * (v41 < 4);
                  if (os_log_type_enabled(v40, v43))
                  {
                    v44 = *v54;
                    *buf = 67109376;
                    *&buf[4] = 20;
                    LOWORD(v99) = 2048;
                    *(&v99 + 2) = v44;
                    _os_log_impl(&dword_1C278D000, v42, v43, "[Pommes_Suggestions]debug: Cannot get/process attribute %d for oid %lld.", buf, 0x12u);
                  }

                  *__error() = v39;
                }

                v37 = 0;
LABEL_40:
                *buf = 0;
                *&v99 = buf;
                *(&v99 + 1) = 0x2000000000;
                v100 = -1;
                v83[0] = 0;
                v83[1] = v83;
                v83[2] = 0x2000000000;
                v84 = 0;
                v81 = xmmword_1C2BFA720;
                v82 = xmmword_1C2BFA710;
                v79 = xmmword_1C2BFA740;
                v80 = xmmword_1C2BFA730;
                v56[0] = MEMORY[0x1E69E9820];
                v56[1] = 0x40000000;
                v56[2] = ___ZL44SIPommesSpotlightPhotosSuggestionsProcessDBOP8DocStoreP14datastore_infoP6db_objP17_SuggestionsModelP11CITokenizerPPKjiPPKcP23si_completion_pattern_sSE_j16ci_rankingbits_sU13block_pointerFdPjPbSJ_E_block_invoke;
                v56[3] = &unk_1E8190C08;
                v64 = v37;
                v73 = v28;
                v62 = buf;
                v63 = v83;
                v65 = v14;
                v66 = a4;
                v67 = a4 + 4;
                v68 = a5;
                v69 = a8;
                v70 = v52;
                v71 = v21;
                v76 = v55;
                v45 = *a11;
                v46 = a11[1];
                v47 = a11[4];
                v60 = a11[3];
                v61 = v47;
                v48 = a11[2];
                v58 = v46;
                v59 = v48;
                v57 = v45;
                v74 = a10;
                v75 = v90;
                v77 = HIBYTE(v89);
                v78 = v89;
                v72 = v24;
                SIPommesDBOScoredTopicFieldIterator(v53, v54, &v82, &v81, &v80, &v79, a6, a7, v56);
                operator new();
              }

              v51 = a6;
            }

            else
            {
              v50 = *__error();
              v26 = _SILogForLogForCategory(14);
              v27 = 2 * (dword_1EBF46B04 < 4);
              if (os_log_type_enabled(v26, v27))
              {
                *buf = 67109376;
                *&buf[4] = 19;
                LOWORD(v99) = 1024;
                *(&v99 + 2) = a7;
                _os_log_impl(&dword_1C278D000, v26, v27, "%d index greater than fetched attribute count %d", buf, 0xEu);
              }

              v51 = a6;
              *__error() = v50;
              v85 = 0;
              v28 = 0;
            }

            v34 = *__error();
            v35 = _SILogForLogForCategory(14);
            v36 = 2 * (*(v25 + 2820) < 4);
            if (os_log_type_enabled(v35, v36))
            {
              *buf = 67109376;
              *&buf[4] = 20;
              LOWORD(v99) = 1024;
              *(&v99 + 2) = a7;
              _os_log_impl(&dword_1C278D000, v35, v36, "%d index greater than fetched attribute count %d", buf, 0xEu);
            }

            *__error() = v34;
            v37 = 0;
            a6 = v51;
            goto LABEL_40;
          }
        }
      }
    }
  }

  v49 = *MEMORY[0x1E69E9840];
  return result;
}
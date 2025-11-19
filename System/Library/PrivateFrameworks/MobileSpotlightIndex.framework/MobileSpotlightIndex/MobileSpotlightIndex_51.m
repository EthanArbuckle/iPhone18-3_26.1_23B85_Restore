void sub_1C2A2BF00(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x237]) < 0)
  {
    operator delete(STACK[0x220]);
  }

  _Unwind_Resume(a1);
}

void PhPopulateNodesFromLLMParse(const __CFDictionary *a1, void *a2, void *a3, char a4, query_node **a5, query_node **a6, void *a7, _BYTE *a8, uint64_t a9)
{
  v394 = *MEMORY[0x1E69E9840];
  v11 = *__error();
  v12 = _SILogForLogForCategory(19);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = a9;
    _os_log_impl(&dword_1C278D000, v12, OS_LOG_TYPE_DEFAULT, "%@ Using LLM QU output for creating ann filter and unigram node", buf, 0xCu);
  }

  *__error() = v11;
  theArray = getTokensInfoFromQueryUnderstanding(a1);
  Value = CFDictionaryGetValue(a1, @"attributedParse");
  v327 = [(NSAttributedString *)Value string];
  if (!v327 || ![(NSString *)v327 length])
  {
    v99 = *__error();
    v100 = _SILogForLogForCategory(19);
    if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = a9;
      _os_log_impl(&dword_1C278D000, v100, OS_LOG_TYPE_DEFAULT, "%@ Skipping adding nodes for the query (Reason: query is empty)", buf, 0xCu);
    }

    *__error() = v99;
    goto LABEL_455;
  }

  v321 = [MEMORY[0x1E695DF70] array];
  v318 = [MEMORY[0x1E695DF70] array];
  v313 = [MEMORY[0x1E695DF70] array];
  v315 = [MEMORY[0x1E695DF70] array];
  v13 = [(NSAttributedString *)Value length];
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = ___ZL30PhPopulateSomeFiltersFromParseP18NSAttributedStringP14NSMutableArrayIP8NSStringEPS1_IP7NSValueES5_S9__block_invoke;
  *&buf[24] = &unk_1E8199790;
  *&v386 = v321;
  *(&v386 + 1) = v318;
  v387 = v313;
  v388 = v315;
  [(NSAttributedString *)Value enumerateAttributesInRange:0 options:v13 usingBlock:0, buf];
  if ([v318 count])
  {
    v14 = *__error();
    v15 = _SILogForLogForCategory(19);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v318 count];
      *buf = 138412546;
      *&buf[4] = a9;
      *&buf[12] = 2048;
      *&buf[14] = v16;
      _os_log_impl(&dword_1C278D000, v15, OS_LOG_TYPE_DEFAULT, "%@ Populated %lu date filters from LLM QU parse", buf, 0x16u);
    }

    *__error() = v14;
  }

  if ([v315 count])
  {
    v17 = *__error();
    v18 = _SILogForLogForCategory(19);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v315 count];
      *buf = 138412546;
      *&buf[4] = a9;
      *&buf[12] = 2048;
      *&buf[14] = v19;
      _os_log_impl(&dword_1C278D000, v18, OS_LOG_TYPE_DEFAULT, "%@ Populated %lu people filters from LLM QU parse", buf, 0x16u);
    }

    *__error() = v17;
  }

  if (![v321 count])
  {
    if (CFDictionaryContainsKey(a1, @"attributedParses"))
    {
      v102 = CFDictionaryGetValue(a1, @"attributedParses");
      if ([v102 count] >= 2)
      {
        v103 = [v102 objectAtIndexedSubscript:1];
        v104 = [v103 length];
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = ___ZL29PhPopulateDateFilterFromParseP18NSAttributedStringP14NSMutableArrayIP8NSStringEPS1_IP7NSValueE_block_invoke;
        *&buf[24] = &unk_1E8199718;
        *&v386 = v321;
        *(&v386 + 1) = v318;
        [v103 enumerateAttributesInRange:0 options:v104 usingBlock:{0, buf}];
        if ([v318 count])
        {
          v105 = *__error();
          v106 = _SILogForLogForCategory(20);
          if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
          {
            v107 = [v318 count];
            *buf = 138412546;
            *&buf[4] = a9;
            *&buf[12] = 2048;
            *&buf[14] = v107;
            _os_log_impl(&dword_1C278D000, v106, OS_LOG_TYPE_DEFAULT, "%@ Populated %lu date filters from QP parse", buf, 0x16u);
          }

          *__error() = v105;
        }
      }
    }
  }

  PhRetrievalAttribs();
  v20 = *MEMORY[0x1E695E480];
  cf = CFCharacterSetCreateWithCharactersInString(v20, @"0123456789");
  v372 = 0uLL;
  v371 = 0;
  v369 = 0;
  v368 = 0;
  v370 = 0;
  Count = CFArrayGetCount(theArray);
  v22 = &unk_1C2BF9000;
  if (Count < 1)
  {
    v309 = -1;
    v101 = &unk_1C2BF9000;
LABEL_177:
    v108 = *__error();
    v109 = _SILogForLogForCategory(19);
    if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = a9;
      _os_log_impl(&dword_1C278D000, v109, OS_LOG_TYPE_DEFAULT, "%@ No search terms found, adding event tokens to retrieval tree", buf, 0xCu);
    }

    v110 = v101;
    v111 = v22;
    *__error() = v108;
    v112 = v368;
    v113 = v369;
    v114 = v369 - v368;
    if (v369 - v368 >= 1)
    {
      v115 = v372;
      if (*(&v372 + 1) - v372 >= v114)
      {
        if (v369 != v368)
        {
          v120 = 0;
          do
          {
            v121 = v112 + v120;
            v122 = &v115[v120 / 8];
            v123 = *(v112 + v120);
            v124 = *(v112 + v120 + 16);
            v122[4] = *(v112 + v120 + 32);
            *v122 = v123;
            *(v122 + 1) = v124;
            std::vector<int>::vector[abi:nn200100](&v115[v120 / 8 + 5], (v112 + v120 + 40));
            v125 = *(v112 + v120 + 64);
            v126 = *(v112 + v120 + 80);
            v122[12] = *(v112 + v120 + 96);
            *(v122 + 4) = v125;
            *(v122 + 5) = v126;
            std::unordered_set<std::string>::unordered_set(&v115[v120 / 8 + 13], v112 + v120 + 104);
            v120 += 144;
          }

          while (v121 + 144 != v113);
          v115 = (v115 + v120);
        }

        v311 = 0;
        *&v372 = v115;
        goto LABEL_198;
      }

      v116 = 0x8E38E38E38E38E39 * ((v372 - v371) >> 4);
      v117 = v116 - 0x71C71C71C71C71C7 * (v114 >> 4);
      if (v117 > 0x1C71C71C71C71C7)
      {
        std::vector<long long>::__throw_length_error[abi:nn200100]();
      }

      v118 = 0x1C71C71C71C71C72 * ((*(&v372 + 1) - v371) >> 4);
      if (v118 <= v117)
      {
        v118 = v116 - 0x71C71C71C71C71C7 * (v114 >> 4);
      }

      if (0x8E38E38E38E38E39 * ((*(&v372 + 1) - v371) >> 4) >= 0xE38E38E38E38E3)
      {
        v119 = 0x1C71C71C71C71C7;
      }

      else
      {
        v119 = v118;
      }

      *&v386 = &v371;
      if (v119)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<PhLLMTokenInfo>>(v119);
      }

      v127 = 0;
      v128 = 16 * ((v372 - v371) >> 4);
      *buf = 0;
      *&buf[8] = v128;
      *&buf[16] = v128;
      *&buf[24] = 0;
      do
      {
        v129 = v128 + v127;
        v130 = *(v112 + v127);
        v131 = *(v112 + v127 + 16);
        *(v129 + 32) = *(v112 + v127 + 32);
        *v129 = v130;
        *(v129 + 16) = v131;
        std::vector<int>::vector[abi:nn200100]((v128 + v127 + 40), (v112 + v127 + 40));
        v132 = *(v112 + v127 + 64);
        v133 = *(v112 + v127 + 80);
        *(v129 + 96) = *(v112 + v127 + 96);
        *(v129 + 64) = v132;
        *(v129 + 80) = v133;
        std::unordered_set<std::string>::unordered_set(v128 + v127 + 104, v112 + v127 + 104);
        v127 += 144;
      }

      while (v114 != v127);
      *&buf[16] = v128 + v114;
      std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<PhLLMTokenInfo>,PhLLMTokenInfo*>(v115, v372, v128 + v114);
      *&buf[16] += v372 - v115;
      *&v372 = v115;
      v134 = *&buf[8] + v371 - v115;
      std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<PhLLMTokenInfo>,PhLLMTokenInfo*>(v371, v115, v134);
      v135 = v371;
      v136 = *(&v372 + 1);
      v371 = v134;
      v372 = *&buf[16];
      *&buf[16] = v135;
      *&buf[24] = v136;
      *&buf[8] = v135;
      *buf = v135;
      std::__split_buffer<PhLLMTokenInfo>::~__split_buffer(buf);
    }

    v311 = 0;
LABEL_198:
    v22 = v111;
    v101 = v110;
    goto LABEL_199;
  }

  v303 = a3;
  v333 = 0;
  v23 = 0;
  v309 = -1;
  v311 = 1;
  v336 = Count;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v23);
    LemmaFromTokenInfo = getLemmaFromTokenInfo(ValueAtIndex);
    RawTextTokensFromTokenInfo = getRawTextTokensFromTokenInfo(ValueAtIndex);
    if ((isValidTokenInfo(ValueAtIndex) & 1) == 0)
    {
      v35 = *__error();
      v36 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *&buf[4] = a9;
        *&buf[12] = 2048;
        *&buf[14] = v23;
        _os_log_impl(&dword_1C278D000, v36, OS_LOG_TYPE_DEFAULT, "%@ Token %lu skipped (ERROR: token info is missing essential keys)", buf, 0x16u);
      }

      goto LABEL_33;
    }

    TokenFromTokenInfo = getTokenFromTokenInfo(ValueAtIndex);
    TokenIDsFromTokenInfo = getTokenIDsFromTokenInfo(ValueAtIndex);
    if (![TokenIDsFromTokenInfo count])
    {
      v35 = *__error();
      v37 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *&buf[4] = a9;
        *&buf[12] = 2048;
        *&buf[14] = v23;
        _os_log_impl(&dword_1C278D000, v37, OS_LOG_TYPE_DEFAULT, "%@ Token %lu skipped (ERROR: tokenIds is empty)", buf, 0x16u);
      }

LABEL_33:
      *__error() = v35;
      v38 = v336;
      goto LABEL_50;
    }

    v29 = [objc_msgSend(TokenIDsFromTokenInfo objectAtIndex:{0), "intValue"}];
    v30 = v29;
    v366 = 0;
    __p = 0;
    v31 = "Unknown";
    v367 = 0;
    if (v29 <= 0xD2)
    {
      v31 = off_1E8196D10[v29];
    }

    std::string::basic_string[abi:nn200100]<0>(&__p, v31);
    if (v30 == 74)
    {
      *a8 = 1;
    }

    v330 = v30 == 1;
    if (isLLMPhotosIgnoredArgId(v30))
    {
      v32 = *__error();
      v33 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        p_p = &__p;
        if (v367 < 0)
        {
          p_p = __p;
        }

        *buf = 138412802;
        *&buf[4] = a9;
        *&buf[12] = 2080;
        *&buf[14] = p_p;
        *&buf[22] = 2048;
        *&buf[24] = v23;
        _os_log_impl(&dword_1C278D000, v33, OS_LOG_TYPE_DEFAULT, "%@[%s] Token %lu skipped (Reason: It's a photos optional token)", buf, 0x20u);
      }
    }

    else if (isLLMInferredAppEntityTypeArgId(v30))
    {
      v32 = *__error();
      v39 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = &__p;
        if (v367 < 0)
        {
          v40 = __p;
        }

        *buf = 138412802;
        *&buf[4] = a9;
        *&buf[12] = 2080;
        *&buf[14] = v40;
        *&buf[22] = 2048;
        *&buf[24] = v23;
        _os_log_impl(&dword_1C278D000, v39, OS_LOG_TYPE_DEFAULT, "%@[%s] Token %lu skipped (Reason: It's an inferred app entity type token)", buf, 0x20u);
      }
    }

    else if (isIgnoredAppEntityStatusArgId(v30) || isBundleSpecificFilterAppEntityStatusArgId(v30))
    {
      v32 = *__error();
      v41 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v42 = &__p;
        if (v367 < 0)
        {
          v42 = __p;
        }

        *buf = 138412802;
        *&buf[4] = a9;
        *&buf[12] = 2080;
        *&buf[14] = v42;
        *&buf[22] = 2048;
        *&buf[24] = v23;
        _os_log_impl(&dword_1C278D000, v41, OS_LOG_TYPE_DEFAULT, "%@[%s] Token %lu skipped (Reason: It's an ignored or bundle specific app entity status token)", buf, 0x20u);
      }
    }

    else if (isLLMSourceTypeArgId(v30))
    {
      v32 = *__error();
      v43 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v44 = &__p;
        if (v367 < 0)
        {
          v44 = __p;
        }

        *buf = 138412802;
        *&buf[4] = a9;
        *&buf[12] = 2080;
        *&buf[14] = v44;
        *&buf[22] = 2048;
        *&buf[24] = v23;
        _os_log_impl(&dword_1C278D000, v43, OS_LOG_TYPE_DEFAULT, "%@[%s] Token %lu skipped (Reason: It's a source entity type token)", buf, 0x20u);
      }
    }

    else
    {
      if (!isLLMPhotosIgnoredArgId(v30))
      {
        std::string::basic_string[abi:nn200100]<0>(buf, -[__CFDictionary UTF8String](TokenFromTokenInfo, "UTF8String"));
        v45 = (isOptionalSearchTerm(v30, buf, theArray, v23, 0, 1, 0) & 1) != 0 || isLLMPhotosEventArgId(v30);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        v311 &= v45;
      }

      TokenRangeFromTokenInfo = getTokenRangeFromTokenInfo(ValueAtIndex);
      range = v47;
      v48 = TokenRangeFromTokenInfo;
      if (TokenRangeFromTokenInfo == 0x7FFFFFFFFFFFFFFFLL)
      {
        v32 = *__error();
        v49 = _SILogForLogForCategory(19);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          v50 = SHIBYTE(v367);
          v51 = __p;
          v395.location = 0x7FFFFFFFFFFFFFFFLL;
          v395.length = range;
          v52 = NSStringFromRange(v395);
          *buf = 138413058;
          v53 = &__p;
          if (v50 < 0)
          {
            v53 = v51;
          }

          *&buf[4] = a9;
          *&buf[12] = 2080;
          *&buf[14] = v53;
          *&buf[22] = 2048;
          *&buf[24] = v23;
          LOWORD(v386) = 2112;
          *(&v386 + 2) = v52;
          _os_log_impl(&dword_1C278D000, v49, OS_LOG_TYPE_DEFAULT, "%@[%s] Token %lu skipped (ERROR: invalid range: %@)", buf, 0x2Au);
        }
      }

      else if ([a2 count])
      {
        v54 = 0;
        while (1)
        {
          v399.location = [objc_msgSend(a2 objectAtIndexedSubscript:{v54), "rangeValue"}];
          v399.length = v55;
          v396.location = v48;
          v396.length = range;
          if (NSIntersectionRange(v396, v399).length)
          {
            break;
          }

          if (++v54 >= [a2 count])
          {
            goto LABEL_75;
          }
        }

        if ([v303 count])
        {
          v59 = 0;
          while (1)
          {
            v400.location = [objc_msgSend(v303 objectAtIndexedSubscript:{v59), "rangeValue"}];
            v400.length = v60;
            v397.location = v48;
            v397.length = range;
            if (NSIntersectionRange(v397, v400).length)
            {
              break;
            }

            if (++v59 >= [v303 count])
            {
              goto LABEL_160;
            }
          }

          ++*a7;
        }

LABEL_160:
        v32 = *__error();
        v97 = _SILogForLogForCategory(19);
        if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
        {
          v98 = &__p;
          if (v367 < 0)
          {
            v98 = __p;
          }

          *buf = 138412802;
          *&buf[4] = a9;
          *&buf[12] = 2080;
          *&buf[14] = v98;
          *&buf[22] = 2048;
          *&buf[24] = v23;
          _os_log_impl(&dword_1C278D000, v97, OS_LOG_TYPE_DEFAULT, "%@[%s] Token %lu skipped (Reason: It's a filter token)", buf, 0x20u);
        }
      }

      else
      {
LABEL_75:
        v56 = getTokenFromTokenInfo(ValueAtIndex);
        v351.__r_.__value_.__r.__words[0] = v56;
        if (v56)
        {
          *v364 = 0;
          tokenState(v56, cf, v305, &v364[1], v364);
          if (!v364[0])
          {
            v63 = *__error();
            v64 = _SILogForLogForCategory(19);
            if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              *&buf[4] = a9;
              *&buf[12] = 2048;
              *&buf[14] = v23;
              _os_log_impl(&dword_1C278D000, v64, OS_LOG_TYPE_DEFAULT, "%@ Token %lu added as new token", buf, 0x16u);
            }

            *__error() = v63;
            *&v393[8] = 0u;
            v390 = 0u;
            v389 = 0u;
            *&buf[16] = 0;
            *&buf[24] = -1;
            v386 = 0xFFFFFFFFFFFFFFFFLL;
            v387 = 0;
            v388 = 0;
            v391 = -1;
            v392 = 0u;
            *v393 = 0u;
            *&v393[16] = 1065353216;
            DWORD2(v390) = v30;
            *buf = v48;
            *&buf[8] = v48 + range;
            v38 = v336;
            if (LemmaFromTokenInfo && [(__CFDictionary *)LemmaFromTokenInfo length])
            {
              *&v390 = LemmaFromTokenInfo;
            }

            if ([(__CFDictionary *)RawTextTokensFromTokenInfo count])
            {
              *(&v389 + 1) = RawTextTokensFromTokenInfo;
            }

            v391 = v23;
            if (isLLMPhotosEventArgId(v30))
            {
              std::vector<PhLLMTokenInfo>::push_back[abi:nn200100](&v368, buf);
            }

            else
            {
              std::vector<PhLLMTokenInfo>::push_back[abi:nn200100](&v371, buf);
              v65 = _rangeIntersection(v48, range, v318);
              if (v65 != -1)
              {
                v66 = *__error();
                v67 = _SILogForLogForCategory(19);
                if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
                {
                  v68 = &__p;
                  if (v367 < 0)
                  {
                    v68 = __p;
                  }

                  *v381 = 138413058;
                  *&v381[4] = a9;
                  *&v381[12] = 2080;
                  *&v381[14] = v68;
                  *&v381[22] = 2048;
                  v382 = v23;
                  v383 = 2048;
                  v384 = v65;
                  _os_log_impl(&dword_1C278D000, v67, OS_LOG_TYPE_DEFAULT, "%@[%s] Token %lu has a date parse: %lu", v381, 0x2Au);
                }

                *__error() = v66;
                *(v372 - 120) = v65;
              }

              v69 = _rangeIntersection(v48, range, v315);
              if (v69 != -1)
              {
                v70 = *__error();
                v71 = _SILogForLogForCategory(19);
                if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
                {
                  v72 = &__p;
                  if (v367 < 0)
                  {
                    v72 = __p;
                  }

                  *v381 = 138413058;
                  *&v381[4] = a9;
                  *&v381[12] = 2080;
                  *&v381[14] = v72;
                  *&v381[22] = 2048;
                  v382 = v23;
                  v383 = 2048;
                  v384 = v69;
                  _os_log_impl(&dword_1C278D000, v71, OS_LOG_TYPE_DEFAULT, "%@[%s] Token %lu has a person parse: %lu", v381, 0x2Au);
                }

                *__error() = v70;
                *(v372 - 112) = v69;
              }

              rangeb = MEMORY[0x1E695DFD8];
              v301 = [MEMORY[0x1E696AD98] numberWithInt:70];
              v38 = v336;
              v300 = [MEMORY[0x1E696AD98] numberWithInt:41];
              v299 = [MEMORY[0x1E696AD98] numberWithInt:8];
              v298 = [MEMORY[0x1E696AD98] numberWithInt:21];
              v297 = [MEMORY[0x1E696AD98] numberWithInt:23];
              v296 = [MEMORY[0x1E696AD98] numberWithInt:31];
              v295 = [MEMORY[0x1E696AD98] numberWithInt:30];
              v294 = [MEMORY[0x1E696AD98] numberWithInt:187];
              v293 = [MEMORY[0x1E696AD98] numberWithInt:189];
              v292 = [MEMORY[0x1E696AD98] numberWithInt:184];
              v291 = [MEMORY[0x1E696AD98] numberWithInt:185];
              v290 = [MEMORY[0x1E696AD98] numberWithInt:186];
              v289 = [MEMORY[0x1E696AD98] numberWithInt:188];
              v288 = [MEMORY[0x1E696AD98] numberWithInt:190];
              v287 = [MEMORY[0x1E696AD98] numberWithInt:191];
              v286 = [MEMORY[0x1E696AD98] numberWithInt:192];
              v73 = [MEMORY[0x1E696AD98] numberWithInt:5];
              v74 = [MEMORY[0x1E696AD98] numberWithInt:64];
              v75 = [MEMORY[0x1E696AD98] numberWithInt:1];
              v76 = [MEMORY[0x1E696AD98] numberWithInt:65];
              v302 = [rangeb setWithObjects:{v301, v300, v299, v298, v297, v296, v295, v294, v293, v292, v291, v290, v289, v288, v287, v286, v73, v74, v75, v76, objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", 66), 0}];
              v77 = 0;
              while (v77 < [TokenIDsFromTokenInfo count])
              {
                v78 = [objc_msgSend(TokenIDsFromTokenInfo objectAtIndexedSubscript:{v77), "intValue"}];
                LODWORD(v376[0]) = v78;
                if (v78 && ![v302 containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v78)}])
                {
                  if (((v78 - 65) < 2 || v78 == 52) && v309 == -1)
                  {
                    v309 = -1 - 0x71C71C71C71C71C7 * ((v372 - v371) >> 4);
                  }
                }

                else
                {
                  std::vector<int>::push_back[abi:nn200100](v372 - 104, v376);
                }

                v79 = isLLMPersonArgId(v78);
                rangea = v77;
                v80 = v78 == 104 || v79;
                if (v80 == 1)
                {
                  GroundedNamesTokenFromTokenInfo = getGroundedNamesTokenFromTokenInfo(ValueAtIndex);
                  v82 = [GroundedNamesTokenFromTokenInfo count];
                  v83 = v371;
                  v84 = v372 - v371;
                  if (v82)
                  {
                    *(v372 - 80) = GroundedNamesTokenFromTokenInfo;
                  }

                  v85 = (v83 + v84 - 40);
                  if ([GroundedNamesTokenFromTokenInfo count])
                  {
                    v362 = 0u;
                    v363 = 0u;
                    v360 = 0u;
                    v361 = 0u;
                    v86 = [GroundedNamesTokenFromTokenInfo countByEnumeratingWithState:&v360 objects:v380 count:16];
                    if (v86)
                    {
                      v87 = *v361;
                      do
                      {
                        for (i = 0; i != v86; ++i)
                        {
                          if (*v361 != v87)
                          {
                            objc_enumerationMutation(GroundedNamesTokenFromTokenInfo);
                          }

                          std::string::basic_string[abi:nn200100]<0>(v381, [objc_msgSend(objc_msgSend(*(*(&v360 + 1) + 8 * i) objectAtIndexedSubscript:{0), "lowercaseString"), "UTF8String"}]);
                          v89 = peopleNameAlias(v381);
                          if (v381[23] < 0)
                          {
                            operator delete(*v381);
                          }

                          v90 = *(v89 + 23);
                          if ((v90 & 0x80u) != 0)
                          {
                            v90 = v89[1];
                          }

                          if (v90)
                          {
                            std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(v85, v89);
                          }
                        }

                        v86 = [GroundedNamesTokenFromTokenInfo countByEnumeratingWithState:&v360 objects:v380 count:16];
                      }

                      while (v86);
                    }
                  }

                  else
                  {
                    std::string::basic_string[abi:nn200100]<0>(v381, -[__CFDictionary UTF8String](TokenFromTokenInfo, "UTF8String"));
                    v91 = peopleNameAlias(v381);
                    if (v381[23] < 0)
                    {
                      operator delete(*v381);
                    }

                    v92 = *(v91 + 23);
                    if ((v92 & 0x80u) != 0)
                    {
                      v92 = v91[1];
                    }

                    if (v92)
                    {
                      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>((v83 + v84 - 40), v91);
                    }
                  }
                }

                v77 = rangea + 1;
                v38 = v336;
              }

              utf8QueryString(v381, &v351, 1, 0);
              v93 = isRelationWord(v381);
              if (v381[23] < 0)
              {
                operator delete(*v381);
              }

              if (v93)
              {
                v94 = *__error();
                v95 = _SILogForLogForCategory(19);
                if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
                {
                  v96 = &__p;
                  if (v367 < 0)
                  {
                    v96 = __p;
                  }

                  *v381 = 138412802;
                  *&v381[4] = a9;
                  *&v381[12] = 2080;
                  *&v381[14] = v96;
                  *&v381[22] = 2048;
                  v382 = v23;
                  _os_log_impl(&dword_1C278D000, v95, OS_LOG_TYPE_DEFAULT, "%@[%s] Token %lu is a relationship token as per vocab", v381, 0x20u);
                }

                *__error() = v94;
                std::vector<int>::push_back[abi:nn200100](v372 - 104, &QUPP_ARG_PERSON);
                v38 = v336;
              }
            }

            PhLLMTokenInfo::~PhLLMTokenInfo(buf);
            goto LABEL_47;
          }

          v32 = *__error();
          v57 = _SILogForLogForCategory(19);
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
          {
            v58 = &__p;
            if (v367 < 0)
            {
              v58 = __p;
            }

            *buf = 138412802;
            *&buf[4] = a9;
            *&buf[12] = 2080;
            *&buf[14] = v58;
            *&buf[22] = 2048;
            *&buf[24] = v23;
            _os_log_impl(&dword_1C278D000, v57, OS_LOG_TYPE_DEFAULT, "%@[%s] Token %lu skipped (Reason: It has only special chars)", buf, 0x20u);
          }
        }

        else
        {
          v32 = *__error();
          v61 = _SILogForLogForCategory(19);
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
          {
            v62 = &__p;
            if (v367 < 0)
            {
              v62 = __p;
            }

            *buf = 138412802;
            *&buf[4] = a9;
            *&buf[12] = 2080;
            *&buf[14] = v62;
            *&buf[22] = 2048;
            *&buf[24] = v23;
            _os_log_impl(&dword_1C278D000, v61, OS_LOG_TYPE_DEFAULT, "%@[%s] Token %lu skipped (ERROR: Token is null)", buf, 0x20u);
          }
        }
      }
    }

    *__error() = v32;
    v38 = v336;
LABEL_47:
    if (SHIBYTE(v367) < 0)
    {
      operator delete(__p);
    }

    v333 |= v330;
LABEL_50:
    ++v23;
  }

  while (v23 != v38);
  v22 = &unk_1C2BF9000;
  v101 = &unk_1C2BF9000;
  if ((v333 & 1) == 0)
  {
    goto LABEL_177;
  }

LABEL_199:
  k = v372;
  v138 = v371;
  if (v309 == -1)
  {
    v139 = 0x8E38E38E38E38E39 * ((v372 - v371) >> 4);
  }

  else
  {
    v139 = v309;
  }

  *a7 += 0x8E38E38E38E38E39 * ((v372 - v371) >> 4);
  if (k == v138)
  {
    goto LABEL_445;
  }

  v310 = 0;
  v140 = -1;
  v320 = v101[350];
  v316 = v22[353];
  v319 = k;
  while (2)
  {
    memset(v381, 0, sizeof(v381));
    v141 = *(v138 + 88);
    v142 = "Unknown";
    if (v141 <= 0xD2)
    {
      v142 = off_1E8196D10[v141];
    }

    std::string::basic_string[abi:nn200100]<0>(v381, v142);
    v143 = *v138;
    v144 = *(v138 + 8) - *v138;
    v145 = [[(NSString *)v327 substringWithRange:*v138 UTF8String];
    v146 = v140 + 1;
    if (!v145)
    {
      v149 = *__error();
      v152 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
      {
        v153 = v381;
        if ((v381[23] & 0x80u) != 0)
        {
          v153 = *v381;
        }

        *buf = v320;
        *&buf[4] = a9;
        *&buf[12] = 2080;
        *&buf[14] = v153;
        *&buf[22] = 2048;
        *&buf[24] = v146;
        _os_log_impl(&dword_1C278D000, v152, OS_LOG_TYPE_DEFAULT, "%@[%s] Search token %ld skipped (ERROR: UTF8 encoding of token failed)", buf, 0x20u);
      }

      goto LABEL_218;
    }

    __sa = v145;
    v147 = *(v138 + 40);
    if (v147 != *(v138 + 48))
    {
      v148 = *v147;
      if (isLLMInferredAppEntityTypeArgId(*v147))
      {
        v149 = *__error();
        v150 = _SILogForLogForCategory(19);
        if (os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT))
        {
          v151 = v381;
          if ((v381[23] & 0x80u) != 0)
          {
            v151 = *v381;
          }

          *buf = v316;
          *&buf[4] = a9;
          *&buf[12] = 2080;
          *&buf[14] = v151;
          *&buf[22] = 2048;
          *&buf[24] = v146;
          LOWORD(v386) = 1024;
          *(&v386 + 2) = v148;
          _os_log_impl(&dword_1C278D000, v150, OS_LOG_TYPE_DEFAULT, "%@[%s] Skipping token %ld with tokenID %d (it is inferred app entity)", buf, 0x26u);
        }

        goto LABEL_218;
      }

      if (isLLMAppEntityTypeArgId(v148))
      {
        goto LABEL_459;
      }

      v154 = *(v138 + 40);
      v155 = *(v138 + 48);
      if (v154 != v155)
      {
        while (*v154 != 70)
        {
          if (++v154 == v155)
          {
            goto LABEL_237;
          }
        }
      }

      if (v154 != v155)
      {
LABEL_459:
        v398.location = v143;
        v398.length = v144;
        LLMTokenDescription = getLLMTokenDescription(v148, v398, Value, 0);
        if (LLMTokenDescription)
        {
          v157 = *__error();
          v158 = _SILogForLogForCategory(19);
          if (os_log_type_enabled(v158, OS_LOG_TYPE_DEFAULT))
          {
            v159 = v381;
            if ((v381[23] & 0x80u) != 0)
            {
              v159 = *v381;
            }

            *buf = v316;
            *&buf[4] = a9;
            *&buf[12] = 2080;
            *&buf[14] = v159;
            *&buf[22] = 2048;
            *&buf[24] = v146;
            LOWORD(v386) = 1024;
            *(&v386 + 2) = v148;
            _os_log_impl(&dword_1C278D000, v158, OS_LOG_TYPE_DEFAULT, "%@[%s] Added app entity / media-type filter for token %ld with tokenID %d", buf, 0x26u);
          }

          *__error() = v157;
          if ([LLMTokenDescription length] && (v160 = objc_msgSend(LLMTokenDescription, "UTF8String")) != 0)
          {
            query_node_with_ann = db_make_query_node_with_ann(v160, 0);
          }

          else
          {
            query_node_with_ann = 0;
          }

          v310 = makeOrNode(v310, query_node_with_ann);
          goto LABEL_219;
        }
      }

LABEL_237:
      if (!(v311 & 1 | ((*a8 & 1) == 0)))
      {
        std::string::basic_string[abi:nn200100]<0>(buf, __sa);
        v162 = isOptionalSearchTerm(v148, buf, theArray, *(v138 + 96), 0, 1, 0);
        v163 = v162;
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
          if (v163)
          {
            goto LABEL_240;
          }
        }

        else if (v162)
        {
LABEL_240:
          v149 = *__error();
          v164 = _SILogForLogForCategory(19);
          if (os_log_type_enabled(v164, OS_LOG_TYPE_DEFAULT))
          {
            v165 = v381;
            if ((v381[23] & 0x80u) != 0)
            {
              v165 = *v381;
            }

            *buf = v320;
            *&buf[4] = a9;
            *&buf[12] = 2080;
            *&buf[14] = v165;
            *&buf[22] = 2048;
            *&buf[24] = v146;
            _os_log_impl(&dword_1C278D000, v164, OS_LOG_TYPE_DEFAULT, "%@[%s] Token %lu skipped (Reason: It's a trailing optional search token)", buf, 0x20u);
          }

LABEL_218:
          *__error() = v149;
          goto LABEL_219;
        }
      }
    }

    if (v140 != -2 - 0x71C71C71C71C71C7 * ((v372 - v371) >> 4))
    {
      v166 = *(v138 + 40);
      v167 = *(v138 + 48);
      if (v166 != v167)
      {
        while (*v166)
        {
          if (++v166 == v167)
          {
            goto LABEL_254;
          }
        }
      }

      if (v166 != v167)
      {
        goto LABEL_256;
      }

LABEL_254:
      std::string::basic_string[abi:nn200100]<0>(buf, __sa);
      v168 = isOptionalWord(buf);
      v169 = v168;
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
        if (v169)
        {
          goto LABEL_256;
        }
      }

      else if (v168)
      {
LABEL_256:
        v170 = *__error();
        v171 = _SILogForLogForCategory(19);
        if (os_log_type_enabled(v171, OS_LOG_TYPE_DEFAULT))
        {
          v172 = v381;
          if ((v381[23] & 0x80u) != 0)
          {
            v172 = *v381;
          }

          *buf = v320;
          *&buf[4] = a9;
          *&buf[12] = 2080;
          *&buf[14] = v172;
          *&buf[22] = 2048;
          *&buf[24] = v146;
          _os_log_impl(&dword_1C278D000, v171, OS_LOG_TYPE_DEFAULT, "%@[%s] Search token %ld skipped (Reason: It is optional)", buf, 0x20u);
        }

        *__error() = v170;
        --*a7;
        goto LABEL_219;
      }
    }

    v173 = 0;
    if (![*(v138 + 64) count] && *(v138 + 24) == -1)
    {
      v174 = *__error();
      v175 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v175, OS_LOG_TYPE_DEFAULT))
      {
        v176 = v381;
        if ((v381[23] & 0x80u) != 0)
        {
          v176 = *v381;
        }

        *buf = v320;
        *&buf[4] = a9;
        *&buf[12] = 2080;
        *&buf[14] = v176;
        *&buf[22] = 2048;
        *&buf[24] = v146;
        _os_log_impl(&dword_1C278D000, v175, OS_LOG_TYPE_DEFAULT, "%@[%s] Added Raw token match node for token %ld", buf, 0x20u);
      }

      *__error() = v174;
      v173 = PhAttribNodes(__sa, qword_1EBF484B0, *(v138 + 16), v146 >= v139);
    }

    v366 = 0;
    __p = 0;
    v367 = 0;
    std::string::basic_string[abi:nn200100]<0>(buf, __sa);
    getSynonym(&__p, buf);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v177 = HIBYTE(v367);
    if (v367 < 0)
    {
      v177 = v366;
    }

    if (v177)
    {
      v178 = *__error();
      v179 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v179, OS_LOG_TYPE_DEFAULT))
      {
        v180 = v381;
        if ((v381[23] & 0x80u) != 0)
        {
          v180 = *v381;
        }

        *buf = v320;
        *&buf[4] = a9;
        *&buf[12] = 2080;
        *&buf[14] = v180;
        *&buf[22] = 2048;
        *&buf[24] = v146;
        _os_log_impl(&dword_1C278D000, v179, OS_LOG_TYPE_DEFAULT, "%@[%s] Added a synonym for token %ld", buf, 0x20u);
      }

      *__error() = v178;
      if (v367 >= 0)
      {
        v181 = &__p;
      }

      else
      {
        v181 = __p;
      }

      v182 = PhAttribNodes(v181, qword_1EBF484B0, *(v138 + 16), v146 >= v139);
      v173 = makeOrNode(v173, v182);
    }

    v183 = *(v138 + 80);
    if (v183)
    {
      v184 = [v183 UTF8String];
      v185 = PhAttribNodes(v184, qword_1EBF484B0, *(v138 + 16), v146 >= v139);
      v173 = makeOrNode(v173, v185);
      v186 = *__error();
      v187 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v187, OS_LOG_TYPE_DEFAULT))
      {
        v188 = v381;
        if ((v381[23] & 0x80u) != 0)
        {
          v188 = *v381;
        }

        v189 = *(v138 + 80);
        *buf = v316;
        *&buf[4] = a9;
        *&buf[12] = 2080;
        *&buf[14] = v188;
        *&buf[22] = 2112;
        *&buf[24] = v189;
        LOWORD(v386) = 2048;
        *(&v386 + 2) = v146;
        _os_log_impl(&dword_1C278D000, v187, OS_LOG_TYPE_DEFAULT, "%@[%s] Added a lemma node: %@, of token %ld", buf, 0x2Au);
      }

      *__error() = v186;
    }

    if (*(v138 + 32) != -1)
    {
      v190 = [v313 objectAtIndexedSubscript:?];
      if ([v190 length] && (v191 = objc_msgSend(v190, "UTF8String")) != 0)
      {
        v192 = db_make_query_node_with_ann(v191, 0);
      }

      else
      {
        v192 = 0;
      }

      v173 = makeOrNode(v173, v192);
    }

    v193 = *(v138 + 40);
    v194 = *(v138 + 48);
    if (v193 != v194)
    {
      while (*v193 != 41)
      {
        if (++v193 == v194)
        {
          goto LABEL_300;
        }
      }
    }

    if (v193 != v194)
    {
      QueryNode = createQueryNode("kMDItemPhotosFavorited", "1", 0, 1, 0, 0.0, 0.0);
      v173 = makeOrNode(v173, QueryNode);
    }

LABEL_300:
    v196 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v358 = 0u;
    v359 = 0u;
    v356 = 0u;
    v357 = 0u;
    obj = *(v138 + 64);
    v197 = [obj countByEnumeratingWithState:&v356 objects:v379 count:16];
    if (v197)
    {
      v331 = *v357;
      do
      {
        v198 = 0;
        v334 = v197;
        do
        {
          if (*v357 != v331)
          {
            objc_enumerationMutation(obj);
          }

          v199 = *(*(&v356 + 1) + 8 * v198);
          v352 = 0u;
          v353 = 0u;
          v354 = 0u;
          v355 = 0u;
          v200 = [v199 countByEnumeratingWithState:&v352 objects:v378 count:16];
          v337 = v198;
          if (v200)
          {
            v201 = *v353;
            do
            {
              for (j = 0; j != v200; ++j)
              {
                if (*v353 != v201)
                {
                  objc_enumerationMutation(v199);
                }

                v203 = *(*(&v352 + 1) + 8 * j);
                if (([v196 containsObject:v203] & 1) == 0)
                {
                  v204 = [v203 UTF8String];
                  v205 = PhAttribNodes(v204, qword_1EBF484B0, *(v138 + 16), v146 >= v139);
                  v173 = makeOrNode(v173, v205);
                  [v196 addObject:v203];
                }
              }

              v200 = [v199 countByEnumeratingWithState:&v352 objects:v378 count:16];
            }

            while (v200);
          }

          v198 = v337 + 1;
        }

        while ((v337 + 1) != v334);
        v197 = [obj countByEnumeratingWithState:&v356 objects:v379 count:16];
      }

      while (v197);
    }

    if (*(v138 + 128))
    {
      v206 = *(v138 + 120);
      for (k = v319; v206; v206 = *v206)
      {
        memset(&v351, 0, sizeof(v351));
        if (*(v206 + 39) < 0)
        {
          std::string::__init_copy_ctor_external(&v351, v206[2], v206[3]);
        }

        else
        {
          v351 = *(v206 + 2);
        }

        if ((v351.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v207 = &v351;
        }

        else
        {
          v207 = v351.__r_.__value_.__r.__words[0];
        }

        std::string::basic_string[abi:nn200100]<0>(v376, "kMDItemTextContent");
        memset(buf, 0, sizeof(buf));
        LODWORD(v386) = 1065353216;
        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(buf, v376);
        v208 = PhAttribNodes(v207, *&buf[16], *(v138 + 16), v146 >= v139);
        v173 = makeOrNode(v173, v208);
        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(*&buf[16]);
        v209 = *buf;
        *buf = 0;
        if (v209)
        {
          operator delete(v209);
        }

        if (v377 < 0)
        {
          operator delete(v376[0]);
        }

        if (SHIBYTE(v351.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v351.__r_.__value_.__l.__data_);
        }
      }
    }

    else
    {
      k = v319;
    }

    if (*(v138 + 24) != -1)
    {
      v210 = *__error();
      v211 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v211, OS_LOG_TYPE_DEFAULT))
      {
        v212 = v381;
        if ((v381[23] & 0x80u) != 0)
        {
          v212 = *v381;
        }

        *buf = v320;
        *&buf[4] = a9;
        *&buf[12] = 2080;
        *&buf[14] = v212;
        *&buf[22] = 2048;
        *&buf[24] = v146;
        _os_log_impl(&dword_1C278D000, v211, OS_LOG_TYPE_DEFAULT, "%@[%s] Added raw token node for token %ld using sub tokens", buf, 0x20u);
      }

      *__error() = v210;
      v349 = 0u;
      v350 = 0u;
      v347 = 0u;
      v348 = 0u;
      v213 = *(v138 + 72);
      v214 = 0;
      v215 = [v213 countByEnumeratingWithState:&v347 objects:v375 count:16];
      if (v215)
      {
        v216 = *v348;
        do
        {
          for (m = 0; m != v215; ++m)
          {
            if (*v348 != v216)
            {
              objc_enumerationMutation(v213);
            }

            v218 = [*(*(&v347 + 1) + 8 * m) UTF8String];
            v219 = PhAttribNodes(v218, qword_1EBF484B0, *(v138 + 16), v146 >= v139);
            v214 = makeAndNode(v214, v219);
          }

          v215 = [v213 countByEnumeratingWithState:&v347 objects:v375 count:16];
        }

        while (v215);
      }

      k = v319;
      v220 = [v321 objectAtIndexedSubscript:*(v138 + 24)];
      v221 = [v220 length];
      if (v221)
      {
        v221 = [v220 UTF8String];
        if (v221)
        {
          v221 = db_make_query_node_with_ann(v221, 0);
        }
      }

      v222 = processNode(v221);
      v223 = makeOrNode(v173, v214);
      v173 = makeOrNode(v223, v222);
    }

    *a6 = makeAndNode(*a6, v173);
    if ((a4 & 1) == 0)
    {
      if (*(v138 + 24) == -1)
      {
        goto LABEL_358;
      }

      v224 = *__error();
      v225 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v225, OS_LOG_TYPE_DEFAULT))
      {
        v226 = v381;
        if ((v381[23] & 0x80u) != 0)
        {
          v226 = *v381;
        }

        *buf = v320;
        *&buf[4] = a9;
        *&buf[12] = 2080;
        *&buf[14] = v226;
        *&buf[22] = 2048;
        *&buf[24] = v146;
        _os_log_impl(&dword_1C278D000, v225, OS_LOG_TYPE_DEFAULT, "%@[%s] {ANN} Added date filter for token %lu", buf, 0x20u);
      }

      *__error() = v224;
      v227 = [v321 objectAtIndexedSubscript:*(v138 + 24)];
      if ([v227 length] && (v228 = objc_msgSend(v227, "UTF8String")) != 0)
      {
        v229 = db_make_query_node_with_ann(v228, 0);
      }

      else
      {
LABEL_358:
        v229 = 0;
      }

      if (*(v138 + 32) != -1)
      {
        v230 = *__error();
        v231 = _SILogForLogForCategory(19);
        if (os_log_type_enabled(v231, OS_LOG_TYPE_DEFAULT))
        {
          v232 = v381;
          if ((v381[23] & 0x80u) != 0)
          {
            v232 = *v381;
          }

          *buf = v320;
          *&buf[4] = a9;
          *&buf[12] = 2080;
          *&buf[14] = v232;
          *&buf[22] = 2048;
          *&buf[24] = v146;
          _os_log_impl(&dword_1C278D000, v231, OS_LOG_TYPE_DEFAULT, "%@[%s] {ANN} Added person identifier filter for token %lu", buf, 0x20u);
        }

        *__error() = v230;
        v233 = [v313 objectAtIndexedSubscript:*(v138 + 32)];
        if ([v233 length] && (v234 = objc_msgSend(v233, "UTF8String")) != 0)
        {
          v235 = db_make_query_node_with_ann(v234, 0);
        }

        else
        {
          v235 = 0;
        }

        v229 = makeOrNode(v229, v235);
        if ([*(v138 + 64) count])
        {
          v345 = 0u;
          v346 = 0u;
          v343 = 0u;
          v344 = 0u;
          v236 = [v196 countByEnumeratingWithState:&v343 objects:v374 count:16];
          if (v236)
          {
            v237 = *v344;
            do
            {
              for (n = 0; n != v236; ++n)
              {
                if (*v344 != v237)
                {
                  objc_enumerationMutation(v196);
                }

                v239 = createQueryNode("kMDItemTextContent", [*(*(&v343 + 1) + 8 * n) UTF8String], 112, 1, 0, 0.0, 0.0);
                v229 = makeOrNode(v229, v239);
              }

              v236 = [v196 countByEnumeratingWithState:&v343 objects:v374 count:16];
            }

            while (v236);
          }
        }

        else
        {
          v240 = createQueryNode("kMDItemTextContent", __sa, 112, 1, 0, 0.0, 0.0);
          v229 = makeOrNode(v229, v240);
        }

        if (*(v138 + 128))
        {
          for (ii = *(v138 + 120); ii; ii = *ii)
          {
            memset(buf, 0, 24);
            if (*(ii + 39) < 0)
            {
              std::string::__init_copy_ctor_external(buf, ii[2], ii[3]);
            }

            else
            {
              *buf = *(ii + 1);
              *&buf[16] = ii[4];
            }

            if (buf[23] >= 0)
            {
              v242 = buf;
            }

            else
            {
              v242 = *buf;
            }

            v243 = createQueryNode("kMDItemTextContent", v242, 112, 1, 0, 0.0, 0.0);
            v229 = makeOrNode(v229, v243);
            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }
          }
        }
      }

      v244 = *(v138 + 40);
      v245 = *(v138 + 48);
      v246 = v244;
      if (v244 != v245)
      {
        v246 = *(v138 + 40);
        while (*v246 != 8)
        {
          if (++v246 == v245)
          {
            goto LABEL_407;
          }
        }
      }

      if (v246 != v245)
      {
        v247 = *__error();
        v248 = _SILogForLogForCategory(19);
        if (os_log_type_enabled(v248, OS_LOG_TYPE_DEFAULT))
        {
          v249 = v381;
          if ((v381[23] & 0x80u) != 0)
          {
            v249 = *v381;
          }

          *buf = v320;
          *&buf[4] = a9;
          *&buf[12] = 2080;
          *&buf[14] = v249;
          *&buf[22] = 2048;
          *&buf[24] = v146;
          _os_log_impl(&dword_1C278D000, v248, OS_LOG_TYPE_DEFAULT, "%@[%s] {ANN} Added holiday/season filter for token %lu", buf, 0x20u);
        }

        *__error() = v247;
        v341 = 0u;
        v342 = 0u;
        v339 = 0u;
        v340 = 0u;
        v335 = *(v138 + 72);
        v250 = [v335 countByEnumeratingWithState:&v339 objects:v373 count:16];
        v332 = v229;
        v251 = 0;
        v252 = 0;
        if (v250)
        {
          v338 = *v340;
          do
          {
            for (jj = 0; jj != v250; ++jj)
            {
              if (*v340 != v338)
              {
                objc_enumerationMutation(v335);
              }

              v254 = *(*(&v339 + 1) + 8 * jj);
              v255 = createQueryNode("kMDItemPhotosHolidays", [v254 UTF8String], 112, 1, 0, 0.0, 0.0);
              v256 = createQueryNode("kMDItemPhotosSeasons", [v254 UTF8String], 112, 1, 0, 0.0, 0.0);
              v251 = makeAndNode(v251, v255);
              v252 = makeAndNode(v252, v256);
            }

            v250 = [v335 countByEnumeratingWithState:&v339 objects:v373 count:16];
          }

          while (v250);
        }

        v257 = makeOrNode(v332, v251);
        v229 = makeOrNode(v257, v252);
        v244 = *(v138 + 40);
        v245 = *(v138 + 48);
        k = v319;
      }

LABEL_407:
      if (v244 == v245)
      {
        goto LABEL_419;
      }

      v258 = v244;
      while (*v258 != 5)
      {
        if (++v258 == v245)
        {
          goto LABEL_419;
        }
      }

      if (v258 != v245)
      {
        v259 = *__error();
        v260 = _SILogForLogForCategory(19);
        if (os_log_type_enabled(v260, OS_LOG_TYPE_DEFAULT))
        {
          v261 = v381;
          if ((v381[23] & 0x80u) != 0)
          {
            v261 = *v381;
          }

          *buf = v320;
          *&buf[4] = a9;
          *&buf[12] = 2080;
          *&buf[14] = v261;
          *&buf[22] = 2048;
          *&buf[24] = v146;
          _os_log_impl(&dword_1C278D000, v260, OS_LOG_TYPE_DEFAULT, "%@[%s] {ANN} Added location filter for token %lu", buf, 0x20u);
        }

        *__error() = v259;
        v262 = createQueryNode("kMDItemPhotosLocationKeywords", __sa, 112, 1, 0, 0.0, 0.0);
        v229 = makeOrNode(v229, v262);
        v244 = *(v138 + 40);
        v245 = *(v138 + 48);
      }

LABEL_419:
      while (v244 != v245)
      {
        if (*v244 == 41)
        {
          if (v244 != v245)
          {
            v263 = *__error();
            v264 = _SILogForLogForCategory(19);
            if (os_log_type_enabled(v264, OS_LOG_TYPE_DEFAULT))
            {
              v265 = v381;
              if ((v381[23] & 0x80u) != 0)
              {
                v265 = *v381;
              }

              *buf = v320;
              *&buf[4] = a9;
              *&buf[12] = 2080;
              *&buf[14] = v265;
              *&buf[22] = 2048;
              *&buf[24] = v146;
              _os_log_impl(&dword_1C278D000, v264, OS_LOG_TYPE_DEFAULT, "%@[%s] {ANN} Added favorited filter for token %lu", buf, 0x20u);
            }

            *__error() = v263;
            v266 = createQueryNode("kMDItemPhotosFavorited", "1", 0, 1, 0, 0.0, 0.0);
            v229 = makeOrNode(v229, v266);
          }

          break;
        }

        ++v244;
      }

      if (*(v138 + 32) == -1)
      {
        v267 = *(v138 + 40);
        v268 = *(v138 + 48);
        if (v267 != v268)
        {
          while (*v267 != 64)
          {
            if (++v267 == v268)
            {
              goto LABEL_438;
            }
          }
        }

        if (v267 != v268)
        {
          v269 = *__error();
          v270 = _SILogForLogForCategory(19);
          if (os_log_type_enabled(v270, OS_LOG_TYPE_DEFAULT))
          {
            v271 = v381;
            if ((v381[23] & 0x80u) != 0)
            {
              v271 = *v381;
            }

            *buf = v320;
            *&buf[4] = a9;
            *&buf[12] = 2080;
            *&buf[14] = v271;
            *&buf[22] = 2048;
            *&buf[24] = v146;
            _os_log_impl(&dword_1C278D000, v270, OS_LOG_TYPE_DEFAULT, "%@[%s] {ANN} Added person name/alternative filter for token %lu", buf, 0x20u);
          }

          *__error() = v269;
          v272 = createQueryNode("kMDItemPhotosPeopleNames", __sa, 112, 1, 0, 0.0, 0.0);
          v273 = makeOrNode(v229, v272);
          v274 = createQueryNode("kMDItemPhotosPeopleNamesAlternatives", __sa, 112, 1, 0, 0.0, 0.0);
          v229 = makeOrNode(v273, v274);
        }
      }

LABEL_438:
      if (v229)
      {
        *a5 = makeAndNode(*a5, v229);
        if (*(v138 + 24) == -1)
        {
          --*a7;
        }
      }
    }

    if (SHIBYTE(v367) < 0)
    {
      operator delete(__p);
    }

LABEL_219:
    if (v381[23] < 0)
    {
      operator delete(*v381);
    }

    v138 += 144;
    v140 = v146;
    if (v138 != k)
    {
      continue;
    }

    break;
  }

  if (v310)
  {
    *a6 = makeAndNode(*a6, v310);
    v275 = *a5;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = __db_query_tree_apply_block_block_invoke;
    *&buf[24] = &unk_1E8198ED0;
    *&v386 = &__block_literal_global_21_15415;
    db_query_tree_apply_block_with_meta(v310, buf, &__block_literal_global_25_15416);
    *a5 = makeAndNode(v275, v276);
  }

LABEL_445:
  v277 = v372;
  v278 = v371;
  v279 = v371;
  if (v372 != v371)
  {
    do
    {
      v277 -= 144;
      std::allocator<PhLLMTokenInfo>::destroy[abi:nn200100](v277);
    }

    while (v277 != v278);
    v279 = v371;
  }

  *&v372 = v278;
  v280 = v278 - v279;
  if (*(&v372 + 1) - v279 > (v278 - v279))
  {
    *&v386 = &v371;
    if (v278 != v279)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<PhLLMTokenInfo>>(0x8E38E38E38E38E39 * (v280 >> 4));
    }

    v281 = 16 * (v280 >> 4);
    *buf = 0;
    *&buf[8] = v281;
    *&buf[16] = v281;
    *&buf[24] = 0;
    if (0x8E38E38E38E38E39 * ((*(&v372 + 1) - v279) >> 4))
    {
      v282 = v281 + v279 - v372;
      std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<PhLLMTokenInfo>,PhLLMTokenInfo*>(v279, v372, v282);
      v283 = v371;
      v284 = *(&v372 + 1);
      v371 = v282;
      v372 = *&buf[16];
      *&buf[16] = v283;
      *&buf[24] = v284;
      *&buf[8] = v283;
      *buf = v283;
    }

    std::__split_buffer<PhLLMTokenInfo>::~__split_buffer(buf);
  }

  CFRelease(cf);
  CFRelease(v305);
  *buf = &v368;
  std::vector<PhLLMTokenInfo>::__destroy_vector::operator()[abi:nn200100](buf);
  *buf = &v371;
  std::vector<PhLLMTokenInfo>::__destroy_vector::operator()[abi:nn200100](buf);
LABEL_455:
  v285 = *MEMORY[0x1E69E9840];
}

void sub_1C2A2EE2C(_Unwind_Exception *a1)
{
  PhLLMTokenInfo::~PhLLMTokenInfo(&STACK[0x770]);
  if (SLOBYTE(STACK[0x3F7]) < 0)
  {
    operator delete(STACK[0x3E0]);
  }

  STACK[0x740] = &STACK[0x3F8];
  std::vector<PhLLMTokenInfo>::__destroy_vector::operator()[abi:nn200100](&STACK[0x740]);
  STACK[0x740] = &STACK[0x410];
  std::vector<PhLLMTokenInfo>::__destroy_vector::operator()[abi:nn200100](&STACK[0x740]);
  _Unwind_Resume(a1);
}

void PhRetrievalAttribs(void)
{
  {
    PhRetrievalAttribs(void)::_retrievalAttribs = 0u;
    *&qword_1EBF484B0 = 0u;
    dword_1EBF484C0 = 1065353216;
  }

  if (PhRetrievalAttribs(void)::onceToken != -1)
  {

    dispatch_once(&PhRetrievalAttribs(void)::onceToken, &__block_literal_global_248);
  }
}

void ___ZL18PhRetrievalAttribsv_block_invoke()
{
  v14.__r_.__value_.__r.__words[0] = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:nn200100]<0>(&__str, "*");
  std::string::basic_string[abi:nn200100]<0>(v3, "kMDItemTextContent");
  std::string::basic_string[abi:nn200100]<0>(v4, "kMDItemCardAddress");
  std::string::basic_string[abi:nn200100]<0>(v5, "kMDItemCardCategory");
  std::string::basic_string[abi:nn200100]<0>(v6, "kMDItemCardCountry");
  std::string::basic_string[abi:nn200100]<0>(v7, "kMDItemCardGroupNumber");
  std::string::basic_string[abi:nn200100]<0>(v8, "kMDItemCardIssuedBy");
  std::string::basic_string[abi:nn200100]<0>(v9, "kMDItemCardNumber");
  std::string::basic_string[abi:nn200100]<0>(v10, "kMDItemCardPlaceOfBirth");
  std::string::basic_string[abi:nn200100]<0>(v11, "kMDItemCardRegion");
  std::string::basic_string[abi:nn200100]<0>(v12, "kMDItemCardSubType");
  std::string::basic_string[abi:nn200100]<0>(v13, "kMDItemCardUnderName");
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_unique<std::string const*>(&PhRetrievalAttribs(void)::_retrievalAttribs, &__str, &v14);
  v0 = 288;
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

void sub_1C2A2F320(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  v12 = (v10 + 287);
  v13 = -288;
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

uint64_t ___ZL30PhPopulateSomeFiltersFromParseP18NSAttributedStringP14NSMutableArrayIP8NSStringEPS1_IP7NSValueES5_S9__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = [a2 count];
  if (!result)
  {
    return result;
  }

  if ([a2 objectForKeyedSubscript:@"kQPDate"] && objc_msgSend(a2, "objectForKeyedSubscript:", @"kQPDescription"))
  {
    v9 = 40;
    v10 = 32;
LABEL_9:
    [*(a1 + v10) addObject:{objc_msgSend(a2, "objectForKeyedSubscript:", @"kQPDescription"}];
    v11 = *(a1 + v9);
    v12 = [MEMORY[0x1E696B098] valueWithRange:{a3, a4}];

    return [v11 addObject:v12];
  }

  if ([a2 objectForKeyedSubscript:@"kQPGroundedPerson"] || (result = objc_msgSend(a2, "objectForKeyedSubscript:", @"kQPTaggedPerson")) != 0)
  {
    result = [a2 objectForKeyedSubscript:@"kQPDescription"];
    if (result)
    {
      v9 = 56;
      v10 = 48;
      goto LABEL_9;
    }
  }

  return result;
}

uint64_t ___ZL29PhPopulateDateFilterFromParseP18NSAttributedStringP14NSMutableArrayIP8NSStringEPS1_IP7NSValueE_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = [a2 count];
  if (result)
  {
    result = [a2 objectForKeyedSubscript:@"kQPDate"];
    if (result)
    {
      result = [a2 objectForKeyedSubscript:@"kQPDescription"];
      if (result)
      {
        [*(a1 + 32) addObject:{objc_msgSend(a2, "objectForKeyedSubscript:", @"kQPDescription"}];
        v9 = *(a1 + 40);
        v10 = [MEMORY[0x1E696B098] valueWithRange:{a3, a4}];

        return [v9 addObject:v10];
      }
    }
  }

  return result;
}

uint64_t tokenState(CFStringRef theString, const __CFCharacterSet *a2, const __CFCharacterSet *a3, BOOL *a4, BOOL *a5)
{
  v10 = 0;
  *a4 = 1;
  *a5 = 1;
  while (1)
  {
    result = CFStringGetLength(theString);
    if (v10 >= result)
    {
      break;
    }

    CharacterAtIndex = CFStringGetCharacterAtIndex(theString, v10);
    if (CFCharacterSetIsCharacterMember(a2, CharacterAtIndex))
    {
      *a5 = 0;
    }

    else
    {
      *a4 = 0;
      result = CFCharacterSetIsCharacterMember(a3, CharacterAtIndex);
      if (!result)
      {
        *a5 = 0;
        return result;
      }
    }

    ++v10;
  }

  return result;
}

uint64_t std::vector<PhLLMTokenInfo>::push_back[abi:nn200100](uint64_t *a1, __int128 *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v12 = 0x8E38E38E38E38E39 * ((v5 - *a1) >> 4);
    if (v12 + 1 > 0x1C71C71C71C71C7)
    {
      std::vector<long long>::__throw_length_error[abi:nn200100]();
    }

    v13 = 0x8E38E38E38E38E39 * ((v4 - *a1) >> 4);
    v14 = 2 * v13;
    if (2 * v13 <= v12 + 1)
    {
      v14 = v12 + 1;
    }

    if (v13 >= 0xE38E38E38E38E3)
    {
      v15 = 0x1C71C71C71C71C7;
    }

    else
    {
      v15 = v14;
    }

    v29 = a1;
    if (v15)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<PhLLMTokenInfo>>(v15);
    }

    v16 = 144 * v12;
    v26 = 0;
    v27 = v16;
    v28 = v16;
    v17 = *a2;
    v18 = a2[1];
    *(v16 + 32) = *(a2 + 4);
    *v16 = v17;
    *(v16 + 16) = v18;
    std::vector<int>::vector[abi:nn200100]((v16 + 40), a2 + 5);
    v19 = a2[4];
    v20 = a2[5];
    *(v16 + 96) = *(a2 + 12);
    *(v16 + 64) = v19;
    *(v16 + 80) = v20;
    std::unordered_set<std::string>::unordered_set(v16 + 104, a2 + 104);
    *&v28 = v28 + 144;
    v21 = a1[1];
    v22 = v27 + *a1 - v21;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<PhLLMTokenInfo>,PhLLMTokenInfo*>(*a1, v21, v22);
    v23 = *a1;
    *a1 = v22;
    v24 = a1[2];
    v25 = v28;
    *(a1 + 1) = v28;
    *&v28 = v23;
    *(&v28 + 1) = v24;
    v26 = v23;
    v27 = v23;
    result = std::__split_buffer<PhLLMTokenInfo>::~__split_buffer(&v26);
    v11 = v25;
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
    *(v5 + 32) = *(a2 + 4);
    *v5 = v6;
    *(v5 + 16) = v7;
    std::vector<int>::vector[abi:nn200100]((v5 + 40), a2 + 5);
    v8 = a2[4];
    v9 = a2[5];
    *(v5 + 96) = *(a2 + 12);
    *(v5 + 64) = v8;
    *(v5 + 80) = v9;
    result = std::unordered_set<std::string>::unordered_set(v5 + 104, a2 + 104);
    v11 = v5 + 144;
    a1[1] = v5 + 144;
  }

  a1[1] = v11;
  return result;
}

void sub_1C2A2F7C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  v6 = *(v4 + 40);
  if (v6)
  {
    *(v4 + 48) = v6;
    operator delete(v6);
  }

  std::__split_buffer<PhLLMTokenInfo>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t _rangeIntersection(NSUInteger a1, NSUInteger a2, void *a3)
{
  if (![a3 count])
  {
    return -1;
  }

  v6 = 0;
  while (1)
  {
    v10.location = [objc_msgSend(a3 objectAtIndexedSubscript:{v6), "rangeValue"}];
    v10.length = v7;
    v9.location = a1;
    v9.length = a2;
    if (NSIntersectionRange(v9, v10).length)
    {
      break;
    }

    if (++v6 >= [a3 count])
    {
      return -1;
    }
  }

  return v6;
}

void std::vector<int>::push_back[abi:nn200100](uint64_t a1, _DWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<long long>::__throw_length_error[abi:nn200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<int>>(v11);
    }

    v12 = (4 * (v8 >> 2));
    *v12 = *a2;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    v13 = *a1;
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

void PhLLMTokenInfo::~PhLLMTokenInfo(PhLLMTokenInfo *this)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 104);
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }
}

query_node *PhAttribNodes(char *__s, uint64_t *a2, int a3, char a4)
{
  v5 = a2;
  v7 = 0;
  if (!a3)
  {
    while (v5)
    {
      v11 = (v5 + 2);
      if (*(v5 + 39) < 0)
      {
        v11 = *v11;
      }

      QueryNode = createQueryNode(v11, __s, 112, 1, 0, 0.0, 0.0);
      v7 = makeOrNode(v7, QueryNode);
      v5 = *v5;
    }

    if (a4)
    {
      v10 = 0;
      goto LABEL_14;
    }

    return v7;
  }

  if (a2)
  {
    do
    {
      v8 = (v5 + 2);
      if (*(v5 + 39) < 0)
      {
        v8 = *v8;
      }

      v9 = createQueryNode(v8, __s, 112, 1, -1, 0.0, 0.0);
      v7 = makeOrNode(v7, v9);
      v5 = *v5;
    }

    while (v5);
  }

  if ((a4 & 1) == 0)
  {
    return v7;
  }

  v10 = -1;
LABEL_14:
  v13 = createQueryNode("kMDItemPhotosSharedLibraryContributorsNames", __s, 112, 1, v10, 0.0, 0.0);
  v14 = makeOrNode(v7, v13);
  v15 = createQueryNode("kMDItemPhotosSharedLibraryContributorsNamesAlternatives", __s, 112, 1, v10, 0.0, 0.0);

  return makeOrNode(v14, v15);
}

query_node *processNode(query_node *a1)
{
  v1 = a1;
  var0 = a1->var0;
  var1 = v1->var1;
  if (var0 | var1)
  {
    v4 = processNode(var0);
    v5 = processNode(var1);
    var6 = v1->var6;
    if (var6 == 2)
    {
      v7 = makeAndNode(v4, v5);
    }

    else
    {
      if (var6 != 1)
      {
        db_free_query_node(v4);
        db_free_query_node(v5);
        v19 = 0;
        goto LABEL_22;
      }

      v7 = makeOrNode(v4, v5);
    }

    v19 = v7;
LABEL_22:
    v1->var0 = 0;
    v1->var1 = 0;
    v20 = MEMORY[0x1E69E9820];
    v21 = 0x40000000;
    v22 = __db_query_tree_apply_block_block_invoke;
    v23 = &unk_1E8198ED0;
    v24 = &__block_literal_global_174;
    db_query_tree_apply_block_with_meta(v1, &v20, 0);
    return v19;
  }

  var2 = v1->var2;
  if (!var2 || !*var2 || strcmp(*var2, "kMDItemContentCreationDate"))
  {
    return v1;
  }

  v20 = MEMORY[0x1E69E9820];
  v21 = 0x40000000;
  v22 = __db_query_tree_apply_block_block_invoke;
  v23 = &unk_1E8198ED0;
  v24 = &__block_literal_global_21_15415;
  db_query_tree_apply_block_with_meta(v1, &v20, &__block_literal_global_25_15416);
  v10 = v9;
  v20 = MEMORY[0x1E69E9820];
  v21 = 0x40000000;
  v22 = __db_query_tree_apply_block_block_invoke;
  v23 = &unk_1E8198ED0;
  v24 = &__block_literal_global_21_15415;
  db_query_tree_apply_block_with_meta(v1, &v20, &__block_literal_global_25_15416);
  v12 = v11;
  v20 = MEMORY[0x1E69E9820];
  v21 = 0x40000000;
  v22 = __db_query_tree_apply_block_block_invoke;
  v23 = &unk_1E8198ED0;
  v24 = &__block_literal_global_21_15415;
  db_query_tree_apply_block_with_meta(v1, &v20, &__block_literal_global_25_15416);
  v14 = v13;
  v20 = MEMORY[0x1E69E9820];
  v21 = 0x40000000;
  v22 = __db_query_tree_apply_block_block_invoke;
  v23 = &unk_1E8198ED0;
  v24 = &__block_literal_global_174;
  db_query_tree_apply_block_with_meta(v1, &v20, 0);
  if (v12)
  {
    v15 = v12->var2;
    if (v15)
    {
      if (*v15)
      {
        free(*v15);
      }
    }
  }

  *v12->var2 = strdup("kMDItemCardIssueDate");
  if (v14)
  {
    v16 = v14->var2;
    if (v16)
    {
      if (*v16)
      {
        free(*v16);
      }
    }
  }

  *v14->var2 = strdup("kMDItemCardExpirationDate");
  v17 = makeOrNode(v10, v12);

  return makeOrNode(v17, v14);
}

void std::allocator<PhLLMTokenInfo>::destroy[abi:nn200100](uint64_t a1)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(a1 + 104);
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;

    operator delete(v2);
  }
}

void std::vector<PhLLMTokenInfo>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 -= 144;
        std::allocator<PhLLMTokenInfo>::destroy[abi:nn200100](v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<PhLLMTokenInfo>>(unint64_t a1)
{
  if (a1 < 0x1C71C71C71C71C8)
  {
    operator new();
  }

  std::vector<long long>::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<PhLLMTokenInfo>,PhLLMTokenInfo*>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = (a1 + 104);
    v6 = a3 + 104;
    do
    {
      v7 = *(v5 - 13);
      v8 = *(v5 - 9);
      *(v6 - 88) = *(v5 - 11);
      *(v6 - 104) = v7;
      *(v6 - 72) = v8;
      *(v6 - 64) = 0;
      *(v6 - 56) = 0;
      *(v6 - 48) = 0;
      *(v6 - 64) = *(v5 - 4);
      *(v6 - 48) = *(v5 - 6);
      *(v5 - 8) = 0;
      *(v5 - 7) = 0;
      *(v5 - 6) = 0;
      v9 = *(v5 - 5);
      v10 = *(v5 - 3);
      *(v6 - 8) = *(v5 - 1);
      *(v6 - 24) = v10;
      *(v6 - 40) = v9;
      v11 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__hash_table(v6, v5);
      v12 = v5 + 5;
      v5 += 18;
      v6 = v11 + 144;
    }

    while (v12 != a2);
    do
    {
      std::allocator<PhLLMTokenInfo>::destroy[abi:nn200100](v4);
      v4 += 144;
    }

    while (v4 != a2);
  }
}

uint64_t std::__split_buffer<PhLLMTokenInfo>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 144;
    std::allocator<PhLLMTokenInfo>::destroy[abi:nn200100](i - 144);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__hash_table(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  v5 = a2[2];
  v3 = a2 + 2;
  v4 = v5;
  v6 = *(v3 - 1);
  *(result + 16) = v5;
  *(result + 8) = v6;
  *(v3 - 1) = 0;
  v7 = v3[1];
  *(result + 24) = v7;
  *(result + 32) = *(v3 + 4);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 16;
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

uint64_t std::unordered_set<std::string>::unordered_set(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a1, (i + 2));
  }

  return a1;
}

void ___ZL14PhThreeYearAgov_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x1E695DF00] date];
  asprintf(&PhThreeYearAgo(void)::oldYear, "%lu", [objc_msgSend(MEMORY[0x1E695DEE8] "currentCalendar")] - 3);

  objc_autoreleasePoolPop(v0);
}

void ___ZL11CurrentYearv_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x1E695DF00] date];
  asprintf(&CurrentYear(void)::currYear, "%lu", [objc_msgSend(MEMORY[0x1E695DEE8] "currentCalendar")]);

  objc_autoreleasePoolPop(v0);
}

uint64_t ___ZL20PhRankingTreeFromStrPKcfPi_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 16);
    if (v2)
    {
      *(v2 + 52) = *(a1 + 40);
      *(v2 + 56) = 0;
      ++*(*(*(a1 + 32) + 8) + 24);
    }
  }

  return a2;
}

void ___ZL26PhExactMatchRankingAttribsv_block_invoke()
{
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosFavorites");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p) + 10) = 1043878380;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosPeopleNames");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p) + 10) = 1043207291;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosPeopleNamesAlternatives");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p) + 10) = 1043207291;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosSceneClassificationLabels");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p) + 10) = 1042536202;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosSceneClassificationSynonyms");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p) + 10) = 1042536202;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosDescription");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p) + 10) = 1041865114;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosKeywords");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p) + 10) = 1041865114;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosLocationKeywords");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p) + 10) = 1041194025;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosHolidays");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p) + 10) = 1040522936;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosSeasons");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p) + 10) = 1040522936;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosContentCreationDateMonth");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p) + 10) = 1040522936;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosContentCreationDateYear");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p) + 10) = 1040522936;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosBusinessCategories");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p) + 10) = 1039516303;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosBusinessNames");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p) + 10) = 1039516303;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosEventCategories");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p) + 10) = 1038174126;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosEventNames");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p) + 10) = 1038174126;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosEventPerformers");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p) + 10) = 1038174126;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosSharedLibraryContributorsNames");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p) + 10) = 1036831949;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosSharedLibraryContributorsNamesAlternatives");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p) + 10) = 1036831949;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosSavedFromAppName");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p) + 10) = 1036831949;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosUtilityTypes");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p) + 10) = 1036831949;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemAcquisitionModel");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p) + 10) = 1036831949;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosMeanings");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p) + 10) = 1036831949;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosMediaTypes");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p) + 10) = 1036831949;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosTitle");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p) + 10) = 1036831949;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1C2A309AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZL25PhRankingTreeFromLLMParsePK14__CFDictionaryP7NSArrayIP7NSValueEP14NSCharacterSetP8NSString_block_invoke(uint64_t a1, void *a2)
{
  result = [a2 count];
  if (result)
  {
    result = [a2 objectForKeyedSubscript:@"kQPMedia"];
    if (result)
    {
      result = [a2 objectForKeyedSubscript:@"kQPDescription"];
      if (result)
      {
        result = [a2 objectForKeyedSubscript:@"kQPDescription"];
        *(*(*(a1 + 32) + 8) + 40) = result;
      }
    }
  }

  return result;
}

void ___ZL37PhPreExtractionMatchLLMRankingAttribsv_block_invoke()
{
  v4[1] = *MEMORY[0x1E69E9840];
  v0 = 1045220557;
  std::string::basic_string[abi:nn200100]<0>(v3, "kMDItemCardUnderName");
  v1 = 0uLL;
  v2 = 0;
  std::vector<std::string>::__init_with_size[abi:nn200100]<std::string const*,std::string const*>(&v1, v3, v4, 1uLL);
}

void sub_1C2A30F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&a10);
  v23 = &a22;
  v24 = -72;
  v25 = &a22;
  while (1)
  {
    v26 = *v25;
    v25 -= 24;
    if (v26 < 0)
    {
      operator delete(*(v23 - 23));
    }

    v23 = v25;
    v24 += 24;
    if (!v24)
    {
      _Unwind_Resume(a1);
    }
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<int,PhRankingInfo>,std::__unordered_map_hasher<int,std::__hash_value_type<int,PhRankingInfo>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,PhRankingInfo>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,PhRankingInfo>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(void *a1, int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,PhRankingInfo>,void *>>>::operator()[abi:nn200100](char a1, void **__p)
{
  if (a1)
  {
    v3 = __p + 4;
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v3);
  }

  if (__p)
  {

    operator delete(__p);
  }
}

void ___ZL19PhOCRRankingAttribsv_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = xmmword_1C2BFA440;
  v2 = 0xE00000008;
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__assign_unique<int const*>(&PhOCRRankingAttribs(void)::_OCRRankingAttribs, &v1, &v3);
  v0 = *MEMORY[0x1E69E9840];
}

void ___ZL30PhPrefixMatchLLMRankingAttribsv_block_invoke()
{
  v4[1] = *MEMORY[0x1E69E9840];
  v0 = 1043878380;
  std::string::basic_string[abi:nn200100]<0>(v3, "kMDItemPhotosFavorites");
  v1 = 0uLL;
  v2 = 0;
  std::vector<std::string>::__init_with_size[abi:nn200100]<std::string const*,std::string const*>(&v1, v3, v4, 1uLL);
}

void sub_1C2A31D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v12 = v10;
  a10 = v12;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&a10);
  if (*(v11 - 49) < 0)
  {
    operator delete(*(v11 - 72));
  }

  _Unwind_Resume(a1);
}

void sub_1C2A31F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  while (1)
  {
    v12 = *(v11 - 1);
    v11 -= 3;
    if (v12 < 0)
    {
      operator delete(*v11);
    }

    if (v11 == &a11)
    {
      JUMPOUT(0x1C2A31F88);
    }
  }
}

void sub_1C2A31FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  while (1)
  {
    v12 = *(v11 - 1);
    v11 -= 3;
    if (v12 < 0)
    {
      operator delete(*v11);
    }

    if (v11 == &a11)
    {
      JUMPOUT(0x1C2A31F88);
    }
  }
}

void ___ZL28PhSpanMatchLLMRankingAttribsv_block_invoke()
{
  v4[1] = *MEMORY[0x1E69E9840];
  v0 = 1043878380;
  std::string::basic_string[abi:nn200100]<0>(v3, "kMDItemPhotosFavorites");
  v1 = 0uLL;
  v2 = 0;
  std::vector<std::string>::__init_with_size[abi:nn200100]<std::string const*,std::string const*>(&v1, v3, v4, 1uLL);
}

void sub_1C2A327DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](va);
  if (*(v3 - 49) < 0)
  {
    operator delete(*(v3 - 72));
  }

  _Unwind_Resume(a1);
}

void ___ZL26PhPopulateFiltersFromQueryPK20__CFAttributedStringPP10query_nodeS4_P14NSMutableArrayIP7NSValueES9_bP8NSStringb_block_invoke(uint64_t a1, void *a2, NSUInteger a3, NSUInteger a4)
{
  v38 = *MEMORY[0x1E69E9840];
  if ([a2 count])
  {
    [*(a1 + 32) addObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithRange:", a3, a4)}];
  }

  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = ___ZL26PhPopulateFiltersFromQueryPK20__CFAttributedStringPP10query_nodeS4_P14NSMutableArrayIP7NSValueES9_bP8NSStringb_block_invoke_2;
  v18[3] = &unk_1E8194988;
  v22 = a3;
  v23 = a4;
  v19 = *(a1 + 40);
  v25 = *(a1 + 72);
  v20 = &v30;
  v21 = &v26;
  v24 = *(a1 + 56);
  [a2 enumerateKeysAndObjectsUsingBlock:v18];
  v8 = v27[3];
  v9 = v31[3];
  if (v8 && v9)
  {
    v10 = makeOrNode(v8, v9);
    if (*(a1 + 72) == 1)
    {
      v11 = makeAndNode(**(a1 + 64), v10);
      v12 = *(a1 + 64);
LABEL_9:
      *v12 = v11;
      goto LABEL_13;
    }

    **(a1 + 56) = makeAndNode(**(a1 + 56), v10);
    v13 = *__error();
    v14 = _SILogForLogForCategory(19);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 48);
      v39.location = a3;
      v39.length = a4;
      v16 = NSStringFromRange(v39);
      *buf = 138412546;
      v35 = v15;
      v36 = 2112;
      v37 = v16;
      _os_log_impl(&dword_1C278D000, v14, OS_LOG_TYPE_DEFAULT, "%@ Token (range: %@) has generic and metdata filters (ORing them together)", buf, 0x16u);
    }

    *__error() = v13;
  }

  else
  {
    **(a1 + 64) = makeAndNode(**(a1 + 64), v9);
    if ((*(a1 + 72) & 1) == 0)
    {
      v11 = makeAndNode(**(a1 + 56), v27[3]);
      v12 = *(a1 + 56);
      goto LABEL_9;
    }
  }

LABEL_13:
  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);
  v17 = *MEMORY[0x1E69E9840];
}

void sub_1C2A32C7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

int *___ZL26PhPopulateFiltersFromQueryPK20__CFAttributedStringPP10query_nodeS4_P14NSMutableArrayIP7NSValueES9_bP8NSStringb_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = [a2 length];
  if (!a3)
  {
    goto LABEL_17;
  }

  if (!v6)
  {
    goto LABEL_17;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_17;
  }

  if (![a3 length])
  {
    goto LABEL_17;
  }

  v7 = [a2 UTF8String];
  v8 = [a3 UTF8String];
  if (!v7)
  {
    goto LABEL_17;
  }

  v9 = v8;
  if (!v8)
  {
    goto LABEL_17;
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v7);
  {
    MetadataKeys(void)::_metadataKeys = 0u;
    *algn_1EBF61F30 = 0u;
    dword_1EBF61F40 = 1065353216;
  }

  if (MetadataKeys(void)::onceToken != -1)
  {
    dispatch_once(&MetadataKeys(void)::onceToken, &__block_literal_global_94_7573);
  }

  v10 = std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::find<std::string>(&MetadataKeys(void)::_metadataKeys, __p);
  if (SHIBYTE(v38) < 0)
  {
    operator delete(*__p);
  }

  if (!v10)
  {
    if ((*(a1 + 88) & 1) == 0)
    {
      std::string::basic_string[abi:nn200100]<0>(__p, v7);
      v25 = isGenericFilterKey(__p);
      if (SHIBYTE(v38) < 0)
      {
        operator delete(*__p);
      }

      if (v25)
      {
        v26 = *(*(*(a1 + 56) + 8) + 24);
        query_node_with_ann = db_make_query_node_with_ann(v9, 0);
        *(*(*(a1 + 56) + 8) + 24) = makeOrNode(v26, query_node_with_ann);
        v13 = *__error();
        v14 = _SILogForLogForCategory(19);
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_23;
        }

        v28 = *(a1 + 40);
        v29 = NSStringFromRange(*(a1 + 64));
        *__p = 138412802;
        *&__p[4] = v28;
        v36 = 2112;
        v37 = a3;
        v38 = 2112;
        v39 = v29;
        v17 = "%@ Adding generic filter: %@, token range: %@";
        goto LABEL_15;
      }

      if ((*(a1 + 88) & 1) == 0)
      {
        std::string::basic_string[abi:nn200100]<0>(__p, v7);
        v30 = isGenericFilterTopLevelKey(__p);
        if (SHIBYTE(v38) < 0)
        {
          operator delete(*__p);
        }

        if (v30)
        {
          v31 = **(a1 + 80);
          v32 = db_make_query_node_with_ann(v9, 0);
          **(a1 + 80) = makeAndNode(v31, v32);
          v13 = *__error();
          v14 = _SILogForLogForCategory(19);
          if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_23;
          }

          v33 = *(a1 + 40);
          v34 = NSStringFromRange(*(a1 + 64));
          *__p = 138412802;
          *&__p[4] = v33;
          v36 = 2112;
          v37 = a3;
          v38 = 2112;
          v39 = v34;
          v17 = "%@ Adding generic top level filter: %@, token range: %@";
          goto LABEL_15;
        }
      }
    }

LABEL_17:
    v19 = *(a1 + 88);
    v13 = *__error();
    if (v19)
    {
      v20 = _SILogForLogForCategory(20);
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }
    }

    else
    {
      v20 = _SILogForLogForCategory(19);
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }
    }

    v21 = *(a1 + 40);
    v22 = NSStringFromRange(*(a1 + 64));
    *__p = 138412802;
    *&__p[4] = v21;
    v36 = 2112;
    v37 = v22;
    v38 = 2112;
    v39 = a2;
    v17 = "%@ [WARN] Ignoring filter, token range: %@, key: %@";
    v18 = v20;
    goto LABEL_22;
  }

  v11 = *(*(*(a1 + 48) + 8) + 24);
  v12 = db_make_query_node_with_ann(v9, 0);
  *(*(*(a1 + 48) + 8) + 24) = makeOrNode(v11, v12);
  [*(a1 + 32) addObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithRange:", *(a1 + 64), *(a1 + 72))}];
  v13 = *__error();
  v14 = _SILogForLogForCategory(19);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 40);
    v16 = NSStringFromRange(*(a1 + 64));
    *__p = 138412802;
    *&__p[4] = v15;
    v36 = 2112;
    v37 = a3;
    v38 = 2112;
    v39 = v16;
    v17 = "%@ Adding metadata filter: %@, token range: %@";
LABEL_15:
    v18 = v14;
LABEL_22:
    _os_log_impl(&dword_1C278D000, v18, OS_LOG_TYPE_DEFAULT, v17, __p, 0x20u);
  }

LABEL_23:
  result = __error();
  *result = v13;
  v24 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C2A33134(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL isGenericFilterKey(uint64_t a1)
{
  {
    GenericFilterKeys(void)::_genericFilterKeys = 0u;
    unk_1EBF61F68 = 0u;
    dword_1EBF61F78 = 1065353216;
  }

  if (GenericFilterKeys(void)::onceToken != -1)
  {
    dispatch_once(&GenericFilterKeys(void)::onceToken, &__block_literal_global_98);
  }

  return std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::find<std::string>(&GenericFilterKeys(void)::_genericFilterKeys, a1) != 0;
}

{
  {
    GenericFilterKeys(void)::_genericFilterKeys = 0u;
    *algn_1EC058EF0 = 0u;
    dword_1EC058F00 = 1065353216;
  }

  if (GenericFilterKeys(void)::onceToken != -1)
  {
    dispatch_once(&GenericFilterKeys(void)::onceToken, &__block_literal_global_32_16773);
  }

  return std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::find<std::string>(&GenericFilterKeys(void)::_genericFilterKeys, a1) != 0;
}

BOOL isGenericFilterTopLevelKey(uint64_t a1)
{
  {
    GenericFilterTopLevelKeys(void)::_genericFilterTopLevelKeys = 0u;
    unk_1EBF61FA0 = 0u;
    dword_1EBF61FB0 = 1065353216;
  }

  if (GenericFilterTopLevelKeys(void)::onceToken != -1)
  {
    dispatch_once(&GenericFilterTopLevelKeys(void)::onceToken, &__block_literal_global_126);
  }

  return std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::find<std::string>(&GenericFilterTopLevelKeys(void)::_genericFilterTopLevelKeys, a1) != 0;
}

{
  {
    GenericFilterTopLevelKeys(void)::_genericFilterTopLevelKeys = 0u;
    unk_1EC058F28 = 0u;
    dword_1EC058F38 = 1065353216;
  }

  if (GenericFilterTopLevelKeys(void)::onceToken != -1)
  {
    dispatch_once(&GenericFilterTopLevelKeys(void)::onceToken, &__block_literal_global_65_16765);
  }

  return std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::find<std::string>(&GenericFilterTopLevelKeys(void)::_genericFilterTopLevelKeys, a1) != 0;
}

void ___ZL25GenericFilterTopLevelKeysv_block_invoke()
{
  v2.__r_.__value_.__r.__words[0] = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:nn200100]<0>(&__p, "kMDItemPhotosResultType");
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_unique<std::string const*>(&GenericFilterTopLevelKeys(void)::_genericFilterTopLevelKeys, &__p, &v2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v0 = *MEMORY[0x1E69E9840];
}

void sub_1C2A33334(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL17GenericFilterKeysv_block_invoke()
{
  v28.__r_.__value_.__r.__words[0] = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:nn200100]<0>(&__str, "kMDItemAcquisitionModel");
  std::string::basic_string[abi:nn200100]<0>(v3, "kMDItemContentCreationDate");
  std::string::basic_string[abi:nn200100]<0>(v4, "kMDItemContentType");
  std::string::basic_string[abi:nn200100]<0>(v5, "kMDItemFilename");
  std::string::basic_string[abi:nn200100]<0>(v6, "kMDItemPhotosBusinessCategories");
  std::string::basic_string[abi:nn200100]<0>(v7, "kMDItemPhotosBusinessNames");
  std::string::basic_string[abi:nn200100]<0>(v8, "kMDItemPhotosContentCreationDateMonth");
  std::string::basic_string[abi:nn200100]<0>(v9, "kMDItemPhotosContentCreationDateYear");
  std::string::basic_string[abi:nn200100]<0>(v10, "kMDItemPhotosDescription");
  std::string::basic_string[abi:nn200100]<0>(v11, "kMDItemPhotosEventCategories");
  std::string::basic_string[abi:nn200100]<0>(v12, "kMDItemPhotosEventNames");
  std::string::basic_string[abi:nn200100]<0>(v13, "kMDItemPhotosEventPerformers");
  std::string::basic_string[abi:nn200100]<0>(v14, "kMDItemPhotosFavorited");
  std::string::basic_string[abi:nn200100]<0>(v15, "kMDItemPhotosHolidays");
  std::string::basic_string[abi:nn200100]<0>(v16, "kMDItemPhotosKeywords");
  std::string::basic_string[abi:nn200100]<0>(v17, "kMDItemPhotosLibraryName");
  std::string::basic_string[abi:nn200100]<0>(v18, "kMDItemPhotosLocationKeywords");
  std::string::basic_string[abi:nn200100]<0>(v19, "kMDItemPhotosMediaTypes");
  std::string::basic_string[abi:nn200100]<0>(v20, "kMDItemPhotosPeopleNames");
  std::string::basic_string[abi:nn200100]<0>(v21, "kMDItemPhotosPeopleNamesAlternatives");
  std::string::basic_string[abi:nn200100]<0>(v22, "kMDItemPhotosPeoplePersonIdentifiers");
  std::string::basic_string[abi:nn200100]<0>(v23, "kMDItemPhotosSavedFromAppName");
  std::string::basic_string[abi:nn200100]<0>(v24, "kMDItemPhotosSeasons");
  std::string::basic_string[abi:nn200100]<0>(v25, "kMDItemPhotosSharedLibraryContributorsPersonIdentifiers");
  std::string::basic_string[abi:nn200100]<0>(v26, "kMDItemPhotosTitle");
  std::string::basic_string[abi:nn200100]<0>(v27, "kMDItemTextContent");
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_unique<std::string const*>(&GenericFilterKeys(void)::_genericFilterKeys, &__str, &v28);
  v0 = 624;
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

void sub_1C2A33620(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  v12 = (v10 + 623);
  v13 = -624;
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

void ___ZL12MetadataKeysv_block_invoke()
{
  v4.__r_.__value_.__r.__words[0] = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:nn200100]<0>(&__str, "kMDItemPhotosMeanings");
  std::string::basic_string[abi:nn200100]<0>(v3, "kMDItemPhotosSceneClassificationLabels");
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_unique<std::string const*>(&MetadataKeys(void)::_metadataKeys, &__str, &v4);
  for (i = 0; i != -48; i -= 24)
  {
    if (v3[i + 23] < 0)
    {
      operator delete(*(&__str + i + 24));
    }
  }

  v1 = *MEMORY[0x1E69E9840];
}

void sub_1C2A3373C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void slab_vm_deallocate(void *a1, size_t a2, unsigned int a3)
{
  if (a3 == 250)
  {
    if (a2 != 0x100000)
    {
      v9 = MEMORY[0x1E69E9AC8];
      if (*MEMORY[0x1E69E9AC8] == a2)
      {
        v10 = node_alloc();
        v10[1] = a1;
        madvise(a1, *v9, 5);
        atomic_fetch_add_explicit(qword_1EDD78CE0, -a2, memory_order_relaxed);
        v8 = &stru_1EDD78D30;
        v7 = v10;
        goto LABEL_16;
      }

      goto LABEL_19;
    }

    madvise(a1, 0x100000uLL, 5);
    atomic_fetch_add_explicit(qword_1EDD78CE0, 0xFFFFFFFFFFF00000, memory_order_relaxed);
    v6 = qword_1EDD78D50;
    if (atomic_fetch_add(qword_1EDD78D50, 1uLL) <= 4)
    {
      v7 = node_alloc();
      v7[1] = a1;
      v8 = &stru_1EDD78D40;
LABEL_16:

      OSAtomicEnqueue(v8, v7, 0);
      return;
    }
  }

  else
  {
    if (a3 - 243 > 4)
    {
      if (a3 - 240 >= 0x11)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    if (a2 != 0x100000)
    {
      if (*MEMORY[0x1E69E9AC8] == a2)
      {
        v7 = node_alloc();
        v7[1] = a1;
        atomic_fetch_add_explicit(&tag_sizes[a3 - 240], -a2, memory_order_relaxed);
        v8 = &stru_1EDD78B00;
        goto LABEL_16;
      }

      goto LABEL_19;
    }

    atomic_fetch_add_explicit(&tag_sizes[a3 - 240], 0xFFFFFFFFFFF00000, memory_order_relaxed);
    v6 = qword_1EDD78B20;
    if (atomic_fetch_add(qword_1EDD78B20, 1uLL) <= 4)
    {
      v7 = node_alloc();
      v7[1] = a1;
      v8 = &stru_1EDD78B10;
      goto LABEL_16;
    }
  }

  atomic_fetch_add(v6, 0xFFFFFFFFFFFFFFFFLL);
LABEL_19:
  atomic_fetch_add_explicit(&tag_sizes[a3 - 240], -a2, memory_order_relaxed);
LABEL_20:

  munmap(a1, a2);
}

BOOL _writepos_match_address(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  v4 = v2 > a2;
  v3 = v2 + 0x100000;
  return !v4 && v3 > a2;
}

uint64_t packContextFinalize(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v5 = v3;
  v7 = v6;
  v8 = v2;
  v9 = v1;
  v46 = *MEMORY[0x1E69E9840];
  v10 = *(v2 + 2);
  if (v10 >= 2)
  {
    v1[2] = 20;
    goto LABEL_6;
  }

  v11 = v7[1];
  if (v11)
  {
    v1[2] = 20;
    if (!v10)
    {
      goto LABEL_7;
    }

    v10 = 1;
LABEL_6:
    packPostingChunks(v1, *v2, v10, (v2 + 4));
    v11 = v7[1];
    if (!v11)
    {
LABEL_15:
      v13 = *v9;
      v14 = *(v9 + 4) - 20;
      v15 = 20;
LABEL_16:
      v16 = packRunHeadR(v13, v15, v5, v14);
      goto LABEL_17;
    }

LABEL_7:
    v12 = v45;
    bzero(v45, 0x2000uLL);
    if (v11 >= 1024)
    {
      v12 = malloc_type_malloc(8 * v11 + 8, 0x100004000313F17uLL);
    }

    v44 = v12;
    changeHolderApply(v7, changeHolderGetAdd, &v44);
    *v44 = 0;
    if (*v12)
    {
      packPostingChunkUpdatesWithType(v9, v12, 1u);
    }

    v44 = v12;
    changeHolderApply(v7, changeHolderGetRemove, &v44);
    *v44 = 0;
    if (*v12)
    {
      packPostingChunkUpdatesWithType(v9, v12, 2u);
    }

    if (v12 != v45)
    {
      free(v12);
    }

    goto LABEL_15;
  }

  v16 = v1[2];
  if (v10 != 1)
  {
    if (!v4)
    {
      goto LABEL_17;
    }

    packPostingChunks(v1, *v2, 0, (v2 + 4));
    v13 = *v9;
    v14 = *(v9 + 4) - 20;
    v15 = v16;
    goto LABEL_16;
  }

  v19 = **v2;
  v20 = *v1;
  v21 = 2 * v3;
  if ((v3 >> 31))
  {
    v24 = v21 | 0x80;
    if ((v21 & 0x8000000000000000) != 0)
    {
      v28 = v20 + v16;
      *v28 = v24;
      v29 = vdupq_n_s64(v21);
      v29.i64[0] = *&vmovn_s32(vuzp1q_s32(vshlq_u64(v29, xmmword_1C2BFA320), vshlq_u64(v29, xmmword_1C2BFA310))) | 0x80008000800080;
      *(v28 + 1) = vuzp1_s8(*v29.i8, *v29.i8).u32[0];
      *(v28 + 5) = (v21 >> 35) | 0x80;
      *(v28 + 6) = (v21 >> 42) | 0x80;
      *(v28 + 7) = (v21 >> 49) | 0x80;
      *(v28 + 8) = HIBYTE(v21);
      v23 = v16 + 10;
      *(v28 + 9) = 1;
    }

    else if (HIBYTE(v21))
    {
      v30 = v20 + v16;
      *v30 = v24;
      v31 = vdupq_n_s64(v21);
      v31.i64[0] = *&vmovn_s32(vuzp1q_s32(vshlq_u64(v31, xmmword_1C2BFA320), vshlq_u64(v31, xmmword_1C2BFA310))) | 0x80008000800080;
      *(v30 + 1) = vuzp1_s8(*v31.i8, *v31.i8).u32[0];
      *(v30 + 5) = (v21 >> 35) | 0x80;
      *(v30 + 6) = (v21 >> 42) | 0x80;
      *(v30 + 7) = ((v3 >> 31) >> 17) | 0x80;
      v23 = v16 + 9;
      *(v30 + 8) = HIBYTE(v21);
    }

    else if (v21 >> 49)
    {
      v33 = v20 + v16;
      *v33 = v24;
      v34 = vdupq_n_s64(v21);
      v34.i64[0] = *&vmovn_s32(vuzp1q_s32(vshlq_u64(v34, xmmword_1C2BFA320), vshlq_u64(v34, xmmword_1C2BFA310))) | 0x80008000800080;
      *(v33 + 1) = vuzp1_s8(*v34.i8, *v34.i8).u32[0];
      *(v33 + 5) = (v21 >> 35) | 0x80;
      *(v33 + 6) = ((v3 >> 31) >> 10) | 0x80;
      v23 = v16 + 8;
      *(v33 + 7) = v21 >> 49;
    }

    else
    {
      v25 = v20 + v16;
      *v25 = v24;
      v26 = vdupq_n_s64(v21);
      v26.i64[0] = *&vmovn_s32(vuzp1q_s32(vshlq_u64(v26, xmmword_1C2BFA320), vshlq_u64(v26, xmmword_1C2BFA310))) | 0x80008000800080;
      *(v25 + 1) = vuzp1_s8(*v26.i8, *v26.i8).u32[0];
      if (v21 >> 42)
      {
        *(v25 + 5) = ((v3 >> 31) >> 3) | 0x80;
        v23 = v16 + 7;
        *(v25 + 6) = v21 >> 42;
      }

      else
      {
        v23 = v16 + 6;
        *(v25 + 5) = v21 >> 35;
      }
    }
  }

  else if (v21 >> 28)
  {
    v27 = (v20 + v16);
    *v27 = v21 | 0x80;
    v27[1] = (v21 >> 7) | 0x80;
    v27[2] = (v21 >> 14) | 0x80;
    v27[3] = (v21 >> 21) | 0x80;
    v23 = v16 + 5;
    v27[4] = v21 >> 28;
  }

  else if (v21 >= 0x200000)
  {
    v32 = (v20 + v16);
    *v32 = v21 | 0x80;
    v32[1] = (v21 >> 7) | 0x80;
    v32[2] = (v21 >> 14) | 0x80;
    v23 = v16 + 4;
    v32[3] = v21 >> 21;
  }

  else
  {
    v22 = (v20 + v16);
    if (v21 >= 0x4000)
    {
      *v22 = v21 | 0x80;
      v22[1] = (v21 >> 7) | 0x80;
      v23 = v16 + 3;
      v22[2] = v21 >> 14;
    }

    else if (v21 >= 0x80)
    {
      *v22 = v21 | 0x80;
      v23 = v16 + 2;
      v22[1] = v21 >> 7;
    }

    else
    {
      v23 = v16 + 1;
      *v22 = v21;
    }
  }

  v35 = 2 * v19;
  v36 = (2 * v19) | 1;
  if (((v19 >> 27) & 0xF) != 0)
  {
    v39 = (v20 + v23);
    *v39 = (2 * v19) | 0x81;
    v39[1] = (v19 >> 6) | 0x80;
    v39[2] = (v19 >> 13) | 0x80;
    v39[3] = (v19 >> 20) | 0x80;
    v38 = v23 + 5;
    v39[4] = v35 >> 28;
  }

  else if (v35 >= 0x200000)
  {
    v40 = (v20 + v23);
    *v40 = (2 * v19) | 0x81;
    v40[1] = (v19 >> 6) | 0x80;
    v40[2] = (v19 >> 13) | 0x80;
    v41 = v19 >> 20;
    v38 = v23 + 4;
    v40[3] = v41;
  }

  else
  {
    v37 = (v20 + v23);
    if (v35 >= 0x4000)
    {
      *v37 = (2 * v19) | 0x81;
      v37[1] = (v19 >> 6) | 0x80;
      v42 = v19 >> 13;
      v38 = v23 + 3;
      v37[2] = v42;
    }

    else if (v35 >= 0x80)
    {
      *v37 = (2 * v19) | 0x81;
      v43 = v19 >> 6;
      v38 = v23 + 2;
      v37[1] = v43;
    }

    else
    {
      v38 = v23 + 1;
      *v37 = v36;
    }
  }

  v1[2] = v38;
LABEL_17:
  v7[1] = 0;
  v7[3] = 0;
  *(v8 + 2) = 0;
  *(v8 + 6) = 0;
  v8[2] = 0;
  v8[10] = 0;
  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

void *changeHolderApply(void *result, uint64_t (*a2)(void, void, uint64_t), uint64_t a3)
{
  v5 = result;
  v6 = result[2];
  v7 = result[3];
  v8 = v6 - result[1] + v7;
  if (v7 >= 1)
  {
    v9 = 0;
    do
    {
      result = a2(*(*v5 + v9), *(*v5 + v9 + 8), a3);
      v9 += 16;
      --v7;
    }

    while (v7);
    v6 = v5[2];
  }

  if (v8 < v6)
  {
    v10 = 16 * v8;
    do
    {
      result = a2(*(*v5 + v10), *(*v5 + v10 + 8), a3);
      ++v8;
      v10 += 16;
    }

    while (v8 < v5[2]);
  }

  return result;
}

uint64_t packRunHeadR(uint64_t a1, uint64_t a2, unint64_t a3, unsigned int a4)
{
  if (a4 >> 28)
  {
    v5 = a1 + a2;
    *(v5 - 1) = a4 >> 28;
    *(v5 - 2) = (a4 >> 21) | 0x80;
    *(v5 - 3) = (a4 >> 14) | 0x80;
    *(v5 - 4) = (a4 >> 7) | 0x80;
    LOBYTE(a4) = a4 | 0x80;
    v4 = -5;
  }

  else if (a4 >= 0x200000)
  {
    v6 = a1 + a2;
    *(v6 - 1) = a4 >> 21;
    *(v6 - 2) = (a4 >> 14) | 0x80;
    *(v6 - 3) = (a4 >> 7) | 0x80;
    LOBYTE(a4) = a4 | 0x80;
    v4 = -4;
  }

  else if (a4 >= 0x4000)
  {
    v7 = a1 + a2;
    *(v7 - 1) = a4 >> 14;
    *(v7 - 2) = (a4 >> 7) | 0x80;
    LOBYTE(a4) = a4 | 0x80;
    v4 = -3;
  }

  else if (a4 >= 0x80)
  {
    *(a1 + a2 - 1) = a4 >> 7;
    LOBYTE(a4) = a4 | 0x80;
    v4 = -2;
  }

  else
  {
    v4 = -1;
  }

  v8 = v4 + a2;
  v9 = a1 + v8;
  *(a1 + v8) = a4;
  v10 = 2 * a3;
  v11 = (2 * a3) | 1;
  if ((a3 >> 31))
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      *(v9 - 1) = 1;
      *(v9 - 2) = HIBYTE(v10);
      *(v9 - 3) = (v10 >> 49) | 0x80;
      *(v9 - 4) = (v10 >> 42) | 0x80;
      *(v9 - 5) = (v10 >> 35) | 0x80;
      v14 = vdupq_n_s64(v10);
      v14.i64[0] = *&vmovn_s32(vuzp1q_s32(vshlq_u64(v14, xmmword_1C2BFA320), vshlq_u64(v14, xmmword_1C2BFA310))) | 0x80008000800080;
      *(v9 - 9) = vuzp1_s8(*v14.i8, *v14.i8).u32[0];
      v11 = (2 * a3) | 0x81;
      v12 = -10;
    }

    else if (HIBYTE(v10))
    {
      *(v9 - 1) = HIBYTE(v10);
      *(v9 - 2) = (v10 >> 49) | 0x80;
      *(v9 - 3) = (v10 >> 42) | 0x80;
      *(v9 - 4) = (v10 >> 35) | 0x80;
      v15 = vdupq_n_s64(v10);
      v15.i64[0] = *&vmovn_s32(vuzp1q_s32(vshlq_u64(v15, xmmword_1C2BFA320), vshlq_u64(v15, xmmword_1C2BFA310))) | 0x80008000800080;
      *(v9 - 8) = vuzp1_s8(*v15.i8, *v15.i8).u32[0];
      v11 = (2 * a3) | 0x81;
      v12 = -9;
    }

    else if (v10 >> 49)
    {
      *(v9 - 1) = v10 >> 49;
      *(v9 - 2) = (v10 >> 42) | 0x80;
      *(v9 - 3) = (v10 >> 35) | 0x80;
      v16 = vdupq_n_s64(v10);
      v16.i64[0] = *&vmovn_s32(vuzp1q_s32(vshlq_u64(v16, xmmword_1C2BFA320), vshlq_u64(v16, xmmword_1C2BFA310))) | 0x80008000800080;
      *(v9 - 7) = vuzp1_s8(*v16.i8, *v16.i8).u32[0];
      v11 = (2 * a3) | 0x81;
      v12 = -8;
    }

    else if (v10 >> 42)
    {
      *(v9 - 1) = v10 >> 42;
      *(v9 - 2) = (v10 >> 35) | 0x80;
      v17 = vdupq_n_s64(v10);
      v17.i64[0] = *&vmovn_s32(vuzp1q_s32(vshlq_u64(v17, xmmword_1C2BFA320), vshlq_u64(v17, xmmword_1C2BFA310))) | 0x80008000800080;
      *(v9 - 6) = vuzp1_s8(*v17.i8, *v17.i8).u32[0];
      v11 = (2 * a3) | 0x81;
      v12 = -7;
    }

    else
    {
      *(v9 - 1) = v10 >> 35;
      v13 = vdupq_n_s64(v10);
      v13.i64[0] = *&vmovn_s32(vuzp1q_s32(vshlq_u64(v13, xmmword_1C2BFA320), vshlq_u64(v13, xmmword_1C2BFA310))) | 0x80008000800080;
      *(v9 - 5) = vuzp1_s8(*v13.i8, *v13.i8).u32[0];
      v11 = (2 * a3) | 0x81;
      v12 = -6;
    }
  }

  else if (v10 >> 28)
  {
    *(v9 - 1) = v10 >> 28;
    *(v9 - 2) = (v10 >> 21) | 0x80;
    *(v9 - 3) = (v10 >> 14) | 0x80;
    *(v9 - 4) = (v10 >> 7) | 0x80;
    v11 = (2 * a3) | 0x81;
    v12 = -5;
  }

  else if (v10 >= 0x200000)
  {
    *(v9 - 1) = v10 >> 21;
    *(v9 - 2) = (v10 >> 14) | 0x80;
    *(v9 - 3) = (v10 >> 7) | 0x80;
    v11 = (2 * a3) | 0x81;
    v12 = -4;
  }

  else if (v10 >= 0x4000)
  {
    *(v9 - 1) = v10 >> 14;
    *(v9 - 2) = (v10 >> 7) | 0x80;
    v11 = (2 * a3) | 0x81;
    v12 = -3;
  }

  else if (v10 >= 0x80)
  {
    *(v9 - 1) = v10 >> 7;
    v11 = (2 * a3) | 0x81;
    v12 = -2;
  }

  else
  {
    v12 = -1;
  }

  v18 = v12 + v8;
  *(a1 + v18) = v11;
  return v18;
}

uint64_t changeHolderGetRemove(uint64_t result, int a2, void **a3)
{
  if (a2 < 0)
  {
    v3 = *a3;
    *v3 = result;
    *a3 = v3 + 1;
  }

  return result;
}

uint64_t changeHolderGetAdd(uint64_t result, int a2, void **a3)
{
  if (a2 >= 1)
  {
    v3 = *a3;
    *v3 = result;
    *a3 = v3 + 1;
  }

  return result;
}

void packContextDestroy(void **a1)
{
  v1 = (a1 + 4);
  free(*a1);

  FlattenPostingsContextDestroy(v1);
}

uint64_t mergeIndexData(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v1;
  v1049 = *MEMORY[0x1E69E9840];
  v1032 = -1;
  v11 = *(*v1 + 80);
  v1031 = 0;
  v1030 = 0;
  bzero(v1026, 0x3C8uLL);
  v923 = v693;
  if (v9 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v9;
  }

  v891 = v12;
  if (v5)
  {
    *v5 = 0;
  }

  if (v9 < 1)
  {
    v27 = 0;
    v32 = 0;
    v25 = 0;
    v33 = 0;
    v29 = 0;
    v30 = 0;
    v28 = 0;
  }

  else
  {
    v13 = 0;
    v14 = v10;
    v15 = v9;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    do
    {
      v23 = *v14++;
      v22 = v23;
      v24 = *(v23 + 15560);
      if (v24 <= v18)
      {
        v25 = v18;
      }

      else
      {
        v25 = v24;
      }

      if (*(v22 + 15568) <= v19)
      {
        v26 = v19;
      }

      else
      {
        v26 = *(v22 + 15568);
      }

      v27 = v20 + *(v22 + 15202);
      if (*(v22 + 40) <= v13)
      {
        v28 = v13;
      }

      else
      {
        v28 = *(v22 + 40);
      }

      v29 = *(v22 + 4968) + v16;
      v30 = *(v22 + 9688) + v21;
      v31 = *(v22 + 488) + v17;
      v20 += *(v22 + 15202);
      v19 = v26;
      v32 = v26;
      v18 = v25;
      v13 = v28;
      v17 = v31;
      v33 = v31;
      v16 = v29;
      v21 = v30;
      --v15;
    }

    while (v15);
  }

  v900 = v30;
  v892 = v29;
  v914 = v33;
  v742 = v28;
  v744 = v25;
  v745 = v32;
  v733 = v27;
  v34 = *__error();
  v35 = _SILogForLogForCategory(0);
  v36 = 2 * (gSILogLevels[0] < 4);
  if (os_log_type_enabled(v35, v36))
  {
    *v1037 = 136315394;
    *&v1037[4] = v7;
    v1038 = 1024;
    LODWORD(v1039[0]) = v9;
    _os_log_impl(&dword_1C278D000, v35, v36, "Merging started (%s) count:%d", v1037, 0x12u);
  }

  *__error() = v34;
  v921 = v9;
  v919 = v3;
  v918 = v10;
  v922 = v7;
  if (v9 < 1)
  {
    v47 = 0;
  }

  else
  {
    v747 = v11;
    v920 = v5;
    v38 = 0;
    *&v37 = 136315138;
    v695 = v37;
    do
    {
      v39 = *__error();
      v40 = _SILogForLogForCategory(0);
      v41 = 2 * (gSILogLevels[0] < 4);
      if (os_log_type_enabled(v40, v41))
      {
        v42 = v918[v38] + 15208;
        *v1037 = v695;
        *&v1037[4] = v42;
        _os_log_impl(&dword_1C278D000, v40, v41, "\t%s", v1037, 0xCu);
      }

      *__error() = v39;
      ++v38;
      v9 = v921;
    }

    while (v921 != v38);
    v43 = 1;
    v10 = v918;
    v44 = v918;
    v11 = v747;
    do
    {
      v45 = *v44++;
      v46 = *(v45 + 4928);
      if (v43 >= v921)
      {
        break;
      }

      ++v43;
    }

    while (!v46);
    v47 = (v46 != 0) << 6;
    v7 = v922;
    v5 = v920;
    v3 = v919;
  }

  v48 = v11;
  v49 = *(*v10 + 15672);
  if (*(*v10 + 15714))
  {
    v50 = *v10;
    v51 = 0x8000;
  }

  else
  {
    v52 = *__error();
    v53 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      v54 = *v10 + 15208;
      *v1037 = 136315138;
      *&v1037[4] = v54;
      _os_log_impl(&dword_1C278D000, v53, OS_LOG_TYPE_DEFAULT, "vectorIndex %s not supported", v1037, 0xCu);
    }

    *__error() = v52;
    v50 = *v10;
    if (*(*v10 + 15714))
    {
      v51 = 0x8000;
    }

    else
    {
      v51 = 0;
    }

    v3 = v919;
  }

  v55 = *(v50 + 45);
  if (*(v50 + 45))
  {
    v56 = 256;
  }

  else
  {
    v56 = 0;
  }

  if (*(v50 + 46))
  {
    v57 = 1024;
  }

  else
  {
    v57 = 0;
  }

  v1025 = createIndex(*(v50 + 64), v7, v48, v49, v47 | (16 * (v733 == v9)) | v56 | v57 | v51, 1, 0, &v1031, *(v50 + 4), *(v50 + 14384), *(v3 + 64), *(v50 + 4936), *(v50 + 15716));
  if (v1031)
  {
    result = 0;
    goto LABEL_801;
  }

  v59 = v3;
  v60 = v5;
  v827 = v55;
  *(v1025 + 40) = v742;
  v61 = v745;
  *(v1025 + 15560) = v744;
  *(v1025 + 15568) = v61;
  v62 = v59;
  v1024 = (*(v59 + 16))(*(v59 + 32));
  v63 = CICleanUpThreadLoc();
  v64 = &threadData[9 * v63];
  v65 = *(v64 + 8);
  v888 = (v64 + 4);
  v66 = v891;
  v67 = malloc_type_calloc(1uLL, 240 * v891 + 256, 0xDCABA7F9uLL);
  v67[30] = v67 + 32;
  v67[31] = &v67[2 * v66 + 32];
  v825 = v63;
  CICleanUpPush(v63, MEMORY[0x1E69E9B38], v67);
  v69 = v67[30];
  v68 = v67[31];
  v908 = v67;
  if (*(v1025 + 8) != 1)
  {
    v83 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO);
    v78 = v60;
    v79 = v62;
    v81 = v922;
    if (v83)
    {
      *v1037 = 0;
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", v1037, 2u);
    }

    goto LABEL_740;
  }

  v906 = v69;
  v907 = v68;
  v915 = v65;
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v1023 = 0;
  memset(v1022, 0, sizeof(v1022));
  v71 = *(v1025 + 64);
  v917 = add_explicit;
  v72 = setThreadIdAndInfo(v71, sIndexExceptionCallbacks, v1025, 0x20000000, add_explicit + 1);
  *&v1022[8] = HIDWORD(v72);
  v1023 = v72;
  *&v1022[4] = v73;
  *v1022 = v74;
  v75 = threadData[9 * v72 + 1] + 320 * HIDWORD(v72);
  *(v75 + 216) = 0;
  v76 = *(v75 + 312);
  v77 = *(v75 + 224);
  v78 = v60;
  if (v77)
  {
    v77(*(v75 + 288));
  }

  v1021 = v1023;
  v1020 = *&v1022[8];
  v1019 = *v1022;
  v79 = v62;
  if (_setjmp(v75))
  {
    v80 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v81 = v922;
    if (v80)
    {
      *v1037 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v1037, 2u);
    }

    *(v75 + 312) = v76;
    if ((~*(v75 + 212) & 0xA0000000) == 0)
    {
      v82 = *(v75 + 288);
      if (v82)
      {
        _CIMakeInvalid(v82);
      }
    }

    CIOnThreadCleanUpReset(v1019);
    dropThreadId(v1021, 1, v917 + 1);
    CICleanUpReset(v1021, HIDWORD(v1019));
    goto LABEL_740;
  }

  v916 = v76;
  *(v1025 + 4680) = 1;
  bzero(v1045, 0x848uLL);
  v1042[0] = v1025 + 96;
  v1048 = 0u;
  *&v1045[1044] = 0u;
  v1046 = 0;
  v1042[1] = 1;
  v1043 = 0u;
  v1044 = 0u;
  LODWORD(v1043) = 1;
  v1047 = 0;
  v817 = v1025;
  v1015 = 0;
  v1016 = &v1015;
  v1017 = 0x2000000000;
  v1018 = 0;
  v1013[0] = 0;
  v1013[1] = v1013;
  v1013[2] = 0x2000000000;
  v1014 = 0;
  v84 = v918;
  v85 = atomic_load((*v918 + 15192));
  v86 = 1;
  if (!v85)
  {
    v86 = (*(v62 + 16))(*(v62 + 32));
  }

  v1024 = v86;
  v87 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 500, 0, 0);
  v88 = MEMORY[0x1E695E9E8];
  v911 = CFDictionaryCreateMutable(v87, 500, 0, MEMORY[0x1E695E9E8]);
  v1009 = 0;
  v1010 = &v1009;
  v1011 = 0x2000000000;
  v912 = v87;
  v1012 = CFDictionaryCreateMutable(v87, 500, 0, v88);
  bzero(v1041, 0x400uLL);
  accurate_realpath(".", v1041);
  bzero(v1040, 0x400uLL);
  snprintf(v1040, 0x400uLL, "tmp.merge.termIdFile.%d", atomic_fetch_add_explicit(mergeIndexData_termIdFileCount, 1u, memory_order_relaxed) + 1);
  v1032 = openat(*(v1025 + 64), v1040, 536873474, 384);
  unlinkat(*(v1025 + 64), v1040, 0);
  if (v1032 == -1)
  {
    v89 = *__error();
    v90 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
    {
      v319 = *__error();
      *v1037 = 136315650;
      *&v1037[4] = "mergeIndexData";
      v1038 = 1024;
      LODWORD(v1039[0]) = 2086;
      WORD2(v1039[0]) = 1024;
      *(v1039 + 6) = v319;
      _os_log_error_impl(&dword_1C278D000, v90, OS_LOG_TYPE_ERROR, "%s:%d: open termIdFile error: %d", v1037, 0x18u);
    }

    *__error() = v89;
    v1024 = 1;
  }

  bzero(v1037, 0x11000uLL);
  v1005 = 0;
  v1006 = &v1005;
  v1007 = 0x2000000000;
  v1008 = 0;
  v1001 = 0;
  v1002 = &v1001;
  v1003 = 0x2000000000;
  v1004 = 0;
  v997 = 0;
  v998 = &v997;
  v999 = 0x2000000000;
  v1000 = 0;
  v993 = 0;
  v994 = &v993;
  v995 = 0x2000000000;
  v996 = 0;
  v920 = v78;
  if (v9 <= 1)
  {
    *(v1025 + 52) = 0;
    v91 = malloc_type_calloc(v9, 8uLL, 0x80040B8603338uLL);
    v93 = v91;
    if (v9 < 1)
    {
      goto LABEL_91;
    }
  }

  else
  {
    *(v1025 + 52) = 1;
    v91 = malloc_type_calloc(v9, 8uLL, 0x80040B8603338uLL);
    v93 = v91;
  }

  v94 = 0;
  *&v92 = 136315650;
  v700 = v92;
  do
  {
    v95 = v84[v94];
    v96 = *(v95 + 4912);
    if (v96)
    {
      v97 = *(v95 + 4912);
      std::mutex::lock((v96 + 16));
      v98 = *__error();
      v99 = _SILogForLogForCategory(16);
      if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
      {
        v100 = (v96 + 128);
        if (*(v96 + 151) < 0)
        {
          v100 = *v100;
        }

        v101 = v100;
        IVFVectorIndex_s::name(&v1033, v96 + 8);
        if ((v1033.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v102 = &v1033;
        }

        else
        {
          v102 = v1033.__r_.__value_.__r.__words[0];
        }

        v1036.f_bsize = v700;
        *&v1036.f_iosize = v101;
        WORD2(v1036.f_blocks) = 2048;
        *(&v1036.f_blocks + 6) = v96 + 8;
        HIWORD(v1036.f_bfree) = 2080;
        v1036.f_bavail = v102;
        _os_log_impl(&dword_1C278D000, v99, OS_LOG_TYPE_DEFAULT, "[%s] createVectorIndexDumpContext: %p %s", &v1036, 0x20u);
        if (SHIBYTE(v1033.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v1033.__r_.__value_.__l.__data_);
        }

        v84 = v918;
      }

      *__error() = v98;
      if (*(v96 + 13) == 1)
      {
        v529 = __si_assert_copy_extra_332();
        v530 = v529;
        v531 = "";
        if (v529)
        {
          v531 = v529;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 4906, "!fMerging", v531);
LABEL_637:
        free(v530);
        if (__valid_fs(-1))
        {
          v532 = 2989;
        }

        else
        {
          v532 = 3072;
        }

        *v532 = -559038737;
        abort();
      }

      *(v96 + 13) = 1;
      std::mutex::unlock((v96 + 16));
      v93[v94] = v96 + 8;
      v9 = v921;
    }

    ++v94;
  }

  while (v9 != v94);
  v78 = v920;
  if (v9 < 1)
  {
    v79 = v919;
  }

  else
  {
    v79 = v919;
    if ((v1024 & 1) == 0)
    {
      for (i = 0; i != v9; ++i)
      {
        v91 = *(v84[i] + 4912);
        if (v91)
        {
          v91 = processVectorIndexDumpContexts(v91, i, v9, v93, 1);
        }
      }
    }
  }

LABEL_91:
  v913 = v93;
  v989 = 0;
  v990 = &v989;
  v991 = 0x2000000000;
  v992 = 0;
  if ((v1024 & 1) == 0)
  {
    v976 = MEMORY[0x1E69E9820];
    v977 = 0x40000000;
    v978 = __mergeIndexData_block_invoke;
    v979 = &unk_1E81949F8;
    v980 = &v1005;
    v988 = v1032;
    v987 = v1037;
    v981 = &v997;
    v982 = &v1015;
    v983 = v1013;
    v984 = &v1001;
    v985 = &v993;
    v986 = &v989;
    v91 = iterateTermsForIndexes(v1025);
    v1024 = v91;
  }

  if ((v1024 & 1) != 0 || (v104 = atomic_load((*v84 + 15192))) != 0)
  {
    v105 = 1;
  }

  else
  {
    v91 = (*(v79 + 16))(*(v79 + 32));
    v105 = v91;
  }

  v1024 = v105;
  if ((v105 & 1) == 0)
  {
    v91 = prot_pwrite(v1032, v1037, v1006[3], v998[3]);
    if (v91 == -1)
    {
      v108 = *__error();
      v109 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
      {
        v320 = *__error();
        v1036.f_bsize = 136315650;
        *&v1036.f_iosize = "mergeIndexData";
        WORD2(v1036.f_blocks) = 1024;
        *(&v1036.f_blocks + 6) = 2208;
        WORD1(v1036.f_bfree) = 1024;
        HIDWORD(v1036.f_bfree) = v320;
        _os_log_error_impl(&dword_1C278D000, v109, OS_LOG_TYPE_ERROR, "%s:%d: pwrite error: %d", &v1036, 0x18u);
      }

      v91 = __error();
      *v91 = v108;
    }

    else if (!atomic_load((*v84 + 15192)))
    {
      v91 = (*(v79 + 16))(*(v79 + 32));
      v107 = v91;
LABEL_105:
      v1024 = v107;
      goto LABEL_106;
    }

    v107 = 1;
    goto LABEL_105;
  }

LABEL_106:
  if ((v1024 & 1) != 0 || (v110 = atomic_load((*v84 + 15192))) != 0)
  {
    v111 = 1;
  }

  else
  {
    v91 = (*(v79 + 16))(*(v79 + 32));
    v111 = v91;
  }

  v1024 = v111;
  if ((v111 & 1) == 0)
  {
    v112 = *(v1016 + 6);
    if (*(v1025 + 9400) <= v112)
    {
      v91 = termIdStoreAllocBulk(v1025 + 4984, v112 - *(v1025 + 9400) + 1);
      if (v91)
      {
        v1024 = 1;
      }
    }
  }

  if ((v1024 & 1) == 0)
  {
    v113 = *(v1016 + 6);
    if (*(v1025 + 14120) <= v113)
    {
      v91 = termIdStoreAllocBulk(v1025 + 9704, v113 - *(v1025 + 14120) + 1);
      if (v91)
      {
        v1024 = 1;
      }
    }
  }

  v114 = v825;
  v115 = v817;
  v910 = Mutable;
  v116 = MEMORY[0x1E69E9AC8];
  v909 = v825;
  v905 = v817;
  if (v1024)
  {
    goto LABEL_688;
  }

  v850 = v693;
  MEMORY[0x1EEE9AC00](v91);
  v118 = &v693[-((v117 + 15) & 0xFFFFFFFFFFFFFFF0)];
  bzero(v118, v117);
  v904 = v118;
  bzero(v118, 24 * v9);
  MEMORY[0x1EEE9AC00](v119);
  v121 = &v693[-((v120 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v880 = v121;
  bzero(v121, v120);
  if (v9 >= 1)
  {
    v122 = v84;
    v123 = v121;
    v124 = v9;
    do
    {
      v125 = *v122++;
      *v123++ = *(v125 + 68);
      --v124;
    }

    while (v124);
  }

  v902 = v827;
  v903 = v121;
  if (!v78)
  {
    v816 = CFSetCreateMutable(0, v9, MEMORY[0x1E695E9F8]);
    v815 = CICleanUpPush(v114, MEMORY[0x1E695D7C0], v816);
    if (v9 < 1)
    {
      v243 = 0;
      v127 = 1;
LABEL_277:
      v245 = v815;
      atomic_store(v243, (v1025 + 16));
      v244 = v127;
      v246 = v816;
      v9 = v921;
      v114 = v909;
      goto LABEL_278;
    }

    v183 = 0;
    v184 = 0;
    v813 = 24;
    v812 = 72;
    v811 = 320;
    v810 = 15192;
    while (1)
    {
      v185 = &v904[v183 * v813];
      *v185 = 1;
      v186 = &v84[v183];
      v187 = *v186;
      *(v185 + 1) = *(*v186 + 80) - *(v1025 + 80);
      v188 = CIIndexSetCreateWithRange(0, *(v187 + 68), 2);
      if (v188)
      {
        CFSetSetValue(v816, v188);
        CFRelease(v188);
      }

      *(v185 + 2) = v188;
      v189 = *(v1025 + 72);
      v190 = *v186;
      v191 = *(*v186 + 80);
      v192 = *(v1025 + 80);
      if (v183)
      {
        v193 = *(*v186 + 80);
        v194 = *(v186 - 1);
        v195 = *(v194 + 68);
        v196 = *(v194 + 80);
        if (v195 >= 2)
        {
          v197 = v195;
        }

        else
        {
          v197 = 0;
        }

        v184 += v191 - v196 - v197;
      }

      v806 = v184;
      v198 = (v191 - v192);
      v199 = atomic_load((v190 + 16));
      v805 = v199;
      LOBYTE(v973) = 0;
      v200 = *v186;
      if (*(*v186 + 8) != 1)
      {
        break;
      }

      v201 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
      LODWORD(v1033.__r_.__value_.__l.__data_) = 0;
      LODWORD(v965) = 0;
      LODWORD(v948) = 0;
      LODWORD(v944) = 0;
      v202 = *(v200 + 64);
      v804 = v201;
      v203 = setThreadIdAndInfo(v202, sIndexExceptionCallbacks, v200, 0x20000000, v201 + 1);
      LODWORD(v965) = HIDWORD(v203);
      LODWORD(v1033.__r_.__value_.__l.__data_) = v203;
      LODWORD(v948) = v204;
      LODWORD(v944) = v205;
      v206 = *(&threadData[1] + v203 * v812) + HIDWORD(v203) * v811;
      *(v206 + 216) = 0;
      v784 = *(v206 + 312);
      v207 = *(v206 + 224);
      if (v207)
      {
        v207(*(v206 + 288));
      }

      LODWORD(v951[0]) = v1033.__r_.__value_.__l.__data_;
      v975[0] = v965;
      v974 = __PAIR64__(v948, v944);
      if (!_setjmp(v206))
      {
        if (*(*v186 + 68) >= 2u)
        {
          v212 = 1;
          v213 = v198;
          v214 = v189;
          while (1)
          {
            v215 = v214;
            v216 = v213;
            v217 = v213 + 1;
            if (v213 + 1 >= v215)
            {
              v239 = v215;
              while (1)
              {
                v215 = v239;
                if (indexGrowDocumentPayloads(v1025, 0, 0))
                {
                  break;
                }

                if (v1024)
                {
                  break;
                }

                if (atomic_load((*v918 + v810)))
                {
                  break;
                }

                v1024 = (*(v79 + 16))(*(v79 + 32));
                if ((v1024 & 1) == 0)
                {
                  v239 = *(v1025 + 72);
                  v215 = v239;
                  if (v217 >= v239)
                  {
                    continue;
                  }
                }

                goto LABEL_228;
              }

              v1024 = 1;
            }

LABEL_228:
            v214 = v215;
            v84 = v918;
            if (v1024)
            {
              goto LABEL_264;
            }

            if (v902)
            {
              v218 = *v186;
              v219 = *(*(*v186 + 14432) + v212);
            }

            else
            {
              v219 = (*(*(*v186 + 14432) + 4 * (v212 / 5uLL)) >> (6 * (v212 % 5))) & 0x3F;
              v218 = *v186;
            }

            v220 = v218;
            v221 = *(v218 + 80) + v212 - *(v1025 + 80);
            v222 = v221;
            if (v219)
            {
              v223 = v221;
              v224 = *(v185 + 2);
              v1036.f_bsize = -1;
              _CIIndexSetAddIndex(v224, v212, 0, &v1036, v208);
              v225 = v223;
              v226 = *v186;
              *(*(v1025 + 14408) + 8 * v223) = *(*(*v186 + 14408) + 8 * v212);
              v227 = *(v226 + 14416);
              if (v227)
              {
                *(*(v1025 + 14416) + 4 * v223) = *(v227 + 4 * v212);
              }

              v228 = *(v226 + 14424);
              if (v228)
              {
                *(*(v1025 + 14424) + 8 * v223) = *(v228 + 8 * v212);
              }

              v84 = v918;
              if (*(v1025 + 45) == 1)
              {
                v229 = *(*(v1025 + 14432) + v225);
              }

              else
              {
                v229 = (*(*(v1025 + 14432) + 4 * (v222 / 5uLL)) >> (6 * (v222 % 5))) & 0x3F;
              }

              if ((v229 & 0xFFFFFFDF) != 0)
              {
                v650 = __si_assert_copy_extra_7645(0, -1);
                v644 = v650;
                v651 = "";
                if (v650)
                {
                  HIDWORD(v651) = HIDWORD(v650);
                }

                HIDWORD(v692) = HIDWORD(v651);
                goto LABEL_850;
              }

              if (*(v1025 + 45) == 1)
              {
                *(*(v1025 + 14432) + v225) = v219;
                if (*(v1025 + 14440))
                {
                  *(*(v1025 + 14440) + v225 / (32 * *MEMORY[0x1E69E9AC8])) |= 1 << ((v225 / (4 * *MEMORY[0x1E69E9AC8])) & 7);
                }
              }

              else
              {
                v230 = v222 / 5uLL;
                v231 = *(*(v1025 + 14432) + 4 * v230);
                if (*(v1025 + 14440))
                {
                  v232 = MEMORY[0x1E69E9AC8];
                  v233 = v230 / (8 * *MEMORY[0x1E69E9AC8]);
                  v234 = (v230 / *MEMORY[0x1E69E9AC8]) & 7;
                  *(*(v1025 + 14440) + v233) |= 1 << v234;
                  if (!*(*(v1025 + 14440) + v233))
                  {
                    v658 = __si_assert_copy_extra_7645(0, -1);
                    v644 = v658;
                    v659 = "";
                    if (v658)
                    {
                      HIDWORD(v659) = HIDWORD(v658);
                    }

                    HIDWORD(v692) = HIDWORD(v659);
                    goto LABEL_850;
                  }

                  v235 = v234 | (8 * v233);
                  if (*v232 * v235 > v230)
                  {
                    v660 = __si_assert_copy_extra_7645(0, -1);
                    v530 = v660;
                    v653 = "";
                    if (v660)
                    {
                      HIDWORD(v653) = HIDWORD(v660);
                    }

                    goto LABEL_828;
                  }

                  if (*v232 * (v235 + 1) <= v230)
                  {
                    v661 = __si_assert_copy_extra_7645(0, -1);
                    v530 = v661;
                    v653 = "";
                    if (v661)
                    {
                      HIDWORD(v653) = HIDWORD(v661);
                    }

                    goto LABEL_828;
                  }
                }

                v236 = v222 / 5uLL;
                *(*(v1025 + 14432) + 4 * v236) = v231 & ~(63 << (6 * (v222 % 5))) | ((v219 & 0x3F) << (6 * (v222 % 5)));
                v237 = *(v1025 + 14432);
                if (*(v1025 + 45) == 1)
                {
                  v238 = *(v237 + v225);
                }

                else
                {
                  v238 = (*(v237 + 4 * v236) >> (6 * (v222 % 5))) & 0x3F;
                }

                if (v238 != (v219 & 0x3F))
                {
                  v652 = __si_assert_copy_extra_7645(0, -1);
                  v530 = v652;
                  v653 = "";
                  if (v652)
                  {
                    HIDWORD(v653) = HIDWORD(v652);
                  }

LABEL_828:
                  HIDWORD(v692) = HIDWORD(v653);
                  goto LABEL_857;
                }
              }

              v220 = *v186;
            }

            v213 = v222 + 1;
            ++v212;
            v216 = v213;
            v79 = v919;
            if (v212 >= *(v220 + 68))
            {
              goto LABEL_264;
            }
          }
        }

        v216 = v198;
LABEL_264:
        LOBYTE(v973) = 1;
        v241 = threadData[9 * LODWORD(v951[0]) + 1] + 320 * v975[0];
        *(v241 + 312) = v784;
        v242 = *(v241 + 232);
        if (v242)
        {
          v242(*(v241 + 288));
        }

        dropThreadId(LODWORD(v951[0]), 0, v804 + 1);
        v127 = v216;
        goto LABEL_267;
      }

      v209 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LOWORD(v1036.f_bsize) = 0;
        _os_log_error_impl(&dword_1C278D000, v209, OS_LOG_TYPE_ERROR, "Caught mach exception", &v1036, 2u);
      }

      *(v206 + 312) = v784;
      v78 = v920;
      if ((~*(v206 + 212) & 0xA0000000) == 0)
      {
        v210 = *(v206 + 288);
        if (v210)
        {
          _CIMakeInvalid(v210);
        }
      }

      CIOnThreadCleanUpReset(v974);
      dropThreadId(LODWORD(v951[0]), 1, v804 + 1);
      CICleanUpReset(LODWORD(v951[0]), HIDWORD(v974));
      v127 = v198;
LABEL_268:
      v243 = v805 + v806;
      if ((v973 & 1) == 0)
      {
        v1024 = 1;
        goto LABEL_277;
      }

      ++v183;
      v184 = v805 + v806;
      if (v183 == v921)
      {
        goto LABEL_277;
      }
    }

    v211 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      LOWORD(v1036.f_bsize) = 0;
      _os_log_impl(&dword_1C278D000, v211, OS_LOG_TYPE_INFO, "Skipping because index is shut down", &v1036, 2u);
    }

    v127 = v198;
LABEL_267:
    v78 = v920;
    goto LABEL_268;
  }

  v126 = malloc_type_calloc(1uLL, 0x10uLL, 0x4DBFA8FFuLL);
  if (!v126)
  {
    v666 = __si_assert_copy_extra_7645(0, -1);
    v644 = v666;
    v667 = "";
    if (v666)
    {
      v667 = v666;
    }

    __message_assert("%s:%u: failed assertion '%s' %s Got 0 from calloc for allocation of count %ld size %ld", "CIMerging.c", 1321, "p||count==0||size==0", v667, 1, 16);
    goto LABEL_851;
  }

  *v78 = v126;
  v127 = malloc_type_calloc(v9, 0x20uLL, 0x20CF981uLL);
  if (v9 && !v127)
  {
    v668 = __si_assert_copy_extra_7645(0, -1);
    v644 = v668;
    v669 = "";
    if (v668)
    {
      v669 = v668;
    }

    __message_assert("%s:%u: failed assertion '%s' %s Got 0 from calloc for allocation of count %ld size %ld", "CIMerging.c", 1322, "p||count==0||size==0", v669, v9, 32);
LABEL_851:
    v649 = v644;
    goto LABEL_852;
  }

  *(*v78 + 1) = v127;
  if (v9 < 1)
  {
    v244 = 1;
    v245 = 0;
    v246 = 0;
    goto LABEL_274;
  }

  v128 = 0;
  v824 = 0;
  v129 = 1;
  v823 = 24;
  v822 = 4;
  v821 = 3812395194;
  v820 = 72;
  v130 = MEMORY[0x1E69E9C10];
  v819 = 320;
  v818 = 15192;
  do
  {
    v131 = &v904[v128 * v823];
    *v131 = 0;
    v132 = *(v84[v128] + 68);
    v133 = malloc_type_calloc(v822, v132, v821);
    if (v132)
    {
      v134 = v133 == 0;
    }

    else
    {
      v134 = 0;
    }

    if (v134)
    {
      v646 = __si_assert_copy_extra_7645(0, -1);
      v647 = v646;
      v648 = "";
      if (v646)
      {
        v648 = v646;
      }

      __message_assert("%s:%u: failed assertion '%s' %s Got 0 from calloc for allocation of count %ld size %ld", "CIMerging.c", 1323, "p||count==0||size==0", v648, 4, v132);
      v649 = v647;
LABEL_852:
      free(v649);
      if (__valid_fs(-1))
      {
        v674 = 2989;
        goto LABEL_883;
      }

      goto LABEL_882;
    }

    *(v131 + 2) = v133;
    v135 = v920;
    v136 = *(*v920 + 1) + 32 * v128;
    *(v136 + 24) = 0;
    *(v136 + 16) = *(v131 + 2);
    ++**v135;
    v137 = *(v1025 + 72);
    v138 = v84[v128];
    v139 = 4 * *(v138 + 68);
    *&v1036.f_bsize = *(v131 + 2);
    v1036.f_blocks = v139;
    v1036.f_bfree = v824;
    v1033.__r_.__value_.__r.__words[0] = 1;
    v1033.__r_.__value_.__l.__size_ = &v1036;
    BYTE4(v962) = 0;
    if (*(v138 + 8) != 1)
    {
      if (os_log_type_enabled(v130, OS_LOG_TYPE_INFO))
      {
        LOWORD(v965) = 0;
        _os_log_impl(&dword_1C278D000, v130, OS_LOG_TYPE_INFO, "Skipping because index is shut down", &v965, 2u);
      }

      v127 = v129;
      v114 = v909;
      goto LABEL_199;
    }

    v140 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    LODWORD(v965) = 0;
    LODWORD(v948) = 0;
    LODWORD(v944) = 0;
    LODWORD(v951[0]) = 0;
    v141 = setThreadIdAndInfo(*(v138 + 64), sIndexExceptionCallbacks, v138, 0x20000000, v140 + 1);
    LODWORD(v948) = HIDWORD(v141);
    LODWORD(v965) = v141;
    LODWORD(v944) = v142;
    LODWORD(v951[0]) = v143;
    v144 = *(&threadData[1] + v141 * v820) + HIDWORD(v141) * v819;
    *(v144 + 216) = 0;
    v807 = *(v144 + 312);
    v145 = *(v144 + 224);
    if (v145)
    {
      v145(*(v144 + 288));
    }

    v975[0] = v965;
    v974 = __PAIR64__(v948, v944);
    v973 = v951[0];
    if (_setjmp(v144))
    {
      if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v972[0]) = 0;
        _os_log_error_impl(&dword_1C278D000, v130, OS_LOG_TYPE_ERROR, "Caught mach exception", v972, 2u);
      }

      *(v144 + 312) = v807;
      v114 = v909;
      if ((~*(v144 + 212) & 0xA0000000) == 0)
      {
        v146 = *(v144 + 288);
        if (v146)
        {
          _CIMakeInvalid(v146);
        }
      }

      CIOnThreadCleanUpReset(v973);
      dropThreadId(v975[0], 1, v140 + 1);
      CICleanUpReset(v975[0], v974);
      v127 = v129;
      goto LABEL_199;
    }

    if (!v1033.__r_.__value_.__r.__words[0])
    {
      v154 = os_log_type_enabled(v130, OS_LOG_TYPE_INFO);
      v114 = v909;
      if (v154)
      {
        LOWORD(v972[0]) = 0;
        _os_log_impl(&dword_1C278D000, v130, OS_LOG_TYPE_INFO, "Skipping because index is shut down", v972, 2u);
      }

      v153 = v129;
      goto LABEL_196;
    }

    v147 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v972[0] = 0;
    v971 = 0;
    v970 = 0;
    v803 = v147;
    v148 = setThreadIdAndInfo(-1, sMappingExceptionCallbacks, &v1033, 0, v147 + 1);
    v972[0] = v148;
    v971 = __PAIR64__(HIDWORD(v148), v149);
    v970 = v150;
    v151 = threadData[9 * v148 + 1] + 320 * HIDWORD(v148);
    *(v151 + 216) = 0;
    v785 = *(v151 + 312);
    v152 = *(v151 + 224);
    if (v152)
    {
      v152(*(v151 + 288));
    }

    *&v969[8] = v972[0];
    *v969 = v971;
    v968 = v970;
    if (_setjmp(v151))
    {
      if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v963[0]) = 0;
        _os_log_error_impl(&dword_1C278D000, v130, OS_LOG_TYPE_ERROR, "Caught mach exception", v963, 2u);
      }

      *(v151 + 312) = v785;
      CIOnThreadCleanUpReset(v968);
      dropThreadId(*&v969[8], 1, v803 + 1);
      CICleanUpReset(*&v969[8], *v969);
      v153 = v129;
      v114 = v909;
      goto LABEL_196;
    }

    v155 = v84[v128];
    if (*(v155 + 68) < 2u)
    {
      LODWORD(v175) = *(v155 + 68);
      v174 = v84[v128];
      v153 = v129;
      v114 = v909;
      goto LABEL_193;
    }

    v156 = 1;
    v157 = v137;
    v114 = v909;
    while (1)
    {
      v158 = v157;
      if (!v902)
      {
        break;
      }

      if (*(*(v155 + 14432) + v156))
      {
        goto LABEL_158;
      }

LABEL_167:
      v164 = v129;
LABEL_181:
      v157 = v158;
      v174 = v155;
      ++v156;
      v175 = *(v155 + 68);
      v129 = v164;
      if (v156 >= v175)
      {
        v153 = v164;
        goto LABEL_193;
      }
    }

    if (((*(*(v155 + 14432) + 4 * (v156 / 5uLL)) >> (6 * (v156 % 5))) & 0x3F) == 0)
    {
      goto LABEL_167;
    }

LABEL_158:
    if (v129 + 1 >= v157)
    {
      v176 = v157;
      while (!indexGrowDocumentPayloads(v1025, 0, 0))
      {
        if (v1024)
        {
          break;
        }

        if (atomic_load((*v918 + v818)))
        {
          break;
        }

        v1024 = (*(v919 + 16))(*(v919 + 32));
        v158 = v176;
        if ((v1024 & 1) == 0)
        {
          v176 = *(v1025 + 72);
          v158 = v176;
          if (v129 + 1 >= v176)
          {
            continue;
          }
        }

        goto LABEL_159;
      }

      v1024 = 1;
      v158 = v176;
    }

LABEL_159:
    v159 = v158;
    v84 = v918;
    v160 = v918[v128];
    if (v1024 != 1)
    {
      *(*(v131 + 2) + 4 * v156) = v129;
      *(*(v1025 + 14408) + 8 * v129) = *(*(v160 + 14408) + 8 * v156);
      v161 = *(v160 + 14416);
      if (v161)
      {
        *(*(v1025 + 14416) + 4 * v129) = *(v161 + 4 * v156);
      }

      v162 = *(v160 + 14424);
      if (v162)
      {
        *(*(v1025 + 14424) + 8 * v129) = *(v162 + 8 * v156);
      }

      if (v902)
      {
        LOBYTE(v163) = *(*(v84[v128] + 14432) + v156);
      }

      else
      {
        v163 = (*(*(v84[v128] + 14432) + 4 * (v156 / 5uLL)) >> (6 * (v156 % 5))) & 0x3F;
      }

      if (*(v1025 + 45) == 1)
      {
        *(*(v1025 + 14432) + v129) = v163;
        if (*(v1025 + 14440))
        {
          *(*(v1025 + 14440) + v129 / (32 * *MEMORY[0x1E69E9AC8])) |= 1 << ((v129 / (4 * *MEMORY[0x1E69E9AC8])) & 7);
        }

        goto LABEL_180;
      }

      v165 = v129 / 5uLL;
      v166 = *(*(v1025 + 14432) + 4 * v165);
      if (*(v1025 + 14440))
      {
        v167 = MEMORY[0x1E69E9AC8];
        v168 = v165 / (8 * *MEMORY[0x1E69E9AC8]);
        v169 = (v165 / *MEMORY[0x1E69E9AC8]) & 7;
        *(*(v1025 + 14440) + v168) |= 1 << v169;
        if (*(*(v1025 + 14440) + v168))
        {
          v170 = v169 | (8 * v168);
          if (*v167 * v170 <= v165)
          {
            if (*v167 * (v170 + 1) > v165)
            {
              goto LABEL_176;
            }

            v675 = __si_assert_copy_extra_7645(0, -1);
            v530 = v675;
            v676 = "";
            if (v675)
            {
              HIDWORD(v676) = HIDWORD(v675);
            }

            HIDWORD(v692) = HIDWORD(v676);
LABEL_857:
            __message_assert("%s:%u: failed assertion '%s' %s ");
            goto LABEL_637;
          }

          v673 = __si_assert_copy_extra_7645(0, -1);
          v644 = v673;
          v665 = "";
          if (v673)
          {
            HIDWORD(v665) = HIDWORD(v673);
          }
        }

        else
        {
          v672 = __si_assert_copy_extra_7645(0, -1);
          v644 = v672;
          v665 = "";
          if (v672)
          {
            HIDWORD(v665) = HIDWORD(v672);
          }
        }
      }

      else
      {
LABEL_176:
        v171 = v163 & 0x3F;
        *(*(v1025 + 14432) + 4 * (v129 / 5uLL)) = v166 & ~(63 << (6 * (v129 % 5))) | (v171 << (6 * (v129 % 5)));
        v172 = *(v1025 + 14432);
        if (*(v1025 + 45) == 1)
        {
          v173 = *(v172 + v129);
        }

        else
        {
          v173 = (*(v172 + 4 * v165) >> (6 * (v129 % 5))) & 0x3F;
        }

        if (v173 == v171)
        {
LABEL_180:
          v155 = v84[v128];
          v158 = v159;
          v164 = (v129 + 1);
          v114 = v909;
          goto LABEL_181;
        }

        v664 = __si_assert_copy_extra_7645(0, -1);
        v644 = v664;
        v665 = "";
        if (v664)
        {
          HIDWORD(v665) = HIDWORD(v664);
        }
      }

      HIDWORD(v692) = HIDWORD(v665);
      goto LABEL_850;
    }

    LODWORD(v175) = *(v160 + 68);
    v174 = v918[v128];
    v153 = v129;
    v114 = v909;
LABEL_193:
    v178 = *(*v920 + 1) + 32 * v128;
    *v178 = *(v174 + 80);
    *(v178 + 8) = v175;
    BYTE4(v962) = 1;
    v179 = threadData[9 * *&v969[8] + 1] + 320 * *&v969[4];
    *(v179 + 312) = v785;
    v180 = *(v179 + 232);
    if (v180)
    {
      v180(*(v179 + 288));
    }

    dropThreadId(*&v969[8], 0, v803 + 1);
LABEL_196:
    v181 = threadData[9 * v975[0] + 1] + 320 * HIDWORD(v974);
    *(v181 + 312) = v807;
    v182 = *(v181 + 232);
    if (v182)
    {
      v182(*(v181 + 288));
    }

    dropThreadId(v975[0], 0, v140 + 1);
    v127 = v153;
LABEL_199:
    if ((v962 & 0x100000000) == 0)
    {
      v1024 = 1;
      break;
    }

    ++v128;
    v129 = v127;
  }

  while (v128 != v921);
  v244 = v127;
  v245 = 0;
  v246 = 0;
  v9 = v921;
  v78 = v920;
LABEL_274:
  v79 = v919;
LABEL_278:
  v898 = v245;
  v899 = v246;
  if (v244 <= 1)
  {
    v247 = 1;
  }

  else
  {
    v247 = v244;
  }

  *(v1025 + 68) = v247;
  if (*(v1025 + 80) + *(v1025 + 68) > *(v84[v9 - 1] + 80) + *(v84[v9 - 1] + 68))
  {
    v662 = __si_assert_copy_extra_7645(0, -1);
    v530 = v662;
    v663 = "";
    if (v662)
    {
      HIDWORD(v663) = HIDWORD(v662);
    }

    HIDWORD(v692) = HIDWORD(v663);
    goto LABEL_857;
  }

  v894 = v908;
  v893 = v906;
  v248 = v907;
  v249 = v850;
  while (v244 >= *(v1025 + 72))
  {
    v127 = indexGrowDocumentPayloads(v1025, 0, 0);
    if (v127 || (v1024 & 1) != 0 || (v250 = atomic_load((*v918 + 15192))) != 0)
    {
      v1024 = 1;
      break;
    }

    v127 = (*(v79 + 16))(*(v79 + 32));
    v1024 = v127;
    if (v127)
    {
      break;
    }
  }

  v897 = v693;
  v905[619] = 8;
  v251 = 8 * v891;
  MEMORY[0x1EEE9AC00](v127);
  v252 = &v693[-((v251 + 15) & 0xFFFFFFFFFFFFFFF0)];
  bzero(v252, v251);
  MEMORY[0x1EEE9AC00](v253);
  bzero(v252, v251);
  v965 = 0;
  v967 = 0u;
  v966 = 0x8000;
  v965 = malloc_type_malloc(0x8000uLL, 0x82ECAA0EuLL);
  v890 = CICleanUpPush(v114, RunBufferDestroy, &v965);
  v948 = xmmword_1C2BFF7A8;
  v949 = 0x100000;
  v964 = 1;
  v254 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  LODWORD(v951[0]) = 0;
  v975[0] = 0;
  v974 = 0;
  v896 = v254;
  v255 = setThreadIdAndInfo(-1, sMergeExceptionCallbacks, &v948, 0, v254 + 1);
  v975[0] = HIDWORD(v255);
  LODWORD(v951[0]) = v255;
  v974 = __PAIR64__(v256, v257);
  v258 = threadData[9 * v255 + 1] + 320 * HIDWORD(v255);
  v895 = *(v258 + 312);
  v259 = *(v258 + 224);
  if (v259)
  {
    v259(*(v258 + 288));
  }

  v973 = v951[0];
  v972[0] = v975[0];
  v971 = v974;
  v260 = _setjmp(v258);
  v84 = v918;
  if (v260)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v1036.f_bsize) = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", &v1036, 2u);
    }

    *(v258 + 312) = v895;
    CIOnThreadCleanUpReset(v971);
    dropThreadId(v973, 1, v896 + 1);
    CICleanUpReset(v973, HIDWORD(v971));
    v79 = v919;
    v116 = MEMORY[0x1E69E9AC8];
    v261 = v899;
    goto LABEL_661;
  }

  v262 = (*MEMORY[0x1E69E9AC8] + v892) & ~*MEMORY[0x1E69E9AB8];
  v263 = v905;
  v905[621] = v262;
  v264 = fd_truncate(v263[1179], v262);
  v809 = v248;
  if (v264 == -1)
  {
    v265 = *__error();
    v266 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v266, OS_LOG_TYPE_ERROR))
    {
      v533 = *__error();
      v1036.f_bsize = 136315650;
      *&v1036.f_iosize = "mergeIndexData";
      WORD2(v1036.f_blocks) = 1024;
      *(&v1036.f_blocks + 6) = 2455;
      WORD1(v1036.f_bfree) = 1024;
      HIDWORD(v1036.f_bfree) = v533;
      _os_log_error_impl(&dword_1C278D000, v266, OS_LOG_TYPE_ERROR, "%s:%d: ftruncate error: %d", &v1036, 0x18u);
    }

    *__error() = v265;
    v1024 = 1;
    v248 = v809;
  }

  else
  {
    *&v948 = fd_mmap(v263[1179]);
    if (v948 == -1)
    {
      v1024 = 1;
    }
  }

  v886 = *v888;
  v267 = v893;
  bzero(v893, 16 * v9);
  bzero(v248, 224 * v9);
  v884 = v252;
  v885 = v252;
  if (v9 >= 1)
  {
    v901 = v249;
    v728 = 4203394872;
    v725 = 0x10000;
    v724 = 1200167462;
    v268 = v252;
    v269 = v252;
    v270 = v9;
    v271 = v84;
    v272 = v248;
    while (1)
    {
      v273 = v270;
      v274 = atomic_load((*v271 + 36));
      v714 = v269;
      v715 = v268;
      *v269 = 0;
      v275 = *(*v271 + 9432);
      *v268 = v275;
      v267[1] = 0;
      if ((v274 & 4) != 0)
      {
        break;
      }

      v276 = fd_lseek(v275, 0, 2);
      if (v276 == -1 || (v277 = v276, v278 = fd_mmap(v275), v278 == -1))
      {
        if (!v267[1])
        {
          break;
        }
      }

      else
      {
        if (!v278)
        {
          v654 = __si_assert_copy_extra_7645(0, -1);
          v644 = v654;
          v655 = "";
          if (v654)
          {
            HIDWORD(v655) = HIDWORD(v654);
          }

          HIDWORD(v692) = HIDWORD(v655);
          goto LABEL_850;
        }

        *v267 = v278;
        v267[1] = v277;
        if (!v277)
        {
          break;
        }
      }

LABEL_309:
      CICleanUpPush(v114, finalizeReadBuffer, v267);
      v279 = *(*v271 + 14152);
      *(v272 + 65) = 0;
      *v272 = v279;
      *(v272 + 24) = 0;
      v280 = (v272 + 24);
      *(v272 + 32) = 0;
      *(v272 + 216) = v1026;
      *(v272 + 200) = -1;
      *(v272 + 208) = -1;
      if ((v274 & 4) == 0)
      {
        v281 = fd_lseek(v279, 0, 2);
        if ((v281 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v282 = v281;
          v283 = fd_mmap(v279);
          if (v283 != -1)
          {
            *(v272 + 24) = v283;
            *(v272 + 32) = v282;
            v285 = v714;
            v284 = v715;
            if (v283)
            {
              *(v272 + 8) = 0;
              *(v272 + 16) = 0;
            }

            goto LABEL_321;
          }
        }
      }

      if (*(v272 + 32))
      {
        v286 = *v280;
        v285 = v714;
        v284 = v715;
        if (!*v280)
        {
          goto LABEL_321;
        }

        *(v272 + 8) = 0;
        *(v272 + 16) = 0;
        v287 = v286;
        if ((v274 & 4) == 0)
        {
          goto LABEL_321;
        }

        goto LABEL_320;
      }

      v288 = malloc_type_malloc(v725, v724);
      *v280 = v288;
      v285 = v714;
      v284 = v715;
      if (v288)
      {
        *(v272 + 8) = 0;
        *(v272 + 16) = 0;
        v287 = v288;
LABEL_320:
        fd_pread(*v272, v287, 0x10000uLL, 0);
      }

LABEL_321:
      v114 = v909;
      v289 = CICleanUpPush(v909, finalizeReadPosContext, v272);
      v290 = atomic_load((*v271 + 36));
      if ((v290 & 4) != 0)
      {
        *(v272 + 56) = 0;
        *(v272 + 66) = 1;
      }

      v272 += 224;
      ++v271;
      v269 = v285 + 1;
      v268 = v284 + 1;
      v267 += 2;
      v270 = v273 - 1;
      if (v273 == 1)
      {
        v291 = v289;
        v9 = v921;
        v78 = v920;
        v84 = v918;
        v249 = v901;
        v267 = v893;
        goto LABEL_329;
      }
    }

    *v267 = malloc_type_malloc(*MEMORY[0x1E69E9AC8] << 6, v728);
    goto LABEL_309;
  }

  v291 = 0;
LABEL_329:
  v881 = v291;
  v292 = v894;
  *(v894 + 120) = v9;
  *(v292 + 128) = v267;
  v293 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v970 = 0;
  memset(v969, 0, sizeof(v969));
  v294 = setThreadIdAndInfo(-1, mergeIndexData_sExcReadBufferCallbacks, v908 + 120, 0, v293 + 1);
  *&v969[8] = HIDWORD(v294);
  v970 = v294;
  *&v969[4] = v295;
  *v969 = v296;
  v297 = threadData[9 * v294 + 1] + 320 * HIDWORD(v294);
  v887 = *(v297 + 312);
  v298 = *(v297 + 224);
  v79 = v919;
  if (v298)
  {
    v298(*(v297 + 288));
  }

  v968 = v970;
  v963[0] = *&v969[8];
  v962 = *v969;
  v299 = _setjmp(v297);
  v116 = MEMORY[0x1E69E9AC8];
  if (v299)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v1036.f_bsize) = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", &v1036, 2u);
    }

    *(v297 + 312) = v887;
    CIOnThreadCleanUpReset(v962);
    dropThreadId(v968, 1, v293 + 1);
    CICleanUpReset(v968, HIDWORD(v962));
    v261 = v899;
    goto LABEL_658;
  }

  v300 = v894;
  v301 = v809;
  *(v894 + 136) = v9;
  *(v300 + 144) = v301;
  LODWORD(v301) = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v961 = 0;
  memset(v960, 0, sizeof(v960));
  v883 = v301;
  v302 = setThreadIdAndInfo(-1, mergeIndexData_sExcReadPositionsCallbacks, v908 + 136, 0, v301 + 1);
  *&v960[8] = HIDWORD(v302);
  v961 = v302;
  *&v960[4] = v303;
  *v960 = v304;
  v305 = threadData[9 * v302 + 1] + 320 * HIDWORD(v302);
  v882 = *(v305 + 312);
  v306 = *(v305 + 224);
  if (v306)
  {
    v306(*(v305 + 288));
  }

  v959 = v961;
  v958 = *&v960[8];
  v957 = *v960;
  if (_setjmp(v305))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v1036.f_bsize) = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", &v1036, 2u);
    }

    *(v305 + 312) = v882;
    CIOnThreadCleanUpReset(v957);
    dropThreadId(v959, 1, v883 + 1);
    CICleanUpReset(v959, HIDWORD(v957));
    v261 = v899;
    goto LABEL_655;
  }

  v889 = v293;
  v307 = v908;
  *(v908 + 104) = 0u;
  *(v307 + 88) = 0u;
  v877 = CICleanUpPush(v114, ChangeHolderFreeDocIds, v307 + 88);
  v998[3] = 0;
  v1006[3] = 0;
  if (prot_pread(v1032, v1037, 0x10000uLL, 0) == -1)
  {
    v1024 = 1;
  }

  v308 = v894;
  *(v894 + 80) = 0;
  v308[3] = 0u;
  v308[4] = 0u;
  *v308 = 0u;
  v308[1] = 0u;
  v308[2] = 0u;
  v876 = v308 + 2;
  FlattenPostingsContextInit((v308 + 2));
  v875 = CICleanUpPush(v114, packContextDestroy, v308);
  *(v307 + 152) = 0u;
  *(v307 + 168) = 0u;
  *(v307 + 184) = 0u;
  *(v307 + 200) = 0u;
  *(v307 + 216) = 0u;
  *(v307 + 232) = 0;
  writeWindowInit(v307 + 152, (v1025 + 9664), 3 * v994[3] + v900, (*(*v84 + 15713) & 1) == 0);
  v309 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v956 = 0;
  memset(v955, 0, sizeof(v955));
  v879 = v309;
  v310 = setThreadIdAndInfo(-1, sWritePosWindowExceptionCallbacks, v307 + 152, 0, v309 + 1);
  *&v955[8] = HIDWORD(v310);
  v956 = v310;
  *&v955[4] = v311;
  *v955 = v312;
  v313 = threadData[9 * v310 + 1] + 320 * HIDWORD(v310);
  v878 = *(v313 + 312);
  v314 = *(v313 + 224);
  if (v314)
  {
    v314(*(v313 + 288));
  }

  v954 = v956;
  v953 = *&v955[8];
  v952 = *v955;
  v315 = _setjmp(v313);
  v116 = MEMORY[0x1E69E9AC8];
  if (v315)
  {
    v318 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v293 = v889;
    if (v318)
    {
      LOWORD(v1036.f_bsize) = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", &v1036, 2u);
    }

    *(v313 + 312) = v878;
    CIOnThreadCleanUpReset(v952);
    dropThreadId(v954, 1, v879 + 1);
    CICleanUpReset(v954, HIDWORD(v952));
    v261 = v899;
    goto LABEL_652;
  }

  v321 = v1002[3];
  v322 = v894;
  v901 = v249;
  if (!v321)
  {
    goto LABEL_642;
  }

  v873 = v84 - 1;
  v872 = v904 - 24;
  v871 = v880 - 4;
  v874 = 0;
  v323 = 1;
  v324 = 26570;
  v870 = 15192;
  v869 = 24;
  v868 = 224;
  *&v316 = 134218240;
  v867 = v316;
  *&v316 = 136315906;
  v866 = v316;
  *&v316 = 136316162;
  v865 = v316;
  v864 = 2168;
  *&v316 = 136316418;
  *&v317 = 136316418;
  v863 = v317;
  v862 = v316;
  *&v316 = 67109120;
  v861 = v316;
  v860 = 3628666700;
  *&v316 = 134217984;
  v859 = v316;
  v858 = xmmword_1C2BFA3F0;
  v857 = 0x8200302uLL;
  v856 = 4984;
  v855 = 9704;
  v325 = 0;
  v854 = 0x10000;
  while (2)
  {
    v853 = v323;
    if (v1024)
    {
      break;
    }

    if (v325 > v324)
    {
      v1024 = 0;
      ++v324;
    }

    v852 = v324;
    if (atomic_load((*v84 + v870)))
    {
      v327 = 1;
    }

    else
    {
      v328 = (*(v79 + 16))(*(v79 + 32));
      v322 = v894;
      v327 = v328;
    }

    v329 = v908;
    v1024 = v327;
    *(v322 + 8) = 0;
    *(v322 + 24) = 0;
    v330 = v874;
    *(v322 + 16) = v874;
    *(v322 + 80) = v330;
    *(v322 + 96) = v330;
    *(v322 + 112) = v330;
    v331 = v998;
    v332 = v998[3];
    v333 = v325 + 2;
    if (v332 + 0x10000 <= v325 + 2)
    {
      v334 = v325 & ~*MEMORY[0x1E69E9AB8];
      v998[3] = v334;
      if (prot_pread(v1032, v1037, 0x10000uLL, v334) == -1)
      {
        goto LABEL_641;
      }

      v331 = v998;
      v332 = v998[3];
      v322 = v894;
    }

    v335 = *&v1037[v325 - v332];
    if (!v335)
    {
      v679 = __si_assert_copy_extra_7645(0, -1);
      v644 = v679;
      v680 = "";
      if (v679)
      {
        HIDWORD(v680) = HIDWORD(v679);
      }

      HIDWORD(v692) = HIDWORD(v680);
      goto LABEL_850;
    }

    if (v335 > v9)
    {
      v681 = __si_assert_copy_extra_7645(0, -1);
      v644 = v681;
      v682 = "";
      if (v681)
      {
        HIDWORD(v682) = HIDWORD(v681);
      }

      HIDWORD(v692) = HIDWORD(v682);
      goto LABEL_850;
    }

    v848 = v335;
    if (v332 + 0x10000 <= v333 + v335 * v869)
    {
      v336 = v333 & ~*MEMORY[0x1E69E9AB8];
      v331[3] = v336;
      v337 = prot_pread(v1032, v1037, v854, v336);
      v322 = v894;
      if (v337 == -1)
      {
        goto LABEL_641;
      }
    }

    v851 = *(v1025 + 9672);
    *(v322 + 224) = v874;
    *(v322 + 232) = -1;
    if (v902 && v333 < v990[3])
    {
      createWPCOccurenceCountMap((v329 + 200));
      v322 = v894;
    }

    if (v335 < 1)
    {
      v488 = 0;
      v489 = v333;
      goto LABEL_580;
    }

    v338 = 0xFFFFFFFFLL;
    v339 = 0;
    v340 = v906;
    v341 = v873;
    while (2)
    {
      v342 = &v1037[v333 - v998[3]];
      v343 = v342[2];
      if (v338 <= v343)
      {
        v683 = __si_assert_copy_extra_7645(0, -1);
        v530 = v683;
        v684 = "";
        if (v683)
        {
          HIDWORD(v684) = HIDWORD(v683);
        }

        HIDWORD(v692) = HIDWORD(v684);
        goto LABEL_857;
      }

      v849 = v342[2];
      v846 = v339;
      if (v339)
      {
        v344 = (v849 + 1);
        if (v338 > v344)
        {
          v345 = &v872[24 * v338];
          v346 = v338;
          do
          {
            *(v322 + 24) = *&v871[4 * v346];
            *(v322 + 16) = v345;
            *(v322 + 80) = *(v341[v346] + 14472);
            if (*(v322 + 96))
            {
              merge_checkAgainstUpdates1(v322, (v329 + 88), 0, *(v341[v346] + 80));
              v341 = v873;
              v322 = v894;
              v340 = v906;
            }

            --v346;
            v345 -= 24;
          }

          while (v346 > v344);
        }
      }

      if (v343 >= v9)
      {
        v685 = __si_assert_copy_extra_7645(0, -1);
        v644 = v685;
        v686 = "";
        if (v685)
        {
          HIDWORD(v686) = HIDWORD(v685);
        }

        HIDWORD(v692) = HIDWORD(v686);
        goto LABEL_850;
      }

      v347 = v849;
      *(v322 + 24) = *&v903[4 * v849];
      *(v322 + 16) = &v904[24 * v343];
      v84 = v918;
      *(v322 + 80) = *(v918[v347] + 14472);
      v348 = v84[v347];
      v845 = *(v348 + 14408);
      v349 = *v342;
      v350 = v342[1];
      v351 = &v340[16 * v343];
      v352 = *&v884[8 * v347];
      v353 = *(v348 + 68);
      v354 = *(v348 + 80);
      v355 = atomic_load((v348 + 36));
      v356 = *&v885[8 * v347];
      v357 = *(v919 + 40);
      v358 = *(v322 + 16);
      v359 = *(v351 + 1);
      if (v359)
      {
        v360 = dword_1EBF46AF4 < 5;
      }

      else
      {
        v360 = 1;
      }

      v361 = v907;
      v844 = *(v348 + 80);
      v843 = v355;
      if (!v360)
      {
        v696 = v353;
        v697 = v352;
        v698 = v350;
        v699 = v349;
        v694 = *__error();
        v490 = _SILogForLogForCategory(10);
        if (os_log_type_enabled(v490, OS_LOG_TYPE_DEFAULT))
        {
          v1036.f_bsize = v859;
          *&v1036.f_iosize = v699;
          _os_log_impl(&dword_1C278D000, v490, OS_LOG_TYPE_DEFAULT, "start %lld", &v1036, 0xCu);
        }

        *__error() = v694;
        v84 = v918;
        v361 = v907;
        v354 = v844;
        v355 = v843;
        v350 = v698;
        v349 = v699;
        v352 = v697;
        v353 = v696;
      }

      v847 = v333 + 24;
      v839 = v348;
      v838 = v361 + v343 * v868;
      v362 = v350;
      v842 = v352;
      v837 = v354;
      v836 = v355;
      v835 = v357;
      v834 = v358;
      v833 = v359;
      v832 = v354 + v353;
      v831 = v354 + v353;
      v363 = v356;
      v364 = v349;
      v9 = v921;
      v78 = v920;
      v329 = v908;
      v365 = v849;
      v841 = v351;
      while (2)
      {
        v840 = v364;
        v366 = v362;
        v114 = v909;
        v830 = v362;
        if (v833 && dword_1EBF46AF4 >= 5)
        {
          v458 = *__error();
          v459 = _SILogForLogForCategory(10);
          if (os_log_type_enabled(v459, OS_LOG_TYPE_DEFAULT))
          {
            v1036.f_bsize = v867;
            *&v1036.f_iosize = v841;
            WORD2(v1036.f_blocks) = 2048;
            *(&v1036.f_blocks + 6) = v840;
            _os_log_impl(&dword_1C278D000, v459, OS_LOG_TYPE_DEFAULT, "%p offset %lld", &v1036, 0x16u);
          }

          *__error() = v458;
          v9 = v921;
          v78 = v920;
          v84 = v918;
          v114 = v909;
          v329 = v908;
          v365 = v849;
          v355 = v843;
          v351 = v841;
          v366 = v830;
        }

        if (resetReadPosContext(v366, v838, (v355 >> 2) & 1) == -1)
        {
          v482 = __error();
          v483 = *v482;
          v322 = v894;
          *(v894 + 176) = *v482;
          goto LABEL_565;
        }

        v322 = v894;
        v368 = v840;
        if (!v840)
        {
          break;
        }

        if (!v833)
        {
          v372 = *MEMORY[0x1E69E9AC8] << 6;
          if (v363 && v840 > v363 && v372 + v363 > v840 + 25 || (v363 = (0x4000000000000000 - *MEMORY[0x1E69E9AC8]) & v840, *&v885[8 * v365] = v363, v373 = fd_pread(v842, *v351, v372, v363), v368 = v840, v322 = v894, v373 != -1))
          {
            v371 = v368 - v363;
            v370 = v363;
            goto LABEL_396;
          }

          v522 = __error();
          v322 = v894;
          *(v894 + 176) = *v522;
          goto LABEL_578;
        }

        *&v885[8 * v365] = v874;
        v369 = *(v351 + 1);
        if (v368 > v369)
        {
          v519 = *__error();
          v520 = _SILogForLogForCategory(10);
          if (os_log_type_enabled(v520, OS_LOG_TYPE_ERROR))
          {
            v523 = *(v841 + 1);
            v1036.f_bsize = v866;
            *&v1036.f_iosize = "unpackAndCleanse";
            WORD2(v1036.f_blocks) = 1024;
            *(&v1036.f_blocks + 6) = 3902;
            WORD1(v1036.f_bfree) = 2048;
            *(&v1036.f_bfree + 4) = v840;
            WORD2(v1036.f_bavail) = 2048;
            *(&v1036.f_bavail + 6) = v523;
            _os_log_error_impl(&dword_1C278D000, v520, OS_LOG_TYPE_ERROR, "%s:%d: Nextlink out of bounds %lld %lld", &v1036, 0x26u);
          }

          *__error() = v519;
          v322 = v894;
          *(v894 + 176) = 22;
          v84 = v918;
          goto LABEL_578;
        }

        if (v368 >= v369)
        {
          v677 = __si_assert_copy_extra_7645(0, -1);
          v644 = v677;
          v678 = "";
          if (v677)
          {
            HIDWORD(v678) = HIDWORD(v677);
          }

          HIDWORD(v692) = HIDWORD(v678);
          goto LABEL_850;
        }

        v370 = 0;
        v371 = v368;
LABEL_396:
        v828 = v370;
        v374 = 0;
        v375 = 0;
        v376 = v371;
        do
        {
          v377 = v376;
          v378 = v375;
          v379 = v376 + 1;
          v380 = ((*(*v351 + v376) & 0x7F) << v375) | v374;
          v381 = v380;
          if ((*(*v351 + v376) & 0x80) == 0)
          {
            break;
          }

          v375 += 7;
          ++v376;
          v374 = v380;
        }

        while (v378 != 63);
        v829 = v380 >> 1;
        if (v833 && v380 >> 1 > *(v351 + 1))
        {
          v382 = *__error();
          v383 = _SILogForLogForCategory(10);
          if (os_log_type_enabled(v383, OS_LOG_TYPE_ERROR))
          {
            v417 = *(v841 + 1);
            v1036.f_bsize = v865;
            *&v1036.f_iosize = "unpackAndCleanse";
            WORD2(v1036.f_blocks) = 1024;
            *(&v1036.f_blocks + 6) = 3935;
            WORD1(v1036.f_bfree) = 2048;
            *(&v1036.f_bfree + 4) = v840;
            WORD2(v1036.f_bavail) = 2048;
            *(&v1036.f_bavail + 6) = v829;
            HIWORD(v1036.f_files) = 2048;
            v1036.f_ffree = v417;
            _os_log_error_impl(&dword_1C278D000, v383, OS_LOG_TYPE_ERROR, "%s:%d: %lld %lld %lld", &v1036, 0x30u);
          }

          *__error() = v382;
          v322 = v894;
          v351 = v841;
        }

        if ((v836 & 4) != 0 && v380 >= 2)
        {
          bzero(&v1036, v864);
          if (!fd_validfs(v842) || (!v842 ? (v525 = -1) : (v525 = v842[11]), fstatfs(v525, &v1036)))
          {
            v526 = __error();
            v322 = v894;
            *(v894 + 176) = *v526;
            goto LABEL_632;
          }

          if (__valid_fsp(v842))
          {
            v689 = __si_assert_copy_extra_7645(v842, -1);
            v690 = v689;
            v691 = "";
            if (v689)
            {
              v691 = v689;
            }

            si_analytics_log_2752("%s:%u: failed assertion '%s' %s Unexpected compact nxtLink %lld at offset %ld", "CIMerging.c", 3954, "!(isCompact && nxtLink != 0)", v691, v829, v379);
            free(v690);
            v674 = 2816;
LABEL_883:
            *v674 = -559038737;
            abort();
          }

LABEL_882:
          v674 = 3072;
          goto LABEL_883;
        }

        v826 = v380 >> 1;
        v384 = *v351;
        if ((v380 & 1) == 0)
        {
          v385 = 0;
          v386 = 0;
          do
          {
            v387 = v379;
            v388 = v386;
            v389 = v379 + 1;
            v390 = ((v384[v379] & 0x7F) << v386) | v385;
            v391 = v390;
            if ((v384[v379] & 0x80) == 0)
            {
              break;
            }

            v386 += 7;
            ++v379;
            v385 = v390;
          }

          while (v388 != 63);
          v365 = v849;
          if (v390)
          {
            v400 = v390 >> 1;
            goto LABEL_480;
          }

          v392 = v387 + 2;
          v393 = v384[v389];
          v394 = v384[v389];
          if (v393 < 0)
          {
            v404 = v387 + 3;
            v405 = v384[v392];
            v406 = v384[v392];
            if (v405 < 0)
            {
              v410 = v387 + 4;
              v411 = v384[v404];
              v412 = v384[v404];
              if (v411 < 0)
              {
                v418 = v387 + 5;
                v419 = v384[v410];
                v420 = v384[v410];
                if (v419 < 0)
                {
                  v447 = v384[v418];
                  if (v447 < 0)
                  {
LABEL_876:
                    v530 = __si_assert_copy_extra_7645(0, -1);
                    __message_assert("%s:%u: failed assertion '%s' %s readVInt32: exceeds max size for uint32_t");
                    goto LABEL_637;
                  }

                  v448 = ((v420 & 0x7F) << 21) | (v447 << 28) | ((v412 & 0x7F) << 14) | ((v406 & 0x7F) << 7) | v394 & 0x7F;
                  v389 = v387 + 6;
                  v396 = v448;
                  v78 = v920;
                  v329 = v908;
                  v322 = v894;
                  v365 = v849;
                }

                else
                {
                  v396 = ((v412 & 0x7F) << 14) | (v420 << 21) | ((v406 & 0x7F) << 7) | v394 & 0x7F;
                  v389 = v418;
                }
              }

              else
              {
                v396 = ((v406 & 0x7F) << 7) | (v412 << 14) | v394 & 0x7F;
                v389 = v410;
              }
            }

            else
            {
              v396 = v394 & 0x7F | (v406 << 7);
              v389 = v404;
            }
          }

          else
          {
            v395 = v394;
            v389 = v387 + 2;
            v396 = v395;
          }

          v449 = v390 >> 1;
          v400 = v449;
          if (v396)
          {
LABEL_480:
            v446 = v389;
LABEL_481:
            if (*(v322 + 96))
            {
              if (!*(v322 + 112))
              {
                v687 = __si_assert_copy_extra_7645(0, -1);
                v530 = v687;
                v688 = "";
                if (v687)
                {
                  HIDWORD(v688) = HIDWORD(v687);
                }

                HIDWORD(v692) = HIDWORD(v688);
                goto LABEL_857;
              }

              if (v400 + v844 <= **(v329 + 88))
              {
                v460 = merge_checkAgainstUpdates(v322, v329 + 88, v400, v837);
                v322 = v894;
                if (v460)
                {
                  v84 = v918;
LABEL_553:
                  v355 = v843;
                  v351 = v841;
                  v445 = v840;
                  goto LABEL_501;
                }
              }
            }

            if (v400 && v400 < *(v322 + 24))
            {
              v450 = *(v834 + 16);
              if (*v834 == 1)
              {
                HasIndex = CIIndexSetHasIndex(v450, v400);
                v322 = v894;
                if (HasIndex)
                {
                  if (*v834)
                  {
                    v452 = *(v834 + 8) + v400;
                  }

                  else
                  {
                    v452 = *(*(v834 + 16) + 4 * v400);
                  }

LABEL_506:
                  packContextAppend(v322, v452);
                  DataForOneDocument = readDataForOneDocument(v329 + 152, 0, v838, v400, v836, v835, v456);
                  if (DataForOneDocument != -1)
                  {
                    v84 = v918;
                    v322 = v894;
                    v355 = v843;
                    v445 = v840;
                    if (DataForOneDocument < 1 || !v902)
                    {
                      goto LABEL_500;
                    }

                    if (!*(v329 + 200))
                    {
LABEL_499:
                      v355 = v843;
                      goto LABEL_500;
                    }

LABEL_497:
                    v455 = *(v845 + 8 * v400 + 4);
                    MDDictionaryUIntUIntIncrementValue();
                    v445 = v840;
LABEL_498:
                    v322 = v894;
                    goto LABEL_499;
                  }

                  goto LABEL_622;
                }
              }

              else
              {
                v452 = *(v450 + 4 * v400);
                if (v452)
                {
                  goto LABEL_506;
                }
              }
            }

            v453 = readDataForOneDocument(v329 + 152, 1, v838, v400, v836, v835, v367);
            if (v453 != -1)
            {
              v454 = v453 < 1 || v902 == 0;
              v84 = v918;
              v445 = v840;
              if (!v454 && *(v329 + 200))
              {
                goto LABEL_497;
              }

              goto LABEL_498;
            }

LABEL_622:
            v521 = __error();
            v322 = v894;
            *(v894 + 176) = *v521;
            v9 = v921;
            v84 = v918;
            v114 = v909;
LABEL_578:
            v1024 = 1;
            v488 = v365;
            v489 = v847;
            goto LABEL_580;
          }

          v446 = v389 + 1;
          v461 = v384[v389];
          if ((v461 & 0x80000000) == 0)
          {
            v462 = v384[v389];
            goto LABEL_543;
          }

          v470 = v389 + 2;
          v471 = v384[v446];
          if ((v384[v446] & 0x80000000) == 0)
          {
            v462 = v461 & 0x7F | (v471 << 7);
            v446 = v389 + 2;
            goto LABEL_543;
          }

          v446 = v389 + 3;
          v475 = v384[v470];
          v476 = v384[v470];
          if ((v475 & 0x80000000) == 0)
          {
            v477 = ((v471 & 0x7F) << 7) | (v476 << 14);
            goto LABEL_540;
          }

          v478 = v384[v446];
          if (v384[v446] < 0)
          {
            v481 = v384[v389 + 4];
            if (v481 < 0)
            {
              v644 = __si_assert_copy_extra_7645(0, -1);
              __message_assert("%s:%u: failed assertion '%s' %s readVInt32: exceeds max size for uint32_t");
              goto LABEL_851;
            }

            v446 = v389 + 5;
            v477 = ((v478 & 0x7F) << 21) | (v481 << 28) | ((v476 & 0x7F) << 14) | ((v471 & 0x7F) << 7);
LABEL_540:
            v462 = v477 & 0xFFFFFF80 | v461 & 0x7F;
          }

          else
          {
            v462 = ((v476 & 0x7F) << 14) | (v478 << 21) | ((v471 & 0x7F) << 7) | v461 & 0x7F;
            v446 = v389 + 4;
          }

LABEL_543:
          if (!v462)
          {
            v78 = v920;
            v329 = v908;
            v322 = v894;
            v365 = v849;
            goto LABEL_481;
          }

          if (v832 <= v449)
          {
            v479 = *__error();
            v480 = _SILogForLogForCategory(10);
            if (os_log_type_enabled(v480, OS_LOG_TYPE_ERROR))
            {
              v1036.f_bsize = v862;
              *&v1036.f_iosize = "unpackAndCleanse";
              WORD2(v1036.f_blocks) = 1024;
              *(&v1036.f_blocks + 6) = 3975;
              WORD1(v1036.f_bfree) = 2048;
              *(&v1036.f_bfree + 4) = v400;
              WORD2(v1036.f_bavail) = 2048;
              *(&v1036.f_bavail + 6) = v831;
              HIWORD(v1036.f_files) = 1024;
              LODWORD(v1036.f_ffree) = v462;
              WORD2(v1036.f_ffree) = 2048;
              *(&v1036.f_ffree + 6) = v831;
              _os_log_error_impl(&dword_1C278D000, v480, OS_LOG_TYPE_ERROR, "%s:%d: Element outside legal range %lld>=%lld type %d (starting max %lld)", &v1036, 0x36u);
            }

            *__error() = v479;
          }

          else if (v391)
          {
            v329 = v908;
            merge_handleUpdate(v908 + 88, v449, v462);
            v78 = v920;
            v84 = v918;
LABEL_552:
            v322 = v894;
            v365 = v849;
            goto LABEL_553;
          }

          v78 = v920;
          v84 = v918;
          v329 = v908;
          goto LABEL_552;
        }

        v397 = v377 + 2;
        v398 = v384[v379];
        if (v384[v379] < 0)
        {
          v401 = v377 + 3;
          v402 = v384[v397];
          v403 = v384[v397];
          if (v402 < 0)
          {
            v407 = v377 + 4;
            v408 = v384[v401];
            v409 = v384[v401];
            if (v408 < 0)
            {
              v413 = v377 + 5;
              v414 = v384[v407];
              v415 = v384[v407];
              if (v414 < 0)
              {
                v421 = v384[v413];
                if (v421 < 0)
                {
                  goto LABEL_876;
                }

                v413 = v377 + 6;
                v416 = ((v415 & 0x7F) << 21) | (v421 << 28) | ((v409 & 0x7F) << 14);
              }

              else
              {
                v416 = ((v409 & 0x7F) << 14) | (v415 << 21);
              }

              v398 = v416 & 0xFFFFC000 | ((v403 & 0x7F) << 7) | v398 & 0x7F;
              v399 = v413;
            }

            else
            {
              v398 = ((v403 & 0x7F) << 7) | (v409 << 14) | v398 & 0x7F;
              v399 = v377 + 4;
            }
          }

          else
          {
            v398 = v398 & 0x7F | (v403 << 7);
            v399 = v377 + 3;
          }
        }

        else
        {
          v399 = v377 + 2;
        }

        v422 = v399;
        v423 = (*v351 + v399);
        v424 = v398;
        if (!v833 && v399 + v398 > (*MEMORY[0x1E69E9AC8] & 0x3FFFFFFuLL) << 6)
        {
          v463 = malloc_type_malloc(v398, v860);
          v464 = v424;
          if (v424 < 0x80)
          {
            v465 = 1;
          }

          else
          {
            v465 = 2;
          }

          if (v424 >> 14)
          {
            v466 = 3;
          }

          else
          {
            v466 = v465;
          }

          if (v424 >> 21)
          {
            v467 = 4;
          }

          else
          {
            v467 = v466;
          }

          if (v424 >> 28)
          {
            v468 = 5;
          }

          else
          {
            v468 = v467;
          }

          if (v380 >= 0x80)
          {
            v472 = 1;
            do
            {
              ++v472;
              v473 = v381 >> 14;
              v469 = v472;
              v381 >>= 7;
            }

            while (v473);
          }

          else
          {
            v469 = 1;
          }

          v474 = v463;
          if (fd_pread(*(v839 + 9432), v463, v464, v840 + (v469 + v468)) != -1)
          {
            v423 = v474;
            v329 = v908;
            v424 = v464;
            goto LABEL_433;
          }

          v527 = __error();
          v528 = v894;
          *(v894 + 176) = *v527;
          free(v474);
          v322 = v528;
LABEL_632:
          v9 = v921;
          v78 = v920;
          v84 = v918;
          v114 = v909;
          v329 = v908;
LABEL_577:
          v365 = v849;
          goto LABEL_578;
        }

LABEL_433:
        v1035 = v874;
        *&v1033.__r_.__value_.__l.__data_ = 0u;
        v1033.__r_.__value_.__r.__words[2] = v423;
        v769 = v424;
        v1034 = v424;
        v746 = v423;
        if (v423)
        {
          v425 = v424 == 0;
        }

        else
        {
          v425 = 1;
        }

        v426 = v425;
        HIDWORD(v1035) = v426;
        LODWORD(v944) = 0;
        v427 = v831;
        while (1)
        {
          v428 = v427;
          DocID = PostingChunkEnumeratorNextDocID(&v1033, &v944);
          if (!DocID)
          {
            break;
          }

          v431 = DocID;
          v432 = DocID;
          if (v944)
          {
            if (v428 <= DocID)
            {
              v443 = *__error();
              v444 = _SILogForLogForCategory(10);
              if (os_log_type_enabled(v444, OS_LOG_TYPE_ERROR))
              {
                v1036.f_bsize = v863;
                *&v1036.f_iosize = "unpackAndCleanse";
                WORD2(v1036.f_blocks) = 1024;
                *(&v1036.f_blocks + 6) = 4077;
                WORD1(v1036.f_bfree) = 2048;
                *(&v1036.f_bfree + 4) = v432;
                WORD2(v1036.f_bavail) = 2048;
                *(&v1036.f_bavail + 6) = v428;
                HIWORD(v1036.f_files) = 1024;
                LODWORD(v1036.f_ffree) = v944;
                WORD2(v1036.f_ffree) = 2048;
                *(&v1036.f_ffree + 6) = v831;
                _os_log_error_impl(&dword_1C278D000, v444, OS_LOG_TYPE_ERROR, "%s:%d: Element outside legal range %lld>=%lld type %d (starting max %lld)", &v1036, 0x36u);
              }

              *__error() = v443;
              v427 = v428;
              v329 = v908;
            }

            else
            {
              v329 = v908;
              merge_handleUpdate(v908 + 88, DocID, v944);
              v427 = v428;
            }
          }

          else
          {
            v433 = v894;
            if (!*(v894 + 96))
            {
              goto LABEL_445;
            }

            if (!*(v894 + 112))
            {
              v656 = __si_assert_copy_extra_7645(0, -1);
              v530 = v656;
              v657 = "";
              if (v656)
              {
                HIDWORD(v657) = HIDWORD(v656);
              }

              HIDWORD(v692) = HIDWORD(v657);
              goto LABEL_857;
            }

            if (v844 + DocID > **(v329 + 88) || (v442 = merge_checkAgainstUpdates(v894, v329 + 88, DocID, v837), v433 = v894, v427 = v428, (v442 & 1) == 0))
            {
LABEL_445:
              if (!v432)
              {
                v437 = v428;
                goto LABEL_458;
              }

              v434 = *(v433 + 24);
              if (v432 >= v434)
              {
                goto LABEL_455;
              }

              v435 = *(v834 + 16);
              if (*v834 == 1)
              {
                if (!CIIndexSetHasIndex(v435, v432))
                {
                  v434 = *(v894 + 24);
LABEL_455:
                  if (v432 >= v434)
                  {
                    v437 = v428;
                  }

                  else
                  {
                    v437 = v432 + v844;
                  }

LABEL_458:
                  v438 = readDataForOneDocument(v329 + 152, 1, v838, v432, v836, v835, v430);
                  if (v438 == -1)
                  {
                    goto LABEL_576;
                  }

                  goto LABEL_459;
                }

                v433 = v894;
                if (*v834)
                {
                  v436 = *(v834 + 8) + v432;
                }

                else
                {
                  v436 = *(*(v834 + 16) + 4 * v432);
                }
              }

              else
              {
                v436 = *(v435 + 4 * v432);
                if (!v436)
                {
                  goto LABEL_455;
                }
              }

              packContextAppend(v433, v436);
              v438 = readDataForOneDocument(v329 + 152, 0, v838, v432, v836, v835, v441);
              if (v438 == -1)
              {
LABEL_576:
                v492 = __error();
                v322 = v894;
                *(v894 + 176) = *v492;
                v9 = v921;
                v78 = v920;
                v84 = v918;
                v114 = v909;
                goto LABEL_577;
              }

              v437 = v432 + v844;
LABEL_459:
              v427 = v437;
              if (v438 >= 1)
              {
                v427 = v437;
                if (v902)
                {
                  v427 = v437;
                  if (*(v329 + 200))
                  {
                    v439 = *(v845 + 8 * v431 + 4);
                    v440 = *(v329 + 200);
                    MDDictionaryUIntUIntIncrementValue();
                    v427 = v437;
                  }
                }
              }
            }
          }
        }

        v84 = v918;
        v365 = v849;
        v355 = v843;
        v445 = v840;
        if (!v833 && v422 + v769 > (*MEMORY[0x1E69E9AC8] & 0x3FFFFFFuLL) << 6)
        {
          free(v746);
          v445 = v840;
          v355 = v843;
        }

        v446 = v422;
        v78 = v920;
        v322 = v894;
LABEL_500:
        v351 = v841;
LABEL_501:
        if (v380 < 2)
        {
          v9 = v921;
          v114 = v909;
          if (dword_1EBF46AF4 >= 5)
          {
            v484 = *__error();
            v485 = _SILogForLogForCategory(10);
            if (os_log_type_enabled(v485, OS_LOG_TYPE_DEFAULT))
            {
              *&v1036.f_bsize = v861;
              _os_log_impl(&dword_1C278D000, v485, OS_LOG_TYPE_DEFAULT, "merging last id %d", &v1036, 8u);
            }

            *__error() = v484;
            v9 = v921;
            v78 = v920;
            v84 = v918;
            v114 = v909;
            v329 = v908;
            v322 = v894;
            v365 = v849;
          }
        }

        else
        {
          v9 = v921;
          if (v445 != v826)
          {
            v363 = v828;
            v362 = 0;
            v364 = v829;
            if (v830)
            {
              v362 = *(v838 + 40);
              v363 = v828;
              v364 = v829;
            }

            continue;
          }

          v486 = "";
          if ((v355 & 4) != 0)
          {
            v486 = " (compact)";
          }

          si_analytics_log_2752("Unexpected loop in postings file at position %llu offset %lu %s", v445, v446, v486);
          v114 = v909;
          v322 = v894;
        }

        break;
      }

      v483 = *(v322 + 176);
LABEL_565:
      if (v483)
      {
        goto LABEL_578;
      }

      if ((v1024 & 1) != 0 || (v487 = atomic_load((*v84 + 15192))) != 0)
      {
        v1024 = 1;
LABEL_625:
        v488 = v365;
        v489 = v847;
        v322 = v894;
        break;
      }

      v1024 = (*(v919 + 16))(*(v919 + 32));
      if (v1024)
      {
        goto LABEL_625;
      }

      v322 = v894;
      if (*(v894 + 96))
      {
        merge_checkAgainstUpdates1(v894, (v329 + 88), 0, *(v84[v365] + 80));
        v322 = v894;
      }

      v339 = v846 + 1;
      v333 = v847;
      v338 = v365;
      v488 = v365;
      v489 = v847;
      v340 = v906;
      v341 = v873;
      if (v846 + 1 != v848)
      {
        continue;
      }

      break;
    }

LABEL_580:
    if (v902 && *(v329 + 200))
    {
      push_termid_counts();
      v322 = v894;
    }

    if (v1024)
    {
      goto LABEL_614;
    }

    v493 = *(v322 + 8);
    if (!v493)
    {
      if (*(v322 + 96))
      {
        v967 = v858;
        v494 = v908;
        v495 = v873;
        goto LABEL_592;
      }

      goto LABEL_614;
    }

    v967 = v858;
    v494 = v908;
    v495 = v873;
    if (v493 != 1)
    {
      v496 = (*v322 + 4);
      v497 = **v322;
      v498 = v493 - 1;
      while (1)
      {
        v499 = v497;
        v500 = *v496++;
        v497 = v500;
        if (v499 <= v500)
        {
          break;
        }

        if (!--v498)
        {
          goto LABEL_592;
        }
      }

      v670 = __si_assert_copy_extra_7645(0, -1);
      v644 = v670;
      v671 = "";
      if (v670)
      {
        HIDWORD(v671) = HIDWORD(v670);
      }

      HIDWORD(v692) = HIDWORD(v671);
LABEL_850:
      __message_assert("%s:%u: failed assertion '%s' %s ");
      goto LABEL_851;
    }

LABEL_592:
    if (v488)
    {
      v501 = &v872[24 * v488];
      do
      {
        *(v322 + 24) = *&v871[4 * v488];
        *(v322 + 16) = v501;
        *(v322 + 80) = *(v495[v488] + 14472);
        if (*(v322 + 96))
        {
          merge_checkAgainstUpdates1(v322, (v494 + 88), 0, *(v495[v488] + 80));
          v495 = v873;
          v322 = v894;
        }

        v501 -= 24;
        --v488;
      }

      while (v488);
    }

    v502 = packContextFinalize(&v965);
    v322 = v894;
    v84 = v918;
    v503 = MEMORY[0x1E69E9AC8];
    v504 = v905;
    if (v967 == v502)
    {
      goto LABEL_614;
    }

    v505 = v502;
    v506 = v851;
    while (1)
    {
      v507 = v504[619] - v505 + v967 + *v503;
      v504 = v905;
      v508 = v905[621];
      if (v507 <= v508)
      {
        break;
      }

      v509 = v949 + v508;
      v905[621] = v949 + v508;
      v510 = fd_truncate(v504[1179], v509);
      v322 = v894;
      v504 = v905;
      if (v510)
      {
        v1024 = 1;
        break;
      }
    }

    if (v1024)
    {
      goto LABEL_614;
    }

    v511 = v967 - v505;
    if (v967 - v505 + *v503 <= v949)
    {
      v514 = v504[619];
      v515 = *(&v948 + 1);
      v516 = v948;
      if (v967 + v514 - (v505 + *(&v948 + 1)) > v949)
      {
        sync_invalidate_mapping(v948, v949);
        munmap(v948, v949);
        v517 = v905;
        *(&v948 + 1) = v905[619] & ~*MEMORY[0x1E69E9AB8];
        v516 = fd_mmap(v905[1179]);
        *&v948 = v516;
        if (v516 == -1)
        {
LABEL_641:
          v1024 = 1;
          break;
        }

        v514 = v517[619];
        v515 = *(&v948 + 1);
        v511 = v967 - v505;
      }

      memcpy((v516 + v514 - v515), &v965[v505], v511);
      goto LABEL_612;
    }

    if (fd_pwrite(v504[1179], &v965[v505], v511, v504[619]) == -1)
    {
      v512 = *__error();
      v513 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v513, OS_LOG_TYPE_ERROR))
      {
        v524 = *__error();
        v1036.f_bsize = v857;
        *&v1036.f_iosize = "mergeIndexData";
        WORD2(v1036.f_blocks) = 1024;
        *(&v1036.f_blocks + 6) = 2682;
        WORD1(v1036.f_bfree) = 1024;
        HIDWORD(v1036.f_bfree) = v524;
        _os_log_error_impl(&dword_1C278D000, v513, OS_LOG_TYPE_ERROR, "%s:%d: pwrite error: %d", &v1036, 0x18u);
      }

      *__error() = v512;
      v1024 = 1;
      v84 = v918;
    }

LABEL_612:
    v518 = v905;
    termIdStoreSetNext(v1025 + v856, v853, v905[619]);
    v518[619] += v967 - v505;
    finishTermForWPCBuffer(v908 + 152);
    v322 = v894;
    if (v851 != *(v1025 + 9672))
    {
      termIdStoreSetNext(v1025 + v855, v853, v506);
      v322 = v894;
    }

LABEL_614:
    if (v902 && *(v908 + 200))
    {
      destroyWPCOccurenceCountMap((v908 + 200));
      v322 = v894;
    }

    v323 = v853 + 1;
    v324 = v852;
    v325 = v489;
    v79 = v919;
    if (v489 < v1002[3])
    {
      continue;
    }

    break;
  }

LABEL_642:
  if (v881)
  {
    v534 = v886;
    if (v881 >= v886)
    {
      v535 = v881 + 1;
      do
      {
        CICleanUpClearItem(v114, v534++);
      }

      while (v535 != v534);
    }
  }

  v536 = v890;
  v537 = v877;
  v538 = v876;
  v539 = v875;
  if (v9 >= 1)
  {
    v540 = v907 + 24;
    v541 = v893;
    v542 = v921;
    do
    {
      v543 = v542;
      finalizeReadBuffer(v541);
      finalizeReadBuffer(v540);
      v540 += 224;
      v541 += 16;
      v542 = v543 - 1;
    }

    while (v543 != 1);
  }

  CICleanUpClearItem(v114, v539);
  v544 = v894;
  free(*v894);
  FlattenPostingsContextDestroy(v538);
  CICleanUpClearItem(v114, v536);
  free(v965);
  sync_invalidate_mapping(v948, v949);
  munmap(v948, v949);
  CICleanUpClearItem(v114, v537);
  free(*(v544 + 88));
  free(*(v544 + 208));
  writeWindowFinalize(v908 + 152);
  v964 = 0;
  v545 = threadData[9 * v954 + 1] + 320 * v953;
  *(v545 + 312) = v878;
  v546 = *(v545 + 232);
  if (v546)
  {
    v546(*(v545 + 288));
  }

  dropThreadId(v954, 0, v879 + 1);
  v9 = v921;
  v79 = v919;
  v84 = v918;
  v116 = MEMORY[0x1E69E9AC8];
  v261 = v899;
  v293 = v889;
LABEL_652:
  v547 = threadData[9 * v959 + 1] + 320 * v958;
  *(v547 + 312) = v882;
  v548 = *(v547 + 232);
  if (v548)
  {
    v548(*(v547 + 288));
  }

  dropThreadId(v959, 0, v883 + 1);
LABEL_655:
  v549 = threadData[9 * v968 + 1] + 320 * v963[0];
  *(v549 + 312) = v887;
  v550 = *(v549 + 232);
  if (v550)
  {
    v550(*(v549 + 288));
  }

  dropThreadId(v968, 0, v293 + 1);
LABEL_658:
  v551 = threadData[9 * v973 + 1] + 320 * v972[0];
  *(v551 + 312) = v895;
  v552 = *(v551 + 232);
  if (v552)
  {
    v552(*(v551 + 288));
  }

  dropThreadId(v973, 0, v896 + 1);
LABEL_661:
  if (v964 == 1)
  {
    v1024 = 1;
  }

  if (v898)
  {
    CICleanUpClearItem(v114, v898);
  }

  if (v261)
  {
    CFRelease(v261);
  }

  if (!v78 || (v1024 & 1) != 0)
  {
    if (v9 >= 1)
    {
      v553 = vdupq_n_s64(v9 - 1);
      v554 = xmmword_1C2BF7A50;
      v555 = vdupq_n_s64(2uLL);
      v556 = v904 + 40;
      v557 = (v9 + 1) & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        v558 = vmovn_s64(vcgeq_u64(v553, v554));
        if (v558.i8[0])
        {
          *(v556 - 3) = 0;
        }

        if (v558.i8[4])
        {
          *v556 = 0;
        }

        v554 = vaddq_s64(v554, v555);
        v556 += 6;
        v557 -= 2;
      }

      while (v557);
    }

    if (v78)
    {
      v559 = *v78;
      if (*v78)
      {
        if (*v559 < 1)
        {
          v564 = *v78;
        }

        else
        {
          v560 = 0;
          v561 = 0;
          do
          {
            v562 = v559[1] + v560;
            v563 = *(v562 + 16);
            if (*(v562 + 24) == 1)
            {
              munmap(v563, *(v562 + 8));
            }

            else
            {
              free(v563);
            }

            *(*(*v78 + 1) + v560 + 16) = 0;
            ++v561;
            v559 = *v78;
            v564 = *v78;
            v560 += 32;
          }

          while (v561 < **v78);
        }

        free(v564[1]);
        *(*v78 + 1) = 0;
        free(*v78);
        *v78 = 0;
        v84 = v918;
        v116 = MEMORY[0x1E69E9AC8];
      }
    }
  }

  v115 = v905;
LABEL_688:
  if (v1032 != -1)
  {
    close(v1032);
    v115 = v905;
  }

  v1032 = -1;
  if ((v1024 & 1) != 0 || (v565 = atomic_load((*v84 + 15192))) != 0)
  {
    v566 = 1;
  }

  else
  {
    v583 = (*(v79 + 16))(*(v79 + 32));
    v115 = v905;
    v566 = v583;
  }

  v567 = v912;
  v568 = v911;
  v1024 = v566;
  v569 = v115[619];
  v115[621] = v569;
  v115[618] = v569;
  v115[622] = v569;
  v570 = *(v1025 + 9672);
  *(v1025 + 9688) = v570;
  *(v1025 + 9664) = v570;
  *(v1025 + 9696) = v570;
  *(v1025 + 60) = *(v1025 + 68) - 1;
  fd_truncate(v115[1179], v115[621]);
  fd_truncate(*(v1025 + 14152), *(v1025 + 9688));
  v571 = (*v116 + v914) & ~*MEMORY[0x1E69E9AB8];
  if (fd_truncate(*(v1025 + 472), v571))
  {
    v1024 = 1;
  }

  else
  {
    *(v1025 + 480) = v571;
    storageUnmap(v1025 + 256);
  }

  v572 = v915;
  v573 = CFDictionaryCreateMutable(v567, 0, 0, MEMORY[0x1E695E9E8]);
  v808 = v568;
  v951[0] = v568;
  v951[1] = v573;
  CFDictionaryApplyFunction(v910, popTermIdCountPairsApplier, v951);
  if ((v1024 & 1) == 0)
  {
    v1033.__r_.__value_.__r.__words[0] = 0;
    v1033.__r_.__value_.__l.__size_ = &v1033;
    v1033.__r_.__value_.__r.__words[2] = 0x2000000000;
    v1034 = 0;
    v965 = 0;
    v966 = &v965;
    v967 = 0x2000000000uLL;
    *&v948 = 0;
    *(&v948 + 1) = &v948;
    v949 = 0x2000000000;
    v950 = 0;
    *(v1016 + 6) = 0;
    bzero(&v1036, 0x1020uLL);
    v944 = 0;
    v945 = &v944;
    v946 = 0x2000000000;
    v947 = 0;
    v574 = _SILogForLogForCategory(0);
    v575 = os_signpost_id_make_with_pointer(v574, 0);
    v576 = v575;
    v577 = *(v1025 + 9400);
    if ((v1024 & 1) == 0)
    {
      v924 = MEMORY[0x1E69E9820];
      v925 = 0x40000000;
      v926 = __mergeIndexData_block_invoke_22;
      v927 = &unk_1E8194A20;
      v928 = &v1033;
      v929 = &v1015;
      v943 = v577;
      v935 = v808;
      v930 = &v1009;
      v936 = v573;
      v937 = v1042;
      v938 = v1025;
      v931 = &v948;
      v932 = &v965;
      v933 = v1013;
      v934 = &v944;
      v939 = &v1036;
      v940 = v575;
      v941 = v921;
      v942 = v918;
      v578 = iterateTermsForIndexes(v1025);
      v1024 |= v578;
    }

    if (*(v945 + 24) == 1)
    {
      v579 = _SILogForLogForCategory(0);
      if (v575 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v580 = v579;
        if (os_signpost_enabled(v579))
        {
          LOWORD(v975[0]) = 0;
          _os_signpost_emit_with_name_impl(&dword_1C278D000, v580, OS_SIGNPOST_INTERVAL_END, v576, "vectorIndexInsertForMerge", "End", v975, 2u);
        }
      }
    }

    v9 = v921;
    v114 = v909;
    if (v1024)
    {
      v581 = 1;
      v84 = v918;
      v572 = v915;
    }

    else
    {
      v84 = v918;
      v582 = atomic_load((*v918 + 15192));
      v572 = v915;
      if (v582)
      {
        v581 = 1;
      }

      else
      {
        v581 = (*(v919 + 16))(*(v919 + 32));
      }
    }

    v1024 = v581;
    _Block_object_dispose(&v944, 8);
    _Block_object_dispose(&v948, 8);
    _Block_object_dispose(&v965, 8);
    _Block_object_dispose(&v1033, 8);
  }

  _fd_unlink_with_origin(*(v1025 + 5200), 0);
  termIdStoreDestroy(v1025 + 4984);
  _fd_unlink_with_origin(*(v1025 + 9920), 0);
  termIdStoreDestroy(v1025 + 9704);
  fd_truncate(*(v1025 + 14448), 8 * *(v1025 + 68));
  fd_truncate(*(v1025 + 14456), 4 * *(v1025 + 68));
  if (*(v1025 + 14464))
  {
    fd_truncate(*(v1025 + 14464), 8 * *(v1025 + 68));
  }

  v584 = *(v1025 + 68);
  if ((*(v1025 + 45) & 1) == 0)
  {
    v584 = (4 * *(v1025 + 68) + 4) / 5u;
  }

  fd_truncate(*(v1025 + 14472), v584);
  storageTruncate((v1025 + 256));
  if ((v1024 & 1) == 0)
  {
    if (*(v1025 + 4912))
    {
      truncateVectorIndex(*(v1025 + 4912));
    }

    indexPerformSync(v1025);
    if (*(v1025 + 4912))
    {
      IVFVectorIndex_s::makeReadOnly((*(v1025 + 4912) + 8));
    }
  }

  CICleanUpReset(v114, v572);
  if (v1025 && (v1024 & 1) == 0 && CFDictionaryGetCount(v1010[3]))
  {
    emitTopKTerms(v1025, v1010[3]);
  }

  v1030 = 1;
  CFRelease(v573);
  if (v9 >= 1)
  {
    *&v585 = 136315650;
    v701 = v585;
    v586 = v84;
    for (j = v9; j; --j)
    {
      v588 = *(*v586 + 4912);
      if (v588)
      {
        v589 = *(*v586 + 4912);
        std::mutex::lock((v588 + 16));
        if ((*(v588 + 13) & 1) == 0)
        {
          v643 = __si_assert_copy_extra_332();
          v644 = v643;
          v645 = "";
          if (v643)
          {
            v645 = v643;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 4913, "fMerging", v645);
          goto LABEL_851;
        }

        *(v588 + 13) = 0;
        v590 = *__error();
        v591 = _SILogForLogForCategory(16);
        if (os_log_type_enabled(v591, OS_LOG_TYPE_DEFAULT))
        {
          v592 = (v588 + 128);
          if (*(v588 + 151) < 0)
          {
            v592 = *v592;
          }

          v593 = v592;
          IVFVectorIndex_s::name(&v1033, v588 + 8);
          if ((v1033.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v594 = &v1033;
          }

          else
          {
            v594 = v1033.__r_.__value_.__r.__words[0];
          }

          v1036.f_bsize = v701;
          *&v1036.f_iosize = v593;
          WORD2(v1036.f_blocks) = 2048;
          *(&v1036.f_blocks + 6) = v588 + 8;
          HIWORD(v1036.f_bfree) = 2080;
          v1036.f_bavail = v594;
          _os_log_impl(&dword_1C278D000, v591, OS_LOG_TYPE_DEFAULT, "[%s] destroyVectorIndexDumpContext: %p %s", &v1036, 0x20u);
          if (SHIBYTE(v1033.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v1033.__r_.__value_.__l.__data_);
          }
        }

        *__error() = v590;
        std::mutex::unlock((v588 + 16));
        v9 = v921;
      }

      ++v586;
    }
  }

  free(v913);
  v595 = v910;
  CFDictionaryApplyFunction(v910, pqDisposeApplier_7720, 0);
  CFRelease(v595);
  CFRelease(v808);
  CFRelease(v1010[3]);
  _Block_object_dispose(&v989, 8);
  _Block_object_dispose(&v993, 8);
  _Block_object_dispose(&v997, 8);
  _Block_object_dispose(&v1001, 8);
  _Block_object_dispose(&v1005, 8);
  _Block_object_dispose(&v1009, 8);
  _Block_object_dispose(v1013, 8);
  _Block_object_dispose(&v1015, 8);
  v596 = threadData[9 * v1021 + 1] + 320 * v1020;
  *(v596 + 312) = v916;
  v597 = *(v596 + 232);
  if (v597)
  {
    v597(*(v596 + 288));
  }

  dropThreadId(v1021, 0, v917 + 1);
  v81 = v922;
  v78 = v920;
  v79 = v919;
LABEL_740:
  if ((v1030 & 1) == 0)
  {
    v598 = *__error();
    v599 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v599, OS_LOG_TYPE_ERROR))
    {
      *v1037 = 136315394;
      *&v1037[4] = "mergeIndexData";
      v1038 = 1024;
      LODWORD(v1039[0]) = 3277;
      _os_log_error_impl(&dword_1C278D000, v599, OS_LOG_TYPE_ERROR, "%s:%d: Exception raised during merging", v1037, 0x12u);
    }

    *__error() = v598;
    v1024 = 1;
  }

  if (v1032 != -1)
  {
    close(v1032);
    v1032 = -1;
  }

  if (v1024 == 1)
  {
    if (*(v1025 + 4912))
    {
      vectorIndexCancelMerge(*(v1025 + 4912));
    }

    ContentIndexDeleteIndex(v1025, 1);
    v1025 = 0;
  }

  if (v78)
  {
    if (!v1025)
    {
      v600 = *v78;
      if (*v78)
      {
        if (*v600 < 1)
        {
          v605 = *v78;
        }

        else
        {
          v601 = 0;
          v602 = 0;
          do
          {
            v603 = v600[1] + v602;
            v604 = *(v603 + 16);
            if (*(v603 + 24) == 1)
            {
              munmap(v604, *(v603 + 8));
            }

            else
            {
              free(v604);
            }

            ++v601;
            v600 = *v78;
            v605 = *v78;
            v602 += 32;
          }

          while (v601 < **v78);
        }

        free(v605[1]);
        free(*v78);
        *v78 = 0;
      }
    }
  }

  v606 = *(v79 + 24);
  if (v606)
  {
    if (v1025)
    {
      v607 = *(v79 + 32);
      if (v78)
      {
        v608 = "vacuum";
      }

      else
      {
        v608 = "";
      }

      v609 = "MergeSuccess";
      v610 = 1;
    }

    else if ((*(v79 + 16))(*(v79 + 32)))
    {
      v606 = *(v79 + 24);
      v607 = *(v79 + 32);
      if (v78)
      {
        v608 = "vacuum";
      }

      else
      {
        v608 = "";
      }

      v610 = 0;
      v609 = "MergeCanceled";
    }

    else
    {
      v606 = *(v79 + 24);
      v607 = *(v79 + 32);
      if (v78)
      {
        v608 = "vacuum";
      }

      else
      {
        v608 = "";
      }

      v610 = 0;
      if (v1030)
      {
        v609 = "MergeError";
      }

      else
      {
        v609 = "MergeException";
      }
    }

    v606(v607, v609, v610, "Merge", v608, v9);
  }

  v611 = *__error();
  v612 = _SILogForLogForCategory(0);
  v613 = 2 * (gSILogLevels[0] < 4);
  if (os_log_type_enabled(v612, v613))
  {
    v614 = "Complete";
    if (!v1025)
    {
      v614 = "Canceled";
    }

    *v1037 = 136315394;
    *&v1037[4] = v614;
    v1038 = 2080;
    v1039[0] = v81;
    _os_log_impl(&dword_1C278D000, v612, v613, "Merging %s (%s)", v1037, 0x16u);
  }

  *__error() = v611;
  v802 = v1026[15];
  v801 = v1026[16];
  v800 = v1026[17];
  v799 = v1026[18];
  v798 = v1026[19];
  v797 = v1026[20];
  v796 = v1026[21];
  v795 = v1026[22];
  v794 = v1026[23];
  v793 = v1026[24];
  v792 = v1026[25];
  v791 = v1026[26];
  v790 = v1026[27];
  v789 = v1026[28];
  v788 = v1026[29];
  v787 = v1026[0];
  v786 = v1026[1];
  v783 = v1026[2];
  v782 = v1026[3];
  v781 = v1026[4];
  v780 = v1026[5];
  v779 = v1026[6];
  v778 = v1026[7];
  v777 = v1026[8];
  v776 = v1026[9];
  v775 = v1026[10];
  v774 = v1026[11];
  v773 = v1026[12];
  v772 = v1026[13];
  v771 = v1026[14];
  v770 = v1026[30];
  v768 = v1026[31];
  v767 = v1026[32];
  v766 = v1026[33];
  v765 = v1026[34];
  v764 = v1026[35];
  v763 = v1026[36];
  v762 = v1026[37];
  v761 = v1026[38];
  v760 = v1026[39];
  v759 = v1026[40];
  v758 = v1026[41];
  v757 = v1026[42];
  v756 = v1026[43];
  v755 = v1026[44];
  v754 = v1027[0];
  v752 = v1027[2];
  v753 = v1027[1];
  v750 = v1027[4];
  v751 = v1027[3];
  v748 = v1027[6];
  v749 = v1027[5];
  v743 = v1027[7];
  v740 = v1027[9];
  v741 = v1027[8];
  v739 = v1027[10];
  v737 = v1027[12];
  v738 = v1027[11];
  v735 = v1027[14];
  v736 = v1027[13];
  *v1037 = 0;
  v615 = 0;
  for (k = 0; k != 15; ++k)
  {
    v617 = v1027[k] + v615;
    v615 = v617;
  }

  v618 = v1028;
  v731 = v1028[1];
  v732 = v1028[0];
  v729 = v1028[3];
  v730 = v1028[2];
  v726 = v1028[5];
  v727 = v1028[4];
  v722 = v1028[7];
  v723 = v1028[6];
  v720 = v1028[9];
  v721 = v1028[8];
  v718 = v1028[11];
  v719 = v1028[10];
  v716 = v1028[13];
  v717 = v1028[12];
  v713 = v1028[14];
  v619 = 0;
  for (m = 0; m != 15; ++m)
  {
    v621 = v1028[m] + v619;
    v619 = v621;
  }

  v734 = v617;
  v711 = v1029[1];
  v712 = v1029[0];
  v709 = v1029[3];
  v710 = v1029[2];
  v707 = v1029[5];
  v708 = v1029[4];
  v705 = v1029[7];
  v706 = v1029[6];
  v703 = v1029[9];
  v704 = v1029[8];
  v702 = v1029[10];
  v622 = 0;
  for (n = 0; n != 15; ++n)
  {
    v624 = v1029[n] + v622;
    v622 = v624;
  }

  v625 = 0;
  v626 = 15;
  v627 = v1028;
  do
  {
    v628 = v627[15];
    v630 = *v627++;
    v629 = v630;
    if (v628 >= v630)
    {
      v628 = v629;
    }

    v631 = v628 + v625;
    v625 = v631;
    --v626;
  }

  while (v626);
  v632 = 0;
  v633 = 15;
  do
  {
    v634 = v618[30];
    v636 = *v618++;
    v635 = v636;
    if (v634 >= v636)
    {
      v634 = v635;
    }

    v637 = v634 + v632;
    v632 = v637;
    --v633;
  }

  while (v633);
  asprintf(v1037, "absolute:  %lu, %lu, %lu, %lu, %lu, %lu, %lu, %lu, %lu, %lu, %lu, %lu, %lu, %lu, %lu\ndelta:     %lu, %lu, %lu, %lu, %lu, %lu, %lu, %lu, %lu, %lu, %lu, %lu, %lu, %lu, %lu\ncount:     %lu, %lu, %lu, %lu, %lu, %lu, %lu, %lu, %lu, %lu, %lu, %lu, %lu, %lu, %lu\nbytes:     %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu total: %lld\nterm - bytes:     %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu total: %lld\nterm  - words:     %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu total:%lld\nterm  - packings:     %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu,%lld\ntotal optimized term byte count: %llu\ntotal optimized term byte count with overhead: %llu\n", v802, v801, v800, v799, v798, v797, v796, v795, v794, v793, v792, v791, v790, v789, v788, v787, v786, v783, v782, v781, v780, v779, v778, v777, v776, v775, v774, v773, v772, v771, v770, v768, v767, v766, v765, v764, v763, v762, v761, v760, v759, v758, v757, v756, v755, v754, v753, v752, v751, v750, v749, v748, v743, v741, v740, v739, v738, v737, v736, v735, v734, v732, v731, v730, v729, v727, v726, v723, v722, v721, v720, v719, v718, v717, v716, v713, v621, v712, v711, v710, v709, v708, v707, v706, v705, v704, v703, v702, v1029[11], v1029[12], v1029[13], v1029[14], v624, v1029[30], v1029[31], v1029[32], v1029[33], v1029[34], v1029[35], v1029[36], v1029[37], v1029[38], v1029[39], v1029[40], v1029[41], v1029[42], v1029[43], v1029[44], v1029[45], v631, v637);
  v638 = *v1037;
  v639 = *__error();
  v640 = _SILogForLogForCategory(0);
  v641 = 2 * (gSILogLevels[0] < 4);
  if (os_log_type_enabled(v640, v641))
  {
    *v1037 = 136315138;
    *&v1037[4] = v638;
    _os_log_impl(&dword_1C278D000, v640, v641, "Merge statistics: %s", v1037, 0xCu);
  }

  *__error() = v639;
  free(v638);
  result = v1025;
LABEL_801:
  v642 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __mergeIndexData_block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = *(*(*(a1 + 32) + 8) + 24);
  if ((v6 + 24 * a3 + 2) < 0x10000)
  {
    result = 0;
  }

  else
  {
    v7 = MEMORY[0x1E69E9AB8];
    if (prot_pwrite(*(a1 + 96), *(a1 + 88), v6 & ~*MEMORY[0x1E69E9AB8], *(*(*(a1 + 40) + 8) + 24)) == -1)
    {
      v16 = *__error();
      v17 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v29 = *__error();
        *buf = 136315650;
        v35 = "mergeIndexData_block_invoke";
        v36 = 1024;
        v37 = 2152;
        v38 = 1024;
        v39 = v29;
        _os_log_error_impl(&dword_1C278D000, v17, OS_LOG_TYPE_ERROR, "%s:%d: pwrite error: %d", buf, 0x18u);
      }

      *__error() = v16;
      result = 1;
    }

    else
    {
      v8 = *v7;
      *(*(*(a1 + 40) + 8) + 24) += *(*(*(a1 + 32) + 8) + 24) & ~*v7;
      v9 = *(*(a1 + 32) + 8);
      v10 = *(v9 + 24);
      if ((v8 & v10) != 0)
      {
        v11 = 0;
        v12 = 1;
        do
        {
          *(*(a1 + 88) + v11) = *(*(a1 + 88) + v11 + (v10 & ~v8));
          v11 = v12;
          v9 = *(*(a1 + 32) + 8);
          v10 = *(v9 + 24);
          v8 = *v7;
          v13 = *v7 & v10;
        }

        while (v13 > v12++);
      }

      else
      {
        v13 = 0;
      }

      result = 0;
      *(v9 + 24) = v13;
    }
  }

  if (a3 >= 1)
  {
    v18 = 0;
    v19 = a3;
    v20 = a2;
    v21 = a3;
    do
    {
      v22 = *v20;
      v20 += 8;
      if (v22)
      {
        ++v18;
      }

      --v21;
    }

    while (v21);
    if (v18)
    {
      ++*(*(*(a1 + 48) + 8) + 24);
      if (!*(a2 + 52))
      {
        *(*(*(a1 + 56) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      }

      v23 = *(a1 + 88);
      *(v23 + *(*(*(a1 + 32) + 8) + 24)) = v18;
      *(*(*(a1 + 32) + 8) + 24) += 2;
      if (v18 > a3)
      {
        v30 = __si_assert_copy_extra_7645(0, -1);
        v31 = v30;
        v32 = "";
        if (v30)
        {
          v32 = v30;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "CIMerging.c", 2187, "count <= k", v32);
        free(v31);
        if (__valid_fs(-1))
        {
          v33 = 2989;
        }

        else
        {
          v33 = 3072;
        }

        *v33 = -559038737;
        abort();
      }

      v24 = a2;
      do
      {
        if (*v24)
        {
          v25 = *(*(a1 + 32) + 8);
          v26 = (v23 + *(v25 + 24));
          v27 = v24[1];
          *v26 = *v24;
          v26[1] = v27;
          v26[2] = v24[7];
          *(v25 + 24) += 24;
        }

        v24 += 8;
        --v19;
      }

      while (v19);
      *(*(*(a1 + 64) + 8) + 24) += 24 * v18 + 2;
      ++*(*(*(a1 + 72) + 8) + 24);
      if (!*(a2 + 52))
      {
        *(*(*(a1 + 80) + 8) + 24) = *(*(*(a1 + 64) + 8) + 24);
      }
    }
  }

  v28 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL iterateTermsForIndexes(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v153 = v3;
  v140 = v4;
  v123 = v5;
  v124 = v6;
  v8 = v7;
  v9 = v2;
  v11 = v10;
  v149 = v1;
  v177 = *MEMORY[0x1E69E9840];
  if (v2 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v2;
  }

  MEMORY[0x1EEE9AC00](v1);
  v13 = (8 * v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v155 = (&v120 - v13);
  bzero(&v120 - v13, 8 * v12);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v120 - 2 * v15;
  bzero(v16, v17);
  MEMORY[0x1EEE9AC00](v18);
  bzero(&v120 - v13, 8 * v12);
  MEMORY[0x1EEE9AC00](v19);
  bzero(&v120 - v13, 8 * v12);
  v20 = malloc_type_malloc(v9 << 6, 0x10100400DEE4441uLL);
  v157 = v8;
  v21 = atomic_load((*v8 + 15192));
  v152 = v11;
  if (v21)
  {
    v22 = 1;
  }

  else
  {
    v23 = v20;
    v22 = (*(v11 + 16))(*(v11 + 32));
    v20 = v23;
  }

  v24 = &v120 - v13;
  v156 = (&v120 - v13);
  v172 = v22;
  v148 = v9 - 1;
  v158 = v20;
  v159 = v9;
  v150 = v20;
  if (v9 < 1)
  {
    v40 = v20;
    v38 = 0;
    v29 = v157;
    goto LABEL_19;
  }

  v154 = &v120 - v13;
  v25 = 0;
  v26 = 0;
  v135 = v124;
  v136 = v123;
  v139 = 245984;
  v138 = 0;
  v137 = 0;
  v133 = v20 + 24;
  v134 = v152 + 72;
  v132 = 1;
  v131 = 838353560;
  v130 = 4984;
  v129 = 9704;
  v128 = 245848;
  v127 = 245896;
  v126 = 4096;
  v125 = 4284566654;
  v27 = v16;
  v28 = 0;
  v29 = v157;
  do
  {
    v30 = malloc_type_calloc(v132, v139, v131);
    if (!v30)
    {
      v108 = __si_assert_copy_extra_7645(0, -1);
      v106 = v108;
      v109 = "";
      if (v108)
      {
        v109 = v108;
      }

      __message_assert("%s:%u: failed assertion '%s' %s Got 0 from calloc for allocation of count %ld size %ld", "CIMerging.c", 1324, "p||count==0||size==0", v109, 1, v139);
LABEL_97:
      free(v106);
      if (__valid_fs(-1))
      {
        v110 = 2989;
        goto LABEL_110;
      }

      goto LABEL_109;
    }

    v31 = v30;
    *&v154[v26 * 8] = v30;
    v27[4] = *(v140 + v26 * 8);
    *v27 = v29[v26];
    v27[1] = v30;
    v27[2] = &v172;
    *(v27 + 6) = *(*v29 + 64);
    v32 = v135;
    *(v27 + 29) = v136;
    *(v27 + 28) = v32;
    v27[5] = v134;
    *(v30 + 30747) = &v172;
    v33 = v129;
    *(v30 + 30743) = v29[v26] + v130;
    *(v30 + 30744) = v29[v26] + v33;
    if (v152)
    {
      *(v30 + 245960) = *(v152 + 48);
    }

    v34 = v137;
    pthread_mutex_init((v30 + 245784), v137);
    pthread_cond_init(&v31[v128], v34);
    pthread_cond_init(&v31[v127], v34);
    v35 = *__error();
    v36 = _SILogForLogForCategory(v138);
    v37 = 2 * (gSILogLevels[0] < 4);
    if (os_log_type_enabled(v36, v37))
    {
      LOWORD(v175[0]) = v138;
      _os_log_impl(&dword_1C278D000, v36, v37, "Creating CI mergeIndexDataTrampoline thread", v175, 2u);
    }

    *__error() = v35;
    pthread_mutex_lock((v31 + 245784));
    pthread_create(&v155[v26], v137, mergeIndexDataTrampoline, v27);
    pthread_cond_wait(&v31[v127], (v31 + 245784));
    pthread_mutex_unlock((v31 + 245784));
    v38 = (1 << v28) | v25;
    v39 = malloc_type_malloc(v126, v125);
    v29 = v157;
    v156[v26] = v39;
    *&v133[1 * v26] = v39;
    ++v28;
    ++v26;
    v27 += 6;
    v25 = v38;
    v9 = v159;
  }

  while (v159 != v28);
  v40 = v158;
  v41 = v158;
  v42 = 0;
  v24 = v154;
  do
  {
    v43 = v42;
    v44 = v41;
    getItem(v175, *&v24[8 * v42], v29[v42], v41[3], (*v29 + 15192));
    *v44 = v175[0];
    *(v44 + 1) = v175[1];
    *(v44 + 2) = v175[2];
    v44[6] = v176;
    v44[7] = v43;
    v42 = v43 + 1;
    v41 = v44 + 8;
  }

  while (v9 != v43 + 1);
LABEL_19:
  qsort(v40, v9, 0x40uLL, TermItem_compare);
  v170 = 0u;
  v171 = 0u;
  v168 = 0u;
  v169 = 0u;
  bzero(v175, 0x1000uLL);
  v167 = 0;
  v45 = v149;
  if (!v149)
  {
    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v166 = 0;
    memset(v165, 0, sizeof(v165));
    v47 = -1;
    goto LABEL_23;
  }

  if (*(v149 + 8) == 1)
  {
    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v166 = 0;
    memset(v165, 0, sizeof(v165));
    v47 = *(v45 + 64);
LABEL_23:
    v48 = add_explicit;
    v49 = setThreadIdAndInfo(v47, sIndexExceptionCallbacks, v45, 0x20000000, add_explicit + 1);
    v166 = v49;
    v50 = threadData[9 * v49 + 1] + 320 * HIDWORD(v49);
    *&v165[8] = HIDWORD(v49);
    *&v165[4] = v51;
    *v165 = v52;
    *(v50 + 216) = 0;
    v53 = *(v50 + 312);
    v54 = *(v50 + 224);
    if (v54)
    {
      v54(*(v50 + 288));
    }

    v164 = v166;
    v163 = *&v165[8];
    v162 = *v165;
    if (_setjmp(v50))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LOWORD(v173[0]) = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v173, 2u);
      }

      *(v50 + 312) = v53;
      if ((~*(v50 + 212) & 0xA0000000) == 0)
      {
        v55 = *(v50 + 288);
        if (v55)
        {
          _CIMakeInvalid(v55);
        }
      }

      CIOnThreadCleanUpReset(v162);
      dropThreadId(v164, 1, v48 + 1);
      CICleanUpReset(v164, HIDWORD(v162));
      goto LABEL_78;
    }

    v147 = v53;
    v151 = v48;
    if (!v38)
    {
      goto LABEL_75;
    }

    v145 = (v150 + 64);
    v146 = v153 + 16;
    v143 = 15192;
    v144 = v148;
    v142 = 4096;
    v141 = 64;
    while (1)
    {
      if (*v40 == -1 || v172 != 0)
      {
        goto LABEL_75;
      }

      v173[0] = *v40;
      v173[1] = *(v40 + 1);
      v173[2] = *(v40 + 2);
      v174 = *(v40 + 6);
      v57 = atomic_load((*v157 + v143));
      v58 = v57 ? 1 : (*(v152 + 16))(*(v152 + 32));
      v172 = v58;
      v59 = v169 & 0x7FFFFFFF;
      if ((v169 & 0x7FFFFFFF) != 0)
      {
        v60 = DWORD1(v171);
        if (DWORD1(v171) <= 1 && (TermItem_compare(&v168, v158) & 0x8000000000000000) == 0)
        {
          break;
        }
      }

      if (v9 < 2)
      {
        v65 = 1;
      }

      else
      {
        v61 = HIDWORD(v174);
        v62 = v173[1];
        v63 = 1;
        v64 = v145;
        do
        {
          if (*(v64 + 52) != v61 || *(v64 + 16) != v62 || TermItem_IVF_compare(v64, v173))
          {
            goto LABEL_55;
          }

          if (*(v64 + 56) >= *(v64 - 8))
          {
            v111 = __si_assert_copy_extra_7645(0, -1);
            v112 = v111;
            v113 = "";
            if (v111)
            {
              v113 = v111;
            }

            __message_assert("%s:%u: failed assertion '%s' %s ", "CIMerging.c", 1439, "sourceTerm[k].idx<sourceTerm[k-1].idx", v113);
            free(v112);
            if (__valid_fs(-1))
            {
              v114 = 2989;
            }

            else
            {
              v114 = 3072;
            }

            *v114 = -559038737;
            abort();
          }

          ++v63;
          v64 += 64;
        }

        while (v159 != v63);
        v63 = v159;
LABEL_55:
        v65 = v63;
        v9 = v159;
      }

      v66 = v158;
      if (!v172)
      {
        v172 = (*(v153 + 16))(v153, v158, v65);
      }

      v67 = *(v66 + 1);
      v168 = *v66;
      v169 = v67;
      v68 = *(v66 + 3);
      v170 = *(v66 + 2);
      v171 = v68;
      *(&v169 + 1) = v175;
      __memcpy_chk();
      if (v65 <= 1)
      {
        v69 = 1;
      }

      else
      {
        v69 = v65;
      }

      v70 = v69;
      v71 = v66;
      v72 = v38;
      do
      {
        v73 = v72;
        v74 = v70;
        getItem(v160, *&v24[8 * *(v71 + 7)], v157[*(v71 + 7)], *(v71 + 3), (*v157 + 15192));
        v75 = v160[1];
        *v71 = v160[0];
        *(v71 + 1) = v75;
        *(v71 + 2) = v160[2];
        *(v71 + 6) = v161;
        v76 = 1 << *(v71 + 14);
        if (*v71 == -1)
        {
          v77 = v73 & ~v76;
        }

        else
        {
          v77 = v73;
          if ((v76 & v73) == 0)
          {
            v105 = __si_assert_copy_extra_7645(0, -1);
            v106 = v105;
            v107 = "";
            if (v105)
            {
              v107 = v105;
            }

            __message_assert("%s:%u: failed assertion '%s' %s ", "CIMerging.c", 1455, "moredata&(1<<sourceTerm[i].idx)", v107);
            goto LABEL_97;
          }
        }

        v78 = v77;
        v71 += 64;
        v72 = v77;
        v70 = v74 - 1;
      }

      while (v74 != 1);
      if (v65 == 1)
      {
        v80 = v144;
        v79 = v145;
        if (v9 >= 2)
        {
          do
          {
            v81 = v79 - 4;
            if ((TermItem_compare(v79, (v79 - 4)) & 0x8000000000000000) == 0)
            {
              break;
            }

            v83 = v79[2];
            v82 = v79[3];
            v85 = *v79;
            v84 = v79[1];
            v86 = *(v79 - 3);
            *v79 = *v81;
            v79[1] = v86;
            v87 = *(v79 - 1);
            v79[2] = *(v79 - 2);
            v79[3] = v87;
            *v81 = v85;
            *(v79 - 3) = v84;
            *(v79 - 2) = v83;
            *(v79 - 1) = v82;
            v79 += 4;
            --v80;
          }

          while (v80);
        }
      }

      else
      {
        qsort(v158, v9, v141, TermItem_compare);
      }

      v38 = v78;
      v40 = v158;
      if (!v78)
      {
LABEL_75:
        v167 = 1;
        v88 = threadData[9 * v164 + 1] + 320 * v163;
        *(v88 + 312) = v147;
        v89 = *(v88 + 232);
        if (v89)
        {
          v89(*(v88 + 288));
        }

        dropThreadId(v164, 0, v151 + 1);
        v29 = v157;
        goto LABEL_78;
      }
    }

    v115 = v157;
    v116 = v158;
    if (__valid_fsp(*(v157[*(v158 + 7)] + 9432)))
    {
      v117 = __si_assert_copy_extra_7645(*(v115[*(v116 + 7)] + 9432), -1);
      v118 = v117;
      v119 = "";
      if (v117)
      {
        v119 = v117;
      }

      si_analytics_log_2752("%s:%u: failed assertion '%s' %s lastItem(l:%d o:%lld k:%d) vs firstItem(l:%d o:%lld k:%d)", "CIMerging.c", 1435, "lastItem.item.termLen==0 || lastItem.item.kind>=Vector8 || TermItem_compare(&lastItem, &sourceTerm[0]) < 0", v119, v59, v168, v60, *(v116 + 4) & 0x7FFFFFFF, *v116, *(v116 + 13));
      free(v118);
      v110 = 2816;
LABEL_110:
      *v110 = -559038737;
      abort();
    }

LABEL_109:
    v110 = 3072;
    goto LABEL_110;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    LOWORD(v173[0]) = 0;
    _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", v173, 2u);
  }

LABEL_78:
  if ((v167 & 1) == 0)
  {
    v90 = *__error();
    v91 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v173[0]) = 136315394;
      *(v173 + 4) = "iterateTermsForIndexes";
      WORD6(v173[0]) = 1024;
      *(v173 + 14) = 1484;
      _os_log_error_impl(&dword_1C278D000, v91, OS_LOG_TYPE_ERROR, "%s:%d: Exception on new index merging", v173, 0x12u);
    }

    *__error() = v90;
    v172 = 1;
  }

  if (v9 >= 1)
  {
    v92 = v155;
    v121 = 15192;
    v122 = 0;
    v93 = v24;
    v94 = v9;
    v95 = v29;
    do
    {
      v96 = *v93;
      if (v172 || (v97 = atomic_load((*v95 + v121))) != 0)
      {
        v172 = 1;
        pthread_cond_signal((v96 + 245848));
      }

      *&v173[0] = v122;
      v98 = *v92++;
      pthread_join(v98, v173);
      pthread_mutex_destroy((v96 + 245784));
      pthread_cond_destroy((v96 + 245848));
      pthread_cond_destroy((v96 + 245896));
      free(v96);
      ++v95;
      ++v93;
      --v94;
    }

    while (v94);
    v99 = v156;
    v40 = v158;
    v100 = v159;
    do
    {
      v101 = v100;
      v102 = v99 + 1;
      free(*v99);
      v99 = v102;
      v100 = v101 - 1;
    }

    while (v101 != 1);
  }

  free(v40);
  result = v172 != 0;
  v104 = *MEMORY[0x1E69E9840];
  return result;
}

char *__si_assert_copy_extra_7645(_DWORD *a1, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  bzero(v11, 0x400uLL);
  if (!a1)
  {
    if (a2 != -1)
    {
      v4 = v11;
      if ((fcntl(a2, 50, v11) & 0x80000000) == 0)
      {
        if (v11[0])
        {
          goto LABEL_10;
        }
      }
    }

    goto LABEL_7;
  }

  v4 = fd_realpath(a1, v11);
  if (!v4)
  {
LABEL_7:
    v5 = getcwd(v11, 0x400uLL);
    if (v5)
    {
      v4 = v5;
    }

    else
    {
      v4 = "";
    }
  }

LABEL_10:
  v10 = 0;
  v6 = pthread_getspecific(__THREAD_STR_DATA_KEY);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = "";
  }

  asprintf(&v10, "%s %s", v4, v7);
  result = v10;
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t writeWindowInit(uint64_t result, void *a2, uint64_t a3, char a4)
{
  v4 = result;
  *(result + 16) = 0;
  a2[1] = 8;
  *result = a2;
  *(result + 8) = -1;
  *(result + 24) = 0;
  *(result + 41) = a4;
  if (!a3)
  {
    while (1)
    {
      v7 = *v4;
      v8 = *(*v4 + 24);
      if (v8 > 0x100000)
      {
        break;
      }

      *(v7 + 24) = 2 * v8;
      result = fd_truncate(*(v7 + 4488), 2 * v8);
      if (result == -1)
      {
        goto LABEL_3;
      }
    }

LABEL_7:
    if (*(v4 + 24))
    {
      return result;
    }

    goto LABEL_8;
  }

  v5 = (*MEMORY[0x1E69E9AC8] + a3) & ~*MEMORY[0x1E69E9AB8];
  a2[3] = v5;
  result = fd_truncate(a2[561], v5);
  if (result != -1)
  {
    goto LABEL_7;
  }

LABEL_3:
  result = __error();
  v6 = *result;
  *(v4 + 24) = *result;
  if (v6)
  {
    return result;
  }

LABEL_8:
  v9 = *(v4 + 16);
  result = fd_mmap(*(*v4 + 4488));
  *(v4 + 8) = result;
  if (result == -1)
  {
    result = __error();
    *(v4 + 24) = *result;
  }

  return result;
}

uint64_t createWPCOccurenceCountMap(uint64_t *a1)
{
  if (*a1)
  {
    v4 = __si_assert_copy_extra_7645(0, -1);
    v5 = v4;
    v6 = "";
    if (v4)
    {
      v6 = v4;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "CIMerging.c", 1036, "* occurrenceCountMap == ((void*)0)", v6);
    free(v5);
    if (__valid_fs(-1))
    {
      v7 = 2989;
    }

    else
    {
      v7 = 3072;
    }

    *v7 = -559038737;
    abort();
  }

  v2 = *MEMORY[0x1E695E480];
  result = MDDictionaryUIntUIntCreate();
  *a1 = result;
  return result;
}

BOOL merge_checkAgainstUpdates1(uint64_t a1, unint64_t **a2, unsigned int a3, uint64_t a4)
{
  if (!a2[1])
  {
    return 0;
  }

  v4 = a4;
  v7 = a4 + a3;
  checkChangeHolderIntegrity(a2);
  v8 = a2[3];
  if (v8 >= 2)
  {
    v9 = a2[1];
    if (v9)
    {
      memmove(&(*a2)[2 * (a2[2] - v9) + 2], *a2 + 2, 16 * v8 - 16);
      a2[3] = 1;
    }
  }

  while (1)
  {
    v10 = *a2;
    v11 = **a2;
    if (v7 >= v11)
    {
      checkChangeHolderIntegrity(a2);
      return a2[1] != 0;
    }

    v12 = v11 - v4;
    v13 = (v11 - v4);
    v14 = *(a1 + 24);
    if (v10[2] >= 1 && v13 < v14)
    {
      v17 = *(a1 + 16);
      if (!v17)
      {
        goto LABEL_23;
      }

      v18 = *(v17 + 16);
      if (*v17 == 1)
      {
        if (CIIndexSetHasIndex(v18, v12))
        {
          v19 = *(a1 + 16);
          if (v19)
          {
            if (*v19)
            {
              v12 += *(v19 + 8);
            }

            else
            {
              v12 = *(*(v19 + 16) + 4 * v13);
            }
          }

LABEL_23:
          packContextAppend(a1, v12);
          *v10 = 0;
          goto LABEL_24;
        }

        v14 = *(a1 + 24);
      }

      else
      {
        v12 = *(v18 + 4 * v13);
        if (v12)
        {
          goto LABEL_23;
        }
      }
    }

    if (v13 < v14 && v10[2] < 0)
    {
      v16 = *(a1 + 16);
      if (v16)
      {
        if (*v16 == 1)
        {
          CIIndexSetHasIndex(*(v16 + 16), *v10 - v4);
        }
      }
    }

LABEL_24:
    v20 = a2[1] - 1;
    a2[1] = v20;
    if (!v20)
    {
      break;
    }

    **a2 = *&(*a2)[2 * (a2[2] - v20)];
  }

  result = 0;
  a2[3] = 0;
  return result;
}

unint64_t resetReadPosContext(unint64_t a1, uint64_t a2, int a3)
{
  v4 = a1;
  *(a2 + 56) = 0;
  if (!a1)
  {
    v8 = 1;
    goto LABEL_21;
  }

  v6 = *(a2 + 32);
  if (v6)
  {
    if (v6 <= a1)
    {
      if (__valid_fs(-1))
      {
        v18 = __si_assert_copy_extra_7645(0, -1);
        v19 = v18;
        v20 = "";
        if (v18)
        {
          v20 = v18;
        }

        si_analytics_log_2752("%s:%u: failed assertion '%s' %s Offset %lld past end of buffer %ld", "CIMerging.c", 920, "next < context->readBuffer.mappedSize", v20, v4, *(a2 + 32));
        free(v19);
        MEMORY[0xB00] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }

    v7 = a1;
    goto LABEL_13;
  }

  v9 = *(a2 + 16);
  v10 = a1 >= v9;
  v7 = a1 - v9;
  if (v10 && v7 - 65517 > 0xFFFFFFFFFFFEFFFELL)
  {
    goto LABEL_13;
  }

  *(a2 + 16) = a1 & 0x3FFFFFFFFFFFF000;
  v12 = fd_pread(*a2, *(a2 + 24), 0x10000uLL, a1 & 0x3FFFFFFFFFFFF000);
  v13 = *(a2 + 16);
  v10 = v4 >= v13;
  v7 = v4 - v13;
  if (!v10)
  {
    v25 = __si_assert_copy_extra_7645(0, -1);
    v26 = v25;
    v27 = "";
    if (v25)
    {
      v27 = v25;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "CIMerging.c", 931, "next >= context->last_offset", v27);
    free(v26);
    if (__valid_fs(-1))
    {
      v28 = 2989;
    }

    else
    {
      v28 = 3072;
    }

    *v28 = -559038737;
    abort();
  }

  if (v12 != -1)
  {
LABEL_13:
    v4 = 0;
    *(a2 + 8) = v7;
    if (a3)
    {
LABEL_14:
      v8 = 0;
      *(a2 + 40) = 0;
      *(a2 + 48) = 0;
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  v4 = -1;
  if (a3)
  {
    goto LABEL_14;
  }

LABEL_16:
  v14 = *(a2 + 24);
  VInt64 = v2_readVInt64(v14, (a2 + 8));
  if (VInt64)
  {
    v16 = VInt64 >> 1;
    VInt64 = v2_readVInt64(v14, (a2 + 8));
  }

  else
  {
    v16 = 0;
  }

  if (VInt64)
  {
    v21 = __si_assert_copy_extra_7645(0, -1);
    v22 = v21;
    v23 = "";
    if (v21)
    {
      v23 = v21;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "PayloadIterator.h", 279, "(value & 1) == 0", v23);
    free(v22);
    if (__valid_fs(-1))
    {
      v24 = 2989;
    }

    else
    {
      v24 = 3072;
    }

    *v24 = -559038737;
    abort();
  }

  v8 = 0;
  *(a2 + 40) = v16;
  *(a2 + 48) = VInt64 >> 1;
LABEL_21:
  *(a2 + 66) = v8;
  return v4;
}

uint64_t merge_handleUpdate(uint64_t a1, unint64_t a2, int a3)
{
  checkChangeHolderIntegrity(a1);
  changesHandleUpdate(a1, a2, a3);
  v6 = *(a1 + 8);
  if (v6 && !*(a1 + 24))
  {
    **a1 = *(*a1 + 16 * (*(a1 + 16) - v6));
    *(a1 + 24) = 1;
  }

  return checkChangeHolderIntegrity(a1);
}

uint64_t merge_checkAgainstUpdates(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!merge_checkAgainstUpdates1(a1, a2, a3, a4) || (v7 = a4 + a3, v8 = *a2, v7 != **a2))
  {
    checkChangeHolderIntegrity(a2);
    v10 = 0;
    goto LABEL_16;
  }

  v9 = *(v8 + 2);
  v10 = v9 >> 31;
  if ((v9 & 0x80000000) != 0)
  {
    if (v9 != -1)
    {
      v11 = *__error();
      v12 = _SILogForLogForCategory(10);
      v13 = 2 * (dword_1EBF46AF4 < 4);
      if (os_log_type_enabled(v12, v13))
      {
LABEL_10:
        v14 = *(*a2 + 8);
        v18 = 134218240;
        v19 = v7;
        v20 = 1024;
        v21 = v14;
        _os_log_impl(&dword_1C278D000, v12, v13, "Mismatched changed count for %lld, count %d", &v18, 0x12u);
      }

LABEL_11:
      *__error() = v11;
      v8 = *a2;
    }
  }

  else if (v9 >= 2)
  {
    v11 = *__error();
    v12 = _SILogForLogForCategory(10);
    v13 = 2 * (dword_1EBF46AF4 < 4);
    if (os_log_type_enabled(v12, v13))
    {
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  *(v8 + 2) = 0;
  v15 = *(a2 + 8) - 1;
  *(a2 + 8) = v15;
  if (v15)
  {
    **a2 = *(*a2 + 16 * (*(a2 + 16) - v15));
  }

  else
  {
    *(a2 + 24) = 0;
  }

  checkChangeHolderIntegrity(a2);
LABEL_16:
  v16 = *MEMORY[0x1E69E9840];
  return v10;
}

unsigned int *packContextAppend(uint64_t a1, unsigned int a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 8);
  v4 = *(a1 + 12);
  result = *a1;
  if (v5 >= v4)
  {
    if (v4)
    {
      v11 = 2 * v4;
    }

    else
    {
      v11 = 1024;
    }

    *(a1 + 12) = v11;
    result = malloc_type_realloc(result, 8 * v11, 0x100004000313F17uLL);
    *a1 = result;
    v5 = *(a1 + 8);
    if (!v5)
    {
LABEL_4:
      *(a1 + 8) = v5 + 1;
      result[v5] = a2;
      v8 = *(a1 + 8);
      if (v8 >= 2)
      {
        v9 = result[v8 - 2];
        if (v9 <= result[v8 - 1])
        {
          v13 = __si_assert_copy_extra_7645(*(a1 + 80), -1);
          v14 = v13;
          v15 = "";
          if (v13)
          {
            v15 = v13;
          }

          __message_assert("%s:%u: failed assertion '%s' %s expected %d > %d", "CIMerging.c", 4293, "context->count<=1 || context->packbuffer[context->count-2] > context->packbuffer[context->count-1]", v15, *(*a1 + 4 * (*(a1 + 8) - 2)), *(*a1 + 4 * (*(a1 + 8) - 1)));
          free(v14);
          if (__valid_fsp(*(a1 + 80)))
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

        if (v8 != 2 && result[v8 - 3] <= v9)
        {
          v17 = __si_assert_copy_extra_7645(*(a1 + 80), -1);
          v18 = v17;
          v19 = "";
          if (v17)
          {
            v19 = v17;
          }

          __message_assert("%s:%u: failed assertion '%s' %s expected %d > %d", "CIMerging.c", 4299, "context->count<=2 || context->packbuffer[context->count-3] > context->packbuffer[context->count-2]", v19, *(*a1 + 4 * (*(a1 + 8) - 3)), *(*a1 + 4 * (*(a1 + 8) - 2)));
          free(v18);
          if (__valid_fsp(*(a1 + 80)))
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
      }

      goto LABEL_8;
    }
  }

  else if (!v5)
  {
    goto LABEL_4;
  }

  v7 = result[v5 - 1];
  if (v7 > a2)
  {
    goto LABEL_4;
  }

  if (v7 == a2)
  {
    goto LABEL_8;
  }

  if (v5 - 1 < 1)
  {
    --v5;
    goto LABEL_33;
  }

  while (1)
  {
    v12 = result[--v5 - 1];
    if (v12 >= a2)
    {
      break;
    }

    if (v5 <= 1)
    {
      v5 = 0;
      goto LABEL_33;
    }
  }

  if (v12 != a2)
  {
LABEL_33:
    v21 = *__error();
    v22 = _SILogForLogForCategory(10);
    v23 = 2 * (dword_1EBF46AF4 < 4);
    if (os_log_type_enabled(v22, v23))
    {
      v24 = *(a1 + 8);
      *buf = 67109376;
      v33 = v5;
      v34 = 1024;
      v35 = v24;
      _os_log_impl(&dword_1C278D000, v22, v23, "Had to take slow path, items out of order. Inserted at index %d of %d", buf, 0xEu);
    }

    *__error() = v21;
    result = memmove((*a1 + 4 * v5 + 4), (*a1 + 4 * v5), 4 * (*(a1 + 8) - v5));
    v25 = *a1;
    *(*a1 + 4 * v5) = a2;
    if (v5 && *v25 <= a2)
    {
      v29 = __si_assert_copy_extra_7645(*(a1 + 80), -1);
      v27 = v29;
      v30 = "";
      if (v29)
      {
        v30 = v29;
      }

      __message_assert("%s:%u: failed assertion '%s' %s expected %d > %d", "CIMerging.c", 4276, "i==0 || context->packbuffer[i-i] > context->packbuffer[i]", v30, *(*a1 + 4 * v5 - 4), *(*a1 + 4 * v5));
    }

    else
    {
      if (v25[v5 + 1] < a2)
      {
        ++*(a1 + 8);
        goto LABEL_8;
      }

      v26 = __si_assert_copy_extra_7645(*(a1 + 80), -1);
      v27 = v26;
      v28 = "";
      if (v26)
      {
        v28 = v26;
      }

      __message_assert("%s:%u: failed assertion '%s' %s expected %d > %d", "CIMerging.c", 4282, "context->packbuffer[i] > context->packbuffer[i+1]", v28, *(*a1 + 4 * v5), *(*a1 + 4 * (v5 + 1)));
    }

    free(v27);
    if (__valid_fsp(*(a1 + 80)))
    {
      v31 = 2989;
    }

    else
    {
      v31 = 3072;
    }

    *v31 = -559038737;
    abort();
  }

LABEL_8:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}
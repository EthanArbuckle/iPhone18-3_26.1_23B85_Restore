@interface SGSelfIdentification
+ (id)processConversation:(id)conversation options:(unint64_t)options;
+ (id)processConversation:(id)conversation threadLength:(unint64_t)length options:(unint64_t)options;
@end

@implementation SGSelfIdentification

+ (id)processConversation:(id)conversation options:(unint64_t)options
{
  v6 = sgMap();
  0x100 = [self processConversation:v6 threadLength:0 options:options | 0x100];

  return 0x100;
}

SGTextMessageItem *__52__SGSelfIdentification_processConversation_options___block_invoke(uint64_t a1, void *a2)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = v2;
  v5 = v4;
  v6 = v4;
  if (isKindOfClass)
  {
    v7 = [(SGTextMessageItem *)v4 hasPrefix:@"sent:"];
    v8 = [SGTextMessageItem alloc];
    v9 = [SGTextMessage alloc];
    v16[0] = @"isSent";
    v10 = [MEMORY[0x277CCABB0] numberWithBool:v7];
    v16[1] = @"body";
    v17[0] = v10;
    v11 = v5;
    if (v7)
    {
      v11 = [(SGTextMessageItem *)v5 substringFromIndex:5];
    }

    v17[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
    v13 = [(SGTextMessage *)v9 initWithMessageDictionary:v12];
    v6 = [(SGTextMessageItem *)v8 initWithTextMessage:v13];

    if (v7)
    {
    }
  }

  v14 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)processConversation:(id)conversation threadLength:(unint64_t)length options:(unint64_t)options
{
  v63 = *MEMORY[0x277D85DE8];
  conversationCopy = conversation;
  if (![conversationCopy count])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSelfIdentification.m" lineNumber:108 description:{@"Invalid parameter not satisfying: %@", @"conversation.count > 0"}];
  }

  lastObject = [conversationCopy lastObject];
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__7526;
  v56 = __Block_byref_object_dispose__7527;
  v57 = 0;
  message = [lastObject message];
  isSent = [message isSent];

  if (isSent)
  {
    v12 = sgLogHandle();
    v45 = v12;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf) = 0;
      _os_log_debug_impl(&dword_231E60000, v12, OS_LOG_TYPE_DEBUG, "Self-id: Skipping - outgoing message", &buf, 2u);
    }

    v13 = 0;
  }

  else
  {
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __65__SGSelfIdentification_processConversation_threadLength_options___block_invoke;
    v51[3] = &__block_descriptor_48_e67___NSString_36__0_SGMSIPatternType__Q_8__NSString_16__NSString_24B32l;
    v51[4] = options;
    v51[5] = length;
    v14 = MEMORY[0x2383809F0](v51);
    text = [lastObject text];
    v16 = _PASNormalizeUnicodeStringMinimally();

    v17 = sgLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v16;
      _os_log_debug_impl(&dword_231E60000, v17, OS_LOG_TYPE_DEBUG, "Self-id: looking for pattern match in: %@", &buf, 0xCu);
    }

    v43 = +[SGDetectedAttributeDissector patterns];
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __65__SGSelfIdentification_processConversation_threadLength_options___block_invoke_27;
    v47[3] = &unk_27894C5C0;
    v45 = v14;
    v49 = v45;
    v50 = &v52;
    v48 = v16;
    v18 = v48;
    v19 = v47;
    v20 = +[SGDetectedAttributeDissector patterns];
    v21 = [v20 regex2ForKey:@"MyName/F"];
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v59 = __enumerateMyNameInstances_block_invoke;
    v60 = &unk_27894C630;
    v61 = v18;
    v62 = v19;
    v22 = v18;
    v23 = v19;
    v44 = v22;
    [v21 enumerateMatchesInString:v22 ngroups:4 blockWithSubregexp:&buf];

    v24 = v53[5];
    if (!v24)
    {
      v25 = [v43 regex2ForKey:@"NameRequest/F"];
      for (i = [conversationCopy count] - 2; ; --i)
      {
        v27 = [conversationCopy count];
        v28 = v27 <= 3 ? 3 : v27;
        if (i < v28 - 3)
        {
          break;
        }

        v29 = [conversationCopy objectAtIndexedSubscript:i];
        message2 = [v29 message];
        if ([message2 isSent])
        {
          text2 = [v29 text];
          v32 = _PASNormalizeUnicodeString();
          v33 = [v25 existsInString:v32];

          if (v33)
          {
            hashId = [v33 hashId];
            v35 = (v45[2].isa)(v45, *MEMORY[0x277D023D8], hashId, v44, 0);

            if ([v35 length])
            {
              v36 = objc_opt_new();
              v37 = v53[5];
              v53[5] = v36;

              [v53[5] setName:v35];
              [v53[5] setContext:v44];
              v38 = [v44 length];
              [v53[5] setContextRange:{0, v38}];
              v39 = [MEMORY[0x277D01FD8] extractionInfoWithExtractionType:2 modelVersion:0 confidence:0];
              [v53[5] setExtractionInfo:v39];
            }

            break;
          }
        }

        else
        {
        }
      }

      v24 = v53[5];
    }

    v13 = v24;
  }

  _Block_object_dispose(&v52, 8);
  v40 = *MEMORY[0x277D85DE8];

  return v13;
}

id __65__SGSelfIdentification_processConversation_threadLength_options___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, char a5)
{
  v76 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = _PASCollapseWhitespaceAndStrip();
  if (![v11 length])
  {
    v13 = 0;
    goto LABEL_33;
  }

  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v66 = 0;
  v59 = 0;
  v60 = &v59;
  v61 = 0x2020000000;
  v62 = 0;
  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = 0;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  if (SGGuessNamingTradition(v11) != 1)
  {
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v33 = __65__SGSelfIdentification_processConversation_threadLength_options___block_invoke_2;
    v34 = &unk_27894C578;
    v36 = &v51;
    v37 = &v47;
    v38 = &v43;
    v35 = v10;
    v39 = &v59;
    v14 = *(a1 + 32);
    v40 = &v55;
    v41 = &v63;
    v42 = v14;
    v15 = v11;
    v16 = v32;
    v68 = 0;
    v69 = &v68;
    v70 = 0x2020000000;
    v71 = 0;
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __enumerateNameComponents_block_invoke;
    v73 = &unk_27894C608;
    v75 = &v68;
    v17 = v16;
    v74 = v17;
    [SGTokenizer enumerateTokensInString:v15 block:buf];
    if (!v69[3])
    {
      v67 = 0;
      v18 = [v15 length];
      (v33)(v17, v15, 0, v18, &v67);
    }

    _Block_object_dispose(&v68, 8);
    v19 = v52[3];
    v20 = v60[3];
    if (v19 != v20)
    {
      if (v56[3] < v20)
      {
        v21 = 0;
        goto LABEL_12;
      }

      if (v44[3])
      {
        goto LABEL_13;
      }

      v30 = v19 == 0;
      v31 = a5 ^ 1;
      if (!v30)
      {
        v31 = 0;
      }

      if ((v31 & 1) != 0 || (*(a1 + 32) & 2) == 0)
      {
        goto LABEL_13;
      }
    }

    v21 = [v15 length];
LABEL_12:
    v64[3] = v21;
LABEL_13:

    goto LABEL_14;
  }

  if ([SGNames isSalientNameByChars:v11])
  {
    v12 = [v11 length];
    v64[3] = v12;
  }

LABEL_14:
  v22 = v64[3];
  if (!v22)
  {
    v23 = sgLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      *&buf[4] = v10;
      _os_log_debug_impl(&dword_231E60000, v23, OS_LOG_TYPE_DEBUG, "Self-id: Found NO name to extract from candidate %@", buf, 0xCu);
    }

    v13 = 0;
    goto LABEL_22;
  }

  if (v22 == [v11 length])
  {
    v13 = v11;
    v23 = sgLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      *&buf[4] = v13;
      *&buf[12] = 2112;
      *&buf[14] = v10;
      v24 = "Self-id: Extracted name %@ from candidate %@";
LABEL_43:
      _os_log_debug_impl(&dword_231E60000, v23, OS_LOG_TYPE_DEBUG, v24, buf, 0x16u);
    }
  }

  else
  {
    v25 = objc_autoreleasePoolPush();
    v13 = [v11 substringWithRange:{0, v64[3]}];
    objc_autoreleasePoolPop(v25);
    v23 = sgLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      *&buf[4] = v13;
      *&buf[12] = 2112;
      *&buf[14] = v10;
      v24 = "Self-id: Extracted partial name %@ from candidate %@";
      goto LABEL_43;
    }
  }

LABEL_22:

  if ((*(a1 + 33) & 1) == 0)
  {
    if ([v13 length])
    {
      v26 = MEMORY[0x277D023C0];
    }

    else if (v48[3])
    {
      v26 = MEMORY[0x277D023B8];
    }

    else
    {
      v26 = MEMORY[0x277D023C8];
    }

    if (v9)
    {
      v27 = v9;
    }

    else
    {
      v27 = @"NA";
    }

    [MEMORY[0x277D02078] recordSelfIdMatchWithPatternType:a2 patternHash:v27 nameTokenCount:v60[3] nameClassification:*v26 messageIndex:*(a1 + 40)];
  }

  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(&v55, 8);
  _Block_object_dispose(&v59, 8);
  _Block_object_dispose(&v63, 8);
LABEL_33:

  v28 = *MEMORY[0x277D85DE8];

  return v13;
}

void __65__SGSelfIdentification_processConversation_threadLength_options___block_invoke_27(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, _BYTE *a7)
{
  v13 = a1[5];
  v14 = a2;
  v15 = [a5 hashId];
  v20 = (*(v13 + 16))(v13, *MEMORY[0x277D023D0], v15, v14, a6);

  if ([v20 length])
  {
    v16 = objc_opt_new();
    v17 = *(a1[6] + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    [*(*(a1[6] + 8) + 40) setName:v20];
    [*(*(a1[6] + 8) + 40) setContext:a1[4]];
    [*(*(a1[6] + 8) + 40) setContextRange:{a3, a4}];
    v19 = [MEMORY[0x277D01FD8] extractionInfoWithExtractionType:2 modelVersion:0 confidence:0];
    [*(*(a1[6] + 8) + 40) setExtractionInfo:v19];

    *a7 = 1;
  }
}

void __65__SGSelfIdentification_processConversation_threadLength_options___block_invoke_2(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v53 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = [SGNames attributesForNameWord:v7];
  v9 = v8;
  if ((v8 & 4) != 0)
  {
    v11 = a1[5];
  }

  else
  {
    if ((v8 & 1) == 0)
    {
      ++*(*(a1[7] + 8) + 24);
      v10 = sgLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v36 = a1[4];
        *buffer = 138412546;
        *&buffer[2] = v7;
        buffer[6] = 2112;
        *&buffer[7] = v36;
        _os_log_debug_impl(&dword_231E60000, v10, OS_LOG_TYPE_DEBUG, "Self-id: Not-a-known-name %@ word in candidate %@", buffer, 0x16u);
      }

      goto LABEL_9;
    }

    v11 = a1[6];
  }

  ++*(*(v11 + 8) + 24);
LABEL_9:
  ++*(*(a1[8] + 8) + 24);
  v12 = v7;
  Predefined = CFCharacterSetGetPredefined(kCFCharacterSetUppercaseLetter);
  v14 = v12;
  v15 = objc_opt_self();

  if (!v15)
  {
    goto LABEL_44;
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  memset(buffer, 0, sizeof(buffer));
  Length = CFStringGetLength(v14);
  theString = v14;
  v49 = 0;
  v50 = Length;
  CharactersPtr = CFStringGetCharactersPtr(v14);
  CStringPtr = 0;
  v47 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(v14, 0x600u);
  }

  v51 = 0;
  v52 = 0;
  v48 = CStringPtr;
  if (Length <= 0)
  {
LABEL_44:

    goto LABEL_45;
  }

  v37 = v9;
  v38 = a4;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 64;
  do
  {
    if (v20 >= 4)
    {
      v24 = 4;
    }

    else
    {
      v24 = v20;
    }

    v25 = v50;
    if (v50 <= v20)
    {
      v27 = 0;
    }

    else
    {
      if (v47)
      {
        v26 = &v47[v49];
LABEL_20:
        v27 = v26[v20];
        goto LABEL_22;
      }

      if (!v48)
      {
        v29 = v51;
        if (v52 <= v20 || v51 > v20)
        {
          v31 = v24 + v19;
          v32 = v23 - v24;
          v33 = v20 - v24;
          v34 = v33 + 64;
          if (v33 + 64 >= v50)
          {
            v34 = v50;
          }

          v51 = v33;
          v52 = v34;
          if (v50 >= v32)
          {
            v25 = v32;
          }

          v54.location = v33 + v49;
          v54.length = v25 + v31;
          CFStringGetCharacters(theString, v54, buffer);
          v29 = v51;
        }

        v26 = &buffer[-v29];
        goto LABEL_20;
      }

      v27 = v48[v49 + v20];
    }

LABEL_22:
    IsCharacterMember = CFCharacterSetIsCharacterMember(Predefined, v27);
    if (v21)
    {
      if (!IsCharacterMember)
      {
        ++v22;
      }
    }

    else if (!IsCharacterMember)
    {
      a4 = v38;
      v9 = v37;
      goto LABEL_44;
    }

    ++v20;
    --v19;
    ++v23;
    v21 = 1;
  }

  while (Length != v20);

  a4 = v38;
  v9 = v37;
  if (v22 >= 1)
  {
    ++*(*(a1[9] + 8) + 24);
  }

LABEL_45:
  if ((v9 & 4) != 0 && (a1[11] & 1) != 0 && *(*(a1[5] + 8) + 24) == *(*(a1[8] + 8) + 24))
  {
    *(*(a1[10] + 8) + 24) = a3 + a4;
  }

  v35 = *MEMORY[0x277D85DE8];
}

@end
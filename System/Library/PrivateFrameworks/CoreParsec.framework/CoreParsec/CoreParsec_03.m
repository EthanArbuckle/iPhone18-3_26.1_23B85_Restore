id sub_1B10AA678()
{
  v0 = sub_1B1121FAC();
  v1 = OUTLINED_FUNCTION_0(v0);
  v74 = v2;
  v75 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2();
  v73 = (v6 - v5);
  v7 = sub_1B1121FDC();
  v8 = OUTLINED_FUNCTION_0(v7);
  v76 = v9;
  v77 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2();
  v14 = v13 - v12;
  v15 = sub_1B1121F8C();
  v16 = OUTLINED_FUNCTION_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2();
  v23 = v22 - v21;
  v24 = sub_1B112194C();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  OUTLINED_FUNCTION_2();
  v26 = sub_1B11220AC();
  v27 = OUTLINED_FUNCTION_0(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_2();
  v34 = v33 - v32;
  sub_1B1121FFC();
  v72 = v29;
  v35 = (*(v29 + 88))(v34, v26);
  if (v35 == *MEMORY[0x1E69BD0E8])
  {
    sub_1B1121F9C();
    sub_1B112201C();
    sub_1B1121F7C();
    (*(v18 + 8))(v23, v15);
    sub_1B112190C();
    sub_1B1121FEC();
    OUTLINED_FUNCTION_52();
    v36 = objc_allocWithZone(MEMORY[0x1E69CA0E8]);
    OUTLINED_FUNCTION_3_8();
    return sub_1B10AAC3C(v37, v38, v39);
  }

  else
  {
    v41 = v35;
    if (v35 == *MEMORY[0x1E69BD0D8])
    {
      goto LABEL_4;
    }

    if (v35 == *MEMORY[0x1E69BD0F8])
    {
      v47 = [objc_allocWithZone(MEMORY[0x1E69CA190]) init];
      sub_1B112203C();
      sub_1B1121FBC();
      v49 = v48;
      v50 = *(v76 + 8);
      v50(v14, v77);
      [v47 setLat_];
      sub_1B112203C();
      sub_1B1121FCC();
      v52 = v51;
      v50(v14, v77);
      [v47 setLng_];
      sub_1B1121F9C();
      sub_1B1121FEC();
      OUTLINED_FUNCTION_52();
      v53 = objc_allocWithZone(MEMORY[0x1E69CA5C0]);
      OUTLINED_FUNCTION_3_8();
      return sub_1B10AAD14(v54, v55, v56);
    }

    if (v35 == *MEMORY[0x1E69BD0E0] || v35 == *MEMORY[0x1E69BD0C8] || v35 == *MEMORY[0x1E69BD0D0])
    {
LABEL_4:
      sub_1B1121F9C();
      OUTLINED_FUNCTION_12_3();
      OUTLINED_FUNCTION_52();
      v42 = objc_allocWithZone(MEMORY[0x1E69CA328]);
      OUTLINED_FUNCTION_3_8();
      return sub_1B10A8E98(v43, v44, v45, v46);
    }

    else
    {
      v59 = *MEMORY[0x1E69BD0F0];
      v60 = sub_1B1121F9C();
      v62 = v61;
      if (v41 != v59)
      {
        sub_1B1121FEC();
        OUTLINED_FUNCTION_52();
        v67 = objc_allocWithZone(MEMORY[0x1E69CA328]);
        OUTLINED_FUNCTION_3_8();
        v57 = sub_1B10A8E98(v68, v69, v70, v71);
        (*(v72 + 8))(v34, v26);
        return v57;
      }

      sub_1B112202C();
      v63 = sub_1B1121F9C();
      v65 = v64;
      (*(v74 + 8))(v73, v75);
      sub_1B1121FEC();
      OUTLINED_FUNCTION_52();
      v66 = objc_allocWithZone(MEMORY[0x1E69CA470]);
      return sub_1B10A8F88(v60, v62, v63, v65, v73);
    }
  }
}

id sub_1B10AAC3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = sub_1B1122A4C();

  v7 = sub_1B11218EC();
  v8 = sub_1B1122A4C();

  v9 = [v4 initWithQuery:v6 date:v7 identifier:v8];

  v10 = sub_1B112194C();
  (*(*(v10 - 8) + 8))(a3, v10);
  return v9;
}

id sub_1B10AAD14(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1B1122A4C();

  v6 = sub_1B1122A4C();

  v7 = [v3 initWithQuery:v5 location:a3 identifier:v6];

  return v7;
}

uint64_t sub_1B10AADA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A130, &qword_1B1133BF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B10AAE10(void *a1)
{
  v1 = [a1 urls];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1B112186C();
  v3 = sub_1B1122B8C();

  return v3;
}

uint64_t sub_1B10AAE70(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1B10AAEB8(uint64_t a1, void *a2)
{
  sub_1B1066864(0, &qword_1EB73A490, 0x1E69C9ED0);
  v3 = sub_1B1122B7C();

  [a2 setPreviewButtonItems_];
}

uint64_t sub_1B10AAF54()
{
  MEMORY[0x1B272EDD0](*(v0 + 16), -1, -1);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

void sub_1B10AAF94(void (*a1)(void))
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3);
  a1();

  os_unfair_lock_unlock(v3);
}

void sub_1B10AAFFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  switch(*(a10 + 16))
  {
    case 0:
      OUTLINED_FUNCTION_1_6();
      sub_1B112284C();
      return;
    case 1:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739E60, &unk_1B11340F0);
      v25 = swift_allocObject();
      v15 = OUTLINED_FUNCTION_0_12(v25, xmmword_1B1133BA0);
      goto LABEL_8;
    case 2:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739E60, &unk_1B11340F0);
      v17 = swift_allocObject();
      v18 = OUTLINED_FUNCTION_0_12(v17, xmmword_1B1133CF0);
      sub_1B1067888(v18, v19);
      v15 = OUTLINED_FUNCTION_2_6();
      goto LABEL_8;
    case 3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739E60, &unk_1B11340F0);
      v20 = swift_allocObject();
      v21 = OUTLINED_FUNCTION_0_12(v20, xmmword_1B1133D00);
      sub_1B1067888(v21, v22);
      v23 = OUTLINED_FUNCTION_2_6();
      sub_1B1067888(v23, v24);
      v15 = a10 + 112;
      v16 = &v20[7];
      goto LABEL_8;
    case 4:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739E60, &unk_1B11340F0);
      v10 = swift_allocObject();
      v11 = OUTLINED_FUNCTION_0_12(v10, xmmword_1B1135180);
      sub_1B1067888(v11, v12);
      v13 = OUTLINED_FUNCTION_2_6();
      sub_1B1067888(v13, v14);
      sub_1B1067888(a10 + 112, &v10[7]);
      v15 = a10 + 152;
      v16 = &v10[9].n128_i64[1];
      goto LABEL_8;
    case 5:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739E60, &unk_1B11340F0);
      v26 = swift_allocObject();
      v27 = OUTLINED_FUNCTION_0_12(v26, xmmword_1B1135170);
      sub_1B1067888(v27, v28);
      v29 = OUTLINED_FUNCTION_2_6();
      sub_1B1067888(v29, v30);
      sub_1B1067888(a10 + 112, &v26[7]);
      sub_1B1067888(a10 + 152, &v26[9].n128_i64[1]);
      v15 = a10 + 192;
      v16 = &v26[12];
LABEL_8:
      sub_1B1067888(v15, v16);
      OUTLINED_FUNCTION_1_6();
      sub_1B112284C();

      break;
    default:
      return;
  }
}

id PARLogHandleForCategory()
{
  if (PARLogHandleForCategory_onceToken != -1)
  {
    dispatch_once(&PARLogHandleForCategory_onceToken, &__block_literal_global_328);
  }

  v1 = PARLogHandleForCategory_logHandles_2;

  return v1;
}

uint64_t __PARLogHandleForCategory_block_invoke()
{
  v0 = os_log_create("com.apple.parsec", "Default");
  v1 = PARLogHandleForCategory_logHandles_0;
  PARLogHandleForCategory_logHandles_0 = v0;

  v2 = os_log_create("com.apple.parsec", "SearchFoundation");
  v3 = PARLogHandleForCategory_logHandles_1;
  PARLogHandleForCategory_logHandles_1 = v2;

  v4 = os_log_create("com.apple.parsec", "CoreParsec");
  v5 = PARLogHandleForCategory_logHandles_2;
  PARLogHandleForCategory_logHandles_2 = v4;

  v6 = os_log_create("com.apple.parsec", "Bag");
  v7 = PARLogHandleForCategory_logHandles_3;
  PARLogHandleForCategory_logHandles_3 = v6;

  v8 = os_log_create("com.apple.parsec", "VisualCAT");
  v9 = PARLogHandleForCategory_logHandles_4;
  PARLogHandleForCategory_logHandles_4 = v8;

  PARLogHandleForCategory_logHandles_5 = os_log_create("com.apple.parsec", "Internal Settings");

  return MEMORY[0x1EEE66BB8]();
}

Class __getDEExecutorClass_block_invoke(uint64_t a1)
{
  DialogEngineLibrary();
  result = objc_getClass("DEExecutor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getDEExecutorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return __82__SFSearchResult_VisualCat__processVisualCATResultSynchronouslyUsingPatternClass___block_invoke(v3);
  }

  return result;
}

void DialogEngineLibrary()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!DialogEngineLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __DialogEngineLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E7AC5EC0;
    v4 = 0;
    DialogEngineLibraryCore_frameworkLibrary = _sl_dlopen();
    v0 = v2[0];
    if (DialogEngineLibraryCore_frameworkLibrary)
    {
      if (!v2[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v0 = abort_report_np();
    }

    free(v0);
  }

LABEL_4:
  v1 = *MEMORY[0x1E69E9840];
}

uint64_t __DialogEngineLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  DialogEngineLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __PARLogHandleForCategory_block_invoke_35()
{
  v0 = os_log_create("com.apple.parsec", "Default");
  v1 = PARLogHandleForCategory_logHandles_0_37;
  PARLogHandleForCategory_logHandles_0_37 = v0;

  v2 = os_log_create("com.apple.parsec", "SearchFoundation");
  v3 = PARLogHandleForCategory_logHandles_1_38;
  PARLogHandleForCategory_logHandles_1_38 = v2;

  v4 = os_log_create("com.apple.parsec", "CoreParsec");
  v5 = PARLogHandleForCategory_logHandles_2_40;
  PARLogHandleForCategory_logHandles_2_40 = v4;

  v6 = os_log_create("com.apple.parsec", "Bag");
  v7 = PARLogHandleForCategory_logHandles_3_41;
  PARLogHandleForCategory_logHandles_3_41 = v6;

  v8 = os_log_create("com.apple.parsec", "VisualCAT");
  v9 = PARLogHandleForCategory_logHandles_4_25;
  PARLogHandleForCategory_logHandles_4_25 = v8;

  PARLogHandleForCategory_logHandles_5_43 = os_log_create("com.apple.parsec", "Internal Settings");

  return MEMORY[0x1EEE66BB8]();
}

void sub_1B10AD338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCATPatternClass_block_invoke(uint64_t a1)
{
  DialogEngineLibrary();
  result = objc_getClass("CATPattern");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCATPatternClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return [(PARSyncCard *)v3 cardWithTitle:v4 sections:v5, v6];
  }

  return result;
}

uint64_t __PARLogHandleForCategory_block_invoke_110()
{
  v0 = os_log_create("com.apple.parsec", "Default");
  v1 = PARLogHandleForCategory_logHandles_0_111;
  PARLogHandleForCategory_logHandles_0_111 = v0;

  v2 = os_log_create("com.apple.parsec", "SearchFoundation");
  v3 = PARLogHandleForCategory_logHandles_1_112;
  PARLogHandleForCategory_logHandles_1_112 = v2;

  v4 = os_log_create("com.apple.parsec", "CoreParsec");
  v5 = PARLogHandleForCategory_logHandles_2_113;
  PARLogHandleForCategory_logHandles_2_113 = v4;

  v6 = os_log_create("com.apple.parsec", "Bag");
  v7 = PARLogHandleForCategory_logHandles_3_107;
  PARLogHandleForCategory_logHandles_3_107 = v6;

  v8 = os_log_create("com.apple.parsec", "VisualCAT");
  v9 = PARLogHandleForCategory_logHandles_4_114;
  PARLogHandleForCategory_logHandles_4_114 = v8;

  PARLogHandleForCategory_logHandles_5_115 = os_log_create("com.apple.parsec", "Internal Settings");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __PARLogHandleForCategory_block_invoke_369()
{
  v0 = os_log_create("com.apple.parsec", "Default");
  v1 = PARLogHandleForCategory_logHandles_0_370;
  PARLogHandleForCategory_logHandles_0_370 = v0;

  v2 = os_log_create("com.apple.parsec", "SearchFoundation");
  v3 = PARLogHandleForCategory_logHandles_1_365;
  PARLogHandleForCategory_logHandles_1_365 = v2;

  v4 = os_log_create("com.apple.parsec", "CoreParsec");
  v5 = PARLogHandleForCategory_logHandles_2_371;
  PARLogHandleForCategory_logHandles_2_371 = v4;

  v6 = os_log_create("com.apple.parsec", "Bag");
  v7 = PARLogHandleForCategory_logHandles_3_372;
  PARLogHandleForCategory_logHandles_3_372 = v6;

  v8 = os_log_create("com.apple.parsec", "VisualCAT");
  v9 = PARLogHandleForCategory_logHandles_4_373;
  PARLogHandleForCategory_logHandles_4_373 = v8;

  PARLogHandleForCategory_logHandles_5_374 = os_log_create("com.apple.parsec", "Internal Settings");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t _CPPunchoutForFeedbackReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v24 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v24 & 0x7F) << v6;
      if ((v24 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    v14 = v13 >> 3;
    if ((v13 >> 3) <= 3)
    {
      if (v14 == 1)
      {
        v22 = PBReaderReadString();
        [a1 setName:v22];
        goto LABEL_38;
      }

      if (v14 == 3)
      {
        v22 = PBReaderReadString();
        [a1 setLabel:v22];
LABEL_38:

        continue;
      }
    }

    else
    {
      switch(v14)
      {
        case 4:
          v22 = PBReaderReadString();
          if (v22)
          {
            [a1 addUrls:v22];
          }

          goto LABEL_38;
        case 5:
          v22 = PBReaderReadString();
          [a1 setBundleIdentifier:v22];
          goto LABEL_38;
        case 6:
          v15 = 0;
          v16 = 0;
          v17 = 0;
          while (1)
          {
            v25 = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v25 & 0x7F) << v15;
            if ((v25 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v12 = v16++ >= 9;
            if (v12)
            {
              v21 = 0;
              goto LABEL_45;
            }
          }

          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v17;
          }

LABEL_45:
          [a1 setKnownBundleIdentifier:v21];
          continue;
      }
    }

    result = PBReaderSkipValueWithTag();
    if (!result)
    {
      return result;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPActionItemForFeedbackReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(_CPPunchoutForFeedback);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_CPPunchoutForFeedbackReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setPunchout:v13];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPButtonFeedbackReadFrom(void *a1, void *a2)
{
  v3 = a1;
  v4 = 0;
LABEL_2:
  [a1 setTimestamp:v4];
  while (1)
  {
    v5 = [a2 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v37 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v37 & 0x7F) << v6;
      if ((v37 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_17;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_17:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    v14 = v13 >> 3;
    if ((v13 >> 3) > 2)
    {
      if (v14 == 3)
      {
        v24 = 0;
        v25 = 0;
        v26 = 0;
        while (1)
        {
          v40 = 0;
          v27 = [a2 position] + 1;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
          {
            v29 = [a2 data];
            [v29 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v26 |= (v40 & 0x7F) << v24;
          if ((v40 & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v12 = v25++ >= 9;
          if (v12)
          {
            v30 = 0;
            goto LABEL_52;
          }
        }

        if ([a2 hasError])
        {
          v30 = 0;
        }

        else
        {
          v30 = v26;
        }

LABEL_52:
        [v3 setUniqueId:v30];
      }

      else
      {
        if (v14 == 4)
        {
          v31 = 0;
          v32 = 0;
          v33 = 0;
          while (1)
          {
            v39 = 0;
            v34 = [a2 position] + 1;
            if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
            {
              v36 = [a2 data];
              [v36 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v33 |= (v39 & 0x7F) << v31;
            if ((v39 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            v12 = v32++ >= 9;
            if (v12)
            {
              v4 = 0;
              goto LABEL_65;
            }
          }

          if ([a2 hasError])
          {
            v4 = 0;
          }

          else
          {
            v4 = v33;
          }

LABEL_65:
          a1 = v3;
          goto LABEL_2;
        }

LABEL_25:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }
    }

    else if (v14 == 1)
    {
      v17 = 0;
      v18 = 0;
      v19 = 0;
      while (1)
      {
        v38 = 0;
        v20 = [a2 position] + 1;
        if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
        {
          v22 = [a2 data];
          [v22 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v19 |= (v38 & 0x7F) << v17;
        if ((v38 & 0x80) == 0)
        {
          break;
        }

        v17 += 7;
        v12 = v18++ >= 9;
        if (v12)
        {
          v23 = 0;
          goto LABEL_48;
        }
      }

      if ([a2 hasError])
      {
        v23 = 0;
      }

      else
      {
        v23 = v19;
      }

LABEL_48:
      [v3 setCommandType:v23];
    }

    else
    {
      if (v14 != 2)
      {
        goto LABEL_25;
      }

      v15 = PBReaderReadString();
      [v3 setCommandDetail:v15];
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPButtonForFeedbackReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v31 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v31 & 0x7F) << v6;
      if ((v31 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    v14 = v13 >> 3;
    if ((v13 >> 3) == 1)
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
      while (1)
      {
        v32 = 0;
        v26 = [a2 position] + 1;
        if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
        {
          v28 = [a2 data];
          [v28 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v25 |= (v32 & 0x7F) << v23;
        if ((v32 & 0x80) == 0)
        {
          break;
        }

        v23 += 7;
        v12 = v24++ >= 9;
        if (v12)
        {
          v29 = 0;
          goto LABEL_45;
        }
      }

      if ([a2 hasError])
      {
        v29 = 0;
      }

      else
      {
        v29 = v25;
      }

LABEL_45:
      [a1 setCommandType:v29];
    }

    else if (v14 == 2)
    {
      v22 = PBReaderReadString();
      [a1 setCommandDetail:v22];
    }

    else if (v14 == 3)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      while (1)
      {
        v33 = 0;
        v18 = [a2 position] + 1;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
        {
          v20 = [a2 data];
          [v20 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v17 |= (v33 & 0x7F) << v15;
        if ((v33 & 0x80) == 0)
        {
          break;
        }

        v15 += 7;
        v12 = v16++ >= 9;
        if (v12)
        {
          v21 = 0;
          goto LABEL_49;
        }
      }

      if ([a2 hasError])
      {
        v21 = 0;
      }

      else
      {
        v21 = v17;
      }

LABEL_49:
      [a1 setUniqueId:v21];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPCBAEngagementFeedbackReadFrom(void *a1, void *a2)
{
  v3 = a1;
  v4 = 0;
LABEL_2:
  [a1 setTimestamp:v4];
  while (1)
  {
    v5 = [a2 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v37 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v37 & 0x7F) << v6;
      if ((v37 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_17;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_17:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    v14 = v13 >> 3;
    if ((v13 >> 3) > 2)
    {
      if (v14 == 4)
      {
        v30 = PBReaderReadString();
        [v3 setUrl:v30];
      }

      else
      {
        if (v14 != 3)
        {
          goto LABEL_42;
        }

        v22 = 0;
        v23 = 0;
        v24 = 0;
        while (1)
        {
          v38 = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (v38 & 0x7F) << v22;
          if ((v38 & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v12 = v23++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_52;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v24;
        }

LABEL_52:
        [v3 setCbaType:v28];
      }
    }

    else
    {
      if (v14 == 1)
      {
        v31 = 0;
        v32 = 0;
        v33 = 0;
        while (1)
        {
          v40 = 0;
          v34 = [a2 position] + 1;
          if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
          {
            v36 = [a2 data];
            [v36 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v33 |= (v40 & 0x7F) << v31;
          if ((v40 & 0x80) == 0)
          {
            break;
          }

          v31 += 7;
          v12 = v32++ >= 9;
          if (v12)
          {
            v4 = 0;
            goto LABEL_65;
          }
        }

        if ([a2 hasError])
        {
          v4 = 0;
        }

        else
        {
          v4 = v33;
        }

LABEL_65:
        a1 = v3;
        goto LABEL_2;
      }

      if (v14 == 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        while (1)
        {
          v39 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v39 & 0x7F) << v15;
          if ((v39 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v12 = v16++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_48;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v17;
        }

LABEL_48:
        [v3 setQueryId:v21];
      }

      else
      {
LABEL_42:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPCacheHitFeedbackReadFrom(void *a1, void *a2)
{
  v3 = a1;
  v4 = 0;
LABEL_2:
  [a1 setTimestamp:v4];
  while (1)
  {
    v5 = [a2 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v30 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v30 & 0x7F) << v6;
      if ((v30 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_17;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_17:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    v14 = v13 >> 3;
    if ((v13 >> 3) > 2)
    {
      if (v14 == 4)
      {
        v15 = PBReaderReadString();
        [v3 setUuid:v15];
LABEL_37:
      }

      else
      {
        if (v14 != 3)
        {
          goto LABEL_34;
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
        while (1)
        {
          v31 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v31 & 0x7F) << v16;
          if ((v31 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v12 = v17++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_41;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v18;
        }

LABEL_41:
        [v3 setTriggerEvent:v22];
      }
    }

    else
    {
      if (v14 == 1)
      {
        v24 = 0;
        v25 = 0;
        v26 = 0;
        while (1)
        {
          v32 = 0;
          v27 = [a2 position] + 1;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
          {
            v29 = [a2 data];
            [v29 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v26 |= (v32 & 0x7F) << v24;
          if ((v32 & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v12 = v25++ >= 9;
          if (v12)
          {
            v4 = 0;
            goto LABEL_54;
          }
        }

        if ([a2 hasError])
        {
          v4 = 0;
        }

        else
        {
          v4 = v26;
        }

LABEL_54:
        a1 = v3;
        goto LABEL_2;
      }

      if (v14 == 2)
      {
        v15 = PBReaderReadString();
        [v3 setInput:v15];
        goto LABEL_37;
      }

LABEL_34:
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPCardSectionForFeedbackReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
  {
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      LOBYTE(v30) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v30 & 0x7F) << v5;
      if ((v30 & 0x80) == 0)
      {
        break;
      }

      v5 += 7;
      v11 = v6++ >= 9;
      if (v11)
      {
        v12 = 0;
        goto LABEL_15;
      }
    }

    v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v12 >> 3))
    {
      case 1u:
        v13 = PBReaderReadString();
        [a1 setCardSectionId:v13];
        goto LABEL_61;
      case 2u:
        v13 = PBReaderReadString();
        [a1 setActionTarget:v13];
        goto LABEL_61;
      case 3u:
        v13 = PBReaderReadString();
        [a1 setActionDestination:v13];
        goto LABEL_61;
      case 4u:
        v13 = PBReaderReadString();
        [a1 setResultId:v13];
        goto LABEL_61;
      case 6u:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          LOBYTE(v30) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v30 & 0x7F) << v14;
          if ((v30 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_67;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_67:
        [a1 setCommandType:v20];
        goto LABEL_62;
      case 7u:
        v13 = PBReaderReadString();
        [a1 setCommandDetail:v13];
        goto LABEL_61;
      case 8u:
        v13 = objc_alloc_init(_CPCardSectionForFeedback);
        v30 = 0;
        v31 = 0;
        if (!PBReaderPlaceMark() || !_CPCardSectionForFeedbackReadFrom(v13, a2))
        {
          goto LABEL_74;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addCardSections:v13];
        }

        goto LABEL_61;
      case 9u:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        while (1)
        {
          LOBYTE(v30) = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v30 & 0x7F) << v21;
          if ((v30 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_71;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v23;
        }

LABEL_71:
        [a1 setCardSectionType:v27];
        goto LABEL_62;
      case 0xAu:
        v13 = PBReaderReadString();
        [a1 setCardSectionDetail:v13];
        goto LABEL_61;
      case 0xBu:
        v13 = objc_alloc_init(_CPButtonForFeedback);
        v30 = 0;
        v31 = 0;
        if (!PBReaderPlaceMark() || !_CPButtonForFeedbackReadFrom(v13, a2))
        {
          goto LABEL_74;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addButtons:v13];
        }

        goto LABEL_61;
      case 0xCu:
        v13 = objc_alloc_init(_CPButtonForFeedback);
        v30 = 0;
        v31 = 0;
        if (!PBReaderPlaceMark() || !_CPButtonForFeedbackReadFrom(v13, a2))
        {
          goto LABEL_74;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addLeadingSwipeButtonItems:v13];
        }

        goto LABEL_61;
      case 0xDu:
        v13 = objc_alloc_init(_CPButtonForFeedback);
        v30 = 0;
        v31 = 0;
        if (PBReaderPlaceMark() && _CPButtonForFeedbackReadFrom(v13, a2))
        {
          PBReaderRecallMark();
          if (v13)
          {
            [a1 addTrailingSwipeButtonItems:v13];
          }

LABEL_61:

LABEL_62:
          v28 = [a2 position];
          if (v28 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_74:

        return 0;
      case 0xEu:
        v13 = PBReaderReadString();
        [a1 setApplicationBundleIdentifier:v13];
        goto LABEL_61;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_62;
    }
  }
}

uint64_t _CPCardForFeedbackReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(_CPCardSectionForFeedback);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_CPCardSectionForFeedbackReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addCardSections:v13];
        }

        goto LABEL_24;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_26:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = PBReaderReadString();
    [a1 setFbr:v13];
LABEL_24:

    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPCardSectionEngagementFeedbackReadFrom(void *a1, void *a2)
{
  [a1 setTimestamp:0];
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v52) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v52 & 0x7F) << v5;
        if ((v52 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 5)
      {
        if (v13 <= 7)
        {
          if (v13 == 6)
          {
            v29 = 0;
            v30 = 0;
            v31 = 0;
            while (1)
            {
              LOBYTE(v52) = 0;
              v32 = [a2 position] + 1;
              if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
              {
                v34 = [a2 data];
                [v34 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v31 |= (v52 & 0x7F) << v29;
              if ((v52 & 0x80) == 0)
              {
                break;
              }

              v29 += 7;
              v11 = v30++ >= 9;
              if (v11)
              {
                v35 = 0;
                goto LABEL_94;
              }
            }

            v35 = (v31 != 0) & ~[a2 hasError];
LABEL_94:
            [a1 setDestinationWasPARPunchout:v35];
            goto LABEL_85;
          }

          if (v13 == 7)
          {
            v14 = PBReaderReadString();
            [a1 setParPunchoutActionTarget:v14];
LABEL_84:

            goto LABEL_85;
          }
        }

        else
        {
          switch(v13)
          {
            case 8:
              v14 = PBReaderReadString();
              [a1 setCardSectionId:v14];
              goto LABEL_84;
            case 9:
              v14 = PBReaderReadString();
              [a1 setResultId:v14];
              goto LABEL_84;
            case 0xA:
              v15 = 0;
              v16 = 0;
              v17 = 0;
              while (1)
              {
                LOBYTE(v52) = 0;
                v18 = [a2 position] + 1;
                if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
                {
                  v20 = [a2 data];
                  [v20 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v17 |= (v52 & 0x7F) << v15;
                if ((v52 & 0x80) == 0)
                {
                  break;
                }

                v15 += 7;
                v11 = v16++ >= 9;
                if (v11)
                {
                  v21 = 0;
                  goto LABEL_102;
                }
              }

              if ([a2 hasError])
              {
                v21 = 0;
              }

              else
              {
                v21 = v17;
              }

LABEL_102:
              [a1 setActionTarget:v21];
              goto LABEL_85;
          }
        }
      }

      else if (v13 <= 2)
      {
        if (v13 == 1)
        {
          v22 = 0;
          v23 = 0;
          v24 = 0;
          while (1)
          {
            LOBYTE(v52) = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v24 |= (v52 & 0x7F) << v22;
            if ((v52 & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v11 = v23++ >= 9;
            if (v11)
            {
              v28 = 0;
              goto LABEL_92;
            }
          }

          if ([a2 hasError])
          {
            v28 = 0;
          }

          else
          {
            v28 = v24;
          }

LABEL_92:
          [a1 setTimestamp:v28];
          goto LABEL_85;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(_CPPunchoutForFeedback);
          v52 = 0;
          v53 = 0;
          if (!PBReaderPlaceMark() || !_CPPunchoutForFeedbackReadFrom(v14, a2))
          {
LABEL_109:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setDestination:v14];
          goto LABEL_84;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v36 = 0;
            v37 = 0;
            v38 = 0;
            while (1)
            {
              LOBYTE(v52) = 0;
              v39 = [a2 position] + 1;
              if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
              {
                v41 = [a2 data];
                [v41 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v38 |= (v52 & 0x7F) << v36;
              if ((v52 & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              v11 = v37++ >= 9;
              if (v11)
              {
                v42 = 0;
                goto LABEL_98;
              }
            }

            if ([a2 hasError])
            {
              v42 = 0;
            }

            else
            {
              v42 = v38;
            }

LABEL_98:
            [a1 setTriggerEvent:v42];
            goto LABEL_85;
          case 4:
            v43 = 0;
            v44 = 0;
            v45 = 0;
            while (1)
            {
              LOBYTE(v52) = 0;
              v46 = [a2 position] + 1;
              if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
              {
                v48 = [a2 data];
                [v48 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v45 |= (v52 & 0x7F) << v43;
              if ((v52 & 0x80) == 0)
              {
                break;
              }

              v43 += 7;
              v11 = v44++ >= 9;
              if (v11)
              {
                v49 = 0;
                goto LABEL_106;
              }
            }

            if ([a2 hasError])
            {
              v49 = 0;
            }

            else
            {
              v49 = v45;
            }

LABEL_106:
            [a1 setActionCardType:v49];
            goto LABEL_85;
          case 5:
            v14 = objc_alloc_init(_CPCardSectionForFeedback);
            v52 = 0;
            v53 = 0;
            if (!PBReaderPlaceMark() || !_CPCardSectionForFeedbackReadFrom(v14, a2))
            {
              goto LABEL_109;
            }

            PBReaderRecallMark();
            [a1 setCardSection:v14];
            goto LABEL_84;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_85:
      v50 = [a2 position];
    }

    while (v50 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPCardSectionFeedbackReadFrom(void *a1, void *a2)
{
  [a1 setTimestamp:0];
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v24[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24[0] & 0x7F) << v5;
        if ((v24[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v14 = PBReaderReadString();
          [a1 setCardSectionId:v14];
          goto LABEL_38;
        }

        if (v13 == 4)
        {
          v14 = PBReaderReadString();
          [a1 setResultId:v14];
LABEL_38:

          goto LABEL_43;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          while (1)
          {
            LOBYTE(v24[0]) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:v24 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v24[0] & 0x7F) << v15;
            if ((v24[0] & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_42;
            }
          }

          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v17;
          }

LABEL_42:
          [a1 setTimestamp:v21];
          goto LABEL_43;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(_CPCardSectionForFeedback);
          v24[0] = 0;
          v24[1] = 0;
          if (!PBReaderPlaceMark() || !_CPCardSectionForFeedbackReadFrom(v14, a2))
          {

            return 0;
          }

          PBReaderRecallMark();
          [a1 setCardSection:v14];
          goto LABEL_38;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_43:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPCardViewAppearFeedbackReadFrom(void *a1, void *a2)
{
  [a1 setTimestamp:0];
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v31[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v31[0] & 0x7F) << v5;
        if ((v31[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 4)
        {
          v14 = PBReaderReadString();
          [a1 setFbr:v14];
LABEL_46:

          goto LABEL_55;
        }

        if (v13 == 3)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          while (1)
          {
            LOBYTE(v31[0]) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v31[0] & 0x7F) << v15;
            if ((v31[0] & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_50;
            }
          }

          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v17;
          }

LABEL_50:
          [a1 setLevel:v21];
          goto LABEL_55;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v22 = 0;
          v23 = 0;
          v24 = 0;
          while (1)
          {
            LOBYTE(v31[0]) = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v24 |= (v31[0] & 0x7F) << v22;
            if ((v31[0] & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v11 = v23++ >= 9;
            if (v11)
            {
              v28 = 0;
              goto LABEL_54;
            }
          }

          if ([a2 hasError])
          {
            v28 = 0;
          }

          else
          {
            v28 = v24;
          }

LABEL_54:
          [a1 setTimestamp:v28];
          goto LABEL_55;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(_CPCardForFeedback);
          v31[0] = 0;
          v31[1] = 0;
          if (!PBReaderPlaceMark() || !_CPCardForFeedbackReadFrom(v14, a2))
          {

            return 0;
          }

          PBReaderRecallMark();
          [a1 setCard:v14];
          goto LABEL_46;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_55:
      v29 = [a2 position];
    }

    while (v29 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPCardViewDisappearFeedbackReadFrom(void *a1, void *a2)
{
  [a1 setTimestamp:0];
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v31[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v31[0] & 0x7F) << v5;
        if ((v31[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 1)
      {
        v22 = 0;
        v23 = 0;
        v24 = 0;
        while (1)
        {
          LOBYTE(v31[0]) = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (v31[0] & 0x7F) << v22;
          if ((v31[0] & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v11 = v23++ >= 9;
          if (v11)
          {
            v28 = 0;
            goto LABEL_46;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v24;
        }

LABEL_46:
        [a1 setTimestamp:v28];
      }

      else if (v13 == 3)
      {
        v21 = objc_alloc_init(_CPCardForFeedback);
        v31[0] = 0;
        v31[1] = 0;
        if (!PBReaderPlaceMark() || !_CPCardForFeedbackReadFrom(v21, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setCard:v21];
      }

      else if (v13 == 2)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          LOBYTE(v31[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v31[0] & 0x7F) << v14;
          if ((v31[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_50;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_50:
        [a1 setCardDisappearEvent:v20];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v29 = [a2 position];
    }

    while (v29 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPClearInputFeedbackReadFrom(void *a1, void *a2)
{
  v3 = a1;
  v4 = 0;
LABEL_2:
  [a1 setTimestamp:v4];
  while (1)
  {
    v5 = [a2 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v28 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v28 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v28 & 0x7F) << v6;
      if ((v28 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_17;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_17:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      while (1)
      {
        v30 = 0;
        v25 = [a2 position] + 1;
        if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
        {
          v27 = [a2 data];
          [v27 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v24 |= (v30 & 0x7F) << v22;
        if ((v30 & 0x80) == 0)
        {
          break;
        }

        v22 += 7;
        v12 = v23++ >= 9;
        if (v12)
        {
          v4 = 0;
          goto LABEL_48;
        }
      }

      if ([a2 hasError])
      {
        v4 = 0;
      }

      else
      {
        v4 = v24;
      }

LABEL_48:
      a1 = v3;
      goto LABEL_2;
    }

    if ((v13 >> 3) == 2)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v29 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v29 & 0x7F) << v14;
        if ((v29 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v12 = v15++ >= 9;
        if (v12)
        {
          v20 = 0;
          goto LABEL_35;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v16;
      }

LABEL_35:
      [v3 setTriggerEvent:v20];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPUsageSinceLookbackReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
  {
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      LOBYTE(v121[0]) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:v121 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v121[0] & 0x7F) << v5;
      if ((v121[0] & 0x80) == 0)
      {
        break;
      }

      v5 += 7;
      v11 = v6++ >= 9;
      if (v11)
      {
        v12 = 0;
        goto LABEL_15;
      }
    }

    v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v12 >> 3))
    {
      case 1u:
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          LOBYTE(v121[0]) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:v121 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v121[0] & 0x7F) << v13;
          if ((v121[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
LABEL_193:
            [a1 setCollectionStartTimestamp:v19];
            goto LABEL_216;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v15;
        }

        goto LABEL_193;
      case 2u:
        v77 = 0;
        v78 = 0;
        v79 = 0;
        while (1)
        {
          LOBYTE(v121[0]) = 0;
          v80 = [a2 position] + 1;
          if (v80 >= [a2 position] && (v81 = objc_msgSend(a2, "position") + 1, v81 <= objc_msgSend(a2, "length")))
          {
            v82 = [a2 data];
            [v82 getBytes:v121 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v79 |= (v121[0] & 0x7F) << v77;
          if ((v121[0] & 0x80) == 0)
          {
            break;
          }

          v77 += 7;
          v11 = v78++ >= 9;
          if (v11)
          {
            v83 = 0;
            goto LABEL_197;
          }
        }

        if ([a2 hasError])
        {
          v83 = 0;
        }

        else
        {
          v83 = v79;
        }

LABEL_197:
        [a1 setCollectionEndTimestamp:v83];
        goto LABEL_216;
      case 3u:
        v49 = 0;
        v50 = 0;
        v51 = 0;
        while (1)
        {
          LOBYTE(v121[0]) = 0;
          v52 = [a2 position] + 1;
          if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
          {
            v54 = [a2 data];
            [v54 getBytes:v121 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v51 |= (v121[0] & 0x7F) << v49;
          if ((v121[0] & 0x80) == 0)
          {
            break;
          }

          v49 += 7;
          v11 = v50++ >= 9;
          if (v11)
          {
            v55 = 0;
            goto LABEL_177;
          }
        }

        if ([a2 hasError])
        {
          v55 = 0;
        }

        else
        {
          v55 = v51;
        }

LABEL_177:
        [a1 setClient:v55];
        goto LABEL_216;
      case 4u:
        v63 = 0;
        v64 = 0;
        v65 = 0;
        while (1)
        {
          LOBYTE(v121[0]) = 0;
          v66 = [a2 position] + 1;
          if (v66 >= [a2 position] && (v67 = objc_msgSend(a2, "position") + 1, v67 <= objc_msgSend(a2, "length")))
          {
            v68 = [a2 data];
            [v68 getBytes:v121 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v65 |= (v121[0] & 0x7F) << v63;
          if ((v121[0] & 0x80) == 0)
          {
            break;
          }

          v63 += 7;
          v11 = v64++ >= 9;
          if (v11)
          {
            v69 = 0;
            goto LABEL_185;
          }
        }

        if ([a2 hasError])
        {
          v69 = 0;
        }

        else
        {
          v69 = v65;
        }

LABEL_185:
        [a1 setTotalUsagesInCollectionPeriod:v69];
        goto LABEL_216;
      case 5u:
        v34 = objc_alloc_init(_CPDeviceContext);
        v121[0] = 0;
        v121[1] = 0;
        if (PBReaderPlaceMark() && _CPDeviceContextReadFrom(v34, a2))
        {
          PBReaderRecallMark();
          [a1 setContext:v34];

LABEL_216:
          v119 = [a2 position];
          if (v119 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

        return 0;
      case 6u:
        v84 = 0;
        v85 = 0;
        v86 = 0;
        while (1)
        {
          LOBYTE(v121[0]) = 0;
          v87 = [a2 position] + 1;
          if (v87 >= [a2 position] && (v88 = objc_msgSend(a2, "position") + 1, v88 <= objc_msgSend(a2, "length")))
          {
            v89 = [a2 data];
            [v89 getBytes:v121 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v86 |= (v121[0] & 0x7F) << v84;
          if ((v121[0] & 0x80) == 0)
          {
            break;
          }

          v84 += 7;
          v11 = v85++ >= 9;
          if (v11)
          {
            v90 = 0;
            goto LABEL_201;
          }
        }

        if ([a2 hasError])
        {
          v90 = 0;
        }

        else
        {
          v90 = v86;
        }

LABEL_201:
        [a1 setConfiguredLookbackTimeInDays:v90];
        goto LABEL_216;
      case 7u:
        v98 = 0;
        v99 = 0;
        v100 = 0;
        while (1)
        {
          LOBYTE(v121[0]) = 0;
          v101 = [a2 position] + 1;
          if (v101 >= [a2 position] && (v102 = objc_msgSend(a2, "position") + 1, v102 <= objc_msgSend(a2, "length")))
          {
            v103 = [a2 data];
            [v103 getBytes:v121 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v100 |= (v121[0] & 0x7F) << v98;
          if ((v121[0] & 0x80) == 0)
          {
            break;
          }

          v98 += 7;
          v11 = v99++ >= 9;
          if (v11)
          {
            v104 = 0;
            goto LABEL_209;
          }
        }

        if ([a2 hasError])
        {
          v104 = 0;
        }

        else
        {
          v104 = v100;
        }

LABEL_209:
        [a1 setActiveDaysInCollectionPeriod:v104];
        goto LABEL_216;
      case 8u:
        v70 = 0;
        v71 = 0;
        v72 = 0;
        while (1)
        {
          LOBYTE(v121[0]) = 0;
          v73 = [a2 position] + 1;
          if (v73 >= [a2 position] && (v74 = objc_msgSend(a2, "position") + 1, v74 <= objc_msgSend(a2, "length")))
          {
            v75 = [a2 data];
            [v75 getBytes:v121 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v72 |= (v121[0] & 0x7F) << v70;
          if ((v121[0] & 0x80) == 0)
          {
            break;
          }

          v70 += 7;
          v11 = v71++ >= 9;
          if (v11)
          {
            v76 = 0;
            goto LABEL_189;
          }
        }

        if ([a2 hasError])
        {
          v76 = 0;
        }

        else
        {
          v76 = v72;
        }

LABEL_189:
        [a1 setTotalEngagements:v76];
        goto LABEL_216;
      case 9u:
        v112 = 0;
        v113 = 0;
        v114 = 0;
        while (1)
        {
          LOBYTE(v121[0]) = 0;
          v115 = [a2 position] + 1;
          if (v115 >= [a2 position] && (v116 = objc_msgSend(a2, "position") + 1, v116 <= objc_msgSend(a2, "length")))
          {
            v117 = [a2 data];
            [v117 getBytes:v121 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v114 |= (v121[0] & 0x7F) << v112;
          if ((v121[0] & 0x80) == 0)
          {
            break;
          }

          v112 += 7;
          v11 = v113++ >= 9;
          if (v11)
          {
            v118 = 0;
            goto LABEL_215;
          }
        }

        v118 = (v114 != 0) & ~[a2 hasError];
LABEL_215:
        [a1 setIsDiagnosticsAndUsageEnabled:v118];
        goto LABEL_216;
      case 0xAu:
        v42 = 0;
        v43 = 0;
        v44 = 0;
        while (1)
        {
          LOBYTE(v121[0]) = 0;
          v45 = [a2 position] + 1;
          if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:v121 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v44 |= (v121[0] & 0x7F) << v42;
          if ((v121[0] & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v11 = v43++ >= 9;
          if (v11)
          {
            v48 = 0;
            goto LABEL_173;
          }
        }

        if ([a2 hasError])
        {
          v48 = 0;
        }

        else
        {
          v48 = v44;
        }

LABEL_173:
        [a1 setInvokedDays:v48];
        goto LABEL_216;
      case 0xBu:
        v105 = 0;
        v106 = 0;
        v107 = 0;
        while (1)
        {
          LOBYTE(v121[0]) = 0;
          v108 = [a2 position] + 1;
          if (v108 >= [a2 position] && (v109 = objc_msgSend(a2, "position") + 1, v109 <= objc_msgSend(a2, "length")))
          {
            v110 = [a2 data];
            [v110 getBytes:v121 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v107 |= (v121[0] & 0x7F) << v105;
          if ((v121[0] & 0x80) == 0)
          {
            break;
          }

          v105 += 7;
          v11 = v106++ >= 9;
          if (v11)
          {
            v111 = 0;
            goto LABEL_213;
          }
        }

        if ([a2 hasError])
        {
          v111 = 0;
        }

        else
        {
          v111 = v107;
        }

LABEL_213:
        [a1 setZkwEngagedDays:v111];
        goto LABEL_216;
      case 0xCu:
        v27 = 0;
        v28 = 0;
        v29 = 0;
        while (1)
        {
          LOBYTE(v121[0]) = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:v121 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v29 |= (v121[0] & 0x7F) << v27;
          if ((v121[0] & 0x80) == 0)
          {
            break;
          }

          v27 += 7;
          v11 = v28++ >= 9;
          if (v11)
          {
            v33 = 0;
            goto LABEL_165;
          }
        }

        if ([a2 hasError])
        {
          v33 = 0;
        }

        else
        {
          v33 = v29;
        }

LABEL_165:
        [a1 setSearchedDays:v33];
        goto LABEL_216;
      case 0xDu:
        v35 = 0;
        v36 = 0;
        v37 = 0;
        while (1)
        {
          LOBYTE(v121[0]) = 0;
          v38 = [a2 position] + 1;
          if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
          {
            v40 = [a2 data];
            [v40 getBytes:v121 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v37 |= (v121[0] & 0x7F) << v35;
          if ((v121[0] & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v11 = v36++ >= 9;
          if (v11)
          {
            v41 = 0;
            goto LABEL_169;
          }
        }

        if ([a2 hasError])
        {
          v41 = 0;
        }

        else
        {
          v41 = v37;
        }

LABEL_169:
        [a1 setSuggestionOrAppleResultEngagedDays:v41];
        goto LABEL_216;
      case 0xEu:
        v91 = 0;
        v92 = 0;
        v93 = 0;
        while (1)
        {
          LOBYTE(v121[0]) = 0;
          v94 = [a2 position] + 1;
          if (v94 >= [a2 position] && (v95 = objc_msgSend(a2, "position") + 1, v95 <= objc_msgSend(a2, "length")))
          {
            v96 = [a2 data];
            [v96 getBytes:v121 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v93 |= (v121[0] & 0x7F) << v91;
          if ((v121[0] & 0x80) == 0)
          {
            break;
          }

          v91 += 7;
          v11 = v92++ >= 9;
          if (v11)
          {
            v97 = 0;
            goto LABEL_205;
          }
        }

        if ([a2 hasError])
        {
          v97 = 0;
        }

        else
        {
          v97 = v93;
        }

LABEL_205:
        [a1 setWebEngagedDays:v97];
        goto LABEL_216;
      case 0xFu:
        v20 = 0;
        v21 = 0;
        v22 = 0;
        while (1)
        {
          LOBYTE(v121[0]) = 0;
          v23 = [a2 position] + 1;
          if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
          {
            v25 = [a2 data];
            [v25 getBytes:v121 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v22 |= (v121[0] & 0x7F) << v20;
          if ((v121[0] & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          v11 = v21++ >= 9;
          if (v11)
          {
            v26 = 0;
            goto LABEL_161;
          }
        }

        if ([a2 hasError])
        {
          v26 = 0;
        }

        else
        {
          v26 = v22;
        }

LABEL_161:
        [a1 setVoiceSearchDays:v26];
        goto LABEL_216;
      case 0x10u:
        v56 = 0;
        v57 = 0;
        v58 = 0;
        while (1)
        {
          LOBYTE(v121[0]) = 0;
          v59 = [a2 position] + 1;
          if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
          {
            v61 = [a2 data];
            [v61 getBytes:v121 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v58 |= (v121[0] & 0x7F) << v56;
          if ((v121[0] & 0x80) == 0)
          {
            break;
          }

          v56 += 7;
          v11 = v57++ >= 9;
          if (v11)
          {
            v62 = 0;
            goto LABEL_181;
          }
        }

        if ([a2 hasError])
        {
          v62 = 0;
        }

        else
        {
          v62 = v58;
        }

LABEL_181:
        [a1 setNumSearchEngagements:v62];
        goto LABEL_216;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_216;
    }
  }
}

uint64_t _CPDeviceContextReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v17 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v17 & 0x7F) << v6;
      if ((v17 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      if (v7++ >= 9)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    v14 = v13 >> 3;
    if ((v13 >> 3) > 2)
    {
      if (v14 == 3)
      {
        v15 = PBReaderReadString();
        [a1 setLocale:v15];
        goto LABEL_29;
      }

      if (v14 == 4)
      {
        v15 = PBReaderReadString();
        [a1 setOsVersion:v15];
        goto LABEL_29;
      }
    }

    else
    {
      if (v14 == 1)
      {
        v15 = PBReaderReadString();
        [a1 setCountry:v15];
        goto LABEL_29;
      }

      if (v14 == 2)
      {
        v15 = PBReaderReadString();
        [a1 setDeviceModel:v15];
LABEL_29:

        continue;
      }
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPUsageEnvelopeReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v45) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v45 & 0x7F) << v5;
        if ((v45 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 9)
      {
        if (v13 <= 2)
        {
          if (v13 == 1)
          {
            v21 = objc_alloc_init(_CPUsageSinceLookback);
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark() || !_CPUsageSinceLookbackReadFrom(v21, a2))
            {
LABEL_109:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setUsageSinceLookback:v21];
            goto LABEL_86;
          }

          if (v13 == 2)
          {
            v21 = objc_alloc_init(_CPSafariUsagePropensity);
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark() || !_CPSafariUsagePropensityReadFrom(v21, a2))
            {
              goto LABEL_109;
            }

            PBReaderRecallMark();
            [a1 setSafariUsagePropensity:v21];
            goto LABEL_86;
          }
        }

        else
        {
          switch(v13)
          {
            case 3:
              v21 = objc_alloc_init(_CPSpotlightUsagePropensity);
              v45 = 0;
              v46 = 0;
              if (!PBReaderPlaceMark() || !_CPSpotlightUsagePropensityReadFrom(v21, a2))
              {
                goto LABEL_109;
              }

              PBReaderRecallMark();
              [a1 setSpotlightUsagePropensity:v21];
              goto LABEL_86;
            case 4:
              v21 = objc_alloc_init(_CPImagesUsagePropensity);
              v45 = 0;
              v46 = 0;
              if (!PBReaderPlaceMark() || !_CPImagesUsagePropensityReadFrom(v21, a2))
              {
                goto LABEL_109;
              }

              PBReaderRecallMark();
              [a1 setImagesUsagePropensity:v21];
              goto LABEL_86;
            case 5:
              v21 = objc_alloc_init(_CPNewsUsagePropensity);
              v45 = 0;
              v46 = 0;
              if (!PBReaderPlaceMark() || !_CPNewsUsagePropensityReadFrom(v21, a2))
              {
                goto LABEL_109;
              }

              PBReaderRecallMark();
              [a1 setNewsUsagePropensity:v21];
              goto LABEL_86;
          }
        }
      }

      else if (v13 > 12)
      {
        switch(v13)
        {
          case 0xF:
            v21 = PBReaderReadData();
            [a1 setUuidBytes:v21];
LABEL_86:

            goto LABEL_87;
          case 0xE:
            v21 = objc_alloc_init(_CPDeviceContext);
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark() || !_CPDeviceContextReadFrom(v21, a2))
            {
              goto LABEL_109;
            }

            PBReaderRecallMark();
            [a1 setContext:v21];
            goto LABEL_86;
          case 0xD:
            v22 = 0;
            v23 = 0;
            v24 = 0;
            while (1)
            {
              LOBYTE(v45) = 0;
              v25 = [a2 position] + 1;
              if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
              {
                v27 = [a2 data];
                [v27 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v24 |= (v45 & 0x7F) << v22;
              if ((v45 & 0x80) == 0)
              {
                break;
              }

              v22 += 7;
              v11 = v23++ >= 9;
              if (v11)
              {
                v28 = 0;
                goto LABEL_102;
              }
            }

            if ([a2 hasError])
            {
              v28 = 0;
            }

            else
            {
              v28 = v24;
            }

LABEL_102:
            [a1 setTotalSessions:v28];
            goto LABEL_87;
        }
      }

      else
      {
        switch(v13)
        {
          case 0xA:
            v36 = 0;
            v37 = 0;
            v38 = 0;
            while (1)
            {
              LOBYTE(v45) = 0;
              v39 = [a2 position] + 1;
              if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
              {
                v41 = [a2 data];
                [v41 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v38 |= (v45 & 0x7F) << v36;
              if ((v45 & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              v11 = v37++ >= 9;
              if (v11)
              {
                v42 = 0;
                goto LABEL_106;
              }
            }

            if ([a2 hasError])
            {
              v42 = 0;
            }

            else
            {
              v42 = v38;
            }

LABEL_106:
            [a1 setCollectionStartTimestamp:v42];
            goto LABEL_87;
          case 0xB:
            v29 = 0;
            v30 = 0;
            v31 = 0;
            while (1)
            {
              LOBYTE(v45) = 0;
              v32 = [a2 position] + 1;
              if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
              {
                v34 = [a2 data];
                [v34 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v31 |= (v45 & 0x7F) << v29;
              if ((v45 & 0x80) == 0)
              {
                break;
              }

              v29 += 7;
              v11 = v30++ >= 9;
              if (v11)
              {
                v35 = 0;
                goto LABEL_94;
              }
            }

            if ([a2 hasError])
            {
              v35 = 0;
            }

            else
            {
              v35 = v31;
            }

LABEL_94:
            [a1 setCollectionEndTimestamp:v35];
            goto LABEL_87;
          case 0xC:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            while (1)
            {
              LOBYTE(v45) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v45 & 0x7F) << v14;
              if ((v45 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_98;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_98:
            [a1 setConfiguredLookbackTimeInDays:v20];
            goto LABEL_87;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_87:
      v43 = [a2 position];
    }

    while (v43 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPSafariUsagePropensityReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
  {
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      LOBYTE(v98) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v98 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v98 & 0x7F) << v5;
      if ((v98 & 0x80) == 0)
      {
        break;
      }

      v5 += 7;
      v11 = v6++ >= 9;
      if (v11)
      {
        v12 = 0;
        goto LABEL_15;
      }
    }

    v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v12 >> 3))
    {
      case 1u:
        LODWORD(v98) = 0;
        v13 = [a2 position] + 4;
        if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 4, v14 <= objc_msgSend(a2, "length")))
        {
          v88 = [a2 data];
          [v88 getBytes:&v98 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v15) = v98;
        [a1 setLocalGoto:v15];
        goto LABEL_138;
      case 2u:
        LODWORD(v98) = 0;
        v50 = [a2 position] + 4;
        if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 4, v51 <= objc_msgSend(a2, "length")))
        {
          v89 = [a2 data];
          [v89 getBytes:&v98 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v52) = v98;
        [a1 setLocalTap:v52];
        goto LABEL_138;
      case 3u:
        LODWORD(v98) = 0;
        v38 = [a2 position] + 4;
        if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 4, v39 <= objc_msgSend(a2, "length")))
        {
          v84 = [a2 data];
          [v84 getBytes:&v98 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v40) = v98;
        [a1 setParsecGoto:v40];
        goto LABEL_138;
      case 4u:
        LODWORD(v98) = 0;
        v44 = [a2 position] + 4;
        if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 4, v45 <= objc_msgSend(a2, "length")))
        {
          v86 = [a2 data];
          [v86 getBytes:&v98 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v46) = v98;
        [a1 setParsecTap:v46];
        goto LABEL_138;
      case 5u:
        LODWORD(v98) = 0;
        v25 = [a2 position] + 4;
        if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 4, v26 <= objc_msgSend(a2, "length")))
        {
          v82 = [a2 data];
          [v82 getBytes:&v98 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v27) = v98;
        [a1 setThirdPartyGoto:v27];
        goto LABEL_138;
      case 6u:
        LODWORD(v98) = 0;
        v57 = [a2 position] + 4;
        if (v57 >= [a2 position] && (v58 = objc_msgSend(a2, "position") + 4, v58 <= objc_msgSend(a2, "length")))
        {
          v91 = [a2 data];
          [v91 getBytes:&v98 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v59) = v98;
        [a1 setThirdPartyTap:v59];
        goto LABEL_138;
      case 7u:
        LODWORD(v98) = 0;
        v63 = [a2 position] + 4;
        if (v63 >= [a2 position] && (v64 = objc_msgSend(a2, "position") + 4, v64 <= objc_msgSend(a2, "length")))
        {
          v93 = [a2 data];
          [v93 getBytes:&v98 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v65) = v98;
        [a1 setThirdPartyCompletionOrRecentSearch:v65];
        goto LABEL_138;
      case 8u:
        LODWORD(v98) = 0;
        v47 = [a2 position] + 4;
        if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 4, v48 <= objc_msgSend(a2, "length")))
        {
          v87 = [a2 data];
          [v87 getBytes:&v98 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v49) = v98;
        [a1 setGoToSite:v49];
        goto LABEL_138;
      case 9u:
        LODWORD(v98) = 0;
        v69 = [a2 position] + 4;
        if (v69 >= [a2 position] && (v70 = objc_msgSend(a2, "position") + 4, v70 <= objc_msgSend(a2, "length")))
        {
          v95 = [a2 data];
          [v95 getBytes:&v98 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v71) = v98;
        [a1 setOther:v71];
        goto LABEL_138;
      case 0xAu:
        v31 = 0;
        v32 = 0;
        v33 = 0;
        while (1)
        {
          LOBYTE(v98) = 0;
          v34 = [a2 position] + 1;
          if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
          {
            v36 = [a2 data];
            [v36 getBytes:&v98 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v33 |= (v98 & 0x7F) << v31;
          if ((v98 & 0x80) == 0)
          {
            break;
          }

          v31 += 7;
          v11 = v32++ >= 9;
          if (v11)
          {
            v37 = 0;
            goto LABEL_99;
          }
        }

        if ([a2 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v33;
        }

LABEL_99:
        [a1 setTotalEngagements:v37];
        goto LABEL_138;
      case 0xBu:
        LODWORD(v98) = 0;
        v66 = [a2 position] + 4;
        if (v66 >= [a2 position] && (v67 = objc_msgSend(a2, "position") + 4, v67 <= objc_msgSend(a2, "length")))
        {
          v94 = [a2 data];
          [v94 getBytes:&v98 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v68) = v98;
        [a1 setParsecWeb:v68];
        goto LABEL_138;
      case 0xCu:
        LODWORD(v98) = 0;
        v22 = [a2 position] + 4;
        if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 4, v23 <= objc_msgSend(a2, "length")))
        {
          v81 = [a2 data];
          [v81 getBytes:&v98 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v24) = v98;
        [a1 setParsecAppStore:v24];
        goto LABEL_138;
      case 0xDu:
        LODWORD(v98) = 0;
        v28 = [a2 position] + 4;
        if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 4, v29 <= objc_msgSend(a2, "length")))
        {
          v83 = [a2 data];
          [v83 getBytes:&v98 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v30) = v98;
        [a1 setParsecMaps:v30];
        goto LABEL_138;
      case 0xEu:
        LODWORD(v98) = 0;
        v60 = [a2 position] + 4;
        if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 4, v61 <= objc_msgSend(a2, "length")))
        {
          v92 = [a2 data];
          [v92 getBytes:&v98 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v62) = v98;
        [a1 setParsecWiki:v62];
        goto LABEL_138;
      case 0xFu:
        LODWORD(v98) = 0;
        v19 = [a2 position] + 4;
        if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 4, v20 <= objc_msgSend(a2, "length")))
        {
          v80 = [a2 data];
          [v80 getBytes:&v98 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v21) = v98;
        [a1 setParsecNews:v21];
        goto LABEL_138;
      case 0x10u:
        LODWORD(v98) = 0;
        v41 = [a2 position] + 4;
        if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 4, v42 <= objc_msgSend(a2, "length")))
        {
          v85 = [a2 data];
          [v85 getBytes:&v98 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v43) = v98;
        [a1 setParsecStocks:v43];
        goto LABEL_138;
      case 0x11u:
        LODWORD(v98) = 0;
        v16 = [a2 position] + 4;
        if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 4, v17 <= objc_msgSend(a2, "length")))
        {
          v79 = [a2 data];
          [v79 getBytes:&v98 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v18) = v98;
        [a1 setParsecWeather:v18];
        goto LABEL_138;
      case 0x12u:
        LODWORD(v98) = 0;
        v53 = [a2 position] + 4;
        if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 4, v54 <= objc_msgSend(a2, "length")))
        {
          v90 = [a2 data];
          [v90 getBytes:&v98 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v55) = v98;
        [a1 setParsecOther:v55];
        goto LABEL_138;
      case 0x13u:
        v56 = objc_alloc_init(_CPEngagementTriggerRatio);
        v98 = 0;
        v99 = 0;
        if (!PBReaderPlaceMark() || !_CPEngagementTriggerRatioReadFrom(v56, a2))
        {
          goto LABEL_141;
        }

        PBReaderRecallMark();
        [a1 setTopHitTriggerRatio:v56];
        goto LABEL_80;
      case 0x14u:
        v72 = 0;
        v73 = 0;
        v74 = 0;
        while (1)
        {
          LOBYTE(v98) = 0;
          v75 = [a2 position] + 1;
          if (v75 >= [a2 position] && (v76 = objc_msgSend(a2, "position") + 1, v76 <= objc_msgSend(a2, "length")))
          {
            v77 = [a2 data];
            [v77 getBytes:&v98 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v74 |= (v98 & 0x7F) << v72;
          if ((v98 & 0x80) == 0)
          {
            break;
          }

          v72 += 7;
          v11 = v73++ >= 9;
          if (v11)
          {
            v78 = 0;
            goto LABEL_103;
          }
        }

        if ([a2 hasError])
        {
          v78 = 0;
        }

        else
        {
          v78 = v74;
        }

LABEL_103:
        [a1 setTotalTopHitEngagements:v78];
        goto LABEL_138;
      case 0x15u:
        v56 = objc_alloc_init(_CPEngagementShareRatio);
        v98 = 0;
        v99 = 0;
        if (PBReaderPlaceMark() && _CPEngagementShareRatioReadFrom(v56, a2))
        {
          PBReaderRecallMark();
          [a1 setEngagementShareRatio:v56];
LABEL_80:

LABEL_138:
          v96 = [a2 position];
          if (v96 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_141:

        return 0;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_138;
    }
  }
}

uint64_t _CPSpotlightUsagePropensityReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
  {
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      LOBYTE(v102) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v102 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v102 & 0x7F) << v5;
      if ((v102 & 0x80) == 0)
      {
        break;
      }

      v5 += 7;
      v11 = v6++ >= 9;
      if (v11)
      {
        v12 = 0;
        goto LABEL_15;
      }
    }

    v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v12 >> 3))
    {
      case 1u:
        LODWORD(v102) = 0;
        v13 = [a2 position] + 4;
        if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 4, v14 <= objc_msgSend(a2, "length")))
        {
          v90 = [a2 data];
          [v90 getBytes:&v102 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v15) = v102;
        [a1 setAppLaunch:v15];
        goto LABEL_146;
      case 2u:
        LODWORD(v102) = 0;
        v48 = [a2 position] + 4;
        if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 4, v49 <= objc_msgSend(a2, "length")))
        {
          v91 = [a2 data];
          [v91 getBytes:&v102 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v50) = v102;
        [a1 setOnDeviceAddressBookData:v50];
        goto LABEL_146;
      case 3u:
        LODWORD(v102) = 0;
        v36 = [a2 position] + 4;
        if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 4, v37 <= objc_msgSend(a2, "length")))
        {
          v86 = [a2 data];
          [v86 getBytes:&v102 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v38) = v102;
        [a1 setOnDeviceOtherPersonalData:v38];
        goto LABEL_146;
      case 4u:
        LODWORD(v102) = 0;
        v42 = [a2 position] + 4;
        if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 4, v43 <= objc_msgSend(a2, "length")))
        {
          v88 = [a2 data];
          [v88 getBytes:&v102 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v44) = v102;
        [a1 setPunchout:v44];
        goto LABEL_146;
      case 5u:
        LODWORD(v102) = 0;
        v23 = [a2 position] + 4;
        if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 4, v24 <= objc_msgSend(a2, "length")))
        {
          v84 = [a2 data];
          [v84 getBytes:&v102 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v25) = v102;
        [a1 setThirdPartyInAppContent:v25];
        goto LABEL_146;
      case 6u:
        LODWORD(v102) = 0;
        v57 = [a2 position] + 4;
        if (v57 >= [a2 position] && (v58 = objc_msgSend(a2, "position") + 4, v58 <= objc_msgSend(a2, "length")))
        {
          v94 = [a2 data];
          [v94 getBytes:&v102 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v59) = v102;
        [a1 setParsec:v59];
        goto LABEL_146;
      case 7u:
        LODWORD(v102) = 0;
        v66 = [a2 position] + 4;
        if (v66 >= [a2 position] && (v67 = objc_msgSend(a2, "position") + 4, v67 <= objc_msgSend(a2, "length")))
        {
          v97 = [a2 data];
          [v97 getBytes:&v102 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v68) = v102;
        [a1 setQuerySuggestion:v68];
        goto LABEL_146;
      case 8u:
        LODWORD(v102) = 0;
        v45 = [a2 position] + 4;
        if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 4, v46 <= objc_msgSend(a2, "length")))
        {
          v89 = [a2 data];
          [v89 getBytes:&v102 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v47) = v102;
        [a1 setOther:v47];
        goto LABEL_146;
      case 9u:
        v72 = 0;
        v73 = 0;
        v74 = 0;
        while (1)
        {
          LOBYTE(v102) = 0;
          v75 = [a2 position] + 1;
          if (v75 >= [a2 position] && (v76 = objc_msgSend(a2, "position") + 1, v76 <= objc_msgSend(a2, "length")))
          {
            v77 = [a2 data];
            [v77 getBytes:&v102 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v74 |= (v102 & 0x7F) << v72;
          if ((v102 & 0x80) == 0)
          {
            break;
          }

          v72 += 7;
          v11 = v73++ >= 9;
          if (v11)
          {
            v78 = 0;
            goto LABEL_109;
          }
        }

        if ([a2 hasError])
        {
          v78 = 0;
        }

        else
        {
          v78 = v74;
        }

LABEL_109:
        [a1 setTotalEngagements:v78];
        goto LABEL_146;
      case 0xAu:
        LODWORD(v102) = 0;
        v33 = [a2 position] + 4;
        if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 4, v34 <= objc_msgSend(a2, "length")))
        {
          v85 = [a2 data];
          [v85 getBytes:&v102 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v35) = v102;
        [a1 setSiriSuggestions:v35];
        goto LABEL_146;
      case 0xBu:
        v22 = objc_alloc_init(_CPEngagementTriggerRatio);
        v102 = 0;
        v103 = 0;
        if (!PBReaderPlaceMark() || !_CPEngagementTriggerRatioReadFrom(v22, a2))
        {
          goto LABEL_149;
        }

        PBReaderRecallMark();
        [a1 setTopHitTriggerRatio:v22];
        goto LABEL_96;
      case 0xCu:
        v22 = objc_alloc_init(_CPEngagementTriggerRatio);
        v102 = 0;
        v103 = 0;
        if (!PBReaderPlaceMark() || !_CPEngagementTriggerRatioReadFrom(v22, a2))
        {
          goto LABEL_149;
        }

        PBReaderRecallMark();
        [a1 setQuerySuggestionTriggerRatio:v22];
        goto LABEL_96;
      case 0xDu:
        v26 = 0;
        v27 = 0;
        v28 = 0;
        while (1)
        {
          LOBYTE(v102) = 0;
          v29 = [a2 position] + 1;
          if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
          {
            v31 = [a2 data];
            [v31 getBytes:&v102 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v28 |= (v102 & 0x7F) << v26;
          if ((v102 & 0x80) == 0)
          {
            break;
          }

          v26 += 7;
          v11 = v27++ >= 9;
          if (v11)
          {
            v32 = 0;
            goto LABEL_105;
          }
        }

        if ([a2 hasError])
        {
          v32 = 0;
        }

        else
        {
          v32 = v28;
        }

LABEL_105:
        [a1 setTotalTopHitEngagements:v32];
        goto LABEL_146;
      case 0xEu:
        LODWORD(v102) = 0;
        v63 = [a2 position] + 4;
        if (v63 >= [a2 position] && (v64 = objc_msgSend(a2, "position") + 4, v64 <= objc_msgSend(a2, "length")))
        {
          v96 = [a2 data];
          [v96 getBytes:&v102 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v65) = v102;
        [a1 setParsecWeb:v65];
        goto LABEL_146;
      case 0xFu:
        LODWORD(v102) = 0;
        v19 = [a2 position] + 4;
        if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 4, v20 <= objc_msgSend(a2, "length")))
        {
          v83 = [a2 data];
          [v83 getBytes:&v102 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v21) = v102;
        [a1 setParsecAppStore:v21];
        goto LABEL_146;
      case 0x10u:
        LODWORD(v102) = 0;
        v39 = [a2 position] + 4;
        if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 4, v40 <= objc_msgSend(a2, "length")))
        {
          v87 = [a2 data];
          [v87 getBytes:&v102 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v41) = v102;
        [a1 setParsecMaps:v41];
        goto LABEL_146;
      case 0x11u:
        LODWORD(v102) = 0;
        v16 = [a2 position] + 4;
        if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 4, v17 <= objc_msgSend(a2, "length")))
        {
          v82 = [a2 data];
          [v82 getBytes:&v102 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v18) = v102;
        [a1 setParsecWiki:v18];
        goto LABEL_146;
      case 0x12u:
        LODWORD(v102) = 0;
        v51 = [a2 position] + 4;
        if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 4, v52 <= objc_msgSend(a2, "length")))
        {
          v92 = [a2 data];
          [v92 getBytes:&v102 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v53) = v102;
        [a1 setParsecNews:v53];
        goto LABEL_146;
      case 0x13u:
        LODWORD(v102) = 0;
        v69 = [a2 position] + 4;
        if (v69 >= [a2 position] && (v70 = objc_msgSend(a2, "position") + 4, v70 <= objc_msgSend(a2, "length")))
        {
          v98 = [a2 data];
          [v98 getBytes:&v102 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v71) = v102;
        [a1 setParsecStocks:v71];
        goto LABEL_146;
      case 0x14u:
        LODWORD(v102) = 0;
        v79 = [a2 position] + 4;
        if (v79 >= [a2 position] && (v80 = objc_msgSend(a2, "position") + 4, v80 <= objc_msgSend(a2, "length")))
        {
          v99 = [a2 data];
          [v99 getBytes:&v102 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v81) = v102;
        [a1 setParsecWeather:v81];
        goto LABEL_146;
      case 0x15u:
        LODWORD(v102) = 0;
        v54 = [a2 position] + 4;
        if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 4, v55 <= objc_msgSend(a2, "length")))
        {
          v93 = [a2 data];
          [v93 getBytes:&v102 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v56) = v102;
        [a1 setParsecOther:v56];
        goto LABEL_146;
      case 0x16u:
        LODWORD(v102) = 0;
        v60 = [a2 position] + 4;
        if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 4, v61 <= objc_msgSend(a2, "length")))
        {
          v95 = [a2 data];
          [v95 getBytes:&v102 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v62) = v102;
        [a1 setWebSuggestions:v62];
        goto LABEL_146;
      case 0x17u:
        v22 = objc_alloc_init(_CPEngagementShareRatio);
        v102 = 0;
        v103 = 0;
        if (PBReaderPlaceMark() && _CPEngagementShareRatioReadFrom(v22, a2))
        {
          PBReaderRecallMark();
          [a1 setEngagementShareRatio:v22];
LABEL_96:

LABEL_146:
          v100 = [a2 position];
          if (v100 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_149:

        return 0;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_146;
    }
  }
}

uint64_t _CPImagesUsagePropensityReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v43) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v43 & 0x7F) << v6;
      if ((v43 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    v14 = v13 >> 3;
    if ((v13 >> 3) > 3)
    {
      switch(v14)
      {
        case 6:
          v43 = 0;
          v28 = [a2 position] + 4;
          if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 4, v29 <= objc_msgSend(a2, "length")))
          {
            v39 = [a2 data];
            [v39 getBytes:&v43 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          LODWORD(v30) = v43;
          [a1 setImage:v30];
          continue;
        case 5:
          v43 = 0;
          v35 = [a2 position] + 4;
          if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 4, v36 <= objc_msgSend(a2, "length")))
          {
            v42 = [a2 data];
            [v42 getBytes:&v43 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          LODWORD(v37) = v43;
          [a1 setQuerySuggestion:v37];
          continue;
        case 4:
          v18 = 0;
          v19 = 0;
          v20 = 0;
          while (1)
          {
            LOBYTE(v43) = 0;
            v21 = [a2 position] + 1;
            if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
            {
              v23 = [a2 data];
              [v23 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v20 |= (v43 & 0x7F) << v18;
            if ((v43 & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v12 = v19++ >= 9;
            if (v12)
            {
              v24 = 0;
              goto LABEL_54;
            }
          }

          if ([a2 hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v20;
          }

LABEL_54:
          [a1 setTotalEngagements:v24];
          continue;
      }
    }

    else
    {
      switch(v14)
      {
        case 1:
          v43 = 0;
          v25 = [a2 position] + 4;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 4, v26 <= objc_msgSend(a2, "length")))
          {
            v38 = [a2 data];
            [v38 getBytes:&v43 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          LODWORD(v27) = v43;
          [a1 setZkw:v27];
          continue;
        case 2:
          v43 = 0;
          v32 = [a2 position] + 4;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 4, v33 <= objc_msgSend(a2, "length")))
          {
            v41 = [a2 data];
            [v41 getBytes:&v43 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          LODWORD(v34) = v43;
          [a1 setRecentResult:v34];
          continue;
        case 3:
          v43 = 0;
          v15 = [a2 position] + 4;
          if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 4, v16 <= objc_msgSend(a2, "length")))
          {
            v40 = [a2 data];
            [v40 getBytes:&v43 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          LODWORD(v17) = v43;
          [a1 setOther:v17];
          continue;
      }
    }

    result = PBReaderSkipValueWithTag();
    if (!result)
    {
      return result;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPNewsUsagePropensityReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v27 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v27 & 0x7F) << v6;
      if ((v27 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v26 = 0;
      v21 = [a2 position] + 4;
      if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 4, v22 <= objc_msgSend(a2, "length")))
      {
        v25 = [a2 data];
        [v25 getBytes:&v26 range:{objc_msgSend(a2, "position"), 4}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
      }

      else
      {
        [a2 _setError];
      }

      LODWORD(v23) = v26;
      [a1 setOther:v23];
    }

    else if ((v13 >> 3) == 2)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v28 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v28 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v28 & 0x7F) << v14;
        if ((v28 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v12 = v15++ >= 9;
        if (v12)
        {
          v20 = 0;
          goto LABEL_37;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v16;
      }

LABEL_37:
      [a1 setTotalEngagements:v20];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPEngagementTriggerRatioReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v33 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v33 & 0x7F) << v6;
      if ((v33 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    v14 = v13 >> 3;
    if ((v13 >> 3) == 1)
    {
      v32 = 0;
      v25 = [a2 position] + 4;
      if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 4, v26 <= objc_msgSend(a2, "length")))
      {
        v30 = [a2 data];
        [v30 getBytes:&v32 range:{objc_msgSend(a2, "position"), 4}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
      }

      else
      {
        [a2 _setError];
      }

      LODWORD(v27) = v32;
      [a1 setGo:v27];
    }

    else if (v14 == 2)
    {
      v31 = 0;
      v22 = [a2 position] + 4;
      if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 4, v23 <= objc_msgSend(a2, "length")))
      {
        v29 = [a2 data];
        [v29 getBytes:&v31 range:{objc_msgSend(a2, "position"), 4}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
      }

      else
      {
        [a2 _setError];
      }

      LODWORD(v24) = v31;
      [a1 setTap:v24];
    }

    else if (v14 == 3)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      while (1)
      {
        v34 = 0;
        v18 = [a2 position] + 1;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
        {
          v20 = [a2 data];
          [v20 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v17 |= (v34 & 0x7F) << v15;
        if ((v34 & 0x80) == 0)
        {
          break;
        }

        v15 += 7;
        v12 = v16++ >= 9;
        if (v12)
        {
          v21 = 0;
          goto LABEL_41;
        }
      }

      if ([a2 hasError])
      {
        v21 = 0;
      }

      else
      {
        v21 = v17;
      }

LABEL_41:
      [a1 setTotalEngagements:v21];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPEngagementShareRatioReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v25 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v25 & 0x7F) << v6;
      if ((v25 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      if (v7++ >= 9)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 2)
    {
      v23 = 0;
      v17 = [a2 position] + 4;
      if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 4, v18 <= objc_msgSend(a2, "length")))
      {
        v22 = [a2 data];
        [v22 getBytes:&v23 range:{objc_msgSend(a2, "position"), 4}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
      }

      else
      {
        [a2 _setError];
      }

      LODWORD(v19) = v23;
      [a1 setShareOfInternetEngagements:v19];
    }

    else if ((v13 >> 3) == 1)
    {
      v24 = 0;
      v14 = [a2 position] + 4;
      if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 4, v15 <= objc_msgSend(a2, "length")))
      {
        v21 = [a2 data];
        [v21 getBytes:&v24 range:{objc_msgSend(a2, "position"), 4}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
      }

      else
      {
        [a2 _setError];
      }

      LODWORD(v16) = v24;
      [a1 setShareOfEngagements:v16];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPExperimentInfoReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v31 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v31 & 0x7F) << v6;
      if ((v31 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    v14 = v13 >> 3;
    if ((v13 >> 3) <= 2)
    {
      if (v14 == 1)
      {
        v22 = PBReaderReadString();
        [a1 setNamespaceId:v22];
        goto LABEL_45;
      }

      if (v14 == 2)
      {
        v22 = PBReaderReadString();
        [a1 setExperimentId:v22];
LABEL_45:

        continue;
      }
    }

    else
    {
      switch(v14)
      {
        case 3:
          v22 = PBReaderReadString();
          [a1 setTreatmentId:v22];
          goto LABEL_45;
        case 4:
          v23 = 0;
          v24 = 0;
          v25 = 0;
          while (1)
          {
            v33 = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v33 & 0x7F) << v23;
            if ((v33 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v12 = v24++ >= 9;
            if (v12)
            {
              v29 = 0;
              goto LABEL_51;
            }
          }

          if ([a2 hasError])
          {
            v29 = 0;
          }

          else
          {
            v29 = v25;
          }

LABEL_51:
          [a1 setDeploymentId:v29];
          continue;
        case 5:
          v15 = 0;
          v16 = 0;
          v17 = 0;
          while (1)
          {
            v32 = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v32 & 0x7F) << v15;
            if ((v32 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v12 = v16++ >= 9;
            if (v12)
            {
              v21 = 0;
              goto LABEL_55;
            }
          }

          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v17;
          }

LABEL_55:
          [a1 setVersion:v21];
          continue;
      }
    }

    result = PBReaderSkipValueWithTag();
    if (!result)
    {
      return result;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPFeedbackReadFrom(void *a1, void *a2)
{
  v3 = a1;
  v4 = 0;
LABEL_2:
  [a1 setTimestamp:v4];
  while (1)
  {
    v5 = [a2 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v21 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v21 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v21 & 0x7F) << v6;
      if ((v21 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_17;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_17:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      while (1)
      {
        v22 = 0;
        v18 = [a2 position] + 1;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
        {
          v20 = [a2 data];
          [v20 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v17 |= (v22 & 0x7F) << v15;
        if ((v22 & 0x80) == 0)
        {
          break;
        }

        v15 += 7;
        v12 = v16++ >= 9;
        if (v12)
        {
          v4 = 0;
          goto LABEL_34;
        }
      }

      if ([a2 hasError])
      {
        v4 = 0;
      }

      else
      {
        v4 = v17;
      }

LABEL_34:
      a1 = v3;
      goto LABEL_2;
    }

    result = PBReaderSkipValueWithTag();
    if (!result)
    {
      return result;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPSearchViewDisappearFeedbackReadFrom(void *a1, void *a2)
{
  v3 = a1;
  v4 = 0;
LABEL_2:
  [a1 setTimestamp:v4];
  while (1)
  {
    v5 = [a2 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v28 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v28 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v28 & 0x7F) << v6;
      if ((v28 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_17;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_17:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      while (1)
      {
        v30 = 0;
        v25 = [a2 position] + 1;
        if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
        {
          v27 = [a2 data];
          [v27 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v24 |= (v30 & 0x7F) << v22;
        if ((v30 & 0x80) == 0)
        {
          break;
        }

        v22 += 7;
        v12 = v23++ >= 9;
        if (v12)
        {
          v4 = 0;
          goto LABEL_48;
        }
      }

      if ([a2 hasError])
      {
        v4 = 0;
      }

      else
      {
        v4 = v24;
      }

LABEL_48:
      a1 = v3;
      goto LABEL_2;
    }

    if ((v13 >> 3) == 2)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v29 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v29 & 0x7F) << v14;
        if ((v29 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v12 = v15++ >= 9;
        if (v12)
        {
          v20 = 0;
          goto LABEL_35;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v16;
      }

LABEL_35:
      [v3 setViewDisappearEvent:v20];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPRankingFeedbackReadFrom(void *a1, void *a2)
{
  [a1 setTimestamp:0];
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v34) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (LOBYTE(v34) & 0x7F) << v5;
        if ((LOBYTE(v34) & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          while (1)
          {
            LOBYTE(v34) = 0;
            v27 = [a2 position] + 1;
            if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
            {
              v29 = [a2 data];
              [v29 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v26 |= (LOBYTE(v34) & 0x7F) << v24;
            if ((LOBYTE(v34) & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v11 = v25++ >= 9;
            if (v11)
            {
              v30 = 0;
              goto LABEL_58;
            }
          }

          if ([a2 hasError])
          {
            v30 = 0;
          }

          else
          {
            v30 = v26;
          }

LABEL_58:
          [a1 setTimestamp:v30];
          goto LABEL_65;
        }

        if (v13 == 2)
        {
          v34 = 0.0;
          v21 = [a2 position] + 8;
          if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 8, v22 <= objc_msgSend(a2, "length")))
          {
            v31 = [a2 data];
            [v31 getBytes:&v34 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          [a1 setBlendingDuration:v34];
          goto LABEL_65;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v23 = objc_alloc_init(_CPSectionRankingFeedback);
            v34 = 0.0;
            v35 = 0;
            if (!PBReaderPlaceMark() || !_CPSectionRankingFeedbackReadFrom(v23, a2))
            {
LABEL_68:

              return 0;
            }

            PBReaderRecallMark();
            if (v23)
            {
              [a1 addSections:v23];
            }

            goto LABEL_43;
          case 4:
            v23 = objc_alloc_init(_CPSearchResultForFeedback);
            v34 = 0.0;
            v35 = 0;
            if (!PBReaderPlaceMark() || !_CPSearchResultForFeedbackReadFrom(v23, a2))
            {
              goto LABEL_68;
            }

            PBReaderRecallMark();
            if (v23)
            {
              [a1 addHiddenResults:v23];
            }

LABEL_43:

            goto LABEL_65;
          case 5:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            while (1)
            {
              LOBYTE(v34) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (LOBYTE(v34) & 0x7F) << v14;
              if ((LOBYTE(v34) & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_62;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_62:
            [a1 setSpotlightQueryIntent:v20];
            goto LABEL_65;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_65:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPSectionRankingFeedbackReadFrom(void *a1, void *a2)
{
  [a1 setTimestamp:0];
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v34) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (LOBYTE(v34) & 0x7F) << v5;
        if ((LOBYTE(v34) & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          while (1)
          {
            LOBYTE(v34) = 0;
            v27 = [a2 position] + 1;
            if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
            {
              v29 = [a2 data];
              [v29 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v26 |= (LOBYTE(v34) & 0x7F) << v24;
            if ((LOBYTE(v34) & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v11 = v25++ >= 9;
            if (v11)
            {
              v30 = 0;
              goto LABEL_57;
            }
          }

          if ([a2 hasError])
          {
            v30 = 0;
          }

          else
          {
            v30 = v26;
          }

LABEL_57:
          [a1 setTimestamp:v30];
          goto LABEL_64;
        }

        if (v13 == 2)
        {
          v21 = objc_alloc_init(_CPResultRankingFeedback);
          v34 = 0.0;
          v35 = 0;
          if (!PBReaderPlaceMark() || !_CPResultRankingFeedbackReadFrom(v21, a2))
          {
LABEL_67:

            return 0;
          }

          PBReaderRecallMark();
          if (v21)
          {
            [a1 addResults:v21];
          }

          goto LABEL_39;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v21 = objc_alloc_init(_CPResultSectionForFeedback);
            v34 = 0.0;
            v35 = 0;
            if (!PBReaderPlaceMark() || !_CPResultSectionForFeedbackReadFrom(v21, a2))
            {
              goto LABEL_67;
            }

            PBReaderRecallMark();
            [a1 setSection:v21];
LABEL_39:

            goto LABEL_64;
          case 5:
            v34 = 0.0;
            v22 = [a2 position] + 8;
            if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 8, v23 <= objc_msgSend(a2, "length")))
            {
              v31 = [a2 data];
              [v31 getBytes:&v34 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            [a1 setPersonalizationScore:v34];
            goto LABEL_64;
          case 4:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            while (1)
            {
              LOBYTE(v34) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (LOBYTE(v34) & 0x7F) << v14;
              if ((LOBYTE(v34) & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_61;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_61:
            [a1 setLocalSectionPosition:v20];
            goto LABEL_64;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_64:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPResultRankingFeedbackReadFrom(void *a1, void *a2)
{
  [a1 setTimestamp:0];
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v34) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (LOBYTE(v34) & 0x7F) << v5;
        if ((LOBYTE(v34) & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v14 = objc_alloc_init(_CPSearchResultForFeedback);
            v34 = 0.0;
            v35 = 0;
            if (!PBReaderPlaceMark() || !_CPSearchResultForFeedbackReadFrom(v14, a2))
            {
LABEL_72:

              return 0;
            }

            PBReaderRecallMark();
            if (v14)
            {
              [a1 addDuplicateResults:v14];
            }

            goto LABEL_55;
          case 6:
            v34 = 0.0;
            v29 = [a2 position] + 8;
            if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 8, v30 <= objc_msgSend(a2, "length")))
            {
              v31 = [a2 data];
              [v31 getBytes:&v34 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            [a1 setPersonalizationScore:v34];
            goto LABEL_69;
          case 5:
            v15 = 0;
            v16 = 0;
            v17 = 0;
            while (1)
            {
              LOBYTE(v34) = 0;
              v18 = [a2 position] + 1;
              if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
              {
                v20 = [a2 data];
                [v20 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v17 |= (LOBYTE(v34) & 0x7F) << v15;
              if ((LOBYTE(v34) & 0x80) == 0)
              {
                break;
              }

              v15 += 7;
              v11 = v16++ >= 9;
              if (v11)
              {
                v21 = 0;
                goto LABEL_66;
              }
            }

            if ([a2 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v17;
            }

LABEL_66:
            [a1 setLocalResultPosition:v21];
            goto LABEL_69;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v22 = 0;
            v23 = 0;
            v24 = 0;
            while (1)
            {
              LOBYTE(v34) = 0;
              v25 = [a2 position] + 1;
              if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
              {
                v27 = [a2 data];
                [v27 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v24 |= (LOBYTE(v34) & 0x7F) << v22;
              if ((LOBYTE(v34) & 0x80) == 0)
              {
                break;
              }

              v22 += 7;
              v11 = v23++ >= 9;
              if (v11)
              {
                v28 = 0;
                goto LABEL_62;
              }
            }

            if ([a2 hasError])
            {
              v28 = 0;
            }

            else
            {
              v28 = v24;
            }

LABEL_62:
            [a1 setTimestamp:v28];
            goto LABEL_69;
          case 2:
            v14 = objc_alloc_init(_CPSearchResultForFeedback);
            v34 = 0.0;
            v35 = 0;
            if (!PBReaderPlaceMark() || !_CPSearchResultForFeedbackReadFrom(v14, a2))
            {
              goto LABEL_72;
            }

            PBReaderRecallMark();
            [a1 setResult:v14];
            goto LABEL_55;
          case 3:
            v14 = objc_alloc_init(_CPSearchResultForFeedback);
            v34 = 0.0;
            v35 = 0;
            if (!PBReaderPlaceMark() || !_CPSearchResultForFeedbackReadFrom(v14, a2))
            {
              goto LABEL_72;
            }

            PBReaderRecallMark();
            if (v14)
            {
              [a1 addHiddenResults:v14];
            }

LABEL_55:

            goto LABEL_69;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_69:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPResultFeedbackReadFrom(void *a1, void *a2)
{
  [a1 setTimestamp:0];
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v23[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23[0] & 0x7F) << v5;
        if ((v23[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v20 = objc_alloc_init(_CPSearchResultForFeedback);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !_CPSearchResultForFeedbackReadFrom(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setResult:v20];
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23[0] & 0x7F) << v13;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_36;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v15;
        }

LABEL_36:
        [a1 setTimestamp:v19];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPResultEngagementFeedbackReadFrom(void *a1, void *a2)
{
  [a1 setTimestamp:0];
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v59[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v59 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v59[0] & 0x7F) << v5;
        if ((v59[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 4)
      {
        if (v13 > 6)
        {
          if (v13 == 7)
          {
            v21 = PBReaderReadString();
            [a1 setTitleText:v21];
LABEL_86:

            goto LABEL_109;
          }

          if (v13 == 8)
          {
            v29 = 0;
            v30 = 0;
            v31 = 0;
            while (1)
            {
              LOBYTE(v59[0]) = 0;
              v32 = [a2 position] + 1;
              if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
              {
                v34 = [a2 data];
                [v34 getBytes:v59 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v31 |= (v59[0] & 0x7F) << v29;
              if ((v59[0] & 0x80) == 0)
              {
                break;
              }

              v29 += 7;
              v11 = v30++ >= 9;
              if (v11)
              {
                v35 = 0;
                goto LABEL_108;
              }
            }

            v35 = (v31 != 0) & ~[a2 hasError];
LABEL_108:
            [a1 setMatchesUnengagedSuggestion:v35];
            goto LABEL_109;
          }
        }

        else
        {
          if (v13 == 5)
          {
            v43 = 0;
            v44 = 0;
            v45 = 0;
            while (1)
            {
              LOBYTE(v59[0]) = 0;
              v46 = [a2 position] + 1;
              if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
              {
                v48 = [a2 data];
                [v48 getBytes:v59 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v45 |= (v59[0] & 0x7F) << v43;
              if ((v59[0] & 0x80) == 0)
              {
                break;
              }

              v43 += 7;
              v11 = v44++ >= 9;
              if (v11)
              {
                v49 = 0;
                goto LABEL_96;
              }
            }

            if ([a2 hasError])
            {
              v49 = 0;
            }

            else
            {
              v49 = v45;
            }

LABEL_96:
            [a1 setActionTarget:v49];
            goto LABEL_109;
          }

          if (v13 == 6)
          {
            v21 = objc_alloc_init(_CPSearchResultForFeedback);
            v59[0] = 0;
            v59[1] = 0;
            if (!PBReaderPlaceMark() || !_CPSearchResultForFeedbackReadFrom(v21, a2))
            {

              return 0;
            }

            PBReaderRecallMark();
            [a1 setResult:v21];
            goto LABEL_86;
          }
        }
      }

      else if (v13 > 2)
      {
        if (v13 == 3)
        {
          v50 = 0;
          v51 = 0;
          v52 = 0;
          while (1)
          {
            LOBYTE(v59[0]) = 0;
            v53 = [a2 position] + 1;
            if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
            {
              v55 = [a2 data];
              [v55 getBytes:v59 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v52 |= (v59[0] & 0x7F) << v50;
            if ((v59[0] & 0x80) == 0)
            {
              break;
            }

            v50 += 7;
            v11 = v51++ >= 9;
            if (v11)
            {
              v56 = 0;
              goto LABEL_100;
            }
          }

          if ([a2 hasError])
          {
            v56 = 0;
          }

          else
          {
            v56 = v52;
          }

LABEL_100:
          [a1 setTriggerEvent:v56];
          goto LABEL_109;
        }

        if (v13 == 4)
        {
          v22 = 0;
          v23 = 0;
          v24 = 0;
          while (1)
          {
            LOBYTE(v59[0]) = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:v59 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v24 |= (v59[0] & 0x7F) << v22;
            if ((v59[0] & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v11 = v23++ >= 9;
            if (v11)
            {
              v28 = 0;
              goto LABEL_106;
            }
          }

          if ([a2 hasError])
          {
            v28 = 0;
          }

          else
          {
            v28 = v24;
          }

LABEL_106:
          [a1 setDestination:v28];
          goto LABEL_109;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v36 = 0;
          v37 = 0;
          v38 = 0;
          while (1)
          {
            LOBYTE(v59[0]) = 0;
            v39 = [a2 position] + 1;
            if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
            {
              v41 = [a2 data];
              [v41 getBytes:v59 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v38 |= (v59[0] & 0x7F) << v36;
            if ((v59[0] & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            v11 = v37++ >= 9;
            if (v11)
            {
              v42 = 0;
              goto LABEL_92;
            }
          }

          if ([a2 hasError])
          {
            v42 = 0;
          }

          else
          {
            v42 = v38;
          }

LABEL_92:
          [a1 setTimestamp:v42];
          goto LABEL_109;
        }

        if (v13 == 2)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          while (1)
          {
            LOBYTE(v59[0]) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:v59 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v59[0] & 0x7F) << v14;
            if ((v59[0] & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_102;
            }
          }

          v20 = (v16 != 0) & ~[a2 hasError];
LABEL_102:
          [a1 setActionEngaged:v20];
          goto LABEL_109;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_109:
      v57 = [a2 position];
    }

    while (v57 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPVisibleResultsFeedbackReadFrom(void *a1, void *a2)
{
  [a1 setTimestamp:0];
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v52) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v52 & 0x7F) << v5;
        if ((v52 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 4)
      {
        if (v13 > 6)
        {
          if (v13 == 7)
          {
            v43 = 0;
            v44 = 0;
            v45 = 0;
            while (1)
            {
              LOBYTE(v52) = 0;
              v46 = [a2 position] + 1;
              if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
              {
                v48 = [a2 data];
                [v48 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v45 |= (v52 & 0x7F) << v43;
              if ((v52 & 0x80) == 0)
              {
                break;
              }

              v43 += 7;
              v11 = v44++ >= 9;
              if (v11)
              {
                v49 = 0;
                goto LABEL_98;
              }
            }

            v49 = (v45 != 0) & ~[a2 hasError];
LABEL_98:
            [a1 setIsFilterBarShown:v49];
            goto LABEL_103;
          }

          if (v13 == 8)
          {
            v15 = 0;
            v16 = 0;
            v17 = 0;
            while (1)
            {
              LOBYTE(v52) = 0;
              v18 = [a2 position] + 1;
              if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
              {
                v20 = [a2 data];
                [v20 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v17 |= (v52 & 0x7F) << v15;
              if ((v52 & 0x80) == 0)
              {
                break;
              }

              v15 += 7;
              v11 = v16++ >= 9;
              if (v11)
              {
                v21 = 0;
                goto LABEL_102;
              }
            }

            if ([a2 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v17;
            }

LABEL_102:
            [a1 setInputToResultShownMs:v21];
            goto LABEL_103;
          }
        }

        else
        {
          if (v13 == 5)
          {
            v29 = 0;
            v30 = 0;
            v31 = 0;
            while (1)
            {
              LOBYTE(v52) = 0;
              v32 = [a2 position] + 1;
              if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
              {
                v34 = [a2 data];
                [v34 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v31 |= (v52 & 0x7F) << v29;
              if ((v52 & 0x80) == 0)
              {
                break;
              }

              v29 += 7;
              v11 = v30++ >= 9;
              if (v11)
              {
                v35 = 0;
                goto LABEL_92;
              }
            }

            if ([a2 hasError])
            {
              v35 = 0;
            }

            else
            {
              v35 = v31;
            }

LABEL_92:
            [a1 addUniqueIdsOfVisibleButtons:v35];
            goto LABEL_103;
          }

          if (v13 == 6)
          {
            v14 = PBReaderReadString();
            if (v14)
            {
              [a1 addUniqueIdentifiersOfVisibleCardSections:v14];
            }

LABEL_35:

            goto LABEL_103;
          }
        }
      }

      else if (v13 > 2)
      {
        if (v13 == 3)
        {
          v36 = 0;
          v37 = 0;
          v38 = 0;
          while (1)
          {
            LOBYTE(v52) = 0;
            v39 = [a2 position] + 1;
            if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
            {
              v41 = [a2 data];
              [v41 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v38 |= (v52 & 0x7F) << v36;
            if ((v52 & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            v11 = v37++ >= 9;
            if (v11)
            {
              v42 = 0;
              goto LABEL_96;
            }
          }

          if ([a2 hasError])
          {
            v42 = 0;
          }

          else
          {
            v42 = v38;
          }

LABEL_96:
          [a1 setTriggerEvent:v42];
          goto LABEL_103;
        }

        if (v13 == 4)
        {
          v14 = objc_alloc_init(_CPSearchResultForFeedback);
          v52 = 0;
          v53 = 0;
          if (!PBReaderPlaceMark() || !_CPSearchResultForFeedbackReadFrom(v14, a2))
          {
LABEL_106:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setGoTakeoverResult:v14];
          goto LABEL_35;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v22 = 0;
          v23 = 0;
          v24 = 0;
          while (1)
          {
            LOBYTE(v52) = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v24 |= (v52 & 0x7F) << v22;
            if ((v52 & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v11 = v23++ >= 9;
            if (v11)
            {
              v28 = 0;
              goto LABEL_88;
            }
          }

          if ([a2 hasError])
          {
            v28 = 0;
          }

          else
          {
            v28 = v24;
          }

LABEL_88:
          [a1 setTimestamp:v28];
          goto LABEL_103;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(_CPSearchResultForFeedback);
          v52 = 0;
          v53 = 0;
          if (!PBReaderPlaceMark() || !_CPSearchResultForFeedbackReadFrom(v14, a2))
          {
            goto LABEL_106;
          }

          PBReaderRecallMark();
          if (v14)
          {
            [a1 addResults:v14];
          }

          goto LABEL_35;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_103:
      v50 = [a2 position];
    }

    while (v50 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPMapsCardSectionEngagementFeedbackReadFrom(void *a1, void *a2)
{
  [a1 setTimestamp:0];
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v45[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v45 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v45[0] & 0x7F) << v5;
        if ((v45[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 3)
      {
        switch(v13)
        {
          case 1:
            v29 = 0;
            v30 = 0;
            v31 = 0;
            while (1)
            {
              LOBYTE(v45[0]) = 0;
              v32 = [a2 position] + 1;
              if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
              {
                v34 = [a2 data];
                [v34 getBytes:v45 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v31 |= (v45[0] & 0x7F) << v29;
              if ((v45[0] & 0x80) == 0)
              {
                break;
              }

              v29 += 7;
              v11 = v30++ >= 9;
              if (v11)
              {
                v35 = 0;
                goto LABEL_73;
              }
            }

            if ([a2 hasError])
            {
              v35 = 0;
            }

            else
            {
              v35 = v31;
            }

LABEL_73:
            [a1 setTimestamp:v35];
            goto LABEL_86;
          case 2:
            v28 = objc_alloc_init(_CPPunchoutForFeedback);
            v45[0] = 0;
            v45[1] = 0;
            if (!PBReaderPlaceMark() || !_CPPunchoutForFeedbackReadFrom(v28, a2))
            {

              return 0;
            }

            PBReaderRecallMark();
            [a1 setDestination:v28];
            goto LABEL_69;
          case 3:
            v21 = 0;
            v22 = 0;
            v23 = 0;
            while (1)
            {
              LOBYTE(v45[0]) = 0;
              v24 = [a2 position] + 1;
              if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
              {
                v26 = [a2 data];
                [v26 getBytes:v45 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v23 |= (v45[0] & 0x7F) << v21;
              if ((v45[0] & 0x80) == 0)
              {
                break;
              }

              v21 += 7;
              v11 = v22++ >= 9;
              if (v11)
              {
                v27 = 0;
                goto LABEL_85;
              }
            }

            if ([a2 hasError])
            {
              v27 = 0;
            }

            else
            {
              v27 = v23;
            }

LABEL_85:
            [a1 setTriggerEvent:v27];
            goto LABEL_86;
        }
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          v28 = PBReaderReadString();
          [a1 setCardSectionId:v28];
          goto LABEL_69;
        }

        if (v13 == 7)
        {
          v28 = PBReaderReadString();
          [a1 setResultId:v28];
LABEL_69:

          goto LABEL_86;
        }
      }

      else
      {
        if (v13 == 4)
        {
          v36 = 0;
          v37 = 0;
          v38 = 0;
          while (1)
          {
            LOBYTE(v45[0]) = 0;
            v39 = [a2 position] + 1;
            if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
            {
              v41 = [a2 data];
              [v41 getBytes:v45 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v38 |= (v45[0] & 0x7F) << v36;
            if ((v45[0] & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            v11 = v37++ >= 9;
            if (v11)
            {
              v42 = 0;
              goto LABEL_77;
            }
          }

          if ([a2 hasError])
          {
            v42 = 0;
          }

          else
          {
            v42 = v38;
          }

LABEL_77:
          [a1 setActionCardType:v42];
          goto LABEL_86;
        }

        if (v13 == 5)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          while (1)
          {
            LOBYTE(v45[0]) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:v45 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v45[0] & 0x7F) << v14;
            if ((v45[0] & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_81;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

LABEL_81:
          [a1 setFeedbackType:v20];
          goto LABEL_86;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_86:
      v43 = [a2 position];
    }

    while (v43 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPStoreCardSectionEngagementFeedbackReadFrom(void *a1, void *a2)
{
  [a1 setTimestamp:0];
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v45) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v45 & 0x7F) << v5;
        if ((v45 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 4)
      {
        if (v13 > 6)
        {
          if (v13 == 7)
          {
            v14 = PBReaderReadString();
            [a1 setCardSectionId:v14];
            goto LABEL_72;
          }

          if (v13 == 8)
          {
            v14 = PBReaderReadString();
            [a1 setResultId:v14];
LABEL_72:

            goto LABEL_91;
          }
        }

        else
        {
          if (v13 == 5)
          {
            v14 = objc_alloc_init(_CPCardSectionForFeedback);
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark() || !_CPCardSectionForFeedbackReadFrom(v14, a2))
            {
LABEL_94:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setCardSection:v14];
            goto LABEL_72;
          }

          if (v13 == 6)
          {
            v15 = 0;
            v16 = 0;
            v17 = 0;
            while (1)
            {
              LOBYTE(v45) = 0;
              v18 = [a2 position] + 1;
              if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
              {
                v20 = [a2 data];
                [v20 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v17 |= (v45 & 0x7F) << v15;
              if ((v45 & 0x80) == 0)
              {
                break;
              }

              v15 += 7;
              v11 = v16++ >= 9;
              if (v11)
              {
                v21 = 0;
                goto LABEL_86;
              }
            }

            if ([a2 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v17;
            }

LABEL_86:
            [a1 setProductPageResult:v21];
            goto LABEL_91;
          }
        }
      }

      else if (v13 > 2)
      {
        if (v13 == 3)
        {
          v36 = 0;
          v37 = 0;
          v38 = 0;
          while (1)
          {
            LOBYTE(v45) = 0;
            v39 = [a2 position] + 1;
            if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
            {
              v41 = [a2 data];
              [v41 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v38 |= (v45 & 0x7F) << v36;
            if ((v45 & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            v11 = v37++ >= 9;
            if (v11)
            {
              v42 = 0;
              goto LABEL_82;
            }
          }

          if ([a2 hasError])
          {
            v42 = 0;
          }

          else
          {
            v42 = v38;
          }

LABEL_82:
          [a1 setTriggerEvent:v42];
          goto LABEL_91;
        }

        if (v13 == 4)
        {
          v22 = 0;
          v23 = 0;
          v24 = 0;
          while (1)
          {
            LOBYTE(v45) = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v24 |= (v45 & 0x7F) << v22;
            if ((v45 & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v11 = v23++ >= 9;
            if (v11)
            {
              v28 = 0;
              goto LABEL_90;
            }
          }

          if ([a2 hasError])
          {
            v28 = 0;
          }

          else
          {
            v28 = v24;
          }

LABEL_90:
          [a1 setActionCardType:v28];
          goto LABEL_91;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v29 = 0;
          v30 = 0;
          v31 = 0;
          while (1)
          {
            LOBYTE(v45) = 0;
            v32 = [a2 position] + 1;
            if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
            {
              v34 = [a2 data];
              [v34 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v31 |= (v45 & 0x7F) << v29;
            if ((v45 & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v11 = v30++ >= 9;
            if (v11)
            {
              v35 = 0;
              goto LABEL_78;
            }
          }

          if ([a2 hasError])
          {
            v35 = 0;
          }

          else
          {
            v35 = v31;
          }

LABEL_78:
          [a1 setTimestamp:v35];
          goto LABEL_91;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(_CPPunchoutForFeedback);
          v45 = 0;
          v46 = 0;
          if (!PBReaderPlaceMark() || !_CPPunchoutForFeedbackReadFrom(v14, a2))
          {
            goto LABEL_94;
          }

          PBReaderRecallMark();
          [a1 setDestination:v14];
          goto LABEL_72;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_91:
      v43 = [a2 position];
    }

    while (v43 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPStartSearchFeedbackReadFrom(void *a1, void *a2)
{
  v3 = a1;
  v4 = 0;
LABEL_2:
  [a1 setTimestamp:v4];
  while (1)
  {
    v5 = [a2 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v44 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v44 & 0x7F) << v6;
      if ((v44 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_17;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_17:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    v14 = v13 >> 3;
    if ((v13 >> 3) > 3)
    {
      switch(v14)
      {
        case 4:
          v23 = 0;
          v24 = 0;
          v25 = 0;
          while (1)
          {
            v46 = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v46 & 0x7F) << v23;
            if ((v46 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v12 = v24++ >= 9;
            if (v12)
            {
              v29 = 0;
              goto LABEL_61;
            }
          }

          if ([a2 hasError])
          {
            v29 = 0;
          }

          else
          {
            v29 = v25;
          }

LABEL_61:
          [v3 setTriggerEvent:v29];
          break;
        case 5:
          v31 = 0;
          v32 = 0;
          v33 = 0;
          while (1)
          {
            v47 = 0;
            v34 = [a2 position] + 1;
            if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
            {
              v36 = [a2 data];
              [v36 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v33 |= (v47 & 0x7F) << v31;
            if ((v47 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            v12 = v32++ >= 9;
            if (v12)
            {
              v37 = 0;
              goto LABEL_69;
            }
          }

          if ([a2 hasError])
          {
            v37 = 0;
          }

          else
          {
            v37 = v33;
          }

LABEL_69:
          [v3 setQueryId:v37];
          break;
        case 6:
          v16 = 0;
          v17 = 0;
          v18 = 0;
          while (1)
          {
            v45 = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v45 & 0x7F) << v16;
            if ((v45 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v12 = v17++ >= 9;
            if (v12)
            {
              v22 = 0;
              goto LABEL_65;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v18;
          }

LABEL_65:
          [v3 setSearchType:v22];
          break;
        default:
          goto LABEL_45;
      }
    }

    else
    {
      switch(v14)
      {
        case 1:
          v38 = 0;
          v39 = 0;
          v40 = 0;
          while (1)
          {
            v48 = 0;
            v41 = [a2 position] + 1;
            if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
            {
              v43 = [a2 data];
              [v43 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v40 |= (v48 & 0x7F) << v38;
            if ((v48 & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            v12 = v39++ >= 9;
            if (v12)
            {
              v4 = 0;
              goto LABEL_82;
            }
          }

          if ([a2 hasError])
          {
            v4 = 0;
          }

          else
          {
            v4 = v40;
          }

LABEL_82:
          a1 = v3;
          goto LABEL_2;
        case 2:
          v15 = PBReaderReadString();
          [v3 setInput:v15];
LABEL_48:

          break;
        case 3:
          v15 = PBReaderReadString();
          [v3 setUuid:v15];
          goto LABEL_48;
        default:
LABEL_45:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          break;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPEndSearchFeedbackReadFrom(void *a1, void *a2)
{
  v3 = a1;
  v4 = 0;
LABEL_2:
  [a1 setTimestamp:v4];
  while (1)
  {
    v5 = [a2 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v22 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v22 & 0x7F) << v6;
      if ((v22 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_17;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_17:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 2)
    {
      v15 = PBReaderReadString();
      [v3 setUuid:v15];
    }

    else
    {
      if ((v13 >> 3) == 1)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        while (1)
        {
          v23 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v23 & 0x7F) << v16;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v12 = v17++ >= 9;
          if (v12)
          {
            v4 = 0;
            goto LABEL_36;
          }
        }

        if ([a2 hasError])
        {
          v4 = 0;
        }

        else
        {
          v4 = v18;
        }

LABEL_36:
        a1 = v3;
        goto LABEL_2;
      }

      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPStartNetworkSearchFeedbackReadFrom(void *a1, void *a2)
{
  v3 = a1;
  v4 = 0;
LABEL_2:
  [a1 setTimestamp:v4];
  while (2)
  {
    v5 = [a2 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v81[0]) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:v81 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v81[0] & 0x7F) << v6;
      if ((v81[0] & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_17;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_17:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v74 = 0;
        v75 = 0;
        v76 = 0;
        while (1)
        {
          LOBYTE(v81[0]) = 0;
          v77 = [a2 position] + 1;
          if (v77 >= [a2 position] && (v78 = objc_msgSend(a2, "position") + 1, v78 <= objc_msgSend(a2, "length")))
          {
            v79 = [a2 data];
            [v79 getBytes:v81 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v76 |= (v81[0] & 0x7F) << v74;
          if ((v81[0] & 0x80) == 0)
          {
            break;
          }

          v74 += 7;
          v12 = v75++ >= 9;
          if (v12)
          {
            v4 = 0;
LABEL_154:
            a1 = v3;
            goto LABEL_2;
          }
        }

        if ([a2 hasError])
        {
          v4 = 0;
        }

        else
        {
          v4 = v76;
        }

        goto LABEL_154;
      case 2u:
        v14 = PBReaderReadString();
        [v3 setInput:v14];
        goto LABEL_121;
      case 3u:
        v14 = PBReaderReadString();
        [v3 setUuid:v14];
        goto LABEL_121;
      case 4u:
        v55 = 0;
        v56 = 0;
        v57 = 0;
        while (1)
        {
          LOBYTE(v81[0]) = 0;
          v58 = [a2 position] + 1;
          if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 1, v59 <= objc_msgSend(a2, "length")))
          {
            v60 = [a2 data];
            [v60 getBytes:v81 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v57 |= (v81[0] & 0x7F) << v55;
          if ((v81[0] & 0x80) == 0)
          {
            break;
          }

          v55 += 7;
          v12 = v56++ >= 9;
          if (v12)
          {
            v61 = 0;
            goto LABEL_137;
          }
        }

        if ([a2 hasError])
        {
          v61 = 0;
        }

        else
        {
          v61 = v57;
        }

LABEL_137:
        [v3 setQueryId:v61];
        continue;
      case 5u:
        v14 = PBReaderReadString();
        [v3 setUrl:v14];
        goto LABEL_121;
      case 6u:
        v81[0] = 0;
        v81[1] = 0;
        PBReaderPlaceMark();
        v29 = 0;
        while (1)
        {
          v82 = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:&v82 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          if ((v82 & 0x80000000) == 0)
          {
            break;
          }

          v33 = v29++ > 8;
          if (v33)
          {
            goto LABEL_109;
          }
        }

        [a2 hasError];
LABEL_109:
        v14 = PBReaderReadString();
        v69 = 0;
        while (1)
        {
          v82 = 0;
          v70 = [a2 position] + 1;
          if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 1, v71 <= objc_msgSend(a2, "length")))
          {
            v72 = [a2 data];
            [v72 getBytes:&v82 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          if ((v82 & 0x80000000) == 0)
          {
            break;
          }

          v33 = v69++ > 8;
          if (v33)
          {
            goto LABEL_119;
          }
        }

        [a2 hasError];
LABEL_119:
        v73 = PBReaderReadString();
        PBReaderRecallMark();
        if (([a2 hasError] & 1) == 0)
        {
          [v3 setHeaders:v73 forKey:v14];

LABEL_121:
          continue;
        }

        return 0;
      case 7u:
        v34 = 0;
        v35 = 0;
        v36 = 0;
        while (1)
        {
          LOBYTE(v81[0]) = 0;
          v37 = [a2 position] + 1;
          if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
          {
            v39 = [a2 data];
            [v39 getBytes:v81 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v36 |= (v81[0] & 0x7F) << v34;
          if ((v81[0] & 0x80) == 0)
          {
            break;
          }

          v34 += 7;
          v12 = v35++ >= 9;
          if (v12)
          {
            v40 = 0;
            goto LABEL_125;
          }
        }

        if ([a2 hasError])
        {
          v40 = 0;
        }

        else
        {
          v40 = v36;
        }

LABEL_125:
        [v3 setEndpoint:v40];
        continue;
      case 8u:
        v41 = 0;
        v42 = 0;
        v43 = 0;
        while (1)
        {
          LOBYTE(v81[0]) = 0;
          v44 = [a2 position] + 1;
          if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
          {
            v46 = [a2 data];
            [v46 getBytes:v81 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v43 |= (v81[0] & 0x7F) << v41;
          if ((v81[0] & 0x80) == 0)
          {
            break;
          }

          v41 += 7;
          v12 = v42++ >= 9;
          if (v12)
          {
            v47 = 0;
            goto LABEL_129;
          }
        }

        if ([a2 hasError])
        {
          v47 = 0;
        }

        else
        {
          v47 = v43;
        }

LABEL_129:
        [v3 setTriggerEvent:v47];
        continue;
      case 9u:
        v62 = 0;
        v63 = 0;
        v64 = 0;
        while (1)
        {
          LOBYTE(v81[0]) = 0;
          v65 = [a2 position] + 1;
          if (v65 >= [a2 position] && (v66 = objc_msgSend(a2, "position") + 1, v66 <= objc_msgSend(a2, "length")))
          {
            v67 = [a2 data];
            [v67 getBytes:v81 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v64 |= (v81[0] & 0x7F) << v62;
          if ((v81[0] & 0x80) == 0)
          {
            break;
          }

          v62 += 7;
          v12 = v63++ >= 9;
          if (v12)
          {
            v68 = 0;
            goto LABEL_141;
          }
        }

        if ([a2 hasError])
        {
          v68 = 0;
        }

        else
        {
          v68 = v64;
        }

LABEL_141:
        [v3 setLookupSelectionType:v68];
        continue;
      case 0xBu:
        v14 = PBReaderReadData();
        [v3 setBodyData:v14];
        goto LABEL_121;
      case 0xCu:
        v14 = PBReaderReadString();
        [v3 setExperimentId:v14];
        goto LABEL_121;
      case 0xDu:
        v14 = PBReaderReadString();
        [v3 setTreatmentId:v14];
        goto LABEL_121;
      case 0xEu:
        v22 = 0;
        v23 = 0;
        v24 = 0;
        while (1)
        {
          LOBYTE(v81[0]) = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:v81 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (v81[0] & 0x7F) << v22;
          if ((v81[0] & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v12 = v23++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_107;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v24;
        }

LABEL_107:
        [v3 setSearchType:v28];
        continue;
      case 0xFu:
        v15 = 0;
        v16 = 0;
        v17 = 0;
        while (1)
        {
          LOBYTE(v81[0]) = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:v81 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v81[0] & 0x7F) << v15;
          if ((v81[0] & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v12 = v16++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_103;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v17;
        }

LABEL_103:
        [v3 setRawRequestSize:v21];
        continue;
      case 0x10u:
        v48 = 0;
        v49 = 0;
        v50 = 0;
        while (1)
        {
          LOBYTE(v81[0]) = 0;
          v51 = [a2 position] + 1;
          if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
          {
            v53 = [a2 data];
            [v53 getBytes:v81 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v50 |= (v81[0] & 0x7F) << v48;
          if ((v81[0] & 0x80) == 0)
          {
            break;
          }

          v48 += 7;
          v12 = v49++ >= 9;
          if (v12)
          {
            v54 = 0;
            goto LABEL_133;
          }
        }

        if ([a2 hasError])
        {
          v54 = 0;
        }

        else
        {
          v54 = v50;
        }

LABEL_133:
        [v3 setCompressedRequestSize:v54];
        continue;
      default:
        if (PBReaderSkipValueWithTag())
        {
          continue;
        }

        return 0;
    }
  }
}
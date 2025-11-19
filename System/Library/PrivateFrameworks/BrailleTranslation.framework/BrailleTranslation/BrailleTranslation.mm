uint64_t BRLTSConnectionHasEntitlement(void *a1)
{
  v1 = [a1 valueForEntitlement:@"com.apple.accessibility.BrailleTranslationService-access"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 BOOLValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t BRLTModeForFlags(int a1, int a2, int a3)
{
  v3 = 1;
  if (a1)
  {
    v3 = 2;
  }

  if (a2)
  {
    v3 = 3;
  }

  if (a3)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t BRLTFlagsForMode(uint64_t result, _BYTE *a2, _BYTE *a3, char *a4)
{
  if (result <= 2)
  {
    if (result == 1)
    {
      if (a2)
      {
        *a2 = 0;
      }
    }

    else
    {
      if (result != 2)
      {
        return result;
      }

      if (a2)
      {
        *a2 = 1;
      }
    }

    if (a3)
    {
      *a3 = 0;
    }

    goto LABEL_22;
  }

  if (result == 3)
  {
    if (a2)
    {
      *a2 = 0;
    }

    if (a3)
    {
      *a3 = 1;
    }

LABEL_22:
    if (!a4)
    {
      return result;
    }

    v4 = 0;
    goto LABEL_24;
  }

  if (result == 4)
  {
    if (a2)
    {
      *a2 = 0;
    }

    if (a3)
    {
      *a3 = 0;
    }

    if (a4)
    {
      v4 = 1;
LABEL_24:
      *a4 = v4;
    }
  }

  return result;
}

__CFString *BRLTModeDescription(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"?";
  }

  else
  {
    return off_278D20968[a1 - 1];
  }
}

unint64_t BRLTJUnicharIndexForIndex(void *a1, uint64_t a2)
{
  v3 = a1;
  if (a2 < 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    while (v4 < [v3 length])
    {
      v5 = [v3 rangeOfComposedCharacterSequenceAtIndex:v4];
      v4 = v5 + v6;
      if (!--a2)
      {
        goto LABEL_8;
      }
    }

    v4 = [v3 length];
  }

LABEL_8:

  return v4;
}

unint64_t BRLTJUnicharRangeForRange(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = 0x7FFFFFFFFFFFFFFFLL;
  if (a2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = a1;
    v3 = BRLTJUnicharIndexForIndex(v6, a2);
    BRLTJUnicharIndexForIndex(v6, a2 + a3);
  }

  return v3;
}

uint64_t BRLTJIndexForUnicharIndex(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if (a2 < 0)
  {
    goto LABEL_10;
  }

  if ([v3 length] < a2)
  {
    a2 = [v4 length];
  }

  if (a2 < 1)
  {
LABEL_10:
    v5 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = [v4 rangeOfComposedCharacterSequenceAtIndex:v6];
      v6 = v7 + v8;
      if (v7 + v8 <= a2)
      {
        ++v5;
      }
    }

    while (v7 + v8 < a2);
  }

  return v5;
}

uint64_t BRLTJRangeForUnicharRange(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = 0x7FFFFFFFFFFFFFFFLL;
  if (a2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = a1;
    v3 = BRLTJIndexForUnicharIndex(v6, a2);
    BRLTJIndexForUnicharIndex(v6, a2 + a3);
  }

  return v3;
}

id BRLTTranslationServiceInterface()
{
  if (BRLTTranslationServiceInterface_onceToken != -1)
  {
    BRLTTranslationServiceInterface_cold_1();
  }

  v1 = BRLTTranslationServiceInterface__Interface;

  return v1;
}

void __BRLTTranslationServiceInterface_block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2854036C0];
  v2 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v0 setClasses:v2 forSelector:sel_brailleForText_parameters_withReply_ argumentIndex:1 ofReply:0];
  [v0 setClasses:v2 forSelector:sel_textForBraille_parameters_withReply_ argumentIndex:1 ofReply:0];
  v1 = BRLTTranslationServiceInterface__Interface;
  BRLTTranslationServiceInterface__Interface = v0;
}

id BRLTTranslationServiceClientInterface()
{
  if (BRLTTranslationServiceClientInterface_onceToken != -1)
  {
    BRLTTranslationServiceClientInterface_cold_1();
  }

  v1 = BRLTTranslationServiceClientInterface__Interface;

  return v1;
}

uint64_t __BRLTTranslationServiceClientInterface_block_invoke()
{
  BRLTTranslationServiceClientInterface__Interface = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2854092E8];

  return MEMORY[0x2821F96F8]();
}

void sub_241E017D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241E027A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id BRLTLog()
{
  if (MEMORY[0x2822129C8])
  {
    v0 = BRLLogTranslation();
  }

  else
  {
    if (BRLTLog_onceToken != -1)
    {
      BRLTLog_cold_1();
    }

    v0 = BRLTLog_Logger;
  }

  return v0;
}

uint64_t __BRLTLog_block_invoke()
{
  BRLTLog_Logger = os_log_create("com.apple.Accessibility", "BRLTranslation");

  return MEMORY[0x2821F96F8]();
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

uint64_t BRLTTranslatorClassIsValid(void *a1)
{
  v16[9] = *MEMORY[0x277D85DE8];
  v16[0] = sel_interfaceVersion;
  v16[1] = sel_setActiveTable_;
  v16[2] = sel_activeTable;
  v16[3] = sel_activeTableSupportsContractedBraille;
  v16[4] = sel_activeTableSupportsEightDotBraille;
  v16[5] = sel_activeTableSupportsTechnicalBraille;
  v16[6] = sel_activeTableSupportsIPA;
  v16[7] = sel_printBrailleForText_mode_locations_textPositionsRange_textFormattingRanges_;
  v16[8] = sel_textForPrintBraille_mode_locations_;
  v2 = [a1 conformsToProtocol:&unk_285409348];
  if ((v2 & 1) == 0)
  {
    v4 = BRLTLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      BRLTTranslatorClassIsValid_cold_1(a1, v4);
    }
  }

  v5 = 0;
  *&v3 = 138412546;
  v11 = v3;
  do
  {
    v6 = v16[v5];
    if (([a1 instancesRespondToSelector:{v6, v11}] & 1) == 0)
    {
      v7 = BRLTLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = NSStringFromSelector(v6);
        *buf = v11;
        v13 = a1;
        v14 = 2112;
        v15 = v8;
        _os_log_error_impl(&dword_241DFD000, v7, OS_LOG_TYPE_ERROR, "%@ doesn't implement %@", buf, 0x16u);
      }

      v2 = 0;
    }

    ++v5;
  }

  while (v5 != 9);
  v9 = *MEMORY[0x277D85DE8];
  return v2 & 1;
}

id BRLTFirstPreferredLocale()
{
  v0 = MEMORY[0x277CBEAF8];
  v1 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v2 = [v1 preferredLocalizations];
  v3 = [v2 firstObject];
  v4 = [v0 localeWithLocaleIdentifier:v3];

  return v4;
}

id BRLTLocalizedNameForLanguage(void *a1)
{
  v1 = a1;
  v2 = BRLTFirstPreferredLocale();
  v3 = [v2 localizedStringForLanguage:v1 context:3];

  return v3;
}

id BRLTLocalizedStringForKey(void *a1)
{
  v1 = MEMORY[0x277CCA8D8];
  v2 = a1;
  v3 = [v1 bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:v2 value:&stru_2853FD1A8 table:@"BrailleTables"];

  return v4;
}

void sub_241E0B96C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

NSUInteger _unionRangeIgnoringNotFound(NSRange a1, NSRange a2)
{
  if (a1.location != 0x7FFFFFFFFFFFFFFFLL && a2.location != 0x7FFFFFFFFFFFFFFFLL)
  {
    return NSUnionRange(a1, a2).location;
  }

  if (a1.location == 0x7FFFFFFFFFFFFFFFLL)
  {
    a1.location = a2.location;
  }

  return a1.location;
}

void *sub_241E0E0A4()
{
  result = swift_allocObject();
  result[2] = &unk_2853FC258;
  result[3] = &unk_2853FC288;
  v1 = MEMORY[0x277D84F90];
  result[4] = 0;
  result[5] = v1;
  return result;
}

void *sub_241E0E0E8()
{
  result = v0;
  v0[2] = &unk_2853FC2B8;
  v0[3] = &unk_2853FC2E8;
  v2 = MEMORY[0x277D84F90];
  v0[4] = 0;
  v0[5] = v2;
  return result;
}

unint64_t sub_241E0E110(uint64_t *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v100 = sub_241E35744();
  v9 = *(v100 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v99 = v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v14 = a1[2];
  v13 = a1[3];
  if (a4)
  {
    *&v97 = a1[1];
    swift_beginAccess();
    v15 = v5[3];
    v16 = MEMORY[0x277D84F90];
    v5[3] = MEMORY[0x277D84F90];

    swift_beginAccess();
    v17 = v5[2];
    v5[2] = v16;

    if (sub_241E35874() >= 1)
    {
      v18 = 0;
      v98 = (v9 + 8);
      v96 = v5;
      v95 = v13;
      v94[1] = v12;
      v94[0] = a1;
      do
      {
        v19 = sub_241E0EEBC(v18, v14, v13, 1);
        if (v19 == v20)
        {
          break;
        }

        v21 = v20;
        sub_241E111BC(v19, v20);
        if (sub_241E35874() < v22)
        {
          sub_241E35874();
        }

        v23 = sub_241E358A4();
        result = sub_241E358A4();
        if (result >> 14 < v23 >> 14)
        {
          __break(1u);
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        v25 = v14;
        v26 = sub_241E35984();
        v27 = MEMORY[0x245D013C0](v26);
        v29 = v28;

        v101 = v27;
        v102 = v29;
        v30 = v99;
        sub_241E35724();
        sub_241E0F234();
        v31 = sub_241E35A44();
        v33 = v32;
        v34 = *v98;
        (*v98)(v30, v100);

        swift_beginAccess();
        v35 = v5[3];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v5[3] = v35;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v35 = sub_241E0EDB0(0, *(v35 + 2) + 1, 1, v35);
          v5[3] = v35;
        }

        v38 = *(v35 + 2);
        v37 = *(v35 + 3);
        if (v38 >= v37 >> 1)
        {
          v35 = sub_241E0EDB0((v37 > 1), v38 + 1, 1, v35);
        }

        *(v35 + 2) = v38 + 1;
        v39 = &v35[16 * v38];
        *(v39 + 4) = v31;
        *(v39 + 5) = v33;
        v5 = v96;
        v96[3] = v35;
        swift_endAccess();
        v14 = v25;
        v40 = v25;
        v13 = v95;
        sub_241E0EEBC(v18, v40, v95, 0);
        if (sub_241E35874() < v41)
        {
          sub_241E35874();
        }

        v42 = sub_241E358A4();
        result = sub_241E358A4();
        if (result >> 14 < v42 >> 14)
        {
          goto LABEL_33;
        }

        v43 = sub_241E35984();
        v44 = MEMORY[0x245D013C0](v43);
        v46 = v45;

        v101 = v44;
        v102 = v46;
        v47 = v99;
        sub_241E35724();
        v48 = sub_241E35A44();
        v50 = v49;
        v34(v47, v100);

        swift_beginAccess();
        v51 = v5[2];
        v52 = swift_isUniquelyReferenced_nonNull_native();
        v5[2] = v51;
        if ((v52 & 1) == 0)
        {
          v51 = sub_241E0EDB0(0, *(v51 + 2) + 1, 1, v51);
          v5[2] = v51;
        }

        v54 = *(v51 + 2);
        v53 = *(v51 + 3);
        if (v54 >= v53 >> 1)
        {
          v51 = sub_241E0EDB0((v53 > 1), v54 + 1, 1, v51);
        }

        *(v51 + 2) = v54 + 1;
        v55 = &v51[16 * v54];
        *(v55 + 4) = v48;
        *(v55 + 5) = v50;
        v5[2] = v51;
        swift_endAccess();
        v18 = v21;
      }

      while (v21 < sub_241E35874());
    }

LABEL_28:
    swift_beginAccess();
    if (!*(v5[3] + 16))
    {
      v5[3] = &unk_2853FC318;

      swift_beginAccess();
      v84 = v5[2];
      v5[2] = &unk_2853FC348;
    }

    v5[4] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74750, &qword_241E38B90);
    result = swift_allocObject();
    *(result + 16) = xmmword_241E38B80;
    v85 = v5[3];
    if (v85[2])
    {
      v86 = result;
      v87 = v85[4];
      v88 = v85[5];

      v89 = sub_241E0F0F0();
      v90 = v5;
      v92 = v91;

      *(v86 + 32) = v89;
      *(v86 + 40) = v92;
      swift_beginAccess();
      v93 = v90[5];
      v90[5] = v86;
    }

LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v56 = sub_241E0EEBC(a2, a1[2], a1[3], 1);
  sub_241E111BC(v56, v57);
  if (sub_241E35874() < v58)
  {
    sub_241E35874();
  }

  v59 = sub_241E358A4();
  result = sub_241E358A4();
  if (result >> 14 >= v59 >> 14)
  {
    v60 = sub_241E35984();
    v61 = MEMORY[0x245D013C0](v60);
    v62 = v14;
    v64 = v63;

    v105 = v61;
    v106 = v64;
    v65 = v99;
    sub_241E35724();
    v98 = sub_241E0F234();
    v66 = sub_241E35A44();
    v68 = v67;
    v69 = *(v9 + 8);
    v69(v65, v100);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74750, &qword_241E38B90);
    v70 = swift_allocObject();
    v97 = xmmword_241E38B80;
    *(v70 + 16) = xmmword_241E38B80;
    *(v70 + 32) = v66;
    *(v70 + 40) = v68;
    swift_beginAccess();
    v71 = v5[3];
    v5[3] = v70;

    sub_241E0EEBC(a2, v62, v13, 0);
    if (sub_241E35874() < v72)
    {
      sub_241E35874();
    }

    v73 = sub_241E358A4();
    result = sub_241E358A4();
    if (result >> 14 < v73 >> 14)
    {
      goto LABEL_36;
    }

    v74 = sub_241E35984();
    v75 = MEMORY[0x245D013C0](v74);
    v77 = v76;

    v103 = v75;
    v104 = v77;
    v78 = v99;
    sub_241E35724();
    v79 = sub_241E35A44();
    v81 = v80;
    v69(v78, v100);

    v82 = swift_allocObject();
    *(v82 + 16) = v97;
    *(v82 + 32) = v79;
    *(v82 + 40) = v81;
    swift_beginAccess();
    v83 = v5[2];
    v5[2] = v82;

    goto LABEL_28;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

BOOL sub_241E0E9C0()
{
  v1 = *(v0 + 32);
  v2 = v1 + 1;
  if (__OFADD__(v1, 1))
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    return v2 < *(*(v0 + 24) + 16);
  }

  return result;
}

uint64_t sub_241E0EA28()
{
  result = (*(*v0 + 224))();
  if ((result & 1) == 0)
  {
    return result;
  }

  v4 = v0[4];
  v5 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v0[4] = v5;
  result = swift_beginAccess();
  if (v5 != *(v0[5] + 16))
  {
    return result;
  }

  swift_beginAccess();
  v6 = v0[3];
  if (v5 >= *(v6 + 16))
  {
    goto LABEL_11;
  }

  v7 = v6 + 16 * v5;
  v8 = *(v7 + 32);
  v9 = *(v7 + 40);

  v5 = sub_241E0F0F0();
  v1 = v10;

  swift_beginAccess();
  v2 = v0[5];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v0[5] = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_12:
    v2 = sub_241E0EDB0(0, *(v2 + 2) + 1, 1, v2);
    v0[5] = v2;
  }

  v12 = *(v2 + 2);
  v13 = *(v2 + 3);
  v14 = v12 + 1;
  if (v12 >= v13 >> 1)
  {
    v19 = v12 + 1;
    v16 = v2;
    v17 = *(v2 + 2);
    v18 = sub_241E0EDB0((v13 > 1), v12 + 1, 1, v16);
    v12 = v17;
    v14 = v19;
    v2 = v18;
  }

  *(v2 + 2) = v14;
  v15 = &v2[16 * v12];
  *(v15 + 4) = v5;
  *(v15 + 5) = v1;
  v0[5] = v2;
  return swift_endAccess();
}

uint64_t sub_241E0EBAC()
{
  result = (*(*v0 + 232))();
  if (result)
  {
    v2 = v0[4];
    v3 = __OFSUB__(v2, 1);
    v4 = v2 - 1;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      v0[4] = v4;
    }
  }

  return result;
}

uint64_t sub_241E0EBFC()
{
  v1 = v0[4];
  result = swift_beginAccess();
  v3 = v0[5];
  if (v1 >= *(v3 + 16))
  {
    result = swift_beginAccess();
    v7 = v0[3];
    if (v1 < *(v7 + 16))
    {
      v8 = v7 + 16 * v1;
      v9 = *(v8 + 32);
      v10 = *(v8 + 40);

      v5 = sub_241E0F0F0();

      return v5;
    }
  }

  else
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      v4 = v3 + 16 * v1;
      v5 = *(v4 + 32);
      v6 = *(v4 + 40);

      return v5;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_241E0ECC8()
{
  v1 = *(v0 + 32);
  result = swift_beginAccess();
  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(v0 + 16);
    if (v1 < *(v3 + 16))
    {
      v4 = v3 + 16 * v1;
      v5 = *(v4 + 32);
      v6 = *(v4 + 40);

      return v5;
    }
  }

  __break(1u);
  return result;
}

void *BRLTWordDescriptionManager.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return v0;
}

uint64_t BRLTWordDescriptionManager.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

char *sub_241E0EDB0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74750, &qword_241E38B90);
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

uint64_t sub_241E0EEBC(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  result = sub_241E358A4();
  v8 = result;
  v9 = a1;
  v10 = result;
  while (v10 >= 0x4000)
  {
    v10 = sub_241E35894();
    if (sub_241E35954() == 8429794 && v11 == 0xA300000000000000)
    {
      goto LABEL_9;
    }

    v12 = sub_241E35B64();

    if (v12)
    {
      break;
    }

    v13 = __OFSUB__(v9--, 1);
    if (v13)
    {
      __break(1u);
LABEL_9:

      break;
    }
  }

  v14 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v14 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v15 = 4 * v14;
  while (v15 != v8 >> 14)
  {
    if (sub_241E35954() == 8429794 && v16 == 0xA300000000000000)
    {
      goto LABEL_20;
    }

    v17 = sub_241E35B64();

    if (v17)
    {
      goto LABEL_21;
    }

    result = sub_241E35884();
    v8 = result;
    v13 = __OFADD__(a1++, 1);
    if (v13)
    {
      __break(1u);
LABEL_20:

LABEL_21:
      if (a4)
      {
        while (v15 != v8 >> 14)
        {
          if (sub_241E35954() == 8429794 && v19 == 0xA300000000000000)
          {
          }

          else
          {
            v18 = sub_241E35B64();

            if ((v18 & 1) == 0)
            {
              goto LABEL_29;
            }
          }

          result = sub_241E35884();
          v8 = result;
          v13 = __OFADD__(a1++, 1);
          if (v13)
          {
            __break(1u);
            goto LABEL_32;
          }
        }
      }

      break;
    }
  }

LABEL_29:
  if (a1 >= v9)
  {
    return v9;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_241E0F0F0()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = sub_241E357E4();
  v2 = sub_241E357E4();
  v3 = [v0 descriptionOfWord:v1 forLanguage:v2];

  if (v3)
  {
    sub_241E357F4();
  }

  v4 = [objc_allocWithZone(BRLTJJapaneseProcessor) init];
  v5 = sub_241E357E4();

  v6 = [v4 spacedYomiOfWordDescription_];

  v7 = sub_241E357F4();
  return v7;
}

unint64_t sub_241E0F234()
{
  result = qword_27EC74400;
  if (!qword_27EC74400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC74400);
  }

  return result;
}

uint64_t sub_241E0F2EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t *a6@<X8>)
{
  v7 = a4;
  if ((a5 & 1) == 0)
  {
    result = sub_241E0F9D0(a1, a2, a3 & 1, a4, &v100);
    v60 = v103;
    v14 = v104;
    v13 = v101;
    v16 = v102;
    v17 = v100;
LABEL_55:
    *a6 = v17;
    a6[1] = v13;
    a6[2] = v16;
    a6[3] = v60;
    a6[4] = v14;
    return result;
  }

  v9 = sub_241E24E2C();
  v11 = v9;
  v12 = v10;
  v13 = 0xE000000000000000;
  v100 = 0;
  v101 = 0xE000000000000000;
  v14 = MEMORY[0x277D84F90];
  v102 = 0;
  v103 = 0xE000000000000000;
  v104 = MEMORY[0x277D84F90];
  if ((v10 & 0x2000000000000000) != 0)
  {
    v15 = HIBYTE(v10) & 0xF;
  }

  else
  {
    v15 = v9 & 0xFFFFFFFFFFFFLL;
  }

  v68 = v6;
  if (!v15)
  {
    v17 = 0;
    v16 = 0;
    v61 = 1;
    v66 = 0xE000000000000000;
LABEL_52:

    if (v61)
    {

      v60 = v66;
    }

    else
    {
      sub_241E0F9D0(v11, v12, a3 & 1, v7, v81);
      sub_241E0FC4C(v81, &v83);

      v90 = v81[0];
      sub_241E1041C(&v90);
      v89 = v81[1];
      sub_241E1041C(&v89);
      v88 = v82;
      sub_241E10470(&v88);

      v60 = v86;
      v14 = v87;
      v13 = v84;
      v16 = v85;
      v17 = v83;
    }

    goto LABEL_55;
  }

  v63 = a6;
  v64 = v7;
  v16 = 0;
  v17 = 0;
  v66 = 0xE000000000000000;
  while (1)
  {
    v18 = 4 * v15;
    v19 = 15;
    while (1)
    {
      v20 = sub_241E35954();
      v22 = sub_241E102D0(v20, v21);

      if ((v22 & 0x100000000) == 0 && (v22 - 10496) > 0xFFFFFEFF)
      {
        break;
      }

      v19 = sub_241E35884();
      if (v18 == v19 >> 14)
      {
        v61 = 0;
        goto LABEL_50;
      }
    }

    v23 = sub_241E35984();
    v24 = MEMORY[0x245D013C0](v23);
    v26 = v25;

    sub_241E0F9D0(v24, v26, a3 & 1, v64, v69);

    sub_241E0FC4C(v69, v71);
    v99 = v69[0];
    sub_241E1041C(&v99);
    v98 = v69[1];
    sub_241E1041C(&v98);
    v97 = v70;
    sub_241E10470(&v97);

    v27 = sub_241E0FC00(v19, v11, v12);
    v28 = MEMORY[0x245D013C0](v27);
    v30 = v29;

    if ((v30 & 0x2000000000000000) != 0)
    {
      v31 = HIBYTE(v30) & 0xF;
    }

    else
    {
      v31 = v28 & 0xFFFFFFFFFFFFLL;
    }

    if (v31)
    {
      v32 = 15;
      while (1)
      {
        v33 = sub_241E35954();
        v35 = sub_241E102D0(v33, v34);

        if ((v35 & 0x100000000) != 0 || v35 >> 11 < 5 || v35 >> 8 > 0x28)
        {
          break;
        }

        v32 = sub_241E35884();
        if (4 * v31 == v32 >> 14)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
LABEL_20:

      v36 = 7;
      if (((v30 >> 60) & ((v28 & 0x800000000000000) == 0)) != 0)
      {
        v36 = 11;
      }

      v32 = v36 | (v31 << 16);
    }

    v37 = sub_241E35984();
    v38 = MEMORY[0x245D013C0](v37);
    v40 = v39;

    v41 = HIBYTE(v40) & 0xF;
    if ((v40 & 0x2000000000000000) == 0)
    {
      v41 = v38 & 0xFFFFFFFFFFFFLL;
    }

    if (!v41)
    {
      v38 = 0;
      v47 = 0;
      v48 = 0xE000000000000000;
      v46 = 0xE000000000000000;
      v49 = MEMORY[0x277D84F90];
      goto LABEL_43;
    }

    v83 = v38;
    v84 = v40;
    v85 = 0;
    v86 = v41;

    while (1)
    {
      v42 = sub_241E358D4();
      if (!v43)
      {
        break;
      }

      v44 = sub_241E102D0(v42, v43);

      if ((v44 & 0x1FFFFFFFFLL) != 0x2800)
      {

        v83 = 91;
        v84 = 0xE100000000000000;
        MEMORY[0x245D01460](v38, v40);
        MEMORY[0x245D01460](93, 0xE100000000000000);
        v45 = v83;
        v46 = v84;
        goto LABEL_33;
      }
    }

    v45 = v38;
    v46 = v40;
LABEL_33:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74410, &qword_241E38C98);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_241E38B80;
    *(v49 + 32) = 0;
    result = sub_241E35874();
    if (result < 0)
    {
      break;
    }

    v67 = v45;
    if (result)
    {
      v51 = 0;
      v52 = *(v49 + 16);
      do
      {
        v53 = *(v49 + 24);
        if (v52 >= v53 >> 1)
        {
          v62 = result;
          v49 = sub_241E116B4((v53 > 1), v52 + 1, 1, v49);
          result = v62;
        }

        *(v49 + 16) = v52 + 1;
        *(v49 + 8 * v52++ + 32) = v51++;
      }

      while (result != v51);
    }

    result = sub_241E35874();
    v54 = result - 1;
    if (__OFSUB__(result, 1))
    {
      goto LABEL_57;
    }

    v56 = *(v49 + 16);
    v55 = *(v49 + 24);
    if (v56 >= v55 >> 1)
    {
      v49 = sub_241E116B4((v55 > 1), v56 + 1, 1, v49);
    }

    *(v49 + 16) = v56 + 1;
    *(v49 + 8 * v56 + 32) = v54;

    v48 = v40;
    v47 = v67;
LABEL_43:
    *&v73 = v38;
    *(&v73 + 1) = v48;
    *&v74 = v47;
    *(&v74 + 1) = v46;
    v75 = v49;

    sub_241E0FC4C(&v73, &v76);
    v96 = v73;
    sub_241E1041C(&v96);
    v95 = v74;
    sub_241E1041C(&v95);
    v94 = v75;
    sub_241E10470(&v94);
    v93 = v71[0];
    sub_241E1041C(&v93);
    v92 = v71[1];
    sub_241E1041C(&v92);
    v91 = v72;
    sub_241E10470(&v91);
    v57 = sub_241E0FC00(v32, v28, v30);
    v11 = MEMORY[0x245D013C0](v57);
    v12 = v58;

    v14 = v80;
    v13 = v77;
    v16 = v78;
    v17 = v76;
    v100 = v76;
    v101 = v77;
    v102 = v78;
    v103 = v79;
    v66 = v79;
    v104 = v80;
    if ((v12 & 0x2000000000000000) != 0)
    {
      v15 = HIBYTE(v12) & 0xF;
    }

    else
    {
      v15 = v11 & 0xFFFFFFFFFFFFLL;
    }

    v59 = v68;
    if (!v15)
    {
      v61 = 1;
LABEL_50:
      a6 = v63;
      v7 = v64;
      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
  return result;
}

uint64_t sub_241E0F9D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v11 = sub_241E357E4();
  v12 = [v5 _translate_isTechnical_textFormattingRanges_];

  v13 = sub_241E357B4();
  sub_241E35AA4();
  if (!*(v13 + 16) || (v14 = sub_241E115A8(v23), (v15 & 1) == 0))
  {
    sub_241E11F04(v23);
    goto LABEL_6;
  }

  sub_241E11F58(*(v13 + 56) + 32 * v14, v24);
  sub_241E11F04(v23);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v16 = 0;
    v17 = 0xE000000000000000;
    goto LABEL_7;
  }

  v16 = 0x656C6C69617262;
  v17 = 0xE700000000000000;
LABEL_7:
  sub_241E35AA4();
  if (!*(v13 + 16) || (v18 = sub_241E115A8(v23), (v19 & 1) == 0))
  {

    sub_241E11F04(v23);
    goto LABEL_12;
  }

  sub_241E11F58(*(v13 + 56) + 32 * v18, v24);
  sub_241E11F04(v23);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74408, &qword_241E38C20);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v21 = sub_241E35874();
    v20 = sub_241E11DB0(v21);
    goto LABEL_13;
  }

  v20 = 0x6E6F697461636F6CLL;
LABEL_13:
  *a5 = a1;
  a5[1] = a2;
  a5[2] = v16;
  a5[3] = v17;
  a5[4] = v20;
}

uint64_t sub_241E0FBF0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

unint64_t sub_241E0FC00(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_241E35984();
  }

  __break(1u);
  return result;
}

uint64_t sub_241E0FC4C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = *a1;
  v7 = a1[1];
  v23 = *v2;
  v25 = v2[1];

  MEMORY[0x245D01460](v6, v7);
  v21 = v25;
  v22 = v23;
  v8 = a1[2];
  v9 = a1[3];
  v24 = v2[2];
  v26 = v2[3];

  MEMORY[0x245D01460](v8, v9);
  v10 = v2[4];
  v11 = a1[4];
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = (v11 + 32);
    v14 = v3[4];

    while (1)
    {
      v15 = *v13++;
      result = sub_241E35874();
      v17 = result + v15;
      if (__OFADD__(result, v15))
      {
        break;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_241E116B4(0, *(v10 + 16) + 1, 1, v10);
        v10 = result;
      }

      v19 = *(v10 + 16);
      v18 = *(v10 + 24);
      if (v19 >= v18 >> 1)
      {
        result = sub_241E116B4((v18 > 1), v19 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 16) = v19 + 1;
      *(v10 + 8 * v19 + 32) = v17;
      if (!--v12)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v20 = v3[4];

LABEL_11:
    *a2 = v22;
    a2[1] = v21;
    a2[2] = v24;
    a2[3] = v26;
    a2[4] = v10;
  }

  return result;
}

uint64_t sub_241E0FDB8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  result = sub_241E0F2EC(*(a1 + OBJC_IVAR___BRLTEditStringInternal_string), *(a1 + OBJC_IVAR___BRLTEditStringInternal_string + 8), a2, *(a1 + OBJC_IVAR___BRLTEditStringInternal_textFormattingRanges), 1, &v64);
  v50 = v65;
  v51 = v64;
  v63 = v66;
  v53 = v67;
  v54 = a1;
  v5 = (a1 + OBJC_IVAR___BRLTEditStringInternal_selection);
  v49 = *(a1 + OBJC_IVAR___BRLTEditStringInternal_selection + 16);
  if (v49)
  {
    v47 = 0;
    v48 = 0;
  }

  else
  {
    v6 = v5[1];
    v7 = sub_241E11480(*v5);
    result = sub_241E11480(v6);
    v48 = v7;
    if (result < v7)
    {
      goto LABEL_61;
    }

    v47 = result;
  }

  v8 = (v54 + OBJC_IVAR___BRLTEditStringInternal_focus);
  v46 = *(v54 + OBJC_IVAR___BRLTEditStringInternal_focus + 16);
  if (v46)
  {
    v44 = 0;
    v45 = 0;
  }

  else
  {
    v9 = v8[1];
    v10 = sub_241E11480(*v8);
    result = sub_241E11480(v9);
    v45 = v10;
    if (result < v10)
    {
      goto LABEL_62;
    }

    v44 = result;
  }

  v11 = *(v54 + OBJC_IVAR___BRLTEditStringInternal_tokenRanges);
  v57 = *(v11 + 16);
  if (v57)
  {
    v12 = 0;
    v56 = v11 + 32;
    v13 = MEMORY[0x277D84F90];
    v55 = *(v54 + OBJC_IVAR___BRLTEditStringInternal_tokenRanges);
    while (1)
    {
      if (v12 >= *(v11 + 16))
      {
        goto LABEL_59;
      }

      v59 = v12;
      v60 = v13;
      v14 = (v56 + 24 * v12);
      v16 = *v14;
      v15 = v14[1];
      v58 = v14[2];
      result = sub_241E35874();
      if (result >= 1)
      {
        v17 = result;
        v18 = 0;
        v19 = *(&v67 + 1);
        v20 = v64;
        v21 = v65;
        v61 = *(&v67 + 1) + 32;
        while (1)
        {
          v23 = v18 + v17;
          if (__OFADD__(v18, v17))
          {
            __break(1u);
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
LABEL_58:
            __break(1u);
LABEL_59:
            __break(1u);
LABEL_60:
            __break(1u);
LABEL_61:
            __break(1u);
LABEL_62:
            __break(1u);
LABEL_63:
            __break(1u);
            return result;
          }

          v22 = v23 / 2;
          if (v23 > -2)
          {
            result = sub_241E2CD50(v63, v53, v23 / 2);
            if (result >= *(v19 + 16))
            {
              goto LABEL_23;
            }

            if (result < 0)
            {
              goto LABEL_57;
            }

            result = sub_241E2CCF4(v20, v21, *(v61 + 8 * result));
            if ((result & 0x8000000000000000) == 0)
            {
              break;
            }
          }

          if (v16 > 0)
          {
            goto LABEL_15;
          }

LABEL_16:
          v17 = v22;
          if (v18 >= v22)
          {
            goto LABEL_27;
          }
        }

        v24 = result;
        result = sub_241E35874();
        if (result < v24)
        {
LABEL_23:
          result = sub_241E35874();
          v24 = result;
        }

        if (v24 >= v16)
        {
          goto LABEL_16;
        }

LABEL_15:
        v18 = v22 + 1;
        v22 = v17;
        goto LABEL_16;
      }

      v18 = 0;
LABEL_27:
      result = sub_241E35874();
      if (result >= 1)
      {
        break;
      }

      v26 = 0;
LABEL_42:
      if (v26 < v18)
      {
        goto LABEL_60;
      }

      v13 = v60;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_241E117B8(0, *(v60 + 16) + 1, 1, v60);
        v13 = result;
      }

      v35 = *(v13 + 16);
      v34 = *(v13 + 24);
      if (v35 >= v34 >> 1)
      {
        result = sub_241E117B8((v34 > 1), v35 + 1, 1, v13);
        v13 = result;
      }

      v12 = v59 + 1;
      *(v13 + 16) = v35 + 1;
      v36 = (v13 + 24 * v35);
      v36[4] = v18;
      v36[5] = v26;
      v36[6] = v58;
      v11 = v55;
      if (v59 + 1 == v57)
      {
        goto LABEL_50;
      }
    }

    v25 = result;
    v26 = 0;
    v27 = *(&v67 + 1);
    v28 = v64;
    v29 = v65;
    v62 = *(&v67 + 1) + 32;
    while (1)
    {
      v31 = v26 + v25;
      if (__OFADD__(v26, v25))
      {
        goto LABEL_56;
      }

      v30 = v31 / 2;
      if (v31 > -2)
      {
        result = sub_241E2CD50(v63, v53, v31 / 2);
        if (result >= *(v27 + 16))
        {
          goto LABEL_38;
        }

        if (result < 0)
        {
          goto LABEL_58;
        }

        result = sub_241E2CCF4(v28, v29, *(v62 + 8 * result));
        if ((result & 0x8000000000000000) == 0)
        {
          break;
        }
      }

      if (v15 > 0)
      {
        goto LABEL_30;
      }

LABEL_31:
      v25 = v30;
      if (v26 >= v30)
      {
        goto LABEL_42;
      }
    }

    v32 = result;
    v33 = sub_241E35874();
    result = v32;
    if (v33 < v32)
    {
LABEL_38:
      result = sub_241E35874();
    }

    if (result >= v15)
    {
      goto LABEL_31;
    }

LABEL_30:
    v26 = v30 + 1;
    v30 = v25;
    goto LABEL_31;
  }

  v13 = MEMORY[0x277D84F90];
LABEL_50:
  v37 = (v54 + OBJC_IVAR___BRLTEditStringInternal_suggestion);
  v38 = *(v54 + OBJC_IVAR___BRLTEditStringInternal_suggestion + 16);
  if (v38)
  {
    v39 = 0;
    v40 = 0;
  }

  else
  {
    v41 = v37[1];
    v39 = sub_241E11480(*v37);
    result = sub_241E11480(v41);
    if (result < v39)
    {
      goto LABEL_63;
    }

    v40 = result;
  }

  type metadata accessor for BRLTEditString();
  v42 = v66;
  v43 = v67;

  result = sub_241E12134(v42, v43, v48, v47, v49, v45, v44, v46, v13, v39, v40, v38, 0);
  *a3 = result;
  *(a3 + 8) = v51;
  *(a3 + 16) = v50;
  *(a3 + 24) = v63;
  *(a3 + 32) = v53;
  return result;
}

uint64_t sub_241E10280(uint64_t a1, uint64_t a2)
{
  v3 = sub_241E11480(a1);
  result = sub_241E11480(a2);
  if (result >= v3)
  {
    return v3;
  }

  __break(1u);
  return result;
}

unint64_t sub_241E102D0(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_241E11B14(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v9 = sub_241E35AD4();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v17[0] = a1;
        v17[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v8 = v17 + v6;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v7 = sub_241E35B14();
        }

        v8 = (v7 + v6);
      }

      v9 = *v8;
      if (*v8 < 0)
      {
        v10 = (__clz(v9 ^ 0xFF) - 24);
        if (v10 > 2)
        {
          if (v10 == 3)
          {
            v11 = v8[1];
            v12 = v8[2];
            v13 = ((v9 & 0xF) << 12) | ((v11 & 0x3F) << 6);
          }

          else
          {
            v14 = v8[1];
            v15 = v8[2];
            v12 = v8[3];
            v13 = ((v9 & 0xF) << 18) | ((v14 & 0x3F) << 12) | ((v15 & 0x3F) << 6);
          }

          v9 = v13 & 0xFFFFFFC0 | v12 & 0x3F;
        }

        else if (v10 != 1)
        {
          v9 = v8[1] & 0x3F | ((v9 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  LOBYTE(v17[0]) = v2 == 0;
  return v9 | ((v2 == 0) << 32);
}

uint64_t sub_241E10470(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74408, &qword_241E38C20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_241E104D8@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, char a4@<W3>, char **a5@<X8>)
{
  v8 = a2;
  if (a4)
  {
    v96 = a3;
    v11 = *(a1 + OBJC_IVAR___BRLTEditStringInternal_string);
    v10 = *(a1 + OBJC_IVAR___BRLTEditStringInternal_string + 8);

    v97 = v10;
    v12 = sub_241E35874();
    if (v12 < 0)
    {
      goto LABEL_112;
    }

    v91 = a1;
    v6 = MEMORY[0x277D84F90];
    v7 = 0;
    if (!v12)
    {
      v5 = v10;
LABEL_33:
      if (v7 >= sub_241E35874())
      {

        v36 = *(v6 + 16);
        v38 = v96;
        if (v36)
        {
          goto LABEL_40;
        }

        v5 = MEMORY[0x277D84F90];
        goto LABEL_58;
      }

      v33 = sub_241E35874();
      if (v33 < v7)
      {
        goto LABEL_113;
      }

      v5 = v33;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_114;
      }

      while (1)
      {
        v35 = *(v6 + 16);
        v34 = *(v6 + 24);
        v36 = v35 + 1;
        if (v35 >= v34 >> 1)
        {
          v6 = sub_241E118D4((v34 > 1), v35 + 1, 1, v6);
        }

        *(v6 + 16) = v36;
        v37 = (v6 + 24 * v35);
        *(v37 + 4) = v7;
        *(v37 + 5) = v5;
        v37[48] = 0;
        v38 = v96;
LABEL_40:
        v7 = (v6 + 48);
        v5 = MEMORY[0x277D84F90];
        v102 = v6;
        do
        {
          v42 = *(v7 - 2);
          v43 = *(v7 - 1);
          if (v42 < v38 && v43 > v8 && v42 != v43 && v8 != v38)
          {
            v47 = *v7;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v105 = v5;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_241E119E4(0, *(v5 + 2) + 1, 1);
              v38 = v96;
              v5 = v105;
            }

            v40 = *(v5 + 2);
            v39 = *(v5 + 3);
            if (v40 >= v39 >> 1)
            {
              sub_241E119E4((v39 > 1), v40 + 1, 1);
              v38 = v96;
              v5 = v105;
            }

            *(v5 + 2) = v40 + 1;
            v41 = &v5[24 * v40];
            *(v41 + 4) = v42;
            *(v41 + 5) = v43;
            v41[48] = v47;
            v6 = v102;
          }

          v7 += 3;
          --v36;
        }

        while (v36);
LABEL_58:

        v49 = *(v5 + 2);
        if (v49)
        {
          v105 = MEMORY[0x277D84F90];
          sub_241E119E4(0, v49, 0);
          v50 = v96;
          v51 = v105;
          v52 = v5 + 48;
          while (1)
          {
            v7 = *(v52 - 2) <= v8 ? v8 : *(v52 - 2);
            v53 = *(v52 - 1) >= v50 ? v50 : *(v52 - 1);
            if (v53 < v7)
            {
              break;
            }

            v54 = *v52;
            v105 = v51;
            v6 = *(v51 + 2);
            v55 = *(v51 + 3);
            if (v6 >= v55 >> 1)
            {
              sub_241E119E4((v55 > 1), v6 + 1, 1);
              v50 = v96;
              v51 = v105;
            }

            *(v51 + 2) = v6 + 1;
            v56 = &v51[24 * v6];
            *(v56 + 4) = v7;
            *(v56 + 5) = v53;
            v56[48] = v54;
            v52 += 24;
            if (!--v49)
            {
              v57 = v51;

              v58 = v57;
              goto LABEL_72;
            }
          }

LABEL_109:
          __break(1u);
        }

        else
        {

          v58 = MEMORY[0x277D84F90];
LABEL_72:
          v90 = *(v58 + 2);
          if (!v90)
          {

            v32 = 0;
            v8 = 0;
            v5 = MEMORY[0x277D84F90];
            v31 = 0xE000000000000000;
            v7 = 0xE000000000000000;
            goto LABEL_105;
          }

          v59 = 0;
          v60 = 0;
          v8 = 0;
          v89 = *((*MEMORY[0x277D85000] & *v91) + 0xE0);
          v88 = v58 + 32;
          v61 = 0xE000000000000000;
          v6 = 0xE000000000000000;
          v103 = MEMORY[0x277D84F90];
          v87 = v58;
          while (v59 < *(v58 + 2))
          {
            v96 = v59;
            v62 = &v88[24 * v59];
            v63 = v62[16];
            v64 = v89(*v62, *(v62 + 1));
            v98 = v6;
            if (v63 == 1)
            {
              v100 = v8;
              v114 = 0;
              v115 = 0xE000000000000000;
              v66 = HIBYTE(v65) & 0xF;
              if ((v65 & 0x2000000000000000) == 0)
              {
                v66 = v64 & 0xFFFFFFFFFFFFLL;
              }

              v95 = v64;
              v110 = v64;
              v111 = v65;
              v112 = 0;
              v113 = v66;
              v5 = v65;

              v6 = 0;
              v67 = MEMORY[0x277D84F90];
              while (1)
              {
                v69 = sub_241E358D4();
                if (!v70)
                {
                  break;
                }

                v71 = v69;
                v8 = v70;
                v72 = sub_241E102D0(v69, v70);
                if ((v72 & 0x100000000) != 0 || v72 >> 11 <= 4 || v72 >> 8 >= 0x29)
                {
                }

                else
                {
                  MEMORY[0x245D01460](v71, v8);

                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74410, &qword_241E38C98);
                  inited = swift_initStackObject();
                  *(inited + 16) = xmmword_241E38B80;
                  *(inited + 32) = v6;
                  v74 = *(v67 + 2);
                  v75 = swift_isUniquelyReferenced_nonNull_native();
                  if (!v75 || (v76 = *(v67 + 3) >> 1, v76 <= v74))
                  {
                    v67 = sub_241E116B4(v75, v74 + 1, 1, v67);
                    v76 = *(v67 + 3) >> 1;
                  }

                  v77 = *(v67 + 2);
                  if (v76 <= v77)
                  {
                    goto LABEL_108;
                  }

                  *&v67[8 * v77 + 32] = *(inited + 32);

                  ++*(v67 + 2);
                }

                if (__OFADD__(v6++, 1))
                {
                  goto LABEL_107;
                }
              }

              v79 = v114;
              v78 = v115;

              v6 = v98;
              v8 = v100;
              v80 = v95;
            }

            else
            {
              sub_241E10E6C(v64, v65, v104);

              v78 = v104[3];
              v67 = v104[4];
              v5 = v104[1];
              v79 = v104[2];
              v80 = v104[0];
            }

            v105 = v60;
            v106 = v61;

            MEMORY[0x245D01460](v80, v5);
            v93 = v106;
            v94 = v105;
            v105 = v8;
            v106 = v6;

            MEMORY[0x245D01460](v79, v78);
            v101 = v105;
            v92 = v106;
            v81 = *(v67 + 2);
            if (v81)
            {
              v8 = (v67 + 32);
              v5 = v103;

              while (1)
              {
                v82 = *v8++;
                v83 = sub_241E35874();
                v7 = (v83 + v82);
                if (__OFADD__(v83, v82))
                {
                  break;
                }

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v5 = sub_241E116B4(0, *(v5 + 2) + 1, 1, v5);
                }

                v85 = *(v5 + 2);
                v84 = *(v5 + 3);
                v6 = v85 + 1;
                if (v85 >= v84 >> 1)
                {
                  v5 = sub_241E116B4((v84 > 1), v85 + 1, 1, v5);
                }

                *(v5 + 2) = v6;
                *&v5[8 * v85 + 32] = v7;
                if (!--v81)
                {
                  goto LABEL_75;
                }
              }

              __break(1u);
LABEL_107:
              __break(1u);
LABEL_108:
              __break(1u);
              goto LABEL_109;
            }

            v5 = v103;

LABEL_75:
            v59 = v96 + 1;

            v31 = v93;
            v32 = v94;
            v60 = v94;
            v61 = v93;
            v7 = v92;
            v6 = v92;
            v103 = v5;
            v58 = v87;
            v8 = v101;
            if ((v96 + 1) == v90)
            {

              goto LABEL_105;
            }
          }
        }

        __break(1u);
LABEL_111:
        __break(1u);
LABEL_112:
        __break(1u);
LABEL_113:
        __break(1u);
LABEL_114:
        v6 = sub_241E118D4(0, *(v6 + 16) + 1, 1, v6);
      }
    }

    v13 = 0;
    v14 = -1;
    v5 = v10;
    v99 = v12;
    while (1)
    {
      v19 = v13++;
      if (sub_241E35954() == 91 && v20 == 0xE100000000000000)
      {
      }

      else
      {
        v21 = sub_241E35B64();

        if ((v21 & 1) == 0)
        {
          if (v14 == -1)
          {
            v19 = -1;
            goto LABEL_7;
          }

          if (sub_241E35954() == 93 && v25 == 0xE100000000000000)
          {
          }

          else
          {
            v26 = sub_241E35B64();

            if ((v26 & 1) == 0)
            {
              v19 = v14;
              goto LABEL_7;
            }
          }

          if (v13 < v14)
          {
            goto LABEL_111;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_241E118D4(0, *(v6 + 16) + 1, 1, v6);
          }

          v23 = *(v6 + 16);
          v27 = *(v6 + 24);
          v24 = v23 + 1;
          if (v23 >= v27 >> 1)
          {
            v15 = 1;
            v6 = sub_241E118D4((v27 > 1), v23 + 1, 1, v6);
            v17 = -1;
          }

          else
          {
            v17 = -1;
            v15 = 1;
          }

          v7 = v14;
          v19 = v13;
          v16 = v13;
          goto LABEL_6;
        }
      }

      if (v7 >= v19)
      {
        goto LABEL_7;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_241E118D4(0, *(v6 + 16) + 1, 1, v6);
      }

      v23 = *(v6 + 16);
      v22 = *(v6 + 24);
      v24 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        v6 = sub_241E118D4((v22 > 1), v23 + 1, 1, v6);
      }

      v15 = 0;
      v16 = v7;
      v17 = v19;
LABEL_6:
      *(v6 + 16) = v24;
      v18 = (v6 + 24 * v23);
      *(v18 + 4) = v7;
      *(v18 + 5) = v19;
      v18[48] = v15;
      v7 = v16;
      v19 = v17;
      v5 = v97;
LABEL_7:
      sub_241E35884();
      v14 = v19;
      if (v99 == v13)
      {
        goto LABEL_33;
      }
    }
  }

  v28 = (*((*MEMORY[0x277D85000] & *a1) + 0xE0))(a2, a3);
  sub_241E10E6C(v28, v29, &v105);

  v7 = v108;
  v5 = v109;
  v31 = v106;
  v8 = v107;
  v32 = v105;
LABEL_105:
  *a5 = v32;
  a5[1] = v31;
  a5[2] = v8;
  a5[3] = v7;
  a5[4] = v5;
  return result;
}

uint64_t sub_241E10E6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_241E357E4();
  v8 = [v3 _backTranslate_];

  v9 = sub_241E357B4();
  sub_241E35AA4();
  if (!*(v9 + 16) || (v10 = sub_241E115A8(v20), (v11 & 1) == 0))
  {
    sub_241E11F04(v20);
    goto LABEL_6;
  }

  sub_241E11F58(*(v9 + 56) + 32 * v10, v21);
  sub_241E11F04(v20);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v12 = 0;
    v13 = 0xE000000000000000;
    goto LABEL_7;
  }

  v12 = 1954047348;
  v13 = 0xE400000000000000;
LABEL_7:
  sub_241E35AA4();
  if (*(v9 + 16) && (v14 = sub_241E115A8(v20), (v15 & 1) != 0))
  {
    sub_241E11F58(*(v9 + 56) + 32 * v14, v21);
    sub_241E11F04(v20);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74408, &qword_241E38C20);
    if (swift_dynamicCast())
    {
      v16 = 0x6E6F697461636F6CLL;
      if (!MEMORY[0x6E6F697461636F7C])
      {
        goto LABEL_14;
      }

      goto LABEL_15;
    }
  }

  else
  {

    sub_241E11F04(v20);
  }

  v17 = sub_241E35874();
  v16 = sub_241E11DB0(v17);
  if (!*(v16 + 16))
  {
LABEL_14:

    v18 = sub_241E35874();
    v16 = sub_241E11DB0(v18);
  }

LABEL_15:
  *a3 = a1;
  a3[1] = a2;
  a3[2] = v12;
  a3[3] = v13;
  a3[4] = v16;
}

uint64_t sub_241E11098()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_241E110C8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

int64_t sub_241E11100(uint64_t a1)
{
  if (a1 < 0)
  {
    return 0;
  }

  result = sub_241E2CD50(v1[2], v1[3], a1);
  v3 = v1[4];
  if (result < *(v3 + 16))
  {
    if (result < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_241E2CCF4(*v1, v1[1], *(v3 + 8 * result + 32));
    if ((v4 & 0x8000000000000000) == 0)
    {
      v5 = v4;
      v6 = sub_241E35874();
      result = v5;
      if (v6 >= v5)
      {
        return result;
      }

      goto LABEL_10;
    }

    return 0;
  }

  v7 = *v1;
  v8 = v1[1];
LABEL_10:

  return sub_241E35874();
}

uint64_t sub_241E111BC(uint64_t result, uint64_t a2)
{
  v4 = result;
  if (result < 0)
  {
    goto LABEL_7;
  }

  result = sub_241E2CD50(v2[2], v2[3], result);
  v5 = v2[4];
  if (result >= *(v5 + 16))
  {
    v7 = *v2;
    v8 = v2[1];
    goto LABEL_11;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    result = sub_241E2CCF4(*v2, v2[1], *(v5 + 8 * result + 32));
    if ((result & 0x8000000000000000) == 0)
    {
      v6 = result;
      result = sub_241E35874();
      if (result < v6)
      {
LABEL_11:
        result = sub_241E35874();
        v6 = result;
        if (v4 == a2)
        {
LABEL_13:
          if (v4 < 0)
          {
            goto LABEL_45;
          }

          v9 = v2[2];
          v10 = v2[3];
LABEL_15:
          result = sub_241E2CD50(v9, v10, v4);
          v11 = v2[4];
          if (result >= *(v11 + 16))
          {
            v27 = *v2;
            v28 = v2[1];
            goto LABEL_49;
          }

          if (result < 0)
          {
LABEL_54:
            __break(1u);
            goto LABEL_55;
          }

          result = sub_241E2CCF4(*v2, v2[1], *(v11 + 8 * result + 32));
          if (result < 0)
          {
LABEL_45:
            v13 = 0;
          }

          else
          {
            v12 = result;
            result = sub_241E35874();
            v13 = v12;
            if (result < v12)
            {
LABEL_49:
              result = sub_241E35874();
              if (result < v6)
              {
LABEL_50:
                __break(1u);
LABEL_51:
                __break(1u);
LABEL_52:
                __break(1u);
LABEL_53:
                __break(1u);
                goto LABEL_54;
              }

              return v6;
            }
          }

          if (v13 < v6)
          {
            goto LABEL_50;
          }

          return v6;
        }

        goto LABEL_12;
      }

LABEL_8:
      if (v4 == a2)
      {
        goto LABEL_13;
      }

LABEL_12:
      v9 = v2[2];
      v10 = v2[3];
      result = sub_241E35874();
      v4 = a2;
      if (result <= a2)
      {
        goto LABEL_13;
      }

      while (1)
      {
        v14 = v4 - 1;
        if (__OFSUB__(v4, 1))
        {
          goto LABEL_51;
        }

        if ((v14 & 0x8000000000000000) == 0)
        {
          result = sub_241E2CD50(v9, v10, v14);
          v15 = v2[4];
          if (result >= *(v15 + 16))
          {
            v18 = *v2;
            v19 = v2[1];
            goto LABEL_32;
          }

          if (result < 0)
          {
            goto LABEL_52;
          }

          v16 = sub_241E2CCF4(*v2, v2[1], *(v15 + 8 * result + 32));
          if ((v16 & 0x8000000000000000) == 0)
          {
            v17 = v16;
            result = sub_241E35874();
            if (result < v17)
            {
LABEL_32:
              result = sub_241E35874();
              v17 = result;
            }

            if (v4 < 0)
            {
              if (v17 < 0)
              {
                goto LABEL_45;
              }

              goto LABEL_21;
            }

            goto LABEL_34;
          }
        }

        if (v4 < 0)
        {
          goto LABEL_21;
        }

        v17 = 0;
LABEL_34:
        result = sub_241E2CD50(v9, v10, v4);
        v20 = v2[4];
        if (result >= *(v20 + 16))
        {
          v25 = *v2;
          v26 = v2[1];
          goto LABEL_40;
        }

        if (result < 0)
        {
          goto LABEL_53;
        }

        v21 = sub_241E2CCF4(*v2, v2[1], *(v20 + 8 * result + 32));
        if ((v21 & 0x8000000000000000) == 0)
        {
          v22 = v21;
          v23 = sub_241E35874();
          v24 = v22;
          if (v23 < v22)
          {
LABEL_40:
            v24 = sub_241E35874();
          }

          if (v17 < v24)
          {
            goto LABEL_15;
          }

          goto LABEL_21;
        }

        if (v17 < 0)
        {
          goto LABEL_15;
        }

LABEL_21:
        ++v4;
        result = sub_241E35874();
        if (v4 >= result)
        {
          goto LABEL_13;
        }
      }
    }

LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

LABEL_55:
  __break(1u);
  return result;
}

uint64_t sub_241E11480(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  result = sub_241E35874();
  if (result < 1)
  {
    return 0;
  }

  v6 = result;
  v7 = 0;
  while (1)
  {
    v9 = v7 + v6;
    if (__OFADD__(v7, v6))
    {
      break;
    }

    v8 = v9 / 2;
    if (v9 > -2)
    {
      result = sub_241E2CD50(v3, v4, v9 / 2);
      v10 = v1[4];
      if (result >= *(v10 + 16))
      {
        v13 = *v1;
        v14 = v1[1];
        goto LABEL_14;
      }

      if (result < 0)
      {
        goto LABEL_20;
      }

      result = sub_241E2CCF4(*v1, v1[1], *(v10 + 8 * result + 32));
      if ((result & 0x8000000000000000) == 0)
      {
        v11 = result;
        v12 = sub_241E35874();
        result = v11;
        if (v12 < v11)
        {
LABEL_14:
          result = sub_241E35874();
        }

        if (result >= a1)
        {
          goto LABEL_5;
        }

LABEL_4:
        v7 = v8 + 1;
        v8 = v6;
        goto LABEL_5;
      }
    }

    if (a1 > 0)
    {
      goto LABEL_4;
    }

LABEL_5:
    v6 = v8;
    if (v7 >= v8)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_241E115A8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_241E35A84();

  return sub_241E115EC(a1, v5);
}

unint64_t sub_241E115EC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_241E11FB4(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x245D01630](v9, a1);
      sub_241E11F04(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

char *sub_241E116B4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74410, &qword_241E38C98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_241E117B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74420, &qword_241E38CA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

char *sub_241E118D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74418, &qword_241E38CA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 24 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_241E119E4(char *a1, int64_t a2, char a3)
{
  result = sub_241E11A04(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_241E11A04(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74418, &qword_241E38CA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 24 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

unint64_t sub_241E11B14(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_241E11BAC(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_241E11C20(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_241E11BAC(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_241E11D34(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_241E11C20(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v10 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          v5 = v10;
        }

        return v5 << 16;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 != (a2 & 0xFFFFFFFFFFFFLL))
        {
          do
          {
LABEL_9:
            v7 = *(v6 + v5--) & 0xC0;
          }

          while (v7 == 128);
          ++v5;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_241E35B14();
        v5 = v12;
        if (v12 != v9)
        {
          goto LABEL_9;
        }
      }

      return v5 << 16;
    }

    v8 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v8 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v8)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

uint64_t sub_241E11D34(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_241E35924();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x245D014A0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

char *sub_241E11DB0(char *result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v1 = MEMORY[0x277D84F90];
    v2 = result;
    if (result)
    {
      v1 = sub_241E116B4(0, 1, 1, MEMORY[0x277D84F90]);
      v3 = *(v1 + 2);
      do
      {
        v4 = *(v1 + 3);
        if (v3 >= v4 >> 1)
        {
          v1 = sub_241E116B4((v4 > 1), v3 + 1, 1, v1);
        }

        *(v1 + 2) = v3 + 1;
        *&v1[8 * v3++ + 32] = 0;
        --v2;
      }

      while (v2);
    }

    return v1;
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_241E11E64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_241E11EAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_241E11F58(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t BRLTEditString.string.getter()
{
  v1 = *(v0 + OBJC_IVAR___BRLTEditStringInternal_string);
  v2 = *(v0 + OBJC_IVAR___BRLTEditStringInternal_string + 8);

  return v1;
}

uint64_t sub_241E120AC()
{
  result = *(v0 + OBJC_IVAR___BRLTEditStringInternal_selection);
  v2 = *(v0 + OBJC_IVAR___BRLTEditStringInternal_selection + 8);
  v3 = *(v0 + OBJC_IVAR___BRLTEditStringInternal_selection + 16);
  return result;
}

uint64_t sub_241E120C4()
{
  result = *(v0 + OBJC_IVAR___BRLTEditStringInternal_focus);
  v2 = *(v0 + OBJC_IVAR___BRLTEditStringInternal_focus + 8);
  v3 = *(v0 + OBJC_IVAR___BRLTEditStringInternal_focus + 16);
  return result;
}

uint64_t sub_241E120EC()
{
  result = *(v0 + OBJC_IVAR___BRLTEditStringInternal_suggestion);
  v2 = *(v0 + OBJC_IVAR___BRLTEditStringInternal_suggestion + 8);
  v3 = *(v0 + OBJC_IVAR___BRLTEditStringInternal_suggestion + 16);
  return result;
}

void *sub_241E12104()
{
  v1 = *(v0 + OBJC_IVAR___BRLTEditStringInternal_textFormattingRanges);
  v2 = v1;
  return v1;
}

id sub_241E12134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13)
{
  v21 = objc_allocWithZone(v13);
  v22 = &v21[OBJC_IVAR___BRLTEditStringInternal_string];
  *v22 = a1;
  *(v22 + 1) = a2;
  v23 = &v21[OBJC_IVAR___BRLTEditStringInternal_selection];
  *v23 = a3;
  *(v23 + 1) = a4;
  v23[16] = a5 & 1;
  v24 = &v21[OBJC_IVAR___BRLTEditStringInternal_focus];
  *v24 = a6;
  *(v24 + 1) = a7;
  v24[16] = a8 & 1;
  *&v21[OBJC_IVAR___BRLTEditStringInternal_tokenRanges] = a9;
  v25 = &v21[OBJC_IVAR___BRLTEditStringInternal_suggestion];
  *v25 = a10;
  *(v25 + 1) = a11;
  v25[16] = a12 & 1;
  *&v21[OBJC_IVAR___BRLTEditStringInternal_textFormattingRanges] = a13;
  v28.receiver = v21;
  v28.super_class = v13;
  return objc_msgSendSuper2(&v28, sel_init);
}

id sub_241E12250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13)
{
  v14 = &v13[OBJC_IVAR___BRLTEditStringInternal_string];
  *v14 = a1;
  *(v14 + 1) = a2;
  v15 = &v13[OBJC_IVAR___BRLTEditStringInternal_selection];
  *v15 = a3;
  *(v15 + 1) = a4;
  v15[16] = a5 & 1;
  v16 = &v13[OBJC_IVAR___BRLTEditStringInternal_focus];
  *v16 = a6;
  *(v16 + 1) = a7;
  v16[16] = a8 & 1;
  *&v13[OBJC_IVAR___BRLTEditStringInternal_tokenRanges] = a9;
  v17 = &v13[OBJC_IVAR___BRLTEditStringInternal_suggestion];
  *v17 = a10;
  *(v17 + 1) = a11;
  v17[16] = a12 & 1;
  *&v13[OBJC_IVAR___BRLTEditStringInternal_textFormattingRanges] = a13;
  v19.receiver = v13;
  v19.super_class = type metadata accessor for BRLTEditString();
  return objc_msgSendSuper2(&v19, sel_init);
}

uint64_t sub_241E12434(uint64_t a1)
{
  result = sub_241E13D34(a1);
  v4 = result;
  v5 = (v1 + OBJC_IVAR___BRLTEditStringInternal_string);
  v6 = a1;
  while (v4 >= 0x4000)
  {
    v7 = *v5;
    v8 = v5[1];
    v4 = sub_241E35894();
    sub_241E35954();
    LOBYTE(v8) = sub_241E357C4();

    if (v8)
    {
      break;
    }

    if (__OFSUB__(v6--, 1))
    {
      __break(1u);
      break;
    }
  }

  if (v6 <= a1)
  {
    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_241E124E0()
{
  v1 = *(v0 + OBJC_IVAR___BRLTEditStringInternal_selection);
  v2 = *(v0 + OBJC_IVAR___BRLTEditStringInternal_selection + 8);
  if (*(v0 + OBJC_IVAR___BRLTEditStringInternal_selection + 16))
  {
    return v1;
  }

  v14 = *(v0 + OBJC_IVAR___BRLTEditStringInternal_selection + 16);
  v3 = sub_241E13D34(v2);
  v4 = *(v0 + OBJC_IVAR___BRLTEditStringInternal_string + 8);
  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = *(v0 + OBJC_IVAR___BRLTEditStringInternal_string) & 0xFFFFFFFFFFFFLL;
  }

  v6 = 4 * v5;
  while (v6 != v3 >> 14)
  {
    if (sub_241E35954() == 8429794 && v7 == 0xA300000000000000)
    {
      goto LABEL_12;
    }

    v8 = sub_241E35B64();

    if (v8)
    {
      break;
    }

    v3 = sub_241E35884();
    v9 = __OFADD__(v2++, 1);
    if (v9)
    {
      __break(1u);
LABEL_12:

      break;
    }
  }

  result = sub_241E13D34(v1);
  v11 = result;
  while (v11 >= 0x4000)
  {
    v11 = sub_241E35894();
    if (sub_241E35954() == 8429794 && v12 == 0xA300000000000000)
    {
      goto LABEL_21;
    }

    v13 = sub_241E35B64();

    if (v13)
    {
      break;
    }

    v9 = __OFSUB__(v1--, 1);
    if (v9)
    {
      __break(1u);
LABEL_21:

      break;
    }
  }

  if (v2 >= v1)
  {
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_241E1269C()
{
  result = *(v0 + OBJC_IVAR___BRLTEditStringInternal_selection);
  if ((*(v0 + OBJC_IVAR___BRLTEditStringInternal_selection + 16) & 1) == 0)
  {
    v2 = result - 1;
    if (result < 1 || result != *(v0 + OBJC_IVAR___BRLTEditStringInternal_selection + 8))
    {
      return (*((*MEMORY[0x277D85000] & *v0) + 0x90))();
    }

    v4 = *(v0 + OBJC_IVAR___BRLTEditStringInternal_selection);
    sub_241E13D34(result - 1);
    v5 = *(v0 + OBJC_IVAR___BRLTEditStringInternal_string);
    v6 = *(v0 + OBJC_IVAR___BRLTEditStringInternal_string + 8);
    v8 = sub_241E35954() == 8429794 && v7 == 0xA300000000000000;
    v9 = MEMORY[0x277D85000];
    if (v8)
    {
    }

    else
    {
      v10 = sub_241E35B64();

      if ((v10 & 1) == 0)
      {
        v11 = v0;
LABEL_15:
        v12 = v11;
        v13 = (*((*v9 & *v11) + 0x90))();

        return v13;
      }
    }

    v11 = (*((*v9 & *v0) + 0xB0))(v2, v4, 0, 12558562, 0xA300000000000000, v4, v4, 0);
    goto LABEL_15;
  }

  return result;
}

uint64_t sub_241E12848()
{
  v1 = 0;
  v2 = (v0 + OBJC_IVAR___BRLTEditStringInternal_selection);
  if ((*(v0 + OBJC_IVAR___BRLTEditStringInternal_selection + 16) & 1) == 0 && *v2 >= 1)
  {
    v3 = v2[1];
    v4 = *v2 - (*v2 == v3);
    v5 = *((*MEMORY[0x277D85000] & *v0) + 0xE0);
    v5(v4, v3);
    for (i = sub_241E358D4(); v7; i = sub_241E358D4())
    {
      if (i == 8429794 && v7 == 0xA300000000000000)
      {
      }

      else
      {
        v8 = sub_241E35B64();

        if ((v8 & 1) == 0)
        {

          v1 = 0;
          return v1 & 1;
        }
      }
    }

    if (v4 >= 1)
    {
      if ((v5)(v4 - 1, v4) != 8429794 || v9 != 0xA300000000000000)
      {
        v11 = sub_241E35B64();

        goto LABEL_18;
      }
    }

    v11 = 1;
LABEL_18:
    v12 = *(v0 + OBJC_IVAR___BRLTEditStringInternal_string);
    v13 = *(v0 + OBJC_IVAR___BRLTEditStringInternal_string + 8);
    if (v3 < sub_241E35874())
    {
      if ((v5)(v3, v3 + 1) != 8429794 || v14 != 0xA300000000000000)
      {
        v16 = sub_241E35B64();

LABEL_27:
        v1 = v11 | v16;
        return v1 & 1;
      }
    }

    v16 = 1;
    goto LABEL_27;
  }

  return v1 & 1;
}

uint64_t sub_241E12A7C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___BRLTEditStringInternal_tokenRanges);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = v2 + 32;
  v5 = v2 + 48;
  v6 = v3;
  while (*(v5 - 16) > a1 || *(v5 - 8) <= a1)
  {
    v5 += 24;
    if (!--v6)
    {
      v5 = v4 + 24 * v3 - 8;
      return *v5;
    }
  }

  return *v5;
}

id sub_241E12AFC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v9 = v8;
  if (a3)
  {
    v16 = *&v8[OBJC_IVAR___BRLTEditStringInternal_string];
    v15 = *&v8[OBJC_IVAR___BRLTEditStringInternal_string + 8];
    v17 = *&v8[OBJC_IVAR___BRLTEditStringInternal_focus + 8];
    v103 = *&v8[OBJC_IVAR___BRLTEditStringInternal_focus];
    v100 = v8[OBJC_IVAR___BRLTEditStringInternal_focus + 16];
    v18 = *&v8[OBJC_IVAR___BRLTEditStringInternal_tokenRanges];
    v20 = type metadata accessor for BRLTEditString();
    v21 = objc_allocWithZone(v20);
    v22 = &v21[OBJC_IVAR___BRLTEditStringInternal_string];
    *v22 = v16;
    *(v22 + 1) = v15;
    v23 = &v21[OBJC_IVAR___BRLTEditStringInternal_selection];
    *v23 = a6;
    *(v23 + 1) = a7;
    v23[16] = a8 & 1;
    v24 = &v21[OBJC_IVAR___BRLTEditStringInternal_focus];
    *v24 = v103;
    *(v24 + 1) = v17;
    v24[16] = v100;
    *&v21[OBJC_IVAR___BRLTEditStringInternal_tokenRanges] = v18;
    v25 = &v21[OBJC_IVAR___BRLTEditStringInternal_suggestion];
    *v25 = a1;
    *(v25 + 1) = a2;
    v25[16] = 1;
    *&v21[OBJC_IVAR___BRLTEditStringInternal_textFormattingRanges] = 0;
    v112.receiver = v21;
    v112.super_class = v20;

    return objc_msgSendSuper2(&v112, sel_init);
  }

  sub_241E13D34(a1);
  v96 = a4;
  v29 = sub_241E13D34(a2);
  v104 = a2;
  v30 = *&v9[OBJC_IVAR___BRLTEditStringInternal_string];
  v31 = *&v9[OBJC_IVAR___BRLTEditStringInternal_string + 8];
  v32 = sub_241E35984();
  v97 = a5;
  v45 = v33;
  v35 = v34;
  v37 = v36;
  v38 = sub_241E0FC00(v29, v30, v31);
  v40 = v39;
  v101 = v41;
  v43 = v42;
  MEMORY[0x245D013C0](v32, v45, v35, v37);

  sub_241E358B4();
  v44 = sub_241E35A34();
  v106 = v38;
  v107 = v40;
  v108 = v101;
  v109 = v43;
  LOBYTE(v45) = v43;
  v46 = MEMORY[0x245D013C0](v44);
  v48 = v47;

  v110 = v46;
  v111 = v48;
  sub_241E13DE4();
  sub_241E358B4();
  v49 = sub_241E35A34();
  v51 = v50;
  v53 = v52;
  v55 = v54;

  v56 = MEMORY[0x245D013C0](v49, v51, v53, v55);
  v58 = v57;

  v59 = sub_241E35874();
  v60 = v104;
  v61 = v104 - a1;
  if (__OFSUB__(v104, a1))
  {
    goto LABEL_87;
  }

  v99 = v59 - v61;
  if (__OFSUB__(v59, v61))
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v91 = v58;
  v92 = v56;
  v62 = *&v9[OBJC_IVAR___BRLTEditStringInternal_tokenRanges];
  v35 = *(v62 + 16);
  if (v35)
  {
    v55 = 0;
    v102 = v104 + v99;
    v63 = __OFADD__(v104, v99);
    v98 = v63;
    v64 = (v62 + 48);
    v9 = MEMORY[0x277D84F90];
    while (1)
    {
      v67 = v55;
      v65 = *(v64 - 2);
      v45 = *(v64 - 1);
      v55 = *v64;
      v68 = a1 == v60 || v45 <= a1;
      v69 = !v68 && v65 < v60;
      v70 = !v69 || v65 == v45;
      v56 = v70 ? v67 : *v64;
      if (v45 >= v60 && v65 <= a1)
      {
        break;
      }

      if (v65 >= a1)
      {
        if (v45 > v60)
        {
          if (v98)
          {
            goto LABEL_81;
          }

          v77 = __OFADD__(v45, v99);
          v45 += v99;
          if (v77)
          {
            goto LABEL_82;
          }

          if (v45 < v102)
          {
            goto LABEL_83;
          }

          goto LABEL_52;
        }
      }

      else if (v45 <= v60)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_241E117B8(0, *(v9 + 2) + 1, 1, v9);
        }

        v73 = *(v9 + 2);
        v72 = *(v9 + 3);
        v74 = v73 + 1;
        if (v73 >= v72 >> 1)
        {
          v9 = sub_241E117B8((v72 > 1), v73 + 1, 1, v9);
        }

        v45 = a1;
        goto LABEL_11;
      }

      if (v45 > a1)
      {
        if (v65 < v60)
        {
          v55 = v56;
          goto LABEL_13;
        }

        v77 = __OFADD__(v65, v99);
        v65 += v99;
        if (v77)
        {
          goto LABEL_84;
        }

        v77 = __OFADD__(v45, v99);
        v45 += v99;
        if (v77)
        {
          goto LABEL_85;
        }

        if (v45 < v65)
        {
          goto LABEL_86;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_241E117B8(0, *(v9 + 2) + 1, 1, v9);
      }

      v73 = *(v9 + 2);
      v79 = *(v9 + 3);
      v74 = v73 + 1;
      if (v73 >= v79 >> 1)
      {
        v9 = sub_241E117B8((v79 > 1), v73 + 1, 1, v9);
      }

LABEL_12:
      *(v9 + 2) = v74;
      v66 = &v9[24 * v73];
      *(v66 + 4) = v65;
      *(v66 + 5) = v45;
      *(v66 + 6) = v55;
      v55 = v56;
      v60 = v104;
LABEL_13:
      v64 += 3;
      if (!--v35)
      {
        goto LABEL_67;
      }
    }

    if (v65 < a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_241E117B8(0, *(v9 + 2) + 1, 1, v9);
      }

      v56 = *(v9 + 2);
      v75 = *(v9 + 3);
      if (v56 >= v75 >> 1)
      {
        v9 = sub_241E117B8((v75 > 1), v56 + 1, 1, v9);
      }

      *(v9 + 2) = v56 + 1;
      v76 = &v9[24 * v56];
      *(v76 + 4) = v65;
      *(v76 + 5) = a1;
      *(v76 + 6) = v55;
    }

    if (v45 <= v60)
    {
      goto LABEL_13;
    }

    if (v98)
    {
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    v77 = __OFADD__(v45, v99);
    v45 += v99;
    if (v77)
    {
      goto LABEL_79;
    }

    if (v45 < v102)
    {
      goto LABEL_80;
    }

LABEL_52:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_241E117B8(0, *(v9 + 2) + 1, 1, v9);
    }

    v73 = *(v9 + 2);
    v78 = *(v9 + 3);
    v74 = v73 + 1;
    if (v73 >= v78 >> 1)
    {
      v9 = sub_241E117B8((v78 > 1), v73 + 1, 1, v9);
    }

    v65 = v104 + v99;
LABEL_11:
    v56 = v55;
    goto LABEL_12;
  }

  v55 = 0;
  v9 = MEMORY[0x277D84F90];
LABEL_67:
  v80 = HIBYTE(v97) & 0xF;
  if ((v97 & 0x2000000000000000) == 0)
  {
    v80 = v96 & 0xFFFFFFFFFFFFLL;
  }

  if (v80)
  {
    v81 = sub_241E35874();
    v56 = a1 + v81;
    LOBYTE(v45) = a8;
    v35 = a6;
    v60 = a7;
    if (!__OFADD__(a1, v81))
    {
      if (v56 >= a1)
      {
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_73:
          v83 = *(v9 + 2);
          v82 = *(v9 + 3);
          if (v83 >= v82 >> 1)
          {
            v9 = sub_241E117B8((v82 > 1), v83 + 1, 1, v9);
          }

          *(v9 + 2) = v83 + 1;
          v84 = &v9[24 * v83];
          *(v84 + 4) = a1;
          *(v84 + 5) = v56;
          *(v84 + 6) = v55;
          goto LABEL_77;
        }

LABEL_91:
        v9 = sub_241E117B8(0, *(v9 + 2) + 1, 1, v9);
        goto LABEL_73;
      }

LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  LOBYTE(v45) = a8;
  v35 = a6;
  v60 = a7;
LABEL_77:
  v85 = type metadata accessor for BRLTEditString();
  v86 = objc_allocWithZone(v85);
  v87 = &v86[OBJC_IVAR___BRLTEditStringInternal_string];
  *v87 = v92;
  *(v87 + 1) = v91;
  v88 = &v86[OBJC_IVAR___BRLTEditStringInternal_selection];
  *v88 = v35;
  *(v88 + 1) = v60;
  v88[16] = v45 & 1;
  v89 = &v86[OBJC_IVAR___BRLTEditStringInternal_focus];
  *v89 = 0;
  *(v89 + 1) = 0;
  v89[16] = 1;
  *&v86[OBJC_IVAR___BRLTEditStringInternal_tokenRanges] = v9;
  v90 = &v86[OBJC_IVAR___BRLTEditStringInternal_suggestion];
  *v90 = 0;
  *(v90 + 1) = 0;
  v90[16] = 1;
  *&v86[OBJC_IVAR___BRLTEditStringInternal_textFormattingRanges] = 0;
  v105.receiver = v86;
  v105.super_class = v85;
  return objc_msgSendSuper2(&v105, sel_init, v91, v92);
}

id sub_241E13258(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *(v3 + OBJC_IVAR___BRLTEditStringInternal_string);
  v7 = *(v3 + OBJC_IVAR___BRLTEditStringInternal_string + 8);
  v10 = *(v3 + OBJC_IVAR___BRLTEditStringInternal_focus);
  v9 = *(v3 + OBJC_IVAR___BRLTEditStringInternal_focus + 8);
  v11 = *(v3 + OBJC_IVAR___BRLTEditStringInternal_focus + 16);
  v12 = *(v3 + OBJC_IVAR___BRLTEditStringInternal_tokenRanges);
  v13 = type metadata accessor for BRLTEditString();
  v14 = objc_allocWithZone(v13);
  v15 = &v14[OBJC_IVAR___BRLTEditStringInternal_string];
  *v15 = v8;
  *(v15 + 1) = v7;
  v16 = &v14[OBJC_IVAR___BRLTEditStringInternal_selection];
  *v16 = a1;
  *(v16 + 1) = a2;
  v16[16] = a3 & 1;
  v17 = &v14[OBJC_IVAR___BRLTEditStringInternal_focus];
  *v17 = v10;
  *(v17 + 1) = v9;
  v17[16] = v11;
  *&v14[OBJC_IVAR___BRLTEditStringInternal_tokenRanges] = v12;
  v18 = &v14[OBJC_IVAR___BRLTEditStringInternal_suggestion];
  *v18 = 0;
  *(v18 + 1) = 0;
  v18[16] = 1;
  *&v14[OBJC_IVAR___BRLTEditStringInternal_textFormattingRanges] = 0;
  v20.receiver = v14;
  v20.super_class = v13;

  return objc_msgSendSuper2(&v20, sel_init);
}

void sub_241E133B4(_BYTE *a1)
{
  v2 = v1;
  v4 = *&a1[OBJC_IVAR___BRLTEditStringInternal_string];
  v5 = *&a1[OBJC_IVAR___BRLTEditStringInternal_string + 8];
  v94 = *&v1[OBJC_IVAR___BRLTEditStringInternal_string];
  v95 = *&v1[OBJC_IVAR___BRLTEditStringInternal_string + 8];

  MEMORY[0x245D01460](v4, v5);
  v6 = &a1[OBJC_IVAR___BRLTEditStringInternal_focus];
  if (a1[OBJC_IVAR___BRLTEditStringInternal_focus + 16])
  {
    v90 = *&v1[OBJC_IVAR___BRLTEditStringInternal_focus];
    v87 = *&v1[OBJC_IVAR___BRLTEditStringInternal_focus + 8];
    v86 = v1[OBJC_IVAR___BRLTEditStringInternal_focus + 16];
    goto LABEL_7;
  }

  v8 = *v6;
  v7 = v6[1];
  v9 = sub_241E35874();
  v90 = v9 + v8;
  if (__OFADD__(v9, v8))
  {
    __break(1u);
    goto LABEL_76;
  }

  v10 = sub_241E35874();
  if (__OFADD__(v10, v7))
  {
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  if (v10 + v7 < v90)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v87 = v10 + v7;
  v86 = 0;
LABEL_7:
  v11 = &a1[OBJC_IVAR___BRLTEditStringInternal_selection];
  if (a1[OBJC_IVAR___BRLTEditStringInternal_selection + 16])
  {
    v12 = *&v2[OBJC_IVAR___BRLTEditStringInternal_selection + 8];
    v89 = *&v2[OBJC_IVAR___BRLTEditStringInternal_selection];
    v84 = v2[OBJC_IVAR___BRLTEditStringInternal_selection + 16];
    goto LABEL_13;
  }

  v14 = *v11;
  v13 = v11[1];
  v15 = sub_241E35874();
  v89 = v15 + v14;
  if (__OFADD__(v15, v14))
  {
    goto LABEL_77;
  }

  v16 = sub_241E35874();
  v12 = v16 + v13;
  if (__OFADD__(v16, v13))
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  if (v12 < v89)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v84 = 0;
LABEL_13:
  v85 = v12;
  v88 = v2;
  v17 = *&v2[OBJC_IVAR___BRLTEditStringInternal_tokenRanges];
  v92 = a1;
  v18 = *&a1[OBJC_IVAR___BRLTEditStringInternal_tokenRanges];
  v19 = *(v18 + 16);
  if (v19)
  {

    v20 = (v18 + 48);
    while (1)
    {
      v22 = *(v20 - 2);
      v21 = *(v20 - 1);
      v23 = *v20;
      v24 = sub_241E35874();
      v25 = v24 + v22;
      if (__OFADD__(v24, v22))
      {
        break;
      }

      v26 = sub_241E35874();
      v27 = v26 + v21;
      if (__OFADD__(v26, v21))
      {
        goto LABEL_64;
      }

      if (v27 < v25)
      {
        goto LABEL_65;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_241E117B8(0, *(v17 + 2) + 1, 1, v17);
      }

      v29 = *(v17 + 2);
      v28 = *(v17 + 3);
      if (v29 >= v28 >> 1)
      {
        v17 = sub_241E117B8((v28 > 1), v29 + 1, 1, v17);
      }

      v20 += 3;
      *(v17 + 2) = v29 + 1;
      v30 = &v17[24 * v29];
      *(v30 + 4) = v25;
      *(v30 + 5) = v27;
      *(v30 + 6) = v23;
      if (!--v19)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

LABEL_25:
  v31 = v92;
  v32 = &v92[OBJC_IVAR___BRLTEditStringInternal_suggestion];
  if ((v92[OBJC_IVAR___BRLTEditStringInternal_suggestion + 16] & 1) == 0)
  {
    v37 = *v32;
    v36 = v32[1];
    v38 = sub_241E35874();
    v35 = v38 + v37;
    if (!__OFADD__(v38, v37))
    {
      v39 = sub_241E35874();
      v40 = __OFADD__(v39, v36);
      v34 = v39 + v36;
      if (!v40)
      {
        if (v34 >= v35)
        {
          v91 = 0;
          v33 = v88;
          goto LABEL_31;
        }

LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v33 = v88;
  v35 = *&v88[OBJC_IVAR___BRLTEditStringInternal_suggestion];
  v34 = *&v88[OBJC_IVAR___BRLTEditStringInternal_suggestion + 8];
  v91 = v88[OBJC_IVAR___BRLTEditStringInternal_suggestion + 16];
LABEL_31:
  v41 = [objc_allocWithZone(BRLTTextFormattingRanges) init];
  v42 = OBJC_IVAR___BRLTEditStringInternal_textFormattingRanges;
  v43 = *&v33[OBJC_IVAR___BRLTEditStringInternal_textFormattingRanges];
  if (v43)
  {
    v44 = v41;
    v45 = v43;
    [v45 copy];
    sub_241E35A74();

    v31 = v92;
    swift_unknownObjectRelease();
    sub_241E14864(0, &qword_27EC74468, off_278D20748);
    swift_dynamicCast();
    v41 = v93;
    v42 = OBJC_IVAR___BRLTEditStringInternal_textFormattingRanges;
  }

  v46 = *&v31[v42];
  v47 = v91;
  if (!v46)
  {
LABEL_62:
    v76 = type metadata accessor for BRLTEditString();
    v77 = objc_allocWithZone(v76);
    v78 = &v77[OBJC_IVAR___BRLTEditStringInternal_string];
    *v78 = v94;
    *(v78 + 1) = v95;
    v79 = &v77[OBJC_IVAR___BRLTEditStringInternal_selection];
    *v79 = v89;
    *(v79 + 1) = v85;
    v79[16] = v84;
    v80 = &v77[OBJC_IVAR___BRLTEditStringInternal_focus];
    *v80 = v90;
    *(v80 + 1) = v87;
    v80[16] = v86;
    *&v77[OBJC_IVAR___BRLTEditStringInternal_tokenRanges] = v17;
    v81 = &v77[OBJC_IVAR___BRLTEditStringInternal_suggestion];
    *v81 = v35;
    *(v81 + 1) = v34;
    v81[16] = v47;
    *&v77[OBJC_IVAR___BRLTEditStringInternal_textFormattingRanges] = v41;
    v96.receiver = v77;
    v96.super_class = v76;
    objc_msgSendSuper2(&v96, sel_init);
    return;
  }

  v88 = v46;
  v48 = [v88 boldRanges];
  sub_241E14864(0, &qword_27EC74460, 0x277CCAE60);
  v19 = sub_241E359A4();

  v82 = v34;
  v83 = v35;
  v92 = v41;
  if (v19 >> 62)
  {
    goto LABEL_69;
  }

  v49 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v50 = &selRef__dotUp_;
  if (v49)
  {
    goto LABEL_36;
  }

LABEL_43:
  while (1)
  {

    v58 = [v88 italicRanges];
    v19 = sub_241E359A4();

    if (v19 >> 62)
    {
      break;
    }

    v59 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v59)
    {
      goto LABEL_45;
    }

LABEL_52:

    v67 = [v88 underlineRanges];
    v68 = sub_241E359A4();

    if (v68 >> 62)
    {
      v19 = sub_241E35B34();
      if (!v19)
      {
LABEL_61:

        v34 = v82;
        v35 = v83;
        v47 = v91;
        v41 = v92;
        goto LABEL_62;
      }
    }

    else
    {
      v19 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v19)
      {
        goto LABEL_61;
      }
    }

    if (v19 < 1)
    {
      goto LABEL_86;
    }

    v69 = 0;
    while (1)
    {
      v70 = (v68 & 0xC000000000000001) != 0 ? MEMORY[0x245D01690](v69, v68) : *(v68 + 8 * v69 + 32);
      v71 = v70;
      v72 = sub_241E35874();
      v73 = [v71 v50[222]];
      v40 = __OFADD__(v72, v73);
      v74 = &v73[v72];
      if (v40)
      {
        break;
      }

      ++v69;
      [v71 v50[222]];
      [v92 addUnderlineRange_];

      if (v19 == v69)
      {
        goto LABEL_61;
      }
    }

    while (1)
    {
      __break(1u);
LABEL_69:
      v49 = sub_241E35B34();
      v50 = &selRef__dotUp_;
      if (!v49)
      {
        break;
      }

LABEL_36:
      if (v49 < 1)
      {
        goto LABEL_84;
      }

      v51 = 0;
      while (1)
      {
        v52 = (v19 & 0xC000000000000001) != 0 ? MEMORY[0x245D01690](v51, v19) : *(v19 + 8 * v51 + 32);
        v53 = v52;
        v54 = sub_241E35874();
        v55 = [v53 v50[222]];
        v40 = __OFADD__(v54, v55);
        v56 = &v55[v54];
        if (v40)
        {
          break;
        }

        ++v51;
        [v53 v50[222]];
        [v92 addBoldRange_];

        if (v49 == v51)
        {
          goto LABEL_43;
        }
      }

LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
    }
  }

  v59 = sub_241E35B34();
  if (!v59)
  {
    goto LABEL_52;
  }

LABEL_45:
  if (v59 >= 1)
  {
    v60 = 0;
    while (1)
    {
      v61 = (v19 & 0xC000000000000001) != 0 ? MEMORY[0x245D01690](v60, v19) : *(v19 + 8 * v60 + 32);
      v62 = v61;
      v63 = sub_241E35874();
      v64 = [v62 v50[222]];
      v40 = __OFADD__(v63, v64);
      v65 = &v64[v63];
      if (v40)
      {
        goto LABEL_67;
      }

      ++v60;
      [v62 v50[222]];
      [v92 addItalicRange_];

      if (v59 == v60)
      {
        goto LABEL_52;
      }
    }
  }

LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
}

id sub_241E13B88()
{
  v1 = *(v0 + OBJC_IVAR___BRLTEditStringInternal_string);
  v2 = *(v0 + OBJC_IVAR___BRLTEditStringInternal_string + 8);
  v11 = 0x80A0E2BFA0E2;
  v12 = 0xA600000000000000;
  MEMORY[0x245D01460](v1, v2);

  MEMORY[0x245D01460](0xBFA0E280A0E2, 0xA600000000000000);

  v3 = type metadata accessor for BRLTEditString();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___BRLTEditStringInternal_string];
  *v5 = 0x80A0E2BFA0E2;
  *(v5 + 1) = 0xA600000000000000;
  v6 = &v4[OBJC_IVAR___BRLTEditStringInternal_selection];
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = &v4[OBJC_IVAR___BRLTEditStringInternal_focus];
  *v7 = 0;
  *(v7 + 1) = 0;
  v7[16] = 1;
  *&v4[OBJC_IVAR___BRLTEditStringInternal_tokenRanges] = MEMORY[0x277D84F90];
  v8 = &v4[OBJC_IVAR___BRLTEditStringInternal_suggestion];
  *v8 = 0;
  *(v8 + 1) = 0;
  v8[16] = 1;
  *&v4[OBJC_IVAR___BRLTEditStringInternal_textFormattingRanges] = 0;
  v10.receiver = v4;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

unint64_t sub_241E13CA0(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR___BRLTEditStringInternal_string);
  v5 = *(v2 + OBJC_IVAR___BRLTEditStringInternal_string + 8);
  v6 = sub_241E13D34(a1);
  result = sub_241E13D34(a2);
  if (result >> 14 < v6 >> 14)
  {
    __break(1u);
  }

  else
  {
    v8 = sub_241E35984();
    v9 = MEMORY[0x245D013C0](v8);

    return v9;
  }

  return result;
}

uint64_t sub_241E13D34(uint64_t a1)
{
  if (a1 < 0)
  {
    return 15;
  }

  v2 = *(v1 + OBJC_IVAR___BRLTEditStringInternal_string);
  v3 = *(v1 + OBJC_IVAR___BRLTEditStringInternal_string + 8);
  if (sub_241E35874() >= a1)
  {

    return sub_241E358A4();
  }

  else
  {
    v4 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = v2;
    }

    v5 = v4 << 16;
    if ((v3 & 0x1000000000000000) == 0 || (v2 & 0x800000000000000) != 0)
    {
      return v5 | 7;
    }

    else
    {
      return v5 | 0xB;
    }
  }
}

unint64_t sub_241E13DE4()
{
  result = qword_27EC74458;
  if (!qword_27EC74458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC74458);
  }

  return result;
}

uint64_t sub_241E13E3C(uint64_t a1)
{
  sub_241E1497C(a1, v5);
  if (!v6)
  {
    sub_241E149EC(v5);
    goto LABEL_5;
  }

  type metadata accessor for BRLTEditString();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v2 = 0;
    return v2 & 1;
  }

  v2 = sub_241E148AC(v1, v4);

  return v2 & 1;
}

uint64_t sub_241E14010()
{
  v1 = v0;
  sub_241E35AE4();
  MEMORY[0x245D01460](0xD000000000000012, 0x8000000241E39810);
  MEMORY[0x245D01460](*(v1 + OBJC_IVAR___BRLTEditStringInternal_string), *(v1 + OBJC_IVAR___BRLTEditStringInternal_string + 8));
  MEMORY[0x245D01460](0x63656C6573202C22, 0xEE00203A6E6F6974);
  v9 = *(v0 + OBJC_IVAR___BRLTEditStringInternal_selection);
  v12 = *(v0 + OBJC_IVAR___BRLTEditStringInternal_selection + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74478, &qword_241E38CB8);
  v2 = sub_241E35814();
  MEMORY[0x245D01460](v2);

  MEMORY[0x245D01460](0x3A7375636F66202CLL, 0xE900000000000020);
  v10 = *(v0 + OBJC_IVAR___BRLTEditStringInternal_focus);
  v13 = *(v0 + OBJC_IVAR___BRLTEditStringInternal_focus + 16);
  v3 = sub_241E35814();
  MEMORY[0x245D01460](v3);

  MEMORY[0x245D01460](0xD000000000000010, 0x8000000241E39830);
  v4 = *(v0 + OBJC_IVAR___BRLTEditStringInternal_tokenRanges);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74480, &unk_241E38CC0);
  v6 = MEMORY[0x245D01550](v4, v5);
  MEMORY[0x245D01460](v6);

  MEMORY[0x245D01460](0x736567677573202CLL, 0xEF203D206E6F6974);
  v11 = *(v1 + OBJC_IVAR___BRLTEditStringInternal_suggestion);
  v14 = *(v1 + OBJC_IVAR___BRLTEditStringInternal_suggestion + 16);
  v7 = sub_241E35814();
  MEMORY[0x245D01460](v7);

  return 0;
}

id BRLTEditString.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BRLTEditString.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BRLTEditString();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t BRLTEditString.NSContiguousBrailleRange.getter()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x90))();
  v4 = v3 & 1;

  return sub_241E2CC64(v1, v2, v4);
}

id BRLTEditString.__allocating_init(string:NSSelection:NSFocus:token:NSSuggestion:textFormattingRanges:)(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v16 = objc_allocWithZone(v10);
  v17 = sub_241E357E4();

  v18 = [v16 initWithString:v17 NSSelection:a3 NSFocus:a4 token:a5 NSSuggestion:a6 textFormattingRanges:{a7, a8, a9, a10}];

  return v18;
}

uint64_t BRLTEditString.init(string:NSSelection:NSFocus:token:NSSuggestion:textFormattingRanges:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v16 = sub_241E2CC98(a3, a4);
  v35 = v17;
  v36 = v16;
  v32 = v18;
  v19 = sub_241E2CC98(a5, a6);
  v33 = v20;
  v34 = v19;
  v22 = v21;
  v23 = sub_241E2CC98(a8, a9);
  v25 = v24;
  v27 = v26;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74420, &qword_241E38CA8);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_241E38B80;
  result = sub_241E35874();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(v29 + 32) = 0;
    *(v29 + 40) = result;
    *(v29 + 48) = a7;
    v31 = (*(ObjectType + 128))(a1, a2, v36, v35, v32 & 1, v34, v33, v22 & 1, v29, v23, v25, v27 & 1, a10);
    swift_deallocPartialClassInstance();
    return v31;
  }

  return result;
}

uint64_t sub_241E14864(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_241E148AC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + OBJC_IVAR___BRLTEditStringInternal_string) == *(a2 + OBJC_IVAR___BRLTEditStringInternal_string) && *(a1 + OBJC_IVAR___BRLTEditStringInternal_string + 8) == *(a2 + OBJC_IVAR___BRLTEditStringInternal_string + 8);
  if (!v4 && (sub_241E35B64() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + OBJC_IVAR___BRLTEditStringInternal_selection + 16))
  {
    if (!*(a2 + OBJC_IVAR___BRLTEditStringInternal_selection + 16))
    {
      return 0;
    }

    goto LABEL_15;
  }

  result = 0;
  if ((*(a2 + OBJC_IVAR___BRLTEditStringInternal_selection + 16) & 1) == 0 && *(a1 + OBJC_IVAR___BRLTEditStringInternal_selection) == *(a2 + OBJC_IVAR___BRLTEditStringInternal_selection) && *(a1 + OBJC_IVAR___BRLTEditStringInternal_selection + 8) == *(a2 + OBJC_IVAR___BRLTEditStringInternal_selection + 8))
  {
LABEL_15:
    result = *(a2 + OBJC_IVAR___BRLTEditStringInternal_focus + 16);
    if ((*(a1 + OBJC_IVAR___BRLTEditStringInternal_focus + 16) & 1) == 0)
    {
      if (*(a1 + OBJC_IVAR___BRLTEditStringInternal_focus + 8) == *(a2 + OBJC_IVAR___BRLTEditStringInternal_focus + 8))
      {
        return (*(a1 + OBJC_IVAR___BRLTEditStringInternal_focus) == *(a2 + OBJC_IVAR___BRLTEditStringInternal_focus)) & ~result;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_241E1497C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74470, &qword_241E38CB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_241E149EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74470, &qword_241E38CB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_241E14B38()
{
  v1 = OBJC_IVAR___BRLTBrailleModelInternal_delegate;
  swift_beginAccess();
  v2 = *(v0 + v1);
  return swift_unknownObjectRetain();
}

uint64_t sub_241E14BE8(uint64_t a1)
{
  v3 = OBJC_IVAR___BRLTBrailleModelInternal_delegate;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_241E14C40@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x188))();
  *a2 = result;
  return result;
}

uint64_t sub_241E14CA4(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x190);
  v4 = swift_unknownObjectRetain();
  return v3(v4);
}

uint64_t sub_241E14DB8()
{
  v1 = OBJC_IVAR___BRLTBrailleModelInternal_backTranslateByCell;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_241E14E50(char a1)
{
  v3 = OBJC_IVAR___BRLTBrailleModelInternal_backTranslateByCell;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_241E14EA0@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x1B8))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_241E15010()
{
  v1 = OBJC_IVAR___BRLTBrailleModelInternal_technicalMode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_241E150A8(char a1)
{
  v3 = OBJC_IVAR___BRLTBrailleModelInternal_technicalMode;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_241E150F8@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x200))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_241E1526C()
{
  v1 = OBJC_IVAR___BRLTBrailleModelInternal_isShowingSecureToken;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_241E15304(char a1)
{
  v3 = OBJC_IVAR___BRLTBrailleModelInternal_isShowingSecureToken;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_241E15354@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x218))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_241E154C4()
{
  v1 = OBJC_IVAR___BRLTBrailleModelInternal_isSingleKeyQuickNav;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_241E1555C(char a1)
{
  v3 = OBJC_IVAR___BRLTBrailleModelInternal_isSingleKeyQuickNav;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_241E155AC@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x230))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_241E15758(char a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel;
  result = *(v1 + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel);
  if (a1)
  {
    if (!result)
    {
      type metadata accessor for BRLTBrailleUIModel();
      v6 = sub_241E2D84C(0, 0xE000000000000000, 0, 0, 1);
      v7 = *(v1 + v4);
      *(v1 + v4) = v6;
    }
  }

  else
  {
    *(v1 + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel) = 0;

    type metadata accessor for BRLTEditString();
    v8 = sub_241E12378(0, 0xE000000000000000, 0, 0, 1);
    v9 = *(v1 + OBJC_IVAR___BRLTBrailleModelInternal_script);
    *(v1 + OBJC_IVAR___BRLTBrailleModelInternal_script) = v8;

    v10 = OBJC_IVAR___BRLTBrailleModelInternal_scriptHistory;
    swift_beginAccess();
    v11 = *(v2 + v10);
    *(v2 + v10) = MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_241E15860@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x260))();
  *a2 = result & 1;
  return result;
}

void (*sub_241E15928(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  *(v3 + 40) = *(v1 + v4) != 0;
  return sub_241E159A4;
}

void sub_241E159A4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  if (a2)
  {
    v4 = v2[3];
    sub_241E15758(v3);
  }

  else
  {
    v5 = v2[3];
    v6 = v2[4];
    if (v3)
    {
      if (!*(v5 + v6))
      {
        type metadata accessor for BRLTBrailleUIModel();
        v7 = sub_241E2D84C(0, 0xE000000000000000, 0, 0, 1);
        v8 = *(v5 + v6);
        *(v5 + v6) = v7;
      }
    }

    else
    {
      *(v5 + v6) = 0;

      type metadata accessor for BRLTEditString();
      v9 = sub_241E12378(0, 0xE000000000000000, 0, 0, 1);
      v10 = *(v5 + OBJC_IVAR___BRLTBrailleModelInternal_script);
      *(v5 + OBJC_IVAR___BRLTBrailleModelInternal_script) = v9;

      v11 = OBJC_IVAR___BRLTBrailleModelInternal_scriptHistory;
      swift_beginAccess();
      v12 = *(v5 + v11);
      *(v5 + v11) = MEMORY[0x277D84F90];
    }
  }

  free(v2);
}

uint64_t sub_241E15B68()
{
  v1 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel);
  if (!v1)
  {
    return 0;
  }

  v2 = *(*v1 + 160);

  v2(v3);
  v4 = sub_241E35804();

  return v4;
}

uint64_t sub_241E15CC0()
{
  v1 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel);
  if (!v1)
  {
    return sub_241E35714();
  }

  v2 = *(*v1 + 184);

  v4 = v2(v3);
  v6 = v5;
  v8 = v7;

  if (v8)
  {
    return sub_241E35714();
  }

  if (!__OFSUB__(v6, v4))
  {
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_241E15DE4()
{
  v1 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel);
  if (!v1)
  {
    return 0;
  }

  v2 = *(*v1 + 272);

  LOBYTE(v2) = v2(v3);

  return v2 & 1;
}

uint64_t sub_241E15F14(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel);
  if (v2)
  {
    v3 = result;
    v4 = *(*v2 + 280);

    v4(v3 & 1);
  }

  return result;
}

uint64_t sub_241E15FA8@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x288))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_241E16070(uint64_t a1))(uint64_t result)
{
  v3 = OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4)
  {
    v5 = *(*v4 + 272);

    v7 = v5(v6);
  }

  else
  {
    v7 = 0;
  }

  *(a1 + 16) = v7 & 1;
  return sub_241E16118;
}

uint64_t sub_241E16118(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(*result + v1);
  if (v2)
  {
    v3 = *(result + 16);
    v4 = *(*v2 + 280);
    v5 = *(*result + v1);

    v4(v3);
  }

  return result;
}

uint64_t sub_241E16234()
{
  v1 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel);
  if (!v1)
  {
    return 0;
  }

  v2 = *(*v1 + 296);

  LOBYTE(v2) = v2(v3);

  return v2 & 1;
}

uint64_t sub_241E16364(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel);
  if (v2)
  {
    v3 = result;
    v4 = *(*v2 + 304);

    v4(v3 & 1);
  }

  return result;
}

uint64_t sub_241E163F8@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x2A0))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_241E164C0(uint64_t a1))(uint64_t result)
{
  v3 = OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4)
  {
    v5 = *(*v4 + 296);

    v7 = v5(v6);
  }

  else
  {
    v7 = 0;
  }

  *(a1 + 16) = v7 & 1;
  return sub_241E16568;
}

uint64_t sub_241E16568(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(*result + v1);
  if (v2)
  {
    v3 = *(result + 16);
    v4 = *(*v2 + 304);
    v5 = *(*result + v1);

    v4(v3);
  }

  return result;
}

void sub_241E165F8()
{
  v1 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel);
  if (v1)
  {
    v2 = *(*v1 + 640);
    v3 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel);

    v2(v4);
    v5 = [objc_allocWithZone(BRLTBrailleUIFormattingOptions) init];
    sub_241E221E8(v5);
  }
}

void sub_241E167A4()
{
  v1 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel);
  if (v1)
  {
    v2 = *(*v1 + 648);
    v3 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel);

    v2(v4);
    v5 = [objc_allocWithZone(BRLTBrailleUIFormattingOptions) init];
    sub_241E221E8(v5);
  }
}

uint64_t sub_241E16950(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel);
  if (!v3)
  {
    return 0;
  }

  v6 = *(*v3 + 536);

  LOBYTE(a1) = v6(a1, a2);
  v7 = [objc_allocWithZone(BRLTBrailleUIFormattingOptions) init];
  sub_241E221E8(v7);

  return a1 & 1;
}

uint64_t sub_241E16B0C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel);
  if (!v3)
  {
    return 0;
  }

  v6 = *(*v3 + 544);

  LOBYTE(a1) = v6(a1, a2);
  v7 = [objc_allocWithZone(BRLTBrailleUIFormattingOptions) init];
  sub_241E221E8(v7);

  return a1 & 1;
}

void sub_241E16CC8(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel);
  if (v2)
  {
    v4 = *(*v2 + 552);

    v4(a1);
    v5 = [objc_allocWithZone(BRLTBrailleUIFormattingOptions) init];
    sub_241E221E8(v5);
  }
}

uint64_t sub_241E16F54()
{
  v1 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel);
  if (!v1)
  {
    return sub_241E35714();
  }

  v2 = *(*v1 + 232);

  v4 = (v2)(v3);
  result = v2();
  if (__OFSUB__(v6, result))
  {
    __break(1u);
  }

  else
  {

    return v4;
  }

  return result;
}

uint64_t sub_241E16FEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x288);
  if ((v6() & 1) == 0)
  {
    return a1;
  }

  if (v6())
  {
    v7 = *(v2 + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel);
    if (v7)
    {
      v8 = *(*v7 + 232);
      v9 = *(v3 + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel);

      v11 = v8(v10);

      if (!v11)
      {
        if (__OFSUB__(a1, 1))
        {
LABEL_15:
          __break(1u);
          goto LABEL_16;
        }

        a1 = (a1 - 1) & ~((a1 - 1) >> 63);
      }
    }
  }

  result = v6();
  if ((result & 1) == 0 || (v13 = *(v3 + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel)) == 0 || (v14 = *(*v13 + 232), v15 = , v16 = v14(v15), result = , v16))
  {
LABEL_12:
    if (a2 >= a1)
    {
      return a1;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (!__OFSUB__(a2, 1))
  {
    a2 = (a2 - 1) & ~((a2 - 1) >> 63);
    goto LABEL_12;
  }

LABEL_16:
  __break(1u);
  return result;
}

void sub_241E17160(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel);
  if (v3)
  {
    v6 = *(*v3 + 400);

    v6(a1, a2);
    v7 = [objc_allocWithZone(BRLTBrailleUIFormattingOptions) init];
    sub_241E221E8(v7);
  }
}

void sub_241E17360()
{
  v1 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel);
  if (v1)
  {
    v2 = *(*v1 + 408);
    v3 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel);

    v2(v4);
    v5 = [objc_allocWithZone(BRLTBrailleUIFormattingOptions) init];
    sub_241E221E8(v5);
  }
}

uint64_t sub_241E1750C()
{
  v1 = OBJC_IVAR___BRLTBrailleModelInternal_clientSetSelection;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_241E17550(char a1)
{
  v3 = OBJC_IVAR___BRLTBrailleModelInternal_clientSetSelection;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_241E17600()
{
  v1 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v0) + 0x348))() & 1) == 0)
  {
    return 1;
  }

  v2 = *((*v1 & *v0) + 0x218);

  return v2();
}

uint64_t sub_241E17798(uint64_t result)
{
  v2 = result;
  v3 = OBJC_IVAR___BRLTBrailleModelInternal__editable;
  if (*(v1 + OBJC_IVAR___BRLTBrailleModelInternal__editable) & 1) == 0 && (result)
  {
    result = (*((*MEMORY[0x277D85000] & *v1) + 0x3E0))();
    if (result)
    {
      *(v1 + OBJC_IVAR___BRLTBrailleModelInternal_switchedToEditableWithUncommittedBraille) = 1;
    }
  }

  *(v1 + v3) = v2 & 1;
  return result;
}

uint64_t sub_241E1782C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x380))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_241E178F4(uint64_t a1))(uint64_t result)
{
  v2 = OBJC_IVAR___BRLTBrailleModelInternal__editable;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2);
  return sub_241E17928;
}

uint64_t sub_241E17928(uint64_t result)
{
  v2 = *result;
  v1 = *(result + 8);
  v3 = *(result + 16);
  v4 = v3 & 1;
  if (((*(*result + v1) | v3 ^ 1) & 1) == 0)
  {
    result = (*((*MEMORY[0x277D85000] & *v2) + 0x3E0))();
    if (result)
    {
      *(v2 + OBJC_IVAR___BRLTBrailleModelInternal_switchedToEditableWithUncommittedBraille) = 1;
    }
  }

  *(v2 + v1) = v4;
  return result;
}

uint64_t sub_241E17A04()
{
  v1 = OBJC_IVAR___BRLTBrailleModelInternal_brailleStringDirty;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_241E17A9C(char a1)
{
  v3 = OBJC_IVAR___BRLTBrailleModelInternal_brailleStringDirty;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_241E17AEC@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x3E0))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_241E17B54(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___BRLTBrailleModelInternal_brailleStringDirty;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

void sub_241E17BB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_allocWithZone(BRLTTranslator);
  v6 = sub_241E357E4();
  v7 = [v5 initWithDelegate:a3 tableIdentifier:v6];

  v8 = *(v3 + OBJC_IVAR___BRLTBrailleModelInternal_outputTranslator);
  *(v3 + OBJC_IVAR___BRLTBrailleModelInternal_outputTranslator) = v7;

  v9 = objc_allocWithZone(BRLTTable);
  v10 = sub_241E357E4();
  v14 = [v9 initWithIdentifier_];

  v11 = [v14 candidateSelectionLanguage];
  sub_241E357F4();

  v12 = sub_241E35874();

  if (v12 <= 0)
  {
    v13 = [v14 supportsTranslationByCell];
  }

  else
  {
    v13 = 1;
  }

  *(v3 + OBJC_IVAR___BRLTBrailleModelInternal_editScript) = v13;
  if (((*((*MEMORY[0x277D85000] & *v3) + 0x380))() & 1) == 0)
  {
    sub_241E1E11C();
    sub_241E221E8(0);
  }
}

void sub_241E17D70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = objc_allocWithZone(BRLTTranslator);
  v7 = sub_241E357E4();
  v8 = [v6 initWithDelegate:a3 tableIdentifier:v7];

  v9 = *(v4 + OBJC_IVAR___BRLTBrailleModelInternal_inputTranslator);
  *(v4 + OBJC_IVAR___BRLTBrailleModelInternal_inputTranslator) = v8;

  v10 = objc_allocWithZone(BRLTTable);
  v11 = sub_241E357E4();
  v22 = [v10 initWithIdentifier_];

  v12 = [v22 candidateSelectionLanguage];
  v13 = sub_241E357F4();
  v15 = v14;

  v16 = (v4 + OBJC_IVAR___BRLTBrailleModelInternal_candidateSelectionLanguage);
  v17 = *(v4 + OBJC_IVAR___BRLTBrailleModelInternal_candidateSelectionLanguage + 8);
  *v16 = v13;
  v16[1] = v15;

  v18 = v13 == 7237738 && v15 == 0xE300000000000000;
  if (v18 || (sub_241E35B64() & 1) != 0)
  {
    type metadata accessor for BRLTCandidateManager();
    v19 = sub_241E33D14(0);
  }

  else
  {
    v19 = 0;
  }

  v20 = *(v4 + OBJC_IVAR___BRLTBrailleModelInternal_candidateManager);
  *(v4 + OBJC_IVAR___BRLTBrailleModelInternal_candidateManager) = v19;

  v21 = [v22 supportsTranslationByCell];
  (*((*MEMORY[0x277D85000] & *v4) + 0x1C0))(v21);
}

uint64_t sub_241E17F84(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = sub_241E357F4();
  v10 = v9;
  swift_unknownObjectRetain();
  v11 = a1;
  a5(v8, v10, a4);
  swift_unknownObjectRelease();
}

id sub_241E18010()
{
  result = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_inputTranslator);
  if (result)
  {
    if (*(v0 + OBJC_IVAR___BRLTBrailleModelInternal_outputTranslator))
    {
      return [result isEqualTable_];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_241E1805C()
{
  v1 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_candidateManager);
  if (v1)
  {
    LOBYTE(v1) = (*((*MEMORY[0x277D85000] & *v0) + 0x260))() ^ 1;
  }

  return v1 & 1;
}

uint64_t sub_241E180C4()
{
  v1 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v0) + 0x4E0))() & 1) != 0 && *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_editScript) != 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = (*((*v1 & *v0) + 0x260))() ^ 1;
  }

  return v2 & 1;
}

uint64_t sub_241E181FC()
{
  v1 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_candidateManager);
  if (!v1)
  {
    return 0;
  }

  v2 = *(*v1 + 136);

  LOBYTE(v2) = v2(v3);

  return v2 & 1;
}

id sub_241E182B8()
{
  v1 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v0) + 0x260))() & 1) != 0 && (v2 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_inputTranslator)) != 0)
  {
    v3 = *((*v1 & *v0) + 0x508);
    v4 = v2;
    v5 = v3();
    v6 = v3();
    v7 = *&v6[OBJC_IVAR___BRLTEditStringInternal_string];
    v8 = *&v6[OBJC_IVAR___BRLTEditStringInternal_string + 8];

    v9 = sub_241E35874();

    if (v9 < 0)
    {
      __break(1u);
    }

    else
    {
      v11 = sub_241E0F2E4();
      sub_241E104D8(v5, 0, v9, v11 & 1, &v17);

      type metadata accessor for BRLTEditString();
      v12 = v18;
      v13 = v19;

      v14 = sub_241E12378(v12, v13, 0, 0, 1);
      v22 = v17;
      sub_241E1041C(&v22);

      v21 = v20;
      sub_241E10470(&v21);

      return v14;
    }
  }

  else
  {
    if (*(v0 + OBJC_IVAR___BRLTBrailleModelInternal_showingAlert) == 1)
    {
      v15 = OBJC_IVAR___BRLTBrailleModelInternal_alertScript;
    }

    else
    {
      v15 = OBJC_IVAR___BRLTBrailleModelInternal_script;
    }

    v16 = *(v0 + v15);

    return v16;
  }

  return result;
}

uint64_t sub_241E184EC()
{
  v1 = v0;
  v2 = OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel;
  v3 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel);
  if (!v3)
  {
    if (*(v0 + OBJC_IVAR___BRLTBrailleModelInternal_showingAlert) == 1)
    {
      v19 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_alertBraille);
    }

    else
    {
      v19 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_braille);
      if (*(v0 + OBJC_IVAR___BRLTBrailleModelInternal_showingTerminalOutput) == 1)
      {
        v20 = *((*MEMORY[0x277D85000] & *v19) + 0xD8);
        v21 = v19;
        v22 = v20();

LABEL_11:
        v50 = *&v22[OBJC_IVAR___BRLTEditStringInternal_string];
        v51 = *&v22[OBJC_IVAR___BRLTEditStringInternal_string + 8];
        sub_241E22418();
        sub_241E2246C();
        v23 = v22;
        sub_241E359E4();
        sub_241E359E4();

        type metadata accessor for BRLTEditString();
        v44 = *&v23[OBJC_IVAR___BRLTEditStringInternal_selection + 8];
        v45 = *&v23[OBJC_IVAR___BRLTEditStringInternal_selection];
        v24 = v23[OBJC_IVAR___BRLTEditStringInternal_selection + 16];
        v25 = *&v23[OBJC_IVAR___BRLTEditStringInternal_focus];
        v26 = *&v23[OBJC_IVAR___BRLTEditStringInternal_focus + 8];
        v27 = v23[OBJC_IVAR___BRLTEditStringInternal_focus + 16];
        v28 = *&v23[OBJC_IVAR___BRLTEditStringInternal_tokenRanges];
        v29 = *&v23[OBJC_IVAR___BRLTEditStringInternal_suggestion];
        v30 = *&v23[OBJC_IVAR___BRLTEditStringInternal_suggestion + 8];
        v31 = v23[OBJC_IVAR___BRLTEditStringInternal_suggestion + 16];
        v32 = *&v23[OBJC_IVAR___BRLTEditStringInternal_textFormattingRanges];
        v33 = v32;

        v34 = sub_241E12134(v50, v51, v45, v44, v24, v25, v26, v27, v28, v29, v30, v31, v32);
        return v34;
      }
    }

    v22 = v19;
    goto LABEL_11;
  }

  v4 = *(*v3 + 256);
  v5 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel);

  v7 = v4(v6);
  v9 = v8;
  v10 = (*(*v3 + 264))();
  v12 = v11;
  v49 = v13;
  v14 = *((*MEMORY[0x277D85000] & *v0) + 0x288);
  if ((v14() & 1) == 0)
  {
    goto LABEL_18;
  }

  v15 = *(v0 + v2);
  if (!v15)
  {
    goto LABEL_18;
  }

  v46 = v10;
  v47 = v12;
  v16 = *(*v15 + 232);

  v18 = v16(v17);

  if (v18)
  {
    v12 = v47;
    goto LABEL_18;
  }

  MEMORY[0x245D01460](v7, v9);

  v7 = 9413602;
  v9 = 0xA300000000000000;
  v12 = v47;
  if (v49)
  {
    v49 = 1;
    goto LABEL_18;
  }

  ++v10;
  if (__OFADD__(v46, 1))
  {
    __break(1u);
    goto LABEL_26;
  }

  v12 = v47 + 1;
  if (__OFADD__(v47, 1))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v12 >= v10)
  {
    v49 = 0;
LABEL_18:
    if (v14())
    {
      v36 = *(v1 + v2);
      if (v36)
      {
        v48 = v12;
        v37 = *(*v36 + 232);

        v39 = v37(v38);
        v41 = v40;
        v42 = (*(*v36 + 160))(v39);
        v43 = [v42 length];

        if (v41 == v43)
        {

          MEMORY[0x245D01460](12166114, 0xA300000000000000);
        }

        v12 = v48;
      }
    }

    type metadata accessor for BRLTEditString();
    v34 = sub_241E12378(v7, v9, v10, v12, v49 & 1);

    return v34;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_241E18A80()
{
  v1 = (v0 + OBJC_IVAR___BRLTBrailleModelInternal_stageRange);
  if ((*(v0 + OBJC_IVAR___BRLTBrailleModelInternal_stageRange + 16) & 1) == 0)
  {
    v5 = *v1;
    v4 = v1[1];
    v6 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_braille);
    v7 = *((*MEMORY[0x277D85000] & *v6) + 0xE0);
    v8 = v6;
    v7(v5, v4);
    goto LABEL_6;
  }

  v2 = (v0 + OBJC_IVAR___BRLTBrailleModelInternal_editingBrailleRange);
  if ((*(v0 + OBJC_IVAR___BRLTBrailleModelInternal_editingBrailleRange + 16) & 1) == 0)
  {
    v3 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_braille);
    if ((*(v3 + OBJC_IVAR___BRLTEditStringInternal_selection + 16) & 1) == 0)
    {
      v9 = *v2;
      v10 = *(v3 + OBJC_IVAR___BRLTEditStringInternal_selection + 8);
      if (v10 < *v2)
      {
        __break(1u);
        return;
      }

      v11 = *((*MEMORY[0x277D85000] & *v3) + 0xE0);
      v8 = v3;
      v11(v9, v10);
LABEL_6:
    }
  }
}

int64_t sub_241E18BD0(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___BRLTBrailleModelInternal_translationResult + 16);
  v7 = *(v1 + OBJC_IVAR___BRLTBrailleModelInternal_translationResult);
  v8 = v3;
  v9 = *(v1 + OBJC_IVAR___BRLTBrailleModelInternal_translationResult + 32);
  v10 = v7;
  v11 = v3;
  v12 = v9;
  sub_241E224C0(&v10, v6);
  sub_241E224C0(&v11, v6);
  sub_241E2251C(&v12, v6);
  v4 = sub_241E11100(a1);
  sub_241E1041C(&v10);
  sub_241E1041C(&v11);
  sub_241E10470(&v12);
  return v4;
}

id sub_241E18D24()
{
  result = [objc_allocWithZone(type metadata accessor for BRLTBrailleModel()) init];
  qword_27EC74870 = result;
  return result;
}

uint64_t *sub_241E18D54()
{
  if (qword_27EC74868 != -1)
  {
    swift_once();
  }

  return &qword_27EC74870;
}

id static BRLTBrailleModel.shared.getter()
{
  if (qword_27EC74868 != -1)
  {
    swift_once();
  }

  v1 = qword_27EC74870;

  return v1;
}

id sub_241E18E5C()
{
  *&v0[OBJC_IVAR___BRLTBrailleModelInternal_outputTranslator] = 0;
  *&v0[OBJC_IVAR___BRLTBrailleModelInternal_inputTranslator] = 0;
  *&v0[OBJC_IVAR___BRLTBrailleModelInternal_delegate] = 0;
  *&v0[OBJC_IVAR___BRLTBrailleModelInternal_candidateManager] = 0;
  v0[OBJC_IVAR___BRLTBrailleModelInternal_backTranslateByCell] = 0;
  v0[OBJC_IVAR___BRLTBrailleModelInternal_backTranslateLocally] = 1;
  v0[OBJC_IVAR___BRLTBrailleModelInternal_editScript] = 0;
  v0[OBJC_IVAR___BRLTBrailleModelInternal_technicalMode] = 0;
  v0[OBJC_IVAR___BRLTBrailleModelInternal_isShowingSecureToken] = 0;
  v0[OBJC_IVAR___BRLTBrailleModelInternal_isSingleKeyQuickNav] = 0;
  *&v0[OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel] = 0;
  v0[OBJC_IVAR___BRLTBrailleModelInternal_clientSetSelection] = 1;
  v0[OBJC_IVAR___BRLTBrailleModelInternal__editable] = 0;
  v1 = &v0[OBJC_IVAR___BRLTBrailleModelInternal_editingScriptRange];
  *v1 = 0;
  *(v1 + 1) = 0;
  v1[16] = 1;
  v2 = &v0[OBJC_IVAR___BRLTBrailleModelInternal_editingBrailleRange];
  *v2 = 0;
  *(v2 + 1) = 0;
  v2[16] = 1;
  v3 = &v0[OBJC_IVAR___BRLTBrailleModelInternal_stageRange];
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[16] = 1;
  v4 = &v0[OBJC_IVAR___BRLTBrailleModelInternal_candidateSelectionLanguage];
  *v4 = 0;
  v4[1] = 0;
  *&v0[OBJC_IVAR___BRLTBrailleModelInternal_brailleCache] = 0;
  type metadata accessor for BRLTEditString();
  *&v0[OBJC_IVAR___BRLTBrailleModelInternal_script] = sub_241E12378(0, 0xE000000000000000, 0, 0, 1);
  *&v0[OBJC_IVAR___BRLTBrailleModelInternal_braille] = sub_241E12378(0, 0xE000000000000000, 0, 0, 1);
  v5 = MEMORY[0x277D84F90];
  sub_241E0FBF0(0, 0xE000000000000000, 0, 0xE000000000000000, MEMORY[0x277D84F90], v11);
  v6 = &v0[OBJC_IVAR___BRLTBrailleModelInternal_translationResult];
  v7 = v11[1];
  *v6 = v11[0];
  *(v6 + 1) = v7;
  *(v6 + 4) = v12;
  v0[OBJC_IVAR___BRLTBrailleModelInternal_brailleStringDirty] = 0;
  v0[OBJC_IVAR___BRLTBrailleModelInternal_brailleSelectionDirty] = 0;
  v0[OBJC_IVAR___BRLTBrailleModelInternal_switchedToEditableWithUncommittedBraille] = 0;
  v0[OBJC_IVAR___BRLTBrailleModelInternal_showingAlert] = 0;
  *&v0[OBJC_IVAR___BRLTBrailleModelInternal_alertScript] = sub_241E12328(0, 0xE000000000000000, 0, 0, 1, 0, 0, 1, v5);
  *&v0[OBJC_IVAR___BRLTBrailleModelInternal_alertBraille] = sub_241E12328(0, 0xE000000000000000, 0, 0, 1, 0, 0, 1, v5);
  v0[OBJC_IVAR___BRLTBrailleModelInternal_showingTerminalOutput] = 0;
  v0[OBJC_IVAR___BRLTBrailleModelInternal_isWordDescriptionActive] = 0;
  type metadata accessor for BRLTWordDescriptionManager();
  *&v0[OBJC_IVAR___BRLTBrailleModelInternal_wordDescriptionManager] = sub_241E0E0A4();
  v8 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  *&v0[OBJC_IVAR___BRLTBrailleModelInternal_contentLock] = v8;
  *&v0[OBJC_IVAR___BRLTBrailleModelInternal_scriptHistory] = v5;
  *&v0[OBJC_IVAR___BRLTBrailleModelInternal_lastScriptOutputTime] = 0;
  v10.receiver = v0;
  v10.super_class = type metadata accessor for BRLTBrailleModel();
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t sub_241E19168(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v1) + 0x260))();
  if (result)
  {
    return result;
  }

  *(v1 + OBJC_IVAR___BRLTBrailleModelInternal_showingAlert) = 0;
  if ((*((*v4 & *v1) + 0x4F8))() & 1) != 0 || ((*((*v4 & *v1) + 0x728))())
  {

    return sub_241E221E8(0);
  }

  type metadata accessor for BRLTEditString();
  v6 = OBJC_IVAR___BRLTBrailleModelInternal_script;
  v7 = *(v1 + OBJC_IVAR___BRLTBrailleModelInternal_script);
  v8 = sub_241E13E38(v7, a1);

  if (v8)
  {
    v9 = OBJC_IVAR___BRLTBrailleModelInternal_scriptHistory;
    swift_beginAccess();
    v10 = *(v2 + v9);
    *(v2 + v9) = MEMORY[0x277D84F90];
  }

  if (CFAbsoluteTimeGetCurrent() - *(v2 + OBJC_IVAR___BRLTBrailleModelInternal_lastScriptOutputTime) >= 5.0 || (v11 = OBJC_IVAR___BRLTBrailleModelInternal_scriptHistory, swift_beginAccess(), v12 = *(v2 + v11), , v13 = sub_241E1978C(a1, v12), v15 = v14, result = , (v15 & 1) != 0))
  {
    v16 = *(v2 + OBJC_IVAR___BRLTBrailleModelInternal_contentLock);
    [v16 lock];
    v17 = *(v2 + v6);
    *(v2 + v6) = a1;

    v18 = *((*v4 & *v2) + 0x380);
    v19 = a1;
    if (v18())
    {
      v20 = v19[OBJC_IVAR___BRLTEditStringInternal_selection + 16] ^ 1;
    }

    else
    {
      v20 = 1;
    }

    (*((*v4 & *v2) + 0x350))(v20 & 1);
    *(v2 + OBJC_IVAR___BRLTBrailleModelInternal_showingTerminalOutput) = 0;
    if (*(v2 + OBJC_IVAR___BRLTBrailleModelInternal_switchedToEditableWithUncommittedBraille) != 1 || (v21 = (v2 + OBJC_IVAR___BRLTBrailleModelInternal_editingBrailleRange), (*(v2 + OBJC_IVAR___BRLTBrailleModelInternal_editingBrailleRange + 16) & 1) != 0))
    {
      sub_241E1E11C();
LABEL_50:
      sub_241E221E8(0);
      return [v16 unlock];
    }

    v45 = v16;
    v23 = *(v2 + OBJC_IVAR___BRLTBrailleModelInternal_braille);
    v25 = *v21;
    v24 = v21[1];
    v26 = *((*v4 & *v23) + 0xE0);
    v27 = v23;
    v28 = v26(v25, v24);
    v30 = v29;

    sub_241E1E11C();
    if ((v30 & 0x2000000000000000) != 0)
    {
      v31 = HIBYTE(v30) & 0xF;
    }

    else
    {
      v31 = v28 & 0xFFFFFFFFFFFFLL;
    }

    if (!v31)
    {
LABEL_49:

      v16 = v45;
      goto LABEL_50;
    }

    v32 = 0;
    while (1)
    {
      if ((v30 & 0x1000000000000000) != 0)
      {
        v35 = sub_241E35AD4();
      }

      else
      {
        if ((v30 & 0x2000000000000000) != 0)
        {
          v46[0] = v28;
          v46[1] = v30 & 0xFFFFFFFFFFFFFFLL;
          v34 = v46 + v32;
        }

        else
        {
          v33 = (v30 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((v28 & 0x1000000000000000) == 0)
          {
            v33 = sub_241E35B14();
          }

          v34 = (v33 + v32);
        }

        v35 = *v34;
        if ((*v34 & 0x80000000) == 0)
        {
          goto LABEL_33;
        }

        v41 = (__clz(v35 ^ 0xFF) - 24);
        if (v41 > 2)
        {
          if (v41 == 3)
          {
            v35 = ((v35 & 0xF) << 12) | ((v34[1] & 0x3F) << 6) | v34[2] & 0x3F;
            v36 = 3;
          }

          else
          {
            v35 = ((v35 & 0xF) << 18) | ((v34[1] & 0x3F) << 12) | ((v34[2] & 0x3F) << 6) | v34[3] & 0x3F;
            v36 = 4;
          }

          goto LABEL_34;
        }

        if (v41 == 1)
        {
LABEL_33:
          v36 = 1;
        }

        else
        {
          v35 = v34[1] & 0x3F | ((v35 & 0x1F) << 6);
          v36 = 2;
        }
      }

LABEL_34:
      if (v35 > 0x7F)
      {
        v42 = (v35 & 0x3F) << 8;
        if (v35 >= 0x800)
        {
          v43 = (v42 | (v35 >> 6) & 0x3F) << 8;
          v44 = (((v43 | (v35 >> 12) & 0x3F) << 8) | (v35 >> 18)) - 2122219023;
          v37 = (v35 >> 12) + v43 + 8487393;
          if (HIWORD(v35))
          {
            v37 = v44;
          }
        }

        else
        {
          v37 = (v35 >> 6) + v42 + 33217;
        }
      }

      else
      {
        v37 = v35 + 1;
      }

      v32 += v36;
      v46[0] = (v37 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v37) >> 3))));
      sub_241E35854();
      v38 = objc_allocWithZone(BRLTBrailleChar);
      v39 = sub_241E357E4();

      v40 = [v38 initWithUnicode_];

      sub_241E1AB04(v40);
      if (v32 >= v31)
      {
        goto LABEL_49;
      }
    }
  }

  v22 = v13 + 1;
  if (__OFADD__(v13, 1))
  {
    __break(1u);
  }

  else if ((v22 & 0x8000000000000000) == 0)
  {
    swift_beginAccess();
    sub_241E2326C(0, v22);
    return swift_endAccess();
  }

  __break(1u);
  return result;
}

unint64_t sub_241E1978C(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = sub_241E35B34();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x245D01690](v5, a2);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    type metadata accessor for BRLTEditString();
    v8 = sub_241E35A14();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

void sub_241E198E4(void *a1)
{
  v2 = *(v1 + OBJC_IVAR___BRLTBrailleModelInternal_outputTranslator);
  if (v2)
  {
    v3 = v1;
    v5 = *((*MEMORY[0x277D85000] & *v1) + 0x260);
    v11 = v2;
    if ((v5() & 1) == 0)
    {
      v6 = *(v1 + OBJC_IVAR___BRLTBrailleModelInternal_alertScript);
      *(v1 + OBJC_IVAR___BRLTBrailleModelInternal_alertScript) = a1;
      v7 = a1;

      v8 = sub_241E0F2DC() & 1;
      sub_241E0FDB8(v7, v8, &v12);
      v9 = v12;

      v10 = *(v3 + OBJC_IVAR___BRLTBrailleModelInternal_alertBraille);
      *(v3 + OBJC_IVAR___BRLTBrailleModelInternal_alertBraille) = v9;

      *(v3 + OBJC_IVAR___BRLTBrailleModelInternal_showingAlert) = 1;
      sub_241E221E8(0);
    }
  }
}

uint64_t sub_241E19A90(void *a1)
{
  result = (*((*MEMORY[0x277D85000] & *v1) + 0x260))();
  if ((result & 1) == 0)
  {
    v4 = *(v1 + OBJC_IVAR___BRLTBrailleModelInternal_script);
    *(v1 + OBJC_IVAR___BRLTBrailleModelInternal_script) = a1;
    v5 = a1;

    *(v1 + OBJC_IVAR___BRLTBrailleModelInternal_showingTerminalOutput) = 1;
    sub_241E1E11C();

    return sub_241E221E8(0);
  }

  return result;
}

void sub_241E19C28(uint64_t a1, char a2)
{
  v3 = *(v2 + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel);
  if (v3)
  {
    v4 = *(a1 + OBJC_IVAR___BRLTEditStringInternal_string);
    v5 = *(a1 + OBJC_IVAR___BRLTEditStringInternal_string + 8);
    v6 = *(a1 + OBJC_IVAR___BRLTEditStringInternal_selection);
    v7 = *(a1 + OBJC_IVAR___BRLTEditStringInternal_selection + 8);
    v8 = *(a1 + OBJC_IVAR___BRLTEditStringInternal_selection + 16);
    v9 = *(a1 + OBJC_IVAR___BRLTEditStringInternal_focus + 16);
    if (*(a1 + OBJC_IVAR___BRLTEditStringInternal_focus + 16))
    {
      v10 = 0;
    }

    else
    {
      v10 = *(a1 + OBJC_IVAR___BRLTEditStringInternal_focus);
    }

    v11 = *(*v3 + 328);

    v11(v4, v5, v6, v7, v8, v10, v9);
    v12 = [objc_allocWithZone(BRLTBrailleUIFormattingOptions) init];
    [v12 setTruncateAtPanBoundary_];
    v14 = v12;
    sub_241E221E8(v12);
  }
}

uint64_t sub_241E19E1C()
{
  v1 = MEMORY[0x277D85000];
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x260);
  result = v2();
  if ((result & 1) == 0)
  {
    result = (*((*v1 & *v0) + 0x4E8))();
    if ((result & 1) == 0)
    {
      if ((((*((*v1 & *v0) + 0x3E0))() & 1) != 0 || *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_brailleSelectionDirty) == 1) && (v2() & 1) == 0)
      {
        if ((*((*v1 & *v0) + 0x380))())
        {
          *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_switchedToEditableWithUncommittedBraille) = 0;
        }

        v4 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_contentLock);
        [v4 lock];
        if (*(v0 + OBJC_IVAR___BRLTBrailleModelInternal_editScript) == 1)
        {
          sub_241E1DCE8();
        }

        else
        {
          sub_241E1D6B0();
        }

        [v4 unlock];
      }

      return sub_241E221E8(0);
    }
  }

  return result;
}

void sub_241E1A010(void *a1)
{
  v3 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v1) + 0x728))())
  {

    sub_241E20BA4();
  }

  else
  {
    v4 = *((*v3 & *v1) + 0x4E8);
    if ((v4() & 1) == 0 || (sub_241E1A760(a1) & 1) == 0)
    {
      v5 = *(v1 + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel);
      if (v5)
      {
        v6 = *(*v5 + 336);
        v7 = *(v1 + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel);

        v6(a1);
        v12 = [objc_allocWithZone(BRLTBrailleUIFormattingOptions) init];
        sub_241E221E8(v12);
      }

      else if (((*((*v3 & *v1) + 0x230))() & 1) != 0 && ((*((*v3 & *v1) + 0x380))() & 1) == 0)
      {

        sub_241E1A5B0(a1);
      }

      else
      {
        v8 = (*((*v3 & *v1) + 0x380))();
        v9 = OBJC_IVAR___BRLTBrailleModelInternal_braille;
        v10 = OBJC_IVAR___BRLTEditStringInternal_selection;
        if ((v8 & 1) == 0 && *(*(v1 + OBJC_IVAR___BRLTBrailleModelInternal_braille) + OBJC_IVAR___BRLTEditStringInternal_selection + 16) == 1)
        {
          sub_241E1AA00();
          v9 = OBJC_IVAR___BRLTBrailleModelInternal_braille;
          v10 = OBJC_IVAR___BRLTEditStringInternal_selection;
        }

        v11 = *(v1 + v9) + v10;
        if ((*(v11 + 16) & 1) == 0 && *v11 != *(v11 + 8))
        {
          sub_241E1AFD4([a1 bits] != 0, 1);
        }

        if (v4())
        {

          sub_241E1A8C4(a1);
        }

        else
        {

          sub_241E1A3EC(a1);
        }
      }
    }
  }
}

uint64_t sub_241E1A3EC(void *a1)
{
  sub_241E1AB04(a1);
  v3 = [a1 bits];
  v4 = MEMORY[0x277D85000];
  if (!v3 || ((*((*MEMORY[0x277D85000] & *v1) + 0x1B8))() & 1) != 0 && ((*((*v4 & *v1) + 0x4E0))() & 1) != 0 && ((*((*v4 & *v1) + 0x380))()) && ((*((*v4 & *v1) + 0x260))() & 1) == 0)
  {
    if ((*((*v4 & *v1) + 0x380))())
    {
      *(v1 + OBJC_IVAR___BRLTBrailleModelInternal_switchedToEditableWithUncommittedBraille) = 0;
    }

    v5 = *(v1 + OBJC_IVAR___BRLTBrailleModelInternal_contentLock);
    [v5 lock];
    if (*(v1 + OBJC_IVAR___BRLTBrailleModelInternal_editScript) == 1)
    {
      sub_241E1DCE8();
    }

    else
    {
      sub_241E1D6B0();
    }

    [v5 unlock];
  }

  return sub_241E221E8(0);
}

uint64_t sub_241E1A5B0(void *a1)
{
  v3 = sub_241E246C8(&unk_2853FC428);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74600, &qword_241E38D88);
  swift_arrayDestroy();
  v4 = [a1 unicode];
  v5 = sub_241E357F4();
  v7 = v6;

  if (*(v3 + 16))
  {
    v8 = v1;
    v9 = sub_241E22FD8(v5, v7);
    v11 = v10;

    if (v11)
    {
      v12 = (*(v3 + 56) + 16 * v9);
      v14 = *v12;
      v13 = v12[1];

      v16 = (*((*MEMORY[0x277D85000] & *v8) + 0x188))(v15);
      if (v16)
      {
        v17 = v16;
        v18 = sub_241E357E4();

        [v17 didInsertScriptString_];

        return swift_unknownObjectRelease();
      }
    }
  }

  else
  {
  }
}

uint64_t sub_241E1A760(void *a1)
{
  v2 = (v1 + OBJC_IVAR___BRLTBrailleModelInternal_stageRange);
  if (*(v1 + OBJC_IVAR___BRLTBrailleModelInternal_stageRange + 16))
  {
    return 0;
  }

  v5 = *v2;
  v6 = v2[1];
  v7 = MEMORY[0x277D85000];
  v8 = (*((*MEMORY[0x277D85000] & *v1) + 0x4F8))();
  v9 = [a1 bits];
  if (v8)
  {
    if (v9 == 1)
    {
      (*((*v7 & *v1) + 0x700))();
    }

    else if ([a1 bits] == 8 || !objc_msgSend(a1, sel_bits))
    {
      (*((*v7 & *v1) + 0x6F8))();
    }
  }

  else
  {
    if (v9)
    {
      v10 = 1;
    }

    else
    {
      v10 = v5 == v6;
    }

    if (v10 || (sub_241E2025C() & 1) != 0)
    {
      return 0;
    }

    sub_241E1EFA4();
  }

  return 1;
}

uint64_t sub_241E1A8C4(void *a1)
{
  if ([a1 bits])
  {
    sub_241E1AB04(a1);
  }

  else
  {
    v3 = sub_241E2025C();
    sub_241E1AB04(a1);
    if ((v3 & 1) == 0)
    {
      v4 = MEMORY[0x277D85000];
      if (((*((*MEMORY[0x277D85000] & *v1) + 0x260))() & 1) == 0)
      {
        if ((*((*v4 & *v1) + 0x380))())
        {
          *(v1 + OBJC_IVAR___BRLTBrailleModelInternal_switchedToEditableWithUncommittedBraille) = 0;
        }

        v5 = *(v1 + OBJC_IVAR___BRLTBrailleModelInternal_contentLock);
        [v5 lock];
        if (*(v1 + OBJC_IVAR___BRLTBrailleModelInternal_editScript) == 1)
        {
          sub_241E1DCE8();
        }

        else
        {
          sub_241E1D6B0();
        }

        [v5 unlock];
      }
    }
  }

  return sub_241E221E8(0);
}

uint64_t sub_241E1AA00()
{
  type metadata accessor for BRLTEditString();
  v1 = sub_241E12328(0, 0xE000000000000000, 0, 0, 0, 0, 0, 0, MEMORY[0x277D84F90]);
  v2 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_braille);
  *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_braille) = v1;

  v3 = v0 + OBJC_IVAR___BRLTBrailleModelInternal_editingBrailleRange;
  v3[16] = 0;
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = v0 + OBJC_IVAR___BRLTBrailleModelInternal_editingScriptRange;
  v4[16] = 0;
  *v4 = 0;
  *(v4 + 1) = 0;
  result = (*((*MEMORY[0x277D85000] & *v0) + 0x4F0))();
  if (result)
  {
    v6 = v0 + OBJC_IVAR___BRLTBrailleModelInternal_stageRange;
    *v6 = 0;
    *(v6 + 1) = 0;
    v6[16] = 0;
  }

  return result;
}

void sub_241E1AB04(void *a1)
{
  v2 = OBJC_IVAR___BRLTBrailleModelInternal_braille;
  v3 = *(v1 + OBJC_IVAR___BRLTBrailleModelInternal_braille);
  v4 = &v3[OBJC_IVAR___BRLTEditStringInternal_selection];
  if ((v3[OBJC_IVAR___BRLTEditStringInternal_selection + 16] & 1) == 0)
  {
    v5 = (v1 + OBJC_IVAR___BRLTBrailleModelInternal_editingBrailleRange);
    if ((*(v1 + OBJC_IVAR___BRLTBrailleModelInternal_editingBrailleRange + 16) & 1) == 0)
    {
      v6 = *v4;
      v7 = *v4 + 1;
      if (__OFADD__(*v4, 1))
      {
        __break(1u);
      }

      else
      {
        v8 = *(v4 + 1);
        v23 = *v5;
        v24 = v5[1];
        v10 = v3;
        v11 = [a1 unicode];
        v12 = sub_241E357F4();
        v14 = v13;

        v15 = (*((*MEMORY[0x277D85000] & *v10) + 0xB0))(v6, v8, 0, v12, v14, v7, v7, 0);

        v16 = *(v1 + v2);
        *(v1 + v2) = v15;

        v17 = v24 + 1;
        if (!__OFADD__(v24, 1))
        {
          if (v17 >= v23)
          {
            *v5 = v23;
            v5[1] = v17;
            *(v5 + 16) = 0;
            v18 = OBJC_IVAR___BRLTBrailleModelInternal_brailleStringDirty;
            swift_beginAccess();
            *(v1 + v18) = 1;
            *(v1 + OBJC_IVAR___BRLTBrailleModelInternal_brailleSelectionDirty) = 1;
            v19 = v1 + OBJC_IVAR___BRLTBrailleModelInternal_stageRange;
            if (*(v1 + OBJC_IVAR___BRLTBrailleModelInternal_stageRange + 16))
            {
LABEL_10:
              sub_241E221E8(0);
              return;
            }

            v20 = *(v19 + 8);
            v21 = __OFADD__(v20, 1);
            v22 = v20 + 1;
            if (!v21)
            {
              if (v22 >= *v19)
              {
                *(v19 + 8) = v22;
                *(v19 + 16) = 0;
                goto LABEL_10;
              }

LABEL_16:
              __break(1u);
              return;
            }

LABEL_15:
            __break(1u);
            goto LABEL_16;
          }

LABEL_14:
          __break(1u);
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_14;
    }
  }
}

void sub_241E1ACEC(uint64_t a1, uint64_t a2)
{
  if ((*((*MEMORY[0x277D85000] & *v2) + 0x260))())
  {
    v5 = *(v2 + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel);
    if (v5)
    {
      v6 = *(*v5 + 344);
      v7 = *(v2 + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel);

      v6(a1, a2);
      v8 = [objc_allocWithZone(BRLTBrailleUIFormattingOptions) init];
      sub_241E221E8(v8);
    }
  }
}

void sub_241E1AFD4(char a1, char a2)
{
  v5 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v2) + 0x728))())
  {
    sub_241E20BA4();
  }

  else if ((*((*v5 & *v2) + 0x4F8))())
  {
    sub_241E1FB4C();
  }

  else if ((*((*v5 & *v2) + 0x260))())
  {
    v6 = *(v2 + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel);
    if (v6)
    {
      v7 = *(*v6 + 416);
      v8 = *(v2 + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel);

      v7(v9);
      v10 = [objc_allocWithZone(BRLTBrailleUIFormattingOptions) init];
      sub_241E221E8(v10);
    }
  }

  else if (*(v2 + OBJC_IVAR___BRLTBrailleModelInternal_editScript) != 1 || (v11 = *(v2 + OBJC_IVAR___BRLTBrailleModelInternal_script) + OBJC_IVAR___BRLTEditStringInternal_selection, (*(v11 + 16) & 1) != 0) || (v12 = *(v2 + OBJC_IVAR___BRLTBrailleModelInternal_braille) + OBJC_IVAR___BRLTEditStringInternal_selection, (*(v12 + 16) & 1) != 0) || *v11 == *(v11 + 8) && ((*(v2 + OBJC_IVAR___BRLTBrailleModelInternal_stageRange + 16) & 1) != 0 || (*v12 == *(v12 + 8) ? (v13 = *(v2 + OBJC_IVAR___BRLTBrailleModelInternal_stageRange) == *v12) : (v13 = 0), !v13)))
  {

    sub_241E1B23C(a1 & 1, a2 & 1);
  }

  else
  {

    sub_241E1B7A0();
  }
}

void sub_241E1B23C(char a1, char a2)
{
  v3 = OBJC_IVAR___BRLTBrailleModelInternal_braille;
  v4 = *(v2 + OBJC_IVAR___BRLTBrailleModelInternal_braille);
  v5 = (v4 + OBJC_IVAR___BRLTEditStringInternal_selection);
  if (*(v4 + OBJC_IVAR___BRLTEditStringInternal_selection + 16))
  {
    return;
  }

  v6 = *v5;
  v7 = v5[1];
  if (*v5 <= 0 && v6 == v7)
  {
    return;
  }

  v9 = v2;
  v11 = MEMORY[0x277D85000];
  v12 = *((*MEMORY[0x277D85000] & *v4) + 0x98);
  v13 = v4;
  v14 = v12();
  v16 = v15;
  LOBYTE(v12) = v17;

  if (v12)
  {
    return;
  }

  v54 = v16;
  v18 = *(v9 + v3);
  v19 = *((*v11 & *v18) + 0xA0);
  v20 = v18;
  LOBYTE(v19) = v19();

  v53 = v19;
  if (v6 == v7)
  {
    v21 = v6 - 1;
    if (__OFSUB__(v6, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if (v6 < v21)
    {
LABEL_32:
      __break(1u);
      return;
    }

    if ((a2 & 1) == 0)
    {
      v22 = *(v9 + v3);
      v23 = *((*v11 & *v22) + 0xE0);
      v24 = v22;
      v23(v6 - 1, v6);

      v25 = objc_allocWithZone(BRLTBrailleChar);
      v26 = v11;
      v27 = sub_241E357E4();

      v28 = [v25 initWithUnicode_];

      v11 = v26;
      v29 = (*((*v26 & *v9) + 0x188))();
      if (v29)
      {
        [v29 didDeleteBrailleChar_];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  else
  {
    v21 = v6;
    v6 = v7;
  }

  v30 = *(v9 + v3);
  v31 = *((*v11 & *v30) + 0xB8);
  v32 = v30;
  v33 = v31(v21, v6, 0, 0, 0xE000000000000000, v21);

  v34 = *(v9 + v3);
  *(v9 + v3) = v33;

  v35 = *((*v11 & *v9) + 0x260);
  if (v35())
  {
    v36 = [objc_allocWithZone(BRLTBrailleUIFormattingOptions) init];
    sub_241E221E8(v36);

    return;
  }

  v37 = *(v9 + OBJC_IVAR___BRLTBrailleModelInternal_translationResult + 16);
  v57 = *(v9 + OBJC_IVAR___BRLTBrailleModelInternal_translationResult);
  v58 = v37;
  v59 = *(v9 + OBJC_IVAR___BRLTBrailleModelInternal_translationResult + 32);
  v60 = v57;
  v61 = v37;
  v62 = v59;
  sub_241E224C0(&v60, v56);
  sub_241E224C0(&v61, v56);
  sub_241E2251C(&v62, v56);
  v38 = sub_241E11100(v14);
  sub_241E1041C(&v60);
  sub_241E1041C(&v61);
  sub_241E10470(&v62);
  v39 = sub_241E1BA78(v54);
  if (v39 < v38)
  {
    goto LABEL_31;
  }

  v40 = v9 + OBJC_IVAR___BRLTBrailleModelInternal_editingScriptRange;
  *v40 = v38;
  *(v40 + 1) = v39;
  v40[16] = 0;
  v41 = *(v9 + v3);
  v42 = *((*MEMORY[0x277D85000] & *v41) + 0x90);
  v43 = v41;
  v44 = v42();
  v46 = v45;
  v48 = v47;

  v49 = v9 + OBJC_IVAR___BRLTBrailleModelInternal_editingBrailleRange;
  *v49 = v44;
  *(v49 + 1) = v46;
  v49[16] = v48 & 1;
  v50 = OBJC_IVAR___BRLTBrailleModelInternal_brailleStringDirty;
  swift_beginAccess();
  *(v9 + v50) = 1;
  *(v9 + OBJC_IVAR___BRLTBrailleModelInternal_brailleSelectionDirty) = 1;
  v51 = sub_241E1B9E8(v21, v6);
  if ((a1 & 1) == 0 && (v49[16] & 1) == 0 && (*v49 == *(v49 + 1)) | v53 & 1 && ((v35)(v51) & 1) == 0)
  {
    if ((*((*MEMORY[0x277D85000] & *v9) + 0x380))())
    {
      *(v9 + OBJC_IVAR___BRLTBrailleModelInternal_switchedToEditableWithUncommittedBraille) = 0;
    }

    v52 = *(v9 + OBJC_IVAR___BRLTBrailleModelInternal_contentLock);
    [v52 lock];
    if (*(v9 + OBJC_IVAR___BRLTBrailleModelInternal_editScript) == 1)
    {
      sub_241E1DCE8();
    }

    else
    {
      sub_241E1D6B0();
    }

    [v52 unlock];
  }

  sub_241E221E8(0);
}

uint64_t sub_241E1B7A0()
{
  v1 = OBJC_IVAR___BRLTBrailleModelInternal_script;
  v2 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_script);
  v3 = (v2 + OBJC_IVAR___BRLTEditStringInternal_selection);
  if (*(v2 + OBJC_IVAR___BRLTEditStringInternal_selection + 16))
  {
    return 0;
  }

  v5 = v0;
  v7 = *v3;
  v6 = v3[1];
  if (v7 == v6)
  {
    v8 = v7 - 1;
    if (v7 < 1)
    {
      return 0;
    }
  }

  else
  {
    v8 = v7;
    v7 = v6;
  }

  v9 = (v2 + OBJC_IVAR___BRLTEditStringInternal_string);
  v10 = *v9;
  v11 = v9[1];

  v12 = sub_241E2CD50(v10, v11, v7);

  v13 = (*(v5 + v1) + OBJC_IVAR___BRLTEditStringInternal_string);
  v14 = *v13;
  v15 = v13[1];

  v16 = sub_241E2CD50(v14, v15, v8);

  v17 = v7 - v8;
  if (__OFSUB__(v7, v8))
  {
    __break(1u);
    goto LABEL_14;
  }

  result = v12 - v17;
  if (__OFSUB__(v12, v17))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < result)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v18 = sub_241E2CC64(result, v12, 0);
  v20 = v19;
  v21 = *(v5 + v1);
  v22 = MEMORY[0x277D85000];
  v23 = *((*MEMORY[0x277D85000] & *v21) + 0xB8);
  v24 = v21;
  v25 = v23(v8, v7, 0, 0, 0xE000000000000000, v8);

  v26 = *(v5 + v1);
  *(v5 + v1) = v25;

  v27 = (*((*v22 & *v5) + 0x188))();
  if (v27)
  {
    v28 = v27;
    v29 = sub_241E357E4();
    [v28 didReplaceScriptStringRange:v18 withScriptString:v20 cursorLocation:{v29, v16}];

    swift_unknownObjectRelease();
  }

  sub_241E1E11C();
  sub_241E221E8(0);
  return 1;
}

uint64_t sub_241E1B9E8(uint64_t result, uint64_t a2)
{
  v3 = v2 + OBJC_IVAR___BRLTBrailleModelInternal_stageRange;
  if ((*(v2 + OBJC_IVAR___BRLTBrailleModelInternal_stageRange + 16) & 1) == 0)
  {
    v4 = *(v3 + 8);
    if (*v3 < result)
    {
      if (v4 <= a2)
      {
        goto LABEL_13;
      }

      v5 = a2 - result;
      if (__OFSUB__(a2, result))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      result = v4 - v5;
      if (__OFSUB__(v4, v5))
      {
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      if (result >= *v3)
      {
LABEL_13:
        *(v3 + 8) = result;
        *(v3 + 16) = 0;
        return result;
      }

      __break(1u);
    }

    v6 = result;
    if (v4 <= a2)
    {
LABEL_12:
      *v3 = result;
      result = v6;
      goto LABEL_13;
    }

    v7 = a2 - result;
    if (!__OFSUB__(a2, result))
    {
      v8 = __OFSUB__(v4, v7);
      v6 = v4 - v7;
      if (!v8)
      {
        if (v6 >= result)
        {
          goto LABEL_12;
        }

LABEL_19:
        __break(1u);
        return result;
      }

LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  return result;
}

uint64_t sub_241E1BA78(uint64_t a1)
{
  v2 = (v1 + OBJC_IVAR___BRLTBrailleModelInternal_editingBrailleRange);
  if (*(v1 + OBJC_IVAR___BRLTBrailleModelInternal_editingBrailleRange + 16) & 1) != 0 || (v3 = (v1 + OBJC_IVAR___BRLTBrailleModelInternal_editingScriptRange), (*(v1 + OBJC_IVAR___BRLTBrailleModelInternal_editingScriptRange + 16)))
  {
    v4 = 0;
LABEL_9:
    v20 = *(v1 + OBJC_IVAR___BRLTBrailleModelInternal_translationResult + 16);
    v23[0] = *(v1 + OBJC_IVAR___BRLTBrailleModelInternal_translationResult);
    v23[1] = v20;
    v24 = *(v1 + OBJC_IVAR___BRLTBrailleModelInternal_translationResult + 32);
    v31 = v23[0];
    v32 = v20;
    v33 = v24;
    sub_241E224C0(&v31, v22);
    sub_241E224C0(&v32, v22);
    sub_241E2251C(&v33, v22);
    v21 = sub_241E11100(v4);
    sub_241E1041C(&v31);
    sub_241E1041C(&v32);
    sub_241E10470(&v33);
    return v21;
  }

  v6 = *v2;
  v7 = v2[1];
  v9 = *v3;
  v8 = v3[1];
  v10 = v1;
  v11 = *(v1 + OBJC_IVAR___BRLTBrailleModelInternal_translationResult + 16);
  v25 = *(v1 + OBJC_IVAR___BRLTBrailleModelInternal_translationResult);
  v26 = v11;
  v27 = *(v1 + OBJC_IVAR___BRLTBrailleModelInternal_translationResult + 32);
  v28 = v25;
  v29 = v11;
  v30 = v27;
  sub_241E224C0(&v28, v23);
  sub_241E224C0(&v29, v23);
  sub_241E2251C(&v30, v23);
  v12 = sub_241E10280(v9, v8);
  v14 = v13;
  sub_241E1041C(&v28);
  sub_241E1041C(&v29);
  result = sub_241E10470(&v30);
  v16 = v7 - v6;
  if (__OFSUB__(v7, v6))
  {
    __break(1u);
    goto LABEL_11;
  }

  v17 = __OFSUB__(a1, v16);
  v18 = a1 - v16;
  if (v17)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v19 = v14 - v12;
  if (__OFSUB__(v14, v12))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v4 = v18 + v19;
  if (!__OFADD__(v18, v19))
  {
    v1 = v10;
    goto LABEL_9;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_241E1BC18(uint64_t a1, uint64_t a2)
{
  v3 = sub_241E2CC98(a1, a2);
  v4 = *((*MEMORY[0x277D85000] & *v2) + 0x5F0);

  return v4(v3);
}

uint64_t sub_241E1BD18(uint64_t a1, uint64_t a2, char a3)
{
  v7 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v3) + 0x4F8))())
  {
    return 0;
  }

  v9 = *((*v7 & *v3) + 0x380);
  if ((v9() & 1) == 0)
  {
    return 1;
  }

  v10 = *((*v7 & *v3) + 0x260);
  if (v10())
  {
    (*((*v7 & *v3) + 0x600))(a1, a2, a3 & 1);
    return 1;
  }

  if (*(v3 + OBJC_IVAR___BRLTBrailleModelInternal_showingAlert))
  {
    return 1;
  }

  if (((*((*v7 & *v3) + 0x4E8))() & 1) == 0 || (*(v3 + OBJC_IVAR___BRLTBrailleModelInternal_stageRange + 16) & 1) != 0 || *(v3 + OBJC_IVAR___BRLTBrailleModelInternal_stageRange) == *(v3 + OBJC_IVAR___BRLTBrailleModelInternal_stageRange + 8))
  {
    if (((*((*v7 & *v3) + 0x728))() & 1) == 0)
    {
      v11 = *v7 & *v3;
      if (*(v3 + OBJC_IVAR___BRLTBrailleModelInternal_editScript) == 1)
      {
        (*((*v7 & *v3) + 0x640))(a1, a2, a3 & 1);
      }

      else
      {
        (*((*v7 & *v3) + 0x5F8))(a1, a2, a3 & 1);
      }

      return 1;
    }

    sub_241E20BA4();
    return 0;
  }

  else
  {
    if ((v10() & 1) == 0)
    {
      if (v9())
      {
        *(v3 + OBJC_IVAR___BRLTBrailleModelInternal_switchedToEditableWithUncommittedBraille) = 0;
      }

      v12 = *(v3 + OBJC_IVAR___BRLTBrailleModelInternal_contentLock);
      [v12 lock];
      if (*(v3 + OBJC_IVAR___BRLTBrailleModelInternal_editScript) == 1)
      {
        sub_241E1DCE8();
      }

      else
      {
        sub_241E1D6B0();
      }

      [v12 unlock];
    }

    sub_241E221E8(0);
    return 0;
  }
}

uint64_t sub_241E1C01C(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
    return result;
  }

  v4 = v3;
  v5 = a2;
  v6 = result;
  v7 = OBJC_IVAR___BRLTBrailleModelInternal_braille;
  v8 = *(v3 + OBJC_IVAR___BRLTBrailleModelInternal_braille);
  v9 = *(v8 + OBJC_IVAR___BRLTEditStringInternal_selection);
  v10 = *(v8 + OBJC_IVAR___BRLTEditStringInternal_selection + 8);
  v11 = *(v8 + OBJC_IVAR___BRLTEditStringInternal_selection + 16);
  if ((v11 & 1) == 0)
  {
    v12 = v9 == result && v10 == a2;
    if (v12 && result == a2)
    {
      v14 = (v8 + OBJC_IVAR___BRLTEditStringInternal_string);
      v15 = *v14;
      v16 = v14[1];

      v17 = sub_241E35874();

      if (v17 > v6)
      {
        ++v6;
      }

      v8 = *(v4 + v7);
      v5 = v6;
    }
  }

  v18 = *((*MEMORY[0x277D85000] & *v8) + 0xC0);
  v19 = v8;
  v20 = v18(v6, v5, 0);

  v21 = *(v4 + v7);
  *(v4 + v7) = v20;

  if ((v11 & 1) != 0 || (v6 == v9 ? (v22 = v5 == v10) : (v22 = 0), !v22))
  {
    *(v4 + OBJC_IVAR___BRLTBrailleModelInternal_brailleSelectionDirty) = 1;
  }

  v23 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v4) + 0x3E0))() & 1) != 0 || ((*((*v23 & *v4) + 0x4F0))() & 1) == 0 || (*(v4 + OBJC_IVAR___BRLTBrailleModelInternal_stageRange + 16))
  {
    if (v6 == v5)
    {
      v24 = v11;
    }

    else
    {
      v24 = 1;
    }

    if (v24 != 1)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if (*(v4 + OBJC_IVAR___BRLTBrailleModelInternal_stageRange) == *(v4 + OBJC_IVAR___BRLTBrailleModelInternal_stageRange + 8))
    {
      v28 = 1;
    }

    else
    {
      v28 = v11;
    }

    if ((v28 & 1) == 0 && v6 == v5)
    {
      goto LABEL_28;
    }
  }

  sub_241E1E3DC();
LABEL_28:
  v25 = (*((*v23 & *v4) + 0x260))();
  if ((v25 & 1) == 0)
  {
    if ((*((*v23 & *v4) + 0x380))())
    {
      *(v4 + OBJC_IVAR___BRLTBrailleModelInternal_switchedToEditableWithUncommittedBraille) = 0;
    }

    v26 = *(v4 + OBJC_IVAR___BRLTBrailleModelInternal_contentLock);
    [v26 lock];
    if (*(v4 + OBJC_IVAR___BRLTBrailleModelInternal_editScript) == 1)
    {
      sub_241E1DCE8();
    }

    else
    {
      sub_241E1D6B0();
    }

    v25 = [v26 unlock];
  }

  if (((*((*v23 & *v4) + 0x4F0))(v25) & 1) != 0 && v6 == v5)
  {
    v27 = v4 + OBJC_IVAR___BRLTBrailleModelInternal_stageRange;
    if (*(v4 + OBJC_IVAR___BRLTBrailleModelInternal_stageRange + 16) == 1)
    {
      *v27 = v6;
      *(v27 + 1) = v6;
      v27[16] = 0;
    }
  }

  return sub_241E221E8(0);
}

void sub_241E1C390(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    v4 = *(v3 + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel);
    if (v4)
    {
      v6 = *(v3 + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel);

      v8 = sub_241E16FEC(a1, a2);
      (*(*v4 + 424))(v8);
      v9 = [objc_allocWithZone(BRLTBrailleUIFormattingOptions) init];
      sub_241E221E8(v9);
    }
  }
}

void sub_241E1C484()
{
  v1 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel);
  if (v1)
  {
    v2 = *(*v1 + 432);
    v3 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel);

    v2(v4);
    v5 = [objc_allocWithZone(BRLTBrailleUIFormattingOptions) init];
    sub_241E221E8(v5);
  }
}

void sub_241E1C630(char a1)
{
  v2 = *(v1 + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel);
  if (v2)
  {
    v4 = *(*v2 + 448);

    v4(a1 & 1);
    v5 = [objc_allocWithZone(BRLTBrailleUIFormattingOptions) init];
    sub_241E221E8(v5);
  }
}

void sub_241E1C7EC(char a1)
{
  v2 = *(v1 + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel);
  if (v2)
  {
    v4 = *(*v2 + 456);

    v4(a1 & 1);
    v5 = [objc_allocWithZone(BRLTBrailleUIFormattingOptions) init];
    sub_241E221E8(v5);
  }
}

void sub_241E1C9A8(char a1)
{
  v2 = *(v1 + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel);
  if (v2)
  {
    v4 = *(*v2 + 464);

    v4(a1 & 1);
    v5 = [objc_allocWithZone(BRLTBrailleUIFormattingOptions) init];
    sub_241E221E8(v5);
  }
}

void sub_241E1CB64()
{
  v1 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel);
  if (v1)
  {
    v2 = *(*v1 + 472);
    v3 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel);

    v2(v4);
    v5 = [objc_allocWithZone(BRLTBrailleUIFormattingOptions) init];
    sub_241E221E8(v5);
  }
}

uint64_t sub_241E1CD10()
{
  v1 = MEMORY[0x277D85000];
  v2 = *MEMORY[0x277D85000] & *v0;
  if (*(v0 + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel))
  {
    v3 = *((*MEMORY[0x277D85000] & *v0) + 0x788);

    v5 = v3(v4);

    return v5 & 1;
  }

  else
  {
    v7 = (*((*MEMORY[0x277D85000] & *v0) + 0x508))();
    v8 = *&v7[OBJC_IVAR___BRLTEditStringInternal_selection];
    v9 = v7[OBJC_IVAR___BRLTEditStringInternal_selection + 16];

    if ((v9 & 1) != 0 || v8 < 1)
    {
      return 0;
    }

    else
    {
      v10 = *((*v1 & *v0) + 0x5F0);

      return v10(v8 - 1, v8 - 1, 0);
    }
  }
}

uint64_t sub_241E1CE74()
{
  v1 = MEMORY[0x277D85000];
  v2 = *MEMORY[0x277D85000] & *v0;
  if (*(v0 + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel))
  {
    v3 = *((*MEMORY[0x277D85000] & *v0) + 0x790);

    v5 = v3(v4);

    return v5 & 1;
  }

  else
  {
    v7 = *((*MEMORY[0x277D85000] & *v0) + 0x508);
    v8 = v7();
    v9 = *&v8[OBJC_IVAR___BRLTEditStringInternal_selection];
    v10 = v8[OBJC_IVAR___BRLTEditStringInternal_selection + 16];

    if (v10)
    {
      return 0;
    }

    v11 = v7();
    v12 = *&v11[OBJC_IVAR___BRLTEditStringInternal_string];
    v13 = *&v11[OBJC_IVAR___BRLTEditStringInternal_string + 8];

    v14 = sub_241E35874();

    if (v9 >= v14)
    {
      return 0;
    }

    else
    {
      v15 = *((*v1 & *v0) + 0x5F0);

      return v15(v9 + 1, v9 + 1, 0);
    }
  }
}

uint64_t sub_241E1D030(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    v4 = v3;
    v5 = OBJC_IVAR___BRLTBrailleModelInternal_script;
    v6 = *(v3 + OBJC_IVAR___BRLTBrailleModelInternal_script) + OBJC_IVAR___BRLTEditStringInternal_selection;
    if ((*(v6 + 16) & 1) == 0)
    {
      v7 = result;
      v9 = *v6;
      v47 = *(v6 + 8);
      v10 = MEMORY[0x277D85000];
      v11 = *((*MEMORY[0x277D85000] & *v3) + 0x3E0);
      v12 = v11();
      if ((v11() & 1) != 0 && ((*((*v10 & *v3) + 0x260))() & 1) == 0)
      {
        if ((*((*v10 & *v3) + 0x380))())
        {
          *(v3 + OBJC_IVAR___BRLTBrailleModelInternal_switchedToEditableWithUncommittedBraille) = 0;
        }

        v13 = *(v3 + OBJC_IVAR___BRLTBrailleModelInternal_contentLock);
        [v13 lock];
        if (*(v3 + OBJC_IVAR___BRLTBrailleModelInternal_editScript) == 1)
        {
          sub_241E1DCE8();
        }

        else
        {
          sub_241E1D6B0();
        }

        [v13 unlock];
      }

      v14 = v3 + OBJC_IVAR___BRLTBrailleModelInternal_translationResult;
      v15 = *(v3 + OBJC_IVAR___BRLTBrailleModelInternal_translationResult + 16);
      v55 = *(v3 + OBJC_IVAR___BRLTBrailleModelInternal_translationResult);
      v56 = v15;
      v57 = *(v3 + OBJC_IVAR___BRLTBrailleModelInternal_translationResult + 32);
      v58 = v55;
      v59 = v15;
      v60 = v57;
      sub_241E224C0(&v58, v53);
      sub_241E224C0(&v59, v53);
      sub_241E2251C(&v60, v53);
      v16 = sub_241E111BC(v7, a2);
      v18 = v17;
      sub_241E1041C(&v58);
      sub_241E1041C(&v59);
      sub_241E10470(&v60);
      if ((v12 & 1) == 0)
      {
        v19 = v16 == v9 && v18 == v47;
        if (v19 && v16 == v18)
        {
          v21 = (*(v3 + v5) + OBJC_IVAR___BRLTEditStringInternal_string);
          v22 = *v21;
          v23 = v21[1];

          v24 = sub_241E35874();

          if (v9 >= v24)
          {
LABEL_27:
            v16 = v9;
            v18 = v9;
          }

          else
          {
            v25 = *(v14 + 1);
            v53[0] = *v14;
            v53[1] = v25;
            v54 = *(v14 + 4);
            v26 = *(v14 + 1);
            v61 = v53[0];
            v62 = v26;
            v63 = v54;
            sub_241E224C0(&v61, v51);
            sub_241E224C0(&v62, v51);
            sub_241E2251C(&v63, v51);
            v27 = sub_241E11480(v9);
            sub_241E1041C(&v61);
            sub_241E1041C(&v62);
            sub_241E10470(&v63);
            v28 = (*(v4 + OBJC_IVAR___BRLTBrailleModelInternal_braille) + OBJC_IVAR___BRLTEditStringInternal_string);
            v29 = *v28;
            v30 = v28[1];

            v31 = sub_241E35874();

            if (v31 < v27)
            {
              __break(1u);
              return result;
            }

            while (1)
            {
              v32 = *(v14 + 1);
              v51[0] = *v14;
              v51[1] = v32;
              v52 = *(v14 + 4);
              v33 = *(v14 + 1);
              v64 = v51[0];
              v65 = v33;
              v66 = v52;
              sub_241E224C0(&v64, v49);
              sub_241E224C0(&v65, v49);
              sub_241E2251C(&v66, v49);
              v16 = sub_241E11100(v27);
              sub_241E1041C(&v64);
              sub_241E1041C(&v65);
              sub_241E10470(&v66);
              if (v9 < v16)
              {
                break;
              }

              if (v31 == v27)
              {
                goto LABEL_27;
              }

              if (__OFADD__(v27++, 1))
              {
                __break(1u);
                goto LABEL_27;
              }
            }

            v18 = v16;
          }
        }
      }

      sub_241E21768(0, 0, 1, 0, 0xE000000000000000, v16, v18, 0);
      v35 = *(v14 + 1);
      v49[0] = *v14;
      v49[1] = v35;
      v50 = *(v14 + 4);
      v36 = *(v14 + 1);
      v67 = v49[0];
      v68 = v36;
      v69[0] = v50;
      sub_241E224C0(&v67, v48);
      sub_241E224C0(&v68, v48);
      sub_241E2251C(v69, v48);
      v37 = sub_241E10280(v16, v18);
      v39 = v38;
      sub_241E1041C(&v67);
      sub_241E1041C(&v68);
      sub_241E10470(v69);
      v40 = OBJC_IVAR___BRLTBrailleModelInternal_braille;
      v41 = *(v4 + OBJC_IVAR___BRLTBrailleModelInternal_braille);
      v42 = *((*v10 & *v41) + 0xC0);
      v43 = v41;
      v44 = v42(v37, v39, 0);

      v45 = *(v4 + v40);
      *(v4 + v40) = v44;

      if (v37 == v39)
      {
        v46 = v4 + OBJC_IVAR___BRLTBrailleModelInternal_stageRange;
        *v46 = v37;
        *(v46 + 1) = v37;
        v46[16] = 0;
      }

      *(v4 + OBJC_IVAR___BRLTBrailleModelInternal_brailleSelectionDirty) = 0;
      return sub_241E221E8(0);
    }
  }

  return result;
}

uint64_t sub_241E1D518(uint64_t a1)
{
  v2 = OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel;
  v3 = *(v1 + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel);
  if (!v3)
  {
    return 0;
  }

  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x288);
  v6 = *(v1 + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel);

  if ((v5(v7) & 1) == 0)
  {
    goto LABEL_7;
  }

  v8 = *(v1 + v2);
  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = *(*v8 + 232);

  v11 = v9(v10);

  if (v11)
  {
    goto LABEL_7;
  }

  if (!__OFSUB__(a1, 1))
  {
    a1 = (a1 - 1) & ~((a1 - 1) >> 63);
LABEL_7:
    v13 = (*(*v3 + 440))(a1);
    v14 = [objc_allocWithZone(BRLTBrailleUIFormattingOptions) init];
    sub_241E221E8(v14);

    return v13 & 1;
  }

  __break(1u);
  return result;
}

void sub_241E1D6B0()
{
  v1 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_braille) + OBJC_IVAR___BRLTEditStringInternal_selection;
  if (*(v1 + 16))
  {
    return;
  }

  v2 = v0;
  v3 = v0 + OBJC_IVAR___BRLTBrailleModelInternal_editingBrailleRange;
  if (*(v0 + OBJC_IVAR___BRLTBrailleModelInternal_editingBrailleRange + 16))
  {
    return;
  }

  v4 = v0 + OBJC_IVAR___BRLTBrailleModelInternal_editingScriptRange;
  if (*(v0 + OBJC_IVAR___BRLTBrailleModelInternal_editingScriptRange + 16))
  {
    return;
  }

  v6 = *v1;
  v5 = *(v1 + 8);
  v7 = *v3;
  v8 = *(v3 + 1);
  v9 = *v4;
  v10 = *(v4 + 1);
  sub_241E1DE3C(&v53);
  if ((*((*MEMORY[0x277D85000] & *v0) + 0x380))())
  {
    if (v6 < v7)
    {
      v11 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_translationResult + 16);
      v66 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_translationResult);
      v67 = v11;
      v68 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_translationResult + 32);
      v74 = v66;
      v64[0] = v11;
      *&v72 = v68;
      sub_241E224C0(&v74, &v61);
      sub_241E224C0(v64, &v61);
      sub_241E2251C(&v72, &v61);
      v6 = sub_241E11100(v6);
      sub_241E1041C(&v74);
      sub_241E1041C(v64);
      sub_241E10470(&v72);
      goto LABEL_23;
    }

    if (v8 >= v6)
    {
      if (__OFSUB__(v6, v7))
      {
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v16 = sub_241E11480(v6 - v7);
      v6 = v9 + v16;
      if (!__OFADD__(v9, v16))
      {
LABEL_23:
        if (v5 < v7)
        {
          v27 = *(v2 + OBJC_IVAR___BRLTBrailleModelInternal_translationResult + 16);
          v61 = *(v2 + OBJC_IVAR___BRLTBrailleModelInternal_translationResult);
          v62 = v27;
          v63 = *(v2 + OBJC_IVAR___BRLTBrailleModelInternal_translationResult + 32);
          v80[0] = v61;
          v59[0] = v27;
          *&v76 = v63;
          sub_241E224C0(v80, &v78);
          sub_241E224C0(v59, &v78);
          sub_241E2251C(&v76, &v78);
          v5 = sub_241E11100(v5);
          sub_241E1041C(v80);
          sub_241E1041C(v59);
          sub_241E10470(&v76);
LABEL_40:
          if (v5 >= v6)
          {
            goto LABEL_41;
          }

          __break(1u);
          goto LABEL_47;
        }

        if (v8 >= v5)
        {
          if (__OFSUB__(v5, v7))
          {
LABEL_51:
            __break(1u);
            goto LABEL_52;
          }

          v31 = sub_241E11480(v5 - v7);
          v5 = v9 + v31;
          if (!__OFADD__(v9, v31))
          {
            goto LABEL_40;
          }

          __break(1u);
        }

        else
        {
          v28 = sub_241E35874();
          v29 = v10 - v9;
          if (__OFSUB__(v10, v9))
          {
LABEL_50:
            __break(1u);
            goto LABEL_51;
          }

          v8 = v28 - v29;
          if (__OFSUB__(v28, v29))
          {
LABEL_52:
            __break(1u);
            goto LABEL_53;
          }

          if (v3[16] & 1) != 0 || (v4[16])
          {
            v30 = 0;
            goto LABEL_39;
          }
        }

        v32 = *v3;
        v33 = *(v3 + 1);
        v52 = v32;
        v36 = v4;
        v35 = *v4;
        v34 = *(v36 + 1);
        v37 = *(v2 + OBJC_IVAR___BRLTBrailleModelInternal_translationResult + 16);
        v61 = *(v2 + OBJC_IVAR___BRLTBrailleModelInternal_translationResult);
        v62 = v37;
        v63 = *(v2 + OBJC_IVAR___BRLTBrailleModelInternal_translationResult + 32);
        v75 = v61;
        v76 = v37;
        v77 = v63;
        sub_241E224C0(&v75, v59);
        sub_241E224C0(&v76, v59);
        sub_241E2251C(&v77, v59);
        v38 = sub_241E10280(v35, v34);
        v40 = v39;
        sub_241E1041C(&v75);
        sub_241E1041C(&v76);
        sub_241E10470(&v77);
        v41 = v33 - v52;
        if (__OFSUB__(v33, v52))
        {
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

        v22 = __OFSUB__(v5, v41);
        v42 = v5 - v41;
        if (v22)
        {
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        v43 = v40 - v38;
        if (__OFSUB__(v40, v38))
        {
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        v30 = v42 + v43;
        if (__OFADD__(v42, v43))
        {
LABEL_62:
          __break(1u);
          return;
        }

LABEL_39:
        v44 = *(v2 + OBJC_IVAR___BRLTBrailleModelInternal_translationResult + 16);
        v59[0] = *(v2 + OBJC_IVAR___BRLTBrailleModelInternal_translationResult);
        v59[1] = v44;
        v60 = *(v2 + OBJC_IVAR___BRLTBrailleModelInternal_translationResult + 32);
        v78 = v59[0];
        v80[0] = v44;
        v79 = v60;
        sub_241E224C0(&v78, &v58);
        sub_241E224C0(v80, &v58);
        sub_241E2251C(&v79, &v58);
        v45 = sub_241E11100(v30);
        sub_241E1041C(&v78);
        sub_241E1041C(v80);
        sub_241E10470(&v79);
        v5 = v45 + v8;
        if (__OFADD__(v45, v8))
        {
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

        goto LABEL_40;
      }

      __break(1u);
    }

    else
    {
      v12 = sub_241E35874();
      v13 = v10 - v9;
      if (__OFSUB__(v10, v9))
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      if (__OFSUB__(v12, v13))
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v14 = &OBJC_IVAR___BRLTTableEnumerator__supportedLocales;
      v51 = v12 - v13;
      if (v3[16] & 1) != 0 || (v4[16])
      {
        v15 = 0;
        goto LABEL_22;
      }
    }

    v49 = *(v3 + 1);
    v50 = *v3;
    v46 = *v4;
    v47 = *(v4 + 1);
    v17 = v0 + *(v14 + 171);
    v18 = *(v17 + 1);
    v66 = *v17;
    v67 = v18;
    v68 = *(v17 + 4);
    v69 = v66;
    v70 = v18;
    v71 = v68;
    sub_241E224C0(&v69, v64);
    sub_241E224C0(&v70, v64);
    sub_241E2251C(&v71, v64);
    v48 = sub_241E10280(v46, v47);
    v20 = v19;
    sub_241E1041C(&v69);
    sub_241E1041C(&v70);
    sub_241E10470(&v71);
    v21 = v49 - v50;
    if (__OFSUB__(v49, v50))
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v22 = __OFSUB__(v6, v21);
    v23 = v6 - v21;
    if (v22)
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v24 = v20 - v48;
    if (__OFSUB__(v20, v48))
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v15 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

LABEL_22:
    v25 = *(v2 + OBJC_IVAR___BRLTBrailleModelInternal_translationResult + 16);
    v64[0] = *(v2 + OBJC_IVAR___BRLTBrailleModelInternal_translationResult);
    v64[1] = v25;
    v65 = *(v2 + OBJC_IVAR___BRLTBrailleModelInternal_translationResult + 32);
    v72 = v64[0];
    v74 = v25;
    v73 = v65;
    sub_241E224C0(&v72, &v61);
    sub_241E224C0(&v74, &v61);
    sub_241E2251C(&v73, &v61);
    v26 = sub_241E11100(v15);
    sub_241E1041C(&v72);
    sub_241E1041C(&v74);
    sub_241E10470(&v73);
    v6 = v26 + v51;
    if (__OFADD__(v26, v51))
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    goto LABEL_23;
  }

  v5 = 0;
  v6 = 0;
LABEL_41:
  if ((*((*MEMORY[0x277D85000] & *v2) + 0x3E0))())
  {
    sub_241E21768(v9, v10, 0, v54, *(&v54 + 1), v6, v5, 0);
    v58 = v53;
    sub_241E1041C(&v58);

    *&v57 = v55;
    sub_241E10470(&v57);
  }

  else
  {
    v58 = v53;
    sub_241E1041C(&v58);
    v57 = v54;
    sub_241E1041C(&v57);
    v56 = v55;
    sub_241E10470(&v56);
    sub_241E21768(0, 0, 1, 0, 0xE000000000000000, v6, v5, 0);
  }

  sub_241E1E11C();
}

void sub_241E1DCE8()
{
  v1 = (v0 + OBJC_IVAR___BRLTBrailleModelInternal_stageRange);
  if ((*(v0 + OBJC_IVAR___BRLTBrailleModelInternal_stageRange + 16) & 1) == 0)
  {
    v2 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_inputTranslator);
    if (v2)
    {
      v4 = *v1;
      v3 = v1[1];
      v5 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_script) + OBJC_IVAR___BRLTEditStringInternal_selection;
      if (*(v5 + 16))
      {
        v6 = 0;
      }

      else
      {
        v6 = *(v5 + 8);
      }

      if ((*(v5 + 16) & 1) != 0 || *v5 == *(v5 + 8))
      {
        v7 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_braille);
        v8 = v2;
        v9 = v7;
        v10 = sub_241E0F2E4();
        sub_241E104D8(v9, v4, v3, v10 & 1, &v14);

        v11 = v15;
        v12 = v16;
        v19 = v14;
        sub_241E1041C(&v19);
        v18 = v17;
        sub_241E10470(&v18);
        v13 = sub_241E35874();
        if (__OFADD__(v6, v13))
        {
          __break(1u);
        }

        else
        {
          sub_241E21768(v6, v6, 0, v11, v12, v6 + v13, v6 + v13, 0);

          sub_241E1E11C();
        }
      }
    }
  }
}

void sub_241E1DE3C(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR___BRLTBrailleModelInternal_editingBrailleRange);
  if ((*(v1 + OBJC_IVAR___BRLTBrailleModelInternal_editingBrailleRange + 16) & 1) != 0 || (v4 = *(v1 + OBJC_IVAR___BRLTBrailleModelInternal_outputTranslator)) == 0 || (v5 = *(v1 + OBJC_IVAR___BRLTBrailleModelInternal_inputTranslator)) == 0)
  {
    sub_241E0FBF0(0, 0xE000000000000000, 0, 0xE000000000000000, MEMORY[0x277D84F90], &v38);
    goto LABEL_12;
  }

  v7 = *v3;
  v6 = v3[1];
  v8 = (v1 + OBJC_IVAR___BRLTBrailleModelInternal_stageRange);
  if ((*(v1 + OBJC_IVAR___BRLTBrailleModelInternal_stageRange + 16) & 1) != 0 || (v10 = *v8, v9 = v8[1], *v8 == v9))
  {
    v24 = *(v1 + OBJC_IVAR___BRLTBrailleModelInternal_braille);
    v25 = v4;
    v26 = v5;
    v27 = v24;
    v28 = sub_241E0F2E4();
    sub_241E104D8(v27, v7, v6, v28 & 1, &v38);

    goto LABEL_12;
  }

  v11 = v10 < v7 || v6 < v9;
  v29 = v6;
  if (!v11)
  {
    v12 = OBJC_IVAR___BRLTBrailleModelInternal_braille;
    v13 = *(v1 + OBJC_IVAR___BRLTBrailleModelInternal_braille);
    v14 = v4;
    v15 = v5;
    v16 = v13;
    v17 = sub_241E0F2E4();
    sub_241E104D8(v16, v7, v10, v17 & 1, v30);

    v18 = *(v1 + v12);
    v19 = sub_241E0F2E4();
    sub_241E104D8(v18, v10, v9, v19 & 1, v32);

    v20 = *(v1 + v12);
    v21 = sub_241E0F2E4();
    sub_241E104D8(v20, v9, v29, v21 & 1, v34);

    sub_241E0FC4C(v32, v36);
    v52 = v30[0];
    sub_241E1041C(&v52);
    v51 = v30[1];
    sub_241E1041C(&v51);
    v50 = v31;
    sub_241E10470(&v50);
    v49 = v32[0];
    sub_241E1041C(&v49);
    v48 = v32[1];
    sub_241E1041C(&v48);
    v47 = v33;
    sub_241E10470(&v47);
    sub_241E0FC4C(v34, &v38);
    v46 = v36[0];
    sub_241E1041C(&v46);
    v45 = v36[1];
    sub_241E1041C(&v45);
    v44 = v37;
    sub_241E10470(&v44);
    v43 = v34[0];
    sub_241E1041C(&v43);
    v42 = v34[1];
    sub_241E1041C(&v42);
    v41 = v35;
    sub_241E10470(&v41);

LABEL_12:
    v22 = v39;
    v23 = v40;
    *a1 = v38;
    *(a1 + 16) = v22;
    *(a1 + 24) = v23;
    return;
  }

  __break(1u);
}

void sub_241E1E11C()
{
  v1 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_outputTranslator);
  if (v1)
  {
    v2 = v0;
    v3 = MEMORY[0x277D85000];
    v4 = *((*MEMORY[0x277D85000] & *v0) + 0x260);
    v29 = v1;
    if (v4())
    {
    }

    else
    {
      v5 = *((*v3 & *v0) + 0x200);
      v6 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_script);
      v7 = v5();
      sub_241E0FDB8(v6, v7 & 1, v30);
      v8 = v30[0];
      v9 = v30[1];
      v10 = v30[2];
      v11 = v30[3];
      v28 = v31;

      v12 = OBJC_IVAR___BRLTBrailleModelInternal_braille;
      v13 = *(v2 + OBJC_IVAR___BRLTBrailleModelInternal_braille);
      *(v2 + OBJC_IVAR___BRLTBrailleModelInternal_braille) = v8;

      v14 = v2 + OBJC_IVAR___BRLTBrailleModelInternal_translationResult;
      v15 = *(v2 + OBJC_IVAR___BRLTBrailleModelInternal_translationResult + 8);
      v17 = *(v2 + OBJC_IVAR___BRLTBrailleModelInternal_translationResult + 24);
      v16 = *(v2 + OBJC_IVAR___BRLTBrailleModelInternal_translationResult + 32);
      *v14 = v9;
      *(v14 + 1) = v10;
      *(v14 + 2) = v11;
      *(v14 + 24) = v28;

      if (((*((*v3 & *v2) + 0x348))(v18) & 1) == 0)
      {
        v19 = *(v2 + v12);
        if (*(v19 + OBJC_IVAR___BRLTEditStringInternal_selection + 16) == 1)
        {
          v20 = *((*v3 & *v19) + 0xC0);
          v21 = v19;
          v22 = v20(0, 0, 0);

          v23 = *(v2 + v12);
          *(v2 + v12) = v22;
        }
      }

      v24 = OBJC_IVAR___BRLTBrailleModelInternal_brailleStringDirty;
      swift_beginAccess();
      *(v2 + v24) = 0;
      *(v2 + OBJC_IVAR___BRLTBrailleModelInternal_brailleSelectionDirty) = 0;
      v25 = v2 + OBJC_IVAR___BRLTBrailleModelInternal_editingBrailleRange;
      *v25 = 0;
      *(v25 + 1) = 0;
      v25[16] = 1;
      v26 = v2 + OBJC_IVAR___BRLTBrailleModelInternal_editingScriptRange;
      *v26 = 0;
      *(v26 + 1) = 0;
      v26[16] = 1;
      v27 = v2 + OBJC_IVAR___BRLTBrailleModelInternal_stageRange;
      *v27 = 0;
      *(v27 + 1) = 0;
      v27[16] = 1;
      sub_241E1E3DC();
    }
  }
}

void sub_241E1E3DC()
{
  v1 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_braille);
  v2 = (v1 + OBJC_IVAR___BRLTEditStringInternal_selection);
  if ((*(v1 + OBJC_IVAR___BRLTEditStringInternal_selection + 16) & 1) == 0)
  {
    v3 = v0;
    v4 = *v2;
    v5 = v2[1];
    v6 = MEMORY[0x277D85000];
    v7 = *((*MEMORY[0x277D85000] & *v1) + 0x90);
    v8 = v1;
    v9 = v7();
    v11 = v10;
    v13 = v12;

    v14 = v3 + OBJC_IVAR___BRLTBrailleModelInternal_editingBrailleRange;
    *v14 = v9;
    *(v14 + 1) = v11;
    v14[16] = v13 & 1;
    v15 = (v3 + OBJC_IVAR___BRLTBrailleModelInternal_translationResult);
    v16 = *(v3 + OBJC_IVAR___BRLTBrailleModelInternal_translationResult + 16);
    v26[1] = *(v3 + OBJC_IVAR___BRLTBrailleModelInternal_translationResult);
    v26[2] = v16;
    v27 = *(v3 + OBJC_IVAR___BRLTBrailleModelInternal_translationResult + 32);
    if (v13)
    {
      __break(1u);
    }

    else
    {
      v17 = v15[1];
      v28 = *v15;
      v29 = v17;
      v30 = v27;
      sub_241E224C0(&v28, v26);
      sub_241E224C0(&v29, v26);
      sub_241E2251C(&v30, v26);
      v18 = sub_241E111BC(v9, v11);
      v20 = v19;
      sub_241E1041C(&v28);
      sub_241E1041C(&v29);
      v21 = sub_241E10470(&v30);
      v22 = v3 + OBJC_IVAR___BRLTBrailleModelInternal_editingScriptRange;
      *v22 = v18;
      *(v22 + 1) = v20;
      v22[16] = 0;
      if ((*((*v6 & *v3) + 0x4F0))(v21))
      {
        v23 = (*((*v6 & *v3) + 0x4E8))();
        v24 = v3 + OBJC_IVAR___BRLTBrailleModelInternal_stageRange;
        if (v23)
        {
          v25 = v4;
        }

        else
        {
          v25 = v5;
        }

        *v24 = v4;
        *(v24 + 1) = v25;
        v24[16] = 0;
      }
    }
  }
}

uint64_t sub_241E1E5E0()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0x4F8);
  if (v3())
  {
    v4 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_candidateManager);
    if (v4)
    {
      v5 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_candidateManager);

      if ((v3)(v6))
      {
        (*(*v4 + 320))();
        v7 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_brailleCache);
        if (v7)
        {
          v8 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_braille);
          *(v1 + OBJC_IVAR___BRLTBrailleModelInternal_braille) = v7;
          v9 = v7;
        }

        else
        {
          sub_241E1E11C();
        }

        sub_241E221E8(0);
      }
    }
  }

  else
  {
    if (((*((*v2 & *v0) + 0x728))() & 1) == 0)
    {
      (*((*v2 & *v0) + 0x540))();
      return 0;
    }

    sub_241E20BA4();
  }

  return 1;
}

uint64_t sub_241E1E7B4()
{
  v1 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel);
  if (v1)
  {
    v2 = *(*v1 + 496);
    v3 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel);

    if (v2(v4))
    {
      v5 = [objc_allocWithZone(BRLTBrailleUIFormattingOptions) init];
      sub_241E221E8(v5);

      return 1;
    }

    return 0;
  }

  v7 = MEMORY[0x277D85000];
  v8 = (*((*MEMORY[0x277D85000] & *v0) + 0x4F8))();
  v9 = *v7 & *v0;
  if (v8)
  {
    (*((*v7 & *v0) + 0x708))();
    return 1;
  }

  if (((*((*v7 & *v0) + 0x4E8))() & 1) == 0 || (*(v0 + OBJC_IVAR___BRLTBrailleModelInternal_stageRange + 16) & 1) != 0 || *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_stageRange) == *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_stageRange + 8))
  {
    if ((*((*v7 & *v0) + 0x728))())
    {
      sub_241E20BA4();
      return 1;
    }

    (*((*v7 & *v0) + 0x540))();
    return 0;
  }

  if (((*((*v7 & *v0) + 0x260))() & 1) == 0)
  {
    if ((*((*v7 & *v0) + 0x380))())
    {
      *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_switchedToEditableWithUncommittedBraille) = 0;
    }

    v10 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_contentLock);
    [v10 lock];
    if (*(v0 + OBJC_IVAR___BRLTBrailleModelInternal_editScript) == 1)
    {
      sub_241E1DCE8();
    }

    else
    {
      sub_241E1D6B0();
    }

    [v10 unlock];
  }

  sub_241E221E8(0);
  return 1;
}

void sub_241E1EAE4()
{
  v1 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v0) + 0x260))() & 1) == 0 && ((*((*v1 & *v0) + 0x4E8))())
  {
    if ((*((*v1 & *v0) + 0x728))())
    {

      sub_241E20BA4();
    }

    else
    {

      sub_241E206A0();
    }
  }
}

uint64_t sub_241E1ED14(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR___BRLTBrailleModelInternal_translationResult;
  v4 = *(v1 + OBJC_IVAR___BRLTBrailleModelInternal_translationResult + 16);
  v14 = *(v1 + OBJC_IVAR___BRLTBrailleModelInternal_translationResult);
  v15 = v4;
  v16 = *(v1 + OBJC_IVAR___BRLTBrailleModelInternal_translationResult + 32);
  v17 = v14;
  v18 = v4;
  v19 = v16;
  sub_241E224C0(&v17, v12);
  sub_241E224C0(&v18, v12);
  sub_241E2251C(&v19, v12);
  v5 = sub_241E11480(a1);
  sub_241E1041C(&v17);
  sub_241E1041C(&v18);
  result = sub_241E10470(&v19);
  v7 = *(v3 + 16);
  v12[0] = *v3;
  v12[1] = v7;
  v13 = *(v3 + 32);
  v20 = v12[0];
  v21 = v7;
  v22 = v13;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
  }

  else if (v5 + 1 >= v5)
  {
    sub_241E224C0(&v20, v11);
    sub_241E224C0(&v21, v11);
    sub_241E2251C(&v22, v11);
    v8 = sub_241E111BC(v5, v5 + 1);
    v10 = v9;
    sub_241E1041C(&v20);
    sub_241E1041C(&v21);
    sub_241E10470(&v22);
    return sub_241E2CC64(v8, v10, 0);
  }

  __break(1u);
  return result;
}

uint64_t sub_241E1EFA4()
{
  v1 = v0;
  v2 = sub_241E357A4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20]();
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_candidateManager);
  if (v8)
  {
    v9 = *((*MEMORY[0x277D85000] & *v0) + 0x4F8);
    v10 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_candidateManager);

    if ((v9(v11) & 1) != 0 || (v12 = (v0 + OBJC_IVAR___BRLTBrailleModelInternal_stageRange), *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_stageRange + 16) == 1) || (v13 = *v12, v14 = v12[1], *v12 == v14) || (v15 = *(v1 + OBJC_IVAR___BRLTBrailleModelInternal_inputTranslator)) == 0)
    {
    }

    else
    {
      v16 = OBJC_IVAR___BRLTBrailleModelInternal_braille;
      v17 = *(v1 + OBJC_IVAR___BRLTBrailleModelInternal_braille);
      v31 = *(v1 + OBJC_IVAR___BRLTBrailleModelInternal_brailleCache);
      *(v1 + OBJC_IVAR___BRLTBrailleModelInternal_brailleCache) = v17;
      v18 = v15;
      v19 = v17;

      v20 = *(v1 + v16);
      v21 = sub_241E0F2E4();
      v31 = v18;
      sub_241E104D8(v20, v13, v14, v21 & 1, &v33);

      v23 = v34;
      v22 = v35;
      v38 = v33;
      sub_241E1041C(&v38);
      v37 = v36;
      sub_241E10470(&v37);
      (*(*v8 + 312))(v23, v22);
      sub_241E1FC6C();
      v24 = sub_241E247EC();
      swift_beginAccess();
      (*(v3 + 16))(v7, v24, v2);

      v25 = sub_241E35784();
      v26 = sub_241E359F4();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v32 = v28;
        *v27 = 136315138;
        v29 = sub_241E22990(v23, v22, &v32);

        *(v27 + 4) = v29;
        _os_log_impl(&dword_241DFD000, v25, v26, "Start candidate selection with stageScript = %s", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v28);
        MEMORY[0x245D02050](v28, -1, -1);
        MEMORY[0x245D02050](v27, -1, -1);
      }

      else
      {
      }

      return (*(v3 + 8))(v7, v2);
    }
  }

  return result;
}

void sub_241E1F34C()
{
  v1 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_candidateManager);
  if (v1)
  {
    v2 = *((*MEMORY[0x277D85000] & *v0) + 0x4F8);
    v3 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_candidateManager);

    if (v2(v4) & 1) != 0 && ((*(*v1 + 328))())
    {
      (*(*v1 + 336))();
      sub_241E1FC6C();
    }
  }
}

void sub_241E1F4B0()
{
  v1 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_candidateManager);
  if (v1)
  {
    v2 = *((*MEMORY[0x277D85000] & *v0) + 0x4F8);
    v3 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_candidateManager);

    if (v2(v4) & 1) != 0 && ((*(*v1 + 344))())
    {
      (*(*v1 + 352))();
      sub_241E1FC6C();
    }
  }
}

void sub_241E1F614()
{
  v1 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_candidateManager);
  if (!v1)
  {
    return;
  }

  v2 = v0;
  v3 = MEMORY[0x277D85000];
  v4 = *((*MEMORY[0x277D85000] & *v0) + 0x4F8);
  v5 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_candidateManager);

  if (v4(v6))
  {
    v7 = OBJC_IVAR___BRLTBrailleModelInternal_script;
    v8 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_script) + OBJC_IVAR___BRLTEditStringInternal_selection;
    if ((*(v8 + 16) & 1) == 0)
    {
      v9 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_outputTranslator);
      if (v9)
      {
        v10 = *v8;
        v11 = *(v8 + 8);
        v12 = *(*v1 + 376);
        v44 = v9;
        v13 = v12();
        v15 = v14;
        v16 = sub_241E35874();
        if (__OFADD__(v10, v16))
        {
          __break(1u);
        }

        else
        {
          sub_241E21768(v10, v11, 0, v13, v15, v10 + v16, v10 + v16, 0);

          v18 = (*(*v1 + 384))(v17);
          v19 = (*(*v1 + 400))(v18);
          v21 = v20;
          if (v19)
          {
            v22 = 0;
          }

          else
          {
            v22 = v20 == 0xE000000000000000;
          }

          if (v22 || (v23 = v19, (sub_241E35B64() & 1) != 0))
          {

            v24 = *(v2 + OBJC_IVAR___BRLTBrailleModelInternal_brailleCache);
            *(v2 + OBJC_IVAR___BRLTBrailleModelInternal_brailleCache) = 0;

            (*(*v1 + 320))();
            sub_241E1E11C();
            sub_241E221E8(0);

            return;
          }

          v25 = sub_241E0F2DC();
          v26 = sub_241E0F2E4();
          sub_241E0F2EC(v23, v21, v25 & 1, 0, v26 & 1, &v46);
          v42 = v47;
          v43 = v48;
          v51 = v46;
          sub_241E1041C(&v51);
          v50 = v49;
          sub_241E10470(&v50);
          v27 = *(v2 + v7);
          v28 = sub_241E0F2DC();
          sub_241E0FDB8(v27, v28 & 1, &v45);
          v29 = v45;

          v30 = OBJC_IVAR___BRLTBrailleModelInternal_brailleCache;
          v31 = *(v2 + OBJC_IVAR___BRLTBrailleModelInternal_brailleCache);
          *(v2 + OBJC_IVAR___BRLTBrailleModelInternal_brailleCache) = v29;
          v32 = v29;

          v33 = *&v32[OBJC_IVAR___BRLTEditStringInternal_selection];
          LODWORD(v29) = v32[OBJC_IVAR___BRLTEditStringInternal_selection + 16];

          if (v29 == 1)
          {

LABEL_26:
            (*(*v1 + 312))(v23, v21);

            sub_241E1FC6C();

            return;
          }

          v34 = *(v2 + v30);
          if (v34)
          {
            v41 = v34;
            v35 = sub_241E35874();
            if (__OFADD__(v33, v35))
            {
LABEL_31:
              __break(1u);
              return;
            }

            v36 = (*((*v3 & *v41) + 0xB8))(v33, v33, 0, v42, v43, v33 + v35);

            v37 = *(v2 + v30);
          }

          else
          {
            v37 = 0;
            v36 = 0;
          }

          *(v2 + v30) = v36;

          v38 = sub_241E35874();

          v39 = v33 + v38;
          if (!__OFADD__(v33, v38))
          {
            if (v39 >= v33)
            {
              v40 = v2 + OBJC_IVAR___BRLTBrailleModelInternal_stageRange;
              *v40 = v33;
              *(v40 + 1) = v39;
              v40[16] = 0;
              goto LABEL_26;
            }

            goto LABEL_30;
          }
        }

        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }
    }
  }
}

void sub_241E1FB4C()
{
  v1 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_candidateManager);
  if (v1)
  {
    v2 = v0;
    v3 = *((*MEMORY[0x277D85000] & *v0) + 0x4F8);
    v4 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_candidateManager);

    if (v3(v5))
    {
      (*(*v1 + 320))();
      v6 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_brailleCache);
      if (v6)
      {
        v7 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_braille);
        *(v2 + OBJC_IVAR___BRLTBrailleModelInternal_braille) = v6;
        v8 = v6;
      }

      else
      {
        sub_241E1E11C();
      }

      sub_241E221E8(0);
    }
  }
}

uint64_t sub_241E1FC6C()
{
  v1 = sub_241E357A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  result = MEMORY[0x28223BE20]();
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_candidateManager);
  if (v7)
  {
    if (*(v0 + OBJC_IVAR___BRLTBrailleModelInternal_candidateSelectionLanguage + 8))
    {
      v8 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_outputTranslator);
      if (v8)
      {
        v43 = v0;
        v41 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_candidateSelectionLanguage);
        v9 = *(*v7 + 184);
        v10 = v8;

        result = v9(v11);
        if (__OFADD__(result, 1))
        {
          __break(1u);
        }

        else
        {
          *&v48 = result + 1;
          v12 = sub_241E35B54();
          v14 = v13;
          v15 = sub_241E0F2DC();
          v16 = sub_241E0F2E4();
          sub_241E0F2EC(v12, v14, v15 & 1, 0, v16 & 1, v46);

          v55 = v46[0];
          v56 = v46[1];
          sub_241E1041C(&v55);
          v54 = v47;
          v17 = sub_241E10470(&v54);
          v18 = (*(*v7 + 368))(v17);
          v20 = v19;
          v21 = v10;
          v22 = sub_241E0F2DC();
          v23 = sub_241E0F2E4();
          v42 = v21;
          sub_241E0F2EC(v18, v20, v22 & 1, 0, v23 & 1, &v48);

          v24 = v49;
          v25 = v50;
          v53 = v48;
          sub_241E1041C(&v53);
          v52 = v51;
          sub_241E10470(&v52);
          v45 = v56;

          MEMORY[0x245D01460](0x80A0E2B7A3E2, 0xA600000000000000);
          sub_241E1041C(&v56);

          MEMORY[0x245D01460](v24, v25);

          MEMORY[0x245D01460](0xBEA3E280A0E2, 0xA600000000000000);

          v26 = v45;
          type metadata accessor for BRLTEditString();

          v27 = sub_241E12328(v26, *(&v26 + 1), 0, 0, 1, 0, 0, 0, MEMORY[0x277D84F90]);
          v28 = v43;
          v29 = *(v43 + OBJC_IVAR___BRLTBrailleModelInternal_braille);
          *(v43 + OBJC_IVAR___BRLTBrailleModelInternal_braille) = v27;

          v30 = sub_241E221E8(0);
          v31 = (*((*MEMORY[0x277D85000] & *v28) + 0x188))(v30);
          if (v31)
          {
            v32 = v31;
            (*(*v7 + 360))();
            v33 = sub_241E357E4();

            v34 = sub_241E357E4();

            [v32 requestSpeech:v33 language:v34];

            swift_unknownObjectRelease();
          }

          else
          {
          }

          v35 = sub_241E247EC();
          swift_beginAccess();
          (*(v2 + 16))(v6, v35, v1);

          v36 = sub_241E35784();
          v37 = sub_241E359F4();

          if (os_log_type_enabled(v36, v37))
          {
            v38 = swift_slowAlloc();
            v39 = swift_slowAlloc();
            v44 = v39;
            *v38 = 136315138;
            v40 = sub_241E22990(v26, *(&v26 + 1), &v44);

            *(v38 + 4) = v40;
            _os_log_impl(&dword_241DFD000, v36, v37, "Show current candidate description: %s", v38, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v39);
            MEMORY[0x245D02050](v39, -1, -1);
            MEMORY[0x245D02050](v38, -1, -1);
          }

          else
          {
          }

          return (*(v2 + 8))(v6, v1);
        }
      }
    }
  }

  return result;
}

uint64_t sub_241E2025C()
{
  v1 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_candidateSelectionLanguage + 8);
  if (v1 && (*(v0 + OBJC_IVAR___BRLTBrailleModelInternal_candidateSelectionLanguage) == 7237738 ? (v2 = v1 == 0xE300000000000000) : (v2 = 0), v2 || (sub_241E35B64() & 1) != 0))
  {
    v3 = 0;
    v4 = (v0 + OBJC_IVAR___BRLTBrailleModelInternal_stageRange);
    if ((*(v0 + OBJC_IVAR___BRLTBrailleModelInternal_stageRange + 16) & 1) == 0)
    {
      v5 = *v4;
      v6 = v4[1];
      if (*v4 != v6)
      {
        v7 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_braille);
        v8 = *((*MEMORY[0x277D85000] & *v7) + 0xE0);
        v9 = v7;
        v8(v5, v6);

        v10 = sub_241E358D4();
        if (v11)
        {
          v12 = v11;
          v3 = 0;
          do
          {
            if (v10 == 10920162 && v12 == 0xA300000000000000 || (v14 = v10, (sub_241E35B64() & 1) != 0))
            {

              v3 = 1;
            }

            else if (v14 == 11837666 && v12 == 0xA300000000000000)
            {

              v3 = 0;
            }

            else
            {
              v15 = sub_241E35B64();

              v3 &= v15 ^ 1;
            }

            v10 = sub_241E358D4();
            v12 = v13;
          }

          while (v13);
        }

        else
        {
          v3 = 0;
        }
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_241E20490()
{
  v1 = OBJC_IVAR___BRLTBrailleModelInternal_isWordDescriptionActive;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_241E20528(char a1)
{
  v3 = OBJC_IVAR___BRLTBrailleModelInternal_isWordDescriptionActive;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_241E20578@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x728))();
  *a2 = result & 1;
  return result;
}

void sub_241E206A0()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v0) + 0x4E8))() & 1) != 0 && ((*((*v2 & *v0) + 0x4F8))() & 1) == 0 && ((*(v0 + OBJC_IVAR___BRLTBrailleModelInternal_stageRange + 16) & 1) != 0 || *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_stageRange) == *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_stageRange + 8)) && ((*((*v2 & *v0) + 0x728))() & 1) == 0)
  {
    (*((*v2 & *v0) + 0x730))(1);
    v3 = OBJC_IVAR___BRLTBrailleModelInternal_braille;
    v4 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_braille);
    v5 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_brailleCache);
    *(v1 + OBJC_IVAR___BRLTBrailleModelInternal_brailleCache) = v4;
    v6 = v4;

    v7 = *(v1 + OBJC_IVAR___BRLTBrailleModelInternal_wordDescriptionManager);
    v17 = *(v1 + OBJC_IVAR___BRLTBrailleModelInternal_translationResult + 32);
    v8 = *(v1 + OBJC_IVAR___BRLTBrailleModelInternal_translationResult + 16);
    v16[0] = *(v1 + OBJC_IVAR___BRLTBrailleModelInternal_translationResult);
    v16[1] = v8;
    v18 = v16[0];
    v19 = v8;
    v9 = *(v1 + v3);
    v20 = v17;
    v10 = (v9 + OBJC_IVAR___BRLTEditStringInternal_selection);
    v11 = *v10;
    v12 = v10[1];
    v13 = *(v10 + 16);
    v14 = *(*v7 + 216);

    sub_241E224C0(&v18, v15);
    sub_241E224C0(&v19, v15);
    sub_241E2251C(&v20, v15);
    v14(v16, v11, v12, v13);
    sub_241E1041C(&v18);
    sub_241E1041C(&v19);
    sub_241E10470(&v20);

    sub_241E20CC4();
  }
}

void sub_241E208EC()
{
  if ((*((*MEMORY[0x277D85000] & *v0) + 0x728))())
  {
    v1 = OBJC_IVAR___BRLTBrailleModelInternal_wordDescriptionManager;
    v2 = *(**(v0 + OBJC_IVAR___BRLTBrailleModelInternal_wordDescriptionManager) + 224);

    LOBYTE(v2) = v2(v3);

    if (v2)
    {
      v4 = *(**(v0 + v1) + 240);

      v4(v5);

      sub_241E20CC4();
    }
  }
}

void sub_241E20A48()
{
  if ((*((*MEMORY[0x277D85000] & *v0) + 0x728))())
  {
    v1 = OBJC_IVAR___BRLTBrailleModelInternal_wordDescriptionManager;
    v2 = *(**(v0 + OBJC_IVAR___BRLTBrailleModelInternal_wordDescriptionManager) + 232);

    LOBYTE(v2) = v2(v3);

    if (v2)
    {
      v4 = *(**(v0 + v1) + 248);

      v4(v5);

      sub_241E20CC4();
    }
  }
}

void sub_241E20BA4()
{
  v1 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v0) + 0x728))())
  {
    (*((*v1 & *v0) + 0x730))(0);
    v2 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_brailleCache);
    if (v2)
    {
      v3 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_braille);
      *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_braille) = v2;
      v4 = v2;

      sub_241E221E8(0);
    }

    else
    {
      sub_241E1E11C();

      sub_241E221E8(0);
    }
  }
}

void sub_241E20CC4()
{
  v1 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_outputTranslator);
  if (v1)
  {
    type metadata accessor for BRLTEditString();
    v2 = OBJC_IVAR___BRLTBrailleModelInternal_wordDescriptionManager;
    v3 = *(**(v0 + OBJC_IVAR___BRLTBrailleModelInternal_wordDescriptionManager) + 256);
    v4 = v1;

    v6 = v0;
    v7 = v3(v5);
    v9 = v8;

    v10 = sub_241E12378(v7, v9, 0, 0, 1);
    v11 = sub_241E0F2DC();
    sub_241E0FDB8(v10, v11 & 1, &v22);
    v21 = v22;

    v12 = *(**(v6 + v2) + 264);

    v14 = v12(v13);
    v16 = v15;

    v22 = v14;
    v23 = v16;

    MEMORY[0x245D01460](0xB7A3E280A0E2, 0xA600000000000000);

    v17 = *&v21[OBJC_IVAR___BRLTEditStringInternal_string];
    v18 = *&v21[OBJC_IVAR___BRLTEditStringInternal_string + 8];

    MEMORY[0x245D01460](v17, v18);

    MEMORY[0x245D01460](12493794, 0xA300000000000000);

    v19 = sub_241E12328(v22, v23, 0, 0, 1, 0, 0, 0, MEMORY[0x277D84F90]);
    v20 = *(v6 + OBJC_IVAR___BRLTBrailleModelInternal_braille);
    *(v6 + OBJC_IVAR___BRLTBrailleModelInternal_braille) = v19;

    sub_241E221E8(0);
  }
}

uint64_t sub_241E20F4C()
{
  v1 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel);
  if (!v1)
  {
    return 0;
  }

  v2 = *(*v1 + 480);
  v3 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel);

  LOBYTE(v2) = v2(v4);
  v5 = [objc_allocWithZone(BRLTBrailleUIFormattingOptions) init];
  [v5 setLineFocus_];
  v6 = v5;
  sub_241E221E8(v5);

  return v2 & 1;
}

uint64_t sub_241E21058()
{
  v1 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel);
  if (!v1)
  {
    return 0;
  }

  v2 = *(*v1 + 488);
  v3 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel);

  LOBYTE(v2) = v2(v4);
  v5 = [objc_allocWithZone(BRLTBrailleUIFormattingOptions) init];
  [v5 setLineFocus_];
  v6 = v5;
  sub_241E221E8(v5);

  return v2 & 1;
}

void sub_241E21164()
{
  v1 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel);
  if (v1)
  {
    v2 = *(*v1 + 232);
    v3 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel);

    if (v2(v4))
    {
      (*(*v1 + 504))();
      v5 = [objc_allocWithZone(BRLTBrailleUIFormattingOptions) init];
      [v5 setLineFocus_];
      v6 = v5;
      sub_241E221E8(v5);
    }

    else
    {
    }
  }
}

void sub_241E21300()
{
  v1 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel);
  if (v1)
  {
    v2 = *(*v1 + 232);
    v3 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel);

    v5 = v2(v4);
    v7 = v6;
    v8 = (*(*v1 + 160))(v5);
    v9 = [v8 length];

    if (v7 == v9)
    {
    }

    else
    {
      (*(*v1 + 512))();
      v10 = [objc_allocWithZone(BRLTBrailleUIFormattingOptions) init];
      [v10 setLineFocus_];
      v11 = v10;
      sub_241E221E8(v10);
    }
  }
}

void sub_241E214E0()
{
  v1 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel);
  if (v1)
  {
    v2 = *(*v1 + 520);
    v3 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel);

    v2(v4);
    v5 = [objc_allocWithZone(BRLTBrailleUIFormattingOptions) init];
    [v5 setLineFocus_];
    v6 = v5;
    sub_241E221E8(v5);
  }
}

void sub_241E21624()
{
  v1 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel);
  if (v1)
  {
    v2 = *(*v1 + 528);
    v3 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel);

    v2(v4);
    v5 = [objc_allocWithZone(BRLTBrailleUIFormattingOptions) init];
    [v5 setLineFocus_];
    v6 = v5;
    sub_241E221E8(v5);
  }
}

uint64_t sub_241E21768(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v9 = v8;
  v17 = MEMORY[0x277D85000];
  v18 = (*((*MEMORY[0x277D85000] & *v8) + 0x380))();
  v19 = *v17 & *v8;
  if ((v18 & 1) == 0)
  {
    result = (*((*v17 & *v8) + 0x188))();
    if (!result)
    {
      return result;
    }

    goto LABEL_6;
  }

  if ((*((*v17 & *v8) + 0x360))())
  {
    result = (*((*v17 & *v8) + 0x188))();
    if (!result)
    {
      return result;
    }

LABEL_6:
    v21 = result;
    v22 = sub_241E357E4();
    [v21 didInsertScriptString_];

    return swift_unknownObjectRelease();
  }

  v23 = &OBJC_IVAR___BRLTTableEnumerator__supportedLocales;
  v104 = a8;
  v102 = a7;
  v103 = a6;
  if (a3)
  {

    v24 = a2;
    a2 = a1;
    v25 = a5;
    v101 = a4;
    goto LABEL_37;
  }

  if (a1 == a2 && (a4 == 32 && a5 == 0xE100000000000000 || (sub_241E35B64() & 1) != 0))
  {
    v26 = OBJC_IVAR___BRLTBrailleModelInternal_script;
    v27 = *(v9 + OBJC_IVAR___BRLTBrailleModelInternal_script);
    v28 = MEMORY[0x277D85000];
    v29 = *((*MEMORY[0x277D85000] & *v27) + 0x88);
    v30 = v27;
    a2 = v29(a1);
    v32 = v31;

    v33 = *(v9 + v26);
    v34 = *((*v28 & *v33) + 0xE0);
    v35 = v33;
    v24 = v32;
    v36 = v34(a2, v32);
    v38 = v37;

    MEMORY[0x245D01460](32, 0xE100000000000000);
    v23 = &OBJC_IVAR___BRLTTableEnumerator__supportedLocales;

    v25 = v38;
    v101 = v36;
    goto LABEL_37;
  }

  v39 = OBJC_IVAR___BRLTBrailleModelInternal_script;
  v40 = *(v9 + OBJC_IVAR___BRLTBrailleModelInternal_script);
  v41 = MEMORY[0x277D85000];
  v42 = *((*MEMORY[0x277D85000] & *v40) + 0xE0);
  v43 = v40;
  v42(a1, a2);

  LOBYTE(v43) = sub_241E35944();

  if ((v43 & 1) == 0)
  {
    goto LABEL_24;
  }

  result = sub_241E35874();
  v44 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_60;
  }

  v45 = result - v44;
  if (__OFSUB__(result, v44))
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v45 < 0)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (sub_241E35874() < v45)
  {
    sub_241E35874();
  }

  a2 = a1;
  v46 = sub_241E358A4();
  if (sub_241E358A4() >> 14 >= v46 >> 14)
  {
LABEL_35:
    v55 = sub_241E35984();
    v101 = MEMORY[0x245D013C0](v55);
    v25 = v56;

    v24 = a2;
    goto LABEL_36;
  }

  __break(1u);
LABEL_24:
  v47 = *(v9 + v39);
  v48 = *((*v41 & *v47) + 0xE0);
  v49 = v47;
  v48(a1, a2);

  LOBYTE(v49) = sub_241E35944();

  if (v49)
  {
    result = sub_241E35874();
    v50 = a2 - result;
    if (!__OFSUB__(a2, result))
    {
      v23 = &OBJC_IVAR___BRLTTableEnumerator__supportedLocales;
      if (v50 >= a1)
      {
        a2 = a1;
        v24 = v50;
LABEL_28:
        v101 = 0;
        v25 = 0xE000000000000000;
        goto LABEL_37;
      }

      goto LABEL_63;
    }

LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v51 = *(v9 + v39);
  v52 = *((*v41 & *v51) + 0xE0);
  v53 = v51;
  v52(a1, a2);

  LOBYTE(v53) = sub_241E35934();

  if (v53)
  {
    if (__OFSUB__(a2, a1))
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    result = sub_241E35874();
    if (result < a2 - a1)
    {
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    if (sub_241E35874() < result)
    {
      sub_241E35874();
    }

    v54 = sub_241E358A4();
    result = sub_241E358A4();
    if (result >> 14 < v54 >> 14)
    {
      goto LABEL_66;
    }

    goto LABEL_35;
  }

  v92 = *(v9 + v39);
  v93 = *((*v41 & *v92) + 0xE0);
  v94 = v92;
  v93(a1, a2);

  LOBYTE(v94) = sub_241E35934();

  if (v94)
  {
    v24 = a2;
    result = sub_241E35874();
    v95 = __OFADD__(a1, result);
    v96 = a1 + result;
    if (!v95)
    {
      v23 = &OBJC_IVAR___BRLTTableEnumerator__supportedLocales;
      if (v96 <= a2)
      {
        a2 = v96;
        goto LABEL_28;
      }

LABEL_68:
      __break(1u);
      return result;
    }

LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v24 = a2;
  a2 = a1;
  v25 = a5;
  v101 = a4;
LABEL_36:
  v23 = &OBJC_IVAR___BRLTTableEnumerator__supportedLocales;
LABEL_37:
  v57 = *(v23 + 151);
  v58 = (*(v9 + v57) + OBJC_IVAR___BRLTEditStringInternal_string);
  v59 = *v58;
  v60 = v58[1];

  v61 = sub_241E2CD8C(v59, v60, a2, v24, a3 & 1);
  v62 = v24;
  v64 = v63;
  v66 = v65;

  v67 = sub_241E2CC64(v61, v64, v66 & 1);
  v99 = v68;
  v100 = v67;
  v69 = *(v9 + v57);
  v70 = MEMORY[0x277D85000];
  v71 = *((*MEMORY[0x277D85000] & *v69) + 0xB0);
  v72 = v69;
  v73 = v71(a2, v62, a3 & 1, v101, v25, v103, v102, v104 & 1);

  v74 = *(v9 + v57);
  *(v9 + v57) = v73;

  if (((*((*v70 & *v9) + 0x260))() & 1) == 0)
  {
    v75 = OBJC_IVAR___BRLTBrailleModelInternal_scriptHistory;
    swift_beginAccess();
    v76 = *(v9 + v75);
    if (v76 >> 62)
    {
      if (v76 < 0)
      {
        v97 = *(v9 + v75);
      }

      if (sub_241E35B34() < 6)
      {
        goto LABEL_41;
      }
    }

    else if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) < 6)
    {
LABEL_41:
      v78 = *(v9 + v57);
      swift_beginAccess();
      v79 = v78;
      MEMORY[0x245D01530]();
      if (*((*(v9 + v75) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v9 + v75) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v98 = *((*(v9 + v75) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_241E359C4();
      }

      sub_241E359D4();
      swift_endAccess();
      *(v9 + OBJC_IVAR___BRLTBrailleModelInternal_lastScriptOutputTime) = CFAbsoluteTimeGetCurrent();
      v70 = MEMORY[0x277D85000];
      goto LABEL_44;
    }

    swift_beginAccess();
    v77 = sub_241E22158(0);
    swift_endAccess();

    goto LABEL_41;
  }

LABEL_44:
  v80 = (*(v9 + v57) + OBJC_IVAR___BRLTEditStringInternal_string);
  v81 = *v80;
  v82 = v80[1];

  v83 = sub_241E35874();

  if ((v104 & 1) == 0)
  {
    v83 = v103;
  }

  v84 = (*(v9 + v57) + OBJC_IVAR___BRLTEditStringInternal_string);
  v85 = *v84;
  v86 = v84[1];

  v87 = sub_241E2CD50(v85, v86, v83);

  v89 = (*((*v70 & *v9) + 0x188))(v88);
  if (!v89)
  {
  }

  v90 = v89;
  v91 = sub_241E357E4();

  [v90 didReplaceScriptStringRange:v100 withScriptString:v99 cursorLocation:{v91, v87}];

  return swift_unknownObjectRelease();
}
id CalInMemoryBlockList.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

{
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR___CalInMemoryBlockList_blockedEmails) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR___CalInMemoryBlockList_blockedPhoneNumbers) = v1;
  v3.super_class = CalInMemoryBlockList;
  return objc_msgSendSuper2(&v3, sel_init);
}

Swift::Bool __swiftcall CalInMemoryBlockList.isBlocked(email:)(Swift::String email)
{
  object = email._object;
  countAndFlagsBits = email._countAndFlagsBits;
  v4 = OBJC_IVAR___CalInMemoryBlockList_blockedEmails;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v8[0] = countAndFlagsBits;
  v8[1] = object;
  v7[2] = v8;

  LOBYTE(object) = sub_1B9968808(sub_1B99688B4, v7, v5);

  return object & 1;
}

Swift::Bool __swiftcall CalInMemoryBlockList.isBlocked(phoneNumber:)(Swift::String phoneNumber)
{
  object = phoneNumber._object;
  countAndFlagsBits = phoneNumber._countAndFlagsBits;
  v4 = [v1 blockedPhoneNumbers];
  v5 = sub_1B996FFBC();

  v8[0] = countAndFlagsBits;
  v8[1] = object;
  v7[2] = v8;
  LOBYTE(object) = sub_1B9968808(sub_1B9968FD0, v7, v5);

  return object & 1;
}

Swift::Bool __swiftcall CalInMemoryBlockList.cachedBlocked(email:)(Swift::String email)
{
  v2 = sub_1B996FF6C();
  v3 = [v1 isBlockedWithEmail_];

  return v3;
}

Swift::Bool __swiftcall CalInMemoryBlockList.cachedBlocked(phoneNumber:)(Swift::String phoneNumber)
{
  v2 = sub_1B996FF6C();
  v3 = [v1 isBlockedWithPhoneNumber_];

  return v3;
}

Swift::Void __swiftcall CalInMemoryBlockList.addBlocked(email:)(Swift::String email)
{
  object = email._object;
  countAndFlagsBits = email._countAndFlagsBits;
  v4 = OBJC_IVAR___CalInMemoryBlockList_blockedEmails;
  swift_beginAccess();
  v5 = *(v1 + v4);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v4) = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_1B9964B9C(0, *(v5 + 2) + 1, 1, v5);
    *(v1 + v4) = v5;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    v5 = sub_1B9964B9C((v7 > 1), v8 + 1, 1, v5);
  }

  *(v5 + 2) = v8 + 1;
  v9 = &v5[16 * v8];
  *(v9 + 4) = countAndFlagsBits;
  *(v9 + 5) = object;
  *(v1 + v4) = v5;
  swift_endAccess();
}

Swift::Void __swiftcall CalInMemoryBlockList.addBlocked(phoneNumber:)(Swift::String phoneNumber)
{
  object = phoneNumber._object;
  countAndFlagsBits = phoneNumber._countAndFlagsBits;

  v4 = [v1 blockedPhoneNumbers];
  v5 = sub_1B996FFBC();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1B9964B9C(0, *(v5 + 16) + 1, 1, v5);
  }

  v7 = *(v5 + 16);
  v6 = *(v5 + 24);
  if (v7 >= v6 >> 1)
  {
    v5 = sub_1B9964B9C((v6 > 1), v7 + 1, 1, v5);
  }

  *(v5 + 16) = v7 + 1;
  v8 = v5 + 16 * v7;
  *(v8 + 32) = countAndFlagsBits;
  *(v8 + 40) = object;
  v9 = sub_1B996FFAC();

  [v1 setBlockedPhoneNumbers_];
}

BOOL CalInMemoryBlockList.isEmpty.getter()
{
  v1 = OBJC_IVAR___CalInMemoryBlockList_blockedEmails;
  swift_beginAccess();
  if (*(*&v0[v1] + 16))
  {
    return 0;
  }

  v3 = [v0 blockedPhoneNumbers];
  v4 = sub_1B996FFBC();

  v5 = *(v4 + 16);

  return v5 == 0;
}

uint64_t CalInMemoryBlockList.batchLookup(emails:phoneNumbers:completionHandler:)(uint64_t a1, uint64_t a2, void (*a3)(char *, char *, void), uint64_t a4)
{
  v5 = v4;
  v44 = a4;
  v45 = a3;
  v8 = sub_1B996FE3C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v52 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v42 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBDB8B0, &qword_1B997DB60);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v42 - v20;
  v50 = v9;
  v22 = *(v9 + 56);
  v22(&v42 - v20, 1, 1, v8);
  v51 = v8;
  v46 = v22;
  v47 = v9 + 56;
  v22(v19, 1, 1, v8);
  v53 = v5;
  v48 = v21;
  v49 = v19;
  if (a1)
  {
    v43 = a2;
    sub_1B996FE2C();
    v23 = *(a1 + 16);
    v24 = OBJC_IVAR___CalInMemoryBlockList_blockedEmails;
    v25 = swift_beginAccess();
    if (v23)
    {
      v26 = 0;
      v27 = (a1 + 40);
      do
      {
        v28 = *v27;
        v29 = *&v5[v24];
        v54 = *(v27 - 1);
        v55 = v28;
        MEMORY[0x1EEE9AC00](v25);
        *(&v42 - 2) = &v54;

        v30 = sub_1B9968808(sub_1B9968FD0, (&v42 - 4), v29);

        if (v30)
        {
          v25 = sub_1B996FE1C();
        }

        ++v26;
        v27 += 2;
        v5 = v53;
      }

      while (v23 != v26);
    }

    v21 = v48;
    sub_1B99688D0(v48);
    v31 = v51;
    (*(v50 + 32))(v21, v14, v51);
    v46(v21, 0, 1, v31);
    v19 = v49;
    a2 = v43;
  }

  if (a2)
  {
    sub_1B996FE2C();
    v32 = *(a2 + 16);
    if (v32)
    {
      v33 = 0;
      v34 = (a2 + 40);
      do
      {
        v36 = *(v34 - 1);
        v35 = *v34;

        v37 = [v5 blockedPhoneNumbers];
        v38 = sub_1B996FFBC();

        v54 = v36;
        v55 = v35;
        MEMORY[0x1EEE9AC00](v39);
        *(&v42 - 2) = &v54;
        LOBYTE(v37) = sub_1B9968808(sub_1B9968FD0, (&v42 - 4), v38);

        if (v37)
        {
          sub_1B996FE1C();
        }

        ++v33;
        v34 += 2;
        v5 = v53;
      }

      while (v32 != v33);
    }

    v19 = v49;
    sub_1B99688D0(v49);
    v40 = v51;
    (*(v50 + 32))(v19, v52, v51);
    v46(v19, 0, 1, v40);
    v21 = v48;
  }

  v45(v21, v19, 0);
  sub_1B99688D0(v19);
  return sub_1B99688D0(v21);
}

void sub_1B996820C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBDB8B0, &qword_1B997DB60);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  sub_1B99689A4(a1, &v20 - v13);
  v15 = sub_1B996FE3C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  v18 = 0;
  if (v17(v14, 1, v15) != 1)
  {
    v18 = sub_1B996FDFC();
    (*(v16 + 8))(v14, v15);
  }

  sub_1B99689A4(a2, v12);
  if (v17(v12, 1, v15) == 1)
  {
    v19 = 0;
    if (!a3)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v19 = sub_1B996FDFC();
  (*(v16 + 8))(v12, v15);
  if (a3)
  {
LABEL_7:
    a3 = sub_1B996FDEC();
  }

LABEL_8:
  (*(a4 + 16))(a4, v18, v19, a3);
}

void CalInMemoryBlockList.batchCached(emails:phoneNumbers:completionHandler:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (!a1)
  {
    v8 = 0;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = sub_1B996FFAC();
  if (v7)
  {
LABEL_3:
    v7 = sub_1B996FFAC();
  }

LABEL_4:
  v10[4] = a3;
  v10[5] = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1B99684FC;
  v10[3] = &block_descriptor_0;
  v9 = _Block_copy(v10);

  [v4 batchLookupEmails:v8 phoneNumbers:v7 completionHandler:v9];
  _Block_release(v9);
}

uint64_t sub_1B99684FC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBDB8B0, &qword_1B997DB60);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v23 - v13;
  v16 = *(a1 + 32);
  v15 = *(a1 + 40);
  if (a2)
  {
    sub_1B996FE0C();
    v17 = sub_1B996FE3C();
    (*(*(v17 - 8) + 56))(v14, 0, 1, v17);
  }

  else
  {
    v18 = sub_1B996FE3C();
    (*(*(v18 - 8) + 56))(v14, 1, 1, v18);
  }

  if (a3)
  {
    sub_1B996FE0C();
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = sub_1B996FE3C();
  (*(*(v20 - 8) + 56))(v12, v19, 1, v20);

  v21 = a4;
  v16(v14, v12, a4);

  sub_1B99688D0(v12);
  return sub_1B99688D0(v14);
}

uint64_t sub_1B9968808(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1B99688D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBDB8B0, &qword_1B997DB60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t type metadata accessor for CalInMemoryBlockList()
{
  result = qword_1EBBDBF08;
  if (!qword_1EBBDBF08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBBDBF08);
  }

  return result;
}

uint64_t sub_1B99689A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBDB8B0, &qword_1B997DB60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B9968A14(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v52 = a4;
  v49 = a2;
  v6 = sub_1B996FE3C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v59 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v49 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBDB8B0, &qword_1B997DB60);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v51 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v50 = &v49 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v49 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v49 - v22;
  v24 = *(v7 + 56);
  v24(&v49 - v22, 1, 1, v6);
  v53 = v24;
  v54 = v7 + 56;
  v24(v21, 1, 1, v6);
  v60 = a3;
  v57 = v7;
  v58 = v6;
  v55 = v23;
  v56 = v21;
  if (a1)
  {
    sub_1B996FE2C();
    v25 = *(a1 + 16);
    v26 = OBJC_IVAR___CalInMemoryBlockList_blockedEmails;
    v27 = swift_beginAccess();
    if (v25)
    {
      v28 = 0;
      v29 = (a1 + 40);
      do
      {
        v30 = *v29;
        v31 = *&a3[v26];
        v61 = *(v29 - 1);
        v62 = v30;
        MEMORY[0x1EEE9AC00](v27);
        *(&v49 - 2) = &v61;

        v32 = sub_1B9968808(sub_1B9968FD0, (&v49 - 4), v31);

        if (v32)
        {
          v27 = sub_1B996FE1C();
        }

        ++v28;
        v29 += 2;
        a3 = v60;
      }

      while (v25 != v28);
    }

    v23 = v55;
    sub_1B99688D0(v55);
    v7 = v57;
    v6 = v58;
    (*(v57 + 32))(v23, v12, v58);
    v53(v23, 0, 1, v6);
    v21 = v56;
  }

  v33 = v49;
  if (v49)
  {
    sub_1B996FE2C();
    v34 = *(v33 + 16);
    if (v34)
    {
      v35 = 0;
      v36 = (v33 + 40);
      do
      {
        v38 = *(v36 - 1);
        v37 = *v36;

        v39 = [a3 blockedPhoneNumbers];
        v40 = sub_1B996FFBC();

        v61 = v38;
        v62 = v37;
        MEMORY[0x1EEE9AC00](v41);
        *(&v49 - 2) = &v61;
        LOBYTE(v39) = sub_1B9968808(sub_1B9968FD0, (&v49 - 4), v40);

        if (v39)
        {
          sub_1B996FE1C();
        }

        ++v35;
        v36 += 2;
        a3 = v60;
      }

      while (v34 != v35);
    }

    v21 = v56;
    sub_1B99688D0(v56);
    v7 = v57;
    v6 = v58;
    (*(v57 + 32))(v21, v59, v58);
    v53(v21, 0, 1, v6);
    v23 = v55;
  }

  v42 = v50;
  sub_1B99689A4(v23, v50);
  v43 = *(v7 + 48);
  if (v43(v42, 1, v6) == 1)
  {
    v44 = 0;
  }

  else
  {
    v44 = sub_1B996FDFC();
    (*(v7 + 8))(v42, v6);
  }

  v45 = v51;
  sub_1B99689A4(v21, v51);
  if (v43(v45, 1, v6) == 1)
  {
    v46 = 0;
  }

  else
  {
    v47 = v45;
    v46 = sub_1B996FDFC();
    (*(v7 + 8))(v47, v6);
  }

  (*(v52 + 16))(v52, v44, v46, 0);

  sub_1B99688D0(v21);
  return sub_1B99688D0(v23);
}

uint64_t sub_1B9968F78(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1B99700FC() & 1;
  }
}

void __getCHSTimelineControllerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCHSTimelineControllerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CalWidgetUtils.m" lineNumber:19 description:{@"Unable to find class %s", "CHSTimelineController"}];

  __break(1u);
}

void ChronoServicesLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ChronoServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"CalWidgetUtils.m" lineNumber:18 description:{@"%s", *a1}];

  __break(1u);
}

void __getCHSWidgetServiceClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCHSWidgetServiceClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CalWidgetUtils.m" lineNumber:20 description:{@"Unable to find class %s", "CHSWidgetService"}];

  __break(1u);
}

void __getMGGetBoolAnswerSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *libMobileGestaltLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"CalContactsProvider.m" lineNumber:38 description:{@"%s", *a1}];

  __break(1u);
}

void CalSetSystemTimeZone_cold_1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 name];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void CalSetSystemTimeZone_cold_2(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [__SystemTimeZone name];
  v3 = [a1 name];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

void CalSetSystemTimeZone_cold_3(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 name];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void _CalCopyDefaultTimeZone_cold_1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 name];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void _CalCopyDefaultTimeZone_cold_5()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(&dword_1B990D000, v0, OS_LOG_TYPE_DEBUG, "_CalCopyDefaultTimeZone: returning %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void _CalSetTimeZone_cold_1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 name];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void _CalSetTimeZone_cold_2(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [__TimeZone name];
  v3 = [a1 name];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

void _CalCopySystemTimeZone_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = [__SystemTimeZone name];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

void CalSetDefaultTimeZone_cold_1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 name];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void _CalDefaultTimeZoneSettingsChanged_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [__TimeZone name];
  v3 = [a1 name];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

void _CalTimeZonePrefChanged_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = __TimeZoneNotificationEchoCount;
  _os_log_debug_impl(&dword_1B990D000, log, OS_LOG_TYPE_DEBUG, "_CalTimeZonePrefChanged: echo count %i", v2, 8u);
  v1 = *MEMORY[0x1E69E9840];
}

void _CalCopyTimeZone_cold_1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 name];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void CalRoundDoubleToNearestMultiple_cold_1(NSObject *a1, double a2, double a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v8 = 138412546;
  v9 = v5;
  v10 = 2112;
  v11 = v6;
  _os_log_error_impl(&dword_1B990D000, a1, OS_LOG_TYPE_ERROR, "Passed in a 'multiple' value of [%@].  Will not attempt to round value [%@] to the nearest multiple of that number.", &v8, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

void CalFlagForProfilingStart_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_4(&dword_1B990D000, v0, v1, "Starting profile of %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void CalFlagForProfilingEnd_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7(&dword_1B990D000, v0, v1, "Ending profile of %@%@");
  v2 = *MEMORY[0x1E69E9840];
}

void CalFlagForProfilingPoint_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7(&dword_1B990D000, v0, v1, "Point flagged for %@%@");
  v2 = *MEMORY[0x1E69E9840];
}

void CalPerfLogStart_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_4(&dword_1B990D000, v0, v1, "Perf starting %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void CalPerfLogEnd_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_4(&dword_1B990D000, v0, v1, "Perf ending %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void CalPerfLogPoint_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_4(&dword_1B990D000, v0, v1, "Perf point %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __HandleForSource_cold_1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 134218242;
  v5 = a1;
  v6 = 2080;
  v7 = dlerror();
  _os_log_error_impl(&dword_1B990D000, a2, OS_LOG_TYPE_ERROR, "Error loading source %li: %s", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

void __CalAddStateCaptureBlock_block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_1B990D000, a2, OS_LOG_TYPE_ERROR, "State dump is %lu bytes in UTF-16; truncating", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __CalAddStateCaptureBlock_block_invoke_cold_2(void *a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 134218240;
  v5 = [a1 length];
  v6 = 1024;
  v7 = 32522;
  _os_log_error_impl(&dword_1B990D000, a2, OS_LOG_TYPE_ERROR, "State dump is %lu ascii characters, truncating to %i", &v4, 0x12u);
  v3 = *MEMORY[0x1E69E9840];
}

void __CalAddStateCaptureBlock_block_invoke_cold_3(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v4 = 136315138;
  v5 = v2;
  _os_log_error_impl(&dword_1B990D000, a2, OS_LOG_TYPE_ERROR, "Failed to allocate state capture data (%s)", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void __CalAddStateCaptureBlock_block_invoke_cold_4(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  v5 = 136315394;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_1B990D000, log, OS_LOG_TYPE_ERROR, "Failed to serialize state capture payload (%s): %@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

void CalConvertNSIntegerToNSUInteger_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_1B990D000, a2, OS_LOG_TYPE_ERROR, "Cannot convert a negative integer [%ld] to an unsigned integer.", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void CalConvertNSUIntegerToNSInteger_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 134218240;
  v4 = a1;
  v5 = 2048;
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  _os_log_error_impl(&dword_1B990D000, a2, OS_LOG_TYPE_ERROR, "Cannot convert an unsigned integer [%lu], which is greater than [%ld], to an integer.", &v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

CFGregorianDate CFAbsoluteTimeGetGregorianDate(CFAbsoluteTime at, CFTimeZoneRef tz)
{
  v2 = MEMORY[0x1EEDB65A8](tz, at);
  result.second = v3;
  result.year = v2;
  result.month = BYTE4(v2);
  result.day = BYTE5(v2);
  result.hour = BYTE6(v2);
  result.minute = HIBYTE(v2);
  return result;
}

Boolean CFCalendarDecomposeAbsoluteTime(CFCalendarRef calendar, CFAbsoluteTime at, const char *componentDesc, ...)
{
  va_start(va, componentDesc);
  v3 = va_arg(va, void);
  return MEMORY[0x1EEDB6B60](calendar, v3, at);
}

CFRange CFCalendarGetRangeOfUnit(CFCalendarRef calendar, CFCalendarUnit smallerUnit, CFCalendarUnit biggerUnit, CFAbsoluteTime at)
{
  v4 = MEMORY[0x1EEDB6B88](calendar, smallerUnit, biggerUnit, at);
  result.length = v5;
  result.location = v4;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC7160](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}
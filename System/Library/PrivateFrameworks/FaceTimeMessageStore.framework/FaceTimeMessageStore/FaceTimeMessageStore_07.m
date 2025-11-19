uint64_t sub_1BC82FB20()
{
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) | (*(v0 + 28) << 32);
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_19(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_5_13(v5);
  OUTLINED_FUNCTION_95();
  OUTLINED_FUNCTION_40_4();

  return sub_1BC82986C(v7, v8, v9, v10);
}

uint64_t sub_1BC82FBD0()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_53_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_7(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_15(v1);

  return sub_1BC82D2D0(v3, v4);
}

uint64_t sub_1BC82FC98()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_39();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  v1[1] = sub_1BC7B0248;
  v3 = OUTLINED_FUNCTION_4_12();

  return sub_1BC812250(v3, v4, v5);
}

void sub_1BC82FD28()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  sub_1BC81A34C(v1);
}

uint64_t sub_1BC82FD54()
{
  OUTLINED_FUNCTION_32();
  v1 = sub_1BC8F6D24();
  OUTLINED_FUNCTION_25(v1);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_20_7(v5);
  *v6 = v7;
  v6[1] = sub_1BC7B0248;

  return sub_1BC81FDC0(v4, v0 + v3);
}

uint64_t sub_1BC82FE20()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_39();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  v1[1] = sub_1BC7B0248;
  OUTLINED_FUNCTION_4_12();

  return sub_1BC8E4808();
}

uint64_t sub_1BC82FECC(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1BC7D9730(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BC82FF1C()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_53_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_7(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_15(v1);

  return sub_1BC81D8F8(v3, v4, v5);
}

uint64_t sub_1BC82FFC8@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1BC81D2F0(a1);
}

uint64_t sub_1BC830078()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_13(v1);
  OUTLINED_FUNCTION_95();

  return sub_1BC829FD0(v3, v4, v5, v6);
}

uint64_t sub_1BC830108()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_13(v1);
  OUTLINED_FUNCTION_95();

  return sub_1BC810C70();
}

id sub_1BC8301B4@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_wrappedAccountInfo);
  *a1 = v2;
  return v2;
}

uint64_t objectdestroyTm(void (*a1)(void))
{
  v3 = *(v1 + 16);

  a1(*(v1 + 24));
  OUTLINED_FUNCTION_34();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

uint64_t sub_1BC83024C()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_39();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  v1[1] = sub_1BC7B0248;
  v3 = OUTLINED_FUNCTION_4_12();

  return sub_1BC825FF0(v3, v4, v5);
}

uint64_t sub_1BC8302F8()
{
  OUTLINED_FUNCTION_131();
  v2 = v1(0);
  OUTLINED_FUNCTION_4_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_29();
  v6(v5);
  return v0;
}

uint64_t sub_1BC830350(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1BC8303A8()
{
  OUTLINED_FUNCTION_131();
  v2 = v1(0);
  OUTLINED_FUNCTION_4_1(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_29();
  v6(v5);
  return v0;
}

uint64_t sub_1BC830400()
{
  OUTLINED_FUNCTION_131();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_4_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_29();
  v7(v6);
  return v0;
}

uint64_t sub_1BC830458()
{
  OUTLINED_FUNCTION_131();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_4_1(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_29();
  v7(v6);
  return v0;
}

uint64_t sub_1BC8304B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VoicemailUpdate();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_87_0()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_89(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_106(uint64_t a1)
{
  v5 = *(v1 + 16);
  v6 = *(v2 - 72);

  return sub_1BC81BD54(v5, a1);
}

uint64_t OUTLINED_FUNCTION_107@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;
}

uint64_t OUTLINED_FUNCTION_108()
{
  v2 = *(v0 + 120);
  v3 = *(v0 + 112);

  return __swift_mutable_project_boxed_opaque_existential_1(v0 + 88, v3);
}

void OUTLINED_FUNCTION_120()
{
  *(v1 - 88) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

uint64_t OUTLINED_FUNCTION_126()
{
  result = v1;
  v3 = *(v0 + 128);
  v4 = *(v0 + 200);
  return result;
}

uint64_t OUTLINED_FUNCTION_128()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_134()
{

  return swift_dynamicCast();
}

uint64_t sub_1BC83077C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1BC8009FC();
}

uint64_t sub_1BC8307A0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1BC7CB90C();
  *a2 = result;
  return result;
}

uint64_t sub_1BC8307D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BC7C58F8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1BC8307FC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BC7CB90C();
  *a1 = result;
  return result;
}

uint64_t sub_1BC830824(uint64_t a1)
{
  v2 = sub_1BC7C56A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC830860(uint64_t a1)
{
  v2 = sub_1BC7C56A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC8308A4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x5564696C61766E69 && a2 == 0xEA00000000004449)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1BC8F8AA4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1BC830944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC8308A4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1BC830970(uint64_t a1)
{
  v2 = sub_1BC830C08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC8309AC(uint64_t a1)
{
  v2 = sub_1BC830C08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC8309E8(uint64_t a1)
{
  v2 = sub_1BC830C5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC830A24(uint64_t a1)
{
  v2 = sub_1BC830C5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SandboxExtendedURL.DecodingError.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_22();
  a19 = v21;
  a20 = v22;
  a10 = v20;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF59C8, &qword_1BC902DA0);
  OUTLINED_FUNCTION_0(v25);
  v27 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &a9 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF59D0, &qword_1BC902DA8);
  OUTLINED_FUNCTION_0(v33);
  v35 = v34;
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &a9 - v39;
  v41 = v24[4];
  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  sub_1BC830C08();
  sub_1BC8F8CA4();
  sub_1BC830C5C();
  sub_1BC8F8934();
  (*(v27 + 8))(v32, v25);
  (*(v35 + 8))(v40, v33);
  OUTLINED_FUNCTION_23();
}

unint64_t sub_1BC830C08()
{
  result = qword_1EBCF59D8;
  if (!qword_1EBCF59D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF59D8);
  }

  return result;
}

unint64_t sub_1BC830C5C()
{
  result = qword_1EBCF59E0;
  if (!qword_1EBCF59E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF59E0);
  }

  return result;
}

uint64_t SandboxExtendedURL.DecodingError.hashValue.getter()
{
  sub_1BC8F8C04();
  MEMORY[0x1BFB2A020](0);
  return sub_1BC8F8C64();
}

void SandboxExtendedURL.DecodingError.init(from:)()
{
  OUTLINED_FUNCTION_22();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF59E8, &qword_1BC902DB0);
  OUTLINED_FUNCTION_0(v3);
  v41 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF59F0, &unk_1BC902DB8);
  OUTLINED_FUNCTION_0(v10);
  v42 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v38 - v15;
  v17 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1BC830C08();
  sub_1BC8F8C84();
  if (v0)
  {
    goto LABEL_9;
  }

  v39 = v9;
  v40 = v2;
  v18 = sub_1BC8F8914();
  sub_1BC7B7A64(v18, 0);
  v22 = v16;
  if (v20 == v21 >> 1)
  {
    v41 = v19;
LABEL_8:
    v32 = v10;
    v33 = sub_1BC8F8624();
    swift_allocError();
    v35 = v34;
    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6350, &qword_1BC8FB5C0) + 48);
    *v35 = &type metadata for SandboxExtendedURL.DecodingError;
    sub_1BC8F8824();
    sub_1BC8F8614();
    (*(*(v33 - 8) + 104))(v35, *MEMORY[0x1E69E6AF8], v33);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v42 + 8))(v22, v32);
    v2 = v40;
LABEL_9:
    v37 = v2;
    goto LABEL_10;
  }

  if (v20 < (v21 >> 1))
  {
    v23 = sub_1BC7B85D0(v20 + 1);
    v25 = v24;
    v27 = v26;
    swift_unknownObjectRelease();
    v28 = v25 == v27 >> 1;
    v29 = v40;
    v30 = v41;
    if (v28)
    {
      sub_1BC830C5C();
      v31 = v39;
      sub_1BC8F8814();
      swift_unknownObjectRelease();
      (*(v30 + 8))(v31, v3);
      (*(v42 + 8))(v22, v10);
      v37 = v29;
LABEL_10:
      __swift_destroy_boxed_opaque_existential_1(v37);
      OUTLINED_FUNCTION_23();
      return;
    }

    v41 = v23;
    goto LABEL_8;
  }

  __break(1u);
}

void sub_1BC8310F8()
{
  if (*MEMORY[0x1E69E9BA8])
  {
    v0 = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithUTF8String_];
    if (v0)
    {
      qword_1EDC1EF10 = v0;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id SandboxExtendedURL.__allocating_init(with:)()
{
  v1 = objc_allocWithZone(v0);
  OUTLINED_FUNCTION_10_2();
  return SandboxExtendedURL.init(with:)();
}

id SandboxExtendedURL.__allocating_init(url:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = OUTLINED_FUNCTION_10_2();
  return SandboxExtendedURL.init(url:)(v2);
}

id SandboxExtendedURL.init(url:)(uint64_t a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_8_15(&v2[OBJC_IVAR____TtC20FaceTimeMessageStore18SandboxExtendedURL_sandboxExtensionHandle]);
  *&v2[OBJC_IVAR____TtC20FaceTimeMessageStore18SandboxExtendedURL_sandboxExtensionToken] = 0;
  *&v2[OBJC_IVAR____TtC20FaceTimeMessageStore18SandboxExtendedURL_url] = sub_1BC8F6F44();
  v8.receiver = v2;
  v8.super_class = type metadata accessor for SandboxExtendedURL();
  v4 = objc_msgSendSuper2(&v8, sel_init);
  v5 = sub_1BC8F7014();
  OUTLINED_FUNCTION_42(v5);
  (*(v6 + 8))(a1);
  return v4;
}

id SandboxExtendedURL.__allocating_init(coder:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = OUTLINED_FUNCTION_10_2();
  return SandboxExtendedURL.init(coder:)(v2);
}

id SandboxExtendedURL.init(coder:)(void *a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_8_15(&v2[OBJC_IVAR____TtC20FaceTimeMessageStore18SandboxExtendedURL_sandboxExtensionHandle]);
  v4 = OBJC_IVAR____TtC20FaceTimeMessageStore18SandboxExtendedURL_sandboxExtensionToken;
  *&v2[OBJC_IVAR____TtC20FaceTimeMessageStore18SandboxExtendedURL_sandboxExtensionToken] = 0;
  sub_1BC7D9730(0, &qword_1EDC1FF38, 0x1E695DFF8);
  v5 = sub_1BC8F8364();
  if (v5)
  {
    v6 = v5;
    *&v2[OBJC_IVAR____TtC20FaceTimeMessageStore18SandboxExtendedURL_url] = v5;
    sub_1BC7D9730(0, &qword_1EDC20640, 0x1E696AEC0);
    v7 = v6;
    v8 = sub_1BC8F8364();
    v9 = *&v2[v4];
    *&v2[v4] = v8;
    v10 = v8;

    v13.receiver = v2;
    v13.super_class = type metadata accessor for SandboxExtendedURL();
    v11 = objc_msgSendSuper2(&v13, sel_init);
  }

  else
  {

    type metadata accessor for SandboxExtendedURL();
    OUTLINED_FUNCTION_14_9();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v11;
}

void sub_1BC8313F8(void *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC20FaceTimeMessageStore18SandboxExtendedURL_url];
  v4 = sub_1BC8F7BE4();
  [a1 encodeObject:v3 forKey:v4];

  if (qword_1EDC1EF08 != -1)
  {
    OUTLINED_FUNCTION_3_16();
    swift_once();
  }

  [qword_1EDC1EF10 UTF8String];
  [v3 fileSystemRepresentation];
  v5 = sandbox_extension_issue_file();
  if (v5)
  {
    v6 = v5;
    v7 = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithUTF8String_];
    v8 = sub_1BC8F7BE4();
    [a1 encodeObject:v7 forKey:v8];

    free(v6);
  }

  else
  {
    if (qword_1EDC1E1B8 != -1)
    {
      OUTLINED_FUNCTION_1_15();
    }

    v9 = sub_1BC8F7734();
    __swift_project_value_buffer(v9, qword_1EDC2B238);
    v10 = v1;
    oslog = sub_1BC8F7714();
    v11 = sub_1BC8F8204();

    if (os_log_type_enabled(oslog, v11))
    {
      v12 = OUTLINED_FUNCTION_21_1();
      v13 = swift_slowAlloc();
      *v12 = 138543362;
      *(v12 + 4) = v3;
      *v13 = v3;
      v14 = v3;
      _os_log_impl(&dword_1BC7A3000, oslog, v11, "Unable to issue sandbox extension for file with URL: %{public}@", v12, 0xCu);
      sub_1BC7F1790(v13, &unk_1EBCF5DB0, &unk_1BC900410);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }
  }
}

void *sub_1BC8316B8()
{
  v2 = sub_1BC8F7014();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_13();
  v8 = *&v0[OBJC_IVAR____TtC20FaceTimeMessageStore18SandboxExtendedURL_url];
  sub_1BC8F6FB4();
  sub_1BC7ED3FC();
  v10 = v9;
  (*(v5 + 8))(v1, v2);
  if (v10)
  {
    v11 = sub_1BC7A6640([objc_allocWithZone(MEMORY[0x1E698E740]) init]);
    if (v12)
    {
      if (v11 == 0xD00000000000001FLL && v12 == 0x80000001BC90BCA0)
      {
      }

      else
      {
        v14 = sub_1BC8F8AA4();

        if ((v14 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      v33 = v8;
      return v8;
    }
  }

LABEL_8:
  v15 = &v0[OBJC_IVAR____TtC20FaceTimeMessageStore18SandboxExtendedURL_sandboxExtensionHandle];
  if (v0[OBJC_IVAR____TtC20FaceTimeMessageStore18SandboxExtendedURL_sandboxExtensionHandle + 8] == 1)
  {
    v16 = *&v0[OBJC_IVAR____TtC20FaceTimeMessageStore18SandboxExtendedURL_sandboxExtensionToken];
    if (!v16)
    {
      if (qword_1EDC1E1B8 != -1)
      {
        OUTLINED_FUNCTION_1_15();
      }

      v34 = sub_1BC8F7734();
      __swift_project_value_buffer(v34, qword_1EDC2B238);
      v27 = v0;
      v28 = sub_1BC8F7714();
      sub_1BC8F8204();

      if (!OUTLINED_FUNCTION_18_7())
      {
        goto LABEL_29;
      }

      OUTLINED_FUNCTION_21_1();
      v29 = OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_10_12(v29, 5.8381e-34);
      v32 = "Sandbox token for URL: %{public}@ was nil!";
      goto LABEL_28;
    }

    v17 = v16;
    [v17 UTF8String];
    v18 = sandbox_extension_consume();

    *v15 = v18;
    v15[8] = 0;
  }

  else
  {
    v18 = *v15;
  }

  if (v18 == -1)
  {
    if (qword_1EDC1E1B8 != -1)
    {
      OUTLINED_FUNCTION_1_15();
    }

    v26 = sub_1BC8F7734();
    __swift_project_value_buffer(v26, qword_1EDC2B238);
    v27 = v0;
    v28 = sub_1BC8F7714();
    sub_1BC8F8204();

    if (!OUTLINED_FUNCTION_18_7())
    {
      goto LABEL_29;
    }

    OUTLINED_FUNCTION_21_1();
    v29 = OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_10_12(v29, 5.8381e-34);
    v32 = "Error while consuming sandbox extension for URL: %{public}@";
LABEL_28:
    OUTLINED_FUNCTION_5_14(&dword_1BC7A3000, v30, v31, v32);
    sub_1BC7F1790(v29, &unk_1EBCF5DB0, &unk_1BC900410);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
LABEL_29:

    sub_1BC831A78(v27);
    return 0;
  }

  if (qword_1EDC1E1B8 != -1)
  {
    OUTLINED_FUNCTION_1_15();
  }

  v19 = sub_1BC8F7734();
  __swift_project_value_buffer(v19, qword_1EDC2B238);
  v20 = v0;
  v21 = sub_1BC8F7714();
  sub_1BC8F8204();

  if (OUTLINED_FUNCTION_18_7())
  {
    OUTLINED_FUNCTION_21_1();
    v22 = OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_10_12(v22, 5.8381e-34);
    OUTLINED_FUNCTION_5_14(&dword_1BC7A3000, v23, v24, "Successfully consumed sandbox extension for URL: %{public}@");
    sub_1BC7F1790(v22, &unk_1EBCF5DB0, &unk_1BC900410);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  v25 = v8;
  sub_1BC831A78(v20);
  return v8;
}

void sub_1BC831A78(void *a1)
{
  if (qword_1EDC1E1B8 != -1)
  {
    swift_once();
  }

  v2 = sub_1BC8F7734();
  __swift_project_value_buffer(v2, qword_1EDC2B238);
  v3 = a1;
  v4 = sub_1BC8F7714();
  v5 = sub_1BC8F8204();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = *&v3[OBJC_IVAR____TtC20FaceTimeMessageStore18SandboxExtendedURL_url];
    *(v6 + 4) = v8;
    *v7 = v8;
    v9 = v8;
    _os_log_impl(&dword_1BC7A3000, v4, v5, "Clearing out sandbox token for URL: %{public}@", v6, 0xCu);
    sub_1BC7F1790(v7, &unk_1EBCF5DB0, &unk_1BC900410);
    MEMORY[0x1BFB2AA50](v7, -1, -1);
    MEMORY[0x1BFB2AA50](v6, -1, -1);
  }

  v10 = *&v3[OBJC_IVAR____TtC20FaceTimeMessageStore18SandboxExtendedURL_sandboxExtensionToken];
  *&v3[OBJC_IVAR____TtC20FaceTimeMessageStore18SandboxExtendedURL_sandboxExtensionToken] = 0;
}

unint64_t sub_1BC831C48()
{
  v0 = sub_1BC8F7C64();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  OUTLINED_FUNCTION_2_13();
  v2 = sub_1BC8F6C74();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = sub_1BC8F6CB4();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_1BC8F6CA4();
  sub_1BC8F6C64();
  sub_1BC8F6C84();
  type metadata accessor for SandboxExtendedURL();
  sub_1BC832070();
  v7 = sub_1BC8F6C94();
  v9 = v8;
  sub_1BC8F7C54();
  v10 = sub_1BC8F7C34();
  if (v11)
  {
    v12 = v10;
    sub_1BC7D4C94(v7, v9);
  }

  else
  {
    sub_1BC7D4C94(v7, v9);

    return 0xD000000000000012;
  }

  return v12;
}

id SandboxExtendedURL.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_1BC83201C()
{
  result = qword_1EBCF5A38;
  if (!qword_1EBCF5A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5A38);
  }

  return result;
}

unint64_t sub_1BC832070()
{
  result = qword_1EDC20108;
  if (!qword_1EDC20108)
  {
    type metadata accessor for SandboxExtendedURL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC20108);
  }

  return result;
}

unint64_t sub_1BC8320C8()
{
  result = qword_1EBCF5A50;
  if (!qword_1EBCF5A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5A50);
  }

  return result;
}

_BYTE *sub_1BC832258(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1BC832318()
{
  result = qword_1EBCF5A60;
  if (!qword_1EBCF5A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5A60);
  }

  return result;
}

unint64_t sub_1BC832370()
{
  result = qword_1EBCF5A68;
  if (!qword_1EBCF5A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5A68);
  }

  return result;
}

unint64_t sub_1BC8323C8()
{
  result = qword_1EBCF5A70;
  if (!qword_1EBCF5A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5A70);
  }

  return result;
}

unint64_t sub_1BC832420()
{
  result = qword_1EBCF5A78;
  if (!qword_1EBCF5A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5A78);
  }

  return result;
}

unint64_t sub_1BC832478()
{
  result = qword_1EBCF5A80;
  if (!qword_1EBCF5A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5A80);
  }

  return result;
}

unint64_t sub_1BC8324D0()
{
  result = qword_1EBCF5A88;
  if (!qword_1EBCF5A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5A88);
  }

  return result;
}

uint64_t sub_1BC832528()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = v14 - v3;
  v5 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isRead;
  OUTLINED_FUNCTION_17_1();
  v6 = *(v0 + v5);
  v7 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message__transcript;
  OUTLINED_FUNCTION_17_1();
  sub_1BC7EB644(v0 + v7, v4);
  v8 = sub_1BC8F7014();
  v9 = (__swift_getEnumTagSinglePayload(v4, 1, v8) != 1) << 8;
  sub_1BC83336C(v4);
  v10 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_mailboxType;
  OUTLINED_FUNCTION_17_1();
  v11 = *(v0 + v10);
  if (v11 == 2)
  {
    v12 = 11;
    return v9 | v12;
  }

  if (v11 == 1)
  {
    v12 = 131;
    return v9 | v12;
  }

  if (!*(v0 + v10))
  {
    return v9 | v6 | 2u;
  }

  v14[3] = *(v0 + v10);
  result = sub_1BC8F8B04();
  __break(1u);
  return result;
}

id sub_1BC83267C(char *a1)
{
  v106 = sub_1BC8F71E4();
  v2 = OUTLINED_FUNCTION_0(v106);
  v105 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_12();
  v104 = v7 - v6;
  v8 = sub_1BC8F7264();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_12();
  v16 = v15 - v14;
  v103 = sub_1BC8F7014();
  v17 = OUTLINED_FUNCTION_0(v103);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_12();
  v24 = v23 - v22;
  v25 = &off_1E7FF5000;
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (!result)
  {
    __break(1u);
    goto LABEL_28;
  }

  v27 = result;
  v28 = &a1[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_voicemailID];
  OUTLINED_FUNCTION_2_14();
  if ((v28[4] & 1) == 0)
  {
    v29 = *v28;
    if ((v29 & 0x80000000) != 0)
    {
      __break(1u);
      goto LABEL_26;
    }

    [v27 setIdentifier_];
    [v27 setRemoteUID_];
  }

  v107 = [objc_allocWithZone(MEMORY[0x1E69E0690]) init];
  if (v107)
  {
    v100 = v11;
    v98 = v19;
    Message.getTranscriptString()();
    v102 = v24;
    v101 = v8;
    v99 = v16;
    if (!v19)
    {
      if (qword_1EDC1E1A0 != -1)
      {
        OUTLINED_FUNCTION_1_1();
      }

      v50 = sub_1BC8F7734();
      __swift_project_value_buffer(v50, qword_1EDC2B208);
      v51 = sub_1BC8F7714();
      v52 = sub_1BC8F8204();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_1BC7A3000, v51, v52, "Successfully got transcript string", v53, 2u);
        v25 = &off_1E7FF5000;
        OUTLINED_FUNCTION_6();
      }

LABEL_16:
      v54 = [objc_allocWithZone(MEMORY[0x1E697B9D8]) v25[75]];
      sub_1BC833250();
      v55 = sub_1BC8F7E34();
      v56 = sub_1BC8F7BE4();
      v57 = [v54 _initWithSegments_formattedString_speakingRate_averagePauseDuration_];

      v58 = objc_allocWithZone(MEMORY[0x1E69E06B0]);
      v97 = v57;
      v59 = [v58 initWithTranscription_];
      v60 = v107;
      [v107 setProtocolVersion_];
      v96 = v59;
      v61 = [v59 archivedData];
      v62 = sub_1BC8F70D4();
      v64 = v63;

      sub_1BC833294(v62, v64, v60);
      v65 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
      OUTLINED_FUNCTION_17_1();
      v66 = v100;
      v67 = v99;
      v68 = v101;
      v69 = (*(v100 + 16))(v99, &a1[v65], v101);
      v70 = MEMORY[0x1BFB2A220](v69);
      v71 = v102;
      sub_1BC7C1A54(0x697263736E617274, 0xEA00000000007470, v102);
      objc_autoreleasePoolPop(v70);
      (*(v66 + 8))(v67, v68);
      result = sub_1BC833308(v60);
      if (v72 >> 60 != 15)
      {
        v73 = result;
        v74 = v72;

        sub_1BC8F70F4();
        sub_1BC7ECAC8(v73, v74);
        v75 = sub_1BC8F6EF4();
        sub_1BC7C3588(v75, v76, v27, &selRef_setTranscriptionURL_);
        v77 = v107;
        [v27 setTranscript_];

        v98[1](v71, v103);
        goto LABEL_18;
      }

LABEL_28:
      __break(1u);
      return result;
    }

    if (qword_1EDC1E1A0 == -1)
    {
LABEL_8:
      v30 = sub_1BC8F7734();
      __swift_project_value_buffer(v30, qword_1EDC2B208);
      v31 = OUTLINED_FUNCTION_3_3();
      v32 = sub_1BC8F7714();
      v33 = sub_1BC8F81E4();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        v112 = v97;
        *v34 = 136446210;
        swift_getErrorValue();
        v35 = v108;
        v36 = v109;
        v37 = sub_1BC8F83F4();
        v95 = &v95;
        v38 = OUTLINED_FUNCTION_0(v37);
        LODWORD(v96) = v33;
        v40 = v39;
        v42 = *(v41 + 64);
        MEMORY[0x1EEE9AC00](v38);
        v44 = &v95 - v43;
        (*(*(v36 - 8) + 16))(&v95 - v43, v35, v36);
        __swift_storeEnumTagSinglePayload(v44, 0, 1, v36);
        sub_1BC8073F0(v44, v36);
        v46 = v45;
        (*(v40 + 8))(v44, v37);
        v47 = OUTLINED_FUNCTION_8_16(v110);
        v49 = sub_1BC7A9A4C(v47, v46, v48);
        v25 = &off_1E7FF5000;

        *(v34 + 4) = v49;
        OUTLINED_FUNCTION_5_15(&dword_1BC7A3000, "Error getting transcript %{public}s", v111);
        __swift_destroy_boxed_opaque_existential_1(v97);
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_6();
      }

      else
      {
      }

      goto LABEL_16;
    }

LABEL_26:
    OUTLINED_FUNCTION_1_1();
    goto LABEL_8;
  }

LABEL_18:
  v78 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_duration;
  OUTLINED_FUNCTION_17_1();
  [v27 setDuration_];
  v79 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated;
  OUTLINED_FUNCTION_17_1();
  v80 = v105;
  v81 = &a1[v79];
  v82 = v104;
  v83 = v106;
  (*(v105 + 16))(v104, v81, v106);
  sub_1BC8F7114();
  v85 = v84;
  (*(v80 + 8))(v82, v83);
  [v27 setDate_];
  v86 = &a1[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_from];
  OUTLINED_FUNCTION_2_14();
  v87 = *v86;
  v88 = v86[1];

  sub_1BC7C3588(v87, v88, v27, &selRef_setSenderDestinationID_);
  v90 = *v86;
  v89 = v86[1];

  sub_1BC7C3588(v90, v89, v27, &selRef_setCallbackDestinationID_);
  v91 = &a1[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recipient];
  OUTLINED_FUNCTION_2_14();
  if (*(v91 + 1))
  {
    v92 = *v91;

    sub_1BC8F7BE4();
    OUTLINED_FUNCTION_3_3();
  }

  else
  {
    v92 = 0;
  }

  [v27 setReceiverDestinationID_];

  v93 = &a1[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_simID];
  OUTLINED_FUNCTION_2_14();
  if (*(v93 + 1))
  {
    v94 = *v93;

    sub_1BC8F7BE4();
    OUTLINED_FUNCTION_3_3();
  }

  else
  {
    v94 = 0;
  }

  [v27 setReceiverLabelID_];

  [v27 setFlags_];
  [v27 setProtocolVersion_];

  return v27;
}

unint64_t sub_1BC833250()
{
  result = qword_1EDC1DDB8;
  if (!qword_1EDC1DDB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC1DDB8);
  }

  return result;
}

void sub_1BC833294(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = sub_1BC8F70C4();
  sub_1BC7D4C94(a1, a2);
  [a3 setTranscriptionData_];
}

uint64_t sub_1BC833308(void *a1)
{
  v1 = [a1 transcriptionData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1BC8F70D4();

  return v3;
}

uint64_t sub_1BC83336C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BC8333D4()
{
  OUTLINED_FUNCTION_29_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  v9 = OUTLINED_FUNCTION_25(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v25 - v12;
  sub_1BC83A95C(v5, v25 - v12, &qword_1EBCF63D0, &qword_1BC902140);
  v14 = sub_1BC8F7FC4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);

  if (EnumTagSinglePayload == 1)
  {
    sub_1BC7C1744(v13, &qword_1EBCF63D0, &qword_1BC902140);
  }

  else
  {
    sub_1BC8F7FB4();
    (*(*(v14 - 8) + 8))(v13, v14);
  }

  v17 = *(v1 + 16);
  v16 = *(v1 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1BC8F7F54();
    v20 = v19;
    swift_unknownObjectRelease();
    if (v7)
    {
LABEL_6:
      v21 = sub_1BC8F7CA4() + 32;
      OUTLINED_FUNCTION_34();
      v22 = swift_allocObject();
      *(v22 + 16) = v3;
      *(v22 + 24) = v1;

      if (v20 | v18)
      {
        v26[0] = 0;
        v26[1] = 0;
        v23 = v26;
        v26[2] = v18;
        v26[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v25[1] = 7;
      v25[2] = v23;
      v25[3] = v21;
      swift_task_create();

      sub_1BC7C1744(v5, &qword_1EBCF63D0, &qword_1BC902140);

      goto LABEL_14;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (v7)
    {
      goto LABEL_6;
    }
  }

  sub_1BC7C1744(v5, &qword_1EBCF63D0, &qword_1BC902140);
  OUTLINED_FUNCTION_34();
  v24 = swift_allocObject();
  *(v24 + 16) = v3;
  *(v24 + 24) = v1;
  if (v20 | v18)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v18;
    v26[7] = v20;
  }

  swift_task_create();
LABEL_14:
  OUTLINED_FUNCTION_24();
}

uint64_t sub_1BC83369C(uint64_t *a1, uint64_t a2, int a3)
{
  v58 = a3;
  v59 = a2;
  v63[1] = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v57 = v53 - v6;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5910, &unk_1BC903510);
  v7 = *(*(v56 - 8) + 64);
  MEMORY[0x1EEE9AC00](v56);
  v9 = (v53 - v8);
  v10 = sub_1BC8F7014();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x1EEE9AC00](v10);
  v53[2] = v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = v53 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = v53 - v18;
  if (qword_1EDC1E1E8 != -1)
  {
    swift_once();
  }

  v20 = sub_1BC8F7734();
  v21 = __swift_project_value_buffer(v20, qword_1EDC2B298);
  v61 = v11[2];
  v62 = a1;
  (v61)(v19, a1, v10);
  v60 = v21;
  v22 = sub_1BC8F7714();
  v23 = sub_1BC8F8204();
  v24 = os_log_type_enabled(v22, v23);
  v55 = v11;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v53[1] = v11 + 2;
    v27 = v9;
    v28 = v26;
    v63[0] = v26;
    *v25 = 136446210;
    sub_1BC83A8CC(&qword_1EDC20610, MEMORY[0x1E6968FB0]);
    v29 = sub_1BC8F8A54();
    v30 = v11;
    v32 = v31;
    v54 = v30[1];
    v54(v19, v10);
    v33 = sub_1BC7A9A4C(v29, v32, v63);

    *(v25 + 4) = v33;
    _os_log_impl(&dword_1BC7A3000, v22, v23, "Loading cache from %{public}s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    v34 = v28;
    v9 = v27;
    MEMORY[0x1BFB2AA50](v34, -1, -1);
    MEMORY[0x1BFB2AA50](v25, -1, -1);
  }

  else
  {

    v54 = v11[1];
    v54(v19, v10);
  }

  v35 = sub_1BC8F7054();
  v37 = v36;
  v38 = sub_1BC8F6C54();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  sub_1BC8F6C44();
  sub_1BC83A914(&qword_1EDC1DFF8, &qword_1EBCF5910, &unk_1BC903510);
  sub_1BC8F6C34();

  v41 = sub_1BC8379C4(v9);
  (v61)(v17, v62, v10);

  v42 = sub_1BC8F7714();
  v43 = sub_1BC8F8204();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v63[0] = v62;
    *v44 = 134349314;
    *(v44 + 4) = sub_1BC82A834();

    *(v44 + 12) = 2082;
    sub_1BC83A8CC(&qword_1EDC20610, MEMORY[0x1E6968FB0]);
    v45 = sub_1BC8F8A54();
    v61 = v9;
    v47 = v46;
    v54(v17, v10);
    v48 = sub_1BC7A9A4C(v45, v47, v63);

    *(v44 + 14) = v48;
    _os_log_impl(&dword_1BC7A3000, v42, v43, "Loaded cache with %{public}ld cached values from %{public}s", v44, 0x16u);
    v49 = v62;
    __swift_destroy_boxed_opaque_existential_1(v62);
    MEMORY[0x1BFB2AA50](v49, -1, -1);
    MEMORY[0x1BFB2AA50](v44, -1, -1);
    sub_1BC7D4C94(v35, v37);

    v50 = v61;
  }

  else
  {
    sub_1BC7D4C94(v35, v37);

    v54(v17, v10);
    v50 = v9;
  }

  sub_1BC7C1744(v50, &qword_1EBCF5910, &unk_1BC903510);
  v51 = *MEMORY[0x1E69E9840];
  return v41;
}

uint64_t MessageStoreService.__allocating_init()()
{
  v0 = swift_allocObject();
  MessageStoreService.init()();
  return v0;
}

void sub_1BC83415C(uint64_t a1)
{
  if (qword_1EDC1E1A0 != -1)
  {
    swift_once();
  }

  v2 = sub_1BC8F7734();
  __swift_project_value_buffer(v2, qword_1EDC2B208);
  swift_unknownObjectRetain();
  oslog = sub_1BC8F7714();
  v3 = sub_1BC8F8204();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    ObjectType = swift_getObjectType();
    v11 = a1;
    v7 = sub_1BC8073F0(&v11, ObjectType);
    v9 = sub_1BC7A9A4C(v7, v8, &v12);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_1BC7A3000, oslog, v3, "Received an xpc event %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1BFB2AA50](v5, -1, -1);
    MEMORY[0x1BFB2AA50](v4, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1BC8342F0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall MessageStoreService.start()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  v3 = OUTLINED_FUNCTION_25(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v22 - v6;
  if (qword_1EDC20728 != -1)
  {
    OUTLINED_FUNCTION_1();
    swift_once();
  }

  v8 = sub_1BC8F7734();
  v9 = OUTLINED_FUNCTION_42_3(v8, qword_1EDC2B3A8);
  v10 = sub_1BC8F8204();
  v11 = OUTLINED_FUNCTION_36_0();
  if (os_log_type_enabled(v11, v12))
  {
    OUTLINED_FUNCTION_45();
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1BC7A3000, v9, v10, "Starting message store service", v13, 2u);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v14 = *(v1 + 16);
  type metadata accessor for GetMessages(0);
  OUTLINED_FUNCTION_34();
  v15 = swift_allocObject();
  *(v15 + 16) = &unk_1BC9032B8;
  *(v15 + 24) = v1;
  sub_1BC83A8CC(&qword_1EDC20AE8, type metadata accessor for GetMessages);

  OUTLINED_FUNCTION_45_5();

  type metadata accessor for GetMessageCount(0);
  OUTLINED_FUNCTION_34();
  v16 = swift_allocObject();
  *(v16 + 16) = &unk_1BC9032D8;
  *(v16 + 24) = v1;
  sub_1BC83A8CC(&qword_1EDC205C8, type metadata accessor for GetMessageCount);

  OUTLINED_FUNCTION_45_5();

  OUTLINED_FUNCTION_34();
  v17 = swift_allocObject();
  *(v17 + 16) = &unk_1BC9032F8;
  *(v17 + 24) = v1;
  sub_1BC809D24();
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_34_5(&type metadata for GetAccountInfo);

  OUTLINED_FUNCTION_34();
  v18 = swift_allocObject();
  *(v18 + 16) = &unk_1BC903318;
  *(v18 + 24) = v1;
  sub_1BC809D78();
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_34_5(&type metadata for GetTranscriptionEnabled);

  OUTLINED_FUNCTION_34();
  v19 = swift_allocObject();
  *(v19 + 16) = &unk_1BC903338;
  *(v19 + 24) = v1;
  sub_1BC809E74();
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_34_5(&type metadata for SaveMessage);

  type metadata accessor for SaveMessageToPhotoLibrary(0);
  sub_1BC83A8CC(&qword_1EDC1FDB8, type metadata accessor for SaveMessageToPhotoLibrary);
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_44_5();

  sub_1BC7A9E5C();
  OUTLINED_FUNCTION_14();

  OUTLINED_FUNCTION_10_13();
  sub_1BC8F7824();

  sub_1BC809E20();
  OUTLINED_FUNCTION_14();

  OUTLINED_FUNCTION_10_13();
  sub_1BC8F7824();

  sub_1BC809DCC();
  OUTLINED_FUNCTION_14();

  OUTLINED_FUNCTION_10_13();
  sub_1BC8F7824();

  type metadata accessor for ReportTranscriptAccuracy(0);
  sub_1BC83A8CC(&unk_1EDC1E430, type metadata accessor for ReportTranscriptAccuracy);
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_44_5();

  sub_1BC809CD0();
  OUTLINED_FUNCTION_14();

  OUTLINED_FUNCTION_10_13();
  sub_1BC8F7814();

  sub_1BC8F7834();
  v20 = sub_1BC8F7FC4();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v1;

  sub_1BC8333D4();
}

uint64_t sub_1BC834884()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_23_4();

  OUTLINED_FUNCTION_27();
  v2 = *(v0 + 72);

  return v1();
}

uint64_t sub_1BC8348E4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_24_7();

  OUTLINED_FUNCTION_27();
  v2 = *(v0 + 72);

  return v1();
}

uint64_t sub_1BC834944()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BC7BD710;

  return sub_1BC8349D4();
}

uint64_t sub_1BC8349E8()
{
  OUTLINED_FUNCTION_32();
  if (qword_1EDC20728 != -1)
  {
    OUTLINED_FUNCTION_1();
    swift_once();
  }

  v1 = sub_1BC8F7734();
  v2 = OUTLINED_FUNCTION_42_3(v1, qword_1EDC2B3A8);
  sub_1BC8F8204();
  v3 = OUTLINED_FUNCTION_36_0();
  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_45();
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_81(v5);
    OUTLINED_FUNCTION_10_1(&dword_1BC7A3000, v6, v7, "Handling incoming GetAccountInfo message");
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v8 = *(v0 + 40);

  OUTLINED_FUNCTION_19_10();
  v9 = *OUTLINED_FUNCTION_53_3();
  v10 = swift_task_alloc();
  *(v0 + 48) = v10;
  *v10 = v0;
  OUTLINED_FUNCTION_15_9(v10);

  return sub_1BC878B94();
}

uint64_t sub_1BC834B08()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  v5 = *(v4 + 48);
  v6 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;

  OUTLINED_FUNCTION_96();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_1BC834BF4(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a1;
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1BC7C0828;

  return v8(a2);
}

uint64_t sub_1BC834CEC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BC834D7C;

  return sub_1BC834E70();
}

uint64_t sub_1BC834D7C()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;

  OUTLINED_FUNCTION_96();
  if (v0)
  {
    v9 = 0;
  }

  else
  {
    v9 = v3 & 1;
  }

  return v8(v9);
}

uint64_t sub_1BC834E84()
{
  OUTLINED_FUNCTION_32();
  if (qword_1EDC20728 != -1)
  {
    OUTLINED_FUNCTION_1();
    swift_once();
  }

  v1 = sub_1BC8F7734();
  v2 = OUTLINED_FUNCTION_42_3(v1, qword_1EDC2B3A8);
  sub_1BC8F8204();
  v3 = OUTLINED_FUNCTION_36_0();
  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_45();
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_81(v5);
    OUTLINED_FUNCTION_10_1(&dword_1BC7A3000, v6, v7, "Handling incoming GetTranscriptionEnabled message");
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v8 = *(v0 + 40);

  OUTLINED_FUNCTION_19_10();
  v9 = *OUTLINED_FUNCTION_53_3();
  v10 = swift_task_alloc();
  *(v0 + 48) = v10;
  *v10 = v0;
  OUTLINED_FUNCTION_15_9(v10);

  return sub_1BC87889C();
}

uint64_t sub_1BC834FA4()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  v5 = *(v4 + 48);
  v6 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;

  OUTLINED_FUNCTION_96();
  if (v0)
  {
    v9 = 0;
  }

  else
  {
    v9 = v3 & 1;
  }

  return v8(v9);
}

uint64_t sub_1BC835098(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a1;
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1BC835190;

  return v8(a2);
}

uint64_t sub_1BC835190()
{
  OUTLINED_FUNCTION_32();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  v5 = v4;
  OUTLINED_FUNCTION_11_3();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v10 = v9;

  if (!v0)
  {
    **(v5 + 16) = v3 & 1;
  }

  v11 = *(v9 + 8);

  return v11();
}

uint64_t sub_1BC835290(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BC7BD624;

  return sub_1BC835328(a1);
}

uint64_t sub_1BC835328(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1BC83533C()
{
  OUTLINED_FUNCTION_32();
  if (qword_1EDC20728 != -1)
  {
    OUTLINED_FUNCTION_1();
    swift_once();
  }

  v1 = sub_1BC8F7734();
  v2 = OUTLINED_FUNCTION_42_3(v1, qword_1EDC2B3A8);
  v3 = sub_1BC8F8204();
  if (OUTLINED_FUNCTION_25_7(v3))
  {
    OUTLINED_FUNCTION_45();
    v4 = swift_slowAlloc();
    OUTLINED_FUNCTION_81(v4);
    OUTLINED_FUNCTION_7_9(&dword_1BC7A3000, v5, v6, "Handling incoming SaveMessage message");
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v8 = v0[6];
  v7 = v0[7];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5AC8, &qword_1BC903478);
  sub_1BC8F77C4();
  v9 = v0[5];
  v0[8] = v9;
  OUTLINED_FUNCTION_19_10();
  v10 = *OUTLINED_FUNCTION_53_3();
  v11 = v9;
  v12 = swift_task_alloc();
  v0[9] = v12;
  *v12 = v0;
  OUTLINED_FUNCTION_15_9(v12);

  return sub_1BC8744D4(v11);
}

uint64_t sub_1BC835488()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  v5 = v4;
  OUTLINED_FUNCTION_11_3();
  *v6 = v5;
  v8 = *(v7 + 72);
  v9 = *(v7 + 64);
  v10 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v11 = v10;
  *(v5 + 80) = v0;

  if (!v0)
  {
    *(v5 + 88) = v3;
  }

  OUTLINED_FUNCTION_38_4();
  OUTLINED_FUNCTION_112();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1BC8355AC()
{
  OUTLINED_FUNCTION_5();

  OUTLINED_FUNCTION_96();
  v2 = *(v0 + 88);

  return v1(v2);
}

uint64_t sub_1BC83560C()
{
  OUTLINED_FUNCTION_5();

  OUTLINED_FUNCTION_27();
  v2 = *(v0 + 80);

  return v1();
}

uint64_t sub_1BC835668()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BC7B0168;

  return sub_1BC835700();
}

uint64_t sub_1BC835700()
{
  OUTLINED_FUNCTION_5();
  v2 = OUTLINED_FUNCTION_48_3(v1);
  v3 = type metadata accessor for SaveMessageToPhotoLibrary(v2);
  OUTLINED_FUNCTION_25(v3);
  v5 = *(v4 + 64);
  *(v0 + 56) = OUTLINED_FUNCTION_47_3();
  v6 = OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BC835774()
{
  OUTLINED_FUNCTION_32();
  if (qword_1EDC20728 != -1)
  {
    OUTLINED_FUNCTION_1();
    swift_once();
  }

  v1 = sub_1BC8F7734();
  v2 = OUTLINED_FUNCTION_42_3(v1, qword_1EDC2B3A8);
  v3 = sub_1BC8F8204();
  if (OUTLINED_FUNCTION_25_7(v3))
  {
    OUTLINED_FUNCTION_45();
    v4 = swift_slowAlloc();
    OUTLINED_FUNCTION_81(v4);
    OUTLINED_FUNCTION_7_9(&dword_1BC7A3000, v5, v6, "Handling incoming SaveMessageToPhotoLibrary message");
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v8 = v0[6];
  v7 = v0[7];
  v9 = v0[5];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5AC0, &qword_1BC903468);
  sub_1BC8F77C4();
  OUTLINED_FUNCTION_19_10();
  OUTLINED_FUNCTION_35_5();
  v10 = swift_task_alloc();
  v0[8] = v10;
  *v10 = v0;
  OUTLINED_FUNCTION_28_6(v10);

  return sub_1BC877474();
}

uint64_t sub_1BC8358A8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_11_3();
  *v3 = v2;
  v5 = *(v4 + 64);
  v6 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;
  *(v8 + 72) = v0;

  if (v0)
  {
    v9 = sub_1BC835A08;
  }

  else
  {
    v9 = sub_1BC8359A8;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1BC8359A8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_22_7();

  OUTLINED_FUNCTION_27();

  return v0();
}

uint64_t sub_1BC835A08()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_22_7();

  OUTLINED_FUNCTION_27();
  v2 = *(v0 + 72);

  return v1();
}

uint64_t sub_1BC835A68(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BC7B0248;

  return sub_1BC835B00(a1);
}

uint64_t sub_1BC835B00(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1BC835B14()
{
  OUTLINED_FUNCTION_32();
  if (qword_1EDC20728 != -1)
  {
    OUTLINED_FUNCTION_1();
    swift_once();
  }

  v1 = sub_1BC8F7734();
  v2 = OUTLINED_FUNCTION_42_3(v1, qword_1EDC2B3A8);
  v3 = sub_1BC8F8204();
  if (OUTLINED_FUNCTION_25_7(v3))
  {
    OUTLINED_FUNCTION_45();
    v4 = swift_slowAlloc();
    OUTLINED_FUNCTION_81(v4);
    OUTLINED_FUNCTION_7_9(&dword_1BC7A3000, v5, v6, "Handling incoming UpdateMessages message");
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v7 = v0[6];
  v8 = v0[7];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5AB0, &qword_1BC903448);
  sub_1BC8F77C4();
  v0[8] = v0[5];
  OUTLINED_FUNCTION_19_10();
  OUTLINED_FUNCTION_35_5();
  v9 = swift_task_alloc();
  v0[9] = v9;
  *v9 = v0;
  v9[1] = sub_1BC835C50;
  v10 = OUTLINED_FUNCTION_14();

  return sub_1BC875478(v10);
}

uint64_t sub_1BC835C50()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v2 = *(v1 + 72);
  v3 = *(v1 + 64);
  v4 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;

  OUTLINED_FUNCTION_27();

  return v6();
}

uint64_t sub_1BC835D4C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BC7B0248;

  return sub_1BC835DE4(a1);
}

uint64_t sub_1BC835DE4(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1BC835DF8()
{
  OUTLINED_FUNCTION_32();
  if (qword_1EDC20728 != -1)
  {
    OUTLINED_FUNCTION_1();
    swift_once();
  }

  v1 = sub_1BC8F7734();
  v2 = OUTLINED_FUNCTION_42_3(v1, qword_1EDC2B3A8);
  v3 = sub_1BC8F8204();
  if (OUTLINED_FUNCTION_25_7(v3))
  {
    OUTLINED_FUNCTION_45();
    v4 = swift_slowAlloc();
    OUTLINED_FUNCTION_81(v4);
    OUTLINED_FUNCTION_7_9(&dword_1BC7A3000, v5, v6, "Handling incoming DeleteMessages message");
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v8 = v0[7];
  v7 = v0[8];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5AA8, &qword_1BC903438);
  sub_1BC8F77C4();
  v9 = v0[5];
  v0[9] = v9;
  OUTLINED_FUNCTION_19_10();
  v10 = OUTLINED_FUNCTION_53_3();
  v0[6] = v9;
  v11 = *v10;
  sub_1BC7A5AB4(v9);
  v12 = swift_task_alloc();
  v0[10] = v12;
  *v12 = v0;
  v12[1] = sub_1BC835F48;
  v13 = OUTLINED_FUNCTION_14();

  return sub_1BC87529C(v13);
}

uint64_t sub_1BC835F48()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_3();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v8 = v7;
  *(v3 + 88) = v0;

  sub_1BC7B0EFC(*(v3 + 48));
  if (v0)
  {
    v9 = sub_1BC8360AC;
  }

  else
  {
    v9 = sub_1BC836050;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1BC836050()
{
  OUTLINED_FUNCTION_5();
  sub_1BC7B0EFC(*(v0 + 72));
  OUTLINED_FUNCTION_27();

  return v1();
}

uint64_t sub_1BC8360AC()
{
  OUTLINED_FUNCTION_5();
  sub_1BC7B0EFC(*(v0 + 72));
  OUTLINED_FUNCTION_27();
  v2 = *(v0 + 88);

  return v1();
}

uint64_t sub_1BC836108()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BC7B0248;

  return sub_1BC8361A0();
}

uint64_t sub_1BC8361A0()
{
  OUTLINED_FUNCTION_5();
  v2 = OUTLINED_FUNCTION_48_3(v1);
  v3 = type metadata accessor for ReportTranscriptAccuracy(v2);
  *(v0 + 56) = v3;
  OUTLINED_FUNCTION_25(v3);
  v5 = *(v4 + 64);
  *(v0 + 64) = OUTLINED_FUNCTION_47_3();
  v6 = OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BC836218()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  if (qword_1EDC20728 != -1)
  {
    OUTLINED_FUNCTION_1();
    swift_once();
  }

  v1 = sub_1BC8F7734();
  v2 = OUTLINED_FUNCTION_42_3(v1, qword_1EDC2B3A8);
  v3 = sub_1BC8F8204();
  if (OUTLINED_FUNCTION_25_7(v3))
  {
    OUTLINED_FUNCTION_45();
    v4 = swift_slowAlloc();
    OUTLINED_FUNCTION_81(v4);
    OUTLINED_FUNCTION_7_9(&dword_1BC7A3000, v5, v6, "Handling incoming ReportTranscriptAccuracy message");
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v8 = v0[7];
  v7 = v0[8];
  v9 = v0[5];
  v10 = v0[6];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5AA0, &qword_1BC903428);
  sub_1BC8F77C4();
  OUTLINED_FUNCTION_19_10();
  v11 = __swift_project_boxed_opaque_existential_1((v10 + 24), *(v10 + 48));
  v12 = *(v7 + *(v8 + 20));
  v13 = *v11;
  v14 = swift_task_alloc();
  v0[9] = v14;
  *v14 = v0;
  v14[1] = sub_1BC836370;
  v15 = v0[8];
  OUTLINED_FUNCTION_112();

  return sub_1BC878C40();
}

uint64_t sub_1BC836370()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_11_3();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;
  *(v8 + 80) = v0;

  if (v0)
  {
    v9 = sub_1BC8364D0;
  }

  else
  {
    v9 = sub_1BC836470;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1BC836470()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_26_5();

  OUTLINED_FUNCTION_27();

  return v0();
}

uint64_t sub_1BC8364D0()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_26_5();

  OUTLINED_FUNCTION_27();
  v2 = *(v0 + 80);

  return v1();
}

uint64_t sub_1BC836530()
{
  if (qword_1EDC20728 != -1)
  {
    OUTLINED_FUNCTION_1();
    swift_once();
  }

  v0 = sub_1BC8F7734();
  __swift_project_value_buffer(v0, qword_1EDC2B3A8);
  v1 = sub_1BC8F7714();
  sub_1BC8F8204();
  v2 = OUTLINED_FUNCTION_36_0();
  if (os_log_type_enabled(v2, v3))
  {
    OUTLINED_FUNCTION_45();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_49_1();
    _os_log_impl(v4, v5, v6, v7, v8, v9);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  return _s20FaceTimeMessageStore011getUserDataD12DirectoryURL10Foundation0I0VyF_0();
}

uint64_t sub_1BC836620()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 40);
  OUTLINED_FUNCTION_19_10();
  v2 = *__swift_project_boxed_opaque_existential_1((v1 + 24), *(v1 + 48));
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_15_9(v3);

  return sub_1BC873454();
}

uint64_t sub_1BC8366C0()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v2 = *(v1 + 48);
  v3 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;

  OUTLINED_FUNCTION_27();

  return v5();
}

void sub_1BC8367A0()
{
  OUTLINED_FUNCTION_29_0();
  v1 = v0;
  v4 = v3(10, v2);
  v5 = v4;
  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = 32;
    do
    {
      v8 = *(v5 + v7);
      v9 = v1;
      v10 = *(v1 + 16);
      MEMORY[0x1EEE9AC00](v4);

      sub_1BC8F7844();
      v1 = v9;

      v7 += 8;
      --v6;
    }

    while (v6);
  }

  OUTLINED_FUNCTION_24();
}

uint64_t MessageStoreService.deinit()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  return v0;
}

uint64_t MessageStoreService.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x1EEE6BDC0](v0, 64, 7);
}

void sub_1BC83698C()
{
  notify_post("com.apple.FaceTimeMessageStore.changed");

  sub_1BC8367A0();
}

void sub_1BC8369F0(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, const char *a5)
{
  v19 = a2;
  a3();

  sub_1BC8F77D4();
  if (v5)
  {

    if (qword_1EDC20728 != -1)
    {
      OUTLINED_FUNCTION_1();
      swift_once();
    }

    v7 = sub_1BC8F7734();
    __swift_project_value_buffer(v7, qword_1EDC2B3A8);

    v8 = sub_1BC8F7714();
    v9 = sub_1BC8F81E4();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v11;
      *v10 = 136315138;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A98, &qword_1BC903408);
      v12 = sub_1BC8F7C94();
      v14 = sub_1BC7A9A4C(v12, v13, &v19);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_1BC7A3000, v8, v9, a5, v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50](v15, v16);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50](v17, v18);
    }
  }

  else
  {
  }
}

Swift::Void __swiftcall MessageStoreService.messageStoreDidDeleteMessages(_:)(Swift::OpaquePointer a1)
{
  OUTLINED_FUNCTION_29_0();
  v2 = v1;
  v3 = sub_1BC8F7264();
  OUTLINED_FUNCTION_0_5();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_12();
  v11 = v10 - v9;
  notify_post("com.apple.FaceTimeMessageStore.changed");
  v12 = sub_1BC7C0454(v2);
  if (!v12)
  {
LABEL_10:
    notify_post("com.apple.FaceTimeMessageStore.changed");

    sub_1BC8367A0();

    OUTLINED_FUNCTION_24();
    return;
  }

  v13 = v12;
  v19 = MEMORY[0x1E69E7CC0];
  sub_1BC7DDB5C();
  if ((v13 & 0x8000000000000000) == 0)
  {
    for (i = 0; i != v13; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1BFB29A00](i, v2);
      }

      else
      {
        v15 = *(v2 + 8 * i + 32);
      }

      v16 = v15;
      v17 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
      swift_beginAccess();
      (*(v5 + 16))(v11, &v16[v17], v3);

      v18 = *(v19 + 16);
      if (v18 >= *(v19 + 24) >> 1)
      {
        sub_1BC7DDB5C();
      }

      *(v19 + 16) = v18 + 1;
      (*(v5 + 32))(v19 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v18, v11, v3);
    }

    goto LABEL_10;
  }

  __break(1u);
}

void sub_1BC836EB0()
{

  sub_1BC899C68();
  v10 = v1;
  sub_1BC7A76DC();
  sub_1BC8F77D4();
  if (v0)
  {

    if (qword_1EDC20728 != -1)
    {
      swift_once();
    }

    v2 = sub_1BC8F7734();
    __swift_project_value_buffer(v2, qword_1EDC2B3A8);

    v3 = sub_1BC8F7714();
    v4 = sub_1BC8F81E4();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v10 = v6;
      *v5 = 136315138;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A98, &qword_1BC903408);
      v7 = sub_1BC8F7C94();
      v9 = sub_1BC7A9A4C(v7, v8, &v10);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_1BC7A3000, v3, v4, "Failed to post deleted messageUUIDs callback for connection %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x1BFB2AA50](v6, -1, -1);
      MEMORY[0x1BFB2AA50](v5, -1, -1);
    }
  }

  else
  {
  }
}

uint64_t sub_1BC8370C4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(uint64_t))
{
  a4(0);
  v6 = sub_1BC8F7E54();

  a5(v6);
}

uint64_t MessageStoreService.messageStoreAccountInfoDidChange(_:)()
{
  notify_post("com.apple.FaceTimeMessageStore.changed");
  v1 = *(v0 + 16);
  return sub_1BC8F7844();
}

void sub_1BC8371A8(uint64_t a1, uint64_t *a2)
{
  v13 = a2;
  sub_1BC7A6C40();
  v4 = a2;
  sub_1BC8F77D4();
  if (v2)
  {

    if (qword_1EDC20728 != -1)
    {
      swift_once();
    }

    v5 = sub_1BC8F7734();
    __swift_project_value_buffer(v5, qword_1EDC2B3A8);

    v6 = sub_1BC8F7714();
    v7 = sub_1BC8F81E4();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v8 = 136315138;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A98, &qword_1BC903408);
      v10 = sub_1BC8F7C94();
      v12 = sub_1BC7A9A4C(v10, v11, &v13);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_1BC7A3000, v6, v7, "Failed to post updated account info callback for connection %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x1BFB2AA50](v9, -1, -1);
      MEMORY[0x1BFB2AA50](v8, -1, -1);
    }
  }

  else
  {
  }
}

Swift::Void __swiftcall MessageStoreService.messageStoreRequiresRefetch()()
{
  notify_post("com.apple.FaceTimeMessageStore.changed");
  v1 = *(v0 + 16);
  sub_1BC8F7844();
}

void sub_1BC837434(uint64_t *a1)
{
  v2 = *a1;
  sub_1BC7A6CE8();
  sub_1BC8F77D4();
  if (v1)
  {
    if (qword_1EDC20728 != -1)
    {
      swift_once();
    }

    v3 = sub_1BC8F7734();
    __swift_project_value_buffer(v3, qword_1EDC2B3A8);

    v4 = sub_1BC8F7714();
    v5 = sub_1BC8F81E4();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v11 = v7;
      *v6 = 136315138;

      v8 = sub_1BC8F7C94();
      v10 = sub_1BC7A9A4C(v8, v9, &v11);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_1BC7A3000, v4, v5, "Failed to post refetch callback for connection %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x1BFB2AA50](v7, -1, -1);
      MEMORY[0x1BFB2AA50](v6, -1, -1);
    }

    else
    {
    }
  }
}

id sub_1BC837650()
{
  sub_1BC7D9730(0, &unk_1EDC1DE40, 0x1E69D8C38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5DF0, &qword_1BC9041D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BC903280;
  *(v0 + 32) = [objc_allocWithZone(MEMORY[0x1E69D8A68]) init];
  *(v0 + 40) = [objc_allocWithZone(MEMORY[0x1E69D8D08]) init];
  *(v0 + 48) = [objc_allocWithZone(MEMORY[0x1E69D8BF8]) init];
  return sub_1BC837714();
}

id sub_1BC837714()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1BC7D9730(0, &unk_1EDC1DD90, 0x1E69D8C40);
  v1 = sub_1BC8F7E34();

  v2 = [v0 initWithDataProviders_];

  return v2;
}

id sub_1BC83779C()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  result = sub_1BC7E5EE4(0xD00000000000001FLL, 0x80000001BC90BCA0);
  if (!result)
  {
    v2 = [objc_opt_self() standardUserDefaults];

    return v2;
  }

  return result;
}

uint64_t sub_1BC837828(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_1BC83787C(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 16) = xmmword_1BC903290;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5B08, &qword_1BC903E10);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v3 + 32) = v7;
  sub_1BC8F7264();
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5908, &qword_1BC903530);
  sub_1BC83A8CC(&unk_1EDC20600, MEMORY[0x1E69695A8]);
  *(v3 + 56) = sub_1BC8F7AD4();
  *(v3 + 64) = 0;
  *(v3 + 72) = a1;
  *(v3 + 80) = a2 & 1;
  sub_1BC83AA10(a3, v3 + qword_1EDC2B1F0, &qword_1EBCF5A20, &qword_1BC901BF0);
  *(v3 + qword_1EDC2B1E8) = *(*(type metadata accessor for MessageAssetInfo() - 8) + 72);
  return v3;
}

uint64_t sub_1BC8379C4(uint64_t *a1)
{
  v2 = type metadata accessor for MessageAssetInfo();
  v97 = *(v2 - 8);
  v3 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v108 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BC8F7264();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v96 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v109 = &v95 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v107 = &v95 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5B20, &qword_1BC903520);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v104 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v103 = &v95 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v95 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5910, &unk_1BC903510);
  v23 = a1 + *(v22 + 84);
  v24 = *v23;
  v25 = *(v23 + 8);
  sub_1BC83A95C(a1 + *(v22 + 80), v21, &qword_1EBCF5A20, &qword_1BC901BF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5B18, &qword_1BC9034F8);
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v111 = sub_1BC83787C(v24, v25, v21);
  v95 = a1;
  v29 = *a1;
  v32 = *(*a1 + 64);
  v31 = *a1 + 64;
  v30 = v32;
  v33 = 1 << *(v29 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & v30;
  v36 = (v33 + 63) >> 6;
  v37 = (v6 + 16);
  v105 = v6;
  v106 = (v6 + 32);
  v101 = (v6 + 8);
  v98 = v29;

  v38 = 0;
  v99 = v36;
  v100 = v31;
  v110 = v37;
  v102 = v5;
  if (!v35)
  {
LABEL_5:
    v40 = v104;
    while (1)
    {
      v39 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      if (v39 >= v36)
      {
        v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5B28, &qword_1BC903528);
        __swift_storeEnumTagSinglePayload(v40, 1, 1, v78);
        v35 = 0;
        goto LABEL_11;
      }

      v35 = *(v31 + 8 * v39);
      ++v38;
      if (v35)
      {
        v38 = v39;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    result = sub_1BC8F8B44();
    __break(1u);
    return result;
  }

  while (1)
  {
    v39 = v38;
LABEL_10:
    v41 = __clz(__rbit64(v35));
    v35 &= v35 - 1;
    v42 = v41 | (v39 << 6);
    v43 = v98;
    v44 = v105;
    v45 = v107;
    (*(v105 + 16))(v107, *(v98 + 48) + *(v105 + 72) * v42, v5);
    v46 = v108;
    sub_1BC805B2C(*(v43 + 56) + *(v97 + 72) * v42, v108);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5B28, &qword_1BC903528);
    v48 = *(v47 + 48);
    v40 = v104;
    (*(v44 + 32))(v104, v45, v5);
    sub_1BC83A9AC(v46, v40 + v48);
    __swift_storeEnumTagSinglePayload(v40, 0, 1, v47);
LABEL_11:
    v49 = v103;
    sub_1BC83AA10(v40, v103, &qword_1EBCF5B20, &qword_1BC903520);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5B28, &qword_1BC903528);
    if (__swift_getEnumTagSinglePayload(v49, 1, v50) == 1)
    {
      break;
    }

    v51 = *(v50 + 48);
    v52 = *v110;
    v53 = v102;
    (*v110)(v109, v49, v102);
    v54 = v107;
    v55 = v53;
    (*v106)(v107, v49, v53);
    sub_1BC83A9AC(v49 + v51, v108);
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5908, &qword_1BC903530);
    v57 = *(v56 + 48);
    v58 = *(v56 + 52);
    swift_allocObject();
    v59 = sub_1BC82BCC0(v54);
    v60 = v111;
    swift_beginAccess();
    v61 = *(v60 + 56);
    swift_isUniquelyReferenced_nonNull_native();
    v112 = *(v60 + 56);
    v62 = v112;
    *(v60 + 56) = 0x8000000000000000;
    v63 = sub_1BC83C928();
    if (__OFADD__(v62[2], (v64 & 1) == 0))
    {
      goto LABEL_35;
    }

    v65 = v63;
    v66 = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5900, &unk_1BC902A70);
    if (sub_1BC8F8734())
    {
      v67 = sub_1BC83C928();
      v5 = v55;
      if ((v66 & 1) != (v68 & 1))
      {
        goto LABEL_37;
      }

      v65 = v67;
    }

    else
    {
      v5 = v55;
    }

    v69 = v112;
    if (v66)
    {
      v70 = v112[7];
      v71 = *(v70 + 8 * v65);
      *(v70 + 8 * v65) = v59;

      (*v101)(v109, v5);
    }

    else
    {
      v112[(v65 >> 6) + 8] |= 1 << v65;
      v72 = v105;
      v73 = v109;
      v52((v69[6] + *(v105 + 72) * v65), v109, v5);
      *(v69[7] + 8 * v65) = v59;
      (*(v72 + 8))(v73, v5);
      v74 = v69[2];
      v75 = __OFADD__(v74, 1);
      v76 = v74 + 1;
      if (v75)
      {
        goto LABEL_36;
      }

      v69[2] = v76;
    }

    v77 = *(v111 + 56);
    *(v111 + 56) = v69;

    swift_endAccess();
    v36 = v99;
    v31 = v100;
    if (!v35)
    {
      goto LABEL_5;
    }
  }

  v79 = v95[1];
  v80 = *(v79 + 16);
  v81 = v102;
  if (!v80)
  {
    return v111;
  }

  v82 = v79 + ((*(v105 + 80) + 32) & ~*(v105 + 80));
  v83 = *(v105 + 72);
  v84 = *(v105 + 16);
  v85 = v95[1];

  v86 = v96;
  v87 = v101;
  do
  {
    v84(v86, v82, v81);
    v88 = v111;
    swift_beginAccess();
    v89 = *(v88 + 56);
    if (*(v89 + 16))
    {
      v90 = sub_1BC83C928();
      v91 = *v87;
      if (v92)
      {
        v93 = *(*(v89 + 56) + 8 * v90);

        v91(v96, v81);
        swift_endAccess();
        sub_1BC82AF70(v93);
        v86 = v96;

        goto LABEL_31;
      }
    }

    else
    {
      v91 = *v87;
    }

    v91(v86, v81);
    swift_endAccess();
LABEL_31:
    v82 += v83;
    --v80;
  }

  while (v80);

  return v111;
}

id sub_1BC8381AC()
{
  v1 = sub_1BC8F7BE4();

  v2 = sub_1BC8F7BE4();

  v3 = [v0 initWithName:v1 bundleIdentifier:v2];

  return v3;
}

uint64_t sub_1BC838234(uint64_t a1, void *a2, int a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v50 = a2;
  v51 = a4;
  v48 = a3;
  v11 = sub_1BC8F7014();
  v46 = *(v11 - 8);
  v47 = v11;
  v12 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v49 = (&v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF4E80, &unk_1BC8FC3C0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v46 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v46 - v21;
  v57[3] = type metadata accessor for ProtectedAppsProvider();
  v57[4] = &off_1F3B3E9A0;
  v57[0] = a1;
  v23 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v24 = sub_1BC7E5EE4(0xD00000000000001FLL, 0x80000001BC90BCA0);
  if (!v24)
  {
    v24 = [objc_opt_self() standardUserDefaults];
  }

  *(a7 + 64) = v24;
  *(a7 + 72) = 0;
  v25 = OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_queue;
  v26 = sub_1BC8F7FC4();
  __swift_storeEnumTagSinglePayload(v22, 1, 1, v26);
  (*(v15 + 104))(v18, *MEMORY[0x1E69E8650], v14);
  AsyncSerialQueue.init(priority:bufferingPolicy:)(v22, v18, a7 + v25);
  v27 = a7 + OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_voicemailController;
  *(v27 + 32) = 0;
  *v27 = 0u;
  *(v27 + 16) = 0u;
  *(a7 + OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_wrappedAccountInfo) = 0;
  v28 = OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_accountInfoLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5B08, &qword_1BC903E10);
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(a7 + v28) = v29;
  v30 = OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_badgeManager;
  type metadata accessor for BadgeManager();
  *(a7 + v30) = BadgeManager.__allocating_init(types:defaults:deviceSupport:featureFlags:queue:)(0, 0, 0, 0);
  *(a7 + OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_deduplicationInProgress) = 0;
  *(a7 + OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  swift_weakInit();
  sub_1BC7A792C(v57, a7 + 16);
  *(a7 + 56) = v48;
  v32 = v50;
  v31 = v51;
  *(a7 + 80) = v50;
  sub_1BC83A95C(v31, &v52, &qword_1EBCF5B10, &qword_1BC9034F0);
  if (v53)
  {
    sub_1BC7CF5EC(&v52, &v54);
    v33 = v32;
  }

  else
  {
    v34 = objc_opt_self();
    v35 = v32;
    v36 = a5;
    v37 = [v34 defaultCenter];
    v38 = type metadata accessor for CloudKitContextProvider();
    swift_allocObject();
    v39 = sub_1BC8E7554(v37, v36);
    v55 = v38;
    v56 = &off_1F3B3E658;
    *&v54 = v39;
    if (v53)
    {
      sub_1BC7C1744(&v52, &qword_1EBCF5B10, &qword_1BC9034F0);
    }
  }

  sub_1BC7CF5EC(&v54, a7 + 88);
  *(a7 + OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_deviceSupport) = a5;
  v40 = v49;
  if (a6)
  {
    v41 = a5;
    v42 = a6;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5B18, &qword_1BC9034F8);
    v43 = a5;
    sub_1BC8D3070();
    if (qword_1EDC1E198 != -1)
    {
      swift_once();
    }

    v42 = sub_1BC83369C(v40, qword_1EDC2B1F8, byte_1EDC2B200);
    (*(v46 + 8))(v40, v47);
  }

  *(a7 + OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_assetCache) = v42;

  sub_1BC81045C();
  __swift_storeEnumTagSinglePayload(v22, 1, 1, v26);
  v44 = swift_allocObject();
  v44[2] = 0;
  v44[3] = 0;
  v44[4] = a7;

  sub_1BC8333D4();

  sub_1BC811448();

  sub_1BC7C1744(v31, &qword_1EBCF5B10, &qword_1BC9034F0);
  __swift_destroy_boxed_opaque_existential_1(v57);
  return a7;
}

uint64_t sub_1BC8387BC(uint64_t a1, uint64_t a2)
{
  v7[3] = type metadata accessor for VoicemailController();
  v7[4] = &off_1F3B3D8B8;
  v7[0] = a1;
  sub_1BC7A792C(v7, v6);
  v4 = OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_voicemailController;
  swift_beginAccess();

  sub_1BC83A754(v6, a2 + v4, &qword_1EBCF58F8, &qword_1BC9034D0);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t sub_1BC838864(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for MessageStoreProviderDataSource();
  v18[3] = v8;
  v18[4] = &off_1F3B3B938;
  v18[0] = a2;
  type metadata accessor for VoicemailController();
  v9 = swift_allocObject();
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v18, v8);
  v11 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v18[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = sub_1BC838998(a1, *v13, a3, a4, v9);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return v15;
}

uint64_t sub_1BC838998(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v27[-v12];
  v34[3] = sub_1BC7D9730(0, &qword_1EDC1DE20, 0x1E69E06A0);
  v34[4] = &off_1F3B3EB60;
  v34[0] = a3;
  v33[3] = type metadata accessor for MessageStoreProviderDataSource();
  v33[4] = &off_1F3B3B938;
  v33[0] = a2;
  *(a5 + 104) = 0u;
  *(a5 + 120) = 0u;
  *(a5 + 136) = 0;
  *(a5 + 16) = a1;
  sub_1BC7A792C(v34, a5 + 24);
  sub_1BC7A792C(v33, a5 + 64);
  sub_1BC83A95C(a4, &v28, &qword_1EBCF5B00, &qword_1BC9034D8);
  if (v29)
  {
    sub_1BC7CF5EC(&v28, &v30);
    sub_1BC7CF5EC(&v30, &v28);
    swift_beginAccess();
    v14 = a1;
    sub_1BC83A754(&v28, a5 + 104, &qword_1EBCF5B00, &qword_1BC9034D8);
  }

  else
  {
    v15 = a1;
    sub_1BC7C1744(&v28, &qword_1EBCF5B00, &qword_1BC9034D8);
    sub_1BC7A792C(a5 + 24, &v30);
    v16 = type metadata accessor for VoicemailDiffableDataSource();
    swift_allocObject();
    v17 = sub_1BC8D6214(&v30, v15);
    v31 = v16;
    v32 = &off_1F3B3DEA8;
    *&v30 = v17;
    swift_beginAccess();
    sub_1BC83A754(&v30, a5 + 104, &qword_1EBCF5B00, &qword_1BC9034D8);
  }

  swift_endAccess();
  result = swift_beginAccess();
  v19 = *(a5 + 128);
  if (v19)
  {
    v20 = *(a5 + 136);
    __swift_mutable_project_boxed_opaque_existential_1(a5 + 104, *(a5 + 128));
    v21 = *(v20 + 16);

    v21(sub_1BC83A7A4, a5, v19, v20);
    swift_endAccess();
    result = swift_beginAccess();
    v22 = *(a5 + 128);
    if (v22)
    {
      v23 = *(a5 + 136);
      __swift_mutable_project_boxed_opaque_existential_1(a5 + 104, *(a5 + 128));
      v24 = *(v23 + 40);

      v24(sub_1BC83A7AC, a5, v22, v23);
      swift_endAccess();
      v25 = sub_1BC8F7FC4();
      __swift_storeEnumTagSinglePayload(v13, 1, 1, v25);
      v26 = swift_allocObject();
      v26[2] = 0;
      v26[3] = 0;
      v26[4] = a5;

      sub_1BC8333D4();

      sub_1BC7C1744(a4, &qword_1EBCF5B00, &qword_1BC9034D8);
      __swift_destroy_boxed_opaque_existential_1(v34);
      __swift_destroy_boxed_opaque_existential_1(v33);
      return a5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1BC838D60(uint64_t *a1, void *a2, void *a3, uint64_t a4, _BYTE *a5)
{
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC20FaceTimeMessageStore20ContactChangeManager_analyticsManager;
  *&a5[OBJC_IVAR____TtC20FaceTimeMessageStore20ContactChangeManager_analyticsManager] = 0;
  *&a5[OBJC_IVAR____TtC20FaceTimeMessageStore20ContactChangeManager_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  a5[OBJC_IVAR____TtC20FaceTimeMessageStore20ContactChangeManager_processingNotification] = 0;
  sub_1BC7A792C(a1, &a5[OBJC_IVAR____TtC20FaceTimeMessageStore20ContactChangeManager_contactStore]);
  *&a5[OBJC_IVAR____TtC20FaceTimeMessageStore20ContactChangeManager_featureFlags] = a2;
  *&a5[OBJC_IVAR____TtC20FaceTimeMessageStore20ContactChangeManager_userDefaults] = a3;
  v12 = *&a5[v11];
  *&a5[v11] = a4;
  v13 = a2;
  v14 = a3;

  v20.receiver = a5;
  v20.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v20, sel_init);
  v16 = objc_opt_self();
  v17 = v15;
  v18 = [v16 defaultCenter];
  [v18 addObserver:v17 selector:sel_contactStoreDidChange_ name:*MEMORY[0x1E695C3D8] object:0];

  sub_1BC881D0C();

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v17;
}

uint64_t sub_1BC838EE4(void *a1, void *a2, uint64_t a3)
{
  sub_1BC8F7264();
  sub_1BC83A8CC(&unk_1EDC20600, MEMORY[0x1E69695A8]);
  v6 = sub_1BC8F7AD4();
  *(a3 + 32) = 0;
  *(a3 + 40) = v6;
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  v7 = a1;
  v8 = a2;
  sub_1BC898480();

  return a3;
}

id sub_1BC838F9C(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, void *a5, int a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *a13, uint64_t a14, uint64_t a15)
{
  v137 = a8;
  v140 = a5;
  v141 = a7;
  LODWORD(v138) = a6;
  v142 = a3;
  v143 = a1;
  v139 = a2;
  v16 = sub_1BC8F8274();
  v135 = *(v16 - 8);
  v136 = v16;
  v17 = v135[8];
  MEMORY[0x1EEE9AC00](v16);
  v134 = &v124 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1BC8F8254();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v21 = sub_1BC8F78E4();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v162[3] = sub_1BC7D9730(0, &qword_1EDC1DD20, 0x1E6993580);
  v162[4] = &off_1F3B3B8F8;
  v162[0] = a4;
  v161[3] = &type metadata for UserSafety;
  v161[4] = &off_1F3B3D688;
  v160[3] = &type metadata for PhysicalWatchConfiguration;
  v160[4] = &off_1F3B3BA28;
  v159[3] = &type metadata for TCCAccessHelper;
  v159[4] = &off_1F3B39A08;
  v157 = type metadata accessor for ProtectedAppsProvider();
  v158 = &off_1F3B3E9A0;
  v131 = v157;
  v156[0] = a14;
  swift_unknownObjectWeakInit();
  v23 = sub_1BC7D9730(0, &qword_1EDC20668, 0x1E69E9610);
  v132 = a15 + 424;
  v133 = "xpcHost";
  *(a15 + 424) = 0u;
  *(a15 + 440) = 0u;
  *(a15 + 456) = 0u;
  sub_1BC8F78D4();
  *&v144 = MEMORY[0x1E69E7CC0];
  sub_1BC83A8CC(&qword_1EDC20670, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5AE0, &qword_1BC9034B0);
  sub_1BC83A914(&qword_1EDC20680, &qword_1EBCF5AE0, &qword_1BC9034B0);
  sub_1BC8F84C4();
  (v135[13])(v134, *MEMORY[0x1E69E8090], v136);
  v133 = v23;
  *(a15 + 512) = sub_1BC8F82A4();
  sub_1BC83A95C(v143, &v154, &qword_1EBCF5AE8, &qword_1BC9034B8);
  if (v155)
  {
    sub_1BC7CF5EC(&v154, &v144);
  }

  else
  {
    sub_1BC7A792C(v156, &v144);
    v153 = 0;
    v151 = 0u;
    v152 = 0u;
    v24 = [objc_opt_self() defaultCenter];
    v25 = [objc_allocWithZone(MEMORY[0x1E699BE70]) init];
    v26 = *(&v145 + 1);
    v27 = __swift_mutable_project_boxed_opaque_existential_1(&v144, *(&v145 + 1));
    v28 = *(*(v26 - 8) + 64);
    MEMORY[0x1EEE9AC00](v27);
    v30 = (&v124 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v31 + 16))(v30);
    v32 = *v30;
    v33 = v131;
    v150[3] = v131;
    v150[4] = &off_1F3B3E9A0;
    v150[0] = v32;
    v34 = type metadata accessor for CoreDataMessageStore();
    v35 = *(v34 + 48);
    v36 = *(v34 + 52);
    v37 = swift_allocObject();
    v38 = __swift_mutable_project_boxed_opaque_existential_1(v150, v33);
    v39 = *(*(v33 - 8) + 64);
    MEMORY[0x1EEE9AC00](v38);
    v41 = (&v124 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v42 + 16))(v41);
    v43 = sub_1BC838234(*v41, v24, 1, &v151, v25, 0, v37);
    __swift_destroy_boxed_opaque_existential_1(v150);
    __swift_destroy_boxed_opaque_existential_1(&v144);
    *(&v145 + 1) = v34;
    v146 = &off_1F3B39E10;
    *&v144 = v43;
    if (v155)
    {
      sub_1BC7C1744(&v154, &qword_1EBCF5AE8, &qword_1BC9034B8);
    }
  }

  sub_1BC7CF5EC(&v144, a15 + 32);
  *(a15 + 112) = &type metadata for CoreImageBlurrer;
  *(a15 + 120) = &off_1F3B3D070;
  *(a15 + 72) = sub_1BC848688;
  *(a15 + 80) = 0;
  sub_1BC7A792C(v161, a15 + 128);
  v44 = v139;
  *(a15 + 168) = v139;
  v45 = v142;
  sub_1BC7A792C(v142, a15 + 184);
  sub_1BC7A792C(v162, a15 + 224);
  v47 = v140;
  v46 = v141;
  *(a15 + 264) = v140;
  *(a15 + 280) = v138 & 1;
  *(a15 + 16) = v46;
  *(a15 + 24) = &off_1F3B3ACC8;
  v48 = v137;
  if (v137)
  {
    v49 = v44;
    v50 = v47;
    v51 = v46;
    v52 = v48;
  }

  else
  {
    v53 = objc_opt_self();
    v54 = v44;
    v55 = v47;
    v56 = v46;
    result = [v53 sharedInstance];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v58 = result;
    v59 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
    type metadata accessor for NotificationManager();
    v60 = swift_allocObject();
    v52 = sub_1BC838EE4(v58, v59, v60);
  }

  v138 = a9;
  v61 = a11;
  *(a15 + 272) = v52;
  sub_1BC7A792C(v160, a15 + 288);
  *(a15 + 176) = a12;
  *(a15 + 368) = a13;
  sub_1BC7A792C(v159, a15 + 376);
  v136 = a10;
  sub_1BC83A95C(a10, &v154, &qword_1EBCF5AF0, &qword_1BC9034C0);
  v134 = a12;
  v135 = a13;
  if (v155)
  {
    sub_1BC7CF5EC(&v154, &v144);

    v62 = a12;
    v63 = a13;
  }

  else
  {
    swift_beginAccess();
    sub_1BC7A792C(a15 + 32, &v151);
    sub_1BC7A792C(v45, v150);

    v64 = a12;
    v65 = a13;
    v126 = sub_1BC837650();
    v66 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
    v67 = *MEMORY[0x1E69935F8];
    sub_1BC8F7C24();
    sub_1BC8F7C24();
    v68 = objc_allocWithZone(MEMORY[0x1E6964E78]);
    v69 = sub_1BC8381AC();
    v70 = sub_1BC83779C();
    v71 = [objc_allocWithZone(MEMORY[0x1E69D8A90]) init];
    v72 = *(&v152 + 1);
    v73 = __swift_mutable_project_boxed_opaque_existential_1(&v151, *(&v152 + 1));
    v130 = &v124;
    v74 = *(*(v72 - 8) + 64);
    MEMORY[0x1EEE9AC00](v73);
    v76 = (&v124 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v77 + 16))(v76);
    v131 = a11;
    v78 = *v76;
    v79 = type metadata accessor for CoreDataMessageStore();
    v149[3] = v79;
    v149[4] = &off_1F3B39E10;
    v149[0] = v78;
    v129 = type metadata accessor for SpotlightIndexManager();
    v80 = swift_allocObject();
    v81 = __swift_mutable_project_boxed_opaque_existential_1(v149, v79);
    v128 = &v124;
    v82 = *(*(v79 - 8) + 64);
    MEMORY[0x1EEE9AC00](v81);
    v84 = (&v124 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v85 + 16))(v84);
    v86 = *v84;
    v148[3] = v79;
    v148[4] = &off_1F3B39E10;
    v148[0] = v86;
    *(v80 + 144) = 0;
    *(v80 + 168) = 0;
    *(v80 + 176) = 0;
    *(v80 + 160) = 0;
    *(v80 + 104) = v66;
    sub_1BC7A792C(v148, v80 + 16);
    sub_1BC7A792C(v150, v80 + 56);
    *(v80 + 96) = v69;
    v87 = v70;
    *(v80 + 152) = v70;
    v88 = v126;
    *(v80 + 112) = v126;
    *(v80 + 120) = v71;
    sub_1BC7A792C(v150, &v144);
    v89 = objc_allocWithZone(type metadata accessor for ContactChangeManager());
    v90 = v66;
    v91 = v87;
    v92 = v90;
    v93 = v91;
    v127 = v69;
    v126 = v88;
    v125 = v71;
    *(v80 + 128) = sub_1BC838D60(&v144, v92, v93, 0, v89);
    *(v80 + 136) = [objc_allocWithZone(MEMORY[0x1E695AED8]) init];
    *(*(v80 + 128) + OBJC_IVAR____TtC20FaceTimeMessageStore20ContactChangeManager_delegate + 8) = &off_1F3B3AFA8;
    swift_unknownObjectWeakAssign();
    v94 = *(v80 + 160);
    *(v80 + 160) = 0;

    v95 = *(v80 + 168);
    *(v80 + 168) = 0;

    v96 = *(v80 + 176);
    *(v80 + 176) = 0;

    v97 = [objc_opt_self() defaultCenter];
    [v97 addObserver:v80 selector:sel_handleLocaleChanges name:*MEMORY[0x1E695D8F0] object:0];

    v98 = *MEMORY[0x1E695AED0];
    v99 = sub_1BC8F8284();
    v100 = swift_allocObject();
    swift_weakInit();
    v146 = sub_1BC83A74C;
    v147 = v100;
    *&v144 = MEMORY[0x1E69E9820];
    *(&v144 + 1) = 1107296256;
    *&v145 = sub_1BC837828;
    *(&v145 + 1) = &block_descriptor_100;
    v101 = _Block_copy(&v144);

    swift_beginAccess();
    notify_register_dispatch(v98, (v80 + 144), v99, v101);
    swift_endAccess();
    v102 = v101;
    v61 = v131;
    _Block_release(v102);

    sub_1BC856440();
    sub_1BC856148();

    __swift_destroy_boxed_opaque_existential_1(v150);
    __swift_destroy_boxed_opaque_existential_1(v148);
    __swift_destroy_boxed_opaque_existential_1(v149);
    __swift_destroy_boxed_opaque_existential_1(&v151);
    *(&v145 + 1) = v129;
    v146 = &off_1F3B3AFB8;
    *&v144 = v80;
    if (v155)
    {
      sub_1BC7C1744(&v154, &qword_1EBCF5AF0, &qword_1BC9034C0);
    }
  }

  sub_1BC7CF5EC(&v144, a15 + 328);
  sub_1BC7A792C(v156, a15 + 472);
  if (v61)
  {
    v103 = v61;
  }

  else
  {
    type metadata accessor for AnalyticsSender();
    v104 = swift_allocObject();
    type metadata accessor for AnalyticsManager();
    swift_allocObject();
    v103 = sub_1BC8EBC08(v104, 1);
  }

  *(&v145 + 1) = type metadata accessor for MessageStoreProviderDataSource();
  v146 = &off_1F3B3B9B8;
  *&v144 = a15;
  swift_beginAccess();

  sub_1BC83A754(&v144, v103 + 16, &qword_1EBCF5AF8, &qword_1BC9034C8);
  swift_endAccess();
  v105 = *(a15 + 464);
  *(a15 + 464) = v103;

  *(*(a15 + 16) + OBJC_IVAR____TtC20FaceTimeMessageStore28VideoMessagingFileTransferer_incomingDelegate + 8) = &off_1F3B3B9A8;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v106 = *(a15 + 56);
  v107 = *(a15 + 64);
  __swift_mutable_project_boxed_opaque_existential_1(a15 + 32, v106);
  v108 = *(v107 + 16);

  v108(a15, &off_1F3B3B978, v106, v107);
  v109 = *(a15 + 56);
  v110 = *(a15 + 64);
  __swift_mutable_project_boxed_opaque_existential_1(a15 + 32, v109);
  (*(v110 + 40))(v103, v109, v110);
  swift_endAccess();
  v111 = *__swift_project_boxed_opaque_existential_1((a15 + 328), *(a15 + 352));
  sub_1BC8563D8(v103);
  swift_beginAccess();
  v112 = *(a15 + 496);
  v113 = *(a15 + 504);
  __swift_mutable_project_boxed_opaque_existential_1(a15 + 472, v112);
  v114 = *(v113 + 16);

  v114(v115, &off_1F3B3B928, v112, v113);
  swift_endAccess();
  sub_1BC83A95C(v138, &v154, &qword_1EBCF58F8, &qword_1BC9034D0);
  if (v155)
  {
    sub_1BC7CF5EC(&v154, &v144);
    v116 = v141;
    v117 = v139;
  }

  else
  {
    v118 = *(a15 + 512);
    v146 = 0;
    v144 = 0u;
    v145 = 0u;
    v119 = objc_allocWithZone(MEMORY[0x1E69E06A0]);

    v120 = sub_1BC838864(v118, a15, [v119 init], &v144);
    *(&v145 + 1) = type metadata accessor for VoicemailController();
    v146 = &off_1F3B3D8B8;
    *&v144 = v120;
    v116 = v141;
    v117 = v139;
    if (v155)
    {
      sub_1BC7C1744(&v154, &qword_1EBCF58F8, &qword_1BC9034D0);
    }
  }

  sub_1BC7A792C(&v144, &v154);
  v121 = v132;
  swift_beginAccess();
  sub_1BC83A754(&v154, v121, &qword_1EBCF58F8, &qword_1BC9034D0);
  swift_endAccess();
  v122 = *__swift_project_boxed_opaque_existential_1((a15 + 32), *(a15 + 56));
  v123 = __swift_project_boxed_opaque_existential_1(&v144, *(&v145 + 1));
  sub_1BC8387BC(*v123, v122);
  sub_1BC878A64();

  sub_1BC7C1744(v136, &qword_1EBCF5AF0, &qword_1BC9034C0);
  sub_1BC7C1744(v138, &qword_1EBCF58F8, &qword_1BC9034D0);
  __swift_destroy_boxed_opaque_existential_1(v142);
  sub_1BC7C1744(v143, &qword_1EBCF5AE8, &qword_1BC9034B8);
  __swift_destroy_boxed_opaque_existential_1(v162);
  __swift_destroy_boxed_opaque_existential_1(v156);
  __swift_destroy_boxed_opaque_existential_1(v159);
  __swift_destroy_boxed_opaque_existential_1(v160);
  __swift_destroy_boxed_opaque_existential_1(v161);
  __swift_destroy_boxed_opaque_existential_1(&v144);
  return a15;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  return sub_1BC7ABB48(a2 + 32, a1 + 32);
}

uint64_t sub_1BC83A054()
{
  OUTLINED_FUNCTION_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_7(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_11(v1);

  return sub_1BC834944();
}

uint64_t sub_1BC83A0D8()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_18_8();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_15(v1);
  OUTLINED_FUNCTION_112();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1BC83A168()
{
  OUTLINED_FUNCTION_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_7(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_11(v1);

  return sub_1BC834CEC();
}

uint64_t sub_1BC83A1EC()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_18_8();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_15(v1);
  OUTLINED_FUNCTION_112();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1BC83A27C()
{
  OUTLINED_FUNCTION_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_7(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_11(v1);

  return sub_1BC835290(v3);
}

uint64_t sub_1BC83A300()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_18_8();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_15(v1);
  OUTLINED_FUNCTION_112();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1BC83A390()
{
  OUTLINED_FUNCTION_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_7(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_11(v1);

  return sub_1BC835668();
}

uint64_t sub_1BC83A414()
{
  OUTLINED_FUNCTION_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_7(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_11(v1);

  return sub_1BC835A68(v3);
}

uint64_t sub_1BC83A498()
{
  OUTLINED_FUNCTION_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_7(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_11(v1);

  return sub_1BC835D4C(v3);
}

uint64_t sub_1BC83A51C()
{
  OUTLINED_FUNCTION_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_7(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_11(v1);

  return sub_1BC836108();
}

uint64_t sub_1BC83A5B8()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_33_7(v1);

  return sub_1BC836600(v3, v4, v5, v6);
}

uint64_t sub_1BC83A754(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_33_8(a1, a2, a3, a4);
  OUTLINED_FUNCTION_4_1(v6);
  (*(v7 + 40))(v4, v5);
  return v4;
}

uint64_t sub_1BC83A7B4()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_33_7(v1);

  return sub_1BC8C59DC();
}

uint64_t sub_1BC83A840()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_33_7(v1);

  return sub_1BC810590(v3, v4, v5, v6);
}

uint64_t sub_1BC83A8CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BC83A914(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BC83A95C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_33_8(a1, a2, a3, a4);
  OUTLINED_FUNCTION_4_1(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

uint64_t sub_1BC83A9AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageAssetInfo();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC83AA10(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_33_8(a1, a2, a3, a4);
  OUTLINED_FUNCTION_4_1(v6);
  (*(v7 + 32))(v4, v5);
  return v4;
}

void FTLocalMessage.description.getter()
{
  OUTLINED_FUNCTION_29_0();
  isUniquelyReferenced_nonNull_native = v0;
  v223[5] = *MEMORY[0x1E69E9840];
  v2 = sub_1BC8F7C64();
  v3 = OUTLINED_FUNCTION_25(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_12();
  v202[0] = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  v9 = OUTLINED_FUNCTION_25(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_21_9(v202 - v14);
  v208 = sub_1BC8F7134();
  v15 = OUTLINED_FUNCTION_0(v208);
  v207 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_21_9(v20 - v19);
  v206 = sub_1BC8F7154();
  v21 = OUTLINED_FUNCTION_0(v206);
  v204 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_21_9(v26 - v25);
  v211 = sub_1BC8F71E4();
  v27 = OUTLINED_FUNCTION_0(v211);
  v202[2] = v28;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_12();
  v202[1] = v32 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D80, &qword_1BC8FEA60);
  v34 = OUTLINED_FUNCTION_25(v33);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_21_9(v202 - v40);
  v41 = sub_1BC8F7264();
  v42 = OUTLINED_FUNCTION_0(v41);
  v216 = v43;
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_12();
  v215 = v47 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  v49 = OUTLINED_FUNCTION_25(v48);
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_20_0();
  v54 = v52 - v53;
  v56 = MEMORY[0x1EEE9AC00](v55);
  v58 = v202 - v57;
  v59 = MEMORY[0x1EEE9AC00](v56);
  v61 = v202 - v60;
  v62 = MEMORY[0x1EEE9AC00](v59);
  v64 = v202 - v63;
  v65 = MEMORY[0x1EEE9AC00](v62);
  v67 = v202 - v66;
  MEMORY[0x1EEE9AC00](v65);
  v69 = v202 - v68;
  *&v220 = 0x555564726F636572;
  *(&v220 + 1) = 0xEA00000000004449;
  v70 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_11_0();
  sub_1BC8F8544();
  v217 = isUniquelyReferenced_nonNull_native;
  v71 = [isUniquelyReferenced_nonNull_native recordUUID];
  if (v71)
  {
    isUniquelyReferenced_nonNull_native = v71;
    sub_1BC8F7244();

    v72 = 0;
  }

  else
  {
    v72 = 1;
  }

  __swift_storeEnumTagSinglePayload(v67, v72, 1, v41);
  sub_1BC83E9A8(v67, v69, &unk_1EBCF5D70, &qword_1BC8FC740);
  if (__swift_getEnumTagSinglePayload(v69, 1, v41))
  {
    sub_1BC7C1744(v69, &unk_1EBCF5D70, &qword_1BC8FC740);
    v73 = MEMORY[0x1E69E7CC8];
    v74 = sub_1BC83C8E8();
    if (v75)
    {
      v76 = v74;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v219 = v73;
      v77 = *(v73 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_5_16();
      sub_1BC8F8734();
      OUTLINED_FUNCTION_38_5();
      sub_1BC8037DC(v78 + v76 * v79);
      sub_1BC7F0E58((*(v77 + 56) + 32 * v76), &v220);
      sub_1BC8F8754();
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
      v77 = MEMORY[0x1E69E7CC8];
    }

    sub_1BC8037DC(v223);
    sub_1BC7C1744(&v220, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  else
  {
    OUTLINED_FUNCTION_13_11();
    isUniquelyReferenced_nonNull_native = *(v80 - 256);
    v81(isUniquelyReferenced_nonNull_native, v69, v41);
    sub_1BC7C1744(v69, &unk_1EBCF5D70, &qword_1BC8FC740);
    v82 = sub_1BC8F7204();
    v84 = v83;
    (*(v54 + 8))(isUniquelyReferenced_nonNull_native, v41);
    v222 = v70;
    *&v220 = v82;
    *(&v220 + 1) = v84;
    OUTLINED_FUNCTION_29_5();
    v85 = MEMORY[0x1E69E7CC8];
    swift_isUniquelyReferenced_nonNull_native();
    v218 = v85;
    OUTLINED_FUNCTION_8();
    v77 = v218;
    sub_1BC8037DC(v223);
  }

  *&v220 = 0x444955556C6C6163;
  *(&v220 + 1) = 0xE800000000000000;
  v86 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_11_0();
  sub_1BC8F8544();
  v87 = [v217 callUUID];
  if (v87)
  {
    v88 = v87;
    sub_1BC8F7244();

    v89 = 0;
  }

  else
  {
    v89 = 1;
  }

  __swift_storeEnumTagSinglePayload(v61, v89, 1, v41);
  sub_1BC83E9A8(v61, v64, &unk_1EBCF5D70, &qword_1BC8FC740);
  if (__swift_getEnumTagSinglePayload(v64, 1, v41))
  {
    sub_1BC7C1744(v64, &unk_1EBCF5D70, &qword_1BC8FC740);
    v90 = sub_1BC83C8E8();
    if (v91)
    {
      v92 = v90;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v219 = v77;
      v64 = *(v77 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_5_16();
      sub_1BC8F8734();
      OUTLINED_FUNCTION_38_5();
      sub_1BC8037DC(v93 + v92 * v94);
      sub_1BC7F0E58((*(v77 + 56) + 32 * v92), &v220);
      sub_1BC8F8754();
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    OUTLINED_FUNCTION_46_5();
    sub_1BC8037DC(v223);
    sub_1BC7C1744(&v220, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  else
  {
    OUTLINED_FUNCTION_13_11();
    v96 = *(v95 - 256);
    v97(v96, v64, v41);
    sub_1BC7C1744(v64, &unk_1EBCF5D70, &qword_1BC8FC740);
    sub_1BC8F7204();
    OUTLINED_FUNCTION_49_2();
    (*(v54 + 8))(v96, v41);
    v222 = v86;
    *&v220 = v96;
    *(&v220 + 1) = isUniquelyReferenced_nonNull_native;
    OUTLINED_FUNCTION_29_5();
    swift_isUniquelyReferenced_nonNull_native();
    v218 = v77;
    OUTLINED_FUNCTION_8();
    v77 = v218;
    sub_1BC8037DC(v223);
    OUTLINED_FUNCTION_46_5();
  }

  strcpy(&v220, "conversationID");
  HIBYTE(v220) = -18;
  v98 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_11_0();
  sub_1BC8F8544();
  v99 = [v86 conversationID];
  if (v99)
  {
    v100 = v99;
    sub_1BC8F7244();

    v101 = 0;
  }

  else
  {
    v101 = 1;
  }

  __swift_storeEnumTagSinglePayload(v54, v101, 1, v41);
  sub_1BC83E9A8(v54, v58, &unk_1EBCF5D70, &qword_1BC8FC740);
  if (__swift_getEnumTagSinglePayload(v58, 1, v41))
  {
    sub_1BC7C1744(v58, &unk_1EBCF5D70, &qword_1BC8FC740);
    v102 = sub_1BC83C8E8();
    if (v103)
    {
      v104 = v102;
      swift_isUniquelyReferenced_nonNull_native();
      v219 = v77;
      v105 = *(v77 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_5_16();
      sub_1BC8F8734();
      OUTLINED_FUNCTION_38_5();
      sub_1BC8037DC(v106 + v104 * v107);
      OUTLINED_FUNCTION_40_5(*(v77 + 56));
      OUTLINED_FUNCTION_27_5();
      sub_1BC8F8754();
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    OUTLINED_FUNCTION_44_6();
    sub_1BC8037DC(v223);
    sub_1BC7C1744(&v220, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  else
  {
    OUTLINED_FUNCTION_13_11();
    v109 = *(v108 - 256);
    v110(v109, v58, v41);
    sub_1BC7C1744(v58, &unk_1EBCF5D70, &qword_1BC8FC740);
    sub_1BC8F7204();
    OUTLINED_FUNCTION_49_2();
    (*(v54 + 8))(v109, v41);
    v222 = v98;
    *&v220 = v109;
    *(&v220 + 1) = isUniquelyReferenced_nonNull_native;
    OUTLINED_FUNCTION_29_5();
    swift_isUniquelyReferenced_nonNull_native();
    v218 = v77;
    OUTLINED_FUNCTION_8();
    v77 = v218;
    sub_1BC8037DC(v223);
    OUTLINED_FUNCTION_44_6();
  }

  *&v220 = 0x546567617373656DLL;
  *(&v220 + 1) = 0xEB00000000657079;
  OUTLINED_FUNCTION_3_17();
  sub_1BC8F8544();
  v111 = [v86 messageType];
  v222 = MEMORY[0x1E69E7290];
  LOWORD(v220) = v111;
  OUTLINED_FUNCTION_29_5();
  swift_isUniquelyReferenced_nonNull_native();
  v218 = v77;
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_43_4();
  *&v220 = 1836020326;
  *(&v220 + 1) = 0xE400000000000000;
  OUTLINED_FUNCTION_3_17();
  sub_1BC8F8544();
  v112 = sub_1BC7C19F8(v86, &selRef_from);
  if (v113)
  {
    OUTLINED_FUNCTION_18_9(v112, v113);
    swift_isUniquelyReferenced_nonNull_native();
    v114 = OUTLINED_FUNCTION_6_12();
    sub_1BC83D6F0(v114, v115);
    OUTLINED_FUNCTION_43_4();
  }

  else
  {
    OUTLINED_FUNCTION_52();
    if (v116)
    {
      OUTLINED_FUNCTION_53_4();
      OUTLINED_FUNCTION_24_8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_5_16();
      sub_1BC8F8734();
      OUTLINED_FUNCTION_17_8();
      OUTLINED_FUNCTION_34_6();
      OUTLINED_FUNCTION_27_5();
      sub_1BC8F8754();
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    sub_1BC8037DC(v223);
    sub_1BC7C1744(&v220, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  *&v220 = 0x72656469766F7270;
  *(&v220 + 1) = 0xE800000000000000;
  OUTLINED_FUNCTION_3_17();
  sub_1BC8F8544();
  v117 = sub_1BC7C19F8(v86, &selRef_provider);
  if (v118)
  {
    OUTLINED_FUNCTION_18_9(v117, v118);
    swift_isUniquelyReferenced_nonNull_native();
    v119 = OUTLINED_FUNCTION_6_12();
    sub_1BC83D6F0(v119, v120);
    OUTLINED_FUNCTION_43_4();
  }

  else
  {
    OUTLINED_FUNCTION_52();
    if (v121)
    {
      OUTLINED_FUNCTION_53_4();
      OUTLINED_FUNCTION_24_8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_5_16();
      sub_1BC8F8734();
      OUTLINED_FUNCTION_17_8();
      OUTLINED_FUNCTION_34_6();
      OUTLINED_FUNCTION_27_5();
      sub_1BC8F8754();
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    sub_1BC8037DC(v223);
    sub_1BC7C1744(&v220, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  *&v220 = 0x6165724365746164;
  *(&v220 + 1) = 0xEB00000000646574;
  v122 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_3_17();
  sub_1BC8F8544();
  v123 = [v86 dateCreated];
  if (v123)
  {
    v124 = v123;
    sub_1BC8F71B4();

    v125 = 0;
  }

  else
  {
    v125 = 1;
  }

  __swift_storeEnumTagSinglePayload(v98, v125, 1, v64);
  sub_1BC83E9A8(v98, v58, &unk_1EBCF5D80, &qword_1BC8FEA60);
  if (__swift_getEnumTagSinglePayload(v58, 1, v64))
  {
    sub_1BC7C1744(v58, &unk_1EBCF5D80, &qword_1BC8FEA60);
    OUTLINED_FUNCTION_52();
    if (v126)
    {
      OUTLINED_FUNCTION_53_4();
      OUTLINED_FUNCTION_24_8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_5_16();
      sub_1BC8F8734();
      OUTLINED_FUNCTION_17_8();
      OUTLINED_FUNCTION_34_6();
      OUTLINED_FUNCTION_27_5();
      sub_1BC8F8754();
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    v138 = v209;
    sub_1BC8037DC(v223);
    sub_1BC7C1744(&v220, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  else
  {
    OUTLINED_FUNCTION_41_7();
    v128 = *(v127 - 256);
    v129(v128, v58, v64);
    sub_1BC7C1744(v58, &unk_1EBCF5D80, &qword_1BC8FEA60);
    v130 = v203;
    sub_1BC8F7144();
    v131 = v205;
    sub_1BC8F7124();
    v132 = sub_1BC8F71C4();
    v134 = v133;
    (*(v207 + 8))(v131, v208);
    (*(v204 + 8))(v130, v206);
    v135 = *(v98 + 8);
    v98 += 8;
    v135(v128, v64);
    v222 = v122;
    *&v220 = v132;
    *(&v220 + 1) = v134;
    OUTLINED_FUNCTION_25_0();
    v136 = OUTLINED_FUNCTION_6_12();
    sub_1BC83D6F0(v136, v137);
    OUTLINED_FUNCTION_43_4();
    v138 = v209;
  }

  strcpy(&v220, "dateModified");
  BYTE13(v220) = 0;
  HIWORD(v220) = -5120;
  v139 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_3_17();
  sub_1BC8F8544();
  v140 = [v86 dateModified];
  if (v140)
  {
    v141 = v140;
    sub_1BC8F71B4();

    v142 = 0;
  }

  else
  {
    v142 = 1;
  }

  __swift_storeEnumTagSinglePayload(v138, v142, 1, v64);
  v143 = v210;
  sub_1BC83E9A8(v138, v210, &unk_1EBCF5D80, &qword_1BC8FEA60);
  if (__swift_getEnumTagSinglePayload(v143, 1, v64))
  {
    sub_1BC7C1744(v143, &unk_1EBCF5D80, &qword_1BC8FEA60);
    OUTLINED_FUNCTION_52();
    if (v144)
    {
      OUTLINED_FUNCTION_53_4();
      OUTLINED_FUNCTION_24_8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_5_16();
      sub_1BC8F8734();
      OUTLINED_FUNCTION_17_8();
      OUTLINED_FUNCTION_34_6();
      OUTLINED_FUNCTION_27_5();
      sub_1BC8F8754();
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    sub_1BC8037DC(v223);
    sub_1BC7C1744(&v220, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  else
  {
    OUTLINED_FUNCTION_41_7();
    v146 = *(v145 - 256);
    v147(v146, v143, v64);
    sub_1BC7C1744(v143, &unk_1EBCF5D80, &qword_1BC8FEA60);
    v148 = v203;
    sub_1BC8F7144();
    v149 = v205;
    sub_1BC8F7124();
    sub_1BC8F71C4();
    OUTLINED_FUNCTION_49_2();
    (*(v207 + 8))(v149, v208);
    (*(v204 + 8))(v148, v206);
    v150 = *(v98 + 8);
    v151 = OUTLINED_FUNCTION_44_2();
    v152(v151);
    v222 = v139;
    *&v220 = v146;
    *(&v220 + 1) = v138;
    OUTLINED_FUNCTION_25_0();
    v153 = OUTLINED_FUNCTION_6_12();
    sub_1BC83D6F0(v153, v154);
    OUTLINED_FUNCTION_43_4();
  }

  *&v220 = 0x646165527369;
  *(&v220 + 1) = 0xE600000000000000;
  OUTLINED_FUNCTION_3_17();
  sub_1BC8F8544();
  v155 = [v86 isRead];
  v156 = MEMORY[0x1E69E6370];
  v222 = MEMORY[0x1E69E6370];
  LOBYTE(v220) = v155;
  OUTLINED_FUNCTION_25_0();
  v157 = OUTLINED_FUNCTION_6_12();
  sub_1BC83D6F0(v157, v158);
  OUTLINED_FUNCTION_33_9();
  *&v220 = 0x6E6F697461727564;
  *(&v220 + 1) = 0xE800000000000000;
  OUTLINED_FUNCTION_3_17();
  sub_1BC8F8544();
  [v86 duration];
  v222 = MEMORY[0x1E69E63B0];
  *&v220 = v159;
  OUTLINED_FUNCTION_7_10();
  OUTLINED_FUNCTION_2_16();
  OUTLINED_FUNCTION_33_9();
  *&v220 = 0x54786F626C69616DLL;
  *(&v220 + 1) = 0xEB00000000657079;
  OUTLINED_FUNCTION_3_17();
  sub_1BC8F8544();
  v160 = [v86 mailboxType];
  v222 = MEMORY[0x1E69E7290];
  LOWORD(v220) = v160;
  OUTLINED_FUNCTION_7_10();
  OUTLINED_FUNCTION_2_16();
  OUTLINED_FUNCTION_33_9();
  *&v220 = 0x7469736E65537369;
  *(&v220 + 1) = 0xEB00000000657669;
  OUTLINED_FUNCTION_3_17();
  sub_1BC8F8544();
  v161 = [v86 isSensitive];
  v222 = v156;
  LOBYTE(v220) = v161;
  OUTLINED_FUNCTION_7_10();
  OUTLINED_FUNCTION_2_16();
  OUTLINED_FUNCTION_33_9();
  *&v220 = 0x5454527369;
  *(&v220 + 1) = 0xE500000000000000;
  OUTLINED_FUNCTION_3_17();
  sub_1BC8F8544();
  v162 = [v86 isRTT];
  v222 = v156;
  LOBYTE(v220) = v162;
  OUTLINED_FUNCTION_7_10();
  OUTLINED_FUNCTION_2_16();
  OUTLINED_FUNCTION_33_9();
  *&v220 = 0x466567617373656DLL;
  *(&v220 + 1) = 0xEB00000000656C69;
  OUTLINED_FUNCTION_3_17();
  sub_1BC8F8544();
  v163 = [v86 messageFile];
  if (v163)
  {
    v164 = v212;
    sub_1BC8F6FB4();

    v165 = 0;
    v166 = v213;
  }

  else
  {
    v165 = 1;
    v166 = v213;
    v164 = v212;
  }

  v167 = v163 != 0;
  v168 = sub_1BC8F7014();
  v169 = 1;
  __swift_storeEnumTagSinglePayload(v164, v165, 1, v168);
  sub_1BC7C1744(v164, &qword_1EBCF5A20, &qword_1BC901BF0);
  v222 = v156;
  LOBYTE(v220) = v167;
  OUTLINED_FUNCTION_7_10();
  OUTLINED_FUNCTION_2_16();
  OUTLINED_FUNCTION_33_9();
  *&v220 = 0xD000000000000010;
  *(&v220 + 1) = 0x80000001BC90B180;
  OUTLINED_FUNCTION_11_0();
  sub_1BC8F8544();
  v170 = [v86 messageThumbnail];
  if (v170)
  {
    sub_1BC8F6FB4();

    v169 = 0;
  }

  v171 = v170 != 0;
  v172 = 1;
  __swift_storeEnumTagSinglePayload(v166, v169, 1, v168);
  sub_1BC7C1744(v166, &qword_1EBCF5A20, &qword_1BC901BF0);
  v222 = v156;
  LOBYTE(v220) = v171;
  OUTLINED_FUNCTION_7_10();
  OUTLINED_FUNCTION_2_16();
  OUTLINED_FUNCTION_33_9();
  *&v220 = 0x7263736E6172745FLL;
  *(&v220 + 1) = 0xEB00000000747069;
  OUTLINED_FUNCTION_11_0();
  sub_1BC8F8544();
  v173 = [v86 transcript];
  v174 = v214;
  if (v173)
  {
    sub_1BC8F6FB4();

    v172 = 0;
  }

  __swift_storeEnumTagSinglePayload(v174, v172, 1, v168);
  sub_1BC7C1744(v174, &qword_1EBCF5A20, &qword_1BC901BF0);
  v222 = v156;
  LOBYTE(v220) = v173 != 0;
  OUTLINED_FUNCTION_7_10();
  OUTLINED_FUNCTION_2_16();
  OUTLINED_FUNCTION_33_9();
  *&v220 = 0xD000000000000013;
  *(&v220 + 1) = 0x80000001BC90B210;
  v175 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_3_17();
  sub_1BC8F8544();
  v176 = [v86 transcriptionStatus];
  v222 = MEMORY[0x1E69E7290];
  LOWORD(v220) = v176;
  OUTLINED_FUNCTION_7_10();
  OUTLINED_FUNCTION_2_16();
  OUTLINED_FUNCTION_33_9();
  *&v220 = 0x7974696C617571;
  *(&v220 + 1) = 0xE700000000000000;
  OUTLINED_FUNCTION_3_17();
  sub_1BC8F8544();
  v177 = sub_1BC7C19F8(v86, &selRef_quality);
  if (v178)
  {
    v222 = v175;
    *&v220 = v177;
    *(&v220 + 1) = v178;
    OUTLINED_FUNCTION_7_10();
    OUTLINED_FUNCTION_2_16();
    OUTLINED_FUNCTION_33_9();
  }

  else
  {
    sub_1BC83C8E8();
    if (v179)
    {
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_39_4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_5_16();
      sub_1BC8F8734();
      OUTLINED_FUNCTION_32_4();
      OUTLINED_FUNCTION_40_5(v221);
      OUTLINED_FUNCTION_29();
      sub_1BC8F8754();
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    sub_1BC8037DC(v223);
    sub_1BC7C1744(&v220, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  *&v220 = 0x6E65697069636572;
  *(&v220 + 1) = 0xE900000000000074;
  v180 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_3_17();
  sub_1BC8F8544();
  v181 = sub_1BC7C19F8(v86, &selRef_recipient);
  if (v182)
  {
    sub_1BC7EB6B4(v181, v182);
    v184 = v183;
    v186 = v185;

    v222 = v180;
    *&v220 = v184;
    *(&v220 + 1) = v186;
    OUTLINED_FUNCTION_7_10();
    OUTLINED_FUNCTION_2_16();
    OUTLINED_FUNCTION_33_9();
  }

  else
  {
    sub_1BC83C8E8();
    if (v187)
    {
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_39_4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_5_16();
      sub_1BC8F8734();
      OUTLINED_FUNCTION_32_4();
      OUTLINED_FUNCTION_40_5(v221);
      OUTLINED_FUNCTION_29();
      sub_1BC8F8754();
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    sub_1BC8037DC(v223);
    sub_1BC7C1744(&v220, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  *&v220 = 0x44496D6973;
  *(&v220 + 1) = 0xE500000000000000;
  v188 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_3_17();
  sub_1BC8F8544();
  v189 = sub_1BC7C19F8(v86, &selRef_simID);
  if (v190)
  {
    v222 = v188;
    *&v220 = v189;
    *(&v220 + 1) = v190;
    OUTLINED_FUNCTION_7_10();
    OUTLINED_FUNCTION_2_16();
    OUTLINED_FUNCTION_33_9();
  }

  else
  {
    sub_1BC83C8E8();
    if (v191)
    {
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_39_4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_5_16();
      sub_1BC8F8734();
      OUTLINED_FUNCTION_32_4();
      OUTLINED_FUNCTION_40_5(v221);
      OUTLINED_FUNCTION_29();
      sub_1BC8F8754();
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    sub_1BC8037DC(v223);
    sub_1BC7C1744(&v220, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  *&v220 = 0x69616D6563696F76;
  *(&v220 + 1) = 0xEB0000000044496CLL;
  OUTLINED_FUNCTION_11_0();
  sub_1BC8F8544();
  v192 = [v86 voicemailID];
  v222 = MEMORY[0x1E69E72F0];
  LODWORD(v220) = v192;
  OUTLINED_FUNCTION_7_10();
  OUTLINED_FUNCTION_2_16();
  sub_1BC8037DC(v223);
  v193 = objc_opt_self();
  v194 = sub_1BC8F7A94();
  v223[0] = 0;
  v195 = [v193 dataWithJSONObject:v194 options:11 error:v223];

  v196 = v223[0];
  if (v195)
  {
    sub_1BC8F70D4();

    sub_1BC8F7C54();
    OUTLINED_FUNCTION_50();
    sub_1BC8F7C34();
    v197 = OUTLINED_FUNCTION_50();
    sub_1BC7D4C94(v197, v198);
  }

  else
  {
    v199 = v196;

    v200 = sub_1BC8F6EA4();

    swift_willThrow();
    v223[0] = 0;
    v223[1] = 0xE000000000000000;
    swift_getErrorValue();
    sub_1BC8F8A64();
  }

  v201 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_24();
}

void sub_1BC83C50C()
{
  OUTLINED_FUNCTION_29_0();
  v2 = v1;
  v3 = sub_1BC8F7454();
  v4 = OUTLINED_FUNCTION_25(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_12();
  v7 = type metadata accessor for FaceTimeMessageStore_Summary();
  v8 = OUTLINED_FUNCTION_4_1(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_20_0();
  v13 = (v11 - v12);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v25 - v15;
  sub_1BC8555A0(0x447972616D6D7573, 0xEB00000000617461, v0);
  v17 = sub_1BC8F7BE4();
  v18 = [v0 primitiveValueForKey_];

  if (v18)
  {
    sub_1BC8F8474();
    swift_unknownObjectRelease();
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
  }

  v25[0] = v29;
  v25[1] = v30;
  if (!*(&v30 + 1))
  {
    sub_1BC7C1744(v25, &unk_1EBCF5E50, &qword_1BC8FE850);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    *v2 = 0;
    v2[1] = 0;
    v2[2] = 0;
    goto LABEL_9;
  }

  v19 = v27;
  v20 = v28;
  sub_1BC8555AC(0x447972616D6D7573, 0xEB00000000617461, v0);
  *&v29 = v19;
  *(&v29 + 1) = v20;
  v26 = 0;
  OUTLINED_FUNCTION_15_10();
  sub_1BC7EC5DC(v19, v20);
  sub_1BC8F7444();
  sub_1BC83ECC4(&qword_1EBCF5B58, type metadata accessor for FaceTimeMessageStore_Summary);
  sub_1BC8F7554();
  sub_1BC7D4C94(v19, v20);
  sub_1BC83EDC0(v16, v13, type metadata accessor for FaceTimeMessageStore_Summary);
  v21 = *v13;
  v23 = *(v13 + 1);
  v22 = *(v13 + 2);

  sub_1BC83ED08(v13);
  *v2 = v21;
  v2[1] = v23;
  v2[2] = v22;
LABEL_9:
  OUTLINED_FUNCTION_24();
}

unint64_t sub_1BC83C8E8()
{
  v1 = *(v0 + 40);
  sub_1BC8F8524();
  v2 = OUTLINED_FUNCTION_121();

  return sub_1BC83CBC0(v2, v3);
}

unint64_t sub_1BC83C928()
{
  v1 = *(v0 + 40);
  sub_1BC8F7264();
  OUTLINED_FUNCTION_14_10();
  sub_1BC83ECC4(v2, v3);
  OUTLINED_FUNCTION_50();
  sub_1BC8F7B54();
  v4 = OUTLINED_FUNCTION_121();

  return sub_1BC83CC84(v4, v5);
}

unint64_t sub_1BC83C9A8(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1BC8F8C04();
  sub_1BC83EA74();
  v4 = sub_1BC8F8C64();

  return sub_1BC83CE40(a1, v4);
}

unint64_t sub_1BC83CA14(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1BC8F7C24();
  sub_1BC8F8C04();
  sub_1BC8F7CD4();
  v4 = sub_1BC8F8C64();

  return sub_1BC83D270(a1, v4);
}

unint64_t sub_1BC83CAA8()
{
  v1 = *(v0 + 40);
  sub_1BC8F8394();
  v2 = OUTLINED_FUNCTION_121();

  return sub_1BC83D368(v2, v3);
}

uint64_t sub_1BC83CB40(uint64_t a1, void (*a2)(_BYTE *, uint64_t), uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = *(v3 + 40);
  sub_1BC8F8C04();
  a2(v10, a1);
  v7 = sub_1BC8F8C64();

  return a3(a1, v7);
}

unint64_t sub_1BC83CBC0(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_1BC83EE1C(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x1BFB29940](v8, a1);
    sub_1BC8037DC(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1BC83CC84(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v4 = sub_1BC8F7264();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + 64;
  v13 = ~(-1 << *(v2 + 32));
  for (i = a2 & v13; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v5 + 16))(v8, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_1BC83ECC4(&unk_1EDC205F0, MEMORY[0x1E69695A8]);
    v10 = sub_1BC8F7BC4();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1BC83CE40(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1BC8F7264();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v35 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5B40, &unk_1BC904FF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v32 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v21 = &v32 - v20;
  v22 = v3 + 64;
  v23 = -1 << *(v3 + 32);
  v24 = a2 & ~v23;
  if ((*(v3 + 64 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
  {
    v38 = ~v23;
    v33 = (v7 + 32);
    v34 = v3 + 64;
    v39 = *(v19 + 72);
    v37 = (v7 + 8);
    v32 = v10;
    do
    {
      sub_1BC7E8B8C(*(v3 + 48) + v39 * v24, v21);
      v25 = *(v10 + 48);
      sub_1BC7E8B8C(v21, v13);
      sub_1BC7E8B8C(a1, &v13[v25]);
      if (__swift_getEnumTagSinglePayload(v13, 1, v6) == 1)
      {
        sub_1BC7C1744(v21, &unk_1EBCF5D70, &qword_1BC8FC740);
        if (__swift_getEnumTagSinglePayload(&v13[v25], 1, v6) == 1)
        {
          sub_1BC7C1744(v13, &unk_1EBCF5D70, &qword_1BC8FC740);
          return v24;
        }
      }

      else
      {
        sub_1BC7E8B8C(v13, v18);
        if (__swift_getEnumTagSinglePayload(&v13[v25], 1, v6) != 1)
        {
          v26 = v35;
          (*v33)(v35, &v13[v25], v6);
          sub_1BC83ECC4(&unk_1EDC205F0, MEMORY[0x1E69695A8]);
          v36 = sub_1BC8F7BC4();
          v27 = a1;
          v28 = v3;
          v29 = *v37;
          v30 = v26;
          v22 = v34;
          (*v37)(v30, v6);
          sub_1BC7C1744(v21, &unk_1EBCF5D70, &qword_1BC8FC740);
          v29(v18, v6);
          v3 = v28;
          a1 = v27;
          v10 = v32;
          sub_1BC7C1744(v13, &unk_1EBCF5D70, &qword_1BC8FC740);
          if (v36)
          {
            return v24;
          }

          goto LABEL_10;
        }

        sub_1BC7C1744(v21, &unk_1EBCF5D70, &qword_1BC8FC740);
        (*v37)(v18, v6);
      }

      sub_1BC7C1744(v13, &qword_1EBCF5B40, &unk_1BC904FF0);
LABEL_10:
      v24 = (v24 + 1) & v38;
    }

    while (((*(v22 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) != 0);
  }

  return v24;
}

unint64_t sub_1BC83D270(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = *(*(v2 + 48) + 8 * i);
    v6 = sub_1BC8F7C24();
    v8 = v7;
    if (v6 == sub_1BC8F7C24() && v8 == v9)
    {

      return i;
    }

    v11 = sub_1BC8F8AA4();

    if (v11)
    {
      return i;
    }
  }

  return i;
}

unint64_t sub_1BC83D368(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_1BC83EC80();
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_1BC8F83A4();

    if (v8)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1BC83D428(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v7 = ~v4;
    v8 = *(a1 + 16);
    v9 = *(v2 + 48);
    v10 = (a1 + 40);
    do
    {
      v11 = *(v9 + 8 * v5);
      if (*(v11 + 16) == v8)
      {
        if (!v8 || v11 == a1)
        {
          return v5;
        }

        v12 = (v11 + 40);
        v13 = v10;
        v14 = v8;
        while (1)
        {
          v15 = *(v12 - 1) == *(v13 - 1) && *v12 == *v13;
          if (!v15 && (sub_1BC8F8AA4() & 1) == 0)
          {
            break;
          }

          v12 += 2;
          v13 += 2;
          if (!--v14)
          {
            return v5;
          }
        }
      }

      v5 = (v5 + 1) & v7;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1BC83D530(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    v6 = *(*(v2 + 48) + 8 * i);

    sub_1BC7F5C04(v7, a1);
    v9 = v8;

    if (v9)
    {
      break;
    }
  }

  return i;
}

_OWORD *sub_1BC83D5F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OUTLINED_FUNCTION_30_6(a1, a2, a3);
  OUTLINED_FUNCTION_0_17(v7, v8);
  if (v11)
  {
    __break(1u);
LABEL_14:
    result = sub_1BC8F8B44();
    __break(1u);
    return result;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF56C0, &unk_1BC900B90);
  if (OUTLINED_FUNCTION_10_14())
  {
    v14 = *v6;
    sub_1BC803CBC(v5, v4);
    OUTLINED_FUNCTION_22_8();
    if (!v16)
    {
      goto LABEL_14;
    }

    v12 = v15;
  }

  v17 = *v6;
  if (v13)
  {
    __swift_destroy_boxed_opaque_existential_1((v17[7] + 32 * v12));
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_54_2();

    return sub_1BC7F0E58(v18, v19);
  }

  else
  {
    sub_1BC83E388(v12, v5, v4, v3, v17);
    OUTLINED_FUNCTION_54_2();
  }
}

_OWORD *sub_1BC83D6F0(_OWORD *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_1BC83C8E8();
  OUTLINED_FUNCTION_0_17(v7, v8);
  if (v11)
  {
    __break(1u);
LABEL_12:
    result = sub_1BC8F8B44();
    __break(1u);
    return result;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
  if (sub_1BC8F8734())
  {
    OUTLINED_FUNCTION_50_2();
    sub_1BC83C8E8();
    OUTLINED_FUNCTION_22_8();
    if (!v15)
    {
      goto LABEL_12;
    }

    v12 = v14;
  }

  v16 = *v3;
  if (v13)
  {
    __swift_destroy_boxed_opaque_existential_1((v16[7] + 32 * v12));
    v17 = OUTLINED_FUNCTION_29();

    return sub_1BC7F0E58(v17, v18);
  }

  else
  {
    sub_1BC83EE1C(a2, v20);
    return sub_1BC83E3F4(v12, v20, a1, v16);
  }
}

void sub_1BC83D814()
{
  OUTLINED_FUNCTION_29_0();
  v2 = OUTLINED_FUNCTION_42_5();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_12();
  v6 = OUTLINED_FUNCTION_31_5();
  OUTLINED_FUNCTION_0_17(v6, v7);
  if (v10)
  {
    __break(1u);
LABEL_11:
    sub_1BC8F8B44();
    __break(1u);
    return;
  }

  v11 = v8;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D10, &qword_1BC903558);
  if (OUTLINED_FUNCTION_10_14())
  {
    OUTLINED_FUNCTION_50_2();
    sub_1BC83C928();
    OUTLINED_FUNCTION_37_6();
    if (!v14)
    {
      goto LABEL_11;
    }

    v11 = v13;
  }

  v15 = *v1;
  if (v12)
  {
    v16 = v15[7];
    v17 = type metadata accessor for TrackedOutgoingMessage(0);
    OUTLINED_FUNCTION_25(v17);
    sub_1BC83ED64(v0, v16 + *(v18 + 72) * v11, type metadata accessor for TrackedOutgoingMessage);
  }

  else
  {
    v19 = OUTLINED_FUNCTION_19_11();
    v20(v19);
    v21 = OUTLINED_FUNCTION_44_2();
    sub_1BC83E470(v21, v22, v0, v15);
  }

  OUTLINED_FUNCTION_24();
}

void sub_1BC83D958()
{
  OUTLINED_FUNCTION_29_0();
  v2 = OUTLINED_FUNCTION_42_5();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_12();
  v6 = OUTLINED_FUNCTION_31_5();
  OUTLINED_FUNCTION_0_17(v6, v7);
  if (v10)
  {
    __break(1u);
LABEL_12:
    sub_1BC8F8B44();
    __break(1u);
    return;
  }

  v11 = v8;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5900, &unk_1BC902A70);
  if (OUTLINED_FUNCTION_10_14())
  {
    OUTLINED_FUNCTION_50_2();
    sub_1BC83C928();
    OUTLINED_FUNCTION_37_6();
    if (!v14)
    {
      goto LABEL_12;
    }

    v11 = v13;
  }

  v15 = *v1;
  if (v12)
  {
    v16 = *(v15 + 56);
    v17 = *(v16 + 8 * v11);
    *(v16 + 8 * v11) = v0;
    OUTLINED_FUNCTION_24();
  }

  else
  {
    v19 = OUTLINED_FUNCTION_19_11();
    v20(v19);
    v21 = OUTLINED_FUNCTION_44_2();
    sub_1BC83E560(v21, v22, v0, v15);
    OUTLINED_FUNCTION_24();
  }
}

void sub_1BC83DA90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OUTLINED_FUNCTION_30_6(a1, a2, a3);
  OUTLINED_FUNCTION_0_17(v7, v8);
  if (v11)
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D00, &qword_1BC903B10);
  if ((OUTLINED_FUNCTION_10_14() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = *v6;
  v15 = sub_1BC803CBC(v5, v4);
  if ((v13 & 1) != (v16 & 1))
  {
LABEL_11:
    sub_1BC8F8B44();
    __break(1u);
    return;
  }

  v12 = v15;
LABEL_5:
  v17 = *v6;
  if (v13)
  {
    v18 = v17[7];
    v19 = type metadata accessor for VideoFileTransfer();
    OUTLINED_FUNCTION_25(v19);
    sub_1BC83ED64(v3, v18 + *(v20 + 72) * v12, type metadata accessor for VideoFileTransfer);
    OUTLINED_FUNCTION_54_2();
  }

  else
  {
    sub_1BC83E600(v12, v5, v4, v3, v17);
    OUTLINED_FUNCTION_54_2();
  }
}

void sub_1BC83DBA8()
{
  OUTLINED_FUNCTION_29_0();
  v2 = v1;
  v3 = sub_1BC8F7264();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_12();
  v7 = OUTLINED_FUNCTION_31_5();
  OUTLINED_FUNCTION_0_17(v7, v8);
  if (v11)
  {
    __break(1u);
    goto LABEL_10;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5B50, &qword_1BC903550);
  if (sub_1BC8F8734())
  {
    OUTLINED_FUNCTION_50_2();
    v14 = sub_1BC83C928();
    if ((v13 & 1) == (v15 & 1))
    {
      v12 = v14;
      goto LABEL_5;
    }

LABEL_10:
    sub_1BC8F8B44();
    __break(1u);
    return;
  }

LABEL_5:
  v16 = *v0;
  if (v13)
  {
    *(v16[7] + v12) = v2;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_19_11();
    v18(v17);
    v19 = OUTLINED_FUNCTION_44_2();
    sub_1BC83E6AC(v19, v20, v2, v16);
  }

  OUTLINED_FUNCTION_24();
}

void sub_1BC83DCE4()
{
  OUTLINED_FUNCTION_29_0();
  v1 = v0;
  v3 = v2;
  v35 = v4;
  v36 = v5;
  v34 = v6;
  v8 = v7;
  v9 = sub_1BC8F7264();
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_12();
  v17 = v16 - v15;
  v18 = *v0;
  v19 = sub_1BC83C928();
  OUTLINED_FUNCTION_0_17(v19, v20);
  if (v23)
  {
    __break(1u);
    goto LABEL_11;
  }

  v24 = v21;
  v25 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5B48, &qword_1BC903548);
  if ((OUTLINED_FUNCTION_51_2() & 1) == 0)
  {
    goto LABEL_5;
  }

  v26 = *v1;
  v27 = sub_1BC83C928();
  if ((v25 & 1) != (v28 & 1))
  {
LABEL_11:
    sub_1BC8F8B44();
    __break(1u);
    return;
  }

  v24 = v27;
LABEL_5:
  v29 = *v1;
  if (v25)
  {
    v30 = (v29[7] + 32 * v24);
    v31 = v30[1];
    v32 = v30[3];
    *v30 = v8;
    v30[1] = v34;
    v30[2] = v35;
    v30[3] = v36;

    OUTLINED_FUNCTION_24();
  }

  else
  {
    (*(v12 + 16))(v17, v3, v9);
    sub_1BC83E764(v24, v17, v8, v34, v35, v36, v29);
    OUTLINED_FUNCTION_24();
  }
}

uint64_t sub_1BC83DE8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  OUTLINED_FUNCTION_16_7();
  v10 = sub_1BC83CB40(a3, v9, sub_1BC83D428);
  OUTLINED_FUNCTION_0_17(v10, v11);
  if (v14)
  {
    __break(1u);
LABEL_14:
    result = sub_1BC8F8B44();
    __break(1u);
    return result;
  }

  v15 = v12;
  v16 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF6560, &qword_1BC907710);
  if (OUTLINED_FUNCTION_10_14())
  {
    v17 = *v4;
    OUTLINED_FUNCTION_16_7();
    sub_1BC83CB40(a3, v18, sub_1BC83D428);
    OUTLINED_FUNCTION_22_8();
    if (!v20)
    {
      goto LABEL_14;
    }

    v15 = v19;
  }

  v21 = *v4;
  if (v16)
  {
    v22 = (*(v21 + 56) + 16 * v15);
    v24 = *v22;
    v23 = v22[1];
    *v22 = a1;
    v22[1] = a2;

    OUTLINED_FUNCTION_54_2();
  }

  else
  {
    sub_1BC83E838(v15, a3, a1, a2, v21);
    OUTLINED_FUNCTION_54_2();
  }
}

uint64_t sub_1BC83DFD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v13 = *v6;
  v14 = sub_1BC803CBC(a5, a6);
  OUTLINED_FUNCTION_0_17(v14, v15);
  if (v18)
  {
    __break(1u);
LABEL_14:
    result = sub_1BC8F8B44();
    __break(1u);
    return result;
  }

  v19 = v16;
  v20 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF65A0, &qword_1BC9077C0);
  if (OUTLINED_FUNCTION_51_2())
  {
    v21 = *v7;
    sub_1BC803CBC(a5, a6);
    OUTLINED_FUNCTION_37_6();
    if (!v23)
    {
      goto LABEL_14;
    }

    v19 = v22;
  }

  v24 = *v7;
  if (v20)
  {
    v25 = (*(v24 + 56) + 32 * v19);
    v26 = v25[1];
    v27 = v25[2];
    v28 = v25[3];
    *v25 = a1;
    v25[1] = a2;
    v25[2] = a3;
    v25[3] = a4;
  }

  else
  {
    sub_1BC83E880(v19, a5, a6, a1, a2, a3, a4, v24);
  }
}

uint64_t sub_1BC83E138()
{
  OUTLINED_FUNCTION_29_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *v0;
  v11 = sub_1BC803CBC(v4, v2);
  OUTLINED_FUNCTION_0_17(v11, v12);
  if (v15)
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v13;
  v17 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5B60, &unk_1BC903560);
  if ((sub_1BC8F8734() & 1) == 0)
  {
    goto LABEL_5;
  }

  v18 = *v1;
  v19 = sub_1BC803CBC(v5, v3);
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_13:
    result = sub_1BC8F8B44();
    __break(1u);
    return result;
  }

  v16 = v19;
LABEL_5:
  v21 = *v1;
  if (v17)
  {
    v22 = (v21[7] + 16 * v16);
    v23 = v22[1];
    *v22 = v9;
    v22[1] = v7;
    OUTLINED_FUNCTION_24();
  }

  else
  {
    sub_1BC83E914(v16, v5, v3, v9, v7, v21);
    OUTLINED_FUNCTION_24();
  }
}

void sub_1BC83E27C()
{
  OUTLINED_FUNCTION_29_0();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = *v0;
  v13 = sub_1BC803CBC(v8, v6);
  OUTLINED_FUNCTION_0_17(v13, v14);
  if (v17)
  {
    __break(1u);
LABEL_14:
    sub_1BC8F8B44();
    __break(1u);
    return;
  }

  v18 = v15;
  v19 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v2);
  if (OUTLINED_FUNCTION_10_14())
  {
    v20 = *v5;
    sub_1BC803CBC(v9, v7);
    OUTLINED_FUNCTION_22_8();
    if (!v22)
    {
      goto LABEL_14;
    }

    v18 = v21;
  }

  v23 = *v5;
  if (v19)
  {
    v24 = *(v23 + 56);
    v25 = *(v24 + 8 * v18);
    *(v24 + 8 * v18) = v11;
    OUTLINED_FUNCTION_24();
  }

  else
  {
    sub_1BC83E960(v18, v9, v7, v11, v23);
    OUTLINED_FUNCTION_24();
  }
}

_OWORD *sub_1BC83E388(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1BC7F0E58(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

_OWORD *sub_1BC83E3F4(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_1BC7F0E58(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_1BC83E470(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1BC8F7264();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for TrackedOutgoingMessage(0);
  result = sub_1BC83EDC0(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for TrackedOutgoingMessage);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_1BC83E560(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_36_7(a1, a4 + 8 * (a1 >> 6));
  v9 = *(v8 + 48);
  v10 = sub_1BC8F7264();
  OUTLINED_FUNCTION_4_1(v10);
  result = (*(v11 + 32))(v9 + *(v11 + 72) * a1, a2);
  *(*(a4 + 56) + 8 * a1) = a3;
  v13 = *(a4 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v15;
  }

  return result;
}

uint64_t sub_1BC83E600(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for VideoFileTransfer();
  result = sub_1BC83EDC0(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for VideoFileTransfer);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_1BC83E6AC(unint64_t a1, uint64_t a2, char a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1BC8F7264();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_1BC83E764(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(a1 >> 6) + 8] |= 1 << a1;
  v14 = a7[6];
  v15 = sub_1BC8F7264();
  result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * a1, a2, v15);
  v17 = (a7[7] + 32 * a1);
  *v17 = a3;
  v17[1] = a4;
  v17[2] = a5;
  v17[3] = a6;
  v18 = a7[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v20;
  }

  return result;
}

uint64_t sub_1BC83E838(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = OUTLINED_FUNCTION_36_7(a1, a5 + 8 * (a1 >> 6));
  *(v6[6] + 8 * result) = v7;
  v8 = (v6[7] + 16 * result);
  *v8 = v9;
  v8[1] = v10;
  v11 = v6[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    v6[2] = v13;
  }

  return result;
}

uint64_t sub_1BC83E880(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = OUTLINED_FUNCTION_36_7(a1, a8 + 8 * (a1 >> 6));
  v10 = (v9[6] + 16 * result);
  *v10 = v11;
  v10[1] = v12;
  v13 = (v9[7] + 32 * result);
  *v13 = v14;
  v13[1] = v15;
  v13[2] = v16;
  v13[3] = v17;
  v18 = v9[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    v9[2] = v20;
  }

  return result;
}

uint64_t sub_1BC83E8D0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = OUTLINED_FUNCTION_36_7(a1, a4 + 8 * (a1 >> 6));
  *(v5[6] + 8 * result) = v6;
  *(v5[7] + 8 * result) = v7;
  v8 = v5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    v5[2] = v10;
  }

  return result;
}

unint64_t sub_1BC83E914(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t sub_1BC83E960(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = OUTLINED_FUNCTION_36_7(a1, a5 + 8 * (a1 >> 6));
  v7 = (v6[6] + 16 * result);
  *v7 = v8;
  v7[1] = v9;
  *(v6[7] + 8 * result) = v10;
  v11 = v6[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    v6[2] = v13;
  }

  return result;
}

uint64_t sub_1BC83E9A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_4_1(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_29();
  v9(v8);
  return a2;
}

uint64_t sub_1BC83EA04()
{
  sub_1BC8F7C24();
  OUTLINED_FUNCTION_49_2();
  sub_1BC8F8C04();
  sub_1BC8F7CD4();
  v0 = sub_1BC8F8C64();

  return v0;
}

uint64_t sub_1BC83EA74()
{
  v1 = sub_1BC8F7264();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_12();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  v11 = OUTLINED_FUNCTION_25(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v22 - v14;
  sub_1BC7E8B8C(v0, &v22 - v14);
  if (__swift_getEnumTagSinglePayload(v15, 1, v1) == 1)
  {
    return sub_1BC8F8C24();
  }

  v17 = *(v4 + 32);
  v18 = OUTLINED_FUNCTION_50();
  v19(v18);
  sub_1BC8F8C24();
  OUTLINED_FUNCTION_14_10();
  sub_1BC83ECC4(v20, v21);
  sub_1BC8F7B64();
  return (*(v4 + 8))(v9, v1);
}

uint64_t sub_1BC83EBFC()
{
  v0 = sub_1BC8F7C24();
  v2 = v1;
  if (v0 == sub_1BC8F7C24() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1BC8F8AA4();
  }

  return v5 & 1;
}

unint64_t sub_1BC83EC80()
{
  result = qword_1EDC1DD30;
  if (!qword_1EDC1DD30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC1DD30);
  }

  return result;
}

uint64_t sub_1BC83ECC4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_121();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BC83ED08(uint64_t a1)
{
  v2 = type metadata accessor for FaceTimeMessageStore_Summary();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BC83ED64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4_1(v4);
  v6 = *(v5 + 40);
  v7 = OUTLINED_FUNCTION_29();
  v8(v7);
  return a2;
}

uint64_t sub_1BC83EDC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4_1(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_29();
  v8(v7);
  return a2;
}

uint64_t sub_1BC83EED8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1BC8F8AA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6874676E656CLL && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1BC8F8AA4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1BC83EF9C(char a1)
{
  if (a1)
  {
    return 0x6874676E656CLL;
  }

  else
  {
    return 0x6E6F697461636F6CLL;
  }
}

uint64_t sub_1BC83EFD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC83EED8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BC83F000(uint64_t a1)
{
  v2 = sub_1BC83F1DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC83F03C(uint64_t a1)
{
  v2 = sub_1BC83F1DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CaptionRange.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5B68, &qword_1BC903570);
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = v15 - v10;
  v12 = *v1;
  v15[1] = v1[1];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC83F1DC();
  sub_1BC8F8CA4();
  v17 = 0;
  sub_1BC8F89D4();
  if (!v2)
  {
    v16 = 1;
    sub_1BC8F89D4();
  }

  return (*(v7 + 8))(v11, v4);
}

unint64_t sub_1BC83F1DC()
{
  result = qword_1EBCF5B70;
  if (!qword_1EBCF5B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5B70);
  }

  return result;
}

uint64_t CaptionRange.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x1BFB2A020](*v0);
  return MEMORY[0x1BFB2A020](v1);
}

uint64_t CaptionRange.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1BC8F8C04();
  MEMORY[0x1BFB2A020](v1);
  MEMORY[0x1BFB2A020](v2);
  return sub_1BC8F8C64();
}

uint64_t CaptionRange.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5B78, &qword_1BC903578);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v17 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC83F1DC();
  sub_1BC8F8C84();
  if (!v2)
  {
    v19 = 0;
    v14 = sub_1BC8F88D4();
    v18 = 1;
    v15 = sub_1BC8F88D4();
    (*(v8 + 8))(v12, v5);
    *a2 = v14;
    a2[1] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BC83F494()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1BC8F8C04();
  MEMORY[0x1BFB2A020](v1);
  MEMORY[0x1BFB2A020](v2);
  return sub_1BC8F8C64();
}

unint64_t sub_1BC83F4F0()
{
  result = qword_1EBCF5B80;
  if (!qword_1EBCF5B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5B80);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CaptionRange(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for CaptionRange(uint64_t result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for CaptionRange.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1BC83F680()
{
  result = qword_1EBCF5B88;
  if (!qword_1EBCF5B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5B88);
  }

  return result;
}

unint64_t sub_1BC83F6D8()
{
  result = qword_1EBCF5B90;
  if (!qword_1EBCF5B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5B90);
  }

  return result;
}

unint64_t sub_1BC83F730()
{
  result = qword_1EBCF5B98;
  if (!qword_1EBCF5B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5B98);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1BC83F7A0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BC83F7E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BC83F83C()
{
  OUTLINED_FUNCTION_5();
  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  *(v1 + 232) = v3;
  *(v1 + 72) = v4;
  v5 = sub_1BC8F6ED4();
  *(v1 + 96) = v5;
  OUTLINED_FUNCTION_26(v5);
  *(v1 + 104) = v6;
  v8 = *(v7 + 64) + 15;
  *(v1 + 112) = swift_task_alloc();
  v9 = sub_1BC8F7264();
  *(v1 + 120) = v9;
  OUTLINED_FUNCTION_26(v9);
  *(v1 + 128) = v10;
  v12 = *(v11 + 64) + 15;
  *(v1 + 136) = swift_task_alloc();
  v13 = sub_1BC8F7014();
  *(v1 + 144) = v13;
  OUTLINED_FUNCTION_26(v13);
  *(v1 + 152) = v14;
  v16 = *(v15 + 64) + 15;
  *(v1 + 160) = swift_task_alloc();
  *(v1 + 168) = swift_task_alloc();
  *(v1 + 176) = swift_task_alloc();
  *(v1 + 184) = swift_task_alloc();
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v17, v18, v19);
}

uint64_t sub_1BC83F9C0()
{
  v33 = v0;
  if (qword_1EDC1E1F8 != -1)
  {
    OUTLINED_FUNCTION_0_18();
    swift_once();
  }

  v1 = v0[23];
  v2 = v0[18];
  v3 = v0[19];
  v4 = v0[10];
  v5 = sub_1BC8F7734();
  __swift_project_value_buffer(v5, qword_1EDC2B2B0);
  v6 = OUTLINED_FUNCTION_5_17();
  v7(v6);
  v8 = sub_1BC8F7714();
  v9 = sub_1BC8F8204();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[23];
  v13 = v0[18];
  v12 = v0[19];
  if (v10)
  {
    OUTLINED_FUNCTION_9();
    v14 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    v31 = swift_slowAlloc();
    v32 = v31;
    *v14 = 136446210;
    sub_1BC80DFB0();
    v15 = sub_1BC8F8A54();
    v17 = v16;
    v18 = *(v12 + 8);
    v19 = OUTLINED_FUNCTION_8_1();
    v18(v19);
    v20 = sub_1BC7A9A4C(v15, v17, &v32);

    *(v14 + 4) = v20;
    OUTLINED_FUNCTION_12_11(&dword_1BC7A3000, v21, v22, "BLASTDOOR: Generating thumbnail from url %{public}s");
    __swift_destroy_boxed_opaque_existential_1(v31);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  else
  {

    v18 = *(v12 + 8);
    v24 = OUTLINED_FUNCTION_8_1();
    v23 = (v18)(v24);
  }

  v0[24] = v18;
  v25 = v0[11];
  v26 = *(v25 + 8);
  (*v25)(v23);
  v27 = *__swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v28 = swift_task_alloc();
  v0[25] = v28;
  *v28 = v0;
  v28[1] = sub_1BC83FBE4;
  v29 = v0[10];

  return sub_1BC8405D0();
}

uint64_t sub_1BC83FBE4()
{
  OUTLINED_FUNCTION_5();
  v2 = *v1;
  OUTLINED_FUNCTION_11_3();
  *v4 = v3;
  v6 = *(v5 + 200);
  *v4 = *v1;
  v3[26] = v7;
  v3[27] = v8;
  v3[28] = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BC83FCF0()
{
  v1 = *(v0 + 216);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if (v1 >> 60 == 15)
  {
    v2 = *(v0 + 144);
    v3 = *(v0 + 72);
    v4 = 1;
    goto LABEL_3;
  }

  v47 = *(v0 + 216);
  v48 = *(v0 + 224);
  v45 = *(v0 + 176);
  v46 = *(v0 + 208);
  v41 = *(v0 + 168);
  v12 = *(v0 + 160);
  v42 = *(v0 + 152);
  v13 = *(v0 + 136);
  v43 = *(v0 + 144);
  v44 = *(v0 + 192);
  v15 = *(v0 + 120);
  v14 = *(v0 + 128);
  v17 = *(v0 + 104);
  v16 = *(v0 + 112);
  v18 = *(v0 + 96);
  sub_1BC8F6F34();
  sub_1BC8F7254();
  v19 = sub_1BC8F7204();
  v21 = v20;
  (*(v14 + 8))(v13, v15);
  *(v0 + 56) = v19;
  *(v0 + 64) = v21;
  (*(v17 + 104))(v16, *MEMORY[0x1E6968F70], v18);
  sub_1BC7B7A9C();
  sub_1BC8F7004();
  (*(v17 + 8))(v16, v18);

  v44(v12, v43);
  sub_1BC8F6F84();
  v44(v41, v43);
  sub_1BC8F70F4();
  if (!v48)
  {
    if ((*(v0 + 232) & 1) == 0)
    {
      v35 = *(v0 + 208);
      v36 = *(v0 + 216);
      v37 = *(v0 + 192);
      v38 = *(v0 + 176);
      v39 = *(v0 + 144);
      v40 = *(v0 + 72);
      __swift_project_boxed_opaque_existential_1((*(v0 + 88) + 16), *(*(v0 + 88) + 40));
      sub_1BC8B4D4C(v38, v40);
      sub_1BC7ECAC8(v35, v36);
      v37(v38, v39);
      goto LABEL_4;
    }

    v31 = *(v0 + 176);
    v32 = *(v0 + 144);
    v33 = *(v0 + 152);
    v34 = *(v0 + 72);
    sub_1BC7ECAC8(*(v0 + 208), *(v0 + 216));
    (*(v33 + 32))(v34, v31, v32);
    v3 = v34;
    v4 = 0;
    v2 = v32;
LABEL_3:
    __swift_storeEnumTagSinglePayload(v3, v4, 1, v2);
LABEL_4:
    v6 = *(v0 + 176);
    v5 = *(v0 + 184);
    v8 = *(v0 + 160);
    v7 = *(v0 + 168);
    v9 = *(v0 + 136);
    v10 = *(v0 + 112);

    OUTLINED_FUNCTION_27();
    goto LABEL_7;
  }

  v22 = *(v0 + 208);
  v23 = *(v0 + 216);
  (*(v0 + 192))(*(v0 + 176), *(v0 + 144));
  sub_1BC7ECAC8(v22, v23);
  v25 = *(v0 + 176);
  v24 = *(v0 + 184);
  v27 = *(v0 + 160);
  v26 = *(v0 + 168);
  v28 = *(v0 + 136);
  v29 = *(v0 + 112);

  OUTLINED_FUNCTION_27();
LABEL_7:

  return v11();
}

uint64_t sub_1BC84002C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[28];
  v3 = v0[22];
  v2 = v0[23];
  v5 = v0[20];
  v4 = v0[21];
  v6 = v0[17];
  v7 = v0[14];

  OUTLINED_FUNCTION_27();

  return v8();
}

void sub_1BC8400D8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v3;
  v5 = v2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5EB0, &unk_1BC904890);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v55 = &v51 - v10;
  v11 = sub_1BC8F7994();
  v12 = *(v11 - 8);
  v56 = v11;
  v57 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC1E1F8 != -1)
  {
    OUTLINED_FUNCTION_0_18();
    swift_once();
  }

  v16 = sub_1BC8F7734();
  v17 = __swift_project_value_buffer(v16, qword_1EDC2B2B0);

  v59 = v17;
  v18 = sub_1BC8F7714();
  v19 = sub_1BC8F8204();

  if (os_log_type_enabled(v18, v19))
  {
    OUTLINED_FUNCTION_9();
    v20 = swift_slowAlloc();
    v52 = v5;
    v21 = v20;
    OUTLINED_FUNCTION_8_2();
    v22 = swift_slowAlloc();
    v54 = a2;
    v23 = v22;
    v58[0] = v22;
    *v21 = 136315138;
    v24 = sub_1BC8F7AB4();
    v53 = a1;
    v26 = sub_1BC7A9A4C(v24, v25, v58);

    *(v21 + 4) = v26;
    v4 = v3;
    _os_log_impl(&dword_1BC7A3000, v18, v19, "BLASTDOOR: Got request to decode metadata from %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    a2 = v54;
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    v5 = v52;
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v27 = *(v5 + 8);
  (*v5)(v58);
  v28 = *__swift_project_boxed_opaque_existential_1(v58, v58[3]);
  v29 = v4;
  sub_1BC841290();
  if (v4)
  {
    __swift_destroy_boxed_opaque_existential_1(v58);
    v30 = v4;
    v31 = sub_1BC8F7714();
    v32 = sub_1BC8F81E4();

    if (os_log_type_enabled(v31, v32))
    {
      OUTLINED_FUNCTION_9();
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138543362;
      v35 = v29;
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 4) = v36;
      *v34 = v36;
      _os_log_impl(&dword_1BC7A3000, v31, v32, "BLASTDOOR: Failed to decode metadata with error %{public}@", v33, 0xCu);
      sub_1BC7F1790(v34, &unk_1EBCF5DB0, &unk_1BC900410);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    swift_willThrow();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v58);
    v37 = *(v57 + 16);
    v37(v15, a2, v56);
    v38 = sub_1BC8F7714();
    v39 = sub_1BC8F8204();
    if (os_log_type_enabled(v38, v39))
    {
      OUTLINED_FUNCTION_9();
      v40 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_2();
      v41 = swift_slowAlloc();
      LODWORD(v54) = v39;
      v42 = v15;
      v59 = v41;
      v58[0] = v41;
      *v40 = 136315138;
      v43 = v55;
      v44 = v15;
      v45 = v56;
      v46 = v57;
      v37(v55, v44, v56);
      __swift_storeEnumTagSinglePayload(v43, 0, 1, v45);
      v47 = sub_1BC863BB4(v43);
      v49 = v48;
      sub_1BC7F1790(v43, &unk_1EBCF5EB0, &unk_1BC904890);
      (*(v46 + 8))(v42, v45);
      v50 = sub_1BC7A9A4C(v47, v49, v58);

      *(v40 + 4) = v50;
      _os_log_impl(&dword_1BC7A3000, v38, v54, "BLASTDOOR: Successfully decoded metadata %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v59);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    else
    {

      (*(v57 + 8))(v15, v56);
    }
  }
}

uint64_t sub_1BC8405D0()
{
  OUTLINED_FUNCTION_5();
  v1[4] = v2;
  v1[5] = v0;
  v3 = sub_1BC8F7014();
  v1[6] = v3;
  OUTLINED_FUNCTION_26(v3);
  v1[7] = v4;
  v6 = *(v5 + 64) + 15;
  v1[8] = swift_task_alloc();
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BC840680()
{
  v35 = v0;
  if (qword_1EDC1E1F8 != -1)
  {
    OUTLINED_FUNCTION_0_18();
    swift_once();
  }

  v2 = v0[3].i64[1];
  v1 = v0[4].i64[0];
  v3 = v0[3].i64[0];
  v4 = v0[2].i64[0];
  v5 = sub_1BC8F7734();
  __swift_project_value_buffer(v5, qword_1EDC2B2B0);
  v6 = OUTLINED_FUNCTION_5_17();
  v7(v6);
  v8 = sub_1BC8F7714();
  v9 = sub_1BC8F8204();
  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[3].i64[1];
  v11 = v0[4].i64[0];
  v13 = v0[3].i64[0];
  if (v10)
  {
    OUTLINED_FUNCTION_9();
    v14 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    v15 = swift_slowAlloc();
    v34 = v15;
    *v14 = 136446210;
    sub_1BC80DFB0();
    v16 = sub_1BC8F8A54();
    v18 = v17;
    v19 = *(v12 + 8);
    v20 = OUTLINED_FUNCTION_8_1();
    v21(v20);
    v22 = sub_1BC7A9A4C(v16, v18, &v34);

    *(v14 + 4) = v22;
    OUTLINED_FUNCTION_12_11(&dword_1BC7A3000, v23, v24, "BLASTDOOR: Trying to generate thumbnail from url %{public}s");
    __swift_destroy_boxed_opaque_existential_1(v15);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50](v25);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50](v26);
  }

  else
  {

    v27 = *(v12 + 8);
    v28 = OUTLINED_FUNCTION_8_1();
    v29(v28);
  }

  v30 = swift_task_alloc();
  v0[4].i64[1] = v30;
  v30[1] = vextq_s8(v0[2], v0[2], 8uLL);
  v31 = *(MEMORY[0x1E69E8920] + 4);
  v32 = swift_task_alloc();
  v0[5].i64[0] = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5BA0, &qword_1BC903838);
  *v32 = v0;
  v32[1] = sub_1BC8408E8;
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_1BC8408E8()
{
  OUTLINED_FUNCTION_5();
  v2 = *v1;
  OUTLINED_FUNCTION_11_3();
  *v3 = v2;
  v5 = *(v4 + 80);
  v6 = *v1;
  OUTLINED_FUNCTION_11_3();
  *v7 = v6;
  *(v2 + 88) = v0;

  if (!v0)
  {
    v8 = *(v2 + 72);
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BC8409F4()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[8];
  v3 = v0[2];
  v2 = v0[3];

  v4 = v0[1];

  return v4(v3, v2);
}

uint64_t sub_1BC840A60()
{
  OUTLINED_FUNCTION_5();
  v2 = v0[8];
  v1 = v0[9];

  OUTLINED_FUNCTION_27();
  v4 = v0[11];

  return v3();
}

uint64_t sub_1BC840AC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5BA8, &qword_1BC903840);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - v5;
  (*(v3 + 16))(&v10 - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  sub_1BC8F7624();
}

void sub_1BC840C2C(void *a1, void *a2)
{
  v4 = sub_1BC8F7A04();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5BB0, &qword_1BC903848);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v44 - v11;
  v13 = sub_1BC8F7A24();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    if (a1 && (sub_1BC8F79E4(), swift_dynamicCastClass()))
    {
      v27 = sub_1BC8F79D4();
      v28 = sub_1BC8F7924();

      if (v28)
      {
        type metadata accessor for CGImage(0);
        v46 = v29;
        v47 = MEMORY[0x1E698F420];
        *&v45 = v28;
        __swift_storeEnumTagSinglePayload(v12, 1, 1, v4);
        v44[0] = v28;
        sub_1BC8F7A14();
        sub_1BC8F79C4();
        (*(v5 + 104))(v8, *MEMORY[0x1E698F418], v4);
        v41 = sub_1BC8F79F4();
        v43 = v42;
        (*(v5 + 8))(v8, v4);
        *&v45 = v41;
        *(&v45 + 1) = v43;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5BA8, &qword_1BC903840);
        sub_1BC8F7F74();

        (*(v14 + 8))(v17, v13);
        return;
      }

      if (qword_1EDC1E1F8 != -1)
      {
        swift_once();
      }

      v39 = sub_1BC8F7734();
      __swift_project_value_buffer(v39, qword_1EDC2B2B0);
      v32 = sub_1BC8F7714();
      v40 = sub_1BC8F81E4();
      if (!os_log_type_enabled(v32, v40))
      {
        goto LABEL_16;
      }

      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1BC7A3000, v32, v40, "BLASTDOOR: Recevied empty image result from BlastDoor", v34, 2u);
    }

    else
    {
      if (qword_1EDC1E1F8 != -1)
      {
        swift_once();
      }

      v30 = sub_1BC8F7734();
      __swift_project_value_buffer(v30, qword_1EDC2B2B0);
      v31 = a1;
      v32 = sub_1BC8F7714();
      v33 = sub_1BC8F8204();

      if (!os_log_type_enabled(v32, v33))
      {
        goto LABEL_16;
      }

      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *&v45 = v35;
      *v34 = 136446210;
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5DB0, &unk_1BC900410);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5BB8, &unk_1BC903850);
      v36 = sub_1BC8F7C94();
      v38 = sub_1BC7A9A4C(v36, v37, &v45);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_1BC7A3000, v32, v33, "BLASTDOOR: Received unsupported result type: %{public}s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x1BFB2AA50](v35, -1, -1);
    }

    MEMORY[0x1BFB2AA50](v34, -1, -1);
LABEL_16:

    v45 = xmmword_1BC9037B0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5BA8, &qword_1BC903840);
    sub_1BC8F7F74();
    return;
  }

  v18 = a2;
  if (qword_1EDC1E1F8 != -1)
  {
    swift_once();
  }

  v19 = sub_1BC8F7734();
  __swift_project_value_buffer(v19, qword_1EDC2B2B0);
  v20 = a2;
  v21 = sub_1BC8F7714();
  v22 = sub_1BC8F81E4();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138543362;
    v25 = a2;
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v23 + 4) = v26;
    *v24 = v26;
    _os_log_impl(&dword_1BC7A3000, v21, v22, "BLASTDOOR: Error generating movie preview %{public}@", v23, 0xCu);
    sub_1BC7F1790(v24, &unk_1EBCF5DB0, &unk_1BC900410);
    MEMORY[0x1BFB2AA50](v24, -1, -1);
    MEMORY[0x1BFB2AA50](v23, -1, -1);
  }

  v45 = xmmword_1BC9037B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5BA8, &qword_1BC903840);
  sub_1BC8F7F74();
}

uint64_t sub_1BC841290()
{
  if (qword_1EDC1E1F8 != -1)
  {
    OUTLINED_FUNCTION_0_18();
    swift_once();
  }

  v0 = sub_1BC8F7734();
  __swift_project_value_buffer(v0, qword_1EDC2B2B0);

  v1 = sub_1BC8F7714();
  v2 = sub_1BC8F8204();

  if (os_log_type_enabled(v1, v2))
  {
    OUTLINED_FUNCTION_9();
    v3 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    v8 = swift_slowAlloc();
    v9 = v8;
    *v3 = 136315138;
    v4 = sub_1BC8F7AB4();
    v6 = sub_1BC7A9A4C(v4, v5, &v9);

    *(v3 + 4) = v6;
    _os_log_impl(&dword_1BC7A3000, v1, v2, "BLASTDOOR: Trying to parse metadata from %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  return sub_1BC8F7634();
}

uint64_t sub_1BC841430(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1BC840AC4(a1);
}

void sub_1BC841438(void *a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5BA8, &qword_1BC903840) - 8) + 80);

  sub_1BC840C2C(a1, a2);
}

uint64_t sub_1BC8414D4(char a1)
{
  v2 = 7827308;
  v3 = 0xE300000000000000;
  switch(a1)
  {
    case 1:
      v3 = 0xE600000000000000;
      v2 = 0x6D756964656DLL;
      break;
    case 2:
      v3 = 0xE400000000000000;
      v2 = 1751607656;
      break;
    case 3:
      v2 = 7823730;
      break;
    default:
      break;
  }

  MEMORY[0x1BFB29120](v2, v3);
}

uint64_t sub_1BC841570@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  objc_allocWithZone(MEMORY[0x1E6987E60]);

  result = sub_1BC7F15F0(a1);
  v5 = result;
  if (result)
  {
    result = sub_1BC7D9730(0, &qword_1EBCF5BE0, 0x1E6987E60);
    v6 = &off_1F3B3DFB0;
  }

  else
  {
    v6 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  *a2 = v5;
  a2[3] = result;
  a2[4] = v6;
  return result;
}

uint64_t sub_1BC841614@<X0>(unsigned __int8 *a1@<X1>, uint64_t a2@<X8>)
{
  v26 = a2;
  v25 = sub_1BC8F6ED4();
  v3 = *(v25 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1BC8F7014();
  v24 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v22[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v22[-v13];
  v23 = *a1;
  sub_1BC8F6F94();
  sub_1BC8F6F54();
  v15 = sub_1BC8F6F24();
  v17 = v16;
  v18 = *(v8 + 8);
  v18(v12, v7);
  v27 = 0;
  v28 = 0xE000000000000000;
  MEMORY[0x1BFB29120](v15, v17);

  MEMORY[0x1BFB29120](95, 0xE100000000000000);
  sub_1BC8414D4(v23);
  v19 = v25;
  (*(v3 + 104))(v6, *MEMORY[0x1E6968F70], v25);
  sub_1BC7B7A9C();
  sub_1BC8F7004();
  (*(v3 + 8))(v6, v19);

  sub_1BC8F6F84();
  v20 = v24;
  v18(v12, v24);
  return (v18)(v14, v20);
}

void *sub_1BC8418A8(uint64_t a1)
{
  v2 = sub_1BC841AF0(a1);
  if (qword_1EDC1E1F8 != -1)
  {
    OUTLINED_FUNCTION_0_18();
    swift_once();
  }

  v3 = sub_1BC8F7734();
  __swift_project_value_buffer(v3, qword_1EDC2B2B0);
  v4 = sub_1BC8F7714();
  v5 = sub_1BC8F8204();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134349056;
    *(v6 + 4) = v2;
    _os_log_impl(&dword_1BC7A3000, v4, v5, "Raw file size is %{public}llu bytes", v6, 0xCu);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  if (v2 < 0x989680)
  {
    return &unk_1F3B369D8;
  }

  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  v8 = sub_1BC8DFC10();
  v9 = sub_1BC8F7714();
  v10 = sub_1BC8F8204();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136446210;
    if (v8)
    {
      v13 = 6578530;
    }

    else
    {
      v13 = 1685024615;
    }

    if (v8)
    {
      v14 = 0xE300000000000000;
    }

    else
    {
      v14 = 0xE400000000000000;
    }

    v15 = sub_1BC7A9A4C(v13, v14, &v18);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_1BC7A3000, v9, v10, "Network quality is %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  if (v8)
  {
    v16 = &unk_1F3B36A28;
    v17 = 50000000;
  }

  else
  {
    v16 = &unk_1F3B36A50;
    v17 = 100000000;
  }

  if (v2 >= v17)
  {
    return v16;
  }

  else
  {
    return &unk_1F3B36A00;
  }
}

uint64_t sub_1BC841AF0(uint64_t a1)
{
  v2 = sub_1BC8F7014();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v30 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v30 - v11;
  if (qword_1EDC1E1F8 != -1)
  {
    swift_once();
  }

  v13 = sub_1BC8F7734();
  v14 = __swift_project_value_buffer(v13, qword_1EDC2B2B0);
  v35 = *(v3 + 16);
  v35(v12, a1, v2);
  v33 = v14;
  v15 = sub_1BC8F7714();
  v16 = sub_1BC8F8204();
  v17 = os_log_type_enabled(v15, v16);
  v34 = v3;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v30 = v10;
    v19 = v18;
    v20 = swift_slowAlloc();
    v32 = v7;
    v21 = v20;
    v36 = v20;
    *v19 = 136446210;
    sub_1BC80DFB0();
    v22 = sub_1BC8F8A54();
    v31 = a1;
    v24 = v23;
    (*(v3 + 8))(v12, v2);
    v25 = sub_1BC7A9A4C(v22, v24, &v36);
    a1 = v31;

    *(v19 + 4) = v25;
    _os_log_impl(&dword_1BC7A3000, v15, v16, "Loading file size for url %{public}s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x1BFB2AA50](v21, -1, -1);
    v26 = v19;
    v10 = v30;
    MEMORY[0x1BFB2AA50](v26, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v12, v2);
  }

  sub_1BC7D9730(0, &qword_1EBCF5BD8, 0x1E696AC00);
  v35(v10, a1, v2);
  v27 = sub_1BC843B78(v10);
  v28 = sub_1BC8F81B4();

  return v28;
}

uint64_t sub_1BC841F68()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  *(v1 + 24) = v4;
  *(v1 + 32) = v0;
  *(v1 + 16) = v5;
  v6 = sub_1BC8F7014();
  *(v1 + 40) = v6;
  v7 = *(v6 - 8);
  *(v1 + 48) = v7;
  v8 = *(v7 + 64) + 15;
  *(v1 + 56) = swift_task_alloc();
  *(v1 + 81) = *v3;

  return MEMORY[0x1EEE6DFA0](sub_1BC842034, 0, 0);
}

uint64_t sub_1BC842034()
{
  v35 = v0;
  if (qword_1EDC1E1F8 != -1)
  {
    OUTLINED_FUNCTION_0_18();
    swift_once();
  }

  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);
  v5 = sub_1BC8F7734();
  __swift_project_value_buffer(v5, qword_1EDC2B2B0);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_1BC8F7714();
  v7 = sub_1BC8F8204();
  if (OUTLINED_FUNCTION_14_11(v7))
  {
    v8 = *(v0 + 81);
    v9 = OUTLINED_FUNCTION_8_17();
    v34[0] = OUTLINED_FUNCTION_15_11();
    *v9 = 136446466;
    v10 = 7827308;
    switch(v8)
    {
      case 1:
        v10 = OUTLINED_FUNCTION_1_16();
        break;
      case 2:
        v10 = OUTLINED_FUNCTION_3_18();
        break;
      case 3:
        v10 = OUTLINED_FUNCTION_10_15();
        break;
      default:
        break;
    }

    v15 = *(v0 + 48);
    v14 = *(v0 + 56);
    v16 = *(v0 + 40);
    v17 = sub_1BC7A9A4C(v10, 0xE300000000000000, v34);

    *(v9 + 4) = v17;
    *(v9 + 12) = 2082;
    sub_1BC80DFB0();
    v18 = sub_1BC8F8A54();
    v20 = v19;
    (*(v15 + 8))(v14, v16);
    v21 = sub_1BC7A9A4C(v18, v20, v34);

    *(v9 + 14) = v21;
    OUTLINED_FUNCTION_12_12(&dword_1BC7A3000, v22, v23, "Generating asset (%{public}s for %{public}s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  else
  {
    v12 = *(v0 + 48);
    v11 = *(v0 + 56);
    v13 = *(v0 + 40);

    (*(v12 + 8))(v11, v13);
  }

  v24 = *(v0 + 81);
  if (v24 == 3)
  {
    v25 = *(v0 + 24);
    v26 = *(v0 + 32);
    sub_1BC8424D4(*(v0 + 16));
    v27 = *(v0 + 56);

    OUTLINED_FUNCTION_27();

    return v28();
  }

  else
  {
    *(v0 + 80) = v24;
    v29 = swift_task_alloc();
    *(v0 + 64) = v29;
    *v29 = v0;
    v29[1] = sub_1BC842344;
    v30 = *(v0 + 24);
    v31 = *(v0 + 32);
    v32 = *(v0 + 16);

    return sub_1BC842960(v32, v30, (v0 + 80));
  }
}

uint64_t sub_1BC842344()
{
  OUTLINED_FUNCTION_5();
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1BC842478, 0, 0);
  }

  else
  {
    v4 = *(v2 + 56);

    OUTLINED_FUNCTION_27();

    return v5();
  }
}

uint64_t sub_1BC842478()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);

  OUTLINED_FUNCTION_27();

  return v3();
}

id sub_1BC8424D4@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v38[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1BC8F7014();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v35 - v7;
  if (qword_1EDC1E1F8 != -1)
  {
    swift_once();
  }

  v36 = v2;
  v37 = v1;
  v9 = sub_1BC8F7734();
  __swift_project_value_buffer(v9, qword_1EDC2B2B0);
  v10 = sub_1BC8F7714();
  v11 = sub_1BC8F8204();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1BC7A3000, v10, v11, "Copying raw video", v12, 2u);
    MEMORY[0x1BFB2AA50](v12, -1, -1);
  }

  LOBYTE(v38[0]) = 3;
  sub_1BC841614(v38, v8);
  v13 = objc_opt_self();
  v14 = [v13 defaultManager];
  sub_1BC8F6FC4();
  v15 = sub_1BC8F7BE4();

  v16 = [v14 fileExistsAtPath_];

  if (v16)
  {
    v18 = v36;
    v17 = v37;
    (*(v36 + 16))(v6, v8, v37);
    v19 = sub_1BC8F7714();
    v20 = sub_1BC8F8204();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v38[0] = v22;
      *v21 = 136446210;
      sub_1BC80DFB0();
      v23 = sub_1BC8F8A54();
      v25 = v24;
      (*(v18 + 8))(v6, v37);
      v26 = sub_1BC7A9A4C(v23, v25, v38);

      *(v21 + 4) = v26;
      v17 = v37;
      _os_log_impl(&dword_1BC7A3000, v19, v20, "Asset already exists %{public}s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1BFB2AA50](v22, -1, -1);
      MEMORY[0x1BFB2AA50](v21, -1, -1);
    }

    else
    {

      (*(v18 + 8))(v6, v17);
    }

    result = (*(v18 + 32))(v35, v8, v17);
  }

  else
  {
    v27 = [v13 defaultManager];
    v28 = sub_1BC8F6F44();
    v29 = sub_1BC8F6F44();
    v38[0] = 0;
    v30 = [v27 copyItemAtURL:v28 toURL:v29 error:v38];

    v31 = v38[0];
    if (v30)
    {
      (*(v36 + 32))(v35, v8, v37);
      result = v31;
    }

    else
    {
      v33 = v38[0];
      sub_1BC8F6EA4();

      swift_willThrow();
      result = (*(v36 + 8))(v8, v37);
    }
  }

  v34 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1BC842960(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 64) = a2;
  *(v4 + 72) = v3;
  *(v4 + 56) = a1;
  v6 = sub_1BC8F7014();
  *(v4 + 80) = v6;
  v7 = *(v6 - 8);
  *(v4 + 88) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 128) = swift_task_alloc();
  *(v4 + 136) = swift_task_alloc();
  *(v4 + 144) = swift_task_alloc();
  *(v4 + 200) = *a3;

  return MEMORY[0x1EEE6DFA0](sub_1BC842A78, 0, 0);
}

uint64_t sub_1BC842A78()
{
  v84 = v0;
  if (qword_1EDC1E1F8 != -1)
  {
    OUTLINED_FUNCTION_0_18();
    swift_once();
  }

  v1 = *(v0 + 144);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  v4 = *(v0 + 64);
  v5 = sub_1BC8F7734();
  *(v0 + 152) = __swift_project_value_buffer(v5, qword_1EDC2B2B0);
  v6 = *(v3 + 16);
  *(v0 + 160) = v6;
  *(v0 + 168) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7 = OUTLINED_FUNCTION_97();
  v6(v7);
  v8 = sub_1BC8F7714();
  v9 = sub_1BC8F8204();
  if (os_log_type_enabled(v8, v9))
  {
    v78 = v6;
    v10 = *(v0 + 200);
    v11 = OUTLINED_FUNCTION_8_17();
    v83[0] = OUTLINED_FUNCTION_15_11();
    *v11 = 136446466;
    v12 = 7827308;
    switch(v10)
    {
      case 1:
        v12 = OUTLINED_FUNCTION_1_16();
        break;
      case 2:
        v12 = OUTLINED_FUNCTION_3_18();
        break;
      case 3:
        v12 = OUTLINED_FUNCTION_10_15();
        break;
      default:
        break;
    }

    v18 = *(v0 + 144);
    v20 = *(v0 + 80);
    v19 = *(v0 + 88);
    v21 = sub_1BC7A9A4C(v12, 0xE300000000000000, v83);

    *(v11 + 4) = v21;
    *(v11 + 12) = 2082;
    sub_1BC80DFB0();
    v22 = sub_1BC8F8A54();
    v24 = v23;
    v25 = v20;
    v16 = *(v19 + 8);
    v16(v18, v25);
    sub_1BC7A9A4C(v22, v24, v83);
    OUTLINED_FUNCTION_16_8();
    *(v11 + 14) = v22;
    _os_log_impl(&dword_1BC7A3000, v8, v9, "Generating video asset (%{public}s) for %{public}s", v11, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();

    v6 = v78;
  }

  else
  {
    v13 = *(v0 + 144);
    v15 = *(v0 + 80);
    v14 = *(v0 + 88);

    v16 = *(v14 + 8);
    v17 = OUTLINED_FUNCTION_97();
    (v16)(v17);
  }

  *(v0 + 176) = v16;
  v26 = *(v0 + 136);
  v28 = *(v0 + 64);
  v27 = *(v0 + 72);
  LOBYTE(v83[0]) = *(v0 + 200);
  sub_1BC841614(v83, v26);
  v29 = [objc_opt_self() defaultManager];
  sub_1BC8F6FC4();
  v30 = sub_1BC8F7BE4();

  LODWORD(v27) = [v29 fileExistsAtPath_];

  if (v27)
  {
    (v6)(*(v0 + 128), *(v0 + 64), *(v0 + 80));
    v31 = sub_1BC8F7714();
    v32 = sub_1BC8F8204();
    v33 = OUTLINED_FUNCTION_14_11(v32);
    v34 = *(v0 + 128);
    v35 = *(v0 + 136);
    v37 = *(v0 + 80);
    v36 = *(v0 + 88);
    if (v33)
    {
      v38 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v79 = v6;
      v83[0] = v77;
      *v38 = 136446210;
      sub_1BC80DFB0();
      v39 = sub_1BC8F8A54();
      v80 = v35;
      v41 = v40;
      v42 = OUTLINED_FUNCTION_97();
      (v16)(v42);
      sub_1BC7A9A4C(v39, v41, v83);
      OUTLINED_FUNCTION_16_8();
      *(v38 + 4) = v34;
      _os_log_impl(&dword_1BC7A3000, v31, v32, "Asset already exists %{public}s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v77);
      v6 = v79;
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();

      v16(v80, v37);
    }

    else
    {

      v50 = OUTLINED_FUNCTION_97();
      (v16)(v50);
      v16(v35, v37);
    }

    (v6)(*(v0 + 56), *(v0 + 64), *(v0 + 80));
    OUTLINED_FUNCTION_13_12();

    OUTLINED_FUNCTION_27();

    return v51();
  }

  else
  {
    v43 = *(v0 + 200);
    v44 = *(v0 + 120);
    v45 = *(v0 + 80);
    v46 = *(v0 + 64);
    sub_1BC7D9730(0, &qword_1EDC1DEA8, 0x1E6988168);
    v47 = OUTLINED_FUNCTION_97();
    v6(v47);
    v48 = sub_1BC7F0BB8();
    *(v0 + 184) = v48;
    v49 = *(v0 + 72);
    sub_1BC8437F0(v48, qword_1BC9039A0[v43], *(v0 + 136), v0 + 16);
    (v6)(*(v0 + 112), *(v0 + 64), *(v0 + 80));
    v53 = sub_1BC8F7714();
    v54 = sub_1BC8F8204();
    if (OUTLINED_FUNCTION_14_11(v54))
    {
      v81 = *(v0 + 200);
      v56 = *(v0 + 112);
      v58 = *(v0 + 80);
      v57 = *(v0 + 88);
      v59 = OUTLINED_FUNCTION_8_17();
      v83[0] = OUTLINED_FUNCTION_15_11();
      *v59 = 136446466;
      sub_1BC80DFB0();
      v60 = sub_1BC8F8A54();
      v62 = v61;
      v63 = OUTLINED_FUNCTION_6_13();
      v64(v63);
      sub_1BC7A9A4C(v60, v62, v83);
      OUTLINED_FUNCTION_16_8();
      *(v59 + 4) = v56;
      *(v59 + 12) = 2082;
      v65 = OUTLINED_FUNCTION_9_11();
      switch(v81)
      {
        case 1:
          v65 = OUTLINED_FUNCTION_1_16();
          break;
        case 2:
          v65 = OUTLINED_FUNCTION_3_18();
          break;
        case 3:
          v65 = OUTLINED_FUNCTION_10_15();
          break;
        default:
          break;
      }

      v69 = sub_1BC7A9A4C(v65, v56, v83);

      *(v59 + 14) = v69;
      OUTLINED_FUNCTION_12_12(&dword_1BC7A3000, v70, v71, "Starting export for %{public}s with quality %{public}s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    else
    {
      v66 = *(v0 + 112);
      v67 = *(v0 + 80);
      v68 = *(v0 + 88);

      v16(v66, v67);
    }

    v72 = *(v0 + 40);
    v73 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v72);
    v74 = *(v73 + 88);
    v82 = (v74 + *v74);
    v75 = v74[1];
    v76 = swift_task_alloc();
    *(v0 + 192) = v76;
    *v76 = v0;
    v76[1] = sub_1BC843280;

    return v82(v72, v73);
  }
}

uint64_t sub_1BC843280()
{
  OUTLINED_FUNCTION_5();
  v1 = *(*v0 + 192);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1BC843378, 0, 0);
}

uint64_t sub_1BC843378()
{
  v63 = v0;
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
  v3 = (*(v2 + 32))(v1, v2);
  v5 = *(v0 + 160);
  v4 = *(v0 + 168);
  v6 = *(v0 + 152);
  v7 = *(v0 + 80);
  v8 = *(v0 + 64);
  if (v3)
  {
    v9 = v3;
    v5(*(v0 + 104), v8, v7);
    v10 = v9;
    v11 = sub_1BC8F7714();
    v12 = sub_1BC8F81E4();

    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 176);
    v15 = *(v0 + 104);
    v17 = *(v0 + 80);
    v16 = *(v0 + 88);
    if (v13)
    {
      v59 = v12;
      v18 = OUTLINED_FUNCTION_8_17();
      v58 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v62[0] = v61;
      *v18 = 136446466;
      sub_1BC80DFB0();
      v19 = sub_1BC8F8A54();
      v21 = v20;
      v22 = OUTLINED_FUNCTION_7_11();
      v14(v22);
      v23 = sub_1BC7A9A4C(v19, v21, v62);

      *(v18 + 4) = v23;
      *(v18 + 12) = 2114;
      v24 = v9;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 14) = v25;
      *v58 = v25;
      _os_log_impl(&dword_1BC7A3000, v11, v59, "Export failed for %{public}s with error %{public}@", v18, 0x16u);
      sub_1BC7E6180(v58, &unk_1EBCF5DB0, &unk_1BC900410);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      __swift_destroy_boxed_opaque_existential_1(v61);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    else
    {

      v39 = OUTLINED_FUNCTION_7_11();
      v14(v39);
    }

    v41 = *(v0 + 176);
    v40 = *(v0 + 184);
    v42 = *(v0 + 136);
    v43 = *(v0 + 80);
    swift_willThrow();

    v44 = OUTLINED_FUNCTION_97();
    v41(v44);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v46 = *(v0 + 136);
    v45 = *(v0 + 144);
    v48 = *(v0 + 120);
    v47 = *(v0 + 128);
    v50 = *(v0 + 104);
    v49 = *(v0 + 112);
    v51 = *(v0 + 96);

    OUTLINED_FUNCTION_27();
  }

  else
  {
    v5(*(v0 + 96), v8, v7);
    v26 = sub_1BC8F7714();
    v27 = sub_1BC8F8204();
    v28 = OUTLINED_FUNCTION_14_11(v27);
    v30 = *(v0 + 88);
    v29 = *(v0 + 96);
    v31 = *(v0 + 80);
    if (v28)
    {
      v32 = *(v0 + 176);
      v60 = *(v0 + 200);
      v33 = OUTLINED_FUNCTION_8_17();
      v62[0] = OUTLINED_FUNCTION_15_11();
      *v33 = 136446466;
      sub_1BC80DFB0();
      v34 = sub_1BC8F8A54();
      v36 = v35;
      v37 = OUTLINED_FUNCTION_6_13();
      v32(v37);
      sub_1BC7A9A4C(v34, v36, v62);
      OUTLINED_FUNCTION_16_8();
      *(v33 + 4) = v29;
      *(v33 + 12) = 2082;
      v38 = OUTLINED_FUNCTION_9_11();
      switch(v60)
      {
        case 1:
          v38 = OUTLINED_FUNCTION_1_16();
          break;
        case 2:
          v38 = OUTLINED_FUNCTION_3_18();
          break;
        case 3:
          v38 = OUTLINED_FUNCTION_10_15();
          break;
        default:
          break;
      }

      v55 = *(v0 + 184);
      v56 = sub_1BC7A9A4C(v38, v29, v62);

      *(v33 + 14) = v56;
      _os_log_impl(&dword_1BC7A3000, v26, v27, "Export finished for %{public}s with quality %{public}s", v33, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    else
    {
      v53 = *(v0 + 176);

      v54 = OUTLINED_FUNCTION_6_13();
      v53(v54);
    }

    (*(*(v0 + 88) + 32))(*(v0 + 56), *(v0 + 136), *(v0 + 80));
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    OUTLINED_FUNCTION_13_12();

    OUTLINED_FUNCTION_27();
  }

  return v52();
}

uint64_t sub_1BC8437F0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v40 - v11;
  v14 = *v4;
  v13 = *(v4 + 8);
  v15 = *MEMORY[0x1E69872D8];
  v16 = sub_1BC8F7C24();
  v14(&v41, a1, v16, v17);

  if (v42)
  {
    sub_1BC7CF5EC(&v41, a4);
    v18 = *(a4 + 24);
    v19 = *(a4 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(a4, v18);
    (*(v19 + 48))(a2, v18, v19);
    v20 = sub_1BC8F7014();
    (*(*(v20 - 8) + 16))(v12, a3, v20);
    __swift_storeEnumTagSinglePayload(v12, 0, 1, v20);
    v21 = *(a4 + 24);
    v22 = *(a4 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(a4, v21);
    (*(v22 + 16))(v12, v21, v22);
    v23 = *MEMORY[0x1E69874C0];
    v24 = *(a4 + 24);
    v25 = *(a4 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(a4, v24);
    v26 = *(v25 + 72);
    v27 = v23;
    return v26(v23, v24, v25);
  }

  else
  {
    sub_1BC7E6180(&v41, &qword_1EBCF5BC0, &unk_1BC9038C0);
    if (qword_1EDC1E1F8 != -1)
    {
      swift_once();
    }

    v29 = sub_1BC8F7734();
    __swift_project_value_buffer(v29, qword_1EDC2B2B0);
    v30 = a1;
    v31 = sub_1BC8F7714();
    v32 = sub_1BC8F81E4();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *&v41 = v34;
      *v33 = 136446210;
      v43 = v30;
      sub_1BC7D9730(0, &qword_1EBCF5BD0, 0x1E6987E28);
      v35 = v30;
      v36 = sub_1BC8F7C94();
      v38 = sub_1BC7A9A4C(v36, v37, &v41);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_1BC7A3000, v31, v32, "Failed to create an export session for %{public}s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x1BFB2AA50](v34, -1, -1);
      MEMORY[0x1BFB2AA50](v33, -1, -1);
    }

    sub_1BC843CD0();
    swift_allocError();
    *v39 = 1;
    return swift_willThrow();
  }
}

id sub_1BC843B78(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1BC8F6F44();
  v12[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() fileHandleForReadingFromURL:v2 error:v12];

  v4 = v12[0];
  if (v3)
  {
    v5 = sub_1BC8F7014();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v12[0];
    sub_1BC8F6EA4();

    swift_willThrow();
    v9 = sub_1BC8F7014();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v3;
}

unint64_t sub_1BC843CD0()
{
  result = qword_1EBCF5BC8;
  if (!qword_1EBCF5BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5BC8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VideoMessageAssetManagerError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1BC843E04()
{
  result = qword_1EBCF5BE8;
  if (!qword_1EBCF5BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5BE8);
  }

  return result;
}

uint64_t sub_1BC843E58(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5730, &qword_1BC901220);
  OUTLINED_FUNCTION_25(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_16_9();
  v12 = type metadata accessor for TrackedOutgoingMessage(v11);
  v13 = OUTLINED_FUNCTION_4_1(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_12();
  if (__swift_getEnumTagSinglePayload(a1, 1, v16) == 1)
  {
    v17 = OUTLINED_FUNCTION_97();
    sub_1BC7C1744(v17, v18, &qword_1BC901220);
    sub_1BC8496F0(v3);
    v19 = sub_1BC8F7264();
    OUTLINED_FUNCTION_4_1(v19);
    (*(v20 + 8))(a2);
    return sub_1BC7C1744(v3, &qword_1EBCF5730, &qword_1BC901220);
  }

  else
  {
    v22 = OUTLINED_FUNCTION_97();
    sub_1BC849EE0(v22, v23);
    v24 = *v4;
    swift_isUniquelyReferenced_nonNull_native();
    v27 = *v4;
    sub_1BC83D814();
    *v4 = v27;
    v25 = sub_1BC8F7264();
    OUTLINED_FUNCTION_4_1(v25);
    return (*(v26 + 8))(a2);
  }
}

uint64_t sub_1BC84400C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5CF8, &qword_1BC903B08);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v19 - v10;
  v12 = type metadata accessor for VideoFileTransfer();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__swift_getEnumTagSinglePayload(a1, 1, v16) == 1)
  {
    sub_1BC7C1744(a1, &qword_1EBCF5CF8, &qword_1BC903B08);
    sub_1BC849870(a2, a3, v11);

    return sub_1BC7C1744(v11, &qword_1EBCF5CF8, &qword_1BC903B08);
  }

  else
  {
    sub_1BC849EE0(a1, v15);
    v18 = *v4;
    swift_isUniquelyReferenced_nonNull_native();
    v20 = *v4;
    sub_1BC83DA90(v15, a2, a3);

    *v4 = v20;
  }

  return result;
}

uint64_t sub_1BC8441AC()
{
  if ((MEMORY[0x1BFB28D50]() & 1) == 0)
  {
    return 0;
  }

  v0 = *(type metadata accessor for VideoFileTransfer() + 20);

  return sub_1BC8F6FA4();
}

uint64_t sub_1BC84420C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1BC8F8AA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1BC8F8AA4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1BC8442D4(char a1)
{
  if (a1)
  {
    return 7107189;
  }

  else
  {
    return 0x617461646174656DLL;
  }
}

uint64_t sub_1BC844304(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5CC0, &qword_1BC903AE8);
  OUTLINED_FUNCTION_0(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC849454();
  sub_1BC8F8CA4();
  v18[15] = 0;
  sub_1BC8F7994();
  OUTLINED_FUNCTION_2_17();
  sub_1BC849F3C(v12, v13);
  OUTLINED_FUNCTION_39_5();
  if (!v1)
  {
    v14 = *(type metadata accessor for VideoFileTransfer() + 20);
    v18[14] = 1;
    sub_1BC8F7014();
    OUTLINED_FUNCTION_1_17();
    sub_1BC849F3C(v15, v16);
    OUTLINED_FUNCTION_39_5();
  }

  return (*(v5 + 8))(v10, v3);
}

uint64_t sub_1BC8444B4()
{
  sub_1BC8F7994();
  OUTLINED_FUNCTION_2_17();
  sub_1BC849F3C(v0, v1);
  OUTLINED_FUNCTION_30();
  sub_1BC8F7B64();
  v2 = *(type metadata accessor for VideoFileTransfer() + 20);
  sub_1BC8F7014();
  OUTLINED_FUNCTION_1_17();
  sub_1BC849F3C(v3, v4);
  OUTLINED_FUNCTION_30();
  return sub_1BC8F7B64();
}

uint64_t sub_1BC844564()
{
  sub_1BC8F8C04();
  sub_1BC8F7994();
  OUTLINED_FUNCTION_2_17();
  sub_1BC849F3C(v0, v1);
  sub_1BC8F7B64();
  v2 = *(type metadata accessor for VideoFileTransfer() + 20);
  sub_1BC8F7014();
  OUTLINED_FUNCTION_1_17();
  sub_1BC849F3C(v3, v4);
  sub_1BC8F7B64();
  return sub_1BC8F8C64();
}

uint64_t sub_1BC844634@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = sub_1BC8F7014();
  v4 = OUTLINED_FUNCTION_0(v38);
  v35 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_12();
  v10 = v9 - v8;
  v40 = sub_1BC8F7994();
  v11 = OUTLINED_FUNCTION_0(v40);
  v37 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_12();
  v39 = v16 - v15;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5CA0, &qword_1BC903AE0);
  OUTLINED_FUNCTION_0(v41);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_16_9();
  v20 = type metadata accessor for VideoFileTransfer();
  v21 = OUTLINED_FUNCTION_4_1(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_12();
  v26 = v25 - v24;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC849454();
  sub_1BC8F8C84();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  OUTLINED_FUNCTION_2_17();
  sub_1BC849F3C(v28, v29);
  sub_1BC8F88F4();
  (*(v37 + 32))(v26, v39, v40);
  OUTLINED_FUNCTION_1_17();
  sub_1BC849F3C(v30, v31);
  sub_1BC8F88F4();
  v32 = OUTLINED_FUNCTION_10_16();
  v33(v32);
  (*(v35 + 32))(v26 + *(v20 + 20), v10, v38);
  sub_1BC8494A8(v26, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1BC84950C(v26);
}

uint64_t sub_1BC8449C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC84420C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BC8449F0(uint64_t a1)
{
  v2 = sub_1BC849454();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC844A2C(uint64_t a1)
{
  v2 = sub_1BC849454();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC844AA0(uint64_t a1, uint64_t a2)
{
  sub_1BC8F8C04();
  sub_1BC8F7994();
  sub_1BC849F3C(&qword_1EBCF5CD8, MEMORY[0x1E698F3D8]);
  sub_1BC8F7B64();
  v3 = *(a2 + 20);
  sub_1BC8F7014();
  sub_1BC849F3C(&qword_1EBCF5CE0, MEMORY[0x1E6968FB0]);
  sub_1BC8F7B64();
  return sub_1BC8F8C64();
}

void sub_1BC844B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v129 = a5;
  v130 = a3;
  v131 = a2;
  v132 = a1;
  v137 = *MEMORY[0x1E69E9840];
  v126 = type metadata accessor for VideoFileTransfer();
  v7 = OUTLINED_FUNCTION_4_1(v126);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_12();
  v12 = v11 - v10;
  v13 = sub_1BC8F7014();
  v14 = OUTLINED_FUNCTION_0(v13);
  v128 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_12();
  v20 = v19 - v18;
  v21 = sub_1BC8F6CB4();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  sub_1BC8F6CA4();
  OUTLINED_FUNCTION_37_7();
  v24 = sub_1BC8F7994();
  OUTLINED_FUNCTION_2_17();
  sub_1BC849F3C(v25, v26);
  v27 = a4;
  v28 = sub_1BC8F6C94();
  v30 = v29;

  v133 = v5;
  if (!v5)
  {
    v31 = v131;
    v123 = v20;
    v119 = v24;
    v125 = v13;
    v124 = v27;
    v122 = v12;
    v32 = objc_opt_self();
    v33 = sub_1BC8F70C4();
    v134 = 0;
    v34 = [v32 JSONObjectWithData:v33 options:0 error:&v134];

    v35 = v134;
    if (!v34)
    {
      v61 = v35;
      v62 = sub_1BC8F6EA4();

      v133 = v62;
      swift_willThrow();
      v63 = v28;
      v64 = v30;
LABEL_19:
      sub_1BC7D4C94(v63, v64);
      goto LABEL_20;
    }

    v120 = v28;
    v121 = v30;
    sub_1BC8F8474();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5CE8, &qword_1BC903AF0);
    swift_dynamicCast();
    v36 = v134;
    v37 = v130;
    v38 = sub_1BC8F7BE4();
    v39 = TUCopyIDSCanonicalAddressForDestinationID();

    if (v39)
    {
      v130 = sub_1BC8F7C24();
      v118 = v40;

      if (qword_1EDC1E1F8 != -1)
      {
        OUTLINED_FUNCTION_0_18();
        swift_once();
      }

      v41 = sub_1BC8F7734();
      v42 = __swift_project_value_buffer(v41, qword_1EDC2B2B0);
      v43 = v128;
      v44 = *(v128 + 16);
      v45 = v123;
      v46 = v125;
      v117 = v128 + 16;
      v116 = v44;
      v44(v123, v132, v125);

      v131 = v42;
      v47 = sub_1BC8F7714();
      v48 = sub_1BC8F8204();

      if (os_log_type_enabled(v47, v48))
      {
        OUTLINED_FUNCTION_11_2();
        v49 = swift_slowAlloc();
        OUTLINED_FUNCTION_18();
        v135 = swift_slowAlloc();
        *v49 = 136446466;
        OUTLINED_FUNCTION_1_17();
        sub_1BC849F3C(v50, v51);
        v52 = sub_1BC8F8A54();
        v53 = v45;
        v55 = v54;
        (*(v43 + 8))(v53, v46);
        v56 = sub_1BC7A9A4C(v52, v55, &v135);

        *(v49 + 4) = v56;
        *(v49 + 12) = 2080;
        v57 = sub_1BC8F7AB4();
        v59 = sub_1BC7A9A4C(v57, v58, &v135);

        *(v49 + 14) = v59;
        _os_log_impl(&dword_1BC7A3000, v47, v48, "Sending messaging at url %{public}s with metadata %s", v49, 0x16u);
        swift_arrayDestroy();
        v60 = OUTLINED_FUNCTION_6_14();
        MEMORY[0x1BFB2AA50](v60);
        OUTLINED_FUNCTION_6_0();
        MEMORY[0x1BFB2AA50]();
      }

      else
      {

        (*(v128 + 8))(v123, v125);
      }

      v75 = v127;
      v76 = *(v127 + OBJC_IVAR____TtC20FaceTimeMessageStore28VideoMessagingFileTransferer_service + 24);
      v77 = *(v127 + OBJC_IVAR____TtC20FaceTimeMessageStore28VideoMessagingFileTransferer_service + 32);
      v129 = __swift_project_boxed_opaque_existential_1((v127 + OBJC_IVAR____TtC20FaceTimeMessageStore28VideoMessagingFileTransferer_service), v76);

      v79 = sub_1BC899DDC(v78);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5CF0, &unk_1BC903AF8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BC8FEAA0;
      v81 = *MEMORY[0x1E69A47D8];
      v135 = sub_1BC8F7C24();
      v136 = v82;
      v83 = MEMORY[0x1E69E6158];
      sub_1BC8F8544();
      *(inited + 96) = MEMORY[0x1E69E6530];
      *(inited + 72) = 2592000;
      v84 = *MEMORY[0x1E69A47B0];
      v135 = sub_1BC8F7C24();
      v136 = v85;
      sub_1BC8F8544();
      *(inited + 168) = v83;
      v86 = v118;
      *(inited + 144) = v130;
      *(inited + 152) = v86;
      v87 = sub_1BC8F7AD4();
      v88 = v133;
      v89 = (*(v77 + 8))(v132, v36, v79, v87, v76, v77);
      if (v133)
      {

        v91 = v133;
        OUTLINED_FUNCTION_21_10();
        v92 = sub_1BC8F7714();
        v93 = sub_1BC8F81E4();

        v94 = v121;
        if (os_log_type_enabled(v92, v93))
        {
          OUTLINED_FUNCTION_9();
          v95 = swift_slowAlloc();
          OUTLINED_FUNCTION_18_10();
          v96 = swift_slowAlloc();
          *v95 = 138543362;
          v97 = v88;
          v98 = _swift_stdlib_bridgeErrorToNSError();
          *(v95 + 4) = v98;
          *v96 = v98;
          OUTLINED_FUNCTION_5_14(&dword_1BC7A3000, v99, v100, "Failed to start outgoing message transfer with error %{public}@");
          sub_1BC7C1744(v96, &unk_1EBCF5DB0, &unk_1BC900410);
          OUTLINED_FUNCTION_6_0();
          MEMORY[0x1BFB2AA50]();
          OUTLINED_FUNCTION_6_0();
          MEMORY[0x1BFB2AA50]();
        }

        v133 = v88;
        swift_willThrow();
        v63 = v120;
        v64 = v94;
        goto LABEL_19;
      }

      v102 = v89;
      v103 = v90;

      v104 = v122;
      (*(*(v119 - 8) + 16))(v122, v124);
      v105 = v116(v122 + *(v126 + 20), v132, v125);
      v106 = *(v75 + OBJC_IVAR____TtC20FaceTimeMessageStore28VideoMessagingFileTransferer_transactionLock);
      MEMORY[0x1EEE9AC00](v105);
      *(&v115 - 4) = v75;
      *(&v115 - 3) = v102;
      *(&v115 - 2) = v103;
      *(&v115 - 1) = v104;
      v108 = v107;
      sub_1BC84575C(sub_1BC8496D0);

      OUTLINED_FUNCTION_21_10();
      v109 = sub_1BC8F7714();
      LOBYTE(v108) = sub_1BC8F8204();

      if (os_log_type_enabled(v109, v108))
      {
        OUTLINED_FUNCTION_9();
        v110 = swift_slowAlloc();
        OUTLINED_FUNCTION_8_2();
        v111 = swift_slowAlloc();
        v135 = v111;
        *v110 = 136446210;
        v112 = sub_1BC7A9A4C(v102, v103, &v135);

        *(v110 + 4) = v112;
        OUTLINED_FUNCTION_5_14(&dword_1BC7A3000, v113, v114, "Successfully sent message with transaction identifier %{public}s");
        __swift_destroy_boxed_opaque_existential_1(v111);
        OUTLINED_FUNCTION_6_0();
        MEMORY[0x1BFB2AA50]();
        OUTLINED_FUNCTION_6_0();
        MEMORY[0x1BFB2AA50]();
        OUTLINED_FUNCTION_26_6();
      }

      else
      {
        OUTLINED_FUNCTION_26_6();
      }

      sub_1BC84950C(v122);
    }

    else
    {

      if (qword_1EDC1E1F8 != -1)
      {
        OUTLINED_FUNCTION_0_18();
        swift_once();
      }

      v65 = sub_1BC8F7734();
      __swift_project_value_buffer(v65, qword_1EDC2B2B0);

      v66 = sub_1BC8F7714();
      v67 = sub_1BC8F81E4();

      if (os_log_type_enabled(v66, v67))
      {
        OUTLINED_FUNCTION_9();
        v68 = swift_slowAlloc();
        OUTLINED_FUNCTION_8_2();
        v69 = swift_slowAlloc();
        v135 = v69;
        *v68 = 136446210;
        sub_1BC7EB6B4(v31, v37);
        v72 = sub_1BC7A9A4C(v70, v71, &v135);

        *(v68 + 4) = v72;
        OUTLINED_FUNCTION_5_14(&dword_1BC7A3000, v73, v74, "Unable to create ids address from sender handle %{public}s");
        __swift_destroy_boxed_opaque_existential_1(v69);
        OUTLINED_FUNCTION_6_0();
        MEMORY[0x1BFB2AA50]();
        OUTLINED_FUNCTION_6_0();
        MEMORY[0x1BFB2AA50]();
      }

      OUTLINED_FUNCTION_26_6();
    }
  }

LABEL_20:
  v101 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1BC84565C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5CF8, &qword_1BC903B08);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v13 - v9;
  sub_1BC8494A8(a4, &v13 - v9);
  v11 = type metadata accessor for VideoFileTransfer();
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
  swift_beginAccess();

  sub_1BC84400C(v10, a2, a3);
  return swift_endAccess();
}

uint64_t sub_1BC8457D4@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  [a1 lock];
  sub_1BC8490B0(a2, a3, a4, a5);
  [a1 unlock];
}

void sub_1BC845860()
{
  v0 = sub_1BC8F7264();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC7D9730(0, &unk_1EDC1FF40, 0x1E6983308);
  v5 = sub_1BC7D4FB8();
  v6 = [objc_allocWithZone(MEMORY[0x1E6983220]) init];
  v7 = sub_1BC8F7BE4();
  [v6 setTitle_];

  v8 = sub_1BC8F7BE4();
  [v6 setSubtitle_];

  sub_1BC7D9730(0, &unk_1EDC1DDD0, 0x1E6983298);
  sub_1BC8F7254();
  v9 = sub_1BC8F7204();
  v11 = v10;
  (*(v1 + 8))(v4, v0);
  v12 = v6;
  v13 = sub_1BC891064(v9, v11, v12, 0);
  [v5 addNotificationRequest:v13 withCompletionHandler:0];
}

uint64_t sub_1BC845A78(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = OUTLINED_FUNCTION_41();
  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1BC845AA4()
{
  OUTLINED_FUNCTION_32();
  v1 = *(v0 + 32);
  if (sub_1BC845E18(*(v0 + 24)))
  {
    v2 = swift_task_alloc();
    *(v0 + 40) = v2;
    *v2 = v0;
    v2[1] = sub_1BC845C20;
    v3 = *(v0 + 32);
    v4 = *(v0 + 16);

    return sub_1BC845EE8(v4);
  }

  else
  {
    if (qword_1EDC1E1F8 != -1)
    {
      OUTLINED_FUNCTION_0_18();
      swift_once();
    }

    v6 = sub_1BC8F7734();
    __swift_project_value_buffer(v6, qword_1EDC2B2B0);
    v7 = sub_1BC8F7714();
    v8 = sub_1BC8F8204();
    if (OUTLINED_FUNCTION_28_7(v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1BC7A3000, v7, v8, "Dropping message - file size check", v9, 2u);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    v10 = *(v0 + 8);

    return v10(0);
  }
}

uint64_t sub_1BC845C20()
{
  OUTLINED_FUNCTION_5();
  v1 = *(*v0 + 40);
  v7 = *v0;
  *(*v0 + 48) = v2;

  v3 = OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BC845D14()
{
  OUTLINED_FUNCTION_32();
  v1 = *(v0 + 48);
  if ((v1 & 1) == 0)
  {
    if (qword_1EDC1E1F8 != -1)
    {
      OUTLINED_FUNCTION_0_18();
      swift_once();
    }

    v2 = sub_1BC8F7734();
    __swift_project_value_buffer(v2, qword_1EDC2B2B0);
    v3 = sub_1BC8F7714();
    v4 = sub_1BC8F8204();
    if (OUTLINED_FUNCTION_28_7(v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1BC7A3000, v3, v4, "Dropping message - active downloads check", v5, 2u);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }
  }

  v6 = *(v0 + 8);

  return v6(v1);
}

BOOL sub_1BC845E18(void *a1)
{
  v2 = [a1 fileSize];
  v3 = *__swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC20FaceTimeMessageStore28VideoMessagingFileTransferer_serverBag), *(v1 + OBJC_IVAR____TtC20FaceTimeMessageStore28VideoMessagingFileTransferer_serverBag + 24));
  sub_1BC7D9730(0, &qword_1EDC210D0, 0x1E696AD98);
  v4 = sub_1BC8F8384();
  v5 = sub_1BC849568(0xD000000000000016, 0x80000001BC90CB50, v4);

  v6 = [v5 unsignedIntegerValue];
  return v2 < 1 || v6 >= v2;
}

uint64_t sub_1BC845EE8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1BC8F7914();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_1BC8F7264();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BC846004, 0, 0);
}

uint64_t sub_1BC846004()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 32);
  v5 = *(v0 + 16);
  v6 = *(*(v0 + 24) + OBJC_IVAR____TtC20FaceTimeMessageStore28VideoMessagingFileTransferer_downloadManager);
  *(v0 + 80) = v6;

  sub_1BC8F7954();
  sub_1BC8F7934();
  v7 = (*(v3 + 88))(v2, v4);
  if (v7 == *MEMORY[0x1E698F3B0])
  {
LABEL_2:
    v8 = 0;
    goto LABEL_9;
  }

  if (v7 == *MEMORY[0x1E698F3C8])
  {
    v8 = 1;
  }

  else if (v7 == *MEMORY[0x1E698F3C0])
  {
    v8 = 2;
  }

  else
  {
    if (v7 != *MEMORY[0x1E698F3B8])
    {
      if (v7 != *MEMORY[0x1E698F3D0])
      {
        (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));
      }

      goto LABEL_2;
    }

    v8 = 3;
  }

LABEL_9:
  *(v0 + 88) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1BC846164, v6, 0);
}

uint64_t sub_1BC846164()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 48);
  v5 = sub_1BC872F2C(*(v0 + 72), (v0 + 88));

  v6 = *(v3 + 8);
  v7 = OUTLINED_FUNCTION_30();
  v8(v7);

  v9 = *(v0 + 8);

  return v9(v5 & 1);
}

uint64_t sub_1BC846218@<X0>(uint64_t a1@<X8>)
{
  v95 = a1;
  v100 = *MEMORY[0x1E69E9840];
  v93 = sub_1BC8F7264();
  v2 = OUTLINED_FUNCTION_0(v93);
  v91 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_12();
  v89 = v7 - v6;
  OUTLINED_FUNCTION_19_6();
  v8 = sub_1BC8F6ED4();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_16_9();
  v14 = sub_1BC8F7014();
  v15 = OUTLINED_FUNCTION_0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_20_0();
  v22 = (v20 - v21);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v81 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v81 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v81 - v30;
  sub_1BC8F6F34();
  v98 = 0xD000000000000016;
  v99 = 0x80000001BC90CB70;
  v32 = *(v11 + 104);
  v86 = *MEMORY[0x1E6968F70];
  v87 = v11 + 104;
  v85 = v32;
  v32(v1);
  v84 = sub_1BC7B7A9C();
  sub_1BC8F7004();
  v33 = *(v11 + 8);
  v90 = v1;
  v94 = v8;
  v92 = v11 + 8;
  v83 = v33;
  v33(v1, v8);
  v34 = *(v17 + 8);
  v88 = v29;
  v96 = v34;
  v97 = v14;
  v34(v29, v14);
  v35 = objc_opt_self();
  v36 = [v35 defaultManager];
  sub_1BC8F6FC4();
  v37 = sub_1BC8F7BE4();

  LODWORD(v29) = [v36 fileExistsAtPath_];

  if (v29)
  {
    if (qword_1EDC1E1F8 != -1)
    {
      OUTLINED_FUNCTION_0_18();
      swift_once();
    }

    v38 = sub_1BC8F7734();
    __swift_project_value_buffer(v38, qword_1EDC2B2B0);
    v39 = v97;
    (*(v17 + 16))(v26, v31, v97);
    v40 = sub_1BC8F7714();
    v41 = sub_1BC8F8204();
    v42 = OUTLINED_FUNCTION_32_5();
    if (os_log_type_enabled(v42, v43))
    {
      OUTLINED_FUNCTION_9();
      v44 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_2();
      v45 = swift_slowAlloc();
      v98 = v45;
      *v44 = 136446210;
      OUTLINED_FUNCTION_1_17();
      sub_1BC849F3C(v46, v47);
      v48 = sub_1BC8F8A54();
      v49 = v26;
      v50 = v96;
      v96(v49, v97);
      v51 = OUTLINED_FUNCTION_97();
      sub_1BC7A9A4C(v51, v52, v53);
      OUTLINED_FUNCTION_77();

      *(v44 + 4) = v48;
      v54 = v41;
      v55 = v50;
      _os_log_impl(&dword_1BC7A3000, v40, v54, "Incoming video messages folder already exists: %{public}s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v45);
      v56 = OUTLINED_FUNCTION_6_14();
      MEMORY[0x1BFB2AA50](v56);
      v39 = v97;
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    else
    {

      v55 = v96;
      v96(v26, v39);
    }
  }

  else
  {
    v82 = v35;
    if (qword_1EDC1E1F8 != -1)
    {
      OUTLINED_FUNCTION_0_18();
      swift_once();
    }

    v57 = sub_1BC8F7734();
    __swift_project_value_buffer(v57, qword_1EDC2B2B0);
    v39 = v97;
    (*(v17 + 16))(v22, v31, v97);
    v58 = sub_1BC8F7714();
    v59 = sub_1BC8F8204();
    if (os_log_type_enabled(v58, v59))
    {
      OUTLINED_FUNCTION_9();
      v60 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_2();
      v81 = swift_slowAlloc();
      v98 = v81;
      *v60 = 136446210;
      OUTLINED_FUNCTION_1_17();
      sub_1BC849F3C(v61, v62);
      sub_1BC8F8A54();
      v55 = v96;
      v96(v22, v97);
      v63 = OUTLINED_FUNCTION_97();
      v66 = sub_1BC7A9A4C(v63, v64, v65);

      *(v60 + 4) = v66;
      _os_log_impl(&dword_1BC7A3000, v58, v59, "Incoming video messages folder does not exist - creating now %{public}s", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v81);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      v39 = v97;
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    else
    {

      v55 = v96;
      v96(v22, v39);
    }

    v67 = [v82 defaultManager];
    v68 = sub_1BC8F6F44();
    v98 = 0;
    v69 = [v67 createDirectoryAtURL:v68 withIntermediateDirectories:1 attributes:0 error:&v98];

    if (!v69)
    {
      v79 = v98;
      sub_1BC8F6EA4();

      swift_willThrow();
      result = v55(v31, v39);
      goto LABEL_16;
    }

    v70 = v98;
  }

  v71 = v89;
  sub_1BC8F7254();
  v72 = sub_1BC8F7204();
  v74 = v73;
  (*(v91 + 8))(v71, v93);
  v98 = v72;
  v99 = v74;
  v75 = v90;
  v76 = v94;
  v85(v90, v86, v94);
  v77 = v88;
  sub_1BC8F7004();
  v83(v75, v76);

  sub_1BC8F6F84();
  v55(v77, v39);
  result = v55(v31, v39);
LABEL_16:
  v80 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1BC846AD4()
{
  OUTLINED_FUNCTION_29_0();
  v206 = v2;
  v207 = v1;
  v4 = v3;
  v205 = v5;
  v210[7] = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  OUTLINED_FUNCTION_25(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v9);
  v197 = &v180 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  v12 = OUTLINED_FUNCTION_25(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_20_0();
  v199 = v15 - v16;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v17);
  v203 = &v180 - v18;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v19);
  v195 = &v180 - v20;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v21);
  v191 = &v180 - v22;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_47();
  v209 = v24;
  OUTLINED_FUNCTION_19_6();
  v25 = sub_1BC8F7014();
  v201 = OUTLINED_FUNCTION_0(v25);
  v202 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v201);
  v198 = &v180 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_30_7();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_47();
  v196 = v30;
  OUTLINED_FUNCTION_30_7();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_47();
  v190 = v32;
  OUTLINED_FUNCTION_30_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_47();
  v200 = v34;
  OUTLINED_FUNCTION_30_7();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_47();
  v204 = v36;
  OUTLINED_FUNCTION_19_6();
  v37 = sub_1BC8F7994();
  v38 = OUTLINED_FUNCTION_0(v37);
  v40 = v39;
  v42 = *(v41 + 64);
  v43 = MEMORY[0x1EEE9AC00](v38);
  v193 = &v180 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x1EEE9AC00](v43);
  v47 = &v180 - v46;
  v192 = v48;
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_47();
  v208 = v49;
  OUTLINED_FUNCTION_19_6();
  v50 = sub_1BC8F78F4();
  v51 = OUTLINED_FUNCTION_0(v50);
  v53 = v52;
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_12();
  v58 = v57 - v56;
  v194 = v0;
  v59 = *&v0[OBJC_IVAR____TtC20FaceTimeMessageStore28VideoMessagingFileTransferer_queue];
  *(v57 - v56) = v59;
  (*(v53 + 104))(v57 - v56, *MEMORY[0x1E69E8020], v50);
  v60 = v59;
  v61 = sub_1BC8F7904();
  (*(v53 + 8))(v58, v50);
  if ((v61 & 1) == 0)
  {
    __break(1u);
    OUTLINED_FUNCTION_0_18();
    swift_once();
    v63 = sub_1BC8F7734();
    __swift_project_value_buffer(v63, qword_1EDC2B2B0);
    v64 = v61;
    v65 = sub_1BC8F7714();
    v66 = sub_1BC8F8204();

    if (os_log_type_enabled(v65, v66))
    {
      OUTLINED_FUNCTION_9();
      v67 = swift_slowAlloc();
      OUTLINED_FUNCTION_18_10();
      v68 = swift_slowAlloc();
      *v67 = 138543362;
      v69 = v61;
      v70 = _swift_stdlib_bridgeErrorToNSError();
      *(v67 + 4) = v70;
      *v68 = v70;
      OUTLINED_FUNCTION_41_8(&dword_1BC7A3000, v71, v72, "Dropping message as we couldn't download the metadata %{public}@");
      sub_1BC7C1744(v68, &unk_1EBCF5DB0, &unk_1BC900410);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      v73 = OUTLINED_FUNCTION_6_14();
      MEMORY[0x1BFB2AA50](v73);
    }

    else
    {
    }

    goto LABEL_35;
  }

  v210[5] = &type metadata for CoreImageBlurrer;
  v210[6] = &off_1F3B3D070;
  v210[0] = sub_1BC84A1CC;
  v210[1] = 0;
  if (!v4)
  {
    __break(1u);
  }

  sub_1BC8400D8(v4, v47);
  v62 = v209;
  sub_1BC849AE8(v210);
  v189 = v40;
  v74 = *(v40 + 32);
  v75 = v47;
  v76 = v37;
  v185 = v40 + 32;
  v184 = v74;
  v74(v208, v75, v37);
  if (qword_1EDC1E1F8 != -1)
  {
    OUTLINED_FUNCTION_0_18();
    swift_once();
  }

  v77 = sub_1BC8F7734();
  v78 = __swift_project_value_buffer(v77, qword_1EDC2B2B0);
  v79 = v206;

  v188 = v78;
  v80 = sub_1BC8F7714();
  v81 = sub_1BC8F8204();
  v82 = OUTLINED_FUNCTION_28_7(v81);
  v186 = v4;
  if (v82)
  {
    v187 = v76;
    OUTLINED_FUNCTION_11_2();
    v83 = swift_slowAlloc();
    OUTLINED_FUNCTION_18();
    v210[0] = swift_slowAlloc();
    *v83 = 136446466;
    if (!v79)
    {

      __break(1u);
      goto LABEL_39;
    }

    sub_1BC7EB6B4(v207, v79);
    v86 = sub_1BC7A9A4C(v84, v85, v210);

    *(v83 + 4) = v86;
    *(v83 + 12) = 2080;
    v87 = sub_1BC8F7AB4();
    v89 = sub_1BC7A9A4C(v87, v88, v210);

    *(v83 + 14) = v89;
    _os_log_impl(&dword_1BC7A3000, v80, v81, "Received incoming resource from %{public}s metadata %s", v83, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    v90 = OUTLINED_FUNCTION_6_14();
    MEMORY[0x1BFB2AA50](v90);

    v76 = v187;
    v62 = v209;
    v91 = v79;
  }

  else
  {

    v91 = v79;
    if (!v79)
    {
      v92 = 0;
      goto LABEL_14;
    }
  }

  v92 = sub_1BC8F7BE4();
LABEL_14:
  v93 = v189;
  v94 = IDSCopyAddressDestinationForDestination();

  if (!v94 || (v95 = IDSCopyRawAddressForDestination(), v94, !v95) || (v96 = [objc_opt_self() normalizedHandleWithDestinationID_], v95, !v96))
  {

    OUTLINED_FUNCTION_21_10();
    v98 = sub_1BC8F7714();
    v99 = sub_1BC8F81E4();
    v100 = OUTLINED_FUNCTION_32_5();
    if (!os_log_type_enabled(v100, v101))
    {

      (*(v93 + 8))(v208, v76);
      goto LABEL_35;
    }

    v102 = v76;
    OUTLINED_FUNCTION_9();
    v103 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    v104 = swift_slowAlloc();
    v210[0] = v104;
    *v103 = 136446210;
    if (v91)
    {
      v105 = v104;

      sub_1BC7EB6B4(v207, v91);
      v108 = sub_1BC7A9A4C(v106, v107, v210);

      *(v103 + 4) = v108;
      _os_log_impl(&dword_1BC7A3000, v98, v99, "Unable to construct TUHandle from %{public}s", v103, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v105);
      v109 = OUTLINED_FUNCTION_6_14();
      MEMORY[0x1BFB2AA50](v109);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();

      (*(v93 + 8))(v208, v102);
LABEL_35:
      v179 = *MEMORY[0x1E69E9840];
      OUTLINED_FUNCTION_24();
      return;
    }

LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v97 = v204;
  sub_1BC846218(v204);
  v187 = v76;
  sub_1BC7D9558(v205, v62, &qword_1EBCF5A20, &qword_1BC901BF0);
  v110 = v201;
  v111 = v202;
  v112 = *(v202 + 16);
  v113 = v200;
  v206 = v202 + 16;
  v183 = v112;
  v112(v200, v97, v201);
  OUTLINED_FUNCTION_21_10();
  v114 = sub_1BC8F7714();
  v115 = sub_1BC8F8204();
  v116 = OUTLINED_FUNCTION_32_5();
  if (!os_log_type_enabled(v116, v117))
  {

    v126 = *(v111 + 8);
    (v126)(v113, v110);
    sub_1BC7C1744(v62, &qword_1EBCF5A20, &qword_1BC901BF0);
    goto LABEL_27;
  }

  v182 = v115;
  v207 = v114;
  OUTLINED_FUNCTION_11_2();
  v119 = swift_slowAlloc();
  OUTLINED_FUNCTION_18();
  v181 = swift_slowAlloc();
  v210[0] = v181;
  *v119 = 136446466;
  v120 = v191;
  sub_1BC7D9558(v62, v191, &qword_1EBCF5A20, &qword_1BC901BF0);
  if (__swift_getEnumTagSinglePayload(v120, 1, v110) != 1)
  {
    v121 = v202;
    v122 = v190;
    (*(v202 + 32))(v190, v120, v110);
    OUTLINED_FUNCTION_1_17();
    sub_1BC849F3C(v123, v124);
    v125 = sub_1BC8F8A54();
    v126 = *(v121 + 8);
    (v126)(v122, v110);
    sub_1BC7C1744(v209, &qword_1EBCF5A20, &qword_1BC901BF0);
    v127 = OUTLINED_FUNCTION_97();
    sub_1BC7A9A4C(v127, v128, v129);
    OUTLINED_FUNCTION_77();

    *(v119 + 4) = v125;
    *(v119 + 12) = 2082;
    v130 = v200;
    v131 = sub_1BC8F8A54();
    v133 = v132;
    (v126)(v130, v110);
    v134 = sub_1BC7A9A4C(v131, v133, v210);

    *(v119 + 14) = v134;
    v135 = v207;
    _os_log_impl(&dword_1BC7A3000, v207, v182, "Moving incoming file from %{public}s to %{public}s", v119, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    v111 = v202;
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();

LABEL_27:
    v136 = [objc_opt_self() defaultManager];
    v137 = v195;
    sub_1BC7D9558(v205, v195, &qword_1EBCF5A20, &qword_1BC901BF0);
    if (__swift_getEnumTagSinglePayload(v137, 1, v110) == 1)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v138 = sub_1BC8F6F44();
    (v126)(v137, v110);
    v139 = v204;
    v140 = sub_1BC8F6F44();
    v210[0] = 0;
    v141 = [v136 copyItemAtURL:v138 toURL:v140 error:v210];
    v207 = v126;
    v142 = v141;

    v143 = v210[0];
    if (v142)
    {
      v144 = sub_1BC8F7FC4();
      __swift_storeEnumTagSinglePayload(v197, 1, 1, v144);
      v145 = v189;
      v146 = *(v189 + 16);
      v205 = v143;
      v209 = v96;
      v147 = v193;
      v146(v193, v208, v187);
      v183(v196, v139, v110);
      v148 = (*(v145 + 80) + 40) & ~*(v145 + 80);
      v149 = (v192 + *(v111 + 80) + v148) & ~*(v111 + 80);
      v206 = v111 + 8;
      v150 = (v28 + v149 + 7) & 0xFFFFFFFFFFFFFFF8;
      v151 = swift_allocObject();
      *(v151 + 2) = 0;
      *(v151 + 3) = 0;
      v152 = v194;
      *(v151 + 4) = v194;
      v153 = &v151[v148];
      v154 = v187;
      v184(v153, v147, v187);
      (*(v111 + 32))(&v151[v149], v196, v110);
      *&v151[v150] = v186;
      v155 = v209;
      *&v151[(v150 + 15) & 0xFFFFFFFFFFFFFFF8] = v209;

      v156 = v205;
      v157 = v152;
      v158 = v155;
      sub_1BC8333D4();

      (v207)(v204, v110);
      (*(v145 + 8))(v208, v154);
      goto LABEL_35;
    }

    v159 = v210[0];
    v160 = v110;
    v161 = sub_1BC8F6EA4();

    swift_willThrow();
    (v207)(v139, v160);
    v162 = v189;
    v163 = v203;
    sub_1BC7D9558(v205, v203, &qword_1EBCF5A20, &qword_1BC901BF0);
    OUTLINED_FUNCTION_21_10();
    v164 = sub_1BC8F7714();
    v165 = sub_1BC8F81E4();
    v166 = OUTLINED_FUNCTION_32_5();
    if (!os_log_type_enabled(v166, v167))
    {

      sub_1BC7C1744(v163, &qword_1EBCF5A20, &qword_1BC901BF0);
      goto LABEL_34;
    }

    v209 = v96;
    OUTLINED_FUNCTION_9();
    v168 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    v207 = swift_slowAlloc();
    v210[0] = v207;
    *v168 = 136446210;
    v169 = v199;
    sub_1BC7D9558(v163, v199, &qword_1EBCF5A20, &qword_1BC901BF0);
    v170 = v201;
    if (__swift_getEnumTagSinglePayload(v169, 1, v201) != 1)
    {
      v171 = v202;
      v172 = v198;
      (*(v202 + 32))(v198, v169, v170);
      OUTLINED_FUNCTION_1_17();
      sub_1BC849F3C(v173, v174);
      v175 = sub_1BC8F8A54();
      v177 = v176;
      (*(v171 + 8))(v172, v170);
      sub_1BC7C1744(v203, &qword_1EBCF5A20, &qword_1BC901BF0);
      v178 = sub_1BC7A9A4C(v175, v177, v210);

      *(v168 + 4) = v178;
      _os_log_impl(&dword_1BC7A3000, v164, v165, "Failed to move incoming file from %{public}s", v168, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v207);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();

LABEL_34:
      (*(v162 + 8))(v208, v187);
      goto LABEL_35;
    }

LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

LABEL_42:
  __break(1u);
}
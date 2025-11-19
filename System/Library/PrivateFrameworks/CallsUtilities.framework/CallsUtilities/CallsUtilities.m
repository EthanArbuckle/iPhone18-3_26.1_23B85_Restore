uint64_t sub_242A13420()
{
  v1 = sub_242A1A1F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  v8 = *(v0 + v6 + 8);

  return MEMORY[0x2821FE8E8](v0, v6 + 16, v3 | 7);
}

uint64_t sub_242A134DC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  __swift_destroy_boxed_opaque_existential_0(v0 + 10);

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_242A13534()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_242A1356C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8998, &qword_242A1A920);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

Swift::Void __swiftcall Daemon.main()()
{
  v2 = v1;
  v3 = v0;
  v4 = MEMORY[0x245D1FA70]();
  (*(v2 + 40))(v3, v2);
  (*(v2 + 32))(v3, v2);
  objc_autoreleasePoolPop(v4);
  v5 = [objc_opt_self() currentRunLoop];
  [v5 run];
}

uint64_t _s14CallsUtilities6DaemonPAAE12enterSandboxyyF_0(uint64_t a1, uint64_t a2)
{
  if (qword_281368B00 != -1)
  {
    swift_once();
  }

  v4 = sub_242A1A1F4();
  __swift_project_value_buffer(v4, qword_281368B08);
  v5 = sub_242A1A1D4();
  v6 = sub_242A1A344();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_242A12000, v5, v6, "Entering sandbox", v7, 2u);
    MEMORY[0x245D1FD20](v7, -1, -1);
  }

  (*(a2 + 8))(a1, a2);
  (*(a2 + 16))(a1, a2);
  sub_242A14040();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_242A138C0(unsigned __int8 a1)
{
  if (qword_281368B00 != -1)
  {
    swift_once();
  }

  v2 = sub_242A1A1F4();
  __swift_project_value_buffer(v2, qword_281368B08);
  v3 = sub_242A1A1D4();
  v4 = sub_242A1A324();
  if (!os_log_type_enabled(v3, v4))
  {
LABEL_29:

    _exit(a1);
  }

  v5 = swift_slowAlloc();
  v6 = swift_slowAlloc();
  v15 = v6;
  *v5 = 136315138;
  if (a1 > 3u)
  {
    v9 = "h parameters failed";
    if (a1 == 6)
    {
      v10 = 0xD00000000000001BLL;
    }

    else
    {
      v9 = ": %s";
      v10 = 0xD000000000000023;
    }

    v11 = "confstr cache dir failure";
    if (a1 == 4)
    {
      v12 = 0xD000000000000018;
    }

    else
    {
      v11 = "set user dir suffix failure";
      v12 = 0xD000000000000019;
    }

    if (a1 <= 5u)
    {
      v13 = v11;
    }

    else
    {
      v13 = v9;
    }

    if (a1 <= 5u)
    {
      v8 = v12;
    }

    else
    {
      v8 = v10;
    }
  }

  else if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v13 = "cannot create base directory";
    }

    else
    {
      v13 = "confstr temp dir failure";
    }

    if (a1 == 2)
    {
      v8 = 0xD00000000000001DLL;
    }

    else
    {
      v8 = 0xD00000000000001CLL;
    }
  }

  else
  {
    if (!a1)
    {
      v7 = 0xE700000000000000;
      v8 = 0x73736563637573;
LABEL_28:
      v14 = sub_242A19520(v8, v7, &v15);

      *(v5 + 4) = v14;
      _os_log_impl(&dword_242A12000, v3, v4, "Exiting with reason: %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x245D1FD20](v6, -1, -1);
      MEMORY[0x245D1FD20](v5, -1, -1);
      goto LABEL_29;
    }

    v8 = 0xD000000000000020;
    v13 = "cannot resolve home directory";
  }

  v7 = v13 | 0x8000000000000000;
  goto LABEL_28;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_242A13B18@<X0>(char *a1@<X0>, int a2@<W2>, void *a3@<X8>)
{
  result = confstr(a2, a1, 0x400uLL);
  if (result >= 1 && a1)
  {
    result = sub_242A1A2B4();
    *a3 = result;
    a3[1] = v6;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

uint64_t sub_242A13B7C(uint64_t *a1, int a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v5 = a1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_242A143CC(v6, v5);
      *v21 = v6;
      *&v21[8] = v5;
      v21[10] = BYTE2(v5);
      v21[11] = BYTE3(v5);
      v21[12] = BYTE4(v5);
      v21[13] = BYTE5(v5);
      v21[14] = BYTE6(v5);
      result = sub_242A13B18(v21, a2, &v22);
      if (!v2)
      {
        result = v22;
      }

      v9 = *&v21[8] | ((*&v21[12] | (v21[14] << 16)) << 32);
      *a1 = *v21;
      a1[1] = v9;
      goto LABEL_20;
    }

    v12 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_242A143CC(v6, v5);
    *a1 = xmmword_242A1A7C0;
    sub_242A143CC(0, 0xC000000000000000);
    v13 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v6)
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      if (sub_242A1A124() && __OFSUB__(v6, sub_242A1A154()))
      {
LABEL_24:
        __break(1u);
      }

      v14 = sub_242A1A164();
      v15 = *(v14 + 48);
      v16 = *(v14 + 52);
      swift_allocObject();
      v17 = sub_242A1A114();

      v12 = v17;
    }

    if (v13 >= v6)
    {

      v18 = sub_242A13EEC(v6, v6 >> 32, v12, a2);

      v11 = v12 | 0x4000000000000000;
      if (!v2)
      {
        *a1 = v6;
        a1[1] = v11;
        result = v18;
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_23;
  }

  if (v7 == 2)
  {
    v10 = *a1;

    sub_242A143CC(v6, v5);
    v22 = v6;
    v23 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_242A1A7C0;
    sub_242A143CC(0, 0xC000000000000000);
    sub_242A1A174();
    v6 = v22;
    result = sub_242A13EEC(*(v22 + 16), *(v22 + 24), v23, a2);
    v11 = v23 | 0x8000000000000000;
    if (!v2)
    {
      *a1 = v22;
      a1[1] = v11;
      goto LABEL_20;
    }

LABEL_19:
    *a1 = v6;
    a1[1] = v11;
    goto LABEL_20;
  }

  memset(v21, 0, 15);
  result = sub_242A13B18(v21, a2, &v22);
  if (!v2)
  {
    result = v22;
  }

LABEL_20:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_242A13EEC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = sub_242A1A124();
  if (!result)
  {
    goto LABEL_9;
  }

  v9 = result;
  result = sub_242A1A154();
  v10 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (__OFSUB__(a2, a1))
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  sub_242A1A144();
  result = sub_242A13B18((v9 + v10), a4, &v11);
  if (!v4)
  {
    return v11;
  }

  return result;
}

uint64_t sub_242A13F98(int *a1, int a2)
{
  result = sub_242A1A184();
  v5 = *a1;
  v6 = a1[1];
  if (v6 < v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = *(a1 + 1);

  result = sub_242A1A124();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v8 = result;
  result = sub_242A1A154();
  v9 = v5 - result;
  if (__OFSUB__(v5, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = v6 - v5;
  v11 = sub_242A1A144();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  memset((v8 + v9), a2, v12);
}

uint64_t sub_242A14040()
{
  sub_242A1A294();
  v0 = _set_user_dir_suffix();

  if (!v0)
  {
    if (qword_281368B00 != -1)
    {
      swift_once();
    }

    v18 = sub_242A1A1F4();
    __swift_project_value_buffer(v18, qword_281368B08);
    v19 = sub_242A1A1D4();
    v20 = sub_242A1A334();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_242A12000, v19, v20, "Sandbox: _set_user_dir_suffix returned nil", v21, 2u);
      MEMORY[0x245D1FD20](v21, -1, -1);
    }

    sub_242A138C0(6u);
  }

  v1 = NSTemporaryDirectory();
  v2 = sub_242A1A264();
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    if (qword_281368B00 != -1)
    {
      swift_once();
    }

    v22 = sub_242A1A1F4();
    __swift_project_value_buffer(v22, qword_281368B08);
    v23 = sub_242A1A1D4();
    v24 = sub_242A1A334();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_242A12000, v23, v24, "Unable to create temp directory", v25, 2u);
      MEMORY[0x245D1FD20](v25, -1, -1);
    }

    sub_242A138C0(3u);
  }

  v6 = sub_242A1A164();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v26 = 0x40000000000;
  v27 = sub_242A1A134();
  sub_242A13F98(&v26, 0);
  v27 |= 0x4000000000000000uLL;
  sub_242A13B7C(&v26, 65537);
  v10 = v9;
  sub_242A143CC(v26, v27);
  if (!v10 || (v11 = sub_242A1A294(), , v12 = realpath_DARWIN_EXTSN((v11 + 32), 0), , !v12))
  {
    if (qword_281368B00 != -1)
    {
      swift_once();
    }

    v14 = sub_242A1A1F4();
    __swift_project_value_buffer(v14, qword_281368B08);
    v15 = sub_242A1A1D4();
    v16 = sub_242A1A334();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_242A12000, v15, v16, "Sandbox: confstr(_CS_DARWIN_USER_TEMP_DIR) failed", v17, 2u);
      MEMORY[0x245D1FD20](v17, -1, -1);
    }

    sub_242A138C0(4u);
  }

  sub_242A1A2B4();
  MEMORY[0x245D1FD20](v12, -1, -1);
}

uint64_t sub_242A143CC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t static ErrorHandling.tryOrLog<A>(_:_:logger:function:line:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v31 = a8;
  v32 = a2;
  v28 = a6;
  v29 = a3;
  v30 = a1;
  v33 = a9;
  v27 = a10;
  v13 = sub_242A1A1F4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v16, a5, v13);
  v17 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v18 = (v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 23) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  (*(v14 + 32))(v20 + v17, v16, v13);
  v21 = (v20 + v18);
  v22 = v29;
  *v21 = v28;
  v21[1] = a7;
  *(v20 + v19) = v31;
  v23 = (v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v23 = v22;
  v23[1] = a4;
  v24 = v27;
  v34 = v27;
  v35 = v30;
  v36 = v32;

  static ErrorHandling.tryOrLog<A>(_:errorHandler:)(sub_242A149C0, v24, v33);
}

void sub_242A14600(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{

  MEMORY[0x245D1FC60](a1);
  v27[0] = sub_242A1A1D4();
  v13 = sub_242A1A334();

  if (os_log_type_enabled(v27[0], v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v29 = v15;
    *v14 = 136315906;
    *(v14 + 4) = sub_242A19520(a3, a4, &v29);
    *(v14 + 12) = 2048;
    *(v14 + 14) = a5;
    *(v14 + 22) = 2082;
    *(v14 + 24) = sub_242A19520(a6, a7, &v29);
    *(v14 + 32) = 2080;
    swift_getErrorValue();
    v16 = v28;
    v17 = sub_242A1A354();
    v18 = *(v17 - 8);
    v19 = *(v18 + 64);
    MEMORY[0x28223BE20](v17);
    v21 = v27 - v20;
    v22 = *(v28 - 8);
    (*(v22 + 16))(v27 - v20, v27[1], v28);
    (*(v22 + 56))(v21, 0, 1, v16);
    v23 = sub_242A19BAC(v21, v16);
    v25 = v24;
    (*(v18 + 8))(v21, v17);
    v26 = sub_242A19520(v23, v25, &v29);

    *(v14 + 34) = v26;
    _os_log_impl(&dword_242A12000, v27[0], v13, "%s:%ld %{public}s Error: %s", v14, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x245D1FD20](v15, -1, -1);
    MEMORY[0x245D1FD20](v14, -1, -1);
  }

  else
  {
  }
}

void sub_242A14904(void *a1)
{
  v3 = *(sub_242A1A1F4() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v1 + v5);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v1 + v6);
  v11 = (v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];

  sub_242A14600(a1, v1 + v4, v8, v9, v10, v12, v13);
}

uint64_t sub_242A149C0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

uint64_t static ErrorHandling.tryOrLog<A>(_:errorHandler:)@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  a1();
  v5 = *(*(a2 - 8) + 56);

  return v5(a3, 0, 1, a2);
}

uint64_t getEnumTagSinglePayload for ErrorHandling(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for ErrorHandling(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

void *ABCReporter.__allocating_init(domain:type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = [objc_allocWithZone(MEMORY[0x277D6AFC8]) init];
  v8[3] = a1;
  v8[4] = a2;
  v8[5] = a3;
  v8[6] = a4;
  return v8;
}

void *ABCReporter.init(domain:type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = [objc_allocWithZone(MEMORY[0x277D6AFC8]) init];
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = a3;
  v4[6] = a4;
  return v4;
}

Swift::OpaquePointer_optional __swiftcall ABCReporter.signature(subType:context:process:)(Swift::String subType, Swift::String context, Swift::String process)
{
  v5 = v3[2];
  v4 = v3[3];
  v6 = v3[4];
  v7 = sub_242A1A254();
  v8 = v3[5];
  v9 = v3[6];
  v10 = sub_242A1A254();
  v11 = sub_242A1A254();
  v12 = sub_242A1A254();
  v13 = sub_242A1A254();
  v14 = [v5 signatureWithDomain:v7 type:v10 subType:v11 subtypeContext:v12 detectedProcess:v13 triggerThresholdValues:0];

  if (v14)
  {
    sub_242A1A214();
  }

  v16 = 0;
  result.value._rawValue = v16;
  result.is_nil = v15;
  return result;
}

uint64_t ABCReporter.report(with:duration:)(uint64_t a1, double a2)
{
  *(v3 + 40) = v2;
  *(v3 + 32) = a2;
  *(v3 + 24) = a1;
  return MEMORY[0x2822009F8](sub_242A14DC8, 0, 0);
}

uint64_t sub_242A14DC8()
{
  v1 = v0[5];
  v2 = v0[4];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D859E0] + 4);
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_242A14ED4;

  return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0xD000000000000016, 0x8000000242A1B0A0, sub_242A15204, v4, &type metadata for ReportResponseWrapper);
}

uint64_t sub_242A14ED4()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_242A14FEC, 0, 0);
}

void sub_242A15004(uint64_t a1, uint64_t a2, double a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8998, &qword_242A1A920);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - v9;
  v11 = *(a2 + 16);
  v12 = sub_242A1A204();
  (*(v7 + 16))(v10, a1, v6);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  (*(v7 + 32))(v14 + v13, v10, v6);
  aBlock[4] = sub_242A172FC;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_242A15270;
  aBlock[3] = &block_descriptor;
  v15 = _Block_copy(aBlock);

  [v11 snapshotWithSignature:v12 duration:0 event:0 payload:v15 reply:a3];
  _Block_release(v15);
}

uint64_t sub_242A15210()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8998, &qword_242A1A920);
  return sub_242A1A2E4();
}

uint64_t sub_242A15270(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (a2)
  {
    v4 = sub_242A1A224();
  }

  else
  {
    v4 = 0;
  }

  v3(v4);
}

uint64_t ABCReporter.deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return v0;
}

uint64_t ABCReporter.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

id sub_242A15378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = swift_allocObject();
  result = [objc_allocWithZone(MEMORY[0x277D6AFC8]) init];
  v10[2] = result;
  v10[3] = a1;
  v10[4] = a2;
  v10[5] = a3;
  v10[6] = a4;
  *a5 = v10;
  return result;
}

uint64_t sub_242A15418(uint64_t a1, double a2)
{
  *(v3 + 32) = a2;
  *(v3 + 24) = a1;
  *(v3 + 40) = *v2;
  return MEMORY[0x2822009F8](sub_242A15444, 0, 0);
}

uint64_t sub_242A15444()
{
  v1 = v0[5];
  v2 = v0[4];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D859E0] + 4);
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_242A15550;

  return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0xD000000000000016, 0x8000000242A1B0A0, sub_242A17390, v4, &type metadata for ReportResponseWrapper);
}

uint64_t sub_242A15550()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_242A17398, 0, 0);
}

uint64_t Task<>.reportFailure(on:function:process:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8980, &qword_242A1A818);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v21 - v16;
  v18 = sub_242A1A304();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  sub_242A16634(a1, v22);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = a7;
  v19[5] = a6;
  v19[6] = a2;
  v19[7] = a3;
  v19[8] = a4;
  v19[9] = a5;
  sub_242A16698(v22, (v19 + 10));

  sub_242A16894(0, 0, v17, &unk_242A1A828, v19);

  sub_242A16B34(v17);
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

uint64_t sub_242A15828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = v16;
  v8[14] = v17;
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[8] = a4;
  v9 = *(v17 - 8);
  v8[15] = v9;
  v10 = *(v9 + 64) + 15;
  v8[16] = swift_task_alloc();
  v11 = sub_242A1A1C4();
  v8[17] = v11;
  v12 = *(v11 - 8);
  v8[18] = v12;
  v13 = *(v12 + 64) + 15;
  v8[19] = swift_task_alloc();
  v8[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_242A15958, 0, 0);
}

uint64_t sub_242A15958()
{
  v1 = v0[20];
  sub_242A1A1B4();
  v2 = *(MEMORY[0x277D857C8] + 4);
  v3 = swift_task_alloc();
  v0[21] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8988, &qword_242A1A910);
  *v3 = v0;
  v3[1] = sub_242A15A20;
  v5 = v0[16];
  v6 = v0[14];
  v7 = v0[8];
  v8 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v5, v7, v6, v4, v8);
}

uint64_t sub_242A15A20()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v6 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = sub_242A15BD8;
  }

  else
  {
    (*(v2[15] + 8))(v2[16], v2[14]);
    v4 = sub_242A15B4C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_242A15B4C()
{
  (*(v0[18] + 8))(v0[20], v0[17]);
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[16];

  v4 = v0[1];

  return v4();
}

uint64_t sub_242A15BD8()
{
  v81 = v0;
  if (qword_27ECD8968 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = sub_242A1A1F4();
  v0[23] = __swift_project_value_buffer(v2, qword_27ECD89B0);

  v3 = sub_242A1A1D4();
  v4 = sub_242A1A334();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[9];
    v5 = v0[10];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v80 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_242A19520(v6, v5, &v80);
    _os_log_impl(&dword_242A12000, v3, v4, "Detected failure on function %s. Reporting!", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x245D1FD20](v8, -1, -1);
    MEMORY[0x245D1FD20](v7, -1, -1);
  }

  if (v0[12])
  {
    v76 = v0[12];
    v75 = v0[11];
  }

  else
  {
    v9 = [objc_opt_self() mainBundle];
    v10 = [v9 bundleIdentifier];

    if (!v10)
    {
      v54 = v0[10];

      v55 = sub_242A1A1D4();
      v56 = sub_242A1A334();

      v57 = os_log_type_enabled(v55, v56);
      v58 = v0[22];
      v59 = v0[20];
      v61 = v0[17];
      v60 = v0[18];
      if (v57)
      {
        v79 = v0[20];
        v63 = v0[10];
        v62 = v0[11];
        v64 = v0[9];
        v77 = v0[17];
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v80 = v66;
        *v65 = 136315394;
        *(v65 + 4) = sub_242A19520(v64, v63, &v80);
        *(v65 + 12) = 2080;
        v0[5] = v62;
        v0[6] = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8990, &qword_242A1A918);
        v67 = sub_242A1A274();
        v69 = sub_242A19520(v67, v68, &v80);

        *(v65 + 14) = v69;
        _os_log_impl(&dword_242A12000, v55, v56, "Can't report failure on function %s because of missing processName %s", v65, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x245D1FD20](v66, -1, -1);
        MEMORY[0x245D1FD20](v65, -1, -1);

        (*(v60 + 8))(v79, v77);
      }

      else
      {

        (*(v60 + 8))(v59, v61);
      }

      goto LABEL_22;
    }

    v11 = v0[12];
    v75 = sub_242A1A264();
    v76 = v12;
  }

  v13 = v0[22];
  v14 = v0[13];
  v16 = v0[9];
  v15 = v0[10];
  v18 = v14[3];
  v17 = v14[4];
  v74 = v14;
  __swift_project_boxed_opaque_existential_1(v14, v18);
  swift_getErrorValue();
  v19 = v0[2];
  v20 = v0[3];
  v21 = v0[4];

  v22 = sub_242A1A3C4();
  v24 = (*(v17 + 16))(v16, v15, v22, v23, v75, v76, v18, v17);
  v0[24] = v24;

  if (v24)
  {

    v25 = sub_242A1A1D4();
    v26 = sub_242A1A344();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v80 = v28;
      *v27 = 136315138;
      v29 = sub_242A1A234();
      v31 = sub_242A19520(v29, v30, &v80);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_242A12000, v25, v26, "Reporting signature %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x245D1FD20](v28, -1, -1);
      MEMORY[0x245D1FD20](v27, -1, -1);
    }

    v33 = v0[19];
    v32 = v0[20];
    v34 = v0[17];
    v35 = v0[18];
    v36 = v74[3];
    v37 = v74[4];
    __swift_project_boxed_opaque_existential_1(v0[13], v36);
    sub_242A1A1B4();
    sub_242A1A1A4();
    v39 = v38;
    v40 = *(v35 + 8);
    v0[25] = v40;
    v0[26] = (v35 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v40(v33, v34);
    v41 = *(v37 + 24);
    v78 = (v41 + *v41);
    v42 = v41[1];
    v43 = swift_task_alloc();
    v0[27] = v43;
    *v43 = v0;
    v43[1] = sub_242A16318;
    v44.n128_u64[0] = v39;

    return v78(v24, v36, v37, v44);
  }

  v46 = sub_242A1A1D4();
  v47 = sub_242A1A334();
  v48 = os_log_type_enabled(v46, v47);
  v49 = v0[22];
  v50 = v0[20];
  v51 = v0[17];
  v52 = v0[18];
  if (v48)
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_242A12000, v46, v47, "Failed to convert signature payload", v53, 2u);
    MEMORY[0x245D1FD20](v53, -1, -1);
  }

  else
  {
  }

  (*(v52 + 8))(v50, v51);
LABEL_22:
  v71 = v0[19];
  v70 = v0[20];
  v72 = v0[16];

  v73 = v0[1];

  return v73();
}

uint64_t sub_242A16318(uint64_t a1)
{
  v2 = *(*v1 + 216);
  v3 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 224) = a1;

  return MEMORY[0x2822009F8](sub_242A16438, 0, 0);
}

uint64_t sub_242A16438()
{
  v27 = v0;
  v1 = v0[28];
  v2 = v0[23];

  v3 = sub_242A1A1D4();
  v4 = sub_242A1A344();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[28];
  v8 = v0[25];
  v7 = v0[26];
  v9 = v0[22];
  v10 = v0[20];
  v11 = v0[17];
  if (v5)
  {
    v25 = v0[25];
    v12 = swift_slowAlloc();
    v24 = v10;
    v13 = swift_slowAlloc();
    v26 = v13;
    *v12 = 136315138;
    v14 = sub_242A1A234();
    v16 = v15;

    v17 = sub_242A19520(v14, v16, &v26);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_242A12000, v3, v4, "Received reporting response: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x245D1FD20](v13, -1, -1);
    MEMORY[0x245D1FD20](v12, -1, -1);

    v25(v24, v11);
  }

  else
  {
    v18 = v0[28];

    v8(v10, v11);
  }

  v20 = v0[19];
  v19 = v0[20];
  v21 = v0[16];

  v22 = v0[1];

  return v22();
}

uint64_t sub_242A16634(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_242A16698(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_242A166B0(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = v1[9];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_242A167A0;

  return sub_242A15828(a1, v3, v4, v6, v7, v8, v9, v10);
}

uint64_t sub_242A167A0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_242A16894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8980, &qword_242A1A818);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_242A16EE8(a3, v27 - v11);
  v13 = sub_242A1A304();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_242A16B34(v12);
  }

  else
  {
    sub_242A1A2F4();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_242A1A2D4();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_242A1A294() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_242A16B34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8980, &qword_242A1A818);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_242A16BA8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_242A16BF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of ABCReporterProtocol.report(with:duration:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v9 = *(a3 + 24);
  v14 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_242A16D9C;
  v12.n128_f64[0] = a4;

  return v14(a1, a2, a3, v12);
}

uint64_t sub_242A16D9C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_242A16EE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8980, &qword_242A1A818);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_242A16F58(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_242A17050;

  return v7(a1);
}

uint64_t sub_242A17050()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_242A17148(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_242A17394;

  return sub_242A16F58(a1, v5);
}

uint64_t sub_242A17200(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_242A167A0;

  return sub_242A16F58(a1, v5);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_242A172FC()
{
  v0 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8998, &qword_242A1A920) - 8) + 80);

  return sub_242A15210();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id static DefaultsProvider.standardUserDefaults.getter@<X0>(void *a1@<X8>)
{
  result = [objc_opt_self() standardUserDefaults];
  *a1 = result;
  return result;
}

void __swiftcall DefaultsProvider.init(suiteName:)(CallsUtilities::DefaultsProvider_optional *__return_ptr retstr, Swift::String_optional suiteName)
{
  if (suiteName.value._object)
  {
    v3 = sub_242A1A254();
  }

  else
  {
    v3 = 0;
  }

  v4 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];

  retstr->value.userDefaults.super.isa = v4;
}

void DefaultsProvider.set<A>(codable:forKey:)()
{
  v1 = *v0;
  v2 = sub_242A1A3B4();
  v3 = sub_242A1A254();
  [v1 setObject:v2 forKey:v3];
  swift_unknownObjectRelease();
}

uint64_t DefaultsProvider.getAll<A>(of:)()
{
  v1 = *v0;
  return NSUserDefaults.getAll<A>(of:)();
}

{
  v1 = *v0;
  return NSUserDefaults.getAll<A>(of:)();
}

Swift::Bool __swiftcall DefaultsProvider.BOOL(forKey:)(Swift::String forKey)
{
  v2 = *v1;
  v3 = sub_242A1A254();
  LOBYTE(v2) = [v2 BOOLForKey_];

  return v2;
}

Swift::Void __swiftcall DefaultsProvider.remove(key:)(Swift::String key)
{
  v2 = *v1;
  v3 = sub_242A1A254();
  [v2 removeObjectForKey_];
}

id sub_242A1766C()
{
  v1 = *v0;
  v2 = sub_242A1A254();
  v3 = [v1 BOOLForKey_];

  return v3;
}

void sub_242A176B4()
{
  v1 = *v0;
  v2 = sub_242A1A254();
  [v1 removeObjectForKey_];
}

uint64_t NSUserDefaults.get<A>(_:forKey:)@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_242A1A354();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v18 - v9;
  v11 = sub_242A1A254();
  v12 = [v3 valueForKey_];

  if (v12)
  {
    sub_242A1A364();
    swift_unknownObjectRelease();
    sub_242A179F8(v18, v19);
  }

  else
  {
    memset(v19, 0, sizeof(v19));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD89A0, &qword_242A1A9D0);
  v13 = swift_dynamicCast();
  v14 = *(*(a1 - 8) + 56);
  if (v13)
  {
    v15 = *(a1 - 8);
    v14(v10, 0, 1, a1);
    (*(v15 + 32))(a2, v10, a1);
    v16 = 0;
  }

  else
  {
    v16 = 1;
    v14(v10, 1, 1, a1);
    (*(v7 + 8))(v10, v6);
  }

  return (v14)(a2, v16, 1, a1);
}

_OWORD *sub_242A179F8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t NSUserDefaults.get<A>(_:forKey:defaultValue:)@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v6 = sub_242A1A354();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  NSUserDefaults.get<A>(_:forKey:)(a2, &v14 - v9);
  v11 = *(a2 - 8);
  v12 = *(v11 + 48);
  if (v12(v10, 1, a2) != 1)
  {
    return (*(v11 + 32))(a3, v10, a2);
  }

  (*(v11 + 16))(a3, a1, a2);
  result = (v12)(v10, 1, a2);
  if (result != 1)
  {
    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

uint64_t NSUserDefaults.getAll<A>(of:)()
{
  v1 = sub_242A1A0D4();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_242A1A0C4();
  v4 = [v0 dictionaryRepresentation];
  sub_242A1A224();

  v5 = sub_242A1A244();

  return v5;
}

{
  v1 = [v0 dictionaryRepresentation];
  sub_242A1A224();

  v2 = sub_242A1A244();

  return v2;
}

Swift::Void __swiftcall NSUserDefaults.remove(key:)(Swift::String key)
{
  v2 = sub_242A1A254();
  [v1 removeObjectForKey_];
}

uint64_t NSUserDefaults.set<A>(codable:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38[2] = a3;
  v38[5] = a6;
  v38[1] = a2;
  v8 = sub_242A1A1F4();
  v39 = *(v8 - 8);
  v9 = *(v39 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v38 - v13;
  v15 = sub_242A1A354();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v38 - v18;
  v40 = 0;
  v41 = 0xE000000000000000;
  sub_242A1A384();

  v40 = 0xD000000000000018;
  v41 = 0x8000000242A1B120;
  v20 = *(a4 - 8);
  v21 = *(v20 + 16);
  v38[4] = a1;
  v21(v19, a1, a4);
  (*(v20 + 56))(v19, 0, 1, a4);
  v22 = sub_242A19BAC(v19, a4);
  v24 = v23;
  (*(v16 + 8))(v19, v15);
  MEMORY[0x245D1F8E0](v22, v24);

  if (qword_27ECD8978 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v8, qword_27ECD89E0);
  v26 = v39;
  v27 = *(v39 + 16);
  v27(v14, v25, v8);
  v27(v12, v14, v8);
  v28 = sub_242A1A104();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  sub_242A1A0F4();
  v31 = sub_242A1A0E4();
  v33 = v32;

  v34 = *(v26 + 8);
  v34(v12, v8);
  v34(v14, v8);
  v35 = sub_242A1A194();
  v36 = sub_242A1A254();
  [v38[3] setObject:v35 forKey:v36];

  return sub_242A143CC(v31, v33);
}

uint64_t NSUserDefaults.get<A>(codable:forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, char *a4@<X8>)
{
  v5 = v4;
  v65 = a3;
  v9 = sub_242A1A354();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v74 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v69 = &v62 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v62 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v62 - v19;
  v21 = sub_242A1A254();
  v22 = [v5 valueForKey_];

  if (v22)
  {
    v63 = a1;
    v68 = a4;
    sub_242A1A364();
    swift_unknownObjectRelease();
    sub_242A19B28(v79, v77);
    v23 = swift_dynamicCast();
    v24 = *(a2 - 8);
    v70 = *(v24 + 56);
    v71 = v24 + 56;
    v70(v20, v23 ^ 1u, 1, a2);
    v66 = v10[2];
    v66(v18, v20, v9);
    v25 = *(v24 + 48);
    v26 = v25(v18, 1, a2);
    v62 = v10;
    v72 = v10[1];
    v73 = v10 + 1;
    v72(v18, v9);
    v27 = v74;
    v67 = v20;
    if (v26 == 1)
    {
      sub_242A19B28(v79, v77);
      if (swift_dynamicCast())
      {
        v64 = v9;
        v28 = v76[0];
        v29 = v76[1];
        v30 = sub_242A1A0D4();
        v31 = *(v30 + 48);
        v32 = *(v30 + 52);
        swift_allocObject();
        sub_242A1A0C4();
        sub_242A1A0B4();
        sub_242A143CC(v28, v29);

        v33 = v69;
        v70(v69, 0, 1, a2);
        v20 = v67;
        v9 = v64;
        (v62[5])(v67, v33, v64);
      }

      else
      {
        v20 = v67;
      }
    }

    v66(v27, v20, v9);
    if (v25(v27, 1, a2) == 1)
    {
      v64 = v9;
      v72(v27, v9);
      if (qword_27ECD8970 != -1)
      {
        swift_once();
      }

      v36 = sub_242A1A1F4();
      __swift_project_value_buffer(v36, qword_27ECD89C8);
      sub_242A19B28(v79, v77);
      v37 = sub_242A1A1D4();
      v38 = sub_242A1A334();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v76[0] = v74;
        *v39 = 136315394;
        v40 = v78;
        v41 = __swift_project_boxed_opaque_existential_1(v77, v78);
        v42 = sub_242A1A354();
        v69 = &v62;
        v43 = *(v42 - 8);
        v44 = *(v43 + 64);
        MEMORY[0x28223BE20](v42);
        v46 = &v62 - v45;
        v47 = *(v40 - 8);
        (*(v47 + 16))(&v62 - v45, v41, v40);
        (*(v47 + 56))(v46, 0, 1, v40);
        v48 = sub_242A19BAC(v46, v40);
        v50 = v49;
        (*(v43 + 8))(v46, v42);
        __swift_destroy_boxed_opaque_existential_0(v77);
        v51 = sub_242A19520(v48, v50, v76);

        *(v39 + 4) = v51;
        *(v39 + 12) = 2080;
        v75 = v63;
        MetatypeMetadata = swift_getMetatypeMetadata();
        v53 = sub_242A19BAC(&v75, MetatypeMetadata);
        v55 = sub_242A19520(v53, v54, v76);

        *(v39 + 14) = v55;
        _os_log_impl(&dword_242A12000, v37, v38, "Failed to cast value: %s to type: %s", v39, 0x16u);
        v56 = v74;
        swift_arrayDestroy();
        MEMORY[0x245D1FD20](v56, -1, -1);
        MEMORY[0x245D1FD20](v39, -1, -1);

        v57 = v79;
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0(v79);
        v57 = v77;
      }

      __swift_destroy_boxed_opaque_existential_0(v57);
      v61 = v67;
      v70(v68, 1, 1, a2);
      v59 = v61;
      v60 = v64;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0(v79);
      v58 = v68;
      (*(v24 + 32))(v68, v27, a2);
      v70(v58, 0, 1, a2);
      v59 = v20;
      v60 = v9;
    }

    return (v72)(v59, v60);
  }

  else
  {
    v34 = *(*(a2 - 8) + 56);

    return v34(a4, 1, 1, a2);
  }
}

uint64_t NSUserDefaults.get<A>(codable:forKey:defaultValue:)@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v6 = sub_242A1A354();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  NSUserDefaults.get<A>(_:forKey:)(a2, &v14 - v9);
  v11 = *(a2 - 8);
  v12 = *(v11 + 48);
  if (v12(v10, 1, a2) != 1)
  {
    return (*(v11 + 32))(a3, v10, a2);
  }

  (*(v11 + 16))(a3, a1, a2);
  result = (v12)(v10, 1, a2);
  if (result != 1)
  {
    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

uint64_t sub_242A18DCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v35[3] = a2;
  v35[4] = a5;
  v35[2] = a3;
  v46 = a1;
  v39 = sub_242A1A354();
  v8 = *(v39 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v39);
  v37 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v41 = v35 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = v35 - v14;
  v16 = *(a4 - 8);
  v17 = *(v16 + 56);
  v35[1] = v16 + 56;
  v17(a6, 1, 1, a4);
  v40 = v8[1];
  v18 = v39;
  v40(a6, v39);
  sub_242A19B28(v46, v45);
  v19 = swift_dynamicCast();
  v36 = v17;
  v17(v15, v19 ^ 1u, 1, a4);
  v20 = (v8 + 4);
  v21 = v8[4];
  v21(a6, v15, v18);
  v22 = v8[2];
  v23 = v41;
  v38 = a6;
  v22(v41, a6, v18);
  v24 = v23;
  v25 = (*(v16 + 48))(v23, 1, a4);
  v26 = v18;
  v27 = v40;
  LODWORD(v23) = v25;
  result = (v40)(v24, v26);
  if (v23 == 1)
  {
    sub_242A19B28(v46, v45);
    result = swift_dynamicCast();
    if (result)
    {
      v46 = v20;
      v29 = v43;
      v30 = v44;
      v31 = v37;
      v32 = v42;
      sub_242A1A0B4();
      if (v32)
      {

        sub_242A143CC(v29, v30);
        v33 = v38;
        v27(v38, v26);
        v34 = 1;
      }

      else
      {
        v42 = v29;
        v33 = v38;
        v27(v38, v26);
        sub_242A143CC(v42, v30);
        v34 = 0;
      }

      v36(v31, v34, 1, a4);
      return (v21)(v33, v31, v26);
    }
  }

  return result;
}

uint64_t sub_242A19178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_242A1A354();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16[-v9];
  sub_242A19B28(a1, v16);
  v11 = swift_dynamicCast();
  v12 = *(*(a2 - 8) + 56);
  if (v11)
  {
    v13 = *(a2 - 8);
    v12(v10, 0, 1, a2);
    (*(v13 + 32))(a3, v10, a2);
    v14 = 0;
  }

  else
  {
    v14 = 1;
    v12(v10, 1, 1, a2);
    (*(v7 + 8))(v10, v6);
  }

  return v12(a3, v14, 1, a2);
}

uint64_t sub_242A19450(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_242A194C4(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_242A19520(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_242A19520(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_242A195EC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_242A19B28(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_242A195EC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_242A196F8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_242A1A394();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_242A196F8(uint64_t a1, unint64_t a2)
{
  v4 = sub_242A19744(a1, a2);
  sub_242A19874(&unk_285538D98);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_242A19744(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_242A19960(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_242A1A394();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_242A1A2C4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_242A19960(v10, 0);
        result = sub_242A1A374();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_242A19874(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_242A199D4(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_242A19960(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD89A8, &qword_242A1A9F8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_242A199D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD89A8, &qword_242A1A9F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_242A19AC8(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_242A19AD8(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_242A19AF8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_242A19B28(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_242A19BAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_242A1A354();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = (MEMORY[0x28223BE20])();
  v9 = &v19 - v8;
  v10 = *(a2 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v7);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v19 - v15;
  (*(v5 + 16))(v9, a1, v4);
  if ((*(v10 + 48))(v9, 1, a2) == 1)
  {
    (*(v5 + 8))(v9, v4);
    return 7104878;
  }

  else
  {
    (*(v10 + 32))(v16, v9, a2);
    (*(v10 + 16))(v14, v16, a2);
    v18 = sub_242A1A284();
    (*(v10 + 8))(v16, a2);
    return v18;
  }
}

uint64_t sub_242A19E60()
{
  v0 = sub_242A1A1F4();
  __swift_allocate_value_buffer(v0, qword_27ECD89C8);
  __swift_project_value_buffer(v0, qword_27ECD89C8);
  return sub_242A1A1E4();
}

uint64_t sub_242A19F04@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_242A1A1F4();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_242A19FC8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_242A1A1F4();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_242A1A1E4();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}
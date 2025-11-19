unint64_t sub_1D9824408()
{
  result = qword_1ECB41970;
  if (!qword_1ECB41970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41970);
  }

  return result;
}

unint64_t sub_1D98244A0()
{
  result = qword_1ECB41978;
  if (!qword_1ECB41978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41978);
  }

  return result;
}

unint64_t sub_1D98244F8()
{
  result = qword_1ECB41980;
  if (!qword_1ECB41980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41980);
  }

  return result;
}

unint64_t sub_1D9824550()
{
  result = qword_1ECB41988;
  if (!qword_1ECB41988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41988);
  }

  return result;
}

unint64_t sub_1D98245A4()
{
  result = qword_1ECB41998;
  if (!qword_1ECB41998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41998);
  }

  return result;
}

uint64_t sub_1D98245F8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB419A0, &qword_1D984E058);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D9824664()
{
  result = qword_1ECB419C0;
  if (!qword_1ECB419C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB419C0);
  }

  return result;
}

uint64_t sub_1D98246B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB417D0, &qword_1D984D098);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D9824728()
{
  result = qword_1ECB419D8;
  if (!qword_1ECB419D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB419D0, &unk_1D984E070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB419D8);
  }

  return result;
}

unint64_t sub_1D98247A4()
{
  result = qword_1ECB419E8;
  if (!qword_1ECB419E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECB419E8);
  }

  return result;
}

uint64_t objectdestroy_24Tm()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[9];

  v6 = v0[11];

  v7 = v0[13];

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

unint64_t sub_1D982486C()
{
  result = qword_1ECB419F0;
  if (!qword_1ECB419F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB419F0);
  }

  return result;
}

unint64_t sub_1D98248C4()
{
  result = qword_1ECB419F8;
  if (!qword_1ECB419F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB419F8);
  }

  return result;
}

unint64_t sub_1D982491C()
{
  result = qword_1ECB41A00;
  if (!qword_1ECB41A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41A00);
  }

  return result;
}

id PatternInfo.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PatternInfo.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PatternInfo();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PatternInfo.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PatternInfo();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id WatchdogExitReasonHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WatchdogExitReasonHelper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WatchdogExitReasonHelper();
  return objc_msgSendSuper2(&v2, sel_init);
}

id WatchdogExitReasonHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WatchdogExitReasonHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t _s15CoreDiagnostics24WatchdogExitReasonHelperC19descriptionFromCodeySSSgs5Int32VFZ_0(int a1)
{
  result = 0;
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      return 0xD00000000000003ALL;
    }

    else if (a1 == 4)
    {
      return 0xD00000000000004DLL;
    }
  }

  else if (a1 == 1)
  {
    return 0xD000000000000020;
  }

  else if (a1 == 2)
  {
    return 0xD00000000000002ELL;
  }

  return result;
}

uint64_t sub_1D9824C1C()
{
  v0 = sub_1D9849C54();
  __swift_allocate_value_buffer(v0, qword_1ECB41A08);
  __swift_project_value_buffer(v0, qword_1ECB41A08);
  return sub_1D9849C34();
}

uint64_t sub_1D9824CB0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D9849C54();
  v41 = *(v11 - 8);
  v12 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = qword_1ECB41A20;
  *(v4 + qword_1ECB41A20) = 0;
  v16 = MEMORY[0x1DA7376F0](a3, a4);
  if (!v16)
  {
    if (qword_1ECB415B8 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v11, qword_1ECB41A08);
    v23 = sub_1D9849C24();
    v24 = sub_1D984A124();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1D97FA000, v23, v24, "Failed to convert to body to json", v25, 2u);
      MEMORY[0x1DA738F10](v25, -1, -1);
    }

    sub_1D981FA9C(a3, a4);
    sub_1D981FA9C(a1, a2);

    v26 = *(v5 + v15);

    type metadata accessor for CrashReport(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  *(v4 + qword_1ECB41A28) = v16;
  sub_1D9826CDC(a1, a2);
  sub_1D9826CDC(a3, a4);
  v17 = sub_1D9849AE4();
  if (v17)
  {
    type metadata accessor for CrashReport.CrashRedacter();
    v18 = swift_allocObject();

    *(v18 + 24) = sub_1D98251D4() & 1;
    *(v18 + 32) = 0;
    *(v18 + 40) = 0;
    *(v18 + 48) = sub_1D982594C;
    *(v18 + 56) = 0;
    *(v18 + 16) = v17;
    v19 = *(v17 + qword_1ECB41A20);
    *(v17 + qword_1ECB41A20) = v18;
    swift_unownedRetain();

    v20 = sub_1D9849AF4();
    v22 = v21;

    if (v20 == 3747891 && v22 == 0xE300000000000000)
    {

      goto LABEL_12;
    }

    v27 = sub_1D984A5F4();

    if (v27)
    {
      goto LABEL_12;
    }

    sub_1D9849C44();

    v28 = sub_1D9849C24();
    v29 = sub_1D984A124();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v38 = v30;
      v40 = swift_slowAlloc();
      v42 = v40;
      *v30 = 136315138;
      v39 = v29;
      v31 = sub_1D9849AF4();
      v33 = sub_1D9819F0C(v31, v32, &v42);

      v34 = v38;
      *(v38 + 1) = v33;
      _os_log_impl(&dword_1D97FA000, v28, v39, "Invalid bug_type for crash report: %s", v34, 0xCu);
      v35 = v40;
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x1DA738F10](v35, -1, -1);
      MEMORY[0x1DA738F10](v34, -1, -1);

      sub_1D981FA9C(a3, a4);
      sub_1D981FA9C(a1, a2);
    }

    else
    {
      sub_1D981FA9C(a3, a4);
      sub_1D981FA9C(a1, a2);
    }

    (*(v41 + 8))(v14, v11);

    return 0;
  }

LABEL_12:
  sub_1D981FA9C(a3, a4);
  sub_1D981FA9C(a1, a2);
  return v17;
}

uint64_t sub_1D9825138()
{
  if (*(v0 + qword_1ECB41A20))
  {

    sub_1D98262DC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D9825188()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41A68, &qword_1D984E348);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x1E69E7CC0];
  qword_1ECB47630 = result;
  return result;
}

uint64_t sub_1D98251D4()
{
  if (MEMORY[0x1E697AA00])
  {
    v0 = MEMORY[0x1E697AA10] == 0;
  }

  else
  {
    v0 = 1;
  }

  if (v0 || MEMORY[0x1E697AA18] == 0 || MEMORY[0x1E697A9F0] == 0 || MEMORY[0x1E697A9F8] == 0 || MEMORY[0x1E697AA08] == 0)
  {
    v6 = 1;
  }

  else
  {
    sub_1D9849B44();
    v5 = sub_1D9849B24();
    v6 = sub_1D9849B34();

    if (qword_1ECB415B8 != -1)
    {
      swift_once();
    }

    v7 = sub_1D9849C54();
    __swift_project_value_buffer(v7, qword_1ECB41A08);
    v8 = sub_1D9849C24();
    v9 = sub_1D984A104();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v11;
      *v10 = 136446210;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41A70, &qword_1D984E350);
      v12 = sub_1D9849E44();
      v14 = sub_1D9819F0C(v12, v13, &v19);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_1D97FA000, v8, v9, "crashRedactionEnabled: found value of %{public}s from Secure Config", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x1DA738F10](v11, -1, -1);
      MEMORY[0x1DA738F10](v10, -1, -1);
    }

    if (v6 == 2)
    {
      v15 = sub_1D9849C24();
      v16 = sub_1D984A104();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_1D97FA000, v15, v16, "Got no value from SecureConfig for crashRedactionEnabled, returning false", v17, 2u);
        MEMORY[0x1DA738F10](v17, -1, -1);
      }

      v6 = 0;
    }
  }

  return v6 & 1;
}

uint64_t (*sub_1D9825568())@<X0>(uint64_t a1@<X8>)
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  if (v1)
  {
    v3 = *(v0 + 32);
    v4 = *(v0 + 40);
  }

  else
  {
    v3 = sub_1D9827378;
    *(v0 + 32) = sub_1D9827378;
    *(v0 + 40) = v0;
    swift_retain_n();
    sub_1D9827380(0);
  }

  sub_1D9827390(v1);
  return v3;
}

uint64_t sub_1D98255E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  swift_unownedRetainStrong();
  v4 = sub_1D9849AA4();

  if (!*(v4 + 16) || (v5 = sub_1D98447E4(0x6D617473656D6974, 0xE900000000000070), (v6 & 1) == 0))
  {

    goto LABEL_7;
  }

  sub_1D981B108(*(v4 + 56) + 32 * v5, v25);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v17 = 1;
    goto LABEL_8;
  }

  v7 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v8 = sub_1D9849DC4();
  [v7 setDateFormat_];

  v9 = sub_1D9849A84();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v25[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D9849A64();
  v14 = sub_1D9849A74();
  (*(v10 + 8))(v13, v9);
  [v7 setLocale_];

  v15 = sub_1D9849DC4();

  v16 = [v7 dateFromString_];

  if (!v16)
  {
    if (qword_1ECB415B8 != -1)
    {
      swift_once();
    }

    v20 = sub_1D9849C54();
    __swift_project_value_buffer(v20, qword_1ECB41A08);
    v21 = sub_1D9849C24();
    v22 = sub_1D984A134();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1D97FA000, v21, v22, "Report timestamp could not be parsed; defaulting to full redaction", v23, 2u);
      MEMORY[0x1DA738F10](v23, -1, -1);
    }

    goto LABEL_7;
  }

  sub_1D9849A34();

  v17 = 0;
LABEL_8:
  v18 = sub_1D9849A54();
  return (*(*(v18 - 8) + 56))(a2, v17, 1, v18);
}

unint64_t sub_1D982594C(uint64_t a1, uint64_t a2)
{
  result = a2 - a1;
  if (result)
  {
    return sub_1D9827054(result) + a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D9825980()
{
  if (v0[3])
  {
    v1 = *v0;
    v2 = sub_1D9849A54();
    v3 = *(v2 - 8);
    v4 = *(v3 + 64);
    MEMORY[0x1EEE9AC00](v2);
    v6 = &v28[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v7 = sub_1D9825568();
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41A50, &unk_1D984FCF0);
    v9 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    v10 = MEMORY[0x1EEE9AC00](v8 - 8);
    v12 = &v28[-v11];
    (v7)(v10);

    if ((*(v3 + 48))(v12, 1, v2) == 1)
    {
      sub_1D981A4E8(v12, &qword_1ECB41A50, &unk_1D984FCF0);
      return 2;
    }

    (*(v3 + 32))(v6, v12, v2);
    v19 = v0[6];
    v18 = v0[7];

    v20 = v19(0, 5);

    if (qword_1ECB415B8 != -1)
    {
      swift_once();
    }

    v21 = sub_1D9849C54();
    __swift_project_value_buffer(v21, qword_1ECB41A08);
    v22 = sub_1D9849C24();
    v23 = sub_1D984A134();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      *(v24 + 4) = v20;
      _os_log_impl(&dword_1D97FA000, v22, v23, "Generated random number %ld for redaction", v24, 0xCu);
      MEMORY[0x1DA738F10](v24, -1, -1);
    }

    if (v20 >= 1)
    {
      (*(v3 + 8))(v6, v2);
      return 2;
    }

    if (qword_1ECB415C0 != -1)
    {
      v25 = swift_once();
    }

    v26 = qword_1ECB47630;
    MEMORY[0x1EEE9AC00](v25);
    *&v28[-32] = v6;
    *&v28[-24] = 0x40AC200000000000;
    *&v28[-16] = v1;
    os_unfair_lock_lock((v26 + 24));
    sub_1D9826DB4((v26 + 16), &v29);
    os_unfair_lock_unlock((v26 + 24));
    if (v29)
    {
      v27 = 2;
    }

    else
    {
      v27 = 1;
    }

    (*(v3 + 8))(v6, v2);
    return v27;
  }

  else
  {
    if (qword_1ECB415B8 != -1)
    {
      swift_once();
    }

    v13 = sub_1D9849C54();
    __swift_project_value_buffer(v13, qword_1ECB41A08);
    v14 = sub_1D9849C24();
    v15 = sub_1D984A134();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1D97FA000, v14, v15, "Crash redaction is disabled", v16, 2u);
      MEMORY[0x1DA738F10](v16, -1, -1);
    }

    return 0;
  }
}

unint64_t sub_1D9825DDC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>, double a4@<D0>)
{
  v6 = a1;
  v8 = *a1;
  v9 = *(*a1 + 16);
  if (v9 < 4)
  {
    goto LABEL_9;
  }

  if (qword_1ECB415B8 != -1)
  {
    swift_once();
  }

  v10 = sub_1D9849C54();
  __swift_project_value_buffer(v10, qword_1ECB41A08);
  v11 = sub_1D9849C24();
  v12 = sub_1D984A124();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = a2;
    v14 = swift_slowAlloc();
    *v14 = 134218240;
    *(v14 + 4) = 3;
    *(v14 + 12) = 2048;
    *(v14 + 14) = v9;
    _os_log_impl(&dword_1D97FA000, v11, v12, "Error: expecting max of %ld reports per hour, but found %ld", v14, 0x16u);
    v15 = v14;
    a2 = v13;
    MEMORY[0x1DA738F10](v15, -1, -1);
  }

  v17 = *(v8 + 16);
  if (v17 < 3)
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = *(sub_1D9849A54() - 8);
  if (v17 != 3)
  {
    goto LABEL_18;
  }

  while (1)
  {
    *v6 = v8;
    v9 = *(v8 + 16);
LABEL_9:
    if (v9 != 3)
    {
      break;
    }

    v34 = a2;
    v32 = v6;
    v18 = sub_1D9849A54();
    v6 = &v32;
    v19 = *(v18 - 8);
    a2 = *(v19 + 64);
    MEMORY[0x1EEE9AC00](v18);
    if (*(v8 + 16) >= 3uLL)
    {
      v33 = a3;
      (*(v19 + 16))(&v32 - ((a2 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + 2 * *(v19 + 72), v18);
      sub_1D9849A14();
      v21 = v20;
      v22 = *(v19 + 8);
      result = v22(&v32 - ((a2 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
      if (v21 < a4)
      {
        v24 = 1;
        a3 = v33;
        goto LABEL_15;
      }

      MEMORY[0x1EEE9AC00](result);
      sub_1D98261D4(2uLL, &v32 - ((a2 + 15) & 0xFFFFFFFFFFFFFFF0));
      v22(&v32 - ((a2 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
      a3 = v33;
      a2 = v34;
      break;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    sub_1D9826EB4(v8, v8 + ((*(v16 + 80) + 32) & ~*(v16 + 80)), 0, 7uLL);
    v31 = v30;

    v8 = v31;
  }

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41A58, &qword_1D984E338);
  v26 = (*(*(v25 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = &v32 - v27;
  v29 = sub_1D9849A54();
  (*(*(v29 - 8) + 16))(v28, a2, v29);
  result = sub_1D98270E0(0, 0, v28);
  v24 = 0;
LABEL_15:
  *a3 = v24;
  return result;
}

uint64_t sub_1D98261D4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D9827364(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = sub_1D9849A54();
    v10 = *(v9 - 8);
    v11 = *(v10 + 72);
    v12 = v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + v11 * a1;
    result = (*(v10 + 32))(a2, v12, v9);
    if (v11 > 0 || v12 >= v12 + v11 + v11 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v11)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1D98262DC()
{
  v1 = sub_1D9825980();
  v2 = *(v0 + 16);
  swift_unownedRetainStrong();
  v3 = *(v2 + qword_1ECB41A28);

  v22 = v3;
  v4 = MEMORY[0x1E69E6158];
  if (v1 == 2)
  {
    if (sub_1D98274EC(&v22) & 1) != 0 && (sub_1D9828120(&v22) & 1) != 0 && (sub_1D9828A14(&v22) & 1) != 0 && (sub_1D9828AE4(&v22) & 1) != 0 && (sub_1D9828F94(&v22) & 1) != 0 && (sub_1D98295A8(&v22))
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v1 == 1)
  {
    if (sub_1D98274EC(&v22) & 1) != 0 && (sub_1D9828120(&v22) & 1) != 0 && (sub_1D9828824(&v22))
    {
      goto LABEL_15;
    }

LABEL_13:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41A78, &qword_1D984E358);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D984E260;
    *(inited + 32) = 0x7065526873617263;
    v6 = inited + 32;
    *(inited + 72) = v4;
    *(inited + 40) = 0xEB0000000074726FLL;
    *(inited + 48) = 0xD00000000000001DLL;
    *(inited + 56) = 0x80000001D9854250;
    v7 = sub_1D98337FC(inited);
    swift_setDeallocating();
    sub_1D981A4E8(v6, &qword_1ECB41A80, &qword_1D984E780);

    v22 = v7;
    if (v1 != 2)
    {
LABEL_15:
      v8 = 0xE700000000000000;
      v9 = 0x6C616974726150;
      goto LABEL_17;
    }

LABEL_14:
    v8 = 0xE400000000000000;
    v9 = 1819047238;
    goto LABEL_17;
  }

  v8 = 0xE400000000000000;
  v9 = 1701736270;
LABEL_17:
  v21 = v4;
  *&v20 = v9;
  *(&v20 + 1) = v8;
  sub_1D982799C(&v20, v19);
  v10 = v22;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1D98472B8(v19, 0x6F69746361646572, 0xEE006C6576654C6ELL, isUniquelyReferenced_nonNull_native);
  v12 = v10;
  swift_unownedRetainStrong();
  v13 = *(v2 + qword_1ECB41A28);
  *(v2 + qword_1ECB41A28) = v12;

  type metadata accessor for CrashReport(0);
  v14 = MEMORY[0x1DA737710](v12);
  if (v15 >> 60 != 15)
  {
    v16 = v14;
    v17 = v15;
    swift_unownedRetainStrong();
    sub_1D9826CDC(v16, v17);
    sub_1D9849AD4();

    sub_1D98279AC(v16, v17);
  }
}

uint64_t sub_1D98265AC()
{
  v1 = v0[2];
  swift_unownedRelease();
  v2 = v0[5];
  sub_1D9827380(v0[4]);
  v3 = v0[7];

  return MEMORY[0x1EEE6BDC0](v0, 64, 7);
}

uint64_t sub_1D98265F4()
{
  v1 = *(v0 + qword_1ECB41A20);

  v2 = *(v0 + qword_1ECB41A28);
}

uint64_t CrashReport.deinit()
{
  v0 = _s15CoreDiagnostics12JetsamReportCfd_0();
  v1 = *(v0 + qword_1ECB41A20);

  v2 = *(v0 + qword_1ECB41A28);

  return v0;
}

uint64_t CrashReport.__deallocating_deinit()
{
  v0 = _s15CoreDiagnostics12JetsamReportCfd_0();
  v1 = *(v0 + qword_1ECB41A20);

  v2 = *(v0 + qword_1ECB41A28);

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1D98266F0()
{
  if (*(*v0 + qword_1ECB41A20))
  {

    sub_1D98262DC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D982675C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  swift_allocObject();
  return a5(a1, a2, a3, a4);
}

uint64_t sub_1D98267C8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_1D9849C54();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9826CDC(a1, a2);
  sub_1D9826CDC(a3, a4);
  v13 = sub_1D9849AE4();
  if (!v13)
  {
    goto LABEL_6;
  }

  v31 = v9;

  v14 = sub_1D9849AF4();
  v16 = v15;

  if (v14 == 3684658 && v16 == 0xE300000000000000)
  {

LABEL_6:
    sub_1D981FA9C(a3, a4);
    sub_1D981FA9C(a1, a2);
    return v13;
  }

  v17 = sub_1D984A5F4();

  if (v17)
  {
    goto LABEL_6;
  }

  sub_1D9849C44();

  v19 = sub_1D9849C24();
  v20 = sub_1D984A124();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v28 = v21;
    v30 = swift_slowAlloc();
    v32 = v30;
    *v21 = 136315138;
    v29 = v20;
    v22 = sub_1D9849AF4();
    v24 = sub_1D9819F0C(v22, v23, &v32);

    v25 = v28;
    *(v28 + 1) = v24;
    _os_log_impl(&dword_1D97FA000, v19, v29, "Invalid bug_type for Jetsam report: %s", v25, 0xCu);
    v26 = v30;
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    MEMORY[0x1DA738F10](v26, -1, -1);
    MEMORY[0x1DA738F10](v25, -1, -1);

    sub_1D981FA9C(a3, a4);
    sub_1D981FA9C(a1, a2);
  }

  else
  {
    sub_1D981FA9C(a3, a4);
    sub_1D981FA9C(a1, a2);
  }

  (*(v31 + 8))(v12, v8);

  return 0;
}

uint64_t JetsamReport.__deallocating_deinit()
{
  v0 = _s15CoreDiagnostics12JetsamReportCfd_0();

  return MEMORY[0x1EEE6BDC0](v0, 16, 7);
}

uint64_t sub_1D9826C04(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9826CDC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void *sub_1D9826D30(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41A90, &qword_1D984E368);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

void sub_1D9826DD8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41A90, &qword_1D984E368);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 1;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 5);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1D9826EB4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41A60, &qword_1D984E340);
      v7 = *(sub_1D9849A54() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        v13 = *(sub_1D9849A54() - 8);
        v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
        v15 = *(v13 + 72);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

unint64_t sub_1D9827054(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x1DA738F30](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x1DA738F30](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1D98270E0(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v13 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = v6;
    }

    v5 = sub_1D9832928(isUniquelyReferenced_nonNull_native, v15, 1, v5);
    *v3 = v5;
  }

  result = sub_1D98271B4(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

unint64_t sub_1D98271B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = sub_1D9849A54();
  v11 = *(result - 8);
  v12 = *(v11 + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v14 = result;
  v25 = a4;
  v15 = v9 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v16 = v15 + v12 * a1;
  result = swift_arrayDestroy();
  v17 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v18 = v12 * a3;
  if (v17)
  {
    v19 = *(v9 + 16);
    if (!__OFSUB__(v19, a2))
    {
      result = v16 + v18;
      v20 = v15 + v12 * a2;
      if (v16 + v18 < v20 || result >= v20 + (v19 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v20)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v22 = *(v9 + 16);
      v23 = __OFADD__(v22, v17);
      v24 = v22 + v17;
      if (!v23)
      {
        *(v9 + 16) = v24;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_1D981A4E8(v25, &qword_1ECB41A58, &qword_1D984E338);
  }

  if (v18 < 1)
  {
    return sub_1D981A4E8(v25, &qword_1ECB41A58, &qword_1D984E338);
  }

  result = (*(v11 + 16))(v16, v25, v14);
  if (v12 >= v18)
  {
    return sub_1D981A4E8(v25, &qword_1ECB41A58, &qword_1D984E338);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1D9827380(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D9827390(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D98273A0@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v6 = v4;
  v11 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v4;
  v14 = sub_1D98447E4(a2, a3);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v15;
  if (v13[3] < v19)
  {
    sub_1D9846B90(v19, isUniquelyReferenced_nonNull_native);
    v14 = sub_1D98447E4(a2, a3);
    if ((v5 & 1) == (v20 & 1))
    {
      goto LABEL_6;
    }

    v14 = sub_1D984A634();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v23 = v14;
    sub_1D98475FC();
    v14 = v23;
    if (v5)
    {
      goto LABEL_7;
    }

LABEL_10:
    sub_1D9847590(v14, a2, a3, a1, v13);
    *a4 = 0u;
    a4[1] = 0u;

    goto LABEL_11;
  }

LABEL_6:
  if ((v5 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v21 = 32 * v14;
  sub_1D982799C((v13[7] + 32 * v14), a4);
  result = sub_1D982799C(a1, (v13[7] + v21));
LABEL_11:
  *v6 = v13;
  return result;
}

uint64_t sub_1D98274EC(uint64_t *a1)
{
  v1 = *a1;
  if (!*(*a1 + 16) || (v2 = sub_1D98447E4(0x73646165726874, 0xE700000000000000), (v3 & 1) == 0) || (sub_1D981B108(*(v1 + 56) + 32 * v2, &v52), v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41AA0, &qword_1D984E378), (swift_dynamicCast() & 1) == 0))
  {
    if (qword_1ECB415B8 != -1)
    {
LABEL_42:
      swift_once();
    }

    v44 = sub_1D9849C54();
    __swift_project_value_buffer(v44, qword_1ECB41A08);
    v45 = sub_1D9849C24();
    v46 = sub_1D984A124();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_1D97FA000, v45, v46, "Crash report missing thread data", v47, 2u);
      MEMORY[0x1DA738F10](v47, -1, -1);
    }

    return 0;
  }

  v49 = v4;
  v5 = *&v51[0];
  v6 = *(*&v51[0] + 16);
  if (!v6)
  {
LABEL_39:
    *(&v53 + 1) = v49;
    *&v52 = v5;
    sub_1D9845214(&v52, 0x73646165726874, 0xE700000000000000);
    return 1;
  }

  v7 = 0xEB00000000657461;
  v8 = 0x7453646165726874;
  v9 = 4;
  while (1)
  {
    if ((v9 - 4) >= v5[2])
    {
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v11 = v5[v9];
    if (!*(v11 + 16))
    {
      goto LABEL_7;
    }

    v12 = v5[v9];

    v13 = sub_1D98447E4(v8, v7);
    if (v14)
    {
      break;
    }

LABEL_7:
    v52 = 0u;
    v53 = 0u;
    v10 = &v52;
LABEL_8:
    sub_1D981A4E8(v10, &qword_1ECB41A98, &qword_1D984E370);
LABEL_9:
    ++v9;
    if (!--v6)
    {
      goto LABEL_39;
    }
  }

  sub_1D981B108(*(v11 + 56) + 32 * v13, &v52);

  sub_1D981A4E8(&v52, &qword_1ECB41A98, &qword_1D984E370);
  v52 = 0u;
  v53 = 0u;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1D9827350(v5);
  }

  if ((v9 - 4) >= v5[2])
  {
    goto LABEL_41;
  }

  if (!*(&v53 + 1))
  {
    sub_1D981A4E8(&v52, &qword_1ECB41A98, &qword_1D984E370);
    v30 = v5[v9];
    v31 = sub_1D98447E4(v8, v7);
    if (v32)
    {
      v33 = v31;
      v34 = v5[v9];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v50 = v5[v9];
      v5[v9] = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1D98475FC();
      }

      v36 = *(*(v50 + 48) + 16 * v33 + 8);

      sub_1D982799C((*(v50 + 56) + 32 * v33), v51);
      sub_1D9847108(v33, v50);
      v37 = v5[v9];
      v5[v9] = v50;
    }

    else
    {
      memset(v51, 0, sizeof(v51));
    }

    v10 = v51;
    goto LABEL_8;
  }

  sub_1D982799C(&v52, v51);
  v15 = v5[v9];
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v17 = v5[v9];
  v5[v9] = 0x8000000000000000;
  v18 = v8;
  v19 = v8;
  v20 = v7;
  v22 = sub_1D98447E4(v19, v7);
  v23 = v17[2];
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (!__OFADD__(v23, v24))
  {
    v26 = v21;
    if (v17[3] >= v25)
    {
      if (v16)
      {
        v29 = v17;
        if ((v21 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      else
      {
        sub_1D98475FC();
        v29 = v17;
        if ((v26 & 1) == 0)
        {
          goto LABEL_32;
        }
      }
    }

    else
    {
      sub_1D9846B90(v25, v16);
      v27 = sub_1D98447E4(v18, v20);
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_45;
      }

      v22 = v27;
      v29 = v17;
      if ((v26 & 1) == 0)
      {
LABEL_32:
        v29[(v22 >> 6) + 8] |= 1 << v22;
        v39 = (v29[6] + 16 * v22);
        *v39 = v18;
        v39[1] = v20;
        v7 = v20;
        sub_1D982799C(v51, (v29[7] + 32 * v22));
        v40 = v29[2];
        v41 = __OFADD__(v40, 1);
        v42 = v40 + 1;
        if (v41)
        {
          goto LABEL_44;
        }

        v29[2] = v42;
        goto LABEL_34;
      }
    }

    v38 = (v29[7] + 32 * v22);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    sub_1D982799C(v51, v38);
    v7 = v20;
LABEL_34:
    v43 = v5[v9];
    v5[v9] = v29;

    v8 = v18;
    goto LABEL_9;
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  result = sub_1D984A634();
  __break(1u);
  return result;
}

_OWORD *sub_1D982799C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1D98279AC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D981FA9C(a1, a2);
  }

  return a1;
}

uint64_t sub_1D98279C0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  if (!v3)
  {
    return 1;
  }

  v4 = v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_61;
  }

LABEL_3:
  v5 = 0;
  v6 = 0;
  v58 = a2 + 32;
  v7 = v4 + 4;
  v8 = v3 + 3;
  v9 = MEMORY[0x1E69E6530];
  v60 = v4;
  while (1)
  {
    if (!v5)
    {
      v6 = v2[2];
    }

    v10 = __OFSUB__(v6--, 1);
    if (v10)
    {
      goto LABEL_52;
    }

    if (v8 - 4 >= v3)
    {
      goto LABEL_53;
    }

    if (v8 - 4 >= v2[2])
    {
      goto LABEL_54;
    }

    v11 = v2[v8];
    if (!*(v11 + 16))
    {
      goto LABEL_39;
    }

    v12 = v2[v8];

    v13 = sub_1D98447E4(0x646E496567616D69, 0xEA00000000007865);
    if ((v14 & 1) == 0)
    {
      break;
    }

    sub_1D981B108(*(v11 + 56) + 32 * v13, &v65);

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_39;
    }

    if ((v63 & 0x8000000000000000) != 0 || v63 >= *(a2 + 16))
    {
      v68[0] = 0x66664F6567616D69;
      v68[1] = 0xEB00000000746573;
      v68[2] = 0;
      v68[5] = v9;
      v69[0] = 0x6C6F626D7973;
      v69[1] = 0xE600000000000000;
      v69[5] = MEMORY[0x1E69E6158];
      v69[2] = 0x657463616465723CLL;
      v69[3] = 0xEA00000000003E64;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41AA8, &qword_1D984FFF0);
      v19 = sub_1D984A3F4();

      sub_1D9829674(v68, &v65);
      v20 = v65;
      v21 = v66;
      v22 = sub_1D98447E4(v65, v66);
      if (v23)
      {
        goto LABEL_50;
      }

      *(v19 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v22;
      v24 = (v19[6] + 16 * v22);
      *v24 = v20;
      v24[1] = v21;
      sub_1D982799C(v67, (v19[7] + 32 * v22));
      v25 = v19[2];
      v10 = __OFADD__(v25, 1);
      v26 = v25 + 1;
      if (v10)
      {
        goto LABEL_51;
      }

      v19[2] = v26;
      sub_1D9829674(v69, &v65);
      v27 = v65;
      v28 = v66;
      v29 = sub_1D98447E4(v65, v66);
      if (v30)
      {
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
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
        v4 = sub_1D9827350(v2);
        goto LABEL_3;
      }

      *(v19 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v29;
      v31 = (v19[6] + 16 * v29);
      *v31 = v27;
      v31[1] = v28;
      sub_1D982799C(v67, (v19[7] + 32 * v29));
      v32 = v19[2];
      v10 = __OFADD__(v32, 1);
      v33 = v32 + 1;
      if (v10)
      {
        goto LABEL_51;
      }

      v19[2] = v33;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41A80, &qword_1D984E780);
      swift_arrayDestroy();
      if ((v6 & 0x8000000000000000) != 0)
      {
        goto LABEL_55;
      }

      v4 = v60;
      if (v6 >= v60[2])
      {
        goto LABEL_56;
      }

      goto LABEL_34;
    }

    v15 = *(v58 + 8 * v63);
    if (!*(v15 + 16))
    {
      goto LABEL_44;
    }

    v16 = *(v58 + 8 * v63);

    v17 = sub_1D98447E4(0x656372756F73, 0xE600000000000000);
    if ((v18 & 1) == 0)
    {

LABEL_44:

      *a1 = v4;
      if (qword_1ECB415B8 != -1)
      {
        swift_once();
      }

      v56 = sub_1D9849C54();
      __swift_project_value_buffer(v56, qword_1ECB41A08);
      v52 = sub_1D9849C24();
      v53 = sub_1D984A124();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        v55 = "Crash frame has valid image index, but image missing source name";
        goto LABEL_48;
      }

      goto LABEL_49;
    }

    sub_1D981B108(*(v15 + 56) + 32 * v17, &v65);

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_44;
    }

    if (v63 == 65 && v64 == 0xE100000000000000)
    {

LABEL_28:
      v61[0] = 0x66664F6567616D69;
      v61[1] = 0xEB00000000746573;
      v61[2] = 0;
      v61[5] = v9;
      v62[0] = 0x6C6F626D7973;
      v62[1] = 0xE600000000000000;
      v62[5] = MEMORY[0x1E69E6158];
      v62[2] = 0x657463616465723CLL;
      v62[3] = 0xEA00000000003E64;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41AA8, &qword_1D984FFF0);
      v19 = sub_1D984A3F4();

      sub_1D9829674(v61, &v65);
      v36 = v65;
      v35 = v66;
      v37 = sub_1D98447E4(v65, v66);
      if (v38)
      {
        goto LABEL_57;
      }

      *(v19 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v37;
      v39 = (v19[6] + 16 * v37);
      *v39 = v36;
      v39[1] = v35;
      sub_1D982799C(v67, (v19[7] + 32 * v37));
      v40 = v19[2];
      v10 = __OFADD__(v40, 1);
      v41 = v40 + 1;
      if (v10)
      {
        goto LABEL_58;
      }

      v19[2] = v41;
      sub_1D9829674(v62, &v65);
      v42 = v65;
      v43 = v66;
      v44 = sub_1D98447E4(v65, v66);
      if (v45)
      {
        goto LABEL_57;
      }

      *(v19 + ((v44 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v44;
      v46 = (v19[6] + 16 * v44);
      *v46 = v42;
      v46[1] = v43;
      sub_1D982799C(v67, (v19[7] + 32 * v44));
      v47 = v19[2];
      v10 = __OFADD__(v47, 1);
      v48 = v47 + 1;
      if (v10)
      {
        goto LABEL_58;
      }

      v19[2] = v48;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41A80, &qword_1D984E780);
      swift_arrayDestroy();
      if ((v6 & 0x8000000000000000) != 0)
      {
        goto LABEL_59;
      }

      v4 = v60;
      if (v6 >= v60[2])
      {
        goto LABEL_60;
      }

LABEL_34:
      v49 = v7[v6];
      v7[v6] = v19;

      v9 = MEMORY[0x1E69E6530];
      goto LABEL_35;
    }

    v34 = sub_1D984A5F4();

    if (v34)
    {
      goto LABEL_28;
    }

LABEL_35:
    --v8;
    ++v5;
    if (v8 == 3)
    {

      *a1 = v4;
      return 1;
    }
  }

LABEL_39:

  *a1 = v4;
  if (qword_1ECB415B8 != -1)
  {
    swift_once();
  }

  v51 = sub_1D9849C54();
  __swift_project_value_buffer(v51, qword_1ECB41A08);
  v52 = sub_1D9849C24();
  v53 = sub_1D984A124();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    v55 = "Crash frame missing image index";
LABEL_48:
    _os_log_impl(&dword_1D97FA000, v52, v53, v55, v54, 2u);
    MEMORY[0x1DA738F10](v54, -1, -1);
  }

LABEL_49:

  return 0;
}

uint64_t sub_1D9828120(uint64_t *a1)
{
  v1 = *a1;
  if (!*(*a1 + 16) || (v3 = sub_1D98447E4(0x73646165726874, 0xE700000000000000), (v4 & 1) == 0) || (sub_1D981B108(*(v1 + 56) + 32 * v3, v42), v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41AA0, &qword_1D984E378), (swift_dynamicCast() & 1) == 0))
  {
    if (qword_1ECB415B8 != -1)
    {
      swift_once();
    }

    v11 = sub_1D9849C54();
    __swift_project_value_buffer(v11, qword_1ECB41A08);
    v12 = sub_1D9849C24();
    v13 = sub_1D984A124();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1D97FA000, v12, v13, "Crash report missing thread data", v14, 2u);
      MEMORY[0x1DA738F10](v14, -1, -1);
    }

    return 0;
  }

  v6 = v39;
  v7 = *(v1 + 16);

  if (v7 && (v8 = sub_1D98447E4(0x67616D4964657375, 0xEA00000000007365), (v9 & 1) != 0) && (sub_1D981B108(*(v1 + 56) + 32 * v8, v42), (swift_dynamicCast() & 1) != 0))
  {
    v10 = v39;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v16 = *(v39 + 16);

  if (!v16)
  {
LABEL_26:
    v43 = v5;
    v42[0] = v6;

    sub_1D9845214(v42, 0x73646165726874, 0xE700000000000000);
    v22 = *a1;
    if (!*(*a1 + 16) || (v23 = sub_1D98447E4(0xD000000000000016, 0x80000001D9854270), (v24 & 1) == 0))
    {

      goto LABEL_32;
    }

    sub_1D981B108(*(v22 + 56) + 32 * v23, &v39);
    sub_1D982799C(&v39, v42);
    sub_1D981B108(v42, &v39);
    if (swift_dynamicCast())
    {
      v41 = v38;
      v25 = sub_1D98279C0(&v41, v10);

      if (v25)
      {
        v40 = v5;
        *&v39 = v41;
        sub_1D9845214(&v39, 0xD000000000000016, 0x80000001D9854270);
        __swift_destroy_boxed_opaque_existential_1Tm(v42);
LABEL_32:

        return 1;
      }

      if (qword_1ECB415B8 != -1)
      {
        swift_once();
      }

      v37 = sub_1D9849C54();
      __swift_project_value_buffer(v37, qword_1ECB41A08);
      v33 = sub_1D9849C24();
      v34 = sub_1D984A124();
      if (!os_log_type_enabled(v33, v34))
      {
LABEL_52:

        __swift_destroy_boxed_opaque_existential_1Tm(v42);

        return 0;
      }

      v35 = swift_slowAlloc();
      *v35 = 0;
      v36 = "Failed to redact frames for lastExceptionBacktrace";
    }

    else
    {

      if (qword_1ECB415B8 != -1)
      {
        swift_once();
      }

      v32 = sub_1D9849C54();
      __swift_project_value_buffer(v32, qword_1ECB41A08);
      v33 = sub_1D9849C24();
      v34 = sub_1D984A124();
      if (!os_log_type_enabled(v33, v34))
      {
        goto LABEL_52;
      }

      v35 = swift_slowAlloc();
      *v35 = 0;
      v36 = "Unexpected type for exception backtrace";
    }

    _os_log_impl(&dword_1D97FA000, v33, v34, v36, v35, 2u);
    MEMORY[0x1DA738F10](v35, -1, -1);
    goto LABEL_52;
  }

  v17 = 0;
  while (1)
  {
    if (v17 >= v6[2])
    {
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      swift_once();
LABEL_35:
      v26 = sub_1D9849C54();
      __swift_project_value_buffer(v26, qword_1ECB41A08);
      v27 = sub_1D9849C24();
      v28 = sub_1D984A124();
      if (!os_log_type_enabled(v27, v28))
      {
        goto LABEL_42;
      }

      v29 = swift_slowAlloc();
      *v29 = 0;
      v30 = "Crash report frames have unexpected type";
      goto LABEL_41;
    }

    v18 = v6[v17 + 4];
    if (!*(v18 + 16))
    {
      goto LABEL_34;
    }

    v19 = v6[v17 + 4];

    v20 = sub_1D98447E4(0x73656D617266, 0xE600000000000000);
    if ((v21 & 1) == 0)
    {

LABEL_34:

      if (qword_1ECB415B8 == -1)
      {
        goto LABEL_35;
      }

      goto LABEL_55;
    }

    sub_1D981B108(*(v18 + 56) + 32 * v20, v42);

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_34;
    }

    v41 = v39;
    if ((sub_1D98279C0(&v41, v10) & 1) == 0)
    {
      break;
    }

    v40 = v5;
    *&v39 = v41;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1D9827350(v6);
    }

    if (v17 >= v6[2])
    {
      goto LABEL_54;
    }

    sub_1D98273A0(&v39, 0x73656D617266, 0xE600000000000000, v42);
    sub_1D981A4E8(v42, &qword_1ECB41A98, &qword_1D984E370);
    if (++v17 == v16)
    {
      goto LABEL_26;
    }
  }

  if (qword_1ECB415B8 != -1)
  {
    swift_once();
  }

  v31 = sub_1D9849C54();
  __swift_project_value_buffer(v31, qword_1ECB41A08);
  v27 = sub_1D9849C24();
  v28 = sub_1D984A124();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = "Failed to redact frames for normal thread";
LABEL_41:
    _os_log_impl(&dword_1D97FA000, v27, v28, v30, v29, 2u);
    MEMORY[0x1DA738F10](v29, -1, -1);
  }

LABEL_42:

  return 0;
}

uint64_t sub_1D9828824(uint64_t *a1)
{
  v1 = *a1;
  if (!*(*a1 + 16))
  {
    return 1;
  }

  v2 = sub_1D98447E4(0xD000000000000016, 0x80000001D9854270);
  if ((v3 & 1) == 0)
  {
    return 1;
  }

  sub_1D981B108(*(v1 + 56) + 32 * v2, &v12);
  sub_1D982799C(&v12, v14);
  sub_1D981B108(v14, &v12);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41A88, &qword_1D984E360);
  if (swift_dynamicCast())
  {
    if (*(v11 + 16) < 0x21uLL)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
    }

    else
    {
      sub_1D9826DD8(v11, v11 + 32, 0, 0x41uLL);
      v13 = v4;
      *&v12 = v5;
      sub_1D9845214(&v12, 0xD000000000000016, 0x80000001D9854270);

      __swift_destroy_boxed_opaque_existential_1Tm(v14);
    }

    return 1;
  }

  if (qword_1ECB415B8 != -1)
  {
    swift_once();
  }

  v6 = sub_1D9849C54();
  __swift_project_value_buffer(v6, qword_1ECB41A08);
  v7 = sub_1D9849C24();
  v8 = sub_1D984A124();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1D97FA000, v7, v8, "Unexpected type for exception backtrace", v9, 2u);
    MEMORY[0x1DA738F10](v9, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  return 0;
}

uint64_t sub_1D9828A14(uint64_t *a1)
{
  v1 = *a1;
  if (*(*a1 + 16) && (v2 = sub_1D98447E4(0x6F69747065637865, 0xE90000000000006ELL), (v3 & 1) != 0))
  {
    sub_1D981B108(*(v1 + 56) + 32 * v2, &v5);
    sub_1D981A4E8(&v5, &qword_1ECB41A98, &qword_1D984E370);
    v5 = 0u;
    v6 = 0u;
    sub_1D9845214(&v5, 0x6F69747065637865, 0xE90000000000006ELL);
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
    sub_1D981A4E8(&v5, &qword_1ECB41A98, &qword_1D984E370);
  }

  return 1;
}

uint64_t sub_1D9828AE4(uint64_t *a1)
{
  v1 = *a1;
  if (*(*a1 + 16))
  {
    v2 = sub_1D98447E4(0x73646165726874, 0xE700000000000000);
    if (v3)
    {
      sub_1D981B108(*(v1 + 56) + 32 * v2, &v46);
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41AA0, &qword_1D984E378);
      if (swift_dynamicCast())
      {
        v43 = v4;
        v5 = *&v45[0];
        v6 = *(*&v45[0] + 16);
        if (!v6)
        {
LABEL_41:
          *(&v47 + 1) = v43;
          *&v46 = v5;
          sub_1D9845214(&v46, 0x73646165726874, 0xE700000000000000);
          return 1;
        }

        v7 = 4;
        while (1)
        {
          if ((v7 - 4) >= v5[2])
          {
            __break(1u);
LABEL_43:
            __break(1u);
LABEL_44:
            __break(1u);
LABEL_45:
            __break(1u);
            goto LABEL_46;
          }

          v10 = v5[v7];
          if (*(v10 + 16))
          {
            v11 = v5[v7];

            v12 = sub_1D98447E4(0x6572656767697274, 0xE900000000000064);
            if (v13)
            {
              sub_1D981B108(*(v10 + 56) + 32 * v12, &v46);

              if (swift_dynamicCast() & 1) != 0 && (v45[0])
              {
                goto LABEL_8;
              }
            }

            else
            {
            }
          }

          v46 = 0u;
          v47 = 0u;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_1D9827350(v5);
          }

          if ((v7 - 4) >= v5[2])
          {
            goto LABEL_43;
          }

          if (!*(&v47 + 1))
          {
            sub_1D981A4E8(&v46, &qword_1ECB41A98, &qword_1D984E370);
            v26 = v5[v7];
            v27 = sub_1D98447E4(0x73656D617266, 0xE600000000000000);
            if (v28)
            {
              v29 = v27;
              v30 = v5[v7];
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v44 = v5[v7];
              v5[v7] = 0x8000000000000000;
              if (!isUniquelyReferenced_nonNull_native)
              {
                sub_1D98475FC();
              }

              v32 = *(*(v44 + 48) + 16 * v29 + 8);

              sub_1D982799C((*(v44 + 56) + 32 * v29), v45);
              sub_1D9847108(v29, v44);
              v33 = v5[v7];
              v5[v7] = v44;
            }

            else
            {
              memset(v45, 0, sizeof(v45));
            }

            sub_1D981A4E8(v45, &qword_1ECB41A98, &qword_1D984E370);
            goto LABEL_8;
          }

          sub_1D982799C(&v46, v45);
          v14 = v5[v7];
          v15 = swift_isUniquelyReferenced_nonNull_native();
          v16 = v5[v7];
          v5[v7] = 0x8000000000000000;
          v18 = sub_1D98447E4(0x73656D617266, 0xE600000000000000);
          v19 = v16[2];
          v20 = (v17 & 1) == 0;
          v21 = v19 + v20;
          if (__OFADD__(v19, v20))
          {
            goto LABEL_44;
          }

          v22 = v17;
          if (v16[3] >= v21)
          {
            if (v15)
            {
              v25 = v16;
              if ((v17 & 1) == 0)
              {
                goto LABEL_31;
              }
            }

            else
            {
              sub_1D98475FC();
              v25 = v16;
              if ((v22 & 1) == 0)
              {
                goto LABEL_31;
              }
            }
          }

          else
          {
            sub_1D9846B90(v21, v15);
            v23 = sub_1D98447E4(0x73656D617266, 0xE600000000000000);
            if ((v22 & 1) != (v24 & 1))
            {
              result = sub_1D984A634();
              __break(1u);
              return result;
            }

            v18 = v23;
            v25 = v16;
            if ((v22 & 1) == 0)
            {
LABEL_31:
              v25[(v18 >> 6) + 8] |= 1 << v18;
              v34 = (v25[6] + 16 * v18);
              *v34 = 0x73656D617266;
              v34[1] = 0xE600000000000000;
              sub_1D982799C(v45, (v25[7] + 32 * v18));
              v35 = v25[2];
              v36 = __OFADD__(v35, 1);
              v37 = v35 + 1;
              if (v36)
              {
                goto LABEL_45;
              }

              v25[2] = v37;
              goto LABEL_7;
            }
          }

          v8 = (v25[7] + 32 * v18);
          __swift_destroy_boxed_opaque_existential_1Tm(v8);
          sub_1D982799C(v45, v8);
LABEL_7:
          v9 = v5[v7];
          v5[v7] = v25;

LABEL_8:
          ++v7;
          if (!--v6)
          {
            goto LABEL_41;
          }
        }
      }
    }
  }

  if (qword_1ECB415B8 != -1)
  {
LABEL_46:
    swift_once();
  }

  v38 = sub_1D9849C54();
  __swift_project_value_buffer(v38, qword_1ECB41A08);
  v39 = sub_1D9849C24();
  v40 = sub_1D984A124();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_1D97FA000, v39, v40, "Crash report missing thread data", v41, 2u);
    MEMORY[0x1DA738F10](v41, -1, -1);
  }

  return 0;
}

uint64_t sub_1D9828F94(uint64_t *a1)
{
  v1 = *a1;
  if (!*(*a1 + 16) || (v2 = sub_1D98447E4(0x73646165726874, 0xE700000000000000), (v3 & 1) == 0) || (sub_1D981B108(*(v1 + 56) + 32 * v2, &v55), v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41AA0, &qword_1D984E378), v5 = MEMORY[0x1E69E7CA0], (swift_dynamicCast() & 1) == 0))
  {
    if (qword_1ECB415B8 != -1)
    {
LABEL_47:
      swift_once();
    }

    v9 = sub_1D9849C54();
    __swift_project_value_buffer(v9, qword_1ECB41A08);
    v10 = sub_1D9849C24();
    v11 = sub_1D984A124();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1D97FA000, v10, v11, "Crash report missing thread data", v12, 2u);
      MEMORY[0x1DA738F10](v12, -1, -1);
    }

    return 0;
  }

  v50 = v4;
  v6 = v53;
  v7 = *(v53 + 16);
  if (!v7)
  {
LABEL_41:
    v56 = v50;
    *&v55 = v6;
    sub_1D9845214(&v55, 0x73646165726874, 0xE700000000000000);
    return 1;
  }

  v8 = 4;
  while (1)
  {
    if ((v8 - 4) >= v6[2])
    {
      __break(1u);
      goto LABEL_47;
    }

    v14 = v6[v8];
    if (*(v14 + 16))
    {
      break;
    }

LABEL_12:
    ++v8;
    if (!--v7)
    {
      goto LABEL_41;
    }
  }

  v15 = v6[v8];

  v16 = sub_1D98447E4(0x73656D617266, 0xE600000000000000);
  if ((v17 & 1) == 0)
  {
LABEL_11:

    goto LABEL_12;
  }

  sub_1D981B108(*(v14 + 56) + 32 * v16, &v53);

  sub_1D982799C(&v53, &v55);
  sub_1D981B108(&v55, &v53);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41A88, &qword_1D984E360);
  if (swift_dynamicCast())
  {
    if (*(*&v52[0] + 16) >= 0x21uLL)
    {
      v19 = sub_1D9826D30(32, 0);
      swift_arrayInitWithCopy();
      v54 = v18;
      *&v53 = v19;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1D9827350(v6);
      }

      if ((v8 - 4) >= v6[2])
      {
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      if (!v54)
      {
        sub_1D981A4E8(&v53, &qword_1ECB41A98, &qword_1D984E370);
        v33 = v6[v8];
        v34 = sub_1D98447E4(0x73656D617266, 0xE600000000000000);
        if (v35)
        {
          v36 = v34;
          v37 = v6[v8];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v51 = v6[v8];
          v6[v8] = 0x8000000000000000;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1D98475FC();
          }

          v39 = *(*(v51 + 48) + 16 * v36 + 8);

          sub_1D982799C((*(v51 + 56) + 32 * v36), v52);
          sub_1D9847108(v36, v51);
          v6[v8] = v51;
        }

        else
        {
          memset(v52, 0, sizeof(v52));
        }

        sub_1D981A4E8(v52, &qword_1ECB41A98, &qword_1D984E370);
        __swift_destroy_boxed_opaque_existential_1Tm(&v55);
        goto LABEL_12;
      }

      v20 = v5;
      sub_1D982799C(&v53, v52);
      v21 = v6[v8];
      v22 = swift_isUniquelyReferenced_nonNull_native();
      v23 = v6[v8];
      v6[v8] = 0x8000000000000000;
      v25 = sub_1D98447E4(0x73656D617266, 0xE600000000000000);
      v26 = v23[2];
      v27 = (v24 & 1) == 0;
      v28 = v26 + v27;
      if (__OFADD__(v26, v27))
      {
        goto LABEL_49;
      }

      v29 = v24;
      if (v23[3] >= v28)
      {
        if (v22)
        {
          v32 = v23;
          if ((v24 & 1) == 0)
          {
            goto LABEL_38;
          }
        }

        else
        {
          sub_1D98475FC();
          v32 = v23;
          if ((v29 & 1) == 0)
          {
            goto LABEL_38;
          }
        }
      }

      else
      {
        sub_1D9846B90(v28, v22);
        v30 = sub_1D98447E4(0x73656D617266, 0xE600000000000000);
        if ((v29 & 1) != (v31 & 1))
        {
          result = sub_1D984A634();
          __break(1u);
          return result;
        }

        v25 = v30;
        v32 = v23;
        if ((v29 & 1) == 0)
        {
LABEL_38:
          v32[(v25 >> 6) + 8] |= 1 << v25;
          v41 = (v32[6] + 16 * v25);
          *v41 = 0x73656D617266;
          v41[1] = 0xE600000000000000;
          sub_1D982799C(v52, (v32[7] + 32 * v25));

          __swift_destroy_boxed_opaque_existential_1Tm(&v55);
          v42 = v32[2];
          v43 = __OFADD__(v42, 1);
          v44 = v42 + 1;
          if (v43)
          {
            goto LABEL_50;
          }

          v32[2] = v44;
          goto LABEL_40;
        }
      }

      v40 = (v32[7] + 32 * v25);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      sub_1D982799C(v52, v40);

      __swift_destroy_boxed_opaque_existential_1Tm(&v55);
LABEL_40:
      v5 = v20;
      v45 = v6[v8];
      v6[v8] = v32;

      goto LABEL_12;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v55);
    goto LABEL_11;
  }

  if (qword_1ECB415B8 == -1)
  {
    goto LABEL_43;
  }

LABEL_51:
  swift_once();
LABEL_43:
  v46 = sub_1D9849C54();
  __swift_project_value_buffer(v46, qword_1ECB41A08);
  v47 = sub_1D9849C24();
  v48 = sub_1D984A124();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&dword_1D97FA000, v47, v48, "Thread has backtrace with unexpected type", v49, 2u);
    MEMORY[0x1DA738F10](v49, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(&v55);

  return 0;
}

uint64_t sub_1D98295A8(uint64_t *a1)
{
  v1 = *a1;
  if (*(*a1 + 16) && (v2 = sub_1D98447E4(0xD000000000000016, 0x80000001D9854270), (v3 & 1) != 0))
  {
    sub_1D981B108(*(v1 + 56) + 32 * v2, &v5);
    sub_1D981A4E8(&v5, &qword_1ECB41A98, &qword_1D984E370);
    v5 = 0u;
    v6 = 0u;
    sub_1D9845214(&v5, 0xD000000000000016, 0x80000001D9854270);
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
    sub_1D981A4E8(&v5, &qword_1ECB41A98, &qword_1D984E370);
  }

  return 1;
}

uint64_t sub_1D9829674(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41A80, &qword_1D984E780);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D98296E8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000073;
  v3 = 0x7265747369676572;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x756E2D6574756F72;
    }

    else
    {
      v5 = 6778732;
    }

    if (v4 == 2)
    {
      v6 = 0xEC0000007265626DLL;
    }

    else
    {
      v6 = 0xE300000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x2D786F626C69616DLL;
    }

    else
    {
      v5 = 0x7265747369676572;
    }

    if (v4)
    {
      v6 = 0xED0000726F727265;
    }

    else
    {
      v6 = 0xE900000000000073;
    }
  }

  v7 = 0x756E2D6574756F72;
  v8 = 0xEC0000007265626DLL;
  if (a2 != 2)
  {
    v7 = 6778732;
    v8 = 0xE300000000000000;
  }

  if (a2)
  {
    v3 = 0x2D786F626C69616DLL;
    v2 = 0xED0000726F727265;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D984A5F4();
  }

  return v11 & 1;
}

uint64_t sub_1D9829844(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED000079726F7473;
  v3 = 0xD000000000000010;
  v4 = 0x69685F746E657665;
  v5 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v6 = 0x69685F746E657665;
    }

    else
    {
      v6 = 0xD000000000000010;
    }

    if (v5 == 2)
    {
      v7 = 0xED000079726F7473;
    }

    else
    {
      v7 = 0x80000001D9853810;
    }
  }

  else
  {
    if (a1)
    {
      v6 = 0xD00000000000001ALL;
    }

    else
    {
      v6 = 0xD000000000000010;
    }

    if (v5)
    {
      v7 = 0x80000001D98537E0;
    }

    else
    {
      v7 = 0x80000001D98537C0;
    }
  }

  if (a2 != 2)
  {
    v4 = 0xD000000000000010;
    v2 = 0x80000001D9853810;
  }

  v8 = 0x80000001D98537E0;
  if (a2)
  {
    v3 = 0xD00000000000001ALL;
  }

  else
  {
    v8 = 0x80000001D98537C0;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  if (a2 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v2;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D984A5F4();
  }

  return v11 & 1;
}

uint64_t sub_1D9829970(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000070;
  v3 = 0x6D617473656D6974;
  v4 = a1;
  v5 = 0xE600000000000000;
  v6 = 0x656372756F73;
  v7 = 0x756E5F746E657665;
  v8 = 0xEC0000007265626DLL;
  if (a1 != 4)
  {
    v7 = 1635017060;
    v8 = 0xE400000000000000;
  }

  if (a1 != 3)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xE800000000000000;
  v10 = 0x6F6972616E656373;
  if (a1 != 1)
  {
    v10 = 0x6574617473;
    v9 = 0xE500000000000000;
  }

  if (!a1)
  {
    v10 = 0x6D617473656D6974;
    v9 = 0xE900000000000070;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xE600000000000000;
      if (v11 != 0x656372756F73)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xEC0000007265626DLL;
      if (v11 != 0x756E5F746E657665)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0xE400000000000000;
      if (v11 != 1635017060)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE800000000000000;
        if (v11 != 0x6F6972616E656373)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v2 = 0xE500000000000000;
      v3 = 0x6574617473;
    }

    if (v11 != v3)
    {
LABEL_31:
      v13 = sub_1D984A5F4();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v12 != v2)
  {
    goto LABEL_31;
  }

  v13 = 1;
LABEL_32:

  return v13 & 1;
}

uint64_t sub_1D9829B38(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x657463656E6E6F63;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 6580592;
    }

    else
    {
      v5 = 0x7265765F7773;
    }

    if (v4 == 2)
    {
      v6 = 0xE300000000000000;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 6580598;
    }

    else
    {
      v5 = 0x657463656E6E6F63;
    }

    if (v4)
    {
      v6 = 0xE300000000000000;
    }

    else
    {
      v6 = 0xE900000000000064;
    }
  }

  v7 = 0xE300000000000000;
  v8 = 6580592;
  if (a2 != 2)
  {
    v8 = 0x7265765F7773;
    v7 = 0xE600000000000000;
  }

  if (a2)
  {
    v3 = 6580598;
    v2 = 0xE300000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D984A5F4();
  }

  return v11 & 1;
}

uint64_t sub_1D9829C5C()
{
  sub_1D984A6A4();
  sub_1D9849E84();

  return sub_1D984A6D4();
}

uint64_t sub_1D9829D60()
{
  sub_1D984A6A4();
  sub_1D9849E84();

  return sub_1D984A6D4();
}

uint64_t sub_1D9829E60(uint64_t result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_12;
    }

    v5 = *(result + 16);
    v4 = *(result + 24);
    v3 = v4 - v5;
    if (__OFSUB__(v4, v5))
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    if (!v3)
    {
LABEL_12:
      sub_1D981FA9C(result, a2);
      return MEMORY[0x1E69E7CC0];
    }

LABEL_8:
    v6 = result;
    v8 = sub_1D983F8E8(v3, 0);
    v9 = sub_1D9849A04();
    v10 = *(v9 - 8);
    v11 = *(v10 + 64);
    MEMORY[0x1EEE9AC00](v9);
    v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = v8;
    v15 = sub_1D98499E4();
    sub_1D981FA9C(v6, a2);
    result = (*(v10 + 8))(v13, v9);
    if (v15 == v3)
    {
      return v14;
    }

    __break(1u);
    goto LABEL_14;
  }

  if (!v2)
  {
    v3 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  v16 = HIDWORD(result) - result;
  if (!__OFSUB__(HIDWORD(result), result))
  {
    v3 = v16;
    if (!v16)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1D9829FEC()
{
  v0 = sub_1D9849C54();
  __swift_allocate_value_buffer(v0, qword_1ECB47658);
  __swift_project_value_buffer(v0, qword_1ECB47658);
  return sub_1D9849C34();
}

uint64_t sub_1D982A114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  v6 = sub_1D983392C(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41BD8, &qword_1D984E7E0);
  result = swift_arrayDestroy();
  *a5 = v6;
  return result;
}

void sub_1D982A180(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v47 = *MEMORY[0x1E69E9840];
  if (a3 >> 60 != 15)
  {
    v12 = *(a1 + 16);
    sub_1D9826CDC(a2, a3);
    if (!v12 || (v13 = sub_1D98447E4(0x2D6E6F6974636573, 0xEE0074657366666FLL), (v14 & 1) == 0) || (sub_1D981B108(*(a1 + 56) + 32 * v13, v46), (swift_dynamicCast() & 1) == 0))
    {
      if (qword_1ECB415C8 != -1)
      {
        swift_once();
      }

      v21 = sub_1D9849C54();
      __swift_project_value_buffer(v21, qword_1ECB47658);
      v22 = sub_1D9849C24();
      v23 = sub_1D984A124();
      if (!os_log_type_enabled(v22, v23))
      {
        goto LABEL_26;
      }

      v24 = swift_slowAlloc();
      *v24 = 0;
      v25 = "Offset section not available to decode Csif";
      goto LABEL_25;
    }

    if (!*(a1 + 16) || (v15 = sub_1D98447E4(0x2D6E6F6974636573, 0xEC000000657A6973), (v16 & 1) == 0) || (sub_1D981B108(*(a1 + 56) + 32 * v15, v46), (swift_dynamicCast() & 1) == 0))
    {
      if (qword_1ECB415C8 != -1)
      {
        swift_once();
      }

      v27 = sub_1D9849C54();
      __swift_project_value_buffer(v27, qword_1ECB47658);
      v22 = sub_1D9849C24();
      v23 = sub_1D984A124();
      if (!os_log_type_enabled(v22, v23))
      {
        goto LABEL_26;
      }

      v24 = swift_slowAlloc();
      *v24 = 0;
      v25 = "Size section not available to decode Csif";
      goto LABEL_25;
    }

    if (v45 < 28 || v45 < 0)
    {
LABEL_46:
      if (qword_1ECB415C8 != -1)
      {
        swift_once();
      }

      v34 = sub_1D9849C54();
      __swift_project_value_buffer(v34, qword_1ECB47658);
      v22 = sub_1D9849C24();
      v23 = sub_1D984A124();
      if (!os_log_type_enabled(v22, v23))
      {
        goto LABEL_26;
      }

      v24 = swift_slowAlloc();
      *v24 = 0;
      v25 = "Invalid size and offset for Csif";
LABEL_25:
      _os_log_impl(&dword_1D97FA000, v22, v23, v25, v24, 2u);
      MEMORY[0x1DA738F10](v24, -1, -1);
LABEL_26:
      sub_1D98279AC(a2, a3);

LABEL_27:
      v26 = *MEMORY[0x1E69E9840];
      return;
    }

    v17 = 2 * v45;
    if (__OFADD__(v45, v45))
    {
      __break(1u);
    }

    v18 = a4;
    v19 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v19 != 2)
      {
        if (v17 < 0)
        {
          *&v46[6] = 0;
          *v46 = 0;
          v42 = v46;
          v41 = v46;
          goto LABEL_63;
        }

        goto LABEL_46;
      }

      v29 = *(a2 + 16);
      v28 = *(a2 + 24);
      v30 = __OFSUB__(v28, v29);
      v20 = v28 - v29;
      if (!v30)
      {
        goto LABEL_38;
      }

      __break(1u);
    }

    else if (!v19)
    {
      v20 = BYTE6(a3);
      goto LABEL_38;
    }

    LODWORD(v20) = HIDWORD(a2) - a2;
    if (__OFSUB__(HIDWORD(a2), a2))
    {
      __break(1u);
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    v20 = v20;
LABEL_38:
    if (v17 < v20)
    {
      if (v19 == 2)
      {
        v35 = *(a2 + 16);
        v36 = *(a2 + 24);
        v32 = sub_1D98498C4();
        if (v32)
        {
          v37 = sub_1D98498E4();
          if (__OFSUB__(v35, v37))
          {
LABEL_69:
            __break(1u);
            goto LABEL_70;
          }

          v32 += v35 - v37;
        }

        v30 = __OFSUB__(v36, v35);
        v31 = v36 - v35;
        if (!v30)
        {
          goto LABEL_54;
        }

LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      if (v19 == 1)
      {
        v31 = (a2 >> 32) - a2;
        if (a2 >> 32 >= a2)
        {
          v32 = sub_1D98498C4();
          if (!v32)
          {
LABEL_54:
            v38 = sub_1D98498D4();
            if (v38 >= v31)
            {
              v39 = v31;
            }

            else
            {
              v39 = v38;
            }

            v40 = (v39 + v32);
            if (v32)
            {
              v41 = v40;
            }

            else
            {
              v41 = 0;
            }

            v42 = v32;
            v43 = v45;
            v18 = a4;
            goto LABEL_64;
          }

          v33 = sub_1D98498E4();
          if (!__OFSUB__(a2, v33))
          {
            v32 += a2 - v33;
            goto LABEL_54;
          }

LABEL_70:
          __break(1u);
          return;
        }

        goto LABEL_67;
      }

      *v46 = a2;
      *&v46[8] = a3;
      v46[10] = BYTE2(a3);
      v46[11] = BYTE3(a3);
      v46[12] = BYTE4(a3);
      v46[13] = BYTE5(a3);
      v41 = &v46[BYTE6(a3)];
      v42 = v46;
LABEL_63:
      v43 = v45;
LABEL_64:
      sub_1D982AA80(v42, v41, v43, v18, v45);
      sub_1D98279AC(a2, a3);
      goto LABEL_27;
    }

    goto LABEL_46;
  }

  if (qword_1ECB415C8 != -1)
  {
    swift_once();
  }

  v4 = sub_1D9849C54();
  __swift_project_value_buffer(v4, qword_1ECB47658);
  oslog = sub_1D9849C24();
  v5 = sub_1D984A124();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1D97FA000, oslog, v5, "Binary not available to decode Csif", v6, 2u);
    MEMORY[0x1DA738F10](v6, -1, -1);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1D982A784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    if (qword_1ECB415C8 != -1)
    {
      swift_once();
    }

    v11 = sub_1D9849C54();
    __swift_project_value_buffer(v11, qword_1ECB47658);
    v7 = sub_1D9849C24();
    v12 = sub_1D984A124();
    if (!os_log_type_enabled(v7, v12))
    {
      goto LABEL_18;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "Failed to retrieve base address from raw buffer binary";
    v13 = v12;
    v14 = v7;
    v15 = v9;
    v16 = 2;
    goto LABEL_17;
  }

  if (a4 < 28)
  {
    if (qword_1ECB415C8 != -1)
    {
      swift_once();
    }

    v6 = sub_1D9849C54();
    __swift_project_value_buffer(v6, qword_1ECB47658);
    v7 = sub_1D9849C24();
    v8 = sub_1D984A124();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_18;
    }

    v9 = swift_slowAlloc();
    *v9 = 134218240;
    *(v9 + 4) = a4;
    *(v9 + 12) = 2048;
    *(v9 + 14) = 28;
    v10 = "MTBF section too small to decode: (%ld < %ld)";
    goto LABEL_16;
  }

  v18 = *(a1 + a3 + 28);
  v17 = *(a1 + a3 + 32);
  v19 = *(a1 + a3 + 36);
  *(a5 + 160) = *(a1 + a3 + 24);
  *(a5 + 164) = 0;
  if (a4 < 0x25)
  {
    if (qword_1ECB415C8 != -1)
    {
      swift_once();
    }

    v21 = sub_1D9849C54();
    __swift_project_value_buffer(v21, qword_1ECB47658);
    v7 = sub_1D9849C24();
    v8 = sub_1D984A114();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_18;
    }

    v9 = swift_slowAlloc();
    *v9 = 134218240;
    *(v9 + 4) = a4;
    *(v9 + 12) = 2048;
    *(v9 + 14) = 37;
    v10 = "MTBF section too small to decode beyond usage_time_btw_crashes: (%ld < %ld)";
LABEL_16:
    v13 = v8;
    v14 = v7;
    v15 = v9;
    v16 = 22;
LABEL_17:
    _os_log_impl(&dword_1D97FA000, v14, v13, v10, v15, v16);
    MEMORY[0x1DA738F10](v9, -1, -1);
LABEL_18:

    return;
  }

  v22 = v19 - 1;
  if (v22 > 2)
  {
    v25 = 0xE700000000000000;
    v24 = 0x6E776F6E6B6E75;
  }

  else
  {
    v23 = v22;
    v24 = *&aProd[8 * v22];
    v25 = qword_1D984F758[v23];
  }

  v26 = *(a5 + 176);
  *(a5 + 168) = v24;
  *(a5 + 176) = v25;

  if (v18 != -1)
  {
    *(a5 + 184) = v18;
    *(a5 + 188) = 0;
  }

  if (v17 != -1)
  {
    *(a5 + 192) = v17;
    *(a5 + 196) = 0;
  }
}

void sub_1D982AA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    if (qword_1ECB415C8 == -1)
    {
LABEL_18:
      v27 = sub_1D9849C54();
      __swift_project_value_buffer(v27, qword_1ECB47658);
      v19 = sub_1D9849C24();
      v28 = sub_1D984A124();
      if (!os_log_type_enabled(v19, v28))
      {
LABEL_21:

        return;
      }

      v21 = swift_slowAlloc();
      *v21 = 0;
      v22 = "Failed to retrieve base address from raw buffer binary";
      v23 = v28;
      v24 = v19;
      v25 = v21;
      v26 = 2;
LABEL_20:
      _os_log_impl(&dword_1D97FA000, v24, v23, v22, v25, v26);
      MEMORY[0x1DA738F10](v21, -1, -1);
      goto LABEL_21;
    }

LABEL_106:
    swift_once();
    goto LABEL_18;
  }

  v6 = *(a1 + a3);
  v171 = *(a1 + a3 + 16);
  v172 = *(a1 + a3 + 8);
  v184 = (a1 + a3);
  v170 = *(a1 + a3 + 24);
  SifScenarioCount = getSifScenarioCount();
  v8 = MEMORY[0x1E69E7CC0];
  v181 = a4;
  if (SifScenarioCount)
  {
    for (i = 0; i != SifScenarioCount; ++i)
    {
      if (i < 0x40 && ((v6 >> i) & 1) != 0)
      {
        v11 = getScenarioNameWrapper(i);
        v12 = sub_1D9849DF4();
        v14 = v13;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1D9832DC0(0, *(v8 + 2) + 1, 1, v8);
        }

        v16 = *(v8 + 2);
        v15 = *(v8 + 3);
        if (v16 >= v15 >> 1)
        {
          v8 = sub_1D9832DC0((v15 > 1), v16 + 1, 1, v8);
        }

        *(v8 + 2) = v16 + 1;
        v10 = &v8[16 * v16];
        *(v10 + 4) = v12;
        *(v10 + 5) = v14;
        a4 = v181;
      }
    }
  }

  v17 = *(a4 + 152);
  *(a4 + 152) = v8;

  *(a4 + 160) = v171;
  *(a4 + 168) = 0;
  *&v201 = v6;
  *(&v201 + 1) = v172;
  *&v202 = v171;
  DWORD2(v202) = v170;
  if (4 * sub_1D9838234(&v201) + 28 > a5)
  {
    if (qword_1ECB415C8 != -1)
    {
      swift_once();
    }

    v18 = sub_1D9849C54();
    __swift_project_value_buffer(v18, qword_1ECB47658);
    v19 = sub_1D9849C24();
    v20 = sub_1D984A124();
    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_21;
    }

    v21 = swift_slowAlloc();
    *v21 = 67109376;
    *&v201 = v6;
    *(&v201 + 1) = v172;
    *&v202 = v171;
    DWORD2(v202) = v170;
    *(v21 + 4) = sub_1D9838234(&v201);
    *(v21 + 8) = 2048;
    *(v21 + 10) = a5;
    v22 = "Scenario information range %u too large for section size %ld";
    v23 = v20;
    v24 = v19;
    v25 = v21;
    v26 = 18;
    goto LABEL_20;
  }

  v173 = SifScenarioCount;
  v174 = v6;
  v29 = v184 + 28;
  v31 = *(v184 + 1);
  v32 = *(v184 + 2);
  v33 = *(v184 + 6);
  *&v201 = *v184;
  v30 = v201;
  *(&v201 + 1) = v31;
  *&v202 = v32;
  DWORD2(v202) = v33;
  v34 = v171;
  v35 = sub_1D9838240(&v201);
  *&v201 = v30;
  *(&v201 + 1) = v31;
  *&v202 = v32;
  DWORD2(v202) = v33;
  v36 = sub_1D983824C(&v201);
  v182 = v184 + 28;
  v183 = v36;
  if (v35 != v36)
  {
    v37 = v35;
    v34 = v171;
    do
    {
      v38 = (v29 + 4 * v37);
      v39 = *v38;
      v40 = sub_1D9838258(*v38);
      v41 = __CFADD__(v34, v40);
      v34 += v40;
      if (v41)
      {
        goto LABEL_100;
      }

      *&v201 = v30;
      *(&v201 + 1) = v31;
      *&v202 = v32;
      DWORD2(v202) = v33;
      v42 = sub_1D9838234(&v201);
      if (!v42)
      {
        goto LABEL_101;
      }

      v43 = v42;
      v29 = v184 + 28;
      v44 = v38 + 4 * sub_1D9838260(v39) - v182;
      v45 = (v44 + 8);
      v46 = (v44 + 11);
      if (v45 >= 0)
      {
        v46 = v45;
      }

      v37 = (v46 >> 2) % v43;
    }

    while (v37 != v183);
  }

  *&v201 = v30;
  *(&v201 + 1) = v31;
  *&v202 = v32;
  DWORD2(v202) = v33;
  v47 = sub_1D9838240(&v201);
  v48 = v174;
  v49 = v181;
  if (v47 != v183)
  {
    v65 = v47;
    v211 = (v29 + 4 * v47);
    v189 = v211 + 3;
    v66 = sub_1D9838258(*v211);
    v67 = v34 - v66;
    if (v34 < v66)
    {
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
      goto LABEL_106;
    }

    v187 = v211 + 5;
    v188 = v211 + 1;
    LOWORD(v68) = v65;
    while (1)
    {
      v210 = 0;
      v69 = sub_1D984A024();
      *(v69 + 16) = 7;
      *(v69 + 32) = 0;
      *(v69 + 40) = 0;
      *(v69 + 48) = 0;
      *(v69 + 56) = 0;
      swift_beginAccess();
      v185 = *v184;
      v70 = *(v184 + 2);
      v71 = *(v184 + 6);

      v201 = v185;
      *&v202 = v70;
      DWORD2(v202) = v71;
      v72 = sub_1D9838234(&v201);
      if (!v72)
      {
        goto LABEL_102;
      }

      v73 = v72;
      LODWORD(v210) = *v211;
      v74 = (v68 + 1) % v72;
      HIDWORD(v210) = *(v29 + 4 * v74);
      v75 = *v188;
      v76 = *v187;
      v77 = *v189;
      v78 = sub_1D9838260(*v211);
      if (v78)
      {
        v79 = (v74 + 1) % v73;
        *(v69 + 32) = *(v29 + 4 * v79);
        if (v78 != 1)
        {
          v80 = (v79 + 1) % v73;
          *(v69 + 36) = *(v29 + 4 * v80);
          if (v78 != 2)
          {
            v81 = (v80 + 1) % v73;
            *(v69 + 40) = *(v29 + 4 * v81);
            if (v78 != 3)
            {
              v82 = (v81 + 1) % v73;
              *(v69 + 44) = *(v29 + 4 * v82);
              if (v78 != 4)
              {
                v83 = (v82 + 1) % v73;
                *(v69 + 48) = *(v29 + 4 * v83);
                if (v78 != 5)
                {
                  v84 = (v83 + 1) % v73;
                  *(v69 + 52) = *(v29 + 4 * v84);
                  if (v78 != 6)
                  {
                    *(v69 + 56) = *(v29 + 4 * ((v84 + 1) % v73));
                  }
                }
              }
            }
          }
        }
      }

      swift_endAccess();

      LOBYTE(v201) = 1;
      LOBYTE(v190) = 1;
      v207 = 1;
      v206 = 1;
      v209 = 0;
      swift_beginAccess();
      v85 = sub_1D9838268(v210);
      swift_endAccess();
      if (v85)
      {
        if (os_variant_has_internal_diagnostics())
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41C20, &qword_1D984E828);
          v86 = swift_allocObject();
          *(v86 + 16) = xmmword_1D984E260;
          v87 = HIWORD(v210);
          *(v86 + 56) = MEMORY[0x1E69E75F8];
          *(v86 + 64) = MEMORY[0x1E69E7660];
          *(v86 + 32) = v87;
          *&v190 = sub_1D9849E14();
          *(&v190 + 1) = v88;
          if (*(v69 + 16) < 7uLL)
          {
            goto LABEL_104;
          }

          v89 = *(v69 + 32);
          v90 = swift_allocObject();
          *(v90 + 16) = xmmword_1D984CC70;
          v91 = MEMORY[0x1E69E7668];
          *(v90 + 56) = MEMORY[0x1E69E7668];
          v92 = MEMORY[0x1E69E76D0];
          *(v90 + 64) = MEMORY[0x1E69E76D0];
          *(v90 + 32) = v89;
          *(v90 + 96) = v91;
          *(v90 + 104) = v92;
          *(v90 + 72) = BYTE1(v89);
          *(v90 + 136) = v91;
          *(v90 + 144) = v92;
          *(v90 + 112) = BYTE2(v89);
          *(v90 + 176) = v91;
          *(v90 + 184) = v92;
          *(v90 + 152) = HIBYTE(v89);
          v93 = sub_1D9849E14();
          MEMORY[0x1DA737B20](v93);

          v94 = *(v69 + 36);
          v95 = swift_allocObject();
          *(v95 + 16) = xmmword_1D984CC70;
          *(v95 + 56) = v91;
          *(v95 + 64) = v92;
          *(v95 + 32) = v94;
          *(v95 + 96) = v91;
          *(v95 + 104) = v92;
          *(v95 + 72) = BYTE1(v94);
          *(v95 + 136) = v91;
          *(v95 + 144) = v92;
          *(v95 + 112) = BYTE2(v94);
          *(v95 + 176) = v91;
          *(v95 + 184) = v92;
          *(v95 + 152) = HIBYTE(v94);
          v96 = sub_1D9849E14();
          MEMORY[0x1DA737B20](v96);

          v97 = *(v69 + 40);
          v98 = swift_allocObject();
          *(v98 + 16) = xmmword_1D984CC70;
          *(v98 + 56) = v91;
          *(v98 + 64) = v92;
          *(v98 + 32) = v97;
          *(v98 + 96) = v91;
          *(v98 + 104) = v92;
          *(v98 + 72) = BYTE1(v97);
          *(v98 + 136) = v91;
          *(v98 + 144) = v92;
          *(v98 + 112) = BYTE2(v97);
          *(v98 + 176) = v91;
          *(v98 + 184) = v92;
          *(v98 + 152) = HIBYTE(v97);
          v99 = sub_1D9849E14();
          MEMORY[0x1DA737B20](v99);

          v100 = *(v69 + 44);
          v101 = swift_allocObject();
          *(v101 + 16) = xmmword_1D984CC70;
          *(v101 + 56) = v91;
          *(v101 + 64) = v92;
          *(v101 + 32) = v100;
          *(v101 + 96) = v91;
          *(v101 + 104) = v92;
          *(v101 + 72) = BYTE1(v100);
          *(v101 + 136) = v91;
          *(v101 + 144) = v92;
          *(v101 + 112) = BYTE2(v100);
          *(v101 + 176) = v91;
          *(v101 + 184) = v92;
          *(v101 + 152) = HIBYTE(v100);
          v102 = sub_1D9849E14();
          MEMORY[0x1DA737B20](v102);

          v103 = *(v69 + 48);
          v104 = swift_allocObject();
          *(v104 + 16) = xmmword_1D984CC70;
          *(v104 + 56) = v91;
          *(v104 + 64) = v92;
          *(v104 + 32) = v103;
          *(v104 + 96) = v91;
          *(v104 + 104) = v92;
          *(v104 + 72) = BYTE1(v103);
          *(v104 + 136) = v91;
          *(v104 + 144) = v92;
          *(v104 + 112) = BYTE2(v103);
          *(v104 + 176) = v91;
          *(v104 + 184) = v92;
          *(v104 + 152) = HIBYTE(v103);
          v105 = sub_1D9849E14();
          MEMORY[0x1DA737B20](v105);

          v106 = *(v69 + 52);
          v107 = swift_allocObject();
          *(v107 + 16) = xmmword_1D984CC70;
          *(v107 + 56) = v91;
          *(v107 + 64) = v92;
          *(v107 + 32) = v106;
          *(v107 + 96) = v91;
          *(v107 + 104) = v92;
          *(v107 + 72) = BYTE1(v106);
          *(v107 + 136) = v91;
          *(v107 + 144) = v92;
          *(v107 + 112) = BYTE2(v106);
          *(v107 + 176) = v91;
          *(v107 + 184) = v92;
          *(v107 + 152) = HIBYTE(v106);
          v108 = sub_1D9849E14();
          MEMORY[0x1DA737B20](v108);

          v109 = *(v69 + 56);
          v110 = swift_allocObject();
          *(v110 + 16) = xmmword_1D984CC70;
          *(v110 + 56) = v91;
          *(v110 + 64) = v92;
          *(v110 + 32) = v109;
          *(v110 + 96) = v91;
          *(v110 + 104) = v92;
          *(v110 + 72) = BYTE1(v109);
          *(v110 + 136) = v91;
          *(v110 + 144) = v92;
          *(v110 + 112) = BYTE2(v109);
          *(v110 + 176) = v91;
          *(v110 + 184) = v92;
          *(v110 + 152) = HIBYTE(v109);
          v111 = sub_1D9849E14();
          MEMORY[0x1DA737B20](v111);

          swift_beginAccess();
          v112 = BYTE4(v210);
          v113 = sub_1D9838268(v210);
          v207 = 0;
          swift_endAccess();

          v114 = v113;
          v186 = 0;
          v115 = 0;
          v116 = 0;
          v117 = 0;
          v206 = 0;
          v119 = *(&v190 + 1);
          v118 = v190;
          v120 = *(v49 + 176);
          if (v120)
          {
            goto LABEL_57;
          }

LABEL_56:
          v120 = MEMORY[0x1E69E7CC0];
          *(v49 + 176) = MEMORY[0x1E69E7CC0];
          goto LABEL_57;
        }

        v186 = 0;
        v115 = 0;
        v116 = 0;
        v117 = 0;
      }

      else
      {
        if (v173 <= BYTE4(v210))
        {
          if (qword_1ECB415C8 != -1)
          {
            swift_once();
          }

          v149 = sub_1D9849C54();
          __swift_project_value_buffer(v149, qword_1ECB47658);
          v150 = sub_1D9849C24();
          v151 = sub_1D984A124();
          if (os_log_type_enabled(v150, v151))
          {
            v152 = swift_slowAlloc();
            *v152 = 16777472;
            v152[4] = BYTE4(v210);
            _os_log_impl(&dword_1D97FA000, v150, v151, "Invalid scenarioType %hhu", v152, 5u);
            MEMORY[0x1DA738F10](v152, -1, -1);
          }

          v153 = *(v184 + 2);
          v154 = *(v184 + 6);
          v201 = *v184;
          *&v202 = v153;
          DWORD2(v202) = v154;
          v155 = sub_1D9838234(&v201);
          if (!v155)
          {
            goto LABEL_105;
          }

          v156 = v155;
          *v189;
          *v187;
          *v188;
          v157 = v211;
          v158 = &v157[sub_1D9838260(*v211)] - v29;
          v159 = (v158 + 8);
          v160 = (v158 + 11);
          if (v159 >= 0)
          {
            v160 = v159;
          }

          BYTE8(v201) = v209;
          *(&v201 + 9) = v208[0];
          HIDWORD(v201) = *(v208 + 3);
          WORD2(v204) = v207;
          BYTE6(v204) = v206;
          v126 = v67;
          *&v201 = v67;
          v202 = 0u;
          v203 = 0u;
          LODWORD(v204) = 0;
          v68 = (v160 >> 2) % v156;
          *(&v204 + 1) = 0;
          v205 = 0;
          sub_1D98382A8(&v201);

          goto LABEL_65;
        }

        v121 = getScenarioNameWrapper(BYTE4(v210));
        v186 = sub_1D9849DF4();
        v115 = v122;

        v123 = getScenarioStateVerboseFromEventDataWrapper(SBYTE6(v210));
        v116 = sub_1D9849DF4();
        v125 = v124;

        v117 = v125;
      }

      v114 = 0;
      v112 = 0;
      v118 = 0;
      v119 = 0;
      v120 = *(v49 + 176);
      if (!v120)
      {
        goto LABEL_56;
      }

LABEL_57:
      v126 = v67;
      *&v201 = v67;
      v127 = v209;
      BYTE8(v201) = v209;
      *(&v201 + 9) = v208[0];
      HIDWORD(v201) = *(v208 + 3);
      *&v202 = v186;
      *(&v202 + 1) = v115;
      v178 = v117;
      v179 = v116;
      *&v203 = v116;
      *(&v203 + 1) = v117;
      v177 = v114;
      LODWORD(v204) = v114;
      v128 = v207;
      BYTE4(v204) = v207;
      v180 = v112;
      BYTE5(v204) = v112;
      v129 = v206;
      BYTE6(v204) = v206;
      v175 = v119;
      v176 = v118;
      *(&v204 + 1) = v118;
      v205 = v119;
      sub_1D9838270(&v201, &v190);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v49 + 176) = v120;
      v131 = v115;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v120 = sub_1D9832C98(0, *(v120 + 2) + 1, 1, v120);
        *(v49 + 176) = v120;
      }

      v133 = *(v120 + 2);
      v132 = *(v120 + 3);
      if (v133 >= v132 >> 1)
      {
        v120 = sub_1D9832C98((v132 > 1), v133 + 1, 1, v120);
        *(v181 + 176) = v120;
      }

      *(v120 + 2) = v133 + 1;
      v134 = &v120[72 * v133];
      *(v134 + 2) = v201;
      v135 = v202;
      v136 = v203;
      v137 = v204;
      *(v134 + 12) = v205;
      *(v134 + 4) = v136;
      *(v134 + 5) = v137;
      *(v134 + 3) = v135;
      v138 = *(v184 + 2);
      v139 = *(v184 + 6);
      v190 = *v184;
      v191 = v138;
      LODWORD(v192) = v139;
      v140 = sub_1D9838234(&v190);
      if (!v140)
      {
        goto LABEL_103;
      }

      v141 = v140;
      *v189;
      *v187;
      *v188;
      v142 = v211;
      v143 = &v142[sub_1D9838260(*v211)] - v182;
      v144 = (v143 + 8);
      v145 = (v143 + 11);
      if (v144 >= 0)
      {
        v145 = v144;
      }

      v146 = v141;
      v29 = v184 + 28;
      *&v190 = v126;
      BYTE8(v190) = v127;
      *(&v190 + 9) = v208[0];
      HIDWORD(v190) = *(v208 + 3);
      v191 = v186;
      v192 = v131;
      v193 = v179;
      v194 = v178;
      v195 = v177;
      v196 = v128;
      v197 = v180;
      v198 = v129;
      v68 = (v145 >> 2) % v146;
      v199 = v176;
      v200 = v175;
      sub_1D98382A8(&v190);

      v48 = v174;
      v49 = v181;
LABEL_65:
      if (v68 == v183)
      {
        break;
      }

      v147 = (v29 + 4 * v68);
      v187 = v147 + 5;
      v188 = v147 + 4;
      v211 = v147;
      v189 = v147 + 3;
      v148 = sub_1D9838258(*v147);
      v67 = v126 - v148;
      if (v126 < v148)
      {
        goto LABEL_99;
      }
    }
  }

  *&v201 = v48;
  *(&v201 + 1) = v172;
  *&v202 = v171;
  DWORD2(v202) = v170;
  if (sub_1D98382D8(&v201))
  {
    *&v201 = v48;
    *(&v201 + 1) = v172;
    *&v202 = v171;
    DWORD2(v202) = v170;
    v50 = (v29 + 4 * sub_1D9838234(&v201));
    v51 = *v50;
    v52 = v50[1];
    v53 = v50[2];
    v54 = v50[3];
    v55 = v50[4];
    *&v201 = v48;
    *(&v201 + 1) = v172;
    *&v202 = v171;
    DWORD2(v202) = v170;
    v56 = 4 * sub_1D9838234(&v201) + 28;
    if ((v56 | 2) > a5)
    {
      if (qword_1ECB415C8 != -1)
      {
        swift_once();
      }

      v57 = sub_1D9849C54();
      __swift_project_value_buffer(v57, qword_1ECB47658);
      v19 = sub_1D9849C24();
      v58 = sub_1D984A124();
      if (!os_log_type_enabled(v19, v58))
      {
        goto LABEL_21;
      }

      v59 = swift_slowAlloc();
      *v59 = 67109376;
      *&v201 = v48;
      *(&v201 + 1) = v172;
      *&v202 = v171;
      DWORD2(v202) = v170;
      *(v59 + 4) = sub_1D9838234(&v201);
      *(v59 + 8) = 2048;
      *(v59 + 10) = a5;
      v60 = "Scenario information with range %u indicates trailer present but not enough space in section size %ld";
      v61 = v58;
      v62 = v19;
      v63 = v59;
      v64 = 18;
      goto LABEL_86;
    }

    if (v56 + v51 > a5)
    {
      if (qword_1ECB415C8 != -1)
      {
        swift_once();
      }

      v161 = sub_1D9849C54();
      __swift_project_value_buffer(v161, qword_1ECB47658);
      v19 = sub_1D9849C24();
      v162 = sub_1D984A124();
      if (!os_log_type_enabled(v19, v162))
      {
        goto LABEL_21;
      }

      v59 = swift_slowAlloc();
      *v59 = 67109632;
      *&v201 = v48;
      *(&v201 + 1) = v172;
      *&v202 = v171;
      DWORD2(v202) = v170;
      *(v59 + 4) = sub_1D9838234(&v201);
      *(v59 + 8) = 512;
      *(v59 + 10) = v51;
      *(v59 + 12) = 2048;
      *(v59 + 14) = a5;
      v60 = "Scenario information range %u and trailer length %hu too large for section size %ld";
      v61 = v162;
      v62 = v19;
      v63 = v59;
      v64 = 22;
      goto LABEL_86;
    }

    if (v51 < 0xA)
    {
      if (qword_1ECB415C8 != -1)
      {
        swift_once();
      }

      v163 = sub_1D9849C54();
      __swift_project_value_buffer(v163, qword_1ECB47658);
      v19 = sub_1D9849C24();
      v164 = sub_1D984A124();
      if (!os_log_type_enabled(v19, v164))
      {
        goto LABEL_21;
      }

      v59 = swift_slowAlloc();
      *v59 = 33554944;
      *(v59 + 4) = v51;
      *(v59 + 6) = 2048;
      *(v59 + 8) = 10;
      v60 = "Scenario information trailer length too small %hu < %ld";
      v61 = v164;
      v62 = v19;
      v63 = v59;
      v64 = 16;
LABEL_86:
      _os_log_impl(&dword_1D97FA000, v62, v61, v60, v63, v64);
      MEMORY[0x1DA738F10](v59, -1, -1);
      goto LABEL_21;
    }

    v165 = sub_1D98382E4((v52 << 16) | v51);
    if (v165)
    {
      v166 = v55;
    }

    else
    {
      v166 = 0;
    }

    if (v165)
    {
      v167 = v54;
    }

    else
    {
      v167 = 0;
    }

    if (v165)
    {
      v168 = v53;
    }

    else
    {
      v168 = 0;
    }

    LOBYTE(v201) = 0;
    LOBYTE(v190) = v165 == 0;
    LOBYTE(v210) = v165 == 0;
    LOBYTE(v208[0]) = v165 == 0;
    *(v181 + 184) = v165 | (v168 << 32) | ((v165 == 0) << 48);
    *(v181 + 196) = v166;
    *(v181 + 192) = v167 | ((v165 == 0) << 16);
    *(v181 + 198) = ((((v165 == 0) << 48) | (v166 << 32)) >> 48);
  }
}

uint64_t sub_1D982BD68(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41E00, &qword_1D984F498);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9839B5C();
  sub_1D984A704();
  v17 = a2;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB419A0, &qword_1D984E058);
  sub_1D98245F8(&qword_1ECB419B8);
  sub_1D984A5A4();
  if (!v4)
  {
    v15 = 1;
    sub_1D984A584();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1D982BF48(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000011;
  }

  else
  {
    v4 = 0x6B63617473;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0x80000001D9853730;
  }

  if (*a2)
  {
    v6 = 0xD000000000000011;
  }

  else
  {
    v6 = 0x6B63617473;
  }

  if (*a2)
  {
    v7 = 0x80000001D9853730;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1D984A5F4();
  }

  return v9 & 1;
}

uint64_t sub_1D982BFF0()
{
  v1 = *v0;
  sub_1D984A6A4();
  sub_1D9849E84();

  return sub_1D984A6D4();
}

uint64_t sub_1D982C074()
{
  *v0;
  sub_1D9849E84();
}

uint64_t sub_1D982C0E4()
{
  v1 = *v0;
  sub_1D984A6A4();
  sub_1D9849E84();

  return sub_1D984A6D4();
}

void sub_1D982C170(unint64_t *a1@<X8>)
{
  v2 = 0x80000001D9853730;
  v3 = 0x6B63617473;
  if (*v1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t sub_1D982C1B0()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 0x6B63617473;
  }

  *v0;
  return result;
}

uint64_t sub_1D982C1F8(uint64_t a1)
{
  v2 = sub_1D9839B5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D982C234(uint64_t a1)
{
  v2 = sub_1D9839B5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D982C270@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D9835804(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_1D982C2C0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41D18, &qword_1D984ED50);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9838F00();
  sub_1D984A704();
  v19 = *v3;
  v18[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41AE8, &qword_1D984E3D0);
  sub_1D9833D18(&qword_1ECB41AF0);
  sub_1D984A534();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v11 = v3[1];
  v12 = v3[2];
  v18[6] = 1;
  sub_1D984A514();
  v13 = v3[3];
  v14 = v3[4];
  v18[5] = 2;
  sub_1D984A514();
  v16 = v3[5];
  v17 = v3[6];
  v18[4] = 3;
  sub_1D984A514();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D982C4DC()
{
  v1 = *v0;
  sub_1D984A6A4();
  sub_1D9849E84();

  return sub_1D984A6D4();
}

uint64_t sub_1D982C5B0()
{
  *v0;
  *v0;
  *v0;
  sub_1D9849E84();
}

uint64_t sub_1D982C670()
{
  v1 = *v0;
  sub_1D984A6A4();
  sub_1D9849E84();

  return sub_1D984A6D4();
}

uint64_t sub_1D982C740@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1D9835A2C();
  *a2 = result;
  return result;
}

void sub_1D982C770(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000073;
  v3 = 0x7265747369676572;
  v4 = 0xEC0000007265626DLL;
  v5 = 0x756E2D6574756F72;
  if (*v1 != 2)
  {
    v5 = 6778732;
    v4 = 0xE300000000000000;
  }

  if (*v1)
  {
    v3 = 0x2D786F626C69616DLL;
    v2 = 0xED0000726F727265;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1D982C800()
{
  v1 = 0x7265747369676572;
  v2 = 0x756E2D6574756F72;
  if (*v0 != 2)
  {
    v2 = 6778732;
  }

  if (*v0)
  {
    v1 = 0x2D786F626C69616DLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D982C88C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D9835A2C();
  *a1 = result;
  return result;
}

uint64_t sub_1D982C8B4(uint64_t a1)
{
  v2 = sub_1D9838F00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D982C8F0(uint64_t a1)
{
  v2 = sub_1D9838F00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D982C92C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D9835A78(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_1D982C97C(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 6);
  return sub_1D982C2C0(a1);
}

uint64_t sub_1D982C9C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41D00, &qword_1D984ED40);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9838EAC();
  sub_1D984A704();
  v15 = 0;
  sub_1D984A514();
  if (!v4)
  {
    v13[1] = v13[0];
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB419A0, &qword_1D984E058);
    sub_1D98245F8(&qword_1ECB419B8);
    sub_1D984A534();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D982CB88()
{
  if (*v0)
  {
    result = 0x6B63617473;
  }

  else
  {
    result = 0x7470697263736564;
  }

  *v0;
  return result;
}

uint64_t sub_1D982CBC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
  if (v6 || (sub_1D984A5F4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6B63617473 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D984A5F4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D982CCA4(uint64_t a1)
{
  v2 = sub_1D9838EAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D982CCE0(uint64_t a1)
{
  v2 = sub_1D9838EAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D982CD1C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D9835DB0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_1D982CD6C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = BYTE6(a3);
  v5 = BYTE6(a2);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41E28, &qword_1D984F4B0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9839BB0();
  sub_1D984A704();
  v20 = 0;
  sub_1D984A554();
  if (v3)
  {
    return (*(v8 + 8))(v11, v7);
  }

  v19 = 1;
  v18 = v5 & 1;
  sub_1D984A554();
  v17 = 2;
  sub_1D984A554();
  v16 = 3;
  v15 = v4 & 1;
  sub_1D984A554();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1D982CF68()
{
  v1 = *v0;
  sub_1D984A6A4();
  sub_1D9849E84();

  return sub_1D984A6D4();
}

uint64_t sub_1D982D020()
{
  *v0;
  *v0;
  *v0;
  sub_1D9849E84();
}

uint64_t sub_1D982D0C4()
{
  v1 = *v0;
  sub_1D984A6A4();
  sub_1D9849E84();

  return sub_1D984A6D4();
}

uint64_t sub_1D982D178@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1D9835FB4();
  *a2 = result;
  return result;
}

void sub_1D982D1A8(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000064;
  v3 = 0x657463656E6E6F63;
  v4 = 0xE300000000000000;
  v5 = 6580592;
  if (*v1 != 2)
  {
    v5 = 0x7265765F7773;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 6580598;
    v2 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1D982D21C()
{
  v1 = 0x657463656E6E6F63;
  v2 = 6580592;
  if (*v0 != 2)
  {
    v2 = 0x7265765F7773;
  }

  if (*v0)
  {
    v1 = 6580598;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D982D28C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D9835FB4();
  *a1 = result;
  return result;
}

uint64_t sub_1D982D2B4(uint64_t a1)
{
  v2 = sub_1D9839BB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D982D2F0(uint64_t a1)
{
  v2 = sub_1D9839BB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D982D32C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D9836000(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 2) = BYTE2(result) & 1;
    *(a2 + 4) = WORD2(result);
    *(a2 + 6) = BYTE6(result) & 1;
    *(a2 + 8) = v5;
    *(a2 + 10) = BYTE2(v5) & 1;
    *(a2 + 12) = v6;
    *(a2 + 14) = v7 & 1;
  }

  return result;
}

uint64_t sub_1D982D42C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41D80, &qword_1D984ED78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9839200();
  sub_1D984A704();
  v11 = *v3;
  v12 = *(v3 + 8);
  v24[15] = 0;
  sub_1D984A574();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v24[14] = 1;
  sub_1D984A514();
  v15 = v3[4];
  v16 = v3[5];
  v24[13] = 2;
  sub_1D984A514();
  v17 = *(v3 + 12);
  v18 = *(v3 + 52);
  v24[12] = 3;
  v24[8] = v18;
  sub_1D984A564();
  v19 = *(v3 + 53);
  v20 = *(v3 + 54);
  v24[7] = 4;
  sub_1D984A544();
  v22 = v3[7];
  v23 = v3[8];
  v24[5] = 5;
  sub_1D984A514();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D982D65C()
{
  *v0;
  *v0;
  *v0;
  sub_1D9849E84();
}

uint64_t sub_1D982D750@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1D9836254();
  *a2 = result;
  return result;
}

void sub_1D982D780(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000070;
  v4 = 0x6D617473656D6974;
  v5 = 0xE600000000000000;
  v6 = 0x656372756F73;
  v7 = 0xEC0000007265626DLL;
  v8 = 0x756E5F746E657665;
  if (v2 != 4)
  {
    v8 = 1635017060;
    v7 = 0xE400000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x6F6972616E656373;
  if (v2 != 1)
  {
    v10 = 0x6574617473;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_1D982D83C()
{
  v1 = *v0;
  v2 = 0x6D617473656D6974;
  v3 = 0x656372756F73;
  v4 = 0x756E5F746E657665;
  if (v1 != 4)
  {
    v4 = 1635017060;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6F6972616E656373;
  if (v1 != 1)
  {
    v5 = 0x6574617473;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D982D8F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D9836254();
  *a1 = result;
  return result;
}

uint64_t sub_1D982D928(uint64_t a1)
{
  v2 = sub_1D9839200();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D982D964(uint64_t a1)
{
  v2 = sub_1D9839200();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_1D982D9A0@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D98362A0(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_1D982D9F4(void *a1)
{
  v5 = v1[2];
  v6 = v1[3];
  v7 = *(v1 + 8);
  v3 = *v1;
  v4 = v1[1];
  return sub_1D982D42C(a1);
}

uint64_t sub_1D982DA38(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41D50, &qword_1D984ED68);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9838F54();
  sub_1D984A704();
  *&v14 = *v3;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB419A0, &qword_1D984E058);
  sub_1D98245F8(&qword_1ECB419B8);
  sub_1D984A5A4();
  if (!v2)
  {
    v12 = *(v3 + 8);
    v13 = *(v3 + 16);
    LOBYTE(v14) = 1;
    sub_1D984A574();
    *&v14 = *(v3 + 24);
    v15 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41D30, &qword_1D984ED60);
    sub_1D98390D4();
    sub_1D984A534();
    v14 = *(v3 + 32);
    v15 = 3;
    sub_1D98391AC();
    sub_1D984A534();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D982DCCC()
{
  v1 = *v0;
  sub_1D984A6A4();
  sub_1D9849E84();

  return sub_1D984A6D4();
}

uint64_t sub_1D982DDA0()
{
  *v0;
  *v0;
  *v0;
  sub_1D9849E84();
}

uint64_t sub_1D982DE60()
{
  v1 = *v0;
  sub_1D984A6A4();
  sub_1D9849E84();

  return sub_1D984A6D4();
}

uint64_t sub_1D982DF30@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1D983673C();
  *a2 = result;
  return result;
}

void sub_1D982DF60(unint64_t *a1@<X8>)
{
  v2 = 0xED000079726F7473;
  v3 = 0x69685F746E657665;
  v4 = 0xD000000000000010;
  if (*v1 != 2)
  {
    v3 = 0xD000000000000010;
    v2 = 0x80000001D9853810;
  }

  v5 = 0x80000001D98537C0;
  if (*v1)
  {
    v4 = 0xD00000000000001ALL;
    v5 = 0x80000001D98537E0;
  }

  if (*v1 <= 1u)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  if (*v1 <= 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_1D982DFF0()
{
  v1 = 0x69685F746E657665;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    v2 = 0xD00000000000001ALL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1D982E07C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D983673C();
  *a1 = result;
  return result;
}

uint64_t sub_1D982E0A4(uint64_t a1)
{
  v2 = sub_1D9838F54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D982E0E0(uint64_t a1)
{
  v2 = sub_1D9838F54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D982E11C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D9836788(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_1D982E160(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  return sub_1D982DA38(a1);
}

unint64_t sub_1D982E19C(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x63696E6170;
    v7 = 0xD000000000000010;
    v8 = 1684632949;
    if (a1 != 3)
    {
      v8 = 0x2064657370616C65;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x6F69747065637865;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x7265747369676572;
    v2 = 0x6173752D70616568;
    if (a1 != 9)
    {
      v2 = 0x6F6972616E656373;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x6174732D6C6C6163;
    v4 = 0x736B736174;
    if (a1 != 6)
    {
      v4 = 0x65786F626C69616DLL;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D982E368@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1D9836ABC();
  *a2 = result;
  return result;
}

unint64_t sub_1D982E398@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1D982E19C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D982E3E0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D9836ABC();
  *a1 = result;
  return result;
}

uint64_t sub_1D982E414(uint64_t a1)
{
  v2 = sub_1D9838970();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D982E450(uint64_t a1)
{
  v2 = sub_1D9838970();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D982E48C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 == 0x63696E6170 && a3 == 0xE500000000000000;
  if (v4 || (v7 = result, v8 = sub_1D984A5F4(), result = v7, (v8 & 1) != 0))
  {
    sub_1D981B108(result, v16);
    result = swift_dynamicCast();
    if (result)
    {
      v9 = v3[1];

      *v3 = v14;
      v3[1] = v15;
    }
  }

  else if (a2 == 0x6F69747065637865 && a3 == 0xE90000000000006ELL || (v10 = sub_1D984A5F4(), result = v7, (v10 & 1) != 0))
  {
    sub_1D981B108(result, v16);
    result = swift_dynamicCast();
    if (result)
    {
      v11 = v3[3];

      v3[2] = v14;
      v3[3] = v15;
    }
  }

  else if (a2 == 0xD000000000000010 && 0x80000001D9853710 == a3 || (v12 = sub_1D984A5F4(), result = v7, (v12 & 1) != 0))
  {
    sub_1D981B108(result, v16);
    result = swift_dynamicCast();
    if (result)
    {
      v13 = v3[5];

      v3[4] = v14;
      v3[5] = v15;
    }
  }

  return result;
}

uint64_t sub_1D982E668(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41C68, &qword_1D984ED18);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v29[-v8 - 8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9838970();
  sub_1D984A704();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v30) = 0;
  sub_1D984A514();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v30) = 1;
    sub_1D984A514();
    v15 = v3[4];
    v16 = v3[5];
    LOBYTE(v30) = 2;
    sub_1D984A514();
    v17 = v3[6];
    v18 = v3[7];
    LOBYTE(v30) = 3;
    sub_1D984A514();
    v19 = v3[8];
    v20 = v3[9];
    LOBYTE(v30) = 4;
    sub_1D984A514();
    v30 = *(v3 + 5);
    *&v31 = v3[12];
    v29[0] = 5;
    sub_1D98389C4();
    sub_1D984A534();
    *&v30 = v3[13];
    v29[0] = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41C80, &qword_1D984ED20);
    sub_1D9838A18();
    sub_1D984A534();
    *&v30 = v3[14];
    v29[0] = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41C98, &qword_1D984ED28);
    sub_1D9838AF0();
    sub_1D984A5A4();
    v21 = v3[15];
    v22 = v3[16];
    LOBYTE(v30) = 8;
    sub_1D984A514();
    v23 = v3[17];
    v24 = v3[18];
    LOBYTE(v30) = 9;
    sub_1D984A514();
    v25 = *(v3 + 21);
    v33[0] = *(v3 + 19);
    v33[1] = v25;
    v33[2] = *(v3 + 23);
    v26 = *(v3 + 21);
    v30 = *(v3 + 19);
    v31 = v26;
    v32 = *(v3 + 23);
    v29[55] = 10;
    sub_1D9838BC8(v33, v29);
    sub_1D9838C00();
    sub_1D984A5A4();
  }

  return (*(v6 + 8))(v9, v5);
}

__n128 sub_1D982E9F8@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D9836B08(a1, v10);
  if (!v2)
  {
    v5 = v10[11];
    *(a2 + 160) = v10[10];
    *(a2 + 176) = v5;
    *(a2 + 192) = v11;
    v6 = v10[7];
    *(a2 + 96) = v10[6];
    *(a2 + 112) = v6;
    v7 = v10[9];
    *(a2 + 128) = v10[8];
    *(a2 + 144) = v7;
    v8 = v10[3];
    *(a2 + 32) = v10[2];
    *(a2 + 48) = v8;
    v9 = v10[5];
    *(a2 + 64) = v10[4];
    *(a2 + 80) = v9;
    result = v10[1];
    *a2 = v10[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_1D982EA7C(void *a1)
{
  v13 = v1[10];
  v14 = v1[11];
  v15 = *(v1 + 24);
  v9 = v1[6];
  v10 = v1[7];
  v11 = v1[8];
  v12 = v1[9];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v3 = *v1;
  v4 = v1[1];
  return sub_1D982E668(a1);
}

uint64_t sub_1D982EAE0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41B50, &qword_1D984E750);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v26 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D983802C();
  sub_1D984A704();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v28) = 0;
  sub_1D984A514();
  if (!v2)
  {
    v14 = *(v3 + 10);
    v15 = *(v3 + 12);
    v50 = *(v3 + 11);
    v51 = v15;
    v16 = *(v3 + 6);
    v17 = *(v3 + 8);
    v46 = *(v3 + 7);
    v47 = v17;
    v18 = *(v3 + 8);
    v19 = *(v3 + 10);
    v48 = *(v3 + 9);
    v49 = v19;
    v20 = *(v3 + 2);
    v21 = *(v3 + 4);
    v42 = *(v3 + 3);
    v43 = v21;
    v22 = *(v3 + 4);
    v23 = *(v3 + 6);
    v44 = *(v3 + 5);
    v45 = v23;
    v24 = *(v3 + 2);
    v41[0] = *(v3 + 1);
    v41[1] = v24;
    v25 = *(v3 + 12);
    v38 = v50;
    v39 = v25;
    v34 = v46;
    v35 = v18;
    v36 = v48;
    v37 = v14;
    v30 = v42;
    v31 = v22;
    v32 = v44;
    v33 = v16;
    v52 = v3[26];
    v40 = v3[26];
    v28 = v41[0];
    v29 = v20;
    v53 = 1;
    sub_1D981A480(v41, v26, &qword_1ECB41B60, &qword_1D984E758);
    sub_1D9838080();
    sub_1D984A534();
    v26[10] = v38;
    v26[11] = v39;
    v27 = v40;
    v26[6] = v34;
    v26[7] = v35;
    v26[8] = v36;
    v26[9] = v37;
    v26[2] = v30;
    v26[3] = v31;
    v26[4] = v32;
    v26[5] = v33;
    v26[0] = v28;
    v26[1] = v29;
    sub_1D981A4E8(v26, &qword_1ECB41B60, &qword_1D984E758);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D982ED60(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x676F6C6873617263;
  }

  else
  {
    v4 = 1701998435;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  if (*a2)
  {
    v6 = 0x676F6C6873617263;
  }

  else
  {
    v6 = 1701998435;
  }

  if (*a2)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1D984A5F4();
  }

  return v9 & 1;
}

uint64_t sub_1D982EE00()
{
  v1 = *v0;
  sub_1D984A6A4();
  sub_1D9849E84();

  return sub_1D984A6D4();
}

uint64_t sub_1D982EE7C()
{
  *v0;
  sub_1D9849E84();
}

uint64_t sub_1D982EEE4()
{
  v1 = *v0;
  sub_1D984A6A4();
  sub_1D9849E84();

  return sub_1D984A6D4();
}

uint64_t sub_1D982EF68@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1D984A414();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1D982EFC4(uint64_t *a1@<X8>)
{
  v2 = 1701998435;
  if (*v1)
  {
    v2 = 0x676F6C6873617263;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D982EFFC()
{
  if (*v0)
  {
    result = 0x676F6C6873617263;
  }

  else
  {
    result = 1701998435;
  }

  *v0;
  return result;
}

uint64_t sub_1D982F03C@<X0>(char *a1@<X8>)
{
  v2 = sub_1D984A414();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1D982F09C(uint64_t a1)
{
  v2 = sub_1D983802C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D982F0D8(uint64_t a1)
{
  v2 = sub_1D983802C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D982F114@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D98373C0(a1, v11);
  if (!v2)
  {
    v5 = v11[11];
    *(a2 + 160) = v11[10];
    *(a2 + 176) = v5;
    *(a2 + 192) = v11[12];
    *(a2 + 208) = v12;
    v6 = v11[7];
    *(a2 + 96) = v11[6];
    *(a2 + 112) = v6;
    v7 = v11[9];
    *(a2 + 128) = v11[8];
    *(a2 + 144) = v7;
    v8 = v11[3];
    *(a2 + 32) = v11[2];
    *(a2 + 48) = v8;
    v9 = v11[5];
    *(a2 + 64) = v11[4];
    *(a2 + 80) = v9;
    result = *v11;
    v10 = v11[1];
    *a2 = v11[0];
    *(a2 + 16) = v10;
  }

  return result;
}

uint64_t sub_1D982F1A0(void *a1)
{
  v13 = v1[10];
  v14 = v1[11];
  v15 = v1[12];
  v16 = *(v1 + 26);
  v9 = v1[6];
  v10 = v1[7];
  v11 = v1[8];
  v12 = v1[9];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v3 = *v1;
  v4 = v1[1];
  return sub_1D982EAE0(a1);
}

unint64_t sub_1D982F20C(char a1)
{
  result = 0x657079745F677562;
  switch(a1)
  {
    case 1:
      result = 0x746E756F635F4955;
      break;
    case 2:
      result = 0x737265762D676F6CLL;
      break;
    case 3:
    case 5:
      result = 0x726F737365636361;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0xD000000000000018;
      break;
    case 8:
    case 12:
      result = 0xD000000000000016;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 10:
      result = 0xD000000000000012;
      break;
    case 11:
      v3 = 11;
      goto LABEL_10;
    case 13:
      result = 0xD000000000000010;
      break;
    case 14:
      result = 0xD000000000000022;
      break;
    case 15:
      v3 = 13;
LABEL_10:
      result = v3 | 0xD000000000000010;
      break;
    case 16:
      result = 0x6D69546873617263;
      break;
    case 17:
      result = 0x676F6C6873617263;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D982F450(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1D984A5F4();
  }

  return v12 & 1;
}

uint64_t sub_1D982F4FC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  sub_1D984A6A4();
  a3(v5);
  sub_1D9849E84();

  return sub_1D984A6D4();
}

uint64_t sub_1D982F580(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4(*v4);
  sub_1D9849E84();
}

uint64_t sub_1D982F5F0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  sub_1D984A6A4();
  a4(v6);
  sub_1D9849E84();

  return sub_1D984A6D4();
}

uint64_t sub_1D982F658@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1D98377E4();
  *a2 = result;
  return result;
}

unint64_t sub_1D982F688@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1D982F20C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D982F6D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D98377E4();
  *a1 = result;
  return result;
}

uint64_t sub_1D982F704(uint64_t a1)
{
  v2 = sub_1D9833BEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D982F740(uint64_t a1)
{
  v2 = sub_1D9833BEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AirPodsCrashReport.init(crashBinaryChunks:testMode:productId:applicationInfo:description:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, int a3@<W2>, unint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  LODWORD(v6) = a3;
  LOBYTE(v7) = a2;

  *&v87 = 3485747;
  *(&v87 + 1) = 0xE300000000000000;
  v88 = xmmword_1D984E380;
  v89 = xmmword_1D984E390;
  v90 = xmmword_1D984E3A0;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  LODWORD(v97) = 0;
  BYTE4(v97) = 1;
  *&v98 = 0;
  *(&v97 + 1) = 0;
  DWORD2(v98) = 0;
  BYTE12(v98) = 1;
  LODWORD(v99) = 0;
  BYTE4(v99) = 1;
  *&v100 = 0;
  *(&v99 + 1) = 0;
  *(&v100 + 1) = MEMORY[0x1E69E7CC0];
  if (qword_1ECB415C8 == -1)
  {
    goto LABEL_2;
  }

LABEL_21:
  swift_once();
LABEL_2:
  v8 = sub_1D9849C54();
  __swift_project_value_buffer(v8, qword_1ECB47658);
  v9 = sub_1D9849C24();
  v10 = sub_1D984A114();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1D97FA000, v9, v10, "Initializing AirPodsCrashReport", v11, 2u);
    MEMORY[0x1DA738F10](v11, -1, -1);
  }

  v12 = 0;
  BYTE13(v91) = v7 & 1;
  DWORD2(v91) = v6;
  BYTE12(v91) = 0;
  v6 = a1;
  v13 = *(a1 + 64);
  *&v91 = a4;
  v14 = 1 << *(a1 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v7 = v15 & v13;
  v16 = (v14 + 63) >> 6;
  if ((v15 & v13) != 0)
  {
    do
    {
LABEL_11:
      v18 = (v12 << 10) | (16 * __clz(__rbit64(v7)));
      v19 = (*(v6 + 48) + v18);
      v21 = *v19;
      v20 = v19[1];
      v22 = (*(v6 + 56) + v18);
      v23 = *v22;
      v24 = v22[1];
      swift_bridgeObjectRetain_n();
      v55 = v23;
      sub_1D9826CDC(v23, v24);
      v25 = sub_1D9849C24();
      v26 = sub_1D984A114();

      v56 = v20;
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v29 = v20;
        v30 = v28;
        *&v73 = v28;
        *v27 = 136315138;
        *(v27 + 4) = sub_1D9819F0C(v21, v29, &v73);
        _os_log_impl(&dword_1D97FA000, v25, v26, "Processing binary for core: %s", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v30);
        MEMORY[0x1DA738F10](v30, -1, -1);
        v31 = v27;
        v6 = a1;
        MEMORY[0x1DA738F10](v31, -1, -1);
      }

      sub_1D982FDE8(v55, v24, &v73);
      v32 = *(&v100 + 1);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_1D9832ECC(0, *(v32 + 2) + 1, 1, v32);
      }

      v34 = *(v32 + 2);
      v33 = *(v32 + 3);
      a4 = v34 + 1;
      if (v34 >= v33 >> 1)
      {
        v32 = sub_1D9832ECC((v33 > 1), v34 + 1, 1, v32);
      }

      v7 &= v7 - 1;
      sub_1D981FA9C(v55, v24);
      v61 = v75;
      v62 = v76;
      v65 = v79;
      v66 = v80;
      v63 = v77;
      v64 = v78;
      *&v71 = v85;
      v69 = v83;
      v70 = v84;
      v67 = v81;
      v68 = v82;
      v59 = v73;
      v60 = v74;
      *(v32 + 2) = a4;
      v35 = &v32[216 * v34];
      *(v35 + 4) = v21;
      *(v35 + 5) = v56;
      *(v35 + 3) = v59;
      v36 = v60;
      v37 = v61;
      v38 = v63;
      *(v35 + 6) = v62;
      *(v35 + 7) = v38;
      *(v35 + 4) = v36;
      *(v35 + 5) = v37;
      v39 = v64;
      v40 = v65;
      v41 = v67;
      *(v35 + 10) = v66;
      *(v35 + 11) = v41;
      *(v35 + 8) = v39;
      *(v35 + 9) = v40;
      v42 = v68;
      v43 = v69;
      v44 = v70;
      *(v35 + 30) = v71;
      *(v35 + 13) = v43;
      *(v35 + 14) = v44;
      *(v35 + 12) = v42;
      *(&v100 + 1) = v32;
    }

    while (v7);
  }

  while (1)
  {
    v17 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_21;
    }

    if (v17 >= v16)
    {
      break;
    }

    v7 = *(a1 + 64 + 8 * v17);
    ++v12;
    if (v7)
    {
      v12 = v17;
      goto LABEL_11;
    }
  }

  v58[10] = v97;
  v58[11] = v98;
  v58[12] = v99;
  v58[13] = v100;
  v58[6] = v93;
  v58[7] = v94;
  v58[8] = v95;
  v58[9] = v96;
  v58[2] = v89;
  v58[3] = v90;
  v58[4] = v91;
  v58[5] = v92;
  v58[0] = v87;
  v58[1] = v88;
  v69 = v97;
  v70 = v98;
  v71 = v99;
  v72 = v100;
  v65 = v93;
  v66 = v94;
  v67 = v95;
  v68 = v96;
  v61 = v89;
  v62 = v90;
  v63 = v91;
  v64 = v92;
  v59 = v87;
  v60 = v88;
  nullsub_1(&v59);
  v45 = v70;
  a5[10] = v69;
  a5[11] = v45;
  v46 = v72;
  a5[12] = v71;
  a5[13] = v46;
  v47 = v66;
  a5[6] = v65;
  a5[7] = v47;
  v48 = v68;
  a5[8] = v67;
  a5[9] = v48;
  v49 = v62;
  a5[2] = v61;
  a5[3] = v49;
  v50 = v64;
  a5[4] = v63;
  a5[5] = v50;
  v51 = v60;
  *a5 = v59;
  a5[1] = v51;
  v83 = v97;
  v84 = v98;
  v85 = v99;
  v86 = v100;
  v79 = v93;
  v80 = v94;
  v81 = v95;
  v82 = v96;
  v75 = v89;
  v76 = v90;
  v77 = v91;
  v78 = v92;
  v73 = v87;
  v74 = v88;
  sub_1D9833438(v58, v57);
  return sub_1D9833470(&v73);
}

__n128 sub_1D982FDE8@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D9826CDC(a1, a2);
  v8 = sub_1D9829E60(a1, a2);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v10 = 0;
    if (v9 != 2 || (v12 = *(a1 + 16), v11 = *(a1 + 24), v10 = v11 - v12, !__OFSUB__(v11, v12)))
    {
LABEL_10:
      v4 = CFDataCreate(*MEMORY[0x1E695E480], (v8 + 32), v10);

      if (MEMORY[0x1E69C6A78])
      {
        v13 = RTBuddyCrashlogDecode();
        if (v13)
        {
          v3 = v13;
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            *&v31[0] = 0;
            v14 = v3;
            sub_1D9849DA4();
          }

          if (qword_1ECB415C8 == -1)
          {
            goto LABEL_19;
          }

          goto LABEL_30;
        }

        if (qword_1ECB415C8 != -1)
        {
          swift_once();
        }

        v24 = sub_1D9849C54();
        __swift_project_value_buffer(v24, qword_1ECB47658);
        v16 = sub_1D9849C24();
        v17 = sub_1D984A124();
        if (!os_log_type_enabled(v16, v17))
        {
LABEL_27:

          goto LABEL_28;
        }

        v18 = swift_slowAlloc();
        *v18 = 0;
        v19 = "Error: RTBuddyCrashlogDecode returned nil";
      }

      else
      {
        if (qword_1ECB415C8 != -1)
        {
          swift_once();
        }

        v15 = sub_1D9849C54();
        __swift_project_value_buffer(v15, qword_1ECB47658);
        v16 = sub_1D9849C24();
        v17 = sub_1D984A124();
        if (!os_log_type_enabled(v16, v17))
        {
          goto LABEL_27;
        }

        v18 = swift_slowAlloc();
        *v18 = 0;
        v19 = "RTBuddyCrashlogDecode not available";
      }

      _os_log_impl(&dword_1D97FA000, v16, v17, v19, v18, 2u);
      MEMORY[0x1DA738F10](v18, -1, -1);
      goto LABEL_27;
    }

    __break(1u);
  }

  else if (!v9)
  {
    v10 = BYTE6(a2);
    goto LABEL_10;
  }

  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v10 = HIDWORD(a1) - a1;
    goto LABEL_10;
  }

  __break(1u);
LABEL_30:
  swift_once();
LABEL_19:
  v20 = sub_1D9849C54();
  __swift_project_value_buffer(v20, qword_1ECB47658);
  v21 = sub_1D9849C24();
  v22 = sub_1D984A124();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_1D97FA000, v21, v22, "Unable to parse RTBuddy crash log dictionary", v23, 2u);
    MEMORY[0x1DA738F10](v23, -1, -1);
  }

LABEL_28:
  sub_1D98380D4(v31);
  v25 = v31[11];
  *(a3 + 160) = v31[10];
  *(a3 + 176) = v25;
  *(a3 + 192) = v32;
  v26 = v31[7];
  *(a3 + 96) = v31[6];
  *(a3 + 112) = v26;
  v27 = v31[9];
  *(a3 + 128) = v31[8];
  *(a3 + 144) = v27;
  v28 = v31[3];
  *(a3 + 32) = v31[2];
  *(a3 + 48) = v28;
  v29 = v31[5];
  *(a3 + 64) = v31[4];
  *(a3 + 80) = v29;
  result = v31[1];
  *a3 = v31[0];
  *(a3 + 16) = result;
  return result;
}

uint64_t AirPodsCrashReport.saveReport()()
{
  v55 = *MEMORY[0x1E69E9840];
  v1 = sub_1D9849894();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_1D9849884();
  v4 = v0[11];
  v49 = v0[10];
  v50 = v4;
  v5 = v0[13];
  v51 = v0[12];
  v52 = v5;
  v6 = v0[7];
  v45 = v0[6];
  v46 = v6;
  v7 = v0[9];
  v47 = v0[8];
  v48 = v7;
  v8 = v0[3];
  v41 = v0[2];
  v42 = v8;
  v9 = v0[5];
  v43 = v0[4];
  v44 = v9;
  v10 = v0[1];
  aBlock = *v0;
  v40 = v10;
  sub_1D98334A0();
  v11 = sub_1D9849874();
  v13 = v12;

  v53 = v11;
  v54 = v13;
  v14 = objc_opt_self();
  v15 = sub_1D9849DC4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41AC8, &qword_1D984E3B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D984E260;
  v17 = *MEMORY[0x1E69B7C70];
  sub_1D9849DF4();
  v18 = MEMORY[0x1E69E6158];
  sub_1D984A324();
  *(inited + 96) = v18;
  strcpy((inited + 72), "AccessoryCrash");
  *(inited + 87) = -18;
  sub_1D9833A4C(inited);
  swift_setDeallocating();
  sub_1D981A4E8(inited + 32, &qword_1ECB41AD0, &qword_1D984E3C0);
  v19 = sub_1D9849D94();

  v20 = v53;
  v21 = v54;
  v22 = swift_allocObject();
  *(v22 + 16) = v53;
  *(v22 + 24) = v21;
  *&v41 = sub_1D9833B88;
  *(&v41 + 1) = v22;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v40 = sub_1D9831010;
  *(&v40 + 1) = &block_descriptor_2;
  v23 = _Block_copy(&aBlock);
  sub_1D9826CDC(v20, v21);

  *&aBlock = 0;
  v24 = [v14 createForSubmission:v15 metadata:0 options:v19 error:&aBlock writing:v23];
  _Block_release(v23);

  if (v24)
  {
    v25 = aBlock;
  }

  else
  {
    v26 = aBlock;
    v27 = sub_1D9849954();

    swift_willThrow();
    if (qword_1ECB415C8 != -1)
    {
      swift_once();
    }

    v28 = sub_1D9849C54();
    __swift_project_value_buffer(v28, qword_1ECB47658);
    v29 = v27;
    v24 = sub_1D9849C24();
    v30 = sub_1D984A124();

    if (!os_log_type_enabled(v24, v30))
    {

      goto LABEL_8;
    }

    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138412290;
    v33 = v27;
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v31 + 4) = v34;
    *v32 = v34;
    _os_log_impl(&dword_1D97FA000, v24, v30, "Failed to create OSALog file: %@", v31, 0xCu);
    sub_1D981A4E8(v32, &qword_1ECB41628, &qword_1D984E3B0);
    MEMORY[0x1DA738F10](v32, -1, -1);
    MEMORY[0x1DA738F10](v31, -1, -1);
  }

LABEL_8:
  swift_beginAccess();
  v35 = v53;
  v36 = v54;
  sub_1D9826CDC(v53, v54);
  sub_1D981FA9C(v35, v36);
  v37 = *MEMORY[0x1E69E9840];
  return v35;
}

void sub_1D9831010(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t AirPodsCrashReport.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41AD8, &qword_1D984E3C8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v25 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v55 = v1[3];
  v56 = v10;
  v11 = v1[4];
  v53 = v1[5];
  v54 = v11;
  v12 = v1[6];
  v51 = v1[7];
  v52 = v12;
  v13 = v1[8];
  v49 = *(v1 + 18);
  v50 = v13;
  LODWORD(v13) = *(v1 + 76);
  v47 = *(v1 + 77);
  v48 = v13;
  v14 = v1[11];
  v45 = v1[10];
  v46 = v14;
  v15 = v1[13];
  v43 = v1[12];
  v44 = v15;
  v16 = v1[15];
  v41 = v1[14];
  v42 = v16;
  v17 = v1[17];
  v39 = v1[16];
  v40 = v17;
  v18 = v1[19];
  v37 = v1[18];
  v38 = v18;
  v36 = *(v1 + 40);
  v35 = *(v1 + 164);
  v19 = v1[22];
  v33 = v1[21];
  v34 = v19;
  v32 = *(v1 + 46);
  v31 = *(v1 + 188);
  v30 = *(v1 + 48);
  v29 = *(v1 + 196);
  v20 = v1[26];
  v27 = v1[25];
  v28 = v20;
  v26 = v1[27];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9833BEC();
  sub_1D984A704();
  LOBYTE(v59) = 0;
  v22 = v57;
  sub_1D984A584();
  if (v22)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v24 = v50;
  v57 = v4;
  LOBYTE(v59) = 1;
  sub_1D984A514();
  LOBYTE(v59) = 2;
  sub_1D984A514();
  LOBYTE(v59) = 3;
  sub_1D984A514();
  v59 = v24;
  v58 = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41AE8, &qword_1D984E3D0);
  sub_1D9833D18(&qword_1ECB41AF0);
  sub_1D984A534();
  LOBYTE(v59) = 5;
  v58 = v48;
  sub_1D984A564();
  LOBYTE(v59) = 6;
  sub_1D984A524();
  LOBYTE(v59) = 7;
  sub_1D984A514();
  LOBYTE(v59) = 8;
  sub_1D984A514();
  LOBYTE(v59) = 9;
  sub_1D984A514();
  LOBYTE(v59) = 10;
  sub_1D984A514();
  LOBYTE(v59) = 11;
  sub_1D984A514();
  LOBYTE(v59) = 12;
  v58 = v35;
  sub_1D984A564();
  LOBYTE(v59) = 13;
  sub_1D984A514();
  LOBYTE(v59) = 14;
  v58 = v31;
  sub_1D984A564();
  LOBYTE(v59) = 15;
  v58 = v29;
  sub_1D984A564();
  LOBYTE(v59) = 16;
  sub_1D984A514();
  v59 = v26;
  v58 = 17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41AF8, &qword_1D984E3D8);
  sub_1D9833C40();
  sub_1D984A5A4();
  return (*(v57 + 8))(v7, v3);
}

uint64_t AirPodsCrashReport.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41B10, &qword_1D984E3E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v61 - v8;
  v149 = 1;
  v148 = 1;
  v145 = 1;
  v142 = 1;
  v10 = a1[3];
  v11 = a1[4];
  v77 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_1D9833BEC();
  sub_1D984A6F4();
  if (v2)
  {
    v150 = v2;
    v88 = 0;
    v89 = 0uLL;
    v74 = 0uLL;
    v75 = 0uLL;
    v76 = 0;
    v86 = 0;
    v87 = 0;
    v84 = 0;
    v85 = 0;
    v82 = 0;
    v83 = 0;
    v80 = 0;
    v81 = 0;
    v72 = 0;
    v73 = 0;
    v78 = 0;
    v79 = 0x6F69647561;
    v12 = 3485747;
    v13 = 3157553;
    v15 = 0xE300000000000000;
    v16 = 0xE200000000000000;
    v17 = 0xE500000000000000;
    v18 = 2;
    v19 = 21333;
    v20 = 0xE300000000000000;
  }

  else
  {
    LOBYTE(v105) = 0;
    v14 = sub_1D984A4B4();
    v70 = v23;
    v71 = v14;
    LOBYTE(v105) = 1;
    *&v69 = sub_1D984A444();
    *(&v69 + 1) = v24;
    LOBYTE(v105) = 2;
    v25 = sub_1D984A444();
    v67 = v26;
    v68 = v25;
    LOBYTE(v105) = 3;
    v27 = sub_1D984A444();
    v150 = 0;
    v66 = v28;
    v79 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41AE8, &qword_1D984E3D0);
    LOBYTE(v90[0]) = 4;
    sub_1D9833D18(&qword_1ECB41B18);
    v29 = v150;
    sub_1D984A464();
    if (v29)
    {
      v150 = v29;
      (*(v6 + 8))(v9, v5);
      v88 = 0;
      v89 = 0uLL;
      v74 = 0uLL;
      v75 = 0uLL;
      v76 = 0;
      v78 = 0;
      v86 = 0;
      v87 = 0;
      v84 = 0;
      v85 = 0;
      v82 = 0;
      v83 = 0;
      v80 = 0;
      v81 = 0;
      v72 = 0;
      v73 = 0;
      v18 = 2;
      v20 = v70;
      v12 = v71;
      v13 = v68;
      v16 = *(&v69 + 1);
      v19 = v69;
      v17 = v66;
      v15 = v67;
    }

    else
    {
      v30 = v105;
      LOBYTE(v105) = 5;
      v31 = sub_1D984A494();
      v78 = v30;
      v76 = v31;
      v149 = BYTE4(v31) & 1;
      LOBYTE(v105) = 6;
      v65 = sub_1D984A454();
      LOBYTE(v105) = 7;
      *&v75 = sub_1D984A444();
      *(&v75 + 1) = v32;
      LOBYTE(v105) = 8;
      v33 = sub_1D984A444();
      v150 = 0;
      *&v74 = v33;
      *(&v74 + 1) = v34;
      LOBYTE(v105) = 9;
      *&v89 = sub_1D984A444();
      *(&v89 + 1) = v35;
      v150 = 0;
      LOBYTE(v105) = 10;
      v36 = sub_1D984A444();
      v87 = v37;
      v88 = v36;
      v150 = 0;
      LOBYTE(v105) = 11;
      v38 = sub_1D984A444();
      v85 = v39;
      v86 = v38;
      v150 = 0;
      LOBYTE(v105) = 12;
      v84 = sub_1D984A494();
      v150 = 0;
      v148 = BYTE4(v84) & 1;
      LOBYTE(v105) = 13;
      v40 = sub_1D984A444();
      v82 = v41;
      v83 = v40;
      v150 = 0;
      LOBYTE(v105) = 14;
      v81 = sub_1D984A494();
      v150 = 0;
      v145 = BYTE4(v81) & 1;
      LOBYTE(v105) = 15;
      v80 = sub_1D984A494();
      v150 = 0;
      v142 = BYTE4(v80) & 1;
      LOBYTE(v105) = 16;
      v42 = sub_1D984A444();
      v72 = v43;
      v73 = v42;
      v150 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41AF8, &qword_1D984E3D8);
      v103 = 17;
      sub_1D9833D84();
      v44 = v150;
      sub_1D984A4D4();
      v150 = v44;
      if (!v44)
      {
        (*(v6 + 8))(v9, v5);
        v62 = v104;
        *&v90[0] = v71;
        *(&v90[0] + 1) = v70;
        v90[1] = v69;
        *&v91 = v68;
        *(&v91 + 1) = v67;
        *&v92 = v79;
        *(&v92 + 1) = v66;
        *&v93 = v78;
        DWORD2(v93) = v76;
        v64 = v149;
        BYTE12(v93) = v149;
        BYTE13(v93) = v65;
        v94 = v75;
        v95 = v74;
        v96 = v89;
        *&v97 = v88;
        *(&v97 + 1) = v87;
        *&v98 = v86;
        *(&v98 + 1) = v85;
        LODWORD(v99) = v84;
        v63 = v148;
        BYTE4(v99) = v148;
        *(&v99 + 5) = v146;
        BYTE7(v99) = v147;
        *(&v99 + 1) = v83;
        *&v100 = v82;
        v46 = v80;
        v45 = v81;
        DWORD2(v100) = v81;
        *(&v100 + 13) = v143;
        *(&v101 + 5) = v140;
        v47 = v145;
        BYTE12(v100) = v145;
        HIBYTE(v100) = v144;
        LODWORD(v101) = v80;
        BYTE7(v101) = v141;
        v48 = v142;
        BYTE4(v101) = v142;
        v49 = v72;
        v50 = v73;
        *(&v101 + 1) = v73;
        *&v102 = v72;
        *(&v102 + 1) = v104;
        v51 = v69;
        *a2 = v90[0];
        a2[1] = v51;
        v52 = v91;
        v53 = v92;
        v54 = v94;
        a2[4] = v93;
        a2[5] = v54;
        a2[2] = v52;
        a2[3] = v53;
        v55 = v95;
        v56 = v96;
        v57 = v98;
        a2[8] = v97;
        a2[9] = v57;
        a2[6] = v55;
        a2[7] = v56;
        v58 = v99;
        v59 = v100;
        v60 = v102;
        a2[12] = v101;
        a2[13] = v60;
        a2[10] = v58;
        a2[11] = v59;
        sub_1D9833438(v90, &v105);
        __swift_destroy_boxed_opaque_existential_1Tm(v77);
        v105 = v71;
        v106 = v70;
        v107 = v69;
        v108 = v68;
        v109 = v67;
        v110 = v79;
        v111 = v66;
        v112 = v78;
        v113 = v76;
        v114 = v64;
        v115 = v65;
        v116 = v75;
        v117 = v74;
        v118 = v89;
        v119 = v88;
        v120 = v87;
        v121 = v86;
        v122 = v85;
        v123 = v84;
        v124 = v63;
        v125 = v146;
        v126 = v147;
        v127 = v83;
        v128 = v82;
        v129 = v45;
        v130 = v47;
        v131 = v143;
        v132 = v144;
        v133 = v46;
        v134 = v48;
        v136 = v141;
        v135 = v140;
        v137 = v50;
        v138 = v49;
        v21 = v62;
        goto LABEL_5;
      }

      (*(v6 + 8))(v9, v5);
      v20 = v70;
      v12 = v71;
      v13 = v68;
      v16 = *(&v69 + 1);
      v19 = v69;
      v17 = v66;
      v15 = v67;
      v18 = v65;
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v77);
  v105 = v12;
  v106 = v20;
  *&v107 = v19;
  *(&v107 + 1) = v16;
  v108 = v13;
  v109 = v15;
  v110 = v79;
  v111 = v17;
  v112 = v78;
  v113 = v76;
  v114 = v149;
  v115 = v18;
  v116 = v75;
  v117 = v74;
  v118 = v89;
  v119 = v88;
  v120 = v87;
  v121 = v86;
  v122 = v85;
  v123 = v84;
  v124 = v148;
  v125 = v146;
  v126 = v147;
  v127 = v83;
  v128 = v82;
  v129 = v81;
  v130 = v145;
  v131 = v143;
  v132 = v144;
  v133 = v80;
  v134 = v142;
  v136 = v141;
  v135 = v140;
  v137 = v73;
  v138 = v72;
  v21 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v139 = v21;
  return sub_1D9833470(&v105);
}

AirPodsCrashReportObjc __swiftcall AirPodsCrashReportObjc.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

char *sub_1D98324D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41C10, &qword_1D984E818);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1D98325E0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 24);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[24 * v10])
    {
      memmove(v14, v15, 24 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_1D9832700(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41BF8, &qword_1D984E800);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1D98327F4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41BE8, &qword_1D984E7F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41BF0, &qword_1D984E7F8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D9832944(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41C48, &unk_1D984E840);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D9832A64(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41C40, &qword_1D984E838);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D9832B8C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41B88, &qword_1D984E788);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D9832C98(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41C28, &qword_1D984E830);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D9832DC0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41BA0, &qword_1D984E7A0);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1D9832ECC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41BD0, &unk_1D984E7D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 216);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[216 * v8])
    {
      memmove(v12, v13, 216 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D9832FF4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41BA8, &qword_1D984E7A8);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

size_t sub_1D9833114(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_1D98332F0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41B90, &qword_1D984E790);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41B98, &qword_1D984E798);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1D98334A0()
{
  result = qword_1ECB41AC0;
  if (!qword_1ECB41AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41AC0);
  }

  return result;
}

void sub_1D98334F4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25[2] = *MEMORY[0x1E69E9840];
  v5 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v5)
    {
      v25[0] = a1;
      LOWORD(v25[1]) = a2;
      BYTE2(v25[1]) = BYTE2(a2);
      BYTE3(v25[1]) = BYTE3(a2);
      BYTE4(v25[1]) = BYTE4(a2);
      BYTE5(v25[1]) = BYTE5(a2);
      v6 = v25 + BYTE6(a2);
      v7 = v25;
      goto LABEL_24;
    }

    v19 = a1;
    v20 = (a1 >> 32) - a1;
    if (a1 >> 32 >= a1)
    {
      v8 = a3;
      v9 = a4;
      v10 = a5;
      v13 = sub_1D98498C4();
      if (!v13)
      {
        goto LABEL_16;
      }

      v21 = sub_1D98498E4();
      if (!__OFSUB__(v19, v21))
      {
        v13 += v19 - v21;
LABEL_16:
        v22 = sub_1D98498D4();
        if (v22 >= v20)
        {
          v18 = v20;
        }

        else
        {
          v18 = v22;
        }

        goto LABEL_19;
      }

LABEL_28:
      __break(1u);
    }

    __break(1u);
    goto LABEL_26;
  }

  if (v5 != 2)
  {
    memset(v25, 0, 14);
    v7 = v25;
    v6 = v25;
    goto LABEL_24;
  }

  v8 = a3;
  v9 = a4;
  v10 = a5;
  v12 = *(a1 + 16);
  v11 = *(a1 + 24);
  v13 = sub_1D98498C4();
  if (v13)
  {
    v14 = sub_1D98498E4();
    if (__OFSUB__(v12, v14))
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v13 += v12 - v14;
  }

  v15 = __OFSUB__(v11, v12);
  v16 = v11 - v12;
  if (v15)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v17 = sub_1D98498D4();
  if (v17 >= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

LABEL_19:
  v23 = (v18 + v13);
  if (v13)
  {
    v6 = v23;
  }

  else
  {
    v6 = 0;
  }

  v7 = v13;
  a3 = v8;
  a4 = v9;
  a5 = v10;
LABEL_24:
  sub_1D982A784(v7, v6, a3, a4, a5);
  v24 = *MEMORY[0x1E69E9840];
}

unint64_t sub_1D98336F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41C00, &qword_1D984E808);
    v3 = sub_1D984A3F4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1D98447E4(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D98337FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41AA8, &qword_1D984FFF0);
    v3 = sub_1D984A3F4();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D981A480(v4, &v13, &qword_1ECB41A80, &qword_1D984E780);
      v5 = v13;
      v6 = v14;
      result = sub_1D98447E4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1D982799C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D983392C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41BE0, &qword_1D984E7E8);
    v3 = sub_1D984A3F4();

    for (i = (a1 + 72); ; i += 6)
    {
      v5 = *(i - 5);
      v6 = *(i - 4);
      v8 = *(i - 3);
      v7 = *(i - 2);
      v10 = *(i - 1);
      v9 = *i;

      result = sub_1D98447E4(v5, v6);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 16 * result);
      *v13 = v5;
      v13[1] = v6;
      v14 = (v3[7] + 32 * result);
      *v14 = v8;
      v14[1] = v7;
      v14[2] = v10;
      v14[3] = v9;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9833A4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41BC8, &qword_1D984E7C8);
    v3 = sub_1D984A3F4();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D981A480(v4, v13, &qword_1ECB41AD0, &qword_1D984E3C0);
      result = sub_1D984485C(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1D982799C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1D9833B88(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = sub_1D98499F4();
  [a1 writeData_];
}

unint64_t sub_1D9833BEC()
{
  result = qword_1ECB41AE0;
  if (!qword_1ECB41AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41AE0);
  }

  return result;
}

unint64_t sub_1D9833C40()
{
  result = qword_1ECB41B00;
  if (!qword_1ECB41B00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB41AF8, &qword_1D984E3D8);
    sub_1D9833CC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41B00);
  }

  return result;
}

unint64_t sub_1D9833CC4()
{
  result = qword_1ECB41B08;
  if (!qword_1ECB41B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41B08);
  }

  return result;
}

uint64_t sub_1D9833D18(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB41AE8, &qword_1D984E3D0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D9833D84()
{
  result = qword_1ECB41B20;
  if (!qword_1ECB41B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB41AF8, &qword_1D984E3D8);
    sub_1D9833E08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41B20);
  }

  return result;
}

unint64_t sub_1D9833E08()
{
  result = qword_1ECB41B28;
  if (!qword_1ECB41B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41B28);
  }

  return result;
}

unint64_t sub_1D9833E5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41BB0, &qword_1D984E7B0);
    v3 = sub_1D984A3F4();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1D98447E4(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9833F70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41B80, &unk_1D984E770);
    v3 = sub_1D984A3F4();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1D98447E4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1D983406C(uint64_t result, uint64_t *a2)
{
  if (*(result + 16))
  {
    v3 = result;
    result = sub_1D98447E4(0x6B63617473, 0xE500000000000000);
    if (v4)
    {
      sub_1D981B108(*(v3 + 56) + 32 * result, v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB419A0, &qword_1D984E058);
      result = swift_dynamicCast();
      if (result)
      {
        if (*(v3 + 16) && (v5 = sub_1D98447E4(0xD000000000000011, 0x80000001D9853730), (v6 & 1) != 0) && (sub_1D981B108(*(v3 + 56) + 32 * v5, v11), swift_dynamicCast()))
        {
          v7 = a2[11];
          v8 = a2[12];
          result = sub_1D98383B4(a2[10]);
          a2[10] = v9;
          a2[11] = v9;
          a2[12] = v10;
        }

        else
        {
        }
      }
    }
  }

  return result;
}

unint64_t sub_1D9834188(unint64_t result, uint64_t a2)
{
  if (*(result + 16))
  {
    v3 = result;
    result = sub_1D98447E4(1684632949, 0xE400000000000000);
    if (v4)
    {
      sub_1D981B108(*(v3 + 56) + 32 * result, v8);
      result = swift_dynamicCast();
      if (result)
      {
        v5 = *(a2 + 56);

        *(a2 + 48) = v6;
        *(a2 + 56) = v7;
      }
    }
  }

  return result;
}

uint64_t sub_1D9834220(uint64_t result, uint64_t a2)
{
  if (*(result + 16))
  {
    v3 = result;
    result = sub_1D98447E4(0x736B736174, 0xE500000000000000);
    if (v4)
    {
      sub_1D981B108(*(v3 + 56) + 32 * result, v24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41AA0, &qword_1D984E378);
      result = swift_dynamicCast();
      if (result)
      {
        v5 = v22;
        v6 = *(v22 + 16);
        if (v6)
        {
          v7 = 32;
          do
          {
            v9 = *(v5 + v7);
            v10 = *(v9 + 16);

            if (v10 && (v11 = sub_1D98447E4(0x7470697263736564, 0xEB000000006E6F69), (v12 & 1) != 0) && (sub_1D981B108(*(v9 + 56) + 32 * v11, v24), (swift_dynamicCast() & 1) != 0))
            {
              v14 = v22;
              v13 = v23;
              if (!*(v9 + 16))
              {
                goto LABEL_18;
              }
            }

            else
            {
              v14 = 0;
              v13 = 0;
              if (!*(v9 + 16))
              {
                goto LABEL_18;
              }
            }

            v15 = sub_1D98447E4(0x6B63617473, 0xE500000000000000);
            if ((v16 & 1) == 0)
            {
LABEL_18:

              goto LABEL_19;
            }

            sub_1D981B108(*(v9 + 56) + 32 * v15, v24);

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB419A0, &qword_1D984E058);
            if (swift_dynamicCast())
            {
              v17 = v22;
              if (v13 | v22)
              {
                goto LABEL_20;
              }

              goto LABEL_7;
            }

LABEL_19:
            v17 = 0;
            if (v13)
            {
LABEL_20:
              v18 = *(a2 + 104);
              if (v18)
              {

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v18 = sub_1D9832944(0, *(v18 + 2) + 1, 1, v18);
                }

                v20 = *(v18 + 2);
                v19 = *(v18 + 3);
                if (v20 >= v19 >> 1)
                {
                  v18 = sub_1D9832944((v19 > 1), v20 + 1, 1, v18);
                }

                *(v18 + 2) = v20 + 1;
                v21 = &v18[24 * v20];
                *(v21 + 4) = v14;
                *(v21 + 5) = v13;
                *(v21 + 6) = v17;
                *(a2 + 104) = v18;
                v5 = v22;
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41C48, &unk_1D984E840);
                v8 = swift_allocObject();
                *(v8 + 16) = xmmword_1D984E260;
                *(v8 + 32) = v14;
                *(v8 + 40) = v13;
                *(v8 + 48) = v17;
                *(a2 + 104) = v8;
              }
            }

LABEL_7:
            v7 += 8;
            --v6;
          }

          while (v6);
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D98344F8(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 16) || (v4 = sub_1D98447E4(0x7265747369676572, 0xE900000000000073), (v5 & 1) == 0) || (sub_1D981B108(*(a1 + 56) + 32 * v4, v40), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41AE8, &qword_1D984E3D0), (swift_dynamicCast() & 1) == 0))
  {
    v41 = 0;
  }

  if (!*(a1 + 16) || (v6 = sub_1D98447E4(0x2D786F626C69616DLL, 0xED0000726F727265), (v7 & 1) == 0) || (sub_1D981B108(*(a1 + 56) + 32 * v6, v40), (swift_dynamicCast() & 1) == 0))
  {
    v38 = 0;
    v39 = 0;
  }

  if (!*(a1 + 16) || (v8 = sub_1D98447E4(0x756E2D6574756F72, 0xEC0000007265626DLL), (v9 & 1) == 0) || (sub_1D981B108(*(a1 + 56) + 32 * v8, v40), (swift_dynamicCast() & 1) == 0))
  {
    v36 = 0;
    v37 = 0;
  }

  if (*(a1 + 16) && (v10 = sub_1D98447E4(6778732, 0xE300000000000000), (v11 & 1) != 0) && (sub_1D981B108(*(a1 + 56) + 32 * v10, v40), (swift_dynamicCast() & 1) != 0))
  {
    if (v41)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v34 = 0;
    v35 = 0;
    if (v41)
    {
LABEL_17:
      if (v39)
      {
        goto LABEL_18;
      }

      goto LABEL_27;
    }
  }

  if (qword_1ECB415C8 != -1)
  {
    swift_once();
  }

  v12 = sub_1D9849C54();
  __swift_project_value_buffer(v12, qword_1ECB47658);
  v13 = sub_1D9849C24();
  v14 = sub_1D984A124();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1D97FA000, v13, v14, "Invalid or missing Mailbox registers", v15, 2u);
    MEMORY[0x1DA738F10](v15, -1, -1);
  }

  if (v39)
  {
LABEL_18:
    if (v37)
    {
      goto LABEL_19;
    }

    goto LABEL_32;
  }

LABEL_27:
  if (qword_1ECB415C8 != -1)
  {
    swift_once();
  }

  v16 = sub_1D9849C54();
  __swift_project_value_buffer(v16, qword_1ECB47658);
  v17 = sub_1D9849C24();
  v18 = sub_1D984A124();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1D97FA000, v17, v18, "Invalid or missing Mailbox error", v19, 2u);
    MEMORY[0x1DA738F10](v19, -1, -1);
  }

  if (v37)
  {
LABEL_19:
    if (v35)
    {
      goto LABEL_42;
    }

    goto LABEL_37;
  }

LABEL_32:
  if (qword_1ECB415C8 != -1)
  {
    swift_once();
  }

  v20 = sub_1D9849C54();
  __swift_project_value_buffer(v20, qword_1ECB47658);
  v21 = sub_1D9849C24();
  v22 = sub_1D984A124();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_1D97FA000, v21, v22, "Invalid or missing Mailbox route number", v23, 2u);
    MEMORY[0x1DA738F10](v23, -1, -1);
  }

  if (!v35)
  {
LABEL_37:
    if (qword_1ECB415C8 != -1)
    {
      swift_once();
    }

    v24 = sub_1D9849C54();
    __swift_project_value_buffer(v24, qword_1ECB47658);
    v25 = sub_1D9849C24();
    v26 = sub_1D984A124();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1D97FA000, v25, v26, "Invalid or missing Mailbox log", v27, 2u);
      MEMORY[0x1DA738F10](v27, -1, -1);
    }
  }

LABEL_42:
  v28 = v41;
  v29 = *(a2 + 112);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v29 = sub_1D9832A64(0, *(v29 + 2) + 1, 1, v29);
  }

  v31 = *(v29 + 2);
  v30 = *(v29 + 3);
  if (v31 >= v30 >> 1)
  {
    v29 = sub_1D9832A64((v30 > 1), v31 + 1, 1, v29);
  }

  *(v29 + 2) = v31 + 1;
  v32 = &v29[56 * v31];
  *(v32 + 4) = v28;
  *(v32 + 5) = v38;
  *(v32 + 6) = v39;
  *(v32 + 7) = v36;
  *(v32 + 8) = v37;
  *(v32 + 9) = v34;
  *(v32 + 10) = v35;
  *(a2 + 112) = v29;
}

unint64_t sub_1D9834AD0(unint64_t result, uint64_t a2)
{
  if (*(result + 16))
  {
    v3 = result;
    result = sub_1D98447E4(0x7265747369676572, 0xE900000000000073);
    if (v4)
    {
      sub_1D981B108(*(v3 + 56) + 32 * result, v8);
      result = swift_dynamicCast();
      if (result)
      {
        v5 = *(a2 + 128);

        *(a2 + 120) = v6;
        *(a2 + 128) = v7;
      }
    }
  }

  return result;
}

uint64_t sub_1D9834B74(uint64_t result, uint64_t a2, void *a3)
{
  v4 = result;
  if (*(result + 16))
  {
    result = sub_1D98447E4(0x656E696863614DLL, 0xE700000000000000);
    if (v5)
    {
      sub_1D981B108(*(v4 + 56) + 32 * result, &v19);
      result = swift_dynamicCast();
      if (result)
      {
        v6 = a3[11];

        a3[10] = v17;
        a3[11] = v18;
      }
    }
  }

  if (*(v4 + 16))
  {
    result = sub_1D98447E4(0x646C697542, 0xE500000000000000);
    if (v7)
    {
      sub_1D981B108(*(v4 + 56) + 32 * result, &v19);
      result = swift_dynamicCast();
      if (result)
      {
        v8 = a3[13];

        a3[12] = v17;
        a3[13] = v18;
      }
    }
  }

  if (*(v4 + 16))
  {
    result = sub_1D98447E4(0x697372657620534FLL, 0xEA00000000006E6FLL);
    if (v9)
    {
      sub_1D981B108(*(v4 + 56) + 32 * result, &v19);
      result = swift_dynamicCast();
      if (result)
      {
        v10 = a3[15];

        a3[14] = v17;
        a3[15] = v18;
        v19 = v17;
        v20 = v18;
        sub_1D9838360();
        v11 = sub_1D984A264();

        if (v11[2])
        {
          v12 = v11[4];
          v13 = v11[5];

          v19 = 0x20534F74694B5452;
          v20 = 0xE800000000000000;
          MEMORY[0x1DA737B20](v12, v13);

          v14 = v19;
          v15 = v20;
          v16 = a3[17];

          a3[16] = v14;
          a3[17] = v15;
        }

        else
        {
        }
      }
    }
  }

  return result;
}

unint64_t sub_1D9834DA0(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_1D9849EB4();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_1D9849F84();
}

uint64_t sub_1D9834E50(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 16))
  {
    v4 = result;
    result = sub_1D98447E4(0x73746E65746E6F63, 0xE800000000000000);
    if (v5)
    {
      sub_1D981B108(*(v4 + 56) + 32 * result, v20);
      result = swift_dynamicCast();
      if (result)
      {
        if (sub_1D9849F34())
        {
          v6 = sub_1D9849E94();
          v7 = sub_1D9834DA0(v6, v18, v19);
          v9 = v8;
          v11 = v10;
          v13 = v12;

          v14 = MEMORY[0x1DA737AC0](v7, v9, v11, v13);
          v16 = v15;

          v17 = *(a3 + 152);

          *(a3 + 144) = v14;
          *(a3 + 152) = v16;
        }

        else
        {
        }
      }
    }
  }

  return result;
}

void sub_1D9834F84(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 16))
  {
    return;
  }

  v4 = sub_1D98447E4(0x73746E65746E6F63, 0xE800000000000000);
  if ((v5 & 1) == 0)
  {
    return;
  }

  sub_1D981B108(*(a1 + 56) + 32 * v4, &v34);
  v6 = swift_dynamicCast();
  if ((v6 & 1) == 0)
  {
    return;
  }

  v8 = v32;
  v7 = v33;
  *&v34 = 58;
  *(&v34 + 1) = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v6);
  v30[2] = &v34;

  v10 = sub_1D9843CC4(0x7FFFFFFFFFFFFFFFLL, 1, sub_1D98382EC, v30, v32, v33, v9);
  v11 = *(v10 + 16);
  if (v11)
  {

    if (v11 <= *(v10 + 16))
    {
      v12 = v10 + 32 * v11;
      v31 = *v12;
      v14 = *(v12 + 16);
      v13 = *(v12 + 24);

      v34 = v31;
      v35 = v14;
      v36 = v13;
      v15 = sub_1D98498B4();
      v16 = *(v15 - 8);
      v17 = *(v16 + 64);
      MEMORY[0x1EEE9AC00](v15);
      v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_1D98498A4();
      sub_1D983830C();
      v20 = sub_1D984A274();
      v22 = v21;
      (*(v16 + 8))(v19, v15);

      v23 = *(a2 + 144);

      *(a2 + 136) = v20;
      *(a2 + 144) = v22;
      return;
    }

    __break(1u);
    goto LABEL_14;
  }

  if (qword_1ECB415C8 != -1)
  {
LABEL_14:
    swift_once();
  }

  v24 = sub_1D9849C54();
  __swift_project_value_buffer(v24, qword_1ECB47658);

  v25 = sub_1D9849C24();
  v26 = sub_1D984A124();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *&v34 = v28;
    *v27 = 136315138;
    v29 = sub_1D9819F0C(v8, v7, &v34);

    *(v27 + 4) = v29;
    _os_log_impl(&dword_1D97FA000, v25, v26, "Failed to parse heap usage from section contents: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    MEMORY[0x1DA738F10](v28, -1, -1);
    MEMORY[0x1DA738F10](v27, -1, -1);
  }

  else
  {
  }
}

unint64_t sub_1D98352F4(unint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 16))
  {
    v4 = result;
    result = sub_1D98447E4(1701669236, 0xE400000000000000);
    if (v5)
    {
      sub_1D981B108(*(v4 + 56) + 32 * result, v9);
      result = swift_dynamicCast();
      if (result)
      {
        v6 = *(a3 + 208);

        *(a3 + 200) = v7;
        *(a3 + 208) = v8;
      }
    }
  }

  return result;
}

void sub_1D983538C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 >> 60 != 15)
  {
    v12 = *(a1 + 16);
    sub_1D9826CDC(a2, a3);
    if (!v12 || (v13 = sub_1D98447E4(0x2D6E6F6974636573, 0xEE0074657366666FLL), (v14 & 1) == 0) || (sub_1D981B108(*(a1 + 56) + 32 * v13, v32), (swift_dynamicCast() & 1) == 0))
    {
      if (qword_1ECB415C8 != -1)
      {
        swift_once();
      }

      v20 = sub_1D9849C54();
      __swift_project_value_buffer(v20, qword_1ECB47658);
      v21 = sub_1D9849C24();
      v22 = sub_1D984A124();
      if (!os_log_type_enabled(v21, v22))
      {
        goto LABEL_26;
      }

      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = "Offset section not available to decode MTBF";
      goto LABEL_25;
    }

    if (!*(a1 + 16) || (v15 = sub_1D98447E4(0x2D6E6F6974636573, 0xEC000000657A6973), (v16 & 1) == 0) || (sub_1D981B108(*(a1 + 56) + 32 * v15, v32), (swift_dynamicCast() & 1) == 0))
    {
      if (qword_1ECB415C8 != -1)
      {
        swift_once();
      }

      v25 = sub_1D9849C54();
      __swift_project_value_buffer(v25, qword_1ECB47658);
      v21 = sub_1D9849C24();
      v22 = sub_1D984A124();
      if (!os_log_type_enabled(v21, v22))
      {
        goto LABEL_26;
      }

      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = "Size section not available to decode MTBF";
      goto LABEL_25;
    }

    if (v31 >= 1 && (v31 & 0x8000000000000000) == 0)
    {
      v17 = 2 * v31;
      if (__OFADD__(v31, v31))
      {
        __break(1u);
        goto LABEL_45;
      }

      v18 = a3 >> 62;
      if ((a3 >> 62) <= 1)
      {
        if (!v18)
        {
          v19 = BYTE6(a3);
          goto LABEL_37;
        }

LABEL_35:
        LODWORD(v19) = HIDWORD(a2) - a2;
        if (!__OFSUB__(HIDWORD(a2), a2))
        {
          v19 = v19;
          goto LABEL_37;
        }

LABEL_45:
        __break(1u);
        return;
      }

      if (v18 == 2)
      {
        v27 = *(a2 + 16);
        v26 = *(a2 + 24);
        v28 = __OFSUB__(v26, v27);
        v19 = v26 - v27;
        if (!v28)
        {
LABEL_37:
          if (v17 < v19)
          {
LABEL_38:
            sub_1D98334F4(a2, a3, v31, v31, a5);
            sub_1D98279AC(a2, a3);
            return;
          }

          goto LABEL_40;
        }

        __break(1u);
        goto LABEL_35;
      }

      if (v17 < 0)
      {
        goto LABEL_38;
      }
    }

LABEL_40:
    if (qword_1ECB415C8 != -1)
    {
      swift_once();
    }

    v29 = sub_1D9849C54();
    __swift_project_value_buffer(v29, qword_1ECB47658);
    v21 = sub_1D9849C24();
    v22 = sub_1D984A124();
    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_26;
    }

    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = "Invalid MTBF section offset and size";
LABEL_25:
    _os_log_impl(&dword_1D97FA000, v21, v22, v24, v23, 2u);
    MEMORY[0x1DA738F10](v23, -1, -1);
LABEL_26:
    sub_1D98279AC(a2, a3);

    return;
  }

  if (qword_1ECB415C8 != -1)
  {
    swift_once();
  }

  v5 = sub_1D9849C54();
  __swift_project_value_buffer(v5, qword_1ECB47658);
  oslog = sub_1D9849C24();
  v6 = sub_1D984A124();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1D97FA000, oslog, v6, "Binary not available to decode MTBF", v7, 2u);
    MEMORY[0x1DA738F10](v7, -1, -1);
  }
}

uint64_t sub_1D9835804(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41E10, &qword_1D984F4A0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10[-v6];
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_1D9839B5C();
  sub_1D984A6F4();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB419A0, &qword_1D984E058);
    v10[7] = 0;
    sub_1D98245F8(&qword_1ECB419A8);
    sub_1D984A4D4();
    v8 = v11;
    v10[6] = 1;
    sub_1D984A4B4();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v8;
}

uint64_t sub_1D9835A2C()
{
  v0 = sub_1D984A414();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D9835A78@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41D08, &qword_1D984ED48);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v27 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9838F00();
  sub_1D984A6F4();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41AE8, &qword_1D984E3D0);
    v35 = 0;
    sub_1D9833D18(&qword_1ECB41B18);
    sub_1D984A464();
    v11 = v36;
    v34 = 1;
    v12 = sub_1D984A444();
    v14 = v13;
    v30 = v12;
    v31 = a2;
    v33 = 2;
    v15 = sub_1D984A444();
    v17 = v16;
    v29 = v15;
    v32 = 3;
    v18 = sub_1D984A444();
    v20 = v19;
    v21 = *(v6 + 8);
    v28 = v18;
    v21(v9, v5);

    __swift_destroy_boxed_opaque_existential_1Tm(a1);

    v24 = v30;
    v23 = v31;
    *v31 = v11;
    v23[1] = v24;
    v25 = v28;
    v26 = v29;
    v23[2] = v14;
    v23[3] = v26;
    v23[4] = v17;
    v23[5] = v25;
    v23[6] = v20;
  }

  return result;
}

uint64_t sub_1D9835DB0(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41CF0, &qword_1D984ED38);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9838EAC();
  sub_1D984A6F4();
  if (!v1)
  {
    v10[31] = 0;
    v8 = sub_1D984A444();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB419A0, &qword_1D984E058);
    v10[15] = 1;
    sub_1D98245F8(&qword_1ECB419A8);
    sub_1D984A464();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v8;
}

uint64_t sub_1D9835FB4()
{
  v0 = sub_1D984A414();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1D9836000(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41E18, &qword_1D984F4A8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9839BB0();
  sub_1D984A6F4();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v14[31] = 0;
  v9 = sub_1D984A484();
  v14[30] = 1;
  v10 = sub_1D984A484();
  v14[29] = 2;
  v11 = sub_1D984A484();
  v14[28] = 3;
  v12 = sub_1D984A484();
  (*(v4 + 8))(v7, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v14[26] = BYTE2(v9) & 1;
  v14[24] = BYTE2(v10) & 1;
  v14[14] = BYTE2(v11) & 1;
  v14[12] = BYTE2(v12) & 1;
  return (v10 << 32) | ((BYTE2(v10) & 1) << 48) | ((BYTE2(v9) & 1) << 16) | v9;
}

uint64_t sub_1D9836254()
{
  v0 = sub_1D984A414();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}
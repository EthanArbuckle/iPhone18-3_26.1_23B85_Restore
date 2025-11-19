uint64_t KoreaFeatureFlag.hashValue.getter()
{
  sub_24A82DCC4();
  MEMORY[0x24C21D5E0](0);
  return sub_24A82DD24();
}

unint64_t sub_24A7AC300()
{
  result = qword_27EF5EBA8;
  if (!qword_27EF5EBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EBA8);
  }

  return result;
}

uint64_t sub_24A7AC364()
{
  v0 = sub_24A82C574();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_24A82C564();
  qword_27EF5EBB0 = result;
  return result;
}

uint64_t static FMIPDemoContent.load(from:)()
{
  result = sub_24A82C8C4();
  if (!v0)
  {
    v3 = v2;
    v4 = result;
    if (qword_27EF5CC00 != -1)
    {
      swift_once();
    }

    sub_24A7AC468();
    sub_24A82C554();
    sub_24A67E0F0(v4, v3);
    return v5;
  }

  return result;
}

unint64_t sub_24A7AC468()
{
  result = qword_27EF5EBB8;
  if (!qword_27EF5EBB8)
  {
    type metadata accessor for FMIPDemoContent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EBB8);
  }

  return result;
}

uint64_t sub_24A7AC4E0()
{
  if (*v0)
  {
    result = 0x73656369766564;
  }

  else
  {
    result = 0x654D796C696D6166;
  }

  *v0;
  return result;
}

uint64_t sub_24A7AC528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x654D796C696D6166 && a2 == 0xED0000737265626DLL;
  if (v6 || (sub_24A82DC04() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73656369766564 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24A82DC04();

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

uint64_t sub_24A7AC60C(uint64_t a1)
{
  v2 = sub_24A7AC9D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A7AC648(uint64_t a1)
{
  v2 = sub_24A7AC9D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMIPDemoContent.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t FMIPDemoContent.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t FMIPDemoContent.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  FMIPDemoContent.init(from:)(a1);
  return v2;
}

uint64_t FMIPDemoContent.init(from:)(uint64_t *a1)
{
  v4 = sub_24A6BBA94(&qword_27EF5EBC0, &qword_24A83AE28);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = a1[4];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A7AC9D4();
  sub_24A82DD64();
  if (v2)
  {
    type metadata accessor for FMIPDemoContent();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_24A6BBA94(&qword_27EF5EBD0, &qword_24A83AE30);
    v12 = 0;
    sub_24A7ACA7C(&qword_27EF5EBD8, &qword_27EF5EBD0, &qword_24A83AE30, sub_24A7ACA28);
    sub_24A82DA84();
    *(v1 + 16) = v13;
    sub_24A6BBA94(&qword_27EF5EBE8, &qword_24A83AE38);
    v12 = 1;
    sub_24A7ACA7C(&qword_27EF5EBF0, &qword_27EF5EBE8, &qword_24A83AE38, sub_24A7ACAF8);
    sub_24A82DA84();
    (*(v5 + 8))(v8, v4);
    *(v1 + 24) = v13;
  }

  sub_24A6876E8(a1);
  return v1;
}

unint64_t sub_24A7AC9D4()
{
  result = qword_27EF5EBC8;
  if (!qword_27EF5EBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EBC8);
  }

  return result;
}

unint64_t sub_24A7ACA28()
{
  result = qword_27EF5EBE0;
  if (!qword_27EF5EBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EBE0);
  }

  return result;
}

uint64_t sub_24A7ACA7C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_24A6CCDC0(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24A7ACAF8()
{
  result = qword_27EF5EBF8;
  if (!qword_27EF5EBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EBF8);
  }

  return result;
}

uint64_t sub_24A7ACB4C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for FMIPDemoContent();
  v5 = swift_allocObject();
  result = FMIPDemoContent.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_24A7ACBF8()
{
  result = qword_27EF5EC00;
  if (!qword_27EF5EC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EC00);
  }

  return result;
}

unint64_t sub_24A7ACC50()
{
  result = qword_27EF5EC08;
  if (!qword_27EF5EC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EC08);
  }

  return result;
}

unint64_t sub_24A7ACCA8()
{
  result = qword_27EF5EC10;
  if (!qword_27EF5EC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EC10);
  }

  return result;
}

char sub_24A7ACCFC@<W0>(char *a1@<X8>)
{
  v3 = sub_24A6BBA94(&qword_27EF5DE48, &unk_24A8367C0);
  v4 = *(*(v3 - 8) + 64);
  result = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v13 - v6;
  v8 = *(v1 + 56);
  if (!v8 || !*(v8 + 16))
  {
    goto LABEL_7;
  }

  v9 = type metadata accessor for FMIPDevice();
  sub_24A77B054(v8 + *(v9 + 124) + ((*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80)), v7);
  v10 = type metadata accessor for FMIPEraseMetadata();
  if ((*(*(v10 - 8) + 48))(v7, 1, v10) == 1)
  {
    result = sub_24A77B0C4(v7);
LABEL_7:
    v12 = 0;
    goto LABEL_8;
  }

  v11 = *v7;
  sub_24A77B12C(v7);
  result = FMIPActionStatus.init(rawValue:)(qword_24A83AFE8[v11]).value;
  v12 = v14;
  if (v14 == 12)
  {
    v12 = 2;
    goto LABEL_8;
  }

  if (v14 == 18)
  {
    goto LABEL_7;
  }

LABEL_8:
  *a1 = v12;
  return result;
}

uint64_t sub_24A7ACEB4(uint64_t *a1)
{
  sub_24A698230(a1, v15);
  v3 = sub_24A6F5EE8(v15);
  if (!v1)
  {
    v4 = qword_281515DC8;

    if (v4 != -1)
    {
      swift_once();
    }

    v5 = sub_24A82CDC4();
    sub_24A6797D0(v5, qword_281518F88);

    v6 = sub_24A82CD94();
    v7 = sub_24A82D504();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15[0] = v9;
      *v8 = 136315138;
      v10 = sub_24A6F6244();
      v12 = v11;

      v13 = sub_24A68761C(v10, v12, v15);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_24A675000, v6, v7, "FMIPCancelEraseResponse: initialized with coder %s", v8, 0xCu);
      sub_24A6876E8(v9);
      MEMORY[0x24C21E1D0](v9, -1, -1);
      MEMORY[0x24C21E1D0](v8, -1, -1);
    }

    else
    {
    }
  }

  sub_24A6876E8(a1);
  return v3;
}

uint64_t type metadata accessor for FMIPSiriBaseRequest()
{
  result = qword_281515030;
  if (!qword_281515030)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A7AD14C()
{
  v14[4] = *MEMORY[0x277D85DE8];
  v1 = objc_opt_self();
  v2 = qword_281515058;
  swift_beginAccess();
  v3 = *(v0 + v2);

  v4 = sub_24A82CED4();

  LODWORD(v3) = [v1 isValidJSONObject_];

  if (!v3)
  {
    goto LABEL_5;
  }

  v5 = *(v0 + v2);

  v6 = sub_24A82CED4();

  v14[0] = 0;
  v7 = [v1 dataWithJSONObject:v6 options:0 error:v14];

  v8 = v14[0];
  if (!v7)
  {
    v11 = v8;
    v12 = sub_24A82C7F4();

    swift_willThrow();
LABEL_5:
    result = 0;
    goto LABEL_6;
  }

  v9 = sub_24A82C904();

  result = v9;
LABEL_6:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24A7AD2E4()
{
  v1 = qword_281515058;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!*(v2 + 16))
  {
    goto LABEL_6;
  }

  v3 = sub_24A6A2D48(0x6F43746E65696C63, 0xED0000747865746ELL);
  if ((v4 & 1) == 0)
  {

    goto LABEL_6;
  }

  sub_24A67E168(*(v2 + 56) + 32 * v3, v9);

  sub_24A6BBA94(&qword_27EF5D930, &qword_24A83B150);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v6 = sub_24A6BBA94(&qword_27EF5D930, &qword_24A83B150);
    v5 = MEMORY[0x277D84F98];
    v9[3] = v6;
    v9[0] = MEMORY[0x277D84F98];
    swift_beginAccess();
    sub_24A6A61DC(v9, 0x6F43746E65696C63, 0xED0000747865746ELL);
    swift_endAccess();
    return v5;
  }

  return v8;
}

uint64_t sub_24A7AD434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v60 = a3;
  v61 = a4;
  v7 = sub_24A82CB44();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (v4 + qword_281515048);
  *v12 = 0xD000000000000017;
  v12[1] = 0x800000024A8489C0;
  v13 = MEMORY[0x277D84F98];
  *(v4 + qword_281515058) = MEMORY[0x277D84F98];
  *(v4 + qword_281515050) = v13;
  v14 = (v4 + qword_281515040);
  *v14 = 0;
  v14[1] = 0;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v15 = sub_24A82CDC4();
  v62 = sub_24A6797D0(v15, qword_281518F88);
  v16 = sub_24A82CD94();
  v17 = sub_24A82D504();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v59 = v11;
    v19 = v8;
    v20 = a2;
    v21 = v7;
    v22 = a1;
    v23 = v18;
    *v18 = 0;
    _os_log_impl(&dword_24A675000, v16, v17, "FMIPSiriBaseRequest: initialized", v18, 2u);
    v24 = v23;
    a1 = v22;
    v7 = v21;
    a2 = v20;
    v8 = v19;
    v11 = v59;
    MEMORY[0x24C21E1D0](v24, -1, -1);
  }

  v25 = v14[1];
  v26 = v61;
  *v14 = v60;
  v14[1] = v26;

  v27 = v12[1];
  v63[0] = *v12;
  v63[1] = v27;

  MEMORY[0x24C21C9E0](a1, a2);

  v28 = sub_24A82CB64();
  (*(v8 + 104))(v11, *MEMORY[0x277D07D00], v7);
  swift_retain_n();
  sub_24A82CB54();
  sub_24A7ADA5C();
  sub_24A7ADD1C();
  v29 = sub_24A82CD94();
  v30 = sub_24A82D4D4();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v63[0] = v32;
    *v31 = 136315138;
    v33 = qword_281515050;
    swift_beginAccess();
    v34 = *(v28 + v33);

    v35 = sub_24A82CF04();
    v37 = v36;

    v38 = sub_24A68761C(v35, v37, v63);

    *(v31 + 4) = v38;
    _os_log_impl(&dword_24A675000, v29, v30, "FMIP Siri Request Headers: %s", v31, 0xCu);
    sub_24A6876E8(v32);
    MEMORY[0x24C21E1D0](v32, -1, -1);
    MEMORY[0x24C21E1D0](v31, -1, -1);
  }

  v39 = sub_24A82CD94();
  v40 = sub_24A82D4D4();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v63[0] = v42;
    *v41 = 136315138;
    sub_24A7AD2E4();
    v43 = sub_24A82CF04();
    v45 = v44;

    v46 = sub_24A68761C(v43, v45, v63);

    *(v41 + 4) = v46;
    _os_log_impl(&dword_24A675000, v39, v40, "FMIP Siri Request ClientContext: %s", v41, 0xCu);
    sub_24A6876E8(v42);
    MEMORY[0x24C21E1D0](v42, -1, -1);
    MEMORY[0x24C21E1D0](v41, -1, -1);
  }

  v47 = sub_24A82CD94();
  v48 = sub_24A82D4D4();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v64 = v50;
    *v49 = 136315138;
    v51 = qword_281515058;
    swift_beginAccess();
    v52 = *(v28 + v51);

    v53 = sub_24A82CF04();
    v55 = v54;

    v56 = sub_24A68761C(v53, v55, &v64);

    *(v49 + 4) = v56;
    _os_log_impl(&dword_24A675000, v47, v48, "FMIP Siri Request Body: %s", v49, 0xCu);
    sub_24A6876E8(v50);
    MEMORY[0x24C21E1D0](v50, -1, -1);
    MEMORY[0x24C21E1D0](v49, -1, -1);
  }

  return v28;
}

uint64_t sub_24A7ADA5C()
{
  v1 = v0;
  v2 = [objc_opt_self() sharedInstance];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  v5 = v2;
  sub_24A82D854();

  strcpy(v16, "FMIPCore/1.0 ");
  HIWORD(v16[1]) = -4864;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_24A7AE61C;
  *(v6 + 24) = v3;

  sub_24A6BBA94(&qword_27EF5EC18, qword_24A83B158);
  v7 = sub_24A82D024();
  MEMORY[0x24C21C9E0](v7);

  MEMORY[0x24C21C9E0](47, 0xE100000000000000);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_24A7AE640;
  *(v8 + 24) = v4;
  v17 = sub_24A7AE698;
  v18 = v8;

  v9 = sub_24A82D024();
  MEMORY[0x24C21C9E0](v9);

  v10 = v16[0];
  v11 = v16[1];
  v12 = qword_281515050;
  swift_beginAccess();
  v13 = *(v1 + v12);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v1 + v12);
  *(v1 + v12) = 0x8000000000000000;
  sub_24A6A2BC0(v10, v11, 0x6567412D72657355, 0xEA0000000000746ELL, isUniquelyReferenced_nonNull_native);
  *(v1 + v12) = v17;
  swift_endAccess();
}

uint64_t sub_24A7ADCBC(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_24A82CFC4();

  return v4;
}

void sub_24A7ADD1C()
{
  v1 = v0;
  v40 = sub_24A82CA34();
  v38 = *(v40 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x28223BE20](v40);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A82CA24();
  v5 = [objc_opt_self() sharedInstance];
  v47 = MEMORY[0x277D83B88];
  *&v45 = 1;
  v6 = sub_24A7AD2E4();
  sub_24A6A50DC(&v45, &v43);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42 = v6;
  sub_24A6A4F8C(&v43, 0xD000000000000011, 0x800000024A8459C0, isUniquelyReferenced_nonNull_native);
  v8 = v42;
  v9 = sub_24A6BBA94(&qword_27EF5D930, &qword_24A83B150);
  v44 = v9;
  *&v43 = v8;
  swift_beginAccess();
  sub_24A6A61DC(&v43, 0x6F43746E65696C63, 0xED0000747865746ELL);
  swift_endAccess();
  sub_24A82C934();
  v47 = MEMORY[0x277D839F8];
  *&v45 = v10 * 1000.0;
  v11 = sub_24A7AD2E4();
  sub_24A6A50DC(&v45, &v43);
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v42 = v11;
  sub_24A6A4F8C(&v43, 0x6D617473656D6974, 0xE900000000000070, v12);
  v44 = v9;
  *&v43 = v42;
  swift_beginAccess();
  sub_24A6A61DC(&v43, 0x6F43746E65696C63, 0xED0000747865746ELL);
  swift_endAccess();
  v39 = v5;
  v13 = [v5 deviceUDID];
  if (v13)
  {
    v14 = sub_24A82CFC4();
    v16 = v15;

    v17 = MEMORY[0x277D837D0];
  }

  else
  {
    v14 = 0;
    v16 = 0;
    v17 = 0;
    v46 = 0;
  }

  v18 = MEMORY[0x277D837D0];
  *&v45 = v14;
  *(&v45 + 1) = v16;
  v47 = v17;
  v19 = sub_24A7AD2E4();
  v41 = v19;
  if (v13)
  {
    v20 = v19;
    sub_24A6A50DC(&v45, &v43);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v42 = v20;
    sub_24A6A4F8C(&v43, 1684628597, 0xE400000000000000, v21);
    v22 = v42;
  }

  else
  {
    sub_24A6F6C40(&v45);
    sub_24A7C3F0C(1684628597, 0xE400000000000000, &v43);
    sub_24A6F6C40(&v43);
    v22 = v41;
  }

  v44 = v9;
  *&v43 = v22;
  swift_beginAccess();
  sub_24A6A61DC(&v43, 0x6F43746E65696C63, 0xED0000747865746ELL);
  swift_endAccess();
  v23 = [objc_opt_self() processInfo];
  v24 = [v23 processName];

  v25 = sub_24A82CFC4();
  v27 = v26;

  v47 = v18;
  *&v45 = v25;
  *(&v45 + 1) = v27;
  v28 = sub_24A7AD2E4();
  sub_24A6A50DC(&v45, &v43);
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v42 = v28;
  sub_24A6A4F8C(&v43, 0x656372756F73, 0xE600000000000000, v29);
  v44 = v9;
  *&v43 = v42;
  swift_beginAccess();
  sub_24A6A61DC(&v43, 0x6F43746E65696C63, 0xED0000747865746ELL);
  swift_endAccess();
  v30 = sub_24A7AE59C();
  v47 = MEMORY[0x277D83B88];
  *&v45 = v30;
  v31 = sub_24A7AD2E4();
  sub_24A6A50DC(&v45, &v43);
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v42 = v31;
  sub_24A6A4F8C(&v43, 0x74536B636F6C6E75, 0xEB00000000657461, v32);
  v44 = v9;
  *&v43 = v42;
  swift_beginAccess();
  sub_24A6A61DC(&v43, 0x6F43746E65696C63, 0xED0000747865746ELL);
  swift_endAccess();
  v33 = *(v1 + qword_281515040 + 8);
  if (v33)
  {
    v34 = *(v1 + qword_281515040);
    v47 = v18;
    *&v45 = v34;
    *(&v45 + 1) = v33;

    v35 = sub_24A7AD2E4();
    sub_24A6A50DC(&v45, &v43);
    v36 = swift_isUniquelyReferenced_nonNull_native();
    v42 = v35;
    sub_24A6A4F8C(&v43, 0x6B6F545350416176, 0xEA00000000006E65, v36);
    v44 = v9;
    *&v43 = v42;
    swift_beginAccess();
    sub_24A6A61DC(&v43, 0x6F43746E65696C63, 0xED0000747865746ELL);
    swift_endAccess();

    (*(v38 + 8))(v4, v40);
  }

  else
  {
    (*(v38 + 8))(v4, v40);
  }
}

uint64_t sub_24A7AE358()
{
  v1 = *(v0 + qword_281515048 + 8);

  v2 = *(v0 + qword_281515058);

  v3 = *(v0 + qword_281515050);

  v4 = *(v0 + qword_281515040 + 8);
}

uint64_t sub_24A7AE3C0()
{
  v0 = sub_24A82CB74();
  v1 = *(v0 + qword_281515048 + 8);

  v2 = *(v0 + qword_281515058);

  v3 = *(v0 + qword_281515050);

  v4 = *(v0 + qword_281515040 + 8);

  return swift_deallocClassInstance();
}

uint64_t sub_24A7AE488()
{
  v1 = *v0;
  v2 = qword_281515050;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_24A7AE4D4(uint64_t a1)
{
  v3 = *v1;
  v4 = qword_281515050;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = a1;
}

uint64_t (*sub_24A7AE530())()
{
  v1 = *v0;
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_24A7AE59C()
{
  v0 = MKBGetDeviceLockState();
  if (v0 > 1)
  {
    if (v0 == 3)
    {
      return 5;
    }

    if (v0 == 2)
    {
      return 4;
    }

    return 0;
  }

  if (!v0)
  {
    return 3;
  }

  if (v0 != 1)
  {
    return 0;
  }

  if (MKBDeviceUnlockedSinceBoot())
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_24A7AE668@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  a1[1] = v6;
  return result;
}

id sub_24A7AE728(uint64_t a1)
{
  v2 = sub_24A82CA34();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A7731FC(a1);
  v7 = *a1;
  v8 = *(a1 + 8);
  if (*(a1 + 24))
  {
    v9 = 0.0;
  }

  else
  {
    v9 = *(a1 + 16);
  }

  if (*(a1 + 40))
  {
    v10 = 0.0;
  }

  else
  {
    v10 = *(a1 + 32);
  }

  v11 = *(a1 + 48);
  if (*(a1 + 56))
  {
    v12 = 0.0;
  }

  else
  {
    v12 = *(a1 + 48);
  }

  v13 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_24A82CA24();
  v14 = sub_24A82C994();
  (*(v3 + 8))(v6, v2);
  v15 = [v13 initWithCoordinate:v14 altitude:v7 horizontalAccuracy:v8 verticalAccuracy:v9 timestamp:{v10, v12}];

  return v15;
}

uint64_t sub_24A7AE89C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 72);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_24A7AE8F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2;
    }
  }

  return result;
}

uint64_t sub_24A7AE970(void *a1)
{
  v3 = v1;
  v5 = sub_24A6BBA94(&qword_27EF5EC30, &qword_24A83B238);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22[-v8];
  v10 = a1[4];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A7AF1BC();
  sub_24A82DD84();
  v11 = *v3;
  v22[15] = 0;
  sub_24A82DB24();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v12 = v3[1];
  v22[14] = 1;
  sub_24A82DB24();
  v13 = v3[2];
  v14 = *(v3 + 24);
  v22[13] = 2;
  sub_24A82DAE4();
  v15 = v3[4];
  v16 = *(v3 + 40);
  v22[12] = 3;
  sub_24A82DAE4();
  v17 = v3[6];
  v18 = *(v3 + 56);
  v22[11] = 4;
  sub_24A82DAE4();
  v20 = v3[8];
  v21 = v3[9];
  v22[10] = 5;
  sub_24A82DAD4();
  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_24A7AEB7C()
{
  v1 = 0x656475746974616CLL;
  v2 = *v0;
  v3 = 0xD000000000000012;
  v4 = 0xD000000000000010;
  if (v2 != 4)
  {
    v4 = 0x6C6562616CLL;
  }

  if (v2 != 3)
  {
    v3 = v4;
  }

  v5 = 0x64757469676E6F6CLL;
  if (v2 != 1)
  {
    v5 = 0x6564757469746C61;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24A7AEC38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A7AED3C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A7AEC60(uint64_t a1)
{
  v2 = sub_24A7AF1BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A7AEC9C(uint64_t a1)
{
  v2 = sub_24A7AF1BC();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_24A7AECD8@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_24A7AEF44(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v6[4];
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_24A7AED3C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x656475746974616CLL && a2 == 0xE800000000000000;
  if (v3 || (sub_24A82DC04() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065 || (sub_24A82DC04() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6564757469746C61 && a2 == 0xE800000000000000 || (sub_24A82DC04() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024A843B30 == a2 || (sub_24A82DC04() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024A843BA0 == a2 || (sub_24A82DC04() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_24A82DC04();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_24A7AEF44@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24A6BBA94(&qword_27EF5EC20, &qword_24A83B230);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - v8;
  v10 = a1[4];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A7AF1BC();
  sub_24A82DD64();
  if (v2)
  {
    return sub_24A6876E8(a1);
  }

  v39 = 0;
  sub_24A82DA64();
  v12 = v11;
  v38 = 1;
  sub_24A82DA64();
  v14 = v13;
  v37 = 2;
  v15 = sub_24A82DA24();
  v33 = v16 & 1;
  v36 = 3;
  v17 = sub_24A82DA24();
  v32 = v18 & 1;
  v35 = 4;
  v30 = sub_24A82DA24();
  v31 = v19 & 1;
  v34 = 5;
  v20 = sub_24A82DA04();
  v22 = v21;
  v23 = *(v6 + 8);
  v29 = v20;
  v23(v9, v5);
  v24 = v33;
  v25 = v32;
  v26 = v31;
  result = sub_24A6876E8(a1);
  *a2 = v12;
  *(a2 + 8) = v14;
  *(a2 + 16) = v15;
  *(a2 + 24) = v24;
  *(a2 + 32) = v17;
  *(a2 + 40) = v25;
  v28 = v29;
  *(a2 + 48) = v30;
  *(a2 + 56) = v26;
  *(a2 + 64) = v28;
  *(a2 + 72) = v22;
  return result;
}

unint64_t sub_24A7AF1BC()
{
  result = qword_27EF5EC28;
  if (!qword_27EF5EC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EC28);
  }

  return result;
}

unint64_t sub_24A7AF224()
{
  result = qword_27EF5EC38;
  if (!qword_27EF5EC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EC38);
  }

  return result;
}

unint64_t sub_24A7AF27C()
{
  result = qword_27EF5EC40;
  if (!qword_27EF5EC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EC40);
  }

  return result;
}

unint64_t sub_24A7AF2D4()
{
  result = qword_27EF5EC48;
  if (!qword_27EF5EC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EC48);
  }

  return result;
}

FMIPCore::FMIPAnalyticsActionType_optional __swiftcall FMIPAnalyticsActionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A82D9C4();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FMIPAnalyticsActionType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E756F5379616C70;
  v3 = 0x6F69736963657270;
  v4 = 0x6F4C656C62616E65;
  if (v1 != 4)
  {
    v4 = 0xD000000000000015;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6F69746365726964;
  if (v1 != 1)
  {
    v5 = 0x74696D69786F7270;
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

uint64_t sub_24A7AF478()
{
  *v0;
  *v0;
  sub_24A82D094();
}

void sub_24A7AF5A0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000064;
  v4 = 0x6E756F5379616C70;
  v5 = 0x6F69736963657270;
  v6 = 0xEE0065646F4D7473;
  v7 = 0x6F4C656C62616E65;
  if (v2 != 4)
  {
    v7 = 0xD000000000000015;
    v6 = 0x800000024A843D50;
  }

  if (v2 == 3)
  {
    v6 = 0xED0000646E69466ELL;
  }

  else
  {
    v5 = v7;
  }

  v8 = 0x6F69746365726964;
  v9 = 0xED0000646E694679;
  if (v2 == 1)
  {
    v9 = 0xEA0000000000736ELL;
  }

  else
  {
    v8 = 0x74696D69786F7270;
  }

  if (*v1)
  {
    v4 = v8;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = v6;
  }

  *a1 = v10;
  a1[1] = v3;
}

FMIPCore::FMIPAnalyticsOwnerContext_optional __swiftcall FMIPAnalyticsOwnerContext.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A82D9C4();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FMIPAnalyticsOwnerContext.rawValue.getter()
{
  v1 = 0x72656E776FLL;
  v2 = 29813;
  if (*v0 != 2)
  {
    v2 = 1701736302;
  }

  if (*v0)
  {
    v1 = 0x646572616873;
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

uint64_t sub_24A7AF74C()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7AF7F4()
{
  *v0;
  *v0;
  *v0;
  sub_24A82D094();
}

uint64_t sub_24A7AF888()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

void sub_24A7AF938(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x72656E776FLL;
  v4 = 0xE200000000000000;
  v5 = 29813;
  if (*v1 != 2)
  {
    v5 = 1701736302;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 0x646572616873;
    v2 = 0xE600000000000000;
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

uint64_t FMIPAnalyticsProductType.init(device:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for FMIPItem();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v22 - v11;
  v13 = type metadata accessor for FMIPDevice();
  sub_24A7AFC38(a1 + *(v13 + 128), v12);
  v14 = type metadata accessor for FMIPItemGroup();
  if ((*(*(v14 - 8) + 48))(v12, 1, v14) == 1)
  {
    sub_24A67F378(v12, &unk_27EF5E0B0, &qword_24A8338B0);
LABEL_9:
    v21 = *(a1 + *(v13 + 132));
    result = sub_24A6900AC(a1, type metadata accessor for FMIPDevice);
    if (v21)
    {
      v20 = 2;
    }

    else
    {
      v20 = 3;
    }

LABEL_12:
    *a2 = v20;
  }

  else
  {
    v15 = *(v12 + 5);

    result = sub_24A6900AC(v12, type metadata accessor for FMIPItemGroup);
    v17 = 0;
    v18 = *(v15 + 16);
    while (1)
    {
      if (v18 == v17)
      {

        goto LABEL_9;
      }

      if (v17 >= *(v15 + 16))
      {
        break;
      }

      sub_24A69F19C(v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v17++, v8, type metadata accessor for FMIPItem);
      v19 = v8[*(v4 + 84)];
      result = sub_24A6900AC(v8, type metadata accessor for FMIPItem);
      if (v19 == 1)
      {

        result = sub_24A6900AC(a1, type metadata accessor for FMIPDevice);
        v20 = 1;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24A7AFC38(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t FMIPAnalyticsProductType.init(item:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for FMIPProductType();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FMIPItem();
  if (*(a1 + *(v8 + 84)) == 1)
  {
    result = sub_24A6900AC(a1, type metadata accessor for FMIPItem);
    v10 = 1;
  }

  else
  {
    sub_24A69F19C(a1 + *(v8 + 96), v7, type metadata accessor for FMIPProductType);
    sub_24A6900AC(a1, type metadata accessor for FMIPItem);
    if (swift_getEnumCaseMultiPayload() >= 2)
    {
      result = sub_24A67F378(v7, &qword_27EF5D360, &unk_24A836200);
      v10 = 2;
    }

    else
    {
      result = sub_24A6900AC(v7, type metadata accessor for FMIPProductType);
      v10 = 0;
    }
  }

  *a2 = v10;
  return result;
}

uint64_t FMIPAnalyticsProductType.init(unknownItem:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for FMIPProductType();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FMIPUnknownItem();
  if (*(a1 + *(v8 + 64)) == 1)
  {
    result = sub_24A6900AC(a1, type metadata accessor for FMIPUnknownItem);
    v10 = 1;
  }

  else
  {
    sub_24A69F19C(a1 + *(v8 + 36), v7, type metadata accessor for FMIPProductType);
    sub_24A6900AC(a1, type metadata accessor for FMIPUnknownItem);
    if (swift_getEnumCaseMultiPayload() >= 2)
    {
      result = sub_24A67F378(v7, &qword_27EF5D360, &unk_24A836200);
      v10 = 3;
    }

    else
    {
      result = sub_24A6900AC(v7, type metadata accessor for FMIPProductType);
      v10 = 0;
    }
  }

  *a2 = v10;
  return result;
}

FMIPCore::FMIPAnalyticsProductType_optional __swiftcall FMIPAnalyticsProductType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A82D9C4();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FMIPAnalyticsProductType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x676154726961;
  v3 = 0x726F737365636361;
  v4 = 0x656369766564;
  if (v1 != 3)
  {
    v4 = 0x6E6F73726570;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x73646F50726961;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24A7B0044()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7B0120()
{
  *v0;
  *v0;
  *v0;
  sub_24A82D094();
}

uint64_t sub_24A7B01E8()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

void sub_24A7B02CC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x676154726961;
  v5 = 0xE900000000000079;
  v6 = 0x726F737365636361;
  v7 = 0x656369766564;
  if (v2 != 3)
  {
    v7 = 0x6E6F73726570;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = 0x73646F50726961;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

void sub_24A7B0460()
{
  v0 = sub_24A6AE58C(MEMORY[0x277D84F90]);
  v1 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v2 = sub_24A82CF94();

  v3 = [v1 initWithString_];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6AE690(v3, 0x79546E6F69746361, 0xEA00000000006570, isUniquelyReferenced_nonNull_native);
  v5 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v6 = sub_24A82CF94();

  v7 = [v5 initWithString_];

  v8 = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6AE690(v7, 0x6E6F4372656E776FLL, 0xEC00000074786574, v8);
  v9 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v10 = sub_24A82CF94();

  v11 = [v9 initWithString_];

  v12 = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6AE690(v11, 0xD000000000000011, 0x800000024A848A00, v12);
  v13 = v0;
  v14 = sub_24A82CF94();
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  aBlock[4] = sub_24A6AEBB4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A6AEADC;
  aBlock[3] = &unk_285DC9C10;
  v16 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v16);

  if (sub_24A82C4C4())
  {
    v17 = sub_24A82CF94();

    v18 = sub_24A82CF94();

    v19 = objc_opt_self();
    v20 = sub_24A82CF94();

    [v19 captureFindMyUserActionType:v17 ownerContext:v18 productType:v20];
  }
}

uint64_t _s8FMIPCore13FMIPAnalyticsV25sendItemDeviceActionEvent5eventyAA010FMIPActionG0V_tFZ_0(char *a1)
{
  v2 = sub_24A82CDF4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A82CE54();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = a1[1];
  v14 = a1[2];
  if (qword_27EF5CC50 != -1)
  {
    swift_once();
  }

  v15 = swift_allocObject();
  v15[16] = v12;
  v15[17] = v13;
  v15[18] = v14;
  aBlock[4] = sub_24A7B0FEC;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DC9BC0;
  v16 = _Block_copy(aBlock);
  sub_24A82CE24();
  v18[1] = MEMORY[0x277D84F90];
  sub_24A6FA9B0();
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A6F2828();
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v11, v6, v16);
  _Block_release(v16);
  (*(v3 + 8))(v6, v2);
  (*(v8 + 8))(v11, v7);
}

unint64_t sub_24A7B0D98()
{
  result = qword_27EF5EC50;
  if (!qword_27EF5EC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EC50);
  }

  return result;
}

unint64_t sub_24A7B0DF0()
{
  result = qword_27EF5EC58;
  if (!qword_27EF5EC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EC58);
  }

  return result;
}

unint64_t sub_24A7B0E48()
{
  result = qword_27EF5EC60;
  if (!qword_27EF5EC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EC60);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for FMIPActionEvent(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for FMIPActionEvent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD)
  {
    if ((a2 + 33554179) >> 24)
    {
      v2 = a1[3];
      if (a1[3])
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776963;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776963;
      }
    }
  }

  v4 = a1[1];
  v5 = v4 >= 4;
  v6 = v4 - 4;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for FMIPActionEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554179) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFC)
  {
    v3 = 0;
  }

  if (a2 > 0xFC)
  {
    *result = a2 - 253;
    *(result + 2) = (a2 - 253) >> 16;
    if (v3)
    {
      v4 = ((a2 - 253) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 1) = a2 + 3;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

void sub_24A7B0FEC()
{
  v1 = *(v0 + 18);
  v2 = *(v0 + 16);
  sub_24A7B0460();
}

uint64_t FMIPUnknownItemProductMetadata.init(metadata:disableURL:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v33 - v8;
  if (a1)
  {
    v10 = [a1 title];
    if (v10)
    {
      v11 = v10;
      v12 = sub_24A82CFC4();
      v14 = v13;
    }

    else
    {
      v12 = 0;
      v14 = 0;
    }

    *a3 = v12;
    *(a3 + 8) = v14;
    v16 = [a1 moreDescription];
    v17 = sub_24A82D244();

    *(a3 + 16) = v17;
    [a1 percentageX];
    *(a3 + 24) = v18;
    *(a3 + 32) = 0;
    [a1 percentageY];
    *(a3 + 40) = v19;
    *(a3 + 48) = 0;
    v20 = [a1 image];
    sub_24A82C884();

    v21 = sub_24A82C8B4();
    (*(*(v21 - 8) + 56))(v9, 0, 1, v21);
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = MEMORY[0x277D84F90];
    *(a3 + 24) = 0;
    *(a3 + 32) = 1;
    *(a3 + 40) = 0;
    *(a3 + 48) = 1;
    v15 = sub_24A82C8B4();
    (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  }

  v22 = type metadata accessor for FMIPUnknownItemProductMetadata();
  sub_24A696DA0(v9, a3 + *(v22 + 32));
  sub_24A696E10(a2, a3 + *(v22 + 36));
  v23 = FMIPUnknownItemProductMetadata.debugDescription.getter();
  v25 = v24;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v26 = sub_24A82CDC4();
  sub_24A6797D0(v26, qword_281518F88);

  v27 = sub_24A82CD94();
  v28 = sub_24A82D4C4();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v34 = v30;
    *v29 = 136315138;
    v31 = sub_24A68761C(v23, v25, &v34);

    *(v29 + 4) = v31;
    _os_log_impl(&dword_24A675000, v27, v28, "FMIPUnknownItemUTMetadata: initialized %s", v29, 0xCu);
    sub_24A6876E8(v30);
    MEMORY[0x24C21E1D0](v30, -1, -1);
    MEMORY[0x24C21E1D0](v29, -1, -1);
  }

  else
  {
  }

  return sub_24A67F378(a2, &unk_27EF5CCB8, &qword_24A82FDB0);
}

uint64_t FMIPUnknownItemProductMetadata.debugDescription.getter()
{
  v1 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - v3;
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_24A82D854();
  MEMORY[0x24C21C9E0](60, 0xE100000000000000);
  MEMORY[0x24C21C9E0](0xD00000000000001ELL, 0x800000024A83B600);
  MEMORY[0x24C21C9E0](0x203A656C74697420, 0xE800000000000000);
  v5 = v0[1];
  v16 = *v0;
  v17 = v5;

  sub_24A6BBA94(&qword_27EF5D248, &unk_24A834970);
  v6 = sub_24A82D024();
  MEMORY[0x24C21C9E0](v6);

  MEMORY[0x24C21C9E0](0x7069726373656420, 0xEE00203A6E6F6974);
  v7 = MEMORY[0x24C21CB60](v0[2], MEMORY[0x277D837D0]);
  MEMORY[0x24C21C9E0](v7);

  MEMORY[0x24C21C9E0](0xD000000000000013, 0x800000024A848A60);
  v8 = *(v0 + 32);
  v16 = v0[3];
  LOBYTE(v17) = v8;
  sub_24A6BBA94(&qword_27EF5EC68, &qword_24A83B648);
  v9 = sub_24A82D024();
  MEMORY[0x24C21C9E0](v9);

  MEMORY[0x24C21C9E0](0xD000000000000013, 0x800000024A848A80);
  v10 = *(v0 + 48);
  v16 = v0[5];
  LOBYTE(v17) = v10;
  v11 = sub_24A82D024();
  MEMORY[0x24C21C9E0](v11);

  MEMORY[0x24C21C9E0](0x203A6567616D6920, 0xE800000000000000);
  v12 = type metadata accessor for FMIPUnknownItemProductMetadata();
  sub_24A696E10(v0 + *(v12 + 32), v4);
  v13 = sub_24A82D024();
  MEMORY[0x24C21C9E0](v13);

  MEMORY[0x24C21C9E0](0x656C626173696420, 0xED0000203A4C5255);
  sub_24A696E10(v0 + *(v12 + 36), v4);
  v14 = sub_24A82D024();
  MEMORY[0x24C21C9E0](v14);

  MEMORY[0x24C21C9E0](62, 0xE100000000000000);
  return v18;
}

uint64_t FMIPUnknownItemProductMetadata.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t FMIPUnknownItemProductMetadata.heatzonePercentX.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t FMIPUnknownItemProductMetadata.heatzonePercentY.getter()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t FMIPUnknownItemProductMetadata.image.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FMIPUnknownItemProductMetadata() + 32);

  return sub_24A696E10(v3, a1);
}

uint64_t FMIPUnknownItemProductMetadata.disableURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FMIPUnknownItemProductMetadata() + 36);

  return sub_24A696E10(v3, a1);
}

uint64_t sub_24A7B1728()
{
  *v0;
  *v0;
  *v0;
  sub_24A82D094();
}

uint64_t sub_24A7B1828@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24A7B32AC();
  *a2 = result;
  return result;
}

void sub_24A7B1858(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x656C746974;
  v5 = 0x800000024A843DE0;
  v6 = 0xE500000000000000;
  v7 = 0x6567616D69;
  if (v2 != 4)
  {
    v7 = 0x55656C6261736964;
    v6 = 0xEA00000000004C52;
  }

  if (v2 == 3)
  {
    v7 = 0xD000000000000010;
  }

  else
  {
    v5 = v6;
  }

  v8 = 0x800000024A843DA0;
  v9 = 0xD00000000000001BLL;
  if (v2 != 1)
  {
    v9 = 0xD000000000000010;
    v8 = 0x800000024A843DC0;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v7;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

unint64_t sub_24A7B1920()
{
  v1 = *v0;
  v2 = 0x656C746974;
  v3 = 0x6567616D69;
  if (v1 != 4)
  {
    v3 = 0x55656C6261736964;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000010;
  }

  v4 = 0xD00000000000001BLL;
  if (v1 != 1)
  {
    v4 = 0xD000000000000010;
  }

  if (*v0)
  {
    v2 = v4;
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

uint64_t sub_24A7B19E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24A7B32AC();
  *a1 = result;
  return result;
}

uint64_t sub_24A7B1A0C(uint64_t a1)
{
  v2 = sub_24A7B2988();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A7B1A48(uint64_t a1)
{
  v2 = sub_24A7B2988();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMIPUnknownItemProductMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = sub_24A82C8B4();
  v58 = *(v3 - 8);
  v59 = v3;
  v4 = v58[8];
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v51 - v8;
  v10 = sub_24A6BBA94(&qword_27EF5EC70, &unk_24A83B650);
  v60 = *(v10 - 8);
  v11 = *(v60 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v51 - v12;
  v14 = type metadata accessor for FMIPUnknownItemProductMetadata();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (&v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = a1[3];
  v19 = a1[4];
  v63 = a1;
  sub_24A67DF6C(a1, v18);
  sub_24A7B2988();
  v20 = v62;
  sub_24A82DD64();
  if (!v20)
  {
    v56 = v17;
    v57 = v7;
    v62 = v9;
    v22 = v60;
    v21 = v61;
    LOBYTE(v65) = 0;
    v54 = sub_24A82DA44();
    v55 = v23;
    sub_24A6BBA94(&qword_27EF5D9D0, &qword_24A835090);
    v64 = 1;
    sub_24A7029A8(&qword_27EF5DB30);
    sub_24A82DA84();
    v24 = v65;
    LOBYTE(v65) = 2;
    sub_24A82DA64();
    v53 = v24;
    v26 = v25;
    LOBYTE(v65) = 3;
    sub_24A82DA64();
    v28 = v27;
    LOBYTE(v65) = 4;
    v29 = sub_24A7B32F8(&qword_27EF5EB68, MEMORY[0x277CC9260]);
    v30 = v59;
    v52 = v29;
    sub_24A82DA84();
    LOBYTE(v65) = 5;
    sub_24A82DA84();
    v51 = v14;
    v52 = v10;
    v32 = v56;
    v33 = v55;
    *v56 = v54;
    *(v32 + 8) = v33;
    *(v32 + 16) = v53;
    *(v32 + 24) = v26;
    *(v32 + 32) = 0;
    *(v32 + 40) = v28;
    *(v32 + 48) = 0;
    v34 = v58;
    v35 = v58[2];
    v54 = *(v14 + 32);
    v55 = v35;
    v35(v32 + v54, v62, v30);
    v36 = v34[7];
    v36(v32 + v54, 0, 1, v30);
    v54 = *(v51 + 36);
    v55(v32 + v54, v57, v30);
    v36(v32 + v54, 0, 1, v30);
    v55 = FMIPUnknownItemProductMetadata.debugDescription.getter();
    v38 = v37;
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v39 = sub_24A82CDC4();
    sub_24A6797D0(v39, qword_281518F88);

    v40 = sub_24A82CD94();
    v41 = sub_24A82D4C4();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v43 = v65;
      *v42 = 136315138;
      v44 = v41;
      v45 = sub_24A68761C(v55, v38, &v65);

      *(v42 + 4) = v45;
      _os_log_impl(&dword_24A675000, v40, v44, "FMIPUnknownItemUTMetadata: initialized %s", v42, 0xCu);
      sub_24A6876E8(v43);
      v46 = v43;
      v47 = v61;
      MEMORY[0x24C21E1D0](v46, -1, -1);
      v48 = v42;
      v32 = v56;
      MEMORY[0x24C21E1D0](v48, -1, -1);
    }

    else
    {
      v47 = v21;
    }

    v49 = v58[1];
    v50 = v59;
    v49(v57, v59);
    v49(v62, v50);
    (*(v22 + 8))(v13, v52);
    sub_24A7B29DC(v32, v47);
  }

  return sub_24A6876E8(v63);
}

uint64_t FMIPUnknownItemProductMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_24A6BBA94(&qword_27EF5EC80, &qword_24A83B660);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A7B2988();
  sub_24A82DD84();
  v17 = *v3;
  v18 = 0;
  sub_24A6BBA94(&qword_27EF5D248, &unk_24A834970);
  sub_24A7B2A40(&qword_281512BD0, &qword_27EF5D248, &unk_24A834970);
  sub_24A82DB44();
  if (!v2)
  {
    *&v17 = *(v3 + 2);
    v18 = 1;
    sub_24A6BBA94(&qword_27EF5D9D0, &qword_24A835090);
    sub_24A7029A8(&qword_27EF5DB50);
    sub_24A82DB44();
    v11 = *(v3 + 32);
    *&v17 = *(v3 + 3);
    BYTE8(v17) = v11;
    v18 = 2;
    sub_24A6BBA94(&qword_27EF5EC68, &qword_24A83B648);
    sub_24A7B2A40(&qword_27EF5EC88, &qword_27EF5EC68, &qword_24A83B648);
    sub_24A82DB44();
    v12 = *(v3 + 48);
    *&v17 = *(v3 + 5);
    BYTE8(v17) = v12;
    v18 = 3;
    sub_24A82DB44();
    v13 = type metadata accessor for FMIPUnknownItemProductMetadata();
    v14 = *(v13 + 32);
    LOBYTE(v17) = 4;
    sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
    sub_24A7B2AA8();
    sub_24A82DB44();
    v15 = *(v13 + 36);
    LOBYTE(v17) = 5;
    sub_24A82DB44();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t FMIPUnknownItemProductMetadata.hash(into:)()
{
  v1 = v0;
  v2 = sub_24A82C8B4();
  v34 = *(v2 - 8);
  v3 = *(v34 + 64);
  MEMORY[0x28223BE20](v2);
  v33 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v31 - v10;
  if (v0[1])
  {
    v12 = *v0;
    sub_24A82DCE4();
    sub_24A82D094();
  }

  else
  {
    sub_24A82DCE4();
  }

  v13 = v0[2];
  MEMORY[0x24C21D5E0](*(v13 + 16));
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = (v13 + 40);
    do
    {
      v16 = *(v15 - 1);
      v17 = *v15;

      sub_24A82D094();

      v15 += 2;
      --v14;
    }

    while (v14);
  }

  if (v1[4])
  {
    sub_24A82DCE4();
  }

  else
  {
    v18 = v1[3];
    sub_24A82DCE4();
    if ((v18 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    MEMORY[0x24C21D610](v19);
  }

  v20 = v34;
  if (*(v1 + 48) == 1)
  {
    sub_24A82DCE4();
  }

  else
  {
    v21 = v1[5];
    sub_24A82DCE4();
    if ((v21 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    MEMORY[0x24C21D610](v22);
  }

  v23 = type metadata accessor for FMIPUnknownItemProductMetadata();
  sub_24A696E10(v1 + *(v23 + 32), v11);
  v24 = *(v20 + 48);
  if (v24(v11, 1, v2) == 1)
  {
    sub_24A82DCE4();
  }

  else
  {
    v25 = *(v20 + 32);
    v32 = v9;
    v26 = v33;
    v25(v33, v11, v2);
    sub_24A82DCE4();
    sub_24A7B32F8(&qword_27EF5CCD0, MEMORY[0x277CC9260]);
    sub_24A82CF64();
    v27 = v26;
    v9 = v32;
    (*(v20 + 8))(v27, v2);
  }

  sub_24A696E10(v1 + *(v23 + 36), v9);
  if (v24(v9, 1, v2) == 1)
  {
    return sub_24A82DCE4();
  }

  v30 = v33;
  v29 = v34;
  (*(v34 + 32))(v33, v9, v2);
  sub_24A82DCE4();
  sub_24A7B32F8(&qword_27EF5CCD0, MEMORY[0x277CC9260]);
  sub_24A82CF64();
  return (*(v29 + 8))(v30, v2);
}

uint64_t FMIPUnknownItemProductMetadata.hashValue.getter()
{
  sub_24A82DCC4();
  FMIPUnknownItemProductMetadata.hash(into:)();
  return sub_24A82DD24();
}

uint64_t sub_24A7B2904()
{
  sub_24A82DCC4();
  FMIPUnknownItemProductMetadata.hash(into:)();
  return sub_24A82DD24();
}

uint64_t sub_24A7B2948()
{
  sub_24A82DCC4();
  FMIPUnknownItemProductMetadata.hash(into:)();
  return sub_24A82DD24();
}

unint64_t sub_24A7B2988()
{
  result = qword_27EF5EC78;
  if (!qword_27EF5EC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EC78);
  }

  return result;
}

uint64_t sub_24A7B29DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPUnknownItemProductMetadata();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A7B2A40(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_24A6CCDC0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24A7B2AA8()
{
  result = qword_27EF5EC90;
  if (!qword_27EF5EC90)
  {
    sub_24A6CCDC0(&unk_27EF5CCB8, &qword_24A82FDB0);
    sub_24A7B32F8(&qword_27EF5EB58, MEMORY[0x277CC9260]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EC90);
  }

  return result;
}

uint64_t _s8FMIPCore30FMIPUnknownItemProductMetadataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A82C8B4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v38[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v38[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v15 = &v38[-v14];
  v16 = sub_24A6BBA94(&qword_27EF5D040, &unk_24A830E50);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v38[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v22 = &v38[-v21];
  v23 = *(a1 + 8);
  v24 = *(a2 + 8);
  if (v23)
  {
    if (!v24 || (*a1 != *a2 || v23 != v24) && (sub_24A82DC04() & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  else if (v24)
  {
    goto LABEL_35;
  }

  if ((sub_24A7D8798(*(a1 + 16), *(a2 + 16)) & 1) == 0)
  {
    goto LABEL_35;
  }

  v25 = *(a2 + 32);
  if (*(a1 + 32))
  {
    if (!*(a2 + 32))
    {
      goto LABEL_35;
    }
  }

  else
  {
    if (*(a1 + 24) != *(a2 + 24))
    {
      v25 = 1;
    }

    if (v25)
    {
      goto LABEL_35;
    }
  }

  v26 = *(a2 + 48);
  if (*(a1 + 48))
  {
    if (!*(a2 + 48))
    {
      goto LABEL_35;
    }
  }

  else
  {
    if (*(a1 + 40) != *(a2 + 40))
    {
      v26 = 1;
    }

    if (v26)
    {
      goto LABEL_35;
    }
  }

  v41 = type metadata accessor for FMIPUnknownItemProductMetadata();
  v43 = *(v41 + 32);
  v44 = v5;
  v27 = *(v16 + 48);
  sub_24A696E10(a1 + v43, v22);
  v42 = v27;
  sub_24A696E10(a2 + v43, &v27[v22]);
  v28 = v44 + 48;
  v43 = *(v44 + 48);
  if ((v43)(v22, 1, v4) == 1)
  {
    v29 = v43;
    if ((v43)(&v42[v22], 1, v4) == 1)
    {
      sub_24A67F378(v22, &unk_27EF5CCB8, &qword_24A82FDB0);
      goto LABEL_28;
    }

LABEL_26:
    v30 = v22;
LABEL_34:
    sub_24A67F378(v30, &qword_27EF5D040, &unk_24A830E50);
    goto LABEL_35;
  }

  sub_24A696E10(v22, v15);
  v40 = v28;
  if ((v43)(&v42[v22], 1, v4) == 1)
  {
    (*(v44 + 8))(v15, v4);
    goto LABEL_26;
  }

  v31 = v44;
  (*(v44 + 32))(v8, &v42[v22], v4);
  sub_24A7B32F8(&qword_27EF5D048, MEMORY[0x277CC9260]);
  v39 = sub_24A82CF84();
  v42 = *(v31 + 8);
  (v42)(v8, v4);
  (v42)(v15, v4);
  sub_24A67F378(v22, &unk_27EF5CCB8, &qword_24A82FDB0);
  v29 = v43;
  if ((v39 & 1) == 0)
  {
LABEL_35:
    v34 = 0;
    return v34 & 1;
  }

LABEL_28:
  v32 = *(v41 + 36);
  v33 = *(v16 + 48);
  sub_24A696E10(a1 + v32, v20);
  sub_24A696E10(a2 + v32, &v20[v33]);
  if (v29(v20, 1, v4) != 1)
  {
    sub_24A696E10(v20, v13);
    if (v29(&v20[v33], 1, v4) != 1)
    {
      v36 = v44;
      (*(v44 + 32))(v8, &v20[v33], v4);
      sub_24A7B32F8(&qword_27EF5D048, MEMORY[0x277CC9260]);
      v34 = sub_24A82CF84();
      v37 = *(v36 + 8);
      v37(v8, v4);
      v37(v13, v4);
      sub_24A67F378(v20, &unk_27EF5CCB8, &qword_24A82FDB0);
      return v34 & 1;
    }

    (*(v44 + 8))(v13, v4);
    goto LABEL_33;
  }

  if (v29(&v20[v33], 1, v4) != 1)
  {
LABEL_33:
    v30 = v20;
    goto LABEL_34;
  }

  sub_24A67F378(v20, &unk_27EF5CCB8, &qword_24A82FDB0);
  v34 = 1;
  return v34 & 1;
}

unint64_t sub_24A7B31A8()
{
  result = qword_27EF5ECC0;
  if (!qword_27EF5ECC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5ECC0);
  }

  return result;
}

unint64_t sub_24A7B3200()
{
  result = qword_27EF5ECC8;
  if (!qword_27EF5ECC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5ECC8);
  }

  return result;
}

unint64_t sub_24A7B3258()
{
  result = qword_27EF5ECD0;
  if (!qword_27EF5ECD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5ECD0);
  }

  return result;
}

uint64_t sub_24A7B32AC()
{
  v0 = sub_24A82D9C4();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_24A7B32F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t FMIPItemUpdateType.description.getter()
{
  v1 = sub_24A82CAA4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for FMIPItemUpdateType(0);
  v7 = *(*(updated - 8) + 64);
  MEMORY[0x28223BE20](updated);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A7B360C(v0, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        return 0x6E6F697461636F6CLL;
      }

      else
      {
        return 0x6568636163;
      }
    }

    else
    {
      v12 = *(sub_24A6BBA94(&qword_27EF5ECD8, &qword_24A83B8C0) + 48);
      (*(v2 + 32))(v5, v9, v1);
      v16[0] = 0x28206E6F6D6564;
      v16[1] = 0xE700000000000000;
      v13 = sub_24A82CA54();
      MEMORY[0x24C21C9E0](v13);

      MEMORY[0x24C21C9E0](41, 0xE100000000000000);
      v14 = v16[0];
      (*(v2 + 8))(v5, v1);
      v15 = sub_24A82CA34();
      (*(*(v15 - 8) + 8))(&v9[v12], v15);
      return v14;
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      return 0xD000000000000014;
    }

    else
    {
      return 0x6E6569736E617274;
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    return 0x676E6972696170;
  }

  else
  {
    return 0x2073736572646461;
  }
}

uint64_t sub_24A7B360C(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for FMIPItemUpdateType(0);
  (*(*(updated - 8) + 16))(a2, a1, updated);
  return a2;
}

uint64_t sub_24A7B36A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = sub_24A82CA34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_24A7B3714()
{
  sub_24A82C9D4();
  MEMORY[0x24C21C9E0](91, 0xE100000000000000);
  sub_24A82D374();
  MEMORY[0x24C21C9E0](8285, 0xE200000000000000);
  updated = FMIPItemUpdateType.description.getter();
  MEMORY[0x24C21C9E0](updated);

  return 0;
}

uint64_t FMIPItemUpdateContext.deinit()
{
  sub_24A7B3864(v0 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_type);
  v1 = OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_timestamp;
  v2 = sub_24A82CA34();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_creationTimestamp, v2);
  return v0;
}

uint64_t sub_24A7B3864(uint64_t a1)
{
  updated = type metadata accessor for FMIPItemUpdateType(0);
  (*(*(updated - 8) + 8))(a1, updated);
  return a1;
}

uint64_t FMIPItemUpdateContext.__deallocating_deinit()
{
  sub_24A7B3864(v0 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_type);
  v1 = OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_timestamp;
  v2 = sub_24A82CA34();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_creationTimestamp, v2);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_24A7B399C()
{
  v1 = *v0;
  sub_24A82C9D4();
  MEMORY[0x24C21C9E0](91, 0xE100000000000000);
  sub_24A82D374();
  MEMORY[0x24C21C9E0](8285, 0xE200000000000000);
  updated = FMIPItemUpdateType.description.getter();
  MEMORY[0x24C21C9E0](updated);

  return 0;
}

uint64_t sub_24A7B3A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24A6BBA94(&qword_27EF5E0E0, &qword_24A836D90);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v23 - v10;
  v12 = sub_24A82CA34();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1;
  sub_24A7B360C(a1, a3 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_type);
  v17 = OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_timestamp;
  v18 = *(v13 + 16);
  v24 = a4;
  v25 = a3;
  v18(a3 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_timestamp, a4 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_timestamp, v12);
  v19 = a2;
  sub_24A79D06C(a2, v11);
  v20 = *(v13 + 48);
  if (v20(v11, 1, v12) == 1)
  {
    v18(v16, v24 + v17, v12);
    sub_24A793F90(v19);
    sub_24A7B3864(v26);
    if (v20(v11, 1, v12) != 1)
    {
      sub_24A793F90(v11);
    }
  }

  else
  {
    sub_24A793F90(v19);
    sub_24A7B3864(v26);
    (*(v13 + 32))(v16, v11, v12);
  }

  v21 = v25;
  (*(v13 + 32))(v25 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_creationTimestamp, v16, v12);
  return v21;
}

uint64_t sub_24A7B3CD8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24A7B3D20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24A7B3D74(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A82CAA4();
  v65 = *(v4 - 8);
  v5 = v65[8];
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v70 = &v51 - v10;
  result = MEMORY[0x28223BE20](v9);
  v63 = &v51 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v13 = 0;
  v53 = a1;
  v14 = *(a1 + 56);
  v51 = a1 + 56;
  v15 = 1 << *(a1 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v14;
  v18 = (v15 + 63) >> 6;
  v19 = a2 + 56;
  v68 = v65 + 2;
  v59 = v65 + 4;
  v20 = (v65 + 1);
  v52 = v18;
  v58 = a2;
  v57 = a2 + 56;
  if (v17)
  {
    while (2)
    {
      v21 = __clz(__rbit64(v17));
      v54 = (v17 - 1) & v17;
LABEL_13:
      v55 = v13;
      v24 = *(*(v53 + 48) + 8 * (v21 | (v13 << 6)));
      v25 = *(a2 + 40);
      sub_24A82DCC4();

      sub_24A713504(v71, v24);
      v26 = sub_24A82DD24();
      v27 = -1 << *(a2 + 32);
      v28 = v26 & ~v27;
      if ((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        v67 = v24 + 56;
        v69 = v24;
        v56 = ~v27;
        while (1)
        {
          v30 = *(*(a2 + 48) + 8 * v28);
          if (v30 == v24)
          {
            break;
          }

          if (*(v30 + 16) == *(v24 + 16))
          {
            v31 = *(v30 + 56);
            v61 = v30 + 56;
            v62 = v28;
            v32 = 1 << *(v30 + 32);
            if (v32 < 64)
            {
              v33 = ~(-1 << v32);
            }

            else
            {
              v33 = -1;
            }

            v34 = v33 & v31;
            v60 = (v32 + 63) >> 6;

            v35 = 0;
            v66 = result;
            if (!v34)
            {
LABEL_24:
              v37 = v35;
              while (1)
              {
                v35 = v37 + 1;
                if (__OFADD__(v37, 1))
                {
                  break;
                }

                if (v35 >= v60)
                {

                  a2 = v58;
                  v19 = v57;
                  goto LABEL_37;
                }

                v38 = *(v61 + 8 * v35);
                ++v37;
                if (v38)
                {
                  v36 = __clz(__rbit64(v38));
                  v64 = (v38 - 1) & v38;
                  goto LABEL_29;
                }
              }

              __break(1u);
              goto LABEL_43;
            }

            while (1)
            {
              v36 = __clz(__rbit64(v34));
              v64 = (v34 - 1) & v34;
LABEL_29:
              v39 = v65;
              v40 = v65[9];
              v41 = v65[2];
              v42 = v63;
              v41(v63, *(result + 48) + v40 * (v36 | (v35 << 6)), v4);
              (v39[4])(v70, v42, v4);
              v43 = v69;
              v44 = *(v69 + 40);
              sub_24A7B8564(&qword_281514670, MEMORY[0x277CC95F0]);
              v45 = sub_24A82CF54();
              v46 = -1 << *(v43 + 32);
              v47 = v45 & ~v46;
              if (((*(v67 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
              {
                break;
              }

              v48 = ~v46;
              while (1)
              {
                v41(v8, *(v69 + 48) + v47 * v40, v4);
                sub_24A7B8564(&qword_27EF5DC48, MEMORY[0x277CC95F0]);
                v49 = sub_24A82CF84();
                v50 = *v20;
                (*v20)(v8, v4);
                if (v49)
                {
                  break;
                }

                v47 = (v47 + 1) & v48;
                if (((*(v67 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
                {
                  goto LABEL_15;
                }
              }

              v50(v70, v4);
              result = v66;
              v34 = v64;
              if (!v64)
              {
                goto LABEL_24;
              }
            }

LABEL_15:

            (*v20)(v70, v4);
            a2 = v58;
            v19 = v57;
            v24 = v69;
            v28 = v62;
            v29 = v56;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_40;
          }
        }

LABEL_37:

        v13 = v55;
        v18 = v52;
        v17 = v54;
        if (v54)
        {
          continue;
        }

        goto LABEL_8;
      }

      break;
    }

LABEL_40:

    return 0;
  }

LABEL_8:
  v22 = v13;
  while (1)
  {
    v13 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v13 >= v18)
    {
      return 1;
    }

    v23 = *(v51 + 8 * v13);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v54 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_24A7B4308(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A82C8B4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v74 - v11;
  v13 = sub_24A6BBA94(&qword_27EF5D040, &unk_24A830E50);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v90 = &v74 - v15;
  v16 = type metadata accessor for FMIPBeaconShare(0);
  v17 = *(*(v16 - 1) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v74 - v22;
  result = MEMORY[0x28223BE20](v21);
  v27 = &v74 - v26;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v86 = v13;
  v87 = v12;
  v28 = 0;
  v29 = a1 + 56;
  v30 = 1 << *(a1 + 32);
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  else
  {
    v31 = -1;
  }

  v32 = v31 & *(a1 + 56);
  v33 = (v30 + 63) >> 6;
  v34 = a2 + 56;
  v88 = v4;
  v89 = (v5 + 48);
  v35 = (v5 + 32);
  v85 = (v5 + 8);
  if (!v32)
  {
    goto LABEL_8;
  }

  do
  {
    v82 = v35;
    v76 = v33;
    v77 = v29;
    v83 = v8;
    v36 = __clz(__rbit64(v32));
    v75 = (v32 - 1) & v32;
LABEL_13:
    v80 = a1;
    v39 = *(a1 + 48);
    v79 = v25;
    v40 = *(v25 + 72);
    v41 = v27;
    sub_24A7B85AC(v39 + v40 * (v36 | (v28 << 6)), v27, type metadata accessor for FMIPBeaconShare);
    v78 = v41;
    sub_24A7B8614(v41, v23, type metadata accessor for FMIPBeaconShare);
    v42 = *(a2 + 40);
    sub_24A82DCC4();
    FMIPBeaconShare.hash(into:)(v92);
    v43 = sub_24A82DD24();
    v44 = -1 << *(a2 + 32);
    v45 = v43 & ~v44;
    if (((*(v34 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
    {
LABEL_49:
      sub_24A7B867C(v23, type metadata accessor for FMIPBeaconShare);
      return 0;
    }

    v46 = ~v44;
    while (1)
    {
      sub_24A7B85AC(*(a2 + 48) + v45 * v40, v20, type metadata accessor for FMIPBeaconShare);
      if ((sub_24A82CA74() & 1) == 0)
      {
        goto LABEL_17;
      }

      v47 = v16[5];
      if ((sub_24A82CA74() & 1) == 0)
      {
        goto LABEL_17;
      }

      v48 = v16[6];
      v49 = *&v20[v48];
      v50 = *&v20[v48 + 8];
      v51 = &v23[v48];
      v52 = v49 == *v51 && v50 == *(v51 + 1);
      if (!v52 && (sub_24A82DC04() & 1) == 0)
      {
        goto LABEL_17;
      }

      v53 = v16[7];
      v54 = *&v20[v53];
      v55 = *&v20[v53 + 8];
      v56 = &v23[v53];
      v57 = v54 == *v56 && v55 == *(v56 + 1);
      if (!v57 && (sub_24A82DC04() & 1) == 0)
      {
        goto LABEL_17;
      }

      v58 = v16[8];
      v59 = *&v20[v58];
      v91 = *&v23[v58];
      v60 = v91;
      v92[0] = v59;
      sub_24A6BB350(v59);
      sub_24A6BB350(v60);
      LOBYTE(v60) = static FMIPBeaconShareState.== infix(_:_:)(v92, &v91);
      sub_24A6BB5A4(v91);
      sub_24A6BB5A4(v92[0]);
      if ((v60 & 1) == 0)
      {
        goto LABEL_17;
      }

      v61 = v16[9];
      if ((sub_24A82C9E4() & 1) == 0)
      {
        goto LABEL_17;
      }

      v62 = v16[10];
      if ((sub_24A82C9E4() & 1) == 0)
      {
        goto LABEL_17;
      }

      v81 = v16[11];
      v84 = *(v86 + 48);
      v63 = v90;
      sub_24A67E964(&v20[v81], v90, &unk_27EF5CCB8, &qword_24A82FDB0);
      sub_24A67E964(&v23[v81], v84 + v63, &unk_27EF5CCB8, &qword_24A82FDB0);
      v64 = v63;
      v65 = v88;
      v81 = *v89;
      if ((v81)(v64, 1, v88) == 1)
      {
        if ((v81)(v84 + v90, 1, v65) != 1)
        {
          goto LABEL_16;
        }

        sub_24A67F378(v90, &unk_27EF5CCB8, &qword_24A82FDB0);
      }

      else
      {
        v66 = v90;
        sub_24A67E964(v90, v87, &unk_27EF5CCB8, &qword_24A82FDB0);
        v67 = v84 + v66;
        v68 = v88;
        if ((v81)(v67, 1, v88) == 1)
        {
          (*v85)(v87, v68);
LABEL_16:
          sub_24A67F378(v90, &qword_27EF5D040, &unk_24A830E50);
          goto LABEL_17;
        }

        (*v82)(v83, v84 + v90, v68);
        sub_24A7B8564(&qword_27EF5D048, MEMORY[0x277CC9260]);
        LODWORD(v81) = sub_24A82CF84();
        v84 = *v85;
        v84(v83, v68);
        v84(v87, v68);
        sub_24A67F378(v90, &unk_27EF5CCB8, &qword_24A82FDB0);
        if ((v81 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      v69 = v16[12];
      v70 = &v20[v69];
      v71 = v20[v69 + 8];
      v72 = &v23[v69];
      v73 = v23[v69 + 8];
      if ((v71 & 1) == 0)
      {
        break;
      }

      if (v73)
      {
        goto LABEL_44;
      }

LABEL_17:
      sub_24A7B867C(v20, type metadata accessor for FMIPBeaconShare);
      v45 = (v45 + 1) & v46;
      if (((*(v34 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    if (*v70 != *v72)
    {
      LOBYTE(v73) = 1;
    }

    if (v73)
    {
      goto LABEL_17;
    }

LABEL_44:
    if (v20[v16[13]] != v23[v16[13]] || v20[v16[14]] != v23[v16[14]])
    {
      goto LABEL_17;
    }

    sub_24A7B867C(v20, type metadata accessor for FMIPBeaconShare);
    result = sub_24A7B867C(v23, type metadata accessor for FMIPBeaconShare);
    a1 = v80;
    v35 = v82;
    v8 = v83;
    v25 = v79;
    v27 = v78;
    v29 = v77;
    v33 = v76;
    v32 = v75;
  }

  while (v75);
LABEL_8:
  v37 = v28;
  while (1)
  {
    v28 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v28 >= v33)
    {
      return 1;
    }

    v38 = *(v29 + 8 * v28);
    ++v37;
    if (v38)
    {
      v82 = v35;
      v76 = v33;
      v77 = v29;
      v83 = v8;
      v36 = __clz(__rbit64(v38));
      v75 = (v38 - 1) & v38;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24A7B4B08(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = *(result + 56);
  v29 = result + 56;
  v6 = 1 << *(result + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & v5;
  v9 = (v6 + 63) >> 6;
  v10 = a2 + 56;
  v30 = v9;
  v31 = result;
  if ((v7 & v5) == 0)
  {
    goto LABEL_8;
  }

  do
  {
    v11 = __clz(__rbit64(v8));
    v12 = (v8 - 1) & v8;
LABEL_13:
    v15 = *(*(v3 + 48) + (v11 | (v4 << 6)));
    v16 = *(a2 + 40);
    sub_24A82DCC4();
    v32 = v12;
    sub_24A82D094();

    v17 = sub_24A82DD24();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v10 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
      return 0;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = *(*(a2 + 48) + v19);
      if (v21 <= 1)
      {
        break;
      }

      if (v21 == 2)
      {
        v23 = 0xE400000000000000;
        v22 = 1702060387;
        if (v15 <= 1)
        {
          goto LABEL_43;
        }
      }

      else
      {
        if (v21 == 3)
        {
          v22 = 0x6F6C61646E617473;
        }

        else
        {
          v22 = 1702131053;
        }

        if (v21 == 3)
        {
          v23 = 0xEA0000000000656ELL;
        }

        else
        {
          v23 = 0xE400000000000000;
        }

        if (v15 <= 1)
        {
          goto LABEL_43;
        }
      }

LABEL_24:
      v24 = 0x6F6C61646E617473;
      if (v15 != 3)
      {
        v24 = 1702131053;
      }

      v25 = 0xEA0000000000656ELL;
      if (v15 != 3)
      {
        v25 = 0xE400000000000000;
      }

      if (v15 == 2)
      {
        v26 = 1702060387;
      }

      else
      {
        v26 = v24;
      }

      if (v15 == 2)
      {
        v27 = 0xE400000000000000;
      }

      else
      {
        v27 = v25;
      }

      if (v22 == v26)
      {
        goto LABEL_49;
      }

LABEL_50:
      v28 = sub_24A82DC04();

      if (v28)
      {
        goto LABEL_54;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v10 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        return 0;
      }
    }

    if (*(*(a2 + 48) + v19))
    {
      v22 = 0x7468676972;
    }

    else
    {
      v22 = 1952867692;
    }

    if (*(*(a2 + 48) + v19))
    {
      v23 = 0xE500000000000000;
    }

    else
    {
      v23 = 0xE400000000000000;
    }

    if (v15 > 1)
    {
      goto LABEL_24;
    }

LABEL_43:
    if (!v15)
    {
      v27 = 0xE400000000000000;
      if (v22 == 1952867692)
      {
        goto LABEL_49;
      }

      goto LABEL_50;
    }

    v27 = 0xE500000000000000;
    if (v22 != 0x7468676972)
    {
      goto LABEL_50;
    }

LABEL_49:
    if (v23 != v27)
    {
      goto LABEL_50;
    }

LABEL_54:
    v9 = v30;
    v3 = v31;
    v8 = v32;
  }

  while (v32);
LABEL_8:
  v13 = v4;
  while (1)
  {
    v4 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v14 = *(v29 + 8 * v4);
    ++v13;
    if (v14)
    {
      v11 = __clz(__rbit64(v14));
      v12 = (v14 - 1) & v14;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24A7B4E78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPItem();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v35 - v10;
  result = MEMORY[0x28223BE20](v9);
  v15 = &v35 - v13;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v16 = 0;
  v17 = *(a1 + 56);
  v36 = a1 + 56;
  v18 = 1 << *(a1 + 32);
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  v22 = a2 + 56;
  v37 = v21;
  v38 = &v35 - v13;
  v39 = v14;
  v40 = a1;
  if (v20)
  {
    while (1)
    {
      v23 = __clz(__rbit64(v20));
      v41 = (v20 - 1) & v20;
LABEL_13:
      v26 = *(v14 + 72);
      sub_24A7B85AC(*(a1 + 48) + v26 * (v23 | (v16 << 6)), v15, type metadata accessor for FMIPItem);
      sub_24A7B8614(v15, v11, type metadata accessor for FMIPItem);
      v27 = *(a2 + 40);
      sub_24A82DCC4();
      v28 = *(v11 + 44);
      v29 = *(v11 + 45);
      sub_24A82D094();
      v30 = sub_24A82DD24();
      v31 = -1 << *(a2 + 32);
      v32 = v30 & ~v31;
      if (((*(v22 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
      {
        break;
      }

      v33 = ~v31;
      while (1)
      {
        sub_24A7B85AC(*(a2 + 48) + v32 * v26, v8, type metadata accessor for FMIPItem);
        v34 = _s8FMIPCore8FMIPItemV2eeoiySbAC_ACtFZ_0(v8, v11);
        sub_24A7B867C(v8, type metadata accessor for FMIPItem);
        if (v34)
        {
          break;
        }

        v32 = (v32 + 1) & v33;
        if (((*(v22 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      result = sub_24A7B867C(v11, type metadata accessor for FMIPItem);
      v14 = v39;
      a1 = v40;
      v21 = v37;
      v15 = v38;
      v20 = v41;
      if (!v41)
      {
        goto LABEL_8;
      }
    }

LABEL_21:
    sub_24A7B867C(v11, type metadata accessor for FMIPItem);
    return 0;
  }

LABEL_8:
  v24 = v16;
  while (1)
  {
    v16 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v16 >= v21)
    {
      return 1;
    }

    v25 = *(v36 + 8 * v16);
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v41 = (v25 - 1) & v25;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24A7B5170(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = *(result + 56);
  v29 = result + 56;
  v6 = 1 << *(result + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & v5;
  v9 = (v6 + 63) >> 6;
  v10 = a2 + 56;
  v30 = v9;
  v31 = result;
  if ((v7 & v5) == 0)
  {
    goto LABEL_8;
  }

  do
  {
    v11 = __clz(__rbit64(v8));
    v12 = (v8 - 1) & v8;
LABEL_13:
    v15 = *(*(v3 + 48) + (v11 | (v4 << 6)));
    v16 = *(a2 + 40);
    sub_24A82DCC4();
    sub_24A82D094();

    v17 = sub_24A82DD24();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v10 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
      return 0;
    }

    v32 = v12;
    v20 = ~v18;
    while (1)
    {
      v21 = *(*(a2 + 48) + v19);
      if (v21 <= 1)
      {
        if (*(*(a2 + 48) + v19))
        {
          v22 = 1702060387;
        }

        else
        {
          v22 = 0x6F6C61646E617473;
        }

        if (*(*(a2 + 48) + v19))
        {
          v23 = 0xE400000000000000;
        }

        else
        {
          v23 = 0xEA0000000000656ELL;
        }

        if (v15 > 1)
        {
LABEL_24:
          v24 = 0x6475427468676972;
          if (v15 != 3)
          {
            v24 = 0x636972656E6567;
          }

          v25 = 0xE800000000000000;
          if (v15 != 3)
          {
            v25 = 0xE700000000000000;
          }

          if (v15 == 2)
          {
            v26 = 0x6475427466656CLL;
          }

          else
          {
            v26 = v24;
          }

          if (v15 == 2)
          {
            v27 = 0xE700000000000000;
          }

          else
          {
            v27 = v25;
          }

          goto LABEL_43;
        }
      }

      else if (v21 == 2)
      {
        v23 = 0xE700000000000000;
        v22 = 0x6475427466656CLL;
        if (v15 > 1)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v21 == 3)
        {
          v22 = 0x6475427468676972;
        }

        else
        {
          v22 = 0x636972656E6567;
        }

        if (v21 == 3)
        {
          v23 = 0xE800000000000000;
        }

        else
        {
          v23 = 0xE700000000000000;
        }

        if (v15 > 1)
        {
          goto LABEL_24;
        }
      }

      v26 = 0x6F6C61646E617473;
      v27 = 0xEA0000000000656ELL;
      if (v15)
      {
        v27 = 0xE400000000000000;
        v26 = 1702060387;
      }

LABEL_43:
      if (v22 == v26 && v23 == v27)
      {
        break;
      }

      v28 = sub_24A82DC04();

      if (v28)
      {
        goto LABEL_51;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v10 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        return 0;
      }
    }

LABEL_51:
    v9 = v30;
    v3 = v31;
    v8 = v32;
  }

  while (v32);
LABEL_8:
  v13 = v4;
  while (1)
  {
    v4 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v14 = *(v29 + 8 * v4);
    ++v13;
    if (v14)
    {
      v11 = __clz(__rbit64(v14));
      v12 = (v14 - 1) & v14;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24A7B54FC(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  v4 = *(a2 + 16);
  v5 = *(a1 + 16);
  if ((sub_24A69F944(*(a1 + 8), *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  sub_24A69FCF4(v5, v4);
  if (v6)
  {
    return v2 ^ v3 ^ 1u;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24A7B5578(char a1)
{
  v18 = MEMORY[0x277D84F90];
  v2 = MEMORY[0x277D49808];
  if (a1)
  {
    sub_24A6BBA94(&qword_27EF5E658, &qword_24A838C60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24A8343E0;
    v4 = *MEMORY[0x277D49818];
    v5 = *MEMORY[0x277D49830];
    *(inited + 32) = *MEMORY[0x277D49818];
    *(inited + 40) = v5;
    v6 = *v2;
    v7 = *MEMORY[0x277D49820];
    *(inited + 48) = *v2;
    *(inited + 56) = v7;
    v8 = v4;
    v9 = v5;
    v10 = v6;
    v11 = v7;
    sub_24A77ECDC(inited);
  }

  if ((a1 & 2) != 0)
  {
    sub_24A6BBA94(&qword_27EF5E658, &qword_24A838C60);
    v12 = swift_initStackObject();
    *(v12 + 16) = xmmword_24A8356C0;
    v13 = *v2;
    v14 = *MEMORY[0x277D49810];
    *(v12 + 32) = *v2;
    *(v12 + 40) = v14;
    v15 = v13;
    v16 = v14;
    sub_24A77ECDC(v12);
  }

  return v18;
}

uint64_t sub_24A7B569C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_24A7E0238(a1);

  *a2 = v3;
  return result;
}

void *sub_24A7B56DC()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D49680]) init];
  [v1 setSubscribe_];
  [v1 setReportDeviceEvents_];
  v2 = MEMORY[0x277D49858];
  if (!*v0)
  {
    v2 = MEMORY[0x277D49860];
  }

  v3 = *v2;
  [v1 setCachePolicy_];

  v4 = *(v0 + 16);
  v56 = *(v0 + 24);
  sub_24A7B5578(*(v0 + 8));
  type metadata accessor for SPBeaconType(0);
  v5 = sub_24A82D224();

  [v1 setSearchTypes_];

  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = sub_24A74DDB4(*(v4 + 16), 0);
    v8 = *(sub_24A82CAA4() - 8);
    v9 = sub_24A74E600(v58, (v7 + ((*(v8 + 80) + 32) & ~*(v8 + 80))), v6, v4);

    sub_24A6BAFBC();
    if (v9 != v6)
    {
      __break(1u);
    }
  }

  sub_24A82CAA4();
  v10 = sub_24A82D224();

  [v1 setSearchIdentifiers_];

  sub_24A6BBA94(&qword_27EF5E650, &qword_24A838C58);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_24A83B990;
  v12 = *MEMORY[0x277D49700];
  v13 = *MEMORY[0x277D49708];
  *(v11 + 32) = *MEMORY[0x277D49700];
  *(v11 + 40) = v13;
  v14 = *MEMORY[0x277D49728];
  v15 = *MEMORY[0x277D49730];
  *(v11 + 48) = *MEMORY[0x277D49728];
  *(v11 + 56) = v15;
  v16 = *MEMORY[0x277D49738];
  v17 = *MEMORY[0x277D49740];
  *(v11 + 64) = *MEMORY[0x277D49738];
  *(v11 + 72) = v17;
  v57 = v1;
  v18 = *MEMORY[0x277D49748];
  v52 = *MEMORY[0x277D49750];
  v19 = *MEMORY[0x277D49750];
  *(v11 + 80) = *MEMORY[0x277D49748];
  *(v11 + 88) = v19;
  v50 = *MEMORY[0x277D49758];
  v54 = *MEMORY[0x277D49768];
  v20 = *MEMORY[0x277D49768];
  *(v11 + 96) = *MEMORY[0x277D49758];
  *(v11 + 104) = v20;
  v21 = *MEMORY[0x277D49770];
  v53 = *MEMORY[0x277D49710];
  v22 = *MEMORY[0x277D49710];
  *(v11 + 112) = *MEMORY[0x277D49770];
  *(v11 + 120) = v22;
  v51 = *MEMORY[0x277D49718];
  v55 = *MEMORY[0x277D49720];
  v23 = *MEMORY[0x277D49720];
  *(v11 + 128) = *MEMORY[0x277D49718];
  *(v11 + 136) = v23;
  type metadata accessor for SPBeaconLocationSource(0);
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v29 = v17;
  v30 = v18;
  v31 = v57;
  v32 = v52;
  v33 = v50;
  v34 = v54;
  v35 = v21;
  v36 = v53;
  v37 = v51;
  v38 = v55;
  v39 = sub_24A82D224();

  [v57 setSearchLocationSources_];

  v40 = sub_24A82C514();
  v58[3] = v40;
  v58[4] = sub_24A7B8564(&unk_281514680, MEMORY[0x277D08A28]);
  v41 = sub_24A697E3C(v58);
  (*(*(v40 - 8) + 104))(v41, *MEMORY[0x277D08A10], v40);
  LOBYTE(v40) = sub_24A82C4D4();
  sub_24A6876E8(v58);
  if (v40)
  {
    v42 = *MEMORY[0x277D49760];
    v43 = [v57 searchLocationSources];
    v44 = sub_24A82D244();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v44 = sub_24A780930(0, v44[2] + 1, 1, v44);
    }

    v46 = v44[2];
    v45 = v44[3];
    if (v46 >= v45 >> 1)
    {
      v44 = sub_24A780930((v45 > 1), v46 + 1, 1, v44);
    }

    v44[2] = v46 + 1;
    v44[v46 + 4] = v42;
    v47 = sub_24A82D224();

    v31 = v57;
    [v57 setSearchLocationSources_];
  }

  sub_24A679170(0, &qword_27EF5ED10, 0x277D49678);
  sub_24A7B8564(&qword_281514670, MEMORY[0x277CC95F0]);
  v48 = sub_24A82CED4();
  [v31 setLastOnlineLocationInfo_];

  return v31;
}

uint64_t sub_24A7B5C68(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 1) == *(a2 + 1))
  {
    v3 = *(a1 + 3);
    v4 = a1[32];
    v5 = *(a2 + 3);
    v6 = a2[32];
    if (sub_24A69F944(*(a1 + 2), *(a2 + 2)))
    {
      sub_24A69FCF4(v3, v5);
      if ((v7 & 1) != 0 && ((v4 ^ v6) & 1) == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_24A7B5CFC(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v2 = a2;
    v3 = a1;
    if (*(a1 + 16) == *(a2 + 16))
    {
      v4 = 0;
      v5 = *(a1 + 64);
      v47 = a1 + 64;
      v6 = 1 << *(a1 + 32);
      v7 = -1;
      if (v6 < 64)
      {
        v7 = ~(-1 << v6);
      }

      v8 = v7 & v5;
      v46 = (v6 + 63) >> 6;
      if ((v7 & v5) != 0)
      {
        goto LABEL_9;
      }

LABEL_10:
      v13 = v4;
      do
      {
        v4 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          __break(1u);
          return;
        }

        if (v4 >= v46)
        {
          return;
        }

        v14 = *(v47 + 8 * v4);
        ++v13;
      }

      while (!v14);
      v11 = __clz(__rbit64(v14));
      v12 = (v14 - 1) & v14;
      while (1)
      {
        v15 = v11 | (v4 << 6);
        v16 = (*(v3 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        v19 = (*(v3 + 56) + 24 * v15);
        v20 = *v19;
        v52 = v19[1];
        v51 = v19[2];
        v21 = v19[3];
        v22 = *(v19 + 1);
        v23 = *(v19 + 2);

        v24 = v22;
        if (!v18)
        {
          break;
        }

        v25 = v24;
        v50 = v12;
        v26 = sub_24A6A2D48(v17, v18);
        v28 = v27;

        if ((v28 & 1) == 0)
        {
          goto LABEL_88;
        }

        v49 = v21;
        v29 = v2;
        v30 = (*(v2 + 56) + 24 * v26);
        v31 = *v30;
        v32 = v30[1];
        v33 = v30[2];
        v34 = v30[3];
        v35 = v25;
        v36 = *(v30 + 1);
        v37 = *(v30 + 2);
        sub_24A679170(0, &qword_281512B68, 0x277D82BB8);
        v38 = v36;
        v25 = v35;
        v39 = v38;
        if (sub_24A82D5E4() & 1) == 0 || v37 != v23 || ((v31 ^ v20) & 1) != 0 || ((v52 ^ v32) & 1) != 0 || ((v51 ^ v33))
        {

LABEL_88:
          return;
        }

        v40 = 0xE700000000000000;
        v41 = 0x6E776F6E6B6E75;
        v42 = 0x6E776F6E6B6E75;
        v2 = v29;
        switch(v34)
        {
          case 1:
            v42 = 0x756F7364776F7263;
            v40 = 0xEC00000064656372;
            break;
          case 2:
            v40 = 0xE300000000000000;
            v42 = 5460039;
            break;
          case 3:
            v40 = 0xE400000000000000;
            v42 = 1768319319;
            break;
          case 4:
            v42 = 0x61636F4C65666173;
            v40 = 0xEC0000006E6F6974;
            break;
          case 5:
            v42 = 0xD000000000000012;
            v40 = 0x800000024A8439F0;
            break;
          case 6:
            v40 = 0xE800000000000000;
            v42 = 0x656D69746C616572;
            break;
          case 7:
            v42 = 0x6F4C646572696170;
            v40 = 0xEE006E6F69746163;
            break;
          case 8:
            v42 = 0x6E6E6F437473616CLL;
            v43 = 1702126437;
            goto LABEL_41;
          case 9:
            v42 = 0xD000000000000019;
            v40 = 0x800000024A843A30;
            break;
          case 10:
            v42 = 0xD000000000000010;
            v40 = 0x800000024A843A50;
            break;
          case 11:
            v40 = 0xE900000000000072;
            v42 = 0x656E774F7261656ELL;
            break;
          case 12:
            v42 = 0xD000000000000018;
            v40 = 0x800000024A843A70;
            break;
          case 13:
            v42 = 0x786F725072656570;
            v40 = 0xEB00000000646569;
            break;
          case 14:
            v42 = 0x6C627550666C6573;
            v43 = 1701344105;
LABEL_41:
            v40 = v43 | 0xED00006400000000;
            break;
          case 15:
            v42 = 0xD000000000000014;
            v40 = 0x800000024A843AB0;
            break;
          case 16:
            v40 = 0xE600000000000000;
            v42 = 0x646568636163;
            break;
          case 17:
            v42 = 0x6552746E65746E69;
            v40 = 0xEE0065736E6F7073;
            break;
          case 18:
            v42 = 0xD000000000000014;
            v40 = 0x800000024A843AE0;
            break;
          case 19:
            v42 = 0xD000000000000013;
            v40 = 0x800000024A843B00;
            break;
          default:
            break;
        }

        v44 = 0xE700000000000000;
        v3 = a1;
        switch(v49)
        {
          case 1:
            v44 = 0xEC00000064656372;
            if (v42 == 0x756F7364776F7263)
            {
              goto LABEL_80;
            }

            goto LABEL_7;
          case 2:
            v44 = 0xE300000000000000;
            if (v42 != 5460039)
            {
              goto LABEL_7;
            }

            goto LABEL_80;
          case 3:
            v44 = 0xE400000000000000;
            if (v42 != 1768319319)
            {
              goto LABEL_7;
            }

            goto LABEL_80;
          case 4:
            v44 = 0xEC0000006E6F6974;
            if (v42 != 0x61636F4C65666173)
            {
              goto LABEL_7;
            }

            goto LABEL_80;
          case 5:
            v44 = 0x800000024A8439F0;
            if (v42 != 0xD000000000000012)
            {
              goto LABEL_7;
            }

            goto LABEL_80;
          case 6:
            v44 = 0xE800000000000000;
            if (v42 != 0x656D69746C616572)
            {
              goto LABEL_7;
            }

            goto LABEL_80;
          case 7:
            v44 = 0xEE006E6F69746163;
            if (v42 != 0x6F4C646572696170)
            {
              goto LABEL_7;
            }

            goto LABEL_80;
          case 8:
            v41 = 0x6E6E6F437473616CLL;
            v45 = 1702126437;
            goto LABEL_78;
          case 9:
            v44 = 0x800000024A843A30;
            if (v42 != 0xD000000000000019)
            {
              goto LABEL_7;
            }

            goto LABEL_80;
          case 10:
            v44 = 0x800000024A843A50;
            if (v42 != 0xD000000000000010)
            {
              goto LABEL_7;
            }

            goto LABEL_80;
          case 11:
            v44 = 0xE900000000000072;
            if (v42 != 0x656E774F7261656ELL)
            {
              goto LABEL_7;
            }

            goto LABEL_80;
          case 12:
            v44 = 0x800000024A843A70;
            if (v42 != 0xD000000000000018)
            {
              goto LABEL_7;
            }

            goto LABEL_80;
          case 13:
            v44 = 0xEB00000000646569;
            if (v42 != 0x786F725072656570)
            {
              goto LABEL_7;
            }

            goto LABEL_80;
          case 14:
            v41 = 0x6C627550666C6573;
            v45 = 1701344105;
LABEL_78:
            v44 = v45 | 0xED00006400000000;
            goto LABEL_79;
          case 15:
            v44 = 0x800000024A843AB0;
            if (v42 != 0xD000000000000014)
            {
              goto LABEL_7;
            }

            goto LABEL_80;
          case 16:
            v44 = 0xE600000000000000;
            if (v42 != 0x646568636163)
            {
              goto LABEL_7;
            }

            goto LABEL_80;
          case 17:
            v44 = 0xEE0065736E6F7073;
            if (v42 != 0x6552746E65746E69)
            {
              goto LABEL_7;
            }

            goto LABEL_80;
          case 18:
            v44 = 0x800000024A843AE0;
            if (v42 != 0xD000000000000014)
            {
              goto LABEL_7;
            }

            goto LABEL_80;
          case 19:
            v44 = 0x800000024A843B00;
            if (v42 != 0xD000000000000013)
            {
              goto LABEL_7;
            }

            goto LABEL_80;
          default:
LABEL_79:
            if (v42 != v41)
            {
              goto LABEL_7;
            }

LABEL_80:
            if (v40 == v44)
            {

              v8 = v50;
              if (!v50)
              {
                goto LABEL_10;
              }
            }

            else
            {
LABEL_7:
              v9 = v25;
              v10 = sub_24A82DC04();

              v8 = v50;
              if ((v10 & 1) == 0)
              {
                return;
              }

              if (!v50)
              {
                goto LABEL_10;
              }
            }

LABEL_9:
            v11 = __clz(__rbit64(v8));
            v12 = (v8 - 1) & v8;
            break;
        }
      }
    }
  }
}

uint64_t sub_24A7B64A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v74 - v6;
  v8 = sub_24A6BBA94(&qword_27EF5ED48, &unk_24A83BA70);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v74 - v10;
  v87 = type metadata accessor for FMIPDeviceConnectedState(0);
  v96 = *(v87 - 8);
  v12 = *(v96 + 64);
  v13 = MEMORY[0x28223BE20](v87);
  v97 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v90 = &v74 - v16;
  MEMORY[0x28223BE20](v15);
  v85 = &v74 - v17;
  v18 = sub_24A82CAA4();
  v88 = *(v18 - 8);
  v19 = *(v88 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v89 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v92 = &v74 - v22;
  v23 = sub_24A6BBA94(&qword_27EF5E208, &qword_24A837810);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v27 = &v74 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v25);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v84 = a2;
  v86 = &v74 - v29;
  v76 = v7;
  v30 = 0;
  v79 = a1;
  v82 = v8;
  v31 = *(a1 + 64);
  v75 = a1 + 64;
  v32 = 1 << *(a1 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & v31;
  v35 = (v32 + 63) >> 6;
  v77 = v88 + 16;
  v98 = (v88 + 32);
  v91 = (v88 + 8);
  v80 = v35;
  v81 = (v88 + 48);
  v83 = v11;
  v36 = v90;
  v78 = v18;
  v94 = v27;
  while (1)
  {
    if (!v34)
    {
      if (v35 <= v30 + 1)
      {
        v42 = v30 + 1;
      }

      else
      {
        v42 = v35;
      }

      v43 = v42 - 1;
      v44 = v86;
      while (1)
      {
        v45 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          break;
        }

        if (v45 >= v35)
        {
          v72 = sub_24A6BBA94(&qword_27EF5E200, &qword_24A83BA80);
          (*(*(v72 - 8) + 56))(v27, 1, 1, v72);
          v95 = 0;
          v30 = v43;
          goto LABEL_18;
        }

        v46 = *(v75 + 8 * v45);
        ++v30;
        if (v46)
        {
          v40 = v36;
          v95 = (v46 - 1) & v46;
          v41 = __clz(__rbit64(v46)) | (v45 << 6);
          v30 = v45;
          goto LABEL_17;
        }
      }

      __break(1u);
      return result;
    }

    v40 = v36;
    v95 = (v34 - 1) & v34;
    v41 = __clz(__rbit64(v34)) | (v30 << 6);
LABEL_17:
    v18 = v78;
    v47 = v79;
    v48 = v88;
    (*(v88 + 16))(v92, *(v79 + 48) + *(v88 + 72) * v41, v78);
    v49 = v85;
    sub_24A7B85AC(*(v47 + 56) + *(v96 + 72) * v41, v85, type metadata accessor for FMIPDeviceConnectedState);
    v50 = sub_24A6BBA94(&qword_27EF5E200, &qword_24A83BA80);
    v51 = *(v50 + 48);
    v27 = v94;
    (*(v48 + 32))();
    sub_24A7B8614(v49, &v27[v51], type metadata accessor for FMIPDeviceConnectedState);
    (*(*(v50 - 8) + 56))(v27, 0, 1, v50);
    v44 = v86;
    v36 = v40;
LABEL_18:
    sub_24A67E8FC(v27, v44, &qword_27EF5E208, &qword_24A837810);
    v52 = sub_24A6BBA94(&qword_27EF5E200, &qword_24A83BA80);
    v53 = (*(*(v52 - 8) + 48))(v44, 1, v52);
    v93 = v53 == 1;
    if (v53 == 1)
    {
      return v93;
    }

    v54 = *(v52 + 48);
    v55 = *v98;
    v56 = v89;
    (*v98)(v89, v44, v18);
    sub_24A7B8614(v44 + v54, v36, type metadata accessor for FMIPDeviceConnectedState);
    v57 = v84;
    v58 = sub_24A77EDF8(v56);
    v59 = v36;
    v61 = v60;
    v62 = *v91;
    (*v91)(v56, v18);
    if ((v61 & 1) == 0)
    {
      break;
    }

    v63 = *(v57 + 56) + *(v96 + 72) * v58;
    v64 = v97;
    sub_24A7B85AC(v63, v97, type metadata accessor for FMIPDeviceConnectedState);
    v65 = *(v82 + 48);
    v66 = v64;
    v67 = v83;
    sub_24A67E964(v66, v83, &qword_27EF5D020, &qword_24A830E40);
    sub_24A67E964(v59, v67 + v65, &qword_27EF5D020, &qword_24A830E40);
    v68 = *v81;
    if ((*v81)(v67, 1, v18) == 1)
    {
      if (v68(v67 + v65, 1, v18) != 1)
      {
        sub_24A7B867C(v97, type metadata accessor for FMIPDeviceConnectedState);
        sub_24A7B867C(v90, type metadata accessor for FMIPDeviceConnectedState);
        goto LABEL_31;
      }

      sub_24A67F378(v67, &qword_27EF5D020, &qword_24A830E40);
      v36 = v90;
    }

    else
    {
      v69 = v76;
      sub_24A67E964(v67, v76, &qword_27EF5D020, &qword_24A830E40);
      if (v68(v67 + v65, 1, v18) == 1)
      {
        sub_24A7B867C(v97, type metadata accessor for FMIPDeviceConnectedState);
        sub_24A7B867C(v90, type metadata accessor for FMIPDeviceConnectedState);
        v62(v69, v18);
LABEL_31:
        sub_24A67F378(v67, &qword_27EF5ED48, &unk_24A83BA70);
        return 0;
      }

      v70 = v92;
      v55(v92, v67 + v65, v18);
      sub_24A7B8564(&qword_27EF5DC48, MEMORY[0x277CC95F0]);
      v71 = sub_24A82CF84();
      v62(v70, v18);
      v62(v69, v18);
      sub_24A67F378(v67, &qword_27EF5D020, &qword_24A830E40);
      v36 = v90;
      if ((v71 & 1) == 0)
      {
        sub_24A7B867C(v97, type metadata accessor for FMIPDeviceConnectedState);
        v73 = v36;
        goto LABEL_32;
      }
    }

    v37 = v87;
    v38 = *(v97 + *(v87 + 20));
    sub_24A7B867C(v97, type metadata accessor for FMIPDeviceConnectedState);
    v39 = *(v36 + *(v37 + 20));
    result = sub_24A7B867C(v36, type metadata accessor for FMIPDeviceConnectedState);
    v35 = v80;
    v27 = v94;
    v34 = v95;
    if (v38 != v39)
    {
      return v93;
    }
  }

  v73 = v59;
LABEL_32:
  sub_24A7B867C(v73, type metadata accessor for FMIPDeviceConnectedState);
  return 0;
}

uint64_t sub_24A7B6DF0(uint64_t a1, uint64_t a2)
{
  v58 = sub_24A82CAA4();
  v53 = *(v58 - 8);
  v4 = *(v53 + 64);
  v5 = MEMORY[0x28223BE20](v58);
  v54 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v52 = v48 - v7;
  v8 = sub_24A6BBA94(&qword_27EF5ED18, &qword_24A83BA38);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  result = MEMORY[0x28223BE20](v10);
  v14 = v48 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v51 = v13;
  v15 = 0;
  v49 = a1;
  v18 = *(a1 + 64);
  v17 = a1 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v48[0] = v17;
  v48[1] = v53 + 16;
  v55 = v48 - v12;
  v56 = (v53 + 32);
  v50 = (v53 + 8);
  while (v21)
  {
    v57 = (v21 - 1) & v21;
    v23 = __clz(__rbit64(v21)) | (v15 << 6);
LABEL_16:
    v28 = v49;
    v29 = v52;
    v30 = v53;
    v31 = v58;
    (*(v53 + 16))(v52, *(v49 + 48) + *(v53 + 72) * v23, v58);
    v32 = *(*(v28 + 56) + v23);
    v33 = sub_24A6BBA94(&qword_27EF5ED20, &qword_24A83BA40);
    v34 = *(v33 + 48);
    v35 = *(v30 + 32);
    v36 = v51;
    v35(v51, v29, v31);
    *(v36 + v34) = v32;
    (*(*(v33 - 8) + 56))(v36, 0, 1, v33);
    v14 = v55;
LABEL_17:
    sub_24A67E8FC(v36, v14, &qword_27EF5ED18, &qword_24A83BA38);
    v37 = sub_24A6BBA94(&qword_27EF5ED20, &qword_24A83BA40);
    v38 = (*(*(v37 - 8) + 48))(v14, 1, v37);
    v39 = v38 == 1;
    if (v38 != 1)
    {
      v40 = *(v37 + 48);
      v41 = v54;
      v42 = v58;
      (*v56)(v54, v14, v58);
      v43 = v14[v40];
      v44 = sub_24A77EDF8(v41);
      LOBYTE(v40) = v45;
      result = (*v50)(v41, v42);
      if (v40)
      {
        v46 = v43 == *(*(a2 + 56) + v44);
        v14 = v55;
        v21 = v57;
        if (v46)
        {
          continue;
        }
      }
    }

    return v39;
  }

  if (v22 <= v15 + 1)
  {
    v24 = v15 + 1;
  }

  else
  {
    v24 = v22;
  }

  v25 = v24 - 1;
  while (1)
  {
    v26 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v26 >= v22)
    {
      v47 = sub_24A6BBA94(&qword_27EF5ED20, &qword_24A83BA40);
      v36 = v51;
      (*(*(v47 - 8) + 56))(v51, 1, 1, v47);
      v57 = 0;
      v15 = v25;
      goto LABEL_17;
    }

    v27 = *(v48[0] + 8 * v26);
    ++v15;
    if (v27)
    {
      v57 = (v27 - 1) & v27;
      v23 = __clz(__rbit64(v27)) | (v26 << 6);
      v15 = v26;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24A7B7274(uint64_t a1, uint64_t a2)
{
  v74 = type metadata accessor for FMIPDeviceLostModeMetadata();
  v77 = *(v74 - 8);
  v4 = *(v77 + 64);
  v5 = MEMORY[0x28223BE20](v74);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v61 - v9;
  MEMORY[0x28223BE20](v8);
  v72 = &v61 - v11;
  v78 = sub_24A82CAA4();
  v12 = *(v78 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v78);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v71 = &v61 - v17;
  v18 = sub_24A6BBA94(&qword_27EF5ED60, &qword_24A83BA98);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v20);
  v76 = a1;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(v76 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v70 = &v61 - v24;
  v25 = 0;
  v26 = *(v76 + 64);
  v61 = v76 + 64;
  v27 = 1 << *(v76 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & v26;
  v30 = (v27 + 63) >> 6;
  v63 = v12 + 16;
  v64 = v22;
  v75 = (v12 + 32);
  v66 = v16;
  v67 = v12;
  v68 = v7;
  v69 = (v12 + 8);
  v62 = v30;
  v65 = a2;
  while (v29)
  {
    v31 = v10;
    v73 = (v29 - 1) & v29;
    v32 = __clz(__rbit64(v29)) | (v25 << 6);
LABEL_16:
    v38 = v76;
    v39 = v67;
    v40 = v71;
    v41 = v78;
    (*(v67 + 16))(v71, *(v76 + 48) + *(v67 + 72) * v32, v78);
    v42 = v72;
    sub_24A7B85AC(*(v38 + 56) + *(v77 + 72) * v32, v72, type metadata accessor for FMIPDeviceLostModeMetadata);
    v43 = sub_24A6BBA94(&qword_27EF5ED68, qword_24A83BAA0);
    v44 = *(v43 + 48);
    v45 = *(v39 + 32);
    v46 = v64;
    v45(v64, v40, v41);
    v47 = v42;
    v22 = v46;
    sub_24A7B8614(v47, &v46[v44], type metadata accessor for FMIPDeviceLostModeMetadata);
    (*(*(v43 - 8) + 56))(v46, 0, 1, v43);
    v10 = v31;
    a2 = v65;
    v16 = v66;
    v35 = v70;
LABEL_17:
    sub_24A67E8FC(v22, v35, &qword_27EF5ED60, &qword_24A83BA98);
    v48 = sub_24A6BBA94(&qword_27EF5ED68, qword_24A83BAA0);
    v49 = (*(*(v48 - 8) + 48))(v35, 1, v48);
    v50 = v49 == 1;
    if (v49 == 1)
    {
      return v50;
    }

    v51 = *(v48 + 48);
    v52 = v78;
    (*v75)(v16, v35, v78);
    sub_24A7B8614(v35 + v51, v10, type metadata accessor for FMIPDeviceLostModeMetadata);
    v53 = sub_24A77EDF8(v16);
    v55 = v54;
    (*v69)(v16, v52);
    if ((v55 & 1) == 0)
    {
      goto LABEL_38;
    }

    v56 = v68;
    sub_24A7B85AC(*(a2 + 56) + *(v77 + 72) * v53, v68, type metadata accessor for FMIPDeviceLostModeMetadata);
    v57 = *(v74 + 48);
    if ((sub_24A82C9E4() & 1) == 0 || qword_24A83BD70[v56[56]] != qword_24A83BD70[v10[56]] || (*(v56 + 5) != *(v10 + 5) || *(v56 + 6) != *(v10 + 6)) && (sub_24A82DC04() & 1) == 0 || (*(v56 + 1) != *(v10 + 1) || *(v56 + 2) != *(v10 + 2)) && (sub_24A82DC04() & 1) == 0 || (*(v56 + 3) != *(v10 + 3) || *(v56 + 4) != *(v10 + 4)) && (sub_24A82DC04() & 1) == 0 || *v56 != *v10 || v56[1] != v10[1] || v56[2] != v10[2])
    {
      sub_24A7B867C(v56, type metadata accessor for FMIPDeviceLostModeMetadata);
LABEL_38:
      sub_24A7B867C(v10, type metadata accessor for FMIPDeviceLostModeMetadata);
      return 0;
    }

    v58 = v56[3];
    v59 = v10[3];
    sub_24A7B867C(v56, type metadata accessor for FMIPDeviceLostModeMetadata);
    result = sub_24A7B867C(v10, type metadata accessor for FMIPDeviceLostModeMetadata);
    v30 = v62;
    v29 = v73;
    if (v58 != v59)
    {
      return v50;
    }
  }

  if (v30 <= v25 + 1)
  {
    v33 = v25 + 1;
  }

  else
  {
    v33 = v30;
  }

  v34 = v33 - 1;
  v35 = v70;
  while (1)
  {
    v36 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v36 >= v30)
    {
      v60 = sub_24A6BBA94(&qword_27EF5ED68, qword_24A83BAA0);
      (*(*(v60 - 8) + 56))(v22, 1, 1, v60);
      v73 = 0;
      v25 = v34;
      goto LABEL_17;
    }

    v37 = *(v61 + 8 * v36);
    ++v25;
    if (v37)
    {
      v31 = v10;
      v73 = (v37 - 1) & v37;
      v32 = __clz(__rbit64(v37)) | (v36 << 6);
      v25 = v36;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24A7B7994(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v70 = sub_24A82CAA4();
  v62 = *(v70 - 8);
  v12 = *(v62 + 64);
  v13 = MEMORY[0x28223BE20](v70);
  v63 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v61 = &v55 - v15;
  v65 = a3;
  v66 = a4;
  v16 = sub_24A6BBA94(a3, a4);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  result = MEMORY[0x28223BE20](v18);
  v67 = &v55 - v21;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v64 = v20;
  v22 = 0;
  v58 = a1;
  v25 = *(a1 + 64);
  v24 = a1 + 64;
  v23 = v25;
  v26 = 1 << *(v24 - 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & v23;
  v29 = (v26 + 63) >> 6;
  v56 = v24;
  v57 = v62 + 16;
  v68 = (v62 + 32);
  v59 = v29;
  v60 = (v62 + 8);
  while (v28)
  {
    v69 = (v28 - 1) & v28;
    v30 = __clz(__rbit64(v28)) | (v22 << 6);
LABEL_16:
    v37 = v58;
    v39 = v61;
    v38 = v62;
    v40 = v70;
    (*(v62 + 16))(v61, *(v58 + 48) + *(v62 + 72) * v30, v70);
    LOBYTE(v37) = *(*(v37 + 56) + v30);
    v41 = sub_24A6BBA94(a5, a6);
    v42 = *(v41 + 48);
    v43 = *(v38 + 32);
    v33 = v64;
    v43(v64, v39, v40);
    *(v33 + v42) = v37;
    (*(*(v41 - 8) + 56))(v33, 0, 1, v41);
    v34 = v67;
LABEL_17:
    sub_24A67E8FC(v33, v34, v65, v66);
    v44 = sub_24A6BBA94(a5, a6);
    v45 = (*(*(v44 - 8) + 48))(v34, 1, v44);
    v46 = v45 == 1;
    if (v45 != 1)
    {
      v47 = *(v44 + 48);
      v48 = v63;
      v49 = v70;
      (*v68)(v63, v34, v70);
      v50 = *(v34 + v47);
      v51 = sub_24A77EDF8(v48);
      v53 = v52;
      result = (*v60)(v48, v49);
      if (v53)
      {
        v29 = v59;
        v28 = v69;
        if (*(*(a2 + 56) + v51) == v50)
        {
          continue;
        }
      }
    }

    return v46;
  }

  if (v29 <= v22 + 1)
  {
    v31 = v22 + 1;
  }

  else
  {
    v31 = v29;
  }

  v32 = v31 - 1;
  v33 = v64;
  v34 = v67;
  while (1)
  {
    v35 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v35 >= v29)
    {
      v54 = sub_24A6BBA94(a5, a6);
      (*(*(v54 - 8) + 56))(v33, 1, 1, v54);
      v69 = 0;
      v22 = v32;
      goto LABEL_17;
    }

    v36 = *(v56 + 8 * v35);
    ++v22;
    if (v36)
    {
      v69 = (v36 - 1) & v36;
      v30 = __clz(__rbit64(v36)) | (v35 << 6);
      v22 = v35;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24A7B7DD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A82CAA4();
  v77 = *(v4 - 8);
  v5 = *(v77 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v73 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v60 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v60 - v11;
  v13 = sub_24A6BBA94(&qword_27EF5ED28, &qword_24A83BA48);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v15);
  v20 = &v60 - v19;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v64 = a1;
  v65 = a2;
  v21 = 0;
  v22 = *(a1 + 64);
  v62 = a1 + 64;
  v23 = 1 << *(a1 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v22;
  v26 = (v23 + 63) >> 6;
  v68 = v17;
  v69 = (v77 + 32);
  v75 = v12;
  v76 = (v77 + 8);
  v67 = &v60 - v19;
  v63 = v26;
  v74 = v77 + 16;
  v61 = v10;
  while (v25)
  {
    v27 = v10;
    v66 = (v25 - 1) & v25;
    v28 = __clz(__rbit64(v25)) | (v21 << 6);
LABEL_17:
    v33 = v64;
    v34 = v77;
    (*(v77 + 16))(v12, *(v64 + 48) + *(v77 + 72) * v28, v4);
    v35 = *(*(v33 + 56) + 8 * v28);
    v36 = sub_24A6BBA94(&qword_27EF5ED30, &qword_24A83BA50);
    v37 = *(v36 + 48);
    v38 = *(v34 + 32);
    v39 = v68;
    v38(v68, v12, v4);
    *&v39[v37] = v35;
    v17 = v39;
    (*(*(v36 - 8) + 56))(v39, 0, 1, v36);

    v20 = v67;
    v10 = v27;
LABEL_18:
    sub_24A67E8FC(v17, v20, &qword_27EF5ED28, &qword_24A83BA48);
    v40 = sub_24A6BBA94(&qword_27EF5ED30, &qword_24A83BA50);
    v41 = 1;
    if ((*(*(v40 - 8) + 48))(v20, 1, v40) == 1)
    {
      return v41;
    }

    v42 = *(v40 + 48);
    (*v69)(v10, v20, v4);
    v43 = *&v20[v42];
    v44 = v65;
    v45 = sub_24A77EDF8(v10);
    v47 = v46;
    v48 = *v76;
    (*v76)(v10, v4);
    if ((v47 & 1) == 0 || (v49 = *(*(v44 + 56) + 8 * v45), v50 = *(v49 + 16), v50 != *(v43 + 16)))
    {
LABEL_32:

      return 0;
    }

    if (v50 && v49 != v43)
    {
      v51 = (*(v77 + 80) + 32) & ~*(v77 + 80);
      v71 = v49 + v51;
      v72 = v43;
      v70 = v43 + v51;

      v52 = 0;
      while (v52 < *(v49 + 16))
      {
        v53 = *(v77 + 72) * v52;
        v54 = *(v77 + 16);
        v55 = v75;
        result = v54(v75, v71 + v53, v4);
        if (v52 >= *(v72 + 16))
        {
          goto LABEL_37;
        }

        v56 = v70 + v53;
        v57 = v73;
        v54(v73, v56, v4);
        sub_24A7B8564(&qword_27EF5DC48, MEMORY[0x277CC95F0]);
        v58 = sub_24A82CF84();
        v48(v57, v4);
        result = (v48)(v55, v4);
        if ((v58 & 1) == 0)
        {

          goto LABEL_32;
        }

        if (v50 == ++v52)
        {

          v10 = v61;
          goto LABEL_6;
        }
      }

      goto LABEL_36;
    }

LABEL_6:

    v12 = v75;
    v20 = v67;
    v17 = v68;
    v26 = v63;
    v25 = v66;
  }

  if (v26 <= v21 + 1)
  {
    v29 = v21 + 1;
  }

  else
  {
    v29 = v26;
  }

  v30 = v29 - 1;
  while (1)
  {
    v31 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v31 >= v26)
    {
      v59 = sub_24A6BBA94(&qword_27EF5ED30, &qword_24A83BA50);
      (*(*(v59 - 8) + 56))(v17, 1, 1, v59);
      v66 = 0;
      v21 = v30;
      goto LABEL_18;
    }

    v32 = *(v62 + 8 * v31);
    ++v21;
    if (v32)
    {
      v27 = v10;
      v66 = (v32 - 1) & v32;
      v28 = __clz(__rbit64(v32)) | (v31 << 6);
      v21 = v31;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

void sub_24A7B83E4(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = v9 | (v4 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(*(a1 + 56) + 8 * v12);

      v17 = v16;
      v18 = sub_24A6A2D48(v14, v15);
      v20 = v19;

      if ((v20 & 1) == 0)
      {

        return;
      }

      sub_24A679170(0, &qword_281512B68, 0x277D82BB8);
      v21 = *(*(a2 + 56) + 8 * v18);
      v22 = sub_24A82D5E4();

      if ((v22 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a1 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

uint64_t sub_24A7B8564(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24A7B85AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A7B8614(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A7B867C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24A7B86E0()
{
  result = qword_27EF5ED70;
  if (!qword_27EF5ED70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5ED70);
  }

  return result;
}

unint64_t sub_24A7B8738()
{
  result = qword_27EF5ED78;
  if (!qword_27EF5ED78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5ED78);
  }

  return result;
}

unint64_t sub_24A7B8790()
{
  result = qword_27EF5ED80;
  if (!qword_27EF5ED80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5ED80);
  }

  return result;
}

unint64_t sub_24A7B87E8()
{
  result = qword_27EF5ED88;
  if (!qword_27EF5ED88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5ED88);
  }

  return result;
}

unint64_t sub_24A7B8840()
{
  result = qword_27EF5ED90;
  if (!qword_27EF5ED90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5ED90);
  }

  return result;
}

uint64_t sub_24A7B8894@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 groupIdentifier];
  if (v3)
  {
    v4 = v3;
    sub_24A82CA84();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_24A82CAA4();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

void sub_24A7B8938(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  sub_24A82CA84();
}

uint64_t sub_24A7B8994()
{
  v1 = [*v0 taskInformation];
  type metadata accessor for SPBeaconTaskName(0);
  sub_24A679170(0, &qword_27EF5DD20, 0x277D49648);
  sub_24A7B8D08();
  v2 = sub_24A82CEF4();

  return v2;
}

uint64_t sub_24A7B8A20()
{
  v1 = [*v0 serialNumber];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_24A82CFC4();

  return v3;
}

uint64_t sub_24A7B8A88(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  v5 = sub_24A82CFC4();

  return v5;
}

uint64_t sub_24A7B8ADC()
{
  v1 = [*v0 safeLocations];
  sub_24A679170(0, &qword_27EF5D720, 0x277D496B0);
  sub_24A72931C();
  v2 = sub_24A82D3A4();

  return v2;
}

unint64_t sub_24A7B8D08()
{
  result = qword_27EF5CEF8;
  if (!qword_27EF5CEF8)
  {
    type metadata accessor for SPBeaconTaskName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5CEF8);
  }

  return result;
}

void *FMIPAddMultipleSafeLocationsItemAction.__allocating_init(beaconUUIDs:location:originalIdentifier:)(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  memcpy(v8 + 2, a2, 0x160uLL);
  v8[47] = a4;
  v8[48] = a1;
  v8[46] = a3;
  return v8;
}

uint64_t FMIPAssignMultipleSafeLocationsItemAction.__allocating_init(beaconUUIDs:location:)(uint64_t a1, const void *a2)
{
  v4 = swift_allocObject();
  memcpy((v4 + 16), a2, 0x160uLL);
  *(v4 + 368) = a1;
  return v4;
}

uint64_t FMIPAssignMultipleSafeLocationsItemAction.init(beaconUUIDs:location:)(uint64_t a1, const void *a2)
{
  memcpy((v2 + 16), a2, 0x160uLL);
  *(v2 + 368) = a1;
  return v2;
}

uint64_t FMIPAddMultipleSafeLocationsItemAction.originalIdentifier.getter()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 376);

  return v1;
}

void *FMIPAddMultipleSafeLocationsItemAction.init(beaconUUIDs:location:originalIdentifier:)(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  memcpy(v4 + 2, a2, 0x160uLL);
  v4[47] = a4;
  v4[48] = a1;
  v4[46] = a3;
  return v4;
}

uint64_t sub_24A7B9034()
{
  memcpy(v4, v0 + 2, sizeof(v4));
  sub_24A6CC294(v4);
  v1 = v0[47];

  v2 = v0[48];
}

void *FMIPAddMultipleSafeLocationsItemAction.deinit()
{
  memcpy(v4, v0 + 2, sizeof(v4));
  sub_24A6CC294(v4);
  v1 = v0[47];

  v2 = v0[48];

  return v0;
}

uint64_t FMIPAddMultipleSafeLocationsItemAction.__deallocating_deinit()
{
  memcpy(__dst, v0 + 2, 0x160uLL);

  sub_24A6CC294(__dst);
  v1 = v0[47];

  v2 = v0[48];

  return swift_deallocClassInstance();
}

uint64_t FMIPAddSafeLocationItemAction.beaconUUID.getter()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 376);

  return v1;
}

void *FMIPAddSafeLocationItemAction.__allocating_init(beaconUUID:location:)(uint64_t a1, uint64_t a2, const void *a3)
{
  v6 = swift_allocObject();
  memcpy(v6 + 2, a3, 0x160uLL);
  v6[46] = a1;
  v6[47] = a2;
  return v6;
}

void *FMIPAddSafeLocationItemAction.init(beaconUUID:location:)(uint64_t a1, uint64_t a2, void *__src)
{
  memcpy(v3 + 2, __src, 0x160uLL);
  v3[46] = a1;
  v3[47] = a2;
  return v3;
}

uint64_t sub_24A7B9280()
{
  memcpy(v3, (v0 + 16), sizeof(v3));
  sub_24A6CC294(v3);
  v1 = *(v0 + 368);
}

uint64_t _s8FMIPCore41FMIPAssignMultipleSafeLocationsItemActionCfd_0()
{
  memcpy(v3, (v0 + 16), sizeof(v3));
  sub_24A6CC294(v3);
  v1 = *(v0 + 368);

  return v0;
}

uint64_t _s8FMIPCore41FMIPAssignMultipleSafeLocationsItemActionCfD_0()
{
  memcpy(__dst, (v0 + 16), 0x160uLL);

  sub_24A6CC294(__dst);
  v1 = *(v0 + 368);

  return swift_deallocClassInstance();
}

uint64_t FMIPEditSafeLocationItemAction.__allocating_init(safeLocation:)(const void *a1)
{
  v2 = swift_allocObject();
  memcpy((v2 + 16), a1, 0x160uLL);
  return v2;
}

uint64_t FMIPEditSafeLocationItemAction.deinit()
{
  memcpy(v2, (v0 + 16), sizeof(v2));
  sub_24A6CC294(v2);
  return v0;
}

uint64_t _s8FMIPCore30FMIPEditSafeLocationItemActionCfD_0()
{
  memcpy(v2, (v0 + 16), sizeof(v2));
  sub_24A6CC294(v2);
  return swift_deallocClassInstance();
}

uint64_t _s8FMIPCore29FMIPAddSafeLocationItemActionC8locationAA08FMIPSafeD0Vvg_0@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 16), 0x160uLL);
  memcpy(a1, (v1 + 16), 0x160uLL);
  return sub_24A6CC988(__dst, v4);
}

uint64_t sub_24A7B9594()
{
  memcpy(v3, (v0 + 16), sizeof(v3));
  sub_24A6CC294(v3);
  v1 = *(v0 + 376);
}

uint64_t _s8FMIPCore29FMIPAddSafeLocationItemActionCfd_0()
{
  memcpy(v3, (v0 + 16), sizeof(v3));
  sub_24A6CC294(v3);
  v1 = *(v0 + 376);

  return v0;
}

uint64_t _s8FMIPCore29FMIPAddSafeLocationItemActionCfD_0()
{
  memcpy(__dst, (v0 + 16), 0x160uLL);

  sub_24A6CC294(__dst);
  v1 = *(v0 + 376);

  return swift_deallocClassInstance();
}

uint64_t sub_24A7B9C80(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_24A688138(*a1);
  if (v3 == sub_24A688138(v2))
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_24A82DC04();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_24A7B9CF0()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A688138(v1);
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7B9D4C()
{
  sub_24A688138(*v0);
  sub_24A82D094();
}

uint64_t sub_24A7B9D98()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A688138(v1);
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7B9DF0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24A7BA728();
  *a2 = result;
  return result;
}

uint64_t sub_24A7B9E20@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24A688138(*v1);
  *a1 = result;
  a1[1] = 0xE300000000000000;
  return result;
}

uint64_t sub_24A7B9E50@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24A7BA728();
  *a1 = result;
  return result;
}

uint64_t sub_24A7B9E84(uint64_t a1)
{
  v2 = sub_24A685F08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A7B9EC0(uint64_t a1)
{
  v2 = sub_24A685F08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMIPFeatures.encode(to:)(void *a1)
{
  v4 = sub_24A6BBA94(&qword_27EF5EDA0, &qword_24A83C1D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A685F08();
  sub_24A82DD84();
  v13 = 0;
  sub_24A82DB14();
  if (!v2)
  {
    v13 = 1;
    sub_24A82DB14();
    v13 = 2;
    sub_24A82DB14();
    v13 = 3;
    sub_24A82DB14();
    v13 = 4;
    sub_24A82DB14();
    v13 = 5;
    sub_24A82DB14();
    v13 = 6;
    sub_24A82DB14();
    v13 = 7;
    sub_24A82DB14();
    v13 = 8;
    sub_24A82DB14();
    v13 = 9;
    sub_24A82DB14();
    v13 = 10;
    sub_24A82DB14();
    v13 = 11;
    sub_24A82DB14();
    v13 = 12;
    sub_24A82DB14();
    v13 = 13;
    sub_24A82DB14();
    v13 = 14;
    sub_24A82DB14();
    v13 = 15;
    sub_24A82DB14();
    v13 = 16;
    sub_24A82DB14();
    v13 = 17;
    sub_24A82DB14();
    v13 = 18;
    sub_24A82DB14();
    v13 = 19;
    sub_24A82DB14();
    v13 = 20;
    sub_24A82DB14();
    v13 = 21;
    sub_24A82DB14();
    v13 = 22;
    sub_24A82DB14();
    v13 = 23;
    sub_24A82DB14();
    v13 = 24;
    sub_24A82DB14();
    v13 = 25;
    sub_24A82DB14();
    v13 = 26;
    sub_24A82DB14();
    v13 = 27;
    sub_24A82DB14();
    v13 = 28;
    sub_24A82DB14();
    v13 = 29;
    sub_24A82DB14();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_24A7BA4D4()
{
  result = qword_27EF5EDA8;
  if (!qword_27EF5EDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EDA8);
  }

  return result;
}

unint64_t sub_24A7BA52C()
{
  result = qword_27EF5EDB0;
  if (!qword_27EF5EDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EDB0);
  }

  return result;
}

unint64_t sub_24A7BA584()
{
  result = qword_27EF5EDB8;
  if (!qword_27EF5EDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EDB8);
  }

  return result;
}

unint64_t sub_24A7BA5DC()
{
  result = qword_27EF5EDC0;
  if (!qword_27EF5EDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EDC0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMIPFeatures.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE3)
  {
    goto LABEL_17;
  }

  if (a2 + 29 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 29) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 29;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 29;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 29;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1E;
  v8 = v6 - 30;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_24A7BA6D4()
{
  result = qword_27EF5EDC8;
  if (!qword_27EF5EDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EDC8);
  }

  return result;
}

uint64_t sub_24A7BA728()
{
  v0 = sub_24A82DC24();

  if (v0 >= 0x1E)
  {
    return 30;
  }

  else
  {
    return v0;
  }
}

uint64_t type metadata accessor for FMIPValidatePasswordRequest()
{
  result = qword_27EF5EDD0;
  if (!qword_27EF5EDD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A7BA7C8()
{
  result = type metadata accessor for FMIPDevice();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_24A7BA874()
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7BA97C(char a1)
{
  sub_24A82DCC4();
  if (a1)
  {
    v2 = 0x4050800000000000;
  }

  else
  {
    v2 = 0x4042800000000000;
  }

  MEMORY[0x24C21D610](v2);
  return sub_24A82DD24();
}

uint64_t sub_24A7BA9D8()
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7BAB04()
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7BAC14()
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7BAD14()
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7BAE10()
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7BAF38()
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7BB03C(uint64_t a1, char a2)
{
  sub_24A82DCC4();
  if (a2)
  {
    v3 = 0x4050800000000000;
  }

  else
  {
    v3 = 0x4042800000000000;
  }

  MEMORY[0x24C21D610](v3);
  return sub_24A82DD24();
}

uint64_t sub_24A7BB094()
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7BB1B8()
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7BB330()
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7BB458()
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7BB554()
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7BB64C()
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7BB758()
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7BB8B4()
{
  *v0;
  *v0;
  *v0;
  sub_24A82D094();
}

uint64_t sub_24A7BB9A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24A7BC080();
  *a2 = result;
  return result;
}

void sub_24A7BB9D4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x6573617265;
  v5 = 0xE800000000000000;
  v6 = 0x65646F4D74736F6CLL;
  v7 = 0xE600000000000000;
  v8 = 0x65766F6D6572;
  if (v2 != 4)
  {
    v8 = 0x6E776F6E6B6E75;
    v7 = 0xE700000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEB00000000657361;
  v10 = 0x72456C65636E6163;
  if (v2 != 1)
  {
    v10 = 1801678700;
    v9 = 0xE400000000000000;
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

uint64_t sub_24A7BBA8C()
{
  v1 = v0;
  v2 = *(v0 + qword_27EF78EC0);
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v3 = 0xE800000000000000;
      v4 = 0x65646F4D74736F6CLL;
    }

    else if (v2 == 4)
    {
      v3 = 0xE600000000000000;
      v4 = 0x65766F6D6572;
    }

    else
    {
      v3 = 0xE700000000000000;
      v4 = 0x6E776F6E6B6E75;
    }
  }

  else if (*(v0 + qword_27EF78EC0))
  {
    if (v2 == 1)
    {
      v3 = 0xEB00000000657361;
      v4 = 0x72456C65636E6163;
    }

    else
    {
      v3 = 0xE400000000000000;
      v4 = 1801678700;
    }
  }

  else
  {
    v3 = 0xE500000000000000;
    v4 = 0x6573617265;
  }

  v5 = MEMORY[0x277D837D0];
  v35 = MEMORY[0x277D837D0];
  *&v34 = v4;
  *(&v34 + 1) = v3;
  v6 = qword_27EF5D920;
  v7 = *(v0 + qword_27EF5D920);
  v8 = *(v1 + qword_27EF5D920);

  os_unfair_lock_lock((v7 + 24));
  v9 = *(v7 + 16);

  os_unfair_lock_unlock((v7 + 24));

  sub_24A6A50DC(&v34, v33);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = sub_24A6A4F8C(v33, 0xD000000000000017, 0x800000024A849010, isUniquelyReferenced_nonNull_native);
  v12 = *(v1 + v6);
  MEMORY[0x28223BE20](v11);

  os_unfair_lock_lock((v12 + 24));
  sub_24A6A3D28((v12 + 16));
  os_unfair_lock_unlock((v12 + 24));

  v14 = *(v1 + qword_27EF78EB8);
  v13 = *(v1 + qword_27EF78EB8 + 8);
  v35 = v5;
  *&v34 = v14;
  *(&v34 + 1) = v13;
  v15 = *(v1 + v6);

  os_unfair_lock_lock((v15 + 24));
  v16 = *(v15 + 16);

  os_unfair_lock_unlock((v15 + 24));

  sub_24A6A50DC(&v34, v33);
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v18 = sub_24A6A4F8C(v33, 0x656B6F5468747561, 0xE90000000000006ELL, v17);
  v19 = *(v1 + v6);
  MEMORY[0x28223BE20](v18);

  os_unfair_lock_lock((v19 + 24));
  sub_24A6FF740((v19 + 16));
  os_unfair_lock_unlock((v19 + 24));

  v35 = MEMORY[0x277D83B88];
  *&v34 = 1;
  v20 = *(v1 + v6);

  os_unfair_lock_lock((v20 + 24));
  v21 = *(v20 + 16);

  os_unfair_lock_unlock((v20 + 24));

  sub_24A6A50DC(&v34, v33);
  v22 = swift_isUniquelyReferenced_nonNull_native();
  v23 = sub_24A6A4F8C(v33, 0x7372655668747561, 0xEB000000006E6F69, v22);
  v24 = *(v1 + v6);
  MEMORY[0x28223BE20](v23);

  os_unfair_lock_lock((v24 + 24));
  sub_24A6FF740((v24 + 16));
  os_unfair_lock_unlock((v24 + 24));

  v26 = *(v1 + qword_27EF78EC8);
  v25 = *(v1 + qword_27EF78EC8 + 8);
  v35 = v5;
  *&v34 = v26;
  *(&v34 + 1) = v25;
  v27 = *(v1 + v6);

  os_unfair_lock_lock((v27 + 24));
  v28 = *(v27 + 16);

  os_unfair_lock_unlock((v27 + 24));

  sub_24A6A50DC(&v34, v33);
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v30 = sub_24A6A4F8C(v33, 0x656369766564, 0xE600000000000000, v29);
  v31 = *(v1 + v6);
  MEMORY[0x28223BE20](v30);

  os_unfair_lock_lock((v31 + 24));
  sub_24A6FF740((v31 + 16));
  os_unfair_lock_unlock((v31 + 24));
}

uint64_t sub_24A7BBF34()
{
  v1 = *(v0 + qword_27EF78EB8 + 8);

  v2 = v0 + qword_27EF78EC8;

  return sub_24A6FE094(v2);
}

uint64_t sub_24A7BBF78()
{
  v0 = sub_24A6F8F90();
  v1 = *(v0 + qword_27EF78EB8 + 8);

  sub_24A6FE094(v0 + qword_27EF78EC8);

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t sub_24A7BC02C()
{
  result = qword_27EF5EDE0;
  if (!qword_27EF5EDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EDE0);
  }

  return result;
}

uint64_t sub_24A7BC080()
{
  v0 = sub_24A82D9C4();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

void sub_24A7BC0CC()
{
  v0 = sub_24A82CF94();
  v1 = MGGetBoolAnswer();

  byte_27EF5EDE8 = v1;
}

uint64_t sub_24A7BC120()
{
  if (qword_27EF5CC08 != -1)
  {
    swift_once();
  }

  if (byte_27EF5EDE8)
  {
    v0 = 1312902231;
  }

  else
  {
    v0 = 1229343063;
  }

  MEMORY[0x24C21C9E0](95, 0xE100000000000000);

  MEMORY[0x24C21C9E0](v0, 0xE400000000000000);

  type metadata accessor for FMLocalize();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_24A82C6F4();

  return v3;
}

FMIPCore::FMIPMapInteractionEvent __swiftcall FMIPMapInteractionEvent.init(mapPOITapped:mapPOIOpenInMaps:)(Swift::Bool_optional mapPOITapped, Swift::Bool_optional mapPOIOpenInMaps)
{
  v2->value = mapPOITapped.value;
  v2[1].value = mapPOIOpenInMaps.value;
  result.mapPOITapped = mapPOITapped;
  return result;
}

void sub_24A7BC314(unsigned int a1)
{
  v2 = a1;
  v3 = BYTE1(a1);
  v10 = sub_24A6AE58C(MEMORY[0x277D84F90]);
  if (v2 == 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  }

  sub_24A7BE35C(v4, 0x6154494F5070616DLL, 0xEC00000064657070);
  if (v3 == 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  }

  sub_24A7BE35C(v5, 0xD000000000000010, 0x800000024A849050);
  v6 = sub_24A82CF94();
  v7 = swift_allocObject();
  *(v7 + 16) = v10;
  aBlock[4] = sub_24A6AEBB4;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A6AEADC;
  aBlock[3] = &unk_285DCA290;
  v8 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v8);
}

uint64_t _s8FMIPCore13FMIPAnalyticsV23sendMapInteractionEvent5eventyAA07FMIPMapeF0V_tFZ_0(char *a1)
{
  v2 = sub_24A82CDF4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A82CE54();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = a1[1];
  if (qword_27EF5CC50 != -1)
  {
    swift_once();
  }

  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 17) = v13;
  aBlock[4] = sub_24A7BC8E0;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DCA240;
  v15 = _Block_copy(aBlock);
  sub_24A82CE24();
  v17[1] = MEMORY[0x277D84F90];
  sub_24A6FA9B0();
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A6F2828();
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v11, v6, v15);
  _Block_release(v15);
  (*(v3 + 8))(v6, v2);
  (*(v8 + 8))(v11, v7);
}

uint64_t getEnumTagSinglePayload for FMIPMapInteractionEvent(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 >= 2)
  {
    v7 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v7 = -2;
  }

  if (v7 < 0)
  {
    v7 = -1;
  }

  return (v7 + 1);
}

_WORD *storeEnumTagSinglePayload for FMIPMapInteractionEvent(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t FMIPZeusProductInformation.init(beacon:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  sub_24A67DF6C(a1, v4);
  v6 = (*(v5 + 136))(v4, v5);
  v7 = a1[3];
  v8 = a1[4];
  sub_24A67DF6C(a1, v7);
  v9 = (*(v8 + 144))(v7, v8);
  v10 = a1[3];
  v11 = a1[4];
  sub_24A67DF6C(a1, v10);
  v12 = (*(v11 + 128))(v10, v11);
  if (v12)
  {
    v13 = v12;
    v14 = [v12 modelName];

    v15 = sub_24A82CFC4();
    v17 = v16;
  }

  else
  {
    v18 = a1[3];
    v19 = a1[4];
    sub_24A67DF6C(a1, v18);
    v15 = (*(v19 + 56))(v18, v19);
    v17 = v20;
  }

  *a2 = v6;
  a2[1] = v9;
  a2[2] = v15;
  a2[3] = v17;
  a2[4] = 0x656C707041;
  a2[5] = 0xE500000000000000;
  a2[6] = 0;
  a2[7] = 0;
  a2[8] = 0x4010000000000000;

  return sub_24A6876E8(a1);
}

uint64_t FMIPZeusProductInformation.modelName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t FMIPZeusProductInformation.manufacturerName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t FMIPZeusProductInformation.appBundleIdentifier.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t sub_24A7BCB1C(uint64_t a1)
{
  v2 = sub_24A7BD374();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A7BCB58(uint64_t a1)
{
  v2 = sub_24A7BD374();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMIPZeusProductInformation.encode(to:)(void *a1)
{
  v4 = sub_24A6BBA94(&qword_27EF5EDF0, &qword_24A83C800);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v22[5] = v1[2];
  v22[6] = v9;
  v12 = v1[5];
  v22[3] = v1[4];
  v22[4] = v11;
  v13 = v1[6];
  v14 = v1[7];
  v22[1] = v12;
  v22[2] = v13;
  v15 = v1[8];
  v16 = a1[3];
  v17 = a1[4];
  v18 = a1;
  v20 = v19;
  sub_24A67DF6C(v18, v16);
  sub_24A7BD374();
  sub_24A82DD84();
  v28 = 0;
  sub_24A82DB34();
  if (!v2)
  {
    v22[0] = v14;
    v27 = 1;
    sub_24A82DB34();
    v26 = 2;
    sub_24A82DB04();
    v25 = 3;
    sub_24A82DB04();
    v24 = 4;
    sub_24A82DAD4();
    v23 = 5;
    sub_24A82DB24();
  }

  return (*(v5 + 8))(v8, v20);
}

uint64_t FMIPZeusProductInformation.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  MEMORY[0x24C21D5E0](*v0);
  MEMORY[0x24C21D5E0](v1);
  sub_24A82D094();
  sub_24A82D094();
  sub_24A82DCE4();
  if (v7)
  {
    sub_24A82D094();
  }

  v9 = 0.0;
  if (v8 != 0.0)
  {
    v9 = v8;
  }

  return MEMORY[0x24C21D610](*&v9);
}

uint64_t FMIPZeusProductInformation.hashValue.getter()
{
  sub_24A82DCC4();
  FMIPZeusProductInformation.hash(into:)();
  return sub_24A82DD24();
}

uint64_t FMIPZeusProductInformation.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24A6BBA94(&qword_27EF5EE00, &qword_24A83C808);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A7BD374();
  sub_24A82DD64();
  if (v2)
  {
    return sub_24A6876E8(a1);
  }

  LOBYTE(v35[0]) = 0;
  v11 = sub_24A82DA74();
  LOBYTE(v35[0]) = 1;
  v29 = sub_24A82DA74();
  LOBYTE(v35[0]) = 2;
  v12 = sub_24A82DA44();
  *(&v28 + 1) = v13;
  *&v28 = v12;
  LOBYTE(v35[0]) = 3;
  *&v27 = sub_24A82DA44();
  *(&v27 + 1) = v14;
  LOBYTE(v35[0]) = 4;
  v26 = sub_24A82DA04();
  v16 = v15;
  v36 = 5;
  sub_24A82DA64();
  v18 = v17;
  (*(v6 + 8))(v9, v5);
  v20 = *(&v28 + 1);
  v19 = v29;
  *&v30 = v11;
  *(&v30 + 1) = v29;
  v21 = v28;
  v31 = v28;
  v22 = *(&v27 + 1);
  v32 = v27;
  *&v33 = v26;
  *(&v33 + 1) = v16;
  v34 = v18;
  v23 = v33;
  *(a2 + 32) = v27;
  *(a2 + 48) = v23;
  *(a2 + 64) = v34;
  v24 = v31;
  *a2 = v30;
  *(a2 + 16) = v24;
  sub_24A7BD3C8(&v30, v35);
  sub_24A6876E8(a1);
  v35[0] = v11;
  v35[1] = v19;
  v35[2] = v21;
  v35[3] = v20;
  v35[4] = v27;
  v35[5] = v22;
  v35[6] = v26;
  v35[7] = v16;
  v35[8] = v18;
  return sub_24A6D23CC(v35);
}

__n128 sub_24A7BD274@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  FMIPZeusProductInformation.init(beacon:)(a1, v5);
  v3 = v5[3];
  *(a2 + 32) = v5[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6;
  result = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_24A7BD2F4()
{
  sub_24A82DCC4();
  FMIPZeusProductInformation.hash(into:)();
  return sub_24A82DD24();
}

uint64_t sub_24A7BD338()
{
  sub_24A82DCC4();
  FMIPZeusProductInformation.hash(into:)();
  return sub_24A82DD24();
}

unint64_t sub_24A7BD374()
{
  result = qword_27EF5EDF8;
  if (!qword_27EF5EDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EDF8);
  }

  return result;
}

unint64_t sub_24A7BD400(void *a1)
{
  a1[2] = sub_24A6D27B8();
  a1[3] = sub_24A6D25D0();
  result = sub_24A7BD438();
  a1[4] = result;
  return result;
}

unint64_t sub_24A7BD438()
{
  result = qword_27EF5EE08;
  if (!qword_27EF5EE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EE08);
  }

  return result;
}

unint64_t sub_24A7BD490()
{
  result = qword_27EF5EE10;
  if (!qword_27EF5EE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EE10);
  }

  return result;
}

unint64_t sub_24A7BD508()
{
  result = qword_27EF5EE18;
  if (!qword_27EF5EE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EE18);
  }

  return result;
}

unint64_t sub_24A7BD560()
{
  result = qword_27EF5EE20;
  if (!qword_27EF5EE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EE20);
  }

  return result;
}

unint64_t sub_24A7BD5B8()
{
  result = qword_27EF5EE28;
  if (!qword_27EF5EE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EE28);
  }

  return result;
}

uint64_t type metadata accessor for FMIPLostModeRequest()
{
  result = qword_27EF5EE30;
  if (!qword_27EF5EE30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A7BD6A8(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x676E696B63617274;
    v6 = 0x7478655472657375;
    if (a1 != 8)
    {
      v6 = 0x6C69616D65;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x646E756F73;
    if (a1 != 5)
    {
      v7 = 1954047348;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x656369766564;
    v2 = 0x65646F4D74736F6CLL;
    v3 = 0x72624E72656E776FLL;
    if (a1 != 3)
    {
      v3 = 0x65646F6373736170;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6470556C69616D65;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_24A7BD7F0()
{
  v1 = v0;
  v2 = *(v0 + qword_27EF78EE0);
  v4 = *(v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device);
  v3 = *(v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device + 8);
  v71 = MEMORY[0x277D837D0];
  *&v70 = v4;
  *(&v70 + 1) = v3;
  v5 = qword_27EF5D920;
  v6 = *(v0 + qword_27EF5D920);

  os_unfair_lock_lock((v6 + 24));
  v7 = *(v6 + 16);

  os_unfair_lock_unlock((v6 + 24));

  sub_24A6A50DC(&v70, v68);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v69 = v7;
  sub_24A6A4F8C(v68, 0x656369766564, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  v9 = *(v1 + v5);

  os_unfair_lock_lock((v9 + 24));
  sub_24A6A3D28((v9 + 16));
  os_unfair_lock_unlock((v9 + 24));

  v10 = *(v2 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_isEmailUpdatesEnabled);
  v11 = MEMORY[0x277D839B0];
  v71 = MEMORY[0x277D839B0];
  LOBYTE(v70) = v10;
  v12 = *(v1 + v5);

  os_unfair_lock_lock((v12 + 24));
  v13 = *(v12 + 16);

  os_unfair_lock_unlock((v12 + 24));

  v69 = v13;
  if (v71)
  {
    sub_24A6A50DC(&v70, v68);
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v15 = sub_24A6A4F8C(v68, 0x6470556C69616D65, 0xEC00000073657461, v14);
  }

  else
  {
    sub_24A6F6C40(&v70);
    sub_24A7C3F0C(0x6470556C69616D65, 0xEC00000073657461, v68);
    v15 = sub_24A6F6C40(v68);
  }

  v16 = *(v1 + v5);
  MEMORY[0x28223BE20](v15);

  os_unfair_lock_lock((v16 + 24));
  sub_24A6FF740((v16 + 16));
  os_unfair_lock_unlock((v16 + 24));

  v71 = v11;
  LOBYTE(v70) = 1;
  v17 = *(v1 + v5);

  os_unfair_lock_lock((v17 + 24));
  v18 = *(v17 + 16);

  os_unfair_lock_unlock((v17 + 24));

  v69 = v18;
  if (v71)
  {
    sub_24A6A50DC(&v70, v68);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v20 = sub_24A6A4F8C(v68, 0x65646F4D74736F6CLL, 0xEF64656C62616E45, v19);
  }

  else
  {
    sub_24A6F6C40(&v70);
    sub_24A7C3F0C(0x65646F4D74736F6CLL, 0xEF64656C62616E45, v68);
    v20 = sub_24A6F6C40(v68);
  }

  v21 = *(v1 + v5);
  MEMORY[0x28223BE20](v20);

  os_unfair_lock_lock((v21 + 24));
  sub_24A6FF740((v21 + 16));
  os_unfair_lock_unlock((v21 + 24));

  v22 = *(v2 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_isTrackingEnabled);
  v71 = v11;
  LOBYTE(v70) = v22;
  v23 = *(v1 + v5);

  os_unfair_lock_lock((v23 + 24));
  v24 = *(v23 + 16);

  os_unfair_lock_unlock((v23 + 24));

  v69 = v24;
  if (v71)
  {
    sub_24A6A50DC(&v70, v68);
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v26 = sub_24A6A4F8C(v68, 0x676E696B63617274, 0xEF64656C62616E45, v25);
  }

  else
  {
    sub_24A6F6C40(&v70);
    sub_24A7C3F0C(0x676E696B63617274, 0xEF64656C62616E45, v68);
    v26 = sub_24A6F6C40(v68);
  }

  v27 = *(v1 + v5);
  MEMORY[0x28223BE20](v26);

  os_unfair_lock_lock((v27 + 24));
  sub_24A6FF740((v27 + 16));
  os_unfair_lock_unlock((v27 + 24));

  v71 = v11;
  LOBYTE(v70) = 0;
  v28 = *(v1 + v5);

  os_unfair_lock_lock((v28 + 24));
  v29 = *(v28 + 16);

  os_unfair_lock_unlock((v28 + 24));

  v69 = v29;
  if (v71)
  {
    sub_24A6A50DC(&v70, v68);
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v31 = sub_24A6A4F8C(v68, 0x646E756F73, 0xE500000000000000, v30);
  }

  else
  {
    sub_24A6F6C40(&v70);
    sub_24A7C3F0C(0x646E756F73, 0xE500000000000000, v68);
    v31 = sub_24A6F6C40(v68);
  }

  v32 = *(v1 + v5);
  MEMORY[0x28223BE20](v31);

  os_unfair_lock_lock((v32 + 24));
  sub_24A6FF740((v32 + 16));
  os_unfair_lock_unlock((v32 + 24));

  v33 = *(v2 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_isUserTextEnabled);
  v71 = v11;
  LOBYTE(v70) = v33;
  v34 = *(v1 + v5);

  os_unfair_lock_lock((v34 + 24));
  v35 = *(v34 + 16);

  os_unfair_lock_unlock((v34 + 24));

  v69 = v35;
  if (v71)
  {
    sub_24A6A50DC(&v70, v68);
    v36 = swift_isUniquelyReferenced_nonNull_native();
    v37 = sub_24A6A4F8C(v68, 0x7478655472657375, 0xE800000000000000, v36);
  }

  else
  {
    sub_24A6F6C40(&v70);
    sub_24A7C3F0C(0x7478655472657375, 0xE800000000000000, v68);
    v37 = sub_24A6F6C40(v68);
  }

  v38 = MEMORY[0x277D837D0];
  v39 = *(v1 + v5);
  MEMORY[0x28223BE20](v37);

  os_unfair_lock_lock((v39 + 24));
  sub_24A6FF740((v39 + 16));
  os_unfair_lock_unlock((v39 + 24));

  v40 = *(v2 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_message + 8);
  if (v40)
  {
    v41 = *(v2 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_message);
    v71 = v38;
    *&v70 = v41;
    *(&v70 + 1) = v40;
    v42 = *(v1 + v5);

    os_unfair_lock_lock((v42 + 24));
    v43 = *(v42 + 16);

    os_unfair_lock_unlock((v42 + 24));

    sub_24A6A50DC(&v70, v68);
    v44 = swift_isUniquelyReferenced_nonNull_native();
    v69 = v43;
    v45 = sub_24A6A4F8C(v68, 1954047348, 0xE400000000000000, v44);
    v46 = *(v1 + v5);
    MEMORY[0x28223BE20](v45);

    os_unfair_lock_lock((v46 + 24));
    sub_24A6FF740((v46 + 16));
    os_unfair_lock_unlock((v46 + 24));
  }

  v47 = *(v2 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_phoneNumber + 8);
  if (v47)
  {
    v48 = *(v2 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_phoneNumber);
    v71 = v38;
    *&v70 = v48;
    *(&v70 + 1) = v47;
    v49 = *(v1 + v5);

    os_unfair_lock_lock((v49 + 24));
    v50 = *(v49 + 16);

    os_unfair_lock_unlock((v49 + 24));

    sub_24A6A50DC(&v70, v68);
    v51 = swift_isUniquelyReferenced_nonNull_native();
    v69 = v50;
    v52 = sub_24A6A4F8C(v68, 0x72624E72656E776FLL, 0xE800000000000000, v51);
    v53 = *(v1 + v5);
    MEMORY[0x28223BE20](v52);

    os_unfair_lock_lock((v53 + 24));
    sub_24A6FF740((v53 + 16));
    os_unfair_lock_unlock((v53 + 24));
  }

  v54 = *(v2 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_passcode + 8);
  if (v54)
  {
    v55 = *(v2 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_passcode);
    v71 = v38;
    *&v70 = v55;
    *(&v70 + 1) = v54;
    v56 = *(v1 + v5);

    os_unfair_lock_lock((v56 + 24));
    v57 = *(v56 + 16);

    os_unfair_lock_unlock((v56 + 24));

    sub_24A6A50DC(&v70, v68);
    v58 = swift_isUniquelyReferenced_nonNull_native();
    v69 = v57;
    v59 = sub_24A6A4F8C(v68, 0x65646F6373736170, 0xE800000000000000, v58);
    v60 = *(v1 + v5);
    MEMORY[0x28223BE20](v59);

    os_unfair_lock_lock((v60 + 24));
    sub_24A6FF740((v60 + 16));
    os_unfair_lock_unlock((v60 + 24));
  }

  result = *(v2 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_email + 8);
  if (result)
  {
    v62 = *(v2 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_email);
    v71 = v38;
    *&v70 = v62;
    *(&v70 + 1) = result;
    v63 = *(v1 + v5);

    os_unfair_lock_lock((v63 + 24));
    v64 = *(v63 + 16);

    os_unfair_lock_unlock((v63 + 24));

    sub_24A6A50DC(&v70, v68);
    v65 = swift_isUniquelyReferenced_nonNull_native();
    v69 = v64;
    v66 = sub_24A6A4F8C(v68, 0x6C69616D65, 0xE500000000000000, v65);
    v67 = *(v1 + v5);
    MEMORY[0x28223BE20](v66);

    os_unfair_lock_lock((v67 + 24));
    sub_24A6FF740((v67 + 16));
    os_unfair_lock_unlock((v67 + 24));
  }

  return result;
}

uint64_t sub_24A7BE2E0()
{
  v0 = sub_24A6F8F90();
  v1 = *(v0 + qword_27EF78EE0);

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_24A7BE388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_24A6BBA94(&qword_27EF5E148, qword_24A837790);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = sub_24A6BBA94(&unk_27EF5E150, &unk_24A83CCC0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - v13;
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_24A67F378(a1, &qword_27EF5E148, qword_24A837790);
    sub_24A7C4080(a2, a3, v10);

    return sub_24A67F378(v10, &qword_27EF5E148, qword_24A837790);
  }

  else
  {
    sub_24A67E8FC(a1, v14, &unk_27EF5E150, &unk_24A83CCC0);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_24A784D98(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_24A7BE58C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(void))
{
  v6 = v5;
  if (a1)
  {
    v11 = *v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v5;
    a4(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v5 = v22;
  }

  else
  {
    v15 = *v5;
    v16 = sub_24A6A2D48(a2, a3);
    LOBYTE(v15) = v17;

    if (v15)
    {
      v18 = *v6;
      v19 = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v6;
      v23 = *v6;
      if (!v19)
      {
        a5();
        v20 = v23;
      }

      v21 = *(*(v20 + 48) + 16 * v16 + 8);

      result = sub_24A7C4A94(v16, v20);
      *v6 = v20;
    }
  }

  return result;
}

uint64_t sub_24A7BE694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_24A6BBA94(&qword_27EF5EE70, &unk_24A83CC80);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for FMIPMonitoredDevice(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_24A67F378(a1, &qword_27EF5EE70, &unk_24A83CC80);
    sub_24A7C4208(a2, a3, v10);

    return sub_24A67F378(v10, &qword_27EF5EE70, &unk_24A83CC80);
  }

  else
  {
    sub_24A68D690(a1, v14, type metadata accessor for FMIPMonitoredDevice);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_24A784F1C(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

_OWORD *sub_24A7BE868(uint64_t a1, char a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_24A6A50DC(a1, v17);
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    result = sub_24A785088(v17, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
  }

  else
  {
    sub_24A67F378(a1, &qword_27EF5D898, qword_24A8354A0);
    v8 = *v2;
    v9 = sub_24A77EFD4(a2);
    if (v10)
    {
      v11 = v9;
      v12 = *v3;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v16 = *v3;
      if (!v13)
      {
        sub_24A7876C0();
        v14 = v16;
      }

      sub_24A6A50DC((*(v14 + 56) + 32 * v11), v17);
      sub_24A7C5150(v11, v14);
      *v3 = v14;
    }

    else
    {
      memset(v17, 0, sizeof(v17));
    }

    return sub_24A67F378(v17, &qword_27EF5D898, qword_24A8354A0);
  }

  return result;
}

unint64_t FMIPConfigValue.rawValue.getter()
{
  v1 = 0x626154736D657469;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000010;
  }

  v2 = 0xD000000000000014;
  if (!*v0)
  {
    v2 = 0xD000000000000019;
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

uint64_t sub_24A7BE9FC()
{
  v10 = sub_24A82D554();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24A82D534();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_24A82CE54();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9[1] = sub_24A679170(0, &qword_2815146C0, 0x277D85C78);
  sub_24A82CE24();
  v11 = MEMORY[0x277D84F90];
  sub_24A67A06C(&qword_2815146D0, MEMORY[0x277D85230]);
  sub_24A6BBA94(&unk_27EF5EF50, &unk_24A836510);
  sub_24A679544(&qword_2815146E0, &unk_27EF5EF50, &unk_24A836510);
  sub_24A82D6B4();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v10);
  result = sub_24A82D594();
  qword_27EF5EE40 = result;
  return result;
}

FMIPCore::FMIPConfigValue_optional __swiftcall FMIPConfigValue.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A82D9C4();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24A7BECC4()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7BED9C()
{
  *v0;
  *v0;
  sub_24A82D094();
}

uint64_t sub_24A7BEE60()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

void sub_24A7BEF40(unint64_t *a1@<X8>)
{
  v2 = 0xEF64656C62616E45;
  v3 = 0x626154736D657469;
  if (*v1 != 2)
  {
    v3 = 0xD000000000000010;
    v2 = 0x800000024A843F00;
  }

  v4 = 0x800000024A843EB0;
  v5 = 0xD000000000000014;
  if (*v1)
  {
    v4 = 0x800000024A843ED0;
  }

  else
  {
    v5 = 0xD000000000000019;
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3;
  }

  if (*v1 <= 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t FMIPGlobalConfig<A>(_:fallback:)(char *a1)
{
  v1 = *a1;
  if (qword_27EF5CC10 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x28223BE20](a1);
  return sub_24A82D574();
}

uint64_t sub_24A7BF0A0(unsigned __int8 a1, uint64_t a2)
{
  if (qword_27EF5CC18 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = qword_27EF78EF8;
  if (*(qword_27EF78EF8 + 16) && (v5 = sub_24A77EFD4(a1), (v6 & 1) != 0))
  {
    sub_24A67E168(*(v4 + 56) + 32 * v5, v8);
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  swift_endAccess();
  sub_24A6BBA94(&qword_27EF5D898, qword_24A8354A0);
  if (swift_dynamicCast())
  {
    return v9;
  }

  return a2;
}

uint64_t sub_24A7BF1BC@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_24A82D634();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v20 - v11;
  if (qword_27EF5CC18 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v13 = qword_27EF78EF8;
  if (*(qword_27EF78EF8 + 16) && (v14 = sub_24A77EFD4(a1), (v15 & 1) != 0))
  {
    sub_24A67E168(*(v13 + 56) + 32 * v14, v20);
  }

  else
  {
    memset(v20, 0, sizeof(v20));
  }

  swift_endAccess();
  sub_24A6BBA94(&qword_27EF5D898, qword_24A8354A0);
  v16 = swift_dynamicCast();
  v17 = *(a3 - 8);
  v18 = *(v17 + 56);
  if (v16)
  {
    v18(v12, 0, 1, a3);
    return (*(v17 + 32))(a4, v12, a3);
  }

  else
  {
    v18(v12, 1, 1, a3);
    (*(v9 + 8))(v12, v8);
    return (*(v17 + 16))(a4, a2, a3);
  }
}

uint64_t sub_24A7BF428(unsigned __int8 a1, uint64_t a2)
{
  if (qword_27EF5CC18 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = qword_27EF78EF8;
  if (*(qword_27EF78EF8 + 16) && (v5 = sub_24A77EFD4(a1), (v6 & 1) != 0))
  {
    sub_24A67E168(*(v4 + 56) + 32 * v5, v8);
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  swift_endAccess();
  sub_24A6BBA94(&qword_27EF5D898, qword_24A8354A0);
  if (swift_dynamicCast())
  {
    return v9;
  }

  return a2;
}

uint64_t sub_24A7BF534(unsigned __int8 a1, uint64_t a2)
{
  if (qword_27EF5CC18 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = qword_27EF78EF8;
  if (*(qword_27EF78EF8 + 16) && (v5 = sub_24A77EFD4(a1), (v6 & 1) != 0))
  {
    sub_24A67E168(*(v4 + 56) + 32 * v5, v8);
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  swift_endAccess();
  sub_24A6BBA94(&qword_27EF5D898, qword_24A8354A0);
  sub_24A6BBA94(&qword_27EF5D248, &unk_24A834970);
  if (swift_dynamicCast())
  {
    return v9;
  }

  return a2;
}

uint64_t FMIPNoItemsKBArticleLink.getter(uint64_t a1)
{
  if (qword_27EF5CC10 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x28223BE20](a1);
  sub_24A82D574();
  v1 = objc_opt_self();
  v2 = sub_24A82CF94();
  v3 = sub_24A82CF94();
  v4 = [v1 stringForKey:v2 inDomain:v3];

  if (v4)
  {
    v5 = sub_24A82CFC4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = sub_24A82CF94();
  v9 = sub_24A82CF94();
  v10 = [v1 stringForKey:v8 inDomain:v9];

  if (!v10)
  {
    if (!v7)
    {
      return v15;
    }

LABEL_11:

    return v5;
  }

  v11 = sub_24A82CFC4();
  v13 = v12;

  if (v7)
  {
    goto LABEL_11;
  }

  if (!v13)
  {
    return v15;
  }

  return v11;
}

uint64_t sub_24A7BF898()
{
  sub_24A6BBA94(&qword_27EF5EE80, &unk_24A83CCA0);
  inited = swift_initStackObject();
  *(inited + 32) = 1;
  v1 = MEMORY[0x277D837D0];
  *(inited + 16) = xmmword_24A8343E0;
  *(inited + 64) = v1;
  *(inited + 40) = 0xD000000000000020;
  *(inited + 48) = 0x800000024A849280;
  *(inited + 72) = 3;
  *(inited + 104) = v1;
  *(inited + 80) = 0xD000000000000025;
  *(inited + 88) = 0x800000024A8492B0;
  *(inited + 112) = 2;
  *(inited + 144) = MEMORY[0x277D839B0];
  *(inited + 120) = 0;
  *(inited + 152) = 0;
  *(inited + 184) = MEMORY[0x277D83B88];
  *(inited + 160) = 200;
  v2 = sub_24A78AE98(inited);
  swift_setDeallocating();
  sub_24A6BBA94(&qword_27EF5E6B8, &qword_24A838CD8);
  result = swift_arrayDestroy();
  qword_27EF78EF8 = v2;
  return result;
}

uint64_t sub_24A7BF9B8@<X0>(void *a1@<X8>)
{
  v3 = qword_27EF5EE50;
  swift_beginAccess();
  sub_24A67E964(v1 + v3, &v10, &qword_27EF5EE78, &unk_24A83CC90);
  if (v11)
  {
    return sub_24A696E80(&v10, a1);
  }

  sub_24A67F378(&v10, &qword_27EF5EE78, &unk_24A83CC90);
  v5 = sub_24A82C514();
  v11 = v5;
  v12 = sub_24A67A06C(&unk_281514680, MEMORY[0x277D08A28]);
  v6 = sub_24A697E3C(&v10);
  (*(*(v5 - 8) + 104))(v6, *MEMORY[0x277D08A08], v5);
  LOBYTE(v5) = sub_24A82C4D4();
  sub_24A6876E8(&v10);
  if (v5)
  {
    v7 = type metadata accessor for StewieStateProviderImpl();
    v8 = swift_allocObject();
    v9 = &protocol witness table for StewieStateProviderImpl;
  }

  else
  {
    v8 = [objc_allocWithZone(MEMORY[0x277D496C0]) init];
    v7 = sub_24A679170(0, &qword_27EF5EE90, 0x277D496C0);
    v9 = &protocol witness table for SPSecureLocationsManager;
  }

  a1[3] = v7;
  a1[4] = v9;
  *a1 = v8;
  sub_24A698230(a1, &v10);
  swift_beginAccess();
  sub_24A7C6598(&v10, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_24A7BFB9C()
{
  v1 = *(v0 + qword_281512FE8 + 8);

  v2 = *(v0 + qword_2815147C8);

  sub_24A6BAF88(v0 + qword_2815147C0);
  v3 = *(v0 + qword_2815147D0);

  v4 = qword_281518F30;
  v5 = sub_24A82CA34();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(v0 + qword_281518D88);

  return sub_24A67F378(v0 + qword_27EF5EE50, &qword_27EF5EE78, &unk_24A83CC90);
}

uint64_t sub_24A7BFC8C()
{
  v1 = v0;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A82CDC4();
  sub_24A6797D0(v2, qword_281518F88);

  v3 = sub_24A82CD94();
  v4 = sub_24A82D504();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v28 = v6;
    *v5 = 136315138;
    v7 = *(v1 + qword_281512FE8);
    v8 = *(v1 + qword_281512FE8 + 8);

    v9 = sub_24A695068(0xCuLL, v7, v8);
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v16 = MEMORY[0x24C21C960](v9, v11, v13, v15);
    v18 = v17;

    v19 = sub_24A68761C(v16, v18, &v28);

    *(v5 + 4) = v19;
    _os_log_impl(&dword_24A675000, v3, v4, "FMIPServerInteractionController<%s>.deinit", v5, 0xCu);
    sub_24A6876E8(v6);
    MEMORY[0x24C21E1D0](v6, -1, -1);
    MEMORY[0x24C21E1D0](v5, -1, -1);
  }

  v20 = sub_24A82CC44();
  v21 = *(v20 + qword_281512FE8 + 8);

  v22 = *(v20 + qword_2815147C8);

  sub_24A6BAF88(v20 + qword_2815147C0);
  v23 = *(v20 + qword_2815147D0);

  v24 = qword_281518F30;
  v25 = sub_24A82CA34();
  (*(*(v25 - 8) + 8))(v20 + v24, v25);
  v26 = *(v20 + qword_281518D88);

  sub_24A67F378(v20 + qword_27EF5EE50, &qword_27EF5EE78, &unk_24A83CC90);
  return v20;
}

uint64_t sub_24A7BFF34()
{
  v0 = *sub_24A7BFC8C();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

id sub_24A7BFF88(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, void **a5, void (*a6)(void, void *), uint64_t a7, void *a8, uint64_t a9)
{
  v56 = a6;
  v16 = sub_24A6BBA94(&qword_27EF5CF08, &qword_24A830D80);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = v55 - v18;
  if (a3)
  {
    v20 = sub_24A82C514();
    v57[3] = v20;
    v57[4] = sub_24A67A06C(&unk_281514680, MEMORY[0x277D08A28]);
    v21 = sub_24A697E3C(v57);
    (*(*(v20 - 8) + 104))(v21, *MEMORY[0x277D089E0], v20);
    LOBYTE(v20) = sub_24A82C4D4();
    sub_24A6876E8(v57);
    if (v20)
    {
      v55[1] = a7;
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v22 = sub_24A82CDC4();
      sub_24A6797D0(v22, qword_281518F88);
      v23 = a3;
      v24 = sub_24A82CD94();
      v25 = sub_24A82D504();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v55[0] = a8;
        v28 = v27;
        v57[0] = v27;
        *v26 = 136315138;
        swift_getErrorValue();
        v29 = sub_24A82DC74();
        v31 = sub_24A68761C(v29, v30, v57);

        *(v26 + 4) = v31;
        _os_log_impl(&dword_24A675000, v24, v25, "FMIPServerInteractionController: didn't complete because of error (will check Stewie): %s", v26, 0xCu);
        sub_24A6876E8(v28);
        v32 = v28;
        a8 = v55[0];
        MEMORY[0x24C21E1D0](v32, -1, -1);
        MEMORY[0x24C21E1D0](v26, -1, -1);
      }

      sub_24A7BF9B8(v57);
      v33 = sub_24A71A040(v57);
      v34 = sub_24A6876E8(v57);
      if (v33 & 1) != 0 && ((*(*a5 + qword_281518EC0 + 200))(v34))
      {
        v35 = sub_24A82CD94();
        v36 = sub_24A82D504();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&dword_24A675000, v35, v36, "FMIPServerInteractionController: discarded alert because refresh request and Stewie-enabled", v37, 2u);
          MEMORY[0x24C21E1D0](v37, -1, -1);
        }
      }

      else
      {
        v40 = sub_24A82CD94();
        v41 = sub_24A82D504();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          *v42 = 0;
          _os_log_impl(&dword_24A675000, v40, v41, "FMIPServerInteractionController: proceeding with alert", v42, 2u);
          MEMORY[0x24C21E1D0](v42, -1, -1);
        }

        sub_24A7C2A68(a5, a3);
      }
    }

    v56(0, a3);
    return [a8 signal];
  }

  v38 = *a5;
  if (type metadata accessor for FMIPInitClientRequest() == v38)
  {
    *(a4 + qword_281518F28) = 1;
  }

  if (a2 >> 60 != 15)
  {
    v39 = a2 >> 62;
    if ((a2 >> 62) <= 1)
    {
      if (!v39)
      {
        if ((a2 & 0xFF000000000000) == 0)
        {
          goto LABEL_26;
        }

LABEL_36:
        v52 = sub_24A82D354();
        (*(*(v52 - 8) + 56))(v19, 1, 1, v52);
        v53 = swift_allocObject();
        v53[2] = 0;
        v53[3] = 0;
        v53[4] = a9;
        v53[5] = a1;
        v53[6] = a2;
        v53[7] = a4;
        v53[8] = v56;
        v53[9] = a7;
        v53[10] = a8;

        v54 = a8;
        sub_24A7382F4(0, 0, v19, &unk_24A83CCB8, v53);
      }

      if (a1 == a1 >> 32)
      {
        goto LABEL_28;
      }

LABEL_35:
      sub_24A7C6480(a1, a2);
      goto LABEL_36;
    }

    if (v39 != 2)
    {
LABEL_26:
      sub_24A67E8E8(a1, a2);
      goto LABEL_28;
    }

    if (*(a1 + 16) != *(a1 + 24))
    {
      goto LABEL_35;
    }
  }

LABEL_28:
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v44 = sub_24A82CDC4();
  sub_24A6797D0(v44, qword_281518F88);
  v45 = sub_24A82CD94();
  v46 = sub_24A82D504();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = a8;
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_24A675000, v45, v46, "FMIPServerInteractionController: received empty data", v48, 2u);
    v49 = v48;
    a8 = v47;
    MEMORY[0x24C21E1D0](v49, -1, -1);
  }

  sub_24A7C642C();
  v50 = swift_allocError();
  *v51 = 1;
  v56(0, v50);

  return [a8 signal];
}

uint64_t sub_24A7C0658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[21] = v17;
  v8[22] = v18;
  v8[19] = a7;
  v8[20] = a8;
  v8[17] = a5;
  v8[18] = a6;
  v8[16] = a4;
  v9 = sub_24A82CDF4();
  v8[23] = v9;
  v10 = *(v9 - 8);
  v8[24] = v10;
  v11 = *(v10 + 64) + 15;
  v8[25] = swift_task_alloc();
  v12 = sub_24A82CE54();
  v8[26] = v12;
  v13 = *(v12 - 8);
  v8[27] = v13;
  v14 = *(v13 + 64) + 15;
  v8[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A7C0788, 0, 0);
}

uint64_t sub_24A7C0788()
{
  v60 = v0;
  v1 = v0[22];
  v3 = v0[16];
  v2 = v0[17];
  v4 = sub_24A82C574();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_24A82C564();
  swift_getWitnessTable();
  sub_24A82C554();

  v7 = v0[11];
  v0[29] = v7;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v8 = sub_24A82CDC4();
  sub_24A6797D0(v8, qword_281518F88);

  v9 = sub_24A82CD94();
  v10 = sub_24A82D504();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[22];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v59 = v13;
    *v12 = 136315138;
    v0[15] = v7;

    v14 = sub_24A82D024();
    v16 = sub_24A68761C(v14, v15, &v59);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_24A675000, v9, v10, "FMIPServerInteractionController: received response?: %s", v12, 0xCu);
    sub_24A6876E8(v13);
    MEMORY[0x24C21E1D0](v13, -1, -1);
    MEMORY[0x24C21E1D0](v12, -1, -1);
  }

  v17 = *v7;
  v18 = swift_conformsToProtocol2();
  v0[30] = v18;
  if (v18)
  {
    v19 = *v7;
    v0[31] = *v7;
    v20 = *(v18 + 16);
    v21 = v18;

    v22 = v20(v19, v21);
    v0[32] = v22;
    if (v22)
    {
      v23 = v22;
      v24 = sub_24A82CD94();
      v25 = sub_24A82D504();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_24A675000, v24, v25, "FMIPServerInteractionController: received devices containing response, shifting the devices", v26, 2u);
        MEMORY[0x24C21E1D0](v26, -1, -1);
      }

      type metadata accessor for FMLocationShifter();
      swift_allocObject();
      v27 = FMLocationShifter.init()();
      v0[33] = v27;
      v28 = swift_task_alloc();
      v0[34] = v28;
      *(v28 + 16) = v27;
      *(v28 + 24) = v23;
      v29 = *(MEMORY[0x277D859E0] + 4);
      v30 = swift_task_alloc();
      v0[35] = v30;
      v31 = sub_24A6BBA94(&unk_27EF5E220, &unk_24A8343D0);
      *v30 = v0;
      v30[1] = sub_24A7C0FA8;

      return MEMORY[0x2822007B8](v0 + 14, 0, 0, 0x6564287466696873, 0xEF293A7365636976, sub_24A7C6590, v28, v31);
    }
  }

  v32 = v0[29];
  v33 = v0[18];

  sub_24A7C2808(v34);
  if (*(v32 + 32))
  {
    v35 = v0[18];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v37 = Strong;

      sub_24A81E3A8(v38, v37);
      swift_unknownObjectRelease();
    }
  }

  v39 = v0[28];
  v40 = v0[29];
  v57 = v0[27];
  v58 = v0[26];
  v41 = v0[25];
  v56 = v0[24];
  v42 = v0[22];
  v43 = v0[23];
  v45 = v0[19];
  v44 = v0[20];
  v46 = v0[18];

  v45(v47, 0);

  v55 = *(v46 + qword_281512FE0);
  v48 = swift_allocObject();
  v48[2] = v42;
  v48[3] = v40;
  v48[4] = v46;
  v0[6] = sub_24A7C6584;
  v0[7] = v48;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_24A699BA0;
  v0[5] = &unk_285DCA730;
  v49 = _Block_copy(v0 + 2);

  sub_24A82CE24();
  v0[13] = MEMORY[0x277D84F90];
  sub_24A67A06C(&qword_281515DB0, MEMORY[0x277D85198]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v39, v41, v49);
  _Block_release(v49);

  (*(v56 + 8))(v41, v43);
  (*(v57 + 8))(v39, v58);
  v50 = v0[7];

  v51 = v0[28];
  v52 = v0[25];
  [v0[21] signal];

  v53 = v0[1];

  return v53();
}

uint64_t sub_24A7C0FA8()
{
  v1 = *(*v0 + 280);
  v2 = *(*v0 + 272);
  v3 = *(*v0 + 256);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_24A7C10DC, 0, 0);
}

uint64_t sub_24A7C10DC()
{
  v1 = v0[33];
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[29];

  (*(v3 + 24))(v0[14], v2, v3);

  v5 = v0[29];
  v6 = v0[18];

  sub_24A7C2808(v7);
  if (*(v5 + 32))
  {
    v8 = v0[18];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;

      sub_24A81E3A8(v11, v10);
      swift_unknownObjectRelease();
    }
  }

  v12 = v0[28];
  v13 = v0[29];
  v30 = v0[27];
  v31 = v0[26];
  v28 = v0[25];
  v29 = v0[24];
  v14 = v0[22];
  v15 = v0[23];
  v17 = v0[19];
  v16 = v0[20];
  v18 = v0[18];

  v17(v19, 0);

  v27 = *(v18 + qword_281512FE0);
  v20 = swift_allocObject();
  v20[2] = v14;
  v20[3] = v13;
  v20[4] = v18;
  v0[6] = sub_24A7C6584;
  v0[7] = v20;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_24A699BA0;
  v0[5] = &unk_285DCA730;
  v21 = _Block_copy(v0 + 2);

  sub_24A82CE24();
  v0[13] = MEMORY[0x277D84F90];
  sub_24A67A06C(&qword_281515DB0, MEMORY[0x277D85198]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v12, v28, v21);
  _Block_release(v21);

  (*(v29 + 8))(v28, v15);
  (*(v30 + 8))(v12, v31);
  v22 = v0[7];

  v23 = v0[28];
  v24 = v0[25];
  [v0[21] signal];

  v25 = v0[1];

  return v25();
}

uint64_t sub_24A7C1408()
{
  type metadata accessor for FMIPRefreshClientResponse();
  result = swift_dynamicCastClass();
  if (result)
  {
    v1 = result;

    sub_24A7C1E80(v1);
  }

  return result;
}

uint64_t sub_24A7C1484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a2;
  v42 = a3;
  v4 = sub_24A82CDF4();
  v48 = *(v4 - 8);
  v5 = *(v48 + 64);
  MEMORY[0x28223BE20](v4);
  v46 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_24A82CE54();
  v45 = *(v47 - 8);
  v7 = *(v45 + 64);
  MEMORY[0x28223BE20](v47);
  v43 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FMIPDevice();
  v40 = *(v9 - 8);
  v10 = *(v40 + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v38 - v13;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v15 = sub_24A82CDC4();
  sub_24A6797D0(v15, qword_281518F88);
  sub_24A68FE6C(a1, v14, type metadata accessor for FMIPDevice);
  v16 = sub_24A82CD94();
  v17 = sub_24A82D504();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v39 = v4;
    v19 = v18;
    v20 = swift_slowAlloc();
    aBlock[0] = v20;
    *v19 = 136315394;
    *(v19 + 4) = sub_24A68761C(0x6E756F5379616C70, 0xE900000000000064, aBlock);
    *(v19 + 12) = 2080;
    v21 = FMIPDevice.debugDescription.getter();
    v22 = a1;
    v24 = v23;
    sub_24A69010C(v14, type metadata accessor for FMIPDevice);
    v25 = sub_24A68761C(v21, v24, aBlock);
    a1 = v22;

    *(v19 + 14) = v25;
    _os_log_impl(&dword_24A675000, v16, v17, "FMIPServerInteractionController: startMonitoring: action: %s, device: %s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C21E1D0](v20, -1, -1);
    v26 = v19;
    v4 = v39;
    MEMORY[0x24C21E1D0](v26, -1, -1);
  }

  else
  {

    sub_24A69010C(v14, type metadata accessor for FMIPDevice);
  }

  v27 = v44;
  v28 = *(v44 + qword_281512FE0);
  sub_24A68FE6C(a1, v12, type metadata accessor for FMIPDevice);
  v29 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v30 = (v10 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  sub_24A68D690(v12, v31 + v29, type metadata accessor for FMIPDevice);
  v32 = (v31 + v30);
  v33 = v42;
  *v32 = v41;
  v32[1] = v33;
  *(v31 + ((v30 + 23) & 0xFFFFFFFFFFFFFFF8)) = v27;
  aBlock[4] = sub_24A7C6360;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DCA640;
  v34 = _Block_copy(aBlock);

  v35 = v43;
  sub_24A82CE24();
  v49 = MEMORY[0x277D84F90];
  sub_24A67A06C(&qword_281515DB0, MEMORY[0x277D85198]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  v36 = v46;
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v35, v36, v34);
  _Block_release(v34);
  (*(v48 + 8))(v36, v4);
  (*(v45 + 8))(v35, v47);
}

uint64_t sub_24A7C1A2C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A6BBA94(&qword_27EF5EE70, &unk_24A83CC80);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v19 - v8;
  v10 = type metadata accessor for FMIPMonitoredDevice(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A68FE6C(a1, v14, type metadata accessor for FMIPDevice);
  v15 = &v14[*(v10 + 24)];
  *v15 = a2;
  *(v15 + 1) = a3;
  v17 = *a1;
  v16 = a1[1];
  sub_24A68FE6C(v14, v9, type metadata accessor for FMIPMonitoredDevice);
  (*(v11 + 56))(v9, 0, 1, v10);
  swift_beginAccess();

  sub_24A7BE694(v9, v17, v16);
  swift_endAccess();
  return sub_24A69010C(v14, type metadata accessor for FMIPMonitoredDevice);
}

uint64_t sub_24A7C1C0C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_24A6BBA94(&qword_27EF5EE70, &unk_24A83CC80);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - v9;
  v11 = *a2;
  v12 = a2[1];
  v13 = qword_281518D88;
  swift_beginAccess();
  v14 = *(a1 + v13);
  if (*(v14 + 16))
  {
    v15 = *(a1 + v13);

    v16 = sub_24A6A2D48(v11, v12);
    if (v17)
    {
      v18 = v16;
      v19 = *(v14 + 56);
      v20 = type metadata accessor for FMIPMonitoredDevice(0);
      v21 = *(v20 - 8);
      v27 = v11;
      v22 = v21;
      sub_24A68FE6C(v19 + *(v21 + 72) * v18, v10, type metadata accessor for FMIPMonitoredDevice);

      v23 = *(v22 + 56);
      v23(v10, 0, 1, v20);
      sub_24A67F378(v10, &qword_27EF5EE70, &unk_24A83CC80);
      v23(v8, 1, 1, v20);
      swift_beginAccess();

      sub_24A7BE694(v8, v27, v12);
      return swift_endAccess();
    }
  }

  v25 = type metadata accessor for FMIPMonitoredDevice(0);
  (*(*(v25 - 8) + 56))(v10, 1, 1, v25);
  return sub_24A67F378(v10, &qword_27EF5EE70, &unk_24A83CC80);
}

void sub_24A7C1E80(uint64_t a1)
{
  v78 = a1;
  v75 = sub_24A82CDF4();
  v77 = *(v75 - 8);
  v1 = *(v77 + 8);
  MEMORY[0x28223BE20](v75);
  v74 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_24A82CE54();
  v3 = *(v73 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v73);
  v72 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FMIPMonitoredDevice(0);
  v71 = *(v6 - 8);
  v7 = *(v71 + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v70 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v69 = &v56 - v10;
  MEMORY[0x28223BE20](v9);
  v79 = &v56 - v11;
  v12 = type metadata accessor for FMIPDevice();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12 - 8);
  v68 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = (&v56 - v16);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v18 = sub_24A82CDC4();
  sub_24A6797D0(v18, qword_281518F88);
  v19 = sub_24A82CD94();
  v20 = sub_24A82D504();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_24A675000, v19, v20, "FMIPServerInteractionController: evaluating devices for monitoring", v21, 2u);
    MEMORY[0x24C21E1D0](v21, -1, -1);
  }

  v22 = qword_281518D88;
  v23 = v80;
  swift_beginAccess();
  if (*(*(v23 + v22) + 16))
  {
    v24 = *(v78 + 56);
    if (v24)
    {
      v25 = v3;
      v26 = *(v24 + 16);
      if (!v26)
      {
        return;
      }

      v65 = qword_2815147D8;
      v27 = *(v13 + 80);
      v63 = ~v27;
      v28 = v24 + ((v27 + 32) & ~v27);
      v29 = *(v13 + 72);
      v64 = v27;
      v61 = v7 + v27;
      v60 = v14 + 7;
      v59 = v83;
      v58 = (v77 + 8);
      v57 = (v25 + 8);
      v67 = v24;

      v66 = v22;
      v62 = v29;
      v56 = v17;
      while (1)
      {
        sub_24A68FE6C(v28, v17, type metadata accessor for FMIPDevice);
        v30 = *(v80 + v22);
        if (*(v30 + 16))
        {
          v32 = *v17;
          v31 = v17[1];
          v33 = *(v80 + v22);

          v34 = sub_24A6A2D48(v32, v31);
          if (v35)
          {
            v36 = v71;
            v37 = v69;
            sub_24A68FE6C(*(v30 + 56) + *(v71 + 72) * v34, v69, type metadata accessor for FMIPMonitoredDevice);

            v38 = v79;
            sub_24A68D690(v37, v79, type metadata accessor for FMIPMonitoredDevice);
            v78 = *(v80 + v65);
            v39 = v70;
            v77 = type metadata accessor for FMIPMonitoredDevice;
            sub_24A68FE6C(v38, v70, type metadata accessor for FMIPMonitoredDevice);
            v40 = v17;
            v41 = v68;
            v76 = type metadata accessor for FMIPDevice;
            sub_24A68FE6C(v40, v68, type metadata accessor for FMIPDevice);
            v42 = (*(v36 + 80) + 16) & ~*(v36 + 80);
            v43 = (v61 + v42) & v63;
            v44 = (v60 + v43) & 0xFFFFFFFFFFFFFFF8;
            v45 = swift_allocObject();
            sub_24A68D690(v39, v45 + v42, type metadata accessor for FMIPMonitoredDevice);
            v46 = v41;
            v17 = v56;
            sub_24A68D690(v46, v45 + v43, type metadata accessor for FMIPDevice);
            *(v45 + v44) = v67;
            v83[2] = sub_24A7C6268;
            v83[3] = v45;
            aBlock[0] = MEMORY[0x277D85DD0];
            aBlock[1] = 1107296256;
            v83[0] = sub_24A699BA0;
            v83[1] = &unk_285DCA5F0;
            v47 = _Block_copy(aBlock);

            v48 = v72;
            sub_24A82CE24();
            v81 = MEMORY[0x277D84F90];
            sub_24A67A06C(&qword_281515DB0, MEMORY[0x277D85198]);
            sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
            sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
            v49 = v74;
            v50 = v75;
            v29 = v62;
            sub_24A82D6B4();
            MEMORY[0x24C21CE90](0, v48, v49, v47);
            _Block_release(v47);
            v51 = v50;
            v22 = v66;
            (*v58)(v49, v51);
            (*v57)(v48, v73);
            sub_24A69010C(v79, v77);
            sub_24A69010C(v17, v76);

            goto LABEL_11;
          }
        }

        sub_24A69010C(v17, type metadata accessor for FMIPDevice);
LABEL_11:
        v28 += v29;
        if (!--v26)
        {

          return;
        }
      }
    }

    v52 = sub_24A82CD94();
    v53 = sub_24A82D504();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      v55 = "FMIPServerInteractionController: no devices detected, bypassing";
      goto LABEL_20;
    }
  }

  else
  {
    v52 = sub_24A82CD94();
    v53 = sub_24A82D504();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      v55 = "FMIPServerInteractionController: nothing to monitor, bypassing";
LABEL_20:
      _os_log_impl(&dword_24A675000, v52, v53, v55, v54, 2u);
      MEMORY[0x24C21E1D0](v54, -1, -1);
    }
  }
}

uint64_t sub_24A7C26F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v6 = sub_24A82CDC4();
  sub_24A6797D0(v6, qword_281518F88);
  v7 = sub_24A82CD94();
  v8 = sub_24A82D504();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_24A675000, v7, v8, "FMIPServerInteractionController: device monitored so calling callback", v9, 2u);
    MEMORY[0x24C21E1D0](v9, -1, -1);
  }

  v10 = a1 + *(type metadata accessor for FMIPMonitoredDevice(0) + 24);
  v11 = *(v10 + 8);
  return (*v10)(a2, a3);
}

uint64_t sub_24A7C2808(uint64_t result)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = *(v1 + qword_2815147D0);
    *(v1 + qword_2815147D0) = v2;

    if (!*(v2 + 16))
    {
      return sub_24A7C3324(v2);
    }

    v4 = sub_24A6A2D48(0xD000000000000012, 0x800000024A849380);
    if ((v5 & 1) == 0)
    {
      return sub_24A7C3324(v2);
    }

    sub_24A67E168(*(v2 + 56) + 32 * v4, v20);
    if ((swift_dynamicCast() & 1) == 0)
    {
      return sub_24A7C3324(v2);
    }

    v6 = objc_opt_self();
    v7 = sub_24A82CF94();
    v8 = sub_24A82CF94();
    v9 = [v6 stringForKey:v7 inDomain:v8];

    if (v9)
    {
      v10 = sub_24A82CFC4();
      v12 = v11;

      if (v10 == v18 && v12 == v19)
      {

        goto LABEL_12;
      }

      v13 = sub_24A82DC04();

      if (v13)
      {
        goto LABEL_12;
      }
    }

    v14 = sub_24A82CF94();
    v15 = sub_24A82CF94();
    v16 = sub_24A82CF94();
    [v6 setString:v14 forKey:v15 inDomain:v16];

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_24A7C5870(v18, v19, Strong);

      swift_unknownObjectRelease();
      return sub_24A7C3324(v2);
    }

LABEL_12:

    return sub_24A7C3324(v2);
  }

  return result;
}

void sub_24A7C2A68(void **a1, uint64_t a2)
{
  v3 = v2;
  v77 = a2;
  v5 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v73 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v71 = a1;
  v72 = &v67 - v9;
  v76 = *a1;
  v75 = type metadata accessor for FMIPInitClientRequest();
  type metadata accessor for FMLocalize();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = objc_opt_self();
  v12 = [v11 bundleForClass_];
  v13 = sub_24A82C6F4();
  v15 = v14;

  v16 = [v11 bundleForClass_];
  v70 = sub_24A82C6F4();
  v79 = v17;

  v68 = v11;
  v69 = ObjCClassFromMetadata;
  v18 = [v11 bundleForClass_];
  v19 = sub_24A82C6F4();
  v78 = v20;

  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v67 = v19;
  v21 = sub_24A82CDC4();
  sub_24A6797D0(v21, qword_281518F88);

  v22 = sub_24A82CD94();
  v23 = sub_24A82D504();
  v24 = os_log_type_enabled(v22, v23);
  v25 = v3;
  v74 = v13;
  if (v24)
  {
    v26 = v75;
    v27 = v76;
    v28 = v75 == v76;
    v29 = v25;
    v30 = swift_slowAlloc();
    *v30 = 67109376;
    *(v30 + 4) = v28;
    *(v30 + 8) = 1024;
    *(v30 + 10) = v29[qword_281518F28];

    _os_log_impl(&dword_24A675000, v22, v23, "FMIPServerInteractionController: createNetworkAlertIfNeeded: %{BOOL}d %{BOOL}d", v30, 0xEu);
    v31 = v30;
    v25 = v29;
    MEMORY[0x24C21E1D0](v31, -1, -1);
  }

  else
  {

    v26 = v75;
    v27 = v76;
  }

  if (v26 == v27 && (v25[qword_281518F28] & 1) == 0)
  {

    v80 = 3;
    v40 = sub_24A82496C(&v80);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_24A81E3A8(v40, Strong);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    if (!v77)
    {
LABEL_18:

      return;
    }

    v76 = v25;
    v32 = sub_24A82C7E4();
    v33 = [v32 domain];
    v34 = sub_24A82CFC4();
    v36 = v35;

    v37 = *MEMORY[0x277CCA738];
    if (v34 == sub_24A82CFC4() && v36 == v38)
    {
    }

    else
    {
      v39 = sub_24A82DC04();

      if ((v39 & 1) == 0)
      {
LABEL_17:

        goto LABEL_18;
      }
    }

    if (v26 == v27 || [v32 code] == -1001 || objc_msgSend(v32, sel_code) == -999 || objc_msgSend(v32, sel_code) == -1005)
    {
      goto LABEL_17;
    }

    v75 = v32;
    swift_getErrorValue();
    if (sub_24A774514(v81))
    {

      v43 = v68;
      v42 = v69;
      v44 = [v68 bundleForClass_];
      v74 = sub_24A82C6F4();
      v46 = v45;

      v47 = [v43 bundleForClass_];
      v48 = sub_24A82C6F4();
      v79 = v49;

      v50 = [v43 bundleForClass_];
      v51 = sub_24A82C6F4();
      v53 = v52;
    }

    else
    {
      v46 = v15;
      v53 = v78;
      v48 = v70;
      v51 = v67;
    }

    v54 = sub_24A82C8B4();
    v55 = *(*(v54 - 8) + 56);
    v56 = v72;
    v55(v72, 1, 1, v54);
    v57 = v73;
    v58 = (v55)(v73, 1, 1, v54);
    if ((*(*v71 + qword_281518EC0 + 200))(v58))
    {
      v59 = 1;
    }

    else
    {
      v59 = 2;
    }

    v60 = type metadata accessor for FMIPAlert();
    v61 = *(v60 + 48);
    v62 = *(v60 + 52);
    v63 = swift_allocObject();
    v63[2] = v74;
    v63[3] = v46;
    v64 = v79;
    v63[4] = v48;
    v63[5] = v64;
    v63[6] = v51;
    v63[7] = v53;
    v65 = (v63 + OBJC_IVAR____TtC8FMIPCore9FMIPAlert_cancelButtonLabel);
    *v65 = 0;
    v65[1] = 0;
    sub_24A67E8FC(v56, v63 + OBJC_IVAR____TtC8FMIPCore9FMIPAlert_okButtonURL, &unk_27EF5CCB8, &qword_24A82FDB0);
    sub_24A67E8FC(v57, v63 + OBJC_IVAR____TtC8FMIPCore9FMIPAlert_cancelButtonURL, &unk_27EF5CCB8, &qword_24A82FDB0);
    *(v63 + OBJC_IVAR____TtC8FMIPCore9FMIPAlert_type) = v59;
    v66 = swift_unknownObjectWeakLoadStrong();
    if (v66)
    {
      sub_24A81E3A8(v63, v66);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_24A7C3324(uint64_t a1)
{
  v3 = sub_24A82CDF4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24A82CE54();
  v8 = *(v16 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v16);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF5CC10 != -1)
  {
    swift_once();
  }

  v15[1] = qword_27EF5EE40;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v1;
  aBlock[4] = sub_24A7C6260;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DCA5A0;
  v13 = _Block_copy(aBlock);

  sub_24A82CE24();
  v17 = MEMORY[0x277D84F90];
  sub_24A67A06C(&qword_281515DB0, MEMORY[0x277D85198]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v11, v7, v13);
  _Block_release(v13);
  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v16);
}

uint64_t sub_24A7C361C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = sub_24A6A2D48(0xD000000000000014, 0x800000024A843ED0);
    if (v3)
    {
      sub_24A67E168(*(a1 + 56) + 32 * v2, &v42);
      v4 = MEMORY[0x277D837D0];
      if (swift_dynamicCast())
      {
        if (v40 == sub_24A7BF428(1u, 0) && v41 == v5)
        {
        }

        else
        {
          v6 = sub_24A82DC04();

          if (v6)
          {
          }

          else
          {
            if (qword_27EF5CC18 != -1)
            {
              swift_once();
            }

            v44 = v4;
            v42 = v40;
            v43 = v41;
            swift_beginAccess();
            sub_24A7BE868(&v42, 1);
            swift_endAccess();
            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              sub_24A7C5A30(1u, Strong);
              swift_unknownObjectRelease();
            }
          }
        }
      }
    }
  }

  if (*(a1 + 16) && (v8 = sub_24A6A2D48(0x626154736D657469, 0xEF64656C62616E45), (v9 & 1) != 0) && (sub_24A67E168(*(a1 + 56) + 32 * v8, &v42), swift_dynamicCast()))
  {
    v10 = v40;
  }

  else
  {
    v10 = 0;
  }

  v11 = objc_opt_self();
  v12 = sub_24A82CF94();
  v13 = sub_24A82CF94();
  v14 = [v11 BOOLForKey:v12 inDomain:v13];

  if ((v10 & 1) == 0 && (v14 & 1) == 0)
  {
    if (qword_27EF5CC18 != -1)
    {
      swift_once();
    }

    v44 = MEMORY[0x277D839B0];
    LOBYTE(v42) = 0;
    swift_beginAccess();
    sub_24A7BE868(&v42, 2);
    swift_endAccess();
    v15 = sub_24A82CF94();
    v16 = sub_24A82CF94();
    [v11 setBool:0 forKey:v15 inDomain:v16];

    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      sub_24A7C5A30(2u, v17);
      swift_unknownObjectRelease();
    }
  }

  if (*(a1 + 16) && (v18 = sub_24A6A2D48(0xD000000000000010, 0x800000024A843F00), (v19 & 1) != 0))
  {
    sub_24A67E168(*(a1 + 56) + 32 * v18, &v42);
    v20 = swift_dynamicCast();
    if (v20)
    {
      v21 = v40;
    }

    else
    {
      v21 = 0;
    }

    if (v20)
    {
      v22 = v41;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v21 = 0;
    v22 = 0;
  }

  v23 = sub_24A82CF94();
  v24 = sub_24A82CF94();
  v25 = [v11 stringForKey:v23 inDomain:v24];

  if (v25)
  {
    v26 = sub_24A82CFC4();
    v28 = v27;

    result = sub_24A7BF534(3u, 0);
    v31 = result;
    v32 = v30;
    if (v22)
    {
LABEL_38:

      if (v32)
      {
        goto LABEL_39;
      }

      goto LABEL_46;
    }

    if (v28)
    {
      v21 = v26;
      v22 = v28;
      if (v30)
      {
LABEL_39:
        if (v21 == v31 && v22 == v32)
        {

LABEL_51:

          goto LABEL_52;
        }

        v34 = sub_24A82DC04();

        if (v34)
        {
          goto LABEL_51;
        }
      }

LABEL_46:
      if (qword_27EF5CC18 != -1)
      {
        swift_once();
      }

      v44 = MEMORY[0x277D837D0];
      v42 = v21;
      v43 = v22;
      swift_beginAccess();

      sub_24A7BE868(&v42, 3);
      swift_endAccess();
      v35 = sub_24A82CF94();

      v36 = sub_24A82CF94();
      v37 = sub_24A82CF94();
      [v11 setString:v35 forKey:v36 inDomain:v37];

      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        sub_24A7C5A30(3u, result);
        result = swift_unknownObjectRelease();
      }

      goto LABEL_52;
    }
  }

  else
  {
    result = sub_24A7BF534(3u, 0);
    v32 = v33;
    if (v22)
    {
      v31 = result;
      goto LABEL_38;
    }
  }

  if (v32)
  {
    goto LABEL_51;
  }

LABEL_52:
  if (*(a1 + 16))
  {
    result = sub_24A6A2D48(0xD000000000000019, 0x800000024A843EB0);
    if (v38)
    {
      sub_24A67E168(*(a1 + 56) + 32 * result, &v42);
      v39 = MEMORY[0x277D83B88];
      result = swift_dynamicCast();
      if (result)
      {
        if (qword_27EF5CC18 != -1)
        {
          swift_once();
        }

        v44 = v39;
        v42 = v40;
        swift_beginAccess();
        sub_24A7BE868(&v42, 0);
        return swift_endAccess();
      }
    }
  }

  return result;
}
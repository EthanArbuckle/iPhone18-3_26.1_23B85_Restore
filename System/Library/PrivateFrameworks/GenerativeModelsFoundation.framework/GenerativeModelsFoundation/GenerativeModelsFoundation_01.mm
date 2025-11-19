void sub_18E16BDFC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void sub_18E16BFA0()
{

  JUMPOUT(0x193ACB8D0);
}

uint64_t sub_18E16BFBC()
{

  return swift_task_alloc();
}

void sub_18E16BFF4()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
}

uint64_t sub_18E16C024(uint64_t result)
{
  *(v1 + 4) = result;
  *v2 = result;
  return result;
}

void sub_18E16C030()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
}

uint64_t sub_18E16C03C()
{

  return sub_18E1A7CC0();
}

void sub_18E16C0A0()
{
  v2 = v0[3].opaque[1];
  v3 = v0[4].opaque[0];
  v4 = v0[2].opaque[1];
  v5 = v0[3].opaque[0];

  os_activity_scope_leave(v0 + 1);
}

void sub_18E16C0C0()
{
  v2 = v0[4].opaque[1];
  v3 = v0[5].opaque[0];
  v4 = v0[3].opaque[1];
  v5 = v0[4].opaque[0];

  os_activity_scope_leave(v0 + 1);
}

void sub_18E16C0E0()
{
  v2 = v0[4].opaque[0];
  v3 = v0[4].opaque[1];
  v4 = v0[3].opaque[0];
  v5 = v0[3].opaque[1];

  os_activity_scope_leave(v0 + 1);
}

void sub_18E16C128()
{

  JUMPOUT(0x193ACB0A0);
}

uint64_t DocumentRegistration.internalStatus.getter()
{
  v2 = sub_18E15D6F0();
  v3 = *(type metadata accessor for DocumentRegistration(v2) + 20);
  sub_18E1594E4();
  return sub_18E16C1DC(v1 + v4, v0);
}

uint64_t sub_18E16C1DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_18E15933C();
  v6 = v5(v4);
  sub_18E159098(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t DocumentRegistration.url.getter()
{
  v2 = sub_18E15D6F0();
  v3 = *(type metadata accessor for DocumentRegistration(v2) + 24);
  v4 = sub_18E1A6D10();
  v5 = sub_18E159098(v4);
  v7 = *(v6 + 16);

  return v7(v0, v1 + v3, v5);
}

void static DocumentRegistration.registering(progress:url:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_18E15D880();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  sub_18E15D6F0();
  v27 = sub_18E1A6D10();
  v28 = sub_18E159050(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v28, v33);
  sub_18E15A808();
  v36 = v35 - v34;
  v37 = type metadata accessor for DocumentRegistration.InternalStatus(0);
  v38 = sub_18E159098(v37);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38, v41);
  sub_18E1590A8();
  v44 = v42 - v43;
  MEMORY[0x1EEE9AC00](v45, v46);
  v48 = &a9 - v47;
  *v48 = *v26;
  *(v48 + 8) = *(v26 + 8);
  swift_storeEnumTagMultiPayload();
  (*(v30 + 16))(v36, v24, v27);
  v49 = type metadata accessor for DocumentRegistration(0);
  v50 = *(v49 + 20);
  sub_18E1594E4();
  sub_18E16C1DC(v48, v20 + v51);
  (*(v30 + 32))(v20 + *(v49 + 24), v36, v27);
  sub_18E16C4E0(v48, v44);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    *v20 = *v44;
    *(v20 + 8) = *(v44 + 8);
    sub_18E15AB5C();
LABEL_6:
    sub_18E15C540();
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_18E159080();
    sub_18E16D598(v44, v55);
    *v20 = 0;
    sub_18E15AB5C();
    *(v20 + 8) = 0;
    *(v20 + 16) = 0;
    goto LABEL_6;
  }

  v53 = sub_18E1A71A0();
  sub_18E159098(v53);
  (*(v54 + 32))(v20, v44);
  sub_18E15AB5C();
LABEL_7:
  swift_storeEnumTagMultiPayload();
  sub_18E15BCD4();
}

uint64_t sub_18E16C4E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentRegistration.InternalStatus(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void static DocumentRegistration.finished(identifier:url:)()
{
  sub_18E15D880();
  v33 = v2;
  v4 = v3;
  sub_18E15D6F0();
  v5 = sub_18E1A6D10();
  v6 = sub_18E159050(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6, v11);
  sub_18E15A808();
  v14 = v13 - v12;
  v15 = type metadata accessor for DocumentRegistration.InternalStatus(0);
  v16 = sub_18E159098(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16, v19);
  sub_18E1590A8();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  sub_18E15D474();
  v25 = sub_18E1A71A0();
  sub_18E159F5C(v25);
  v27 = v26;
  (*(v26 + 16))(v1, v4, v25);
  swift_storeEnumTagMultiPayload();
  (*(v8 + 16))(v14, v33, v5);
  v28 = type metadata accessor for DocumentRegistration(0);
  v29 = *(v28 + 20);
  sub_18E1594E4();
  sub_18E16C1DC(v1, v0 + v30);
  (*(v8 + 32))(v0 + *(v28 + 24), v14, v5);
  sub_18E16C4E0(v1, v22);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    *v0 = *v22;
    *(v0 + 8) = *(v22 + 8);
    sub_18E15AB5C();
LABEL_6:
    sub_18E15C540();
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_18E159080();
    sub_18E16D598(v22, v32);
    *v0 = 0;
    sub_18E15AB5C();
    *(v0 + 8) = 0;
    *(v0 + 16) = 0;
    goto LABEL_6;
  }

  (*(v27 + 32))(v0, v22, v25);
  sub_18E15AB5C();
LABEL_7:
  swift_storeEnumTagMultiPayload();
  sub_18E15BCD4();
}

void static DocumentRegistration.error(description:url:)()
{
  sub_18E15D880();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_18E15D6F0();
  v8 = sub_18E1A6D10();
  v9 = sub_18E159050(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9, v14);
  sub_18E15A808();
  v17 = v16 - v15;
  v18 = type metadata accessor for DocumentRegistration.InternalStatus(0);
  v19 = sub_18E159098(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19, v22);
  sub_18E1590A8();
  v25 = v23 - v24;
  MEMORY[0x1EEE9AC00](v26, v27);
  sub_18E15D474();
  *v1 = v7;
  v1[1] = v5;
  swift_storeEnumTagMultiPayload();
  (*(v11 + 16))(v17, v3, v8);
  v28 = type metadata accessor for DocumentRegistration(0);
  v29 = *(v28 + 20);
  sub_18E1594E4();
  sub_18E16C1DC(v1, v0 + v30);
  (*(v11 + 32))(v0 + *(v28 + 24), v17, v8);
  sub_18E16C4E0(v1, v25);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {

      sub_18E159080();
      sub_18E16D598(v25, v34);
      *v0 = 0;
      sub_18E15AB5C();
      *(v0 + 8) = 0;
      *(v0 + 16) = 0;
      sub_18E15C540();
      swift_storeEnumTagMultiPayload();
      goto LABEL_7;
    }

    v32 = sub_18E1A71A0();
    sub_18E159098(v32);
    (*(v33 + 32))(v0, v25);
    sub_18E15AB5C();
  }

  else
  {
    *v0 = *v25;
    *(v0 + 8) = *(v25 + 8);
    sub_18E15AB5C();
    sub_18E15C540();
  }

  swift_storeEnumTagMultiPayload();

LABEL_7:
  sub_18E15BCD4();
}

void static DocumentRegistration.InternalStatus.== infix(_:_:)()
{
  sub_18E15D880();
  v2 = v1;
  v4 = v3;
  v5 = sub_18E1A71A0();
  v6 = sub_18E159050(v5);
  v48 = v7;
  v49 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6, v10);
  v11 = sub_18E15D988();
  v12 = type metadata accessor for DocumentRegistration.InternalStatus(v11);
  v13 = sub_18E159098(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13, v16);
  sub_18E1590A8();
  v19 = (v17 - v18);
  v22 = MEMORY[0x1EEE9AC00](v20, v21);
  v24 = &v48 - v23;
  MEMORY[0x1EEE9AC00](v22, v25);
  v27 = &v48 - v26;
  v28 = sub_18E161880(&qword_1EABD0508, &qword_18E1AA360);
  v29 = *(*(v28 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v28 - 8, v30);
  v33 = &v48 - v32;
  v34 = &v48 + *(v31 + 56) - v32;
  sub_18E16C1DC(v4, &v48 - v32);
  sub_18E16C1DC(v2, v34);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_18E1594E4();
    sub_18E16C1DC(v33, v27);
    if (!swift_getEnumCaseMultiPayload())
    {
      if (*(v27 + 1) == *(v34 + 1))
      {
        v44 = *(v27 + 2) == *(v34 + 2);
      }

      *v27;
      *v34;
      goto LABEL_16;
    }

    goto LABEL_19;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_18E1594E4();
    sub_18E16C1DC(v33, v19);
    v43 = *v19;
    v42 = v19[1];
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v44 = v43 == *v34 && v42 == *(v34 + 1);
      if (v44)
      {
        v47 = *(v34 + 1);
      }

      else
      {
        v45 = *(v34 + 1);
        sub_18E1A7B90();
      }

      goto LABEL_16;
    }

LABEL_19:
    sub_18E16D540(v33, &qword_1EABD0508, &qword_18E1AA360);
    goto LABEL_20;
  }

  sub_18E1594E4();
  sub_18E16C1DC(v33, v24);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v48 + 8))(v24, v49);
    goto LABEL_19;
  }

  v36 = v48;
  v37 = sub_18E15D618();
  v38 = v34;
  v39 = v49;
  v40(v37, v38, v49);
  sub_18E1A7190();
  v41 = *(v36 + 8);
  v41(v0, v39);
  v41(v24, v39);
LABEL_16:
  sub_18E159080();
  sub_18E16D598(v33, v46);
LABEL_20:
  sub_18E15BCD4();
}

uint64_t DocumentRegistration.InternalStatus.hash(into:)()
{
  sub_18E15933C();
  v2 = sub_18E1A71A0();
  v3 = sub_18E159050(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3, v8);
  v9 = sub_18E15D988();
  v10 = type metadata accessor for DocumentRegistration.InternalStatus(v9);
  v11 = sub_18E159098(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  sub_18E15A808();
  v17 = (v16 - v15);
  sub_18E1594E4();
  sub_18E16C1DC(v0, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v19 = sub_18E15D618();
      v20(v19, v17, v2);
      MEMORY[0x193ACB0A0](1);
      sub_18E15B788();
      sub_18E16D788(v21, v22);
      sub_18E16DD3C();
      return (*(v5 + 8))(v1, v2);
    }

    else
    {
      v27 = *v17;
      v28 = v17[1];
      MEMORY[0x193ACB0A0](2);
      sub_18E1A75C0();
    }
  }

  else
  {
    v24 = *v17;
    v25 = v17[1];
    v26 = v17[2];
    MEMORY[0x193ACB0A0](0);
    sub_18E1A7C90();
    MEMORY[0x193ACB0A0](v25);
    return MEMORY[0x193ACB0A0](v26);
  }
}

void static DocumentRegistration.Status.== infix(_:_:)()
{
  sub_18E15D880();
  v3 = v2;
  v5 = v4;
  v34 = sub_18E1A71A0();
  v6 = sub_18E159050(v34);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6, v11);
  v12 = sub_18E15D988();
  v13 = type metadata accessor for DocumentRegistration.Status(v12);
  v14 = sub_18E159098(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14, v17);
  sub_18E1590A8();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  sub_18E15D474();
  v23 = sub_18E161880(&qword_1EABD0518, &qword_18E1AA368);
  v24 = *(*(v23 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v23 - 8, v25);
  v28 = &v33 - v27;
  v29 = &v33 + *(v26 + 56) - v27;
  sub_18E16C1DC(v5, &v33 - v27);
  sub_18E16C1DC(v3, v29);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_18E15D6D8();
    sub_18E16C1DC(v28, v1);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      if (*(v1 + 8) == *(v29 + 1))
      {
        v32 = *(v1 + 16) == *(v29 + 2);
      }

      *v1;
      *v29;
      goto LABEL_8;
    }

LABEL_10:
    sub_18E16D540(v28, &qword_1EABD0518, &qword_18E1AA368);
    goto LABEL_11;
  }

  sub_18E15D6D8();
  sub_18E16C1DC(v28, v20);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v8 + 8))(v20, v34);
    goto LABEL_10;
  }

  v30 = v34;
  (*(v8 + 32))(v0, v29, v34);
  sub_18E1A7190();
  v31 = *(v8 + 8);
  v31(v0, v30);
  v31(v20, v30);
LABEL_8:
  sub_18E16D598(v28, type metadata accessor for DocumentRegistration.Status);
LABEL_11:
  sub_18E15BCD4();
}

uint64_t DocumentRegistration.Status.hash(into:)()
{
  sub_18E15933C();
  v2 = sub_18E1A71A0();
  v3 = sub_18E159050(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3, v8);
  v9 = sub_18E15D988();
  v10 = type metadata accessor for DocumentRegistration.Status(v9);
  v11 = sub_18E159098(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  sub_18E15A808();
  v17 = v16 - v15;
  sub_18E15D6D8();
  sub_18E16C1DC(v0, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_18E15D618();
    v19(v18, v17, v2);
    MEMORY[0x193ACB0A0](1);
    sub_18E15B788();
    sub_18E16D788(v20, v21);
    sub_18E16DD3C();
    return (*(v5 + 8))(v1, v2);
  }

  else
  {
    v23 = *v17;
    v24 = *(v17 + 8);
    v25 = *(v17 + 16);
    MEMORY[0x193ACB0A0](0);
    sub_18E1A7C90();
    MEMORY[0x193ACB0A0](v24);
    return MEMORY[0x193ACB0A0](v25);
  }
}

uint64_t sub_18E16D38C(void (*a1)(_BYTE *))
{
  sub_18E1A7C60();
  a1(v3);
  return sub_18E1A7CA0();
}

uint64_t sub_18E16D3F4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_18E1A7C60();
  a4(v6);
  return sub_18E1A7CA0();
}

GenerativeModelsFoundation::DocumentRegistration::Progress __swiftcall DocumentRegistration.Progress.init(progress:bytes:totalBytes:)(Swift::Float progress, Swift::UInt bytes, Swift::UInt totalBytes)
{
  *v3 = progress;
  *(v3 + 8) = bytes;
  *(v3 + 16) = totalBytes;
  result.totalBytes = totalBytes;
  result.bytes = bytes;
  result.progress = progress;
  return result;
}

uint64_t DocumentRegistration.Progress.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  *v0;
  sub_18E1A7C90();
  MEMORY[0x193ACB0A0](v1);
  return MEMORY[0x193ACB0A0](v2);
}

uint64_t DocumentRegistration.Progress.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_18E1A7C60();
  sub_18E1A7C90();
  MEMORY[0x193ACB0A0](v2);
  MEMORY[0x193ACB0A0](v3);
  return sub_18E1A7CA0();
}

uint64_t sub_18E16D540(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_18E161880(a2, a3);
  sub_18E159098(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_18E16D598(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_18E159098(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_18E16D5F0()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_18E1A7C60();
  sub_18E1A7C90();
  MEMORY[0x193ACB0A0](v2);
  MEMORY[0x193ACB0A0](v3);
  return sub_18E1A7CA0();
}

uint64_t static DocumentRegistration.== infix(_:_:)()
{
  static DocumentRegistration.Status.== infix(_:_:)();
  if ((v0 & 1) == 0)
  {
    return 0;
  }

  v1 = type metadata accessor for DocumentRegistration(0);
  v2 = *(v1 + 20);
  static DocumentRegistration.InternalStatus.== infix(_:_:)();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = *(v1 + 24);

  return sub_18E1A6CF0();
}

uint64_t DocumentRegistration.hash(into:)()
{
  DocumentRegistration.Status.hash(into:)();
  v1 = type metadata accessor for DocumentRegistration(0);
  v2 = v0 + *(v1 + 20);
  DocumentRegistration.InternalStatus.hash(into:)();
  v3 = *(v1 + 24);
  sub_18E1A6D10();
  sub_18E159FF0();
  sub_18E16D788(v4, v5);
  return sub_18E1A74D0();
}

uint64_t sub_18E16D788(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t DocumentRegistration.hashValue.getter()
{
  sub_18E1A7C60();
  DocumentRegistration.Status.hash(into:)();
  v1 = type metadata accessor for DocumentRegistration(0);
  v2 = v0 + *(v1 + 20);
  DocumentRegistration.InternalStatus.hash(into:)();
  v3 = *(v1 + 24);
  sub_18E1A6D10();
  sub_18E159FF0();
  sub_18E16D788(v4, v5);
  sub_18E1A74D0();
  return sub_18E1A7CA0();
}

uint64_t sub_18E16D888(uint64_t a1, uint64_t a2)
{
  sub_18E1A7C60();
  DocumentRegistration.Status.hash(into:)();
  v4 = v2 + *(a2 + 20);
  DocumentRegistration.InternalStatus.hash(into:)();
  v5 = *(a2 + 24);
  sub_18E1A6D10();
  sub_18E16D788(&qword_1EABD0520, MEMORY[0x1E6968FB0]);
  sub_18E1A74D0();
  return sub_18E1A7CA0();
}

unint64_t sub_18E16D9D0()
{
  result = qword_1EABD0538;
  if (!qword_1EABD0538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0538);
  }

  return result;
}

uint64_t sub_18E16DA98()
{
  result = type metadata accessor for DocumentRegistration.Status(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DocumentRegistration.InternalStatus(319);
    if (v2 <= 0x3F)
    {
      result = sub_18E1A6D10();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_18E16DB34()
{
  sub_18E16DBBC();
  if (v0 <= 0x3F)
  {
    sub_18E16DBE4();
    if (v1 <= 0x3F)
    {
      sub_18E16DC2C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

ValueMetadata *sub_18E16DBBC()
{
  result = qword_1EABD0568;
  if (!qword_1EABD0568)
  {
    result = &type metadata for DocumentRegistration.Progress;
    atomic_store(&type metadata for DocumentRegistration.Progress, &qword_1EABD0568);
  }

  return result;
}

void sub_18E16DBE4()
{
  if (!qword_1EABD0570)
  {
    v0 = sub_18E1A71A0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EABD0570);
    }
  }
}

uint64_t sub_18E16DC2C()
{
  result = qword_1EABD0578;
  if (!qword_1EABD0578)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EABD0578);
  }

  return result;
}

void sub_18E16DC54()
{
  sub_18E16DBBC();
  if (v0 <= 0x3F)
  {
    sub_18E16DBE4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

__n128 initializeBufferWithCopyOfBuffer for DocumentRegistration.Progress(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DocumentRegistration.Progress(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DocumentRegistration.Progress(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_18E16DD3C()
{

  return sub_18E1A74D0();
}

uint64_t DocumentResource.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_18E1A6D10();
  v4 = sub_18E159098(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t DocumentResource.url.setter()
{
  sub_18E15A9FC();
  v2 = sub_18E1A6D10();
  v3 = sub_18E159098(v2);
  v5 = *(v4 + 40);

  return v5(v1, v0, v3);
}

uint64_t type metadata accessor for DocumentResource()
{
  result = qword_1ED8DA2B8;
  if (!qword_1ED8DA2B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DocumentResource.fileDescriptor.setter(int a1)
{
  result = type metadata accessor for DocumentResource();
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*DocumentResource.fileDescriptor.modify())()
{
  sub_18E15A9FC();
  v0 = *(type metadata accessor for DocumentResource() + 20);
  return nullsub_1;
}

uint64_t DocumentResource.metadata.getter()
{
  v1 = *(v0 + *(type metadata accessor for DocumentResource() + 24));
}

uint64_t DocumentResource.metadata.setter()
{
  sub_18E15A9FC();
  v2 = *(type metadata accessor for DocumentResource() + 24);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t (*DocumentResource.metadata.modify())()
{
  sub_18E15A9FC();
  v0 = *(type metadata accessor for DocumentResource() + 24);
  return nullsub_1;
}

uint64_t DocumentResource.init(url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_18E1A6D10();
  v5 = *(v4 - 8);
  (*(v5 + 16))(a2, a1, v4);
  sub_18E1A6D00();
  sub_18E1A75A0();

  v6 = sub_18E1A73A0();

  v7 = type metadata accessor for DocumentResource();
  *(a2 + *(v7 + 20)) = v6;
  if (v6 < 0)
  {
    v8 = sub_18E1A7490();
  }

  else
  {
    v8 = sub_18E16E114(v6);
  }

  v9 = v8;
  result = (*(v5 + 8))(a1, v4);
  *(a2 + *(v7 + 24)) = v9;
  return result;
}

uint64_t sub_18E16E114(int a1)
{
  v2 = sub_18E1A7570();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v68[1] = v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = a1;
  v6 = flistxattr(a1, 0, 0, 0);
  if (v6 < 0)
  {
    goto LABEL_41;
  }

  v7 = v6;
  v8 = sub_18E16E820(0, v6);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = *(v8 + 16);
    sub_18E19EAB0();
    v8 = v10;
  }

  if (flistxattr(v71, (v8 + 32), v7, 0) < 0)
  {

LABEL_41:

    return sub_18E1A7490();
  }

  sub_18E16E890(0, 0x7FFFFFFFFFFFFFFFLL, 1, v8);
  v12 = v11;
  v13 = v11[2];
  if (!v13)
  {

    v15 = MEMORY[0x1E69E7CC0];
    goto LABEL_45;
  }

  v68[0] = v8;
  v72 = MEMORY[0x1E69E7CC0];
  sub_18E19B74C();
  v14 = 0;
  v15 = v72;
  v69 = v12;
  v70 = (v12 + 4);
  while (1)
  {
    if (v14 >= v12[2])
    {
      goto LABEL_68;
    }

    v16 = (v70 + 32 * v14);
    v17 = *v16;
    v18 = v16[1];
    v20 = v16[2];
    v19 = v16[3];
    v21 = v19 >> 1;
    if (v19)
    {
      sub_18E1A7BA0();
      swift_unknownObjectRetain_n();
      v26 = swift_dynamicCastClass();
      if (!v26)
      {
        swift_unknownObjectRelease();
        v26 = MEMORY[0x1E69E7CC0];
      }

      v27 = *(v26 + 16);

      v22 = v21 - v20;
      if (__OFSUB__(v21, v20))
      {
        goto LABEL_70;
      }

      if (v27 == v22)
      {
        v24 = swift_dynamicCastClass();
        if (v24)
        {
          goto LABEL_26;
        }

        swift_unknownObjectRelease();
LABEL_22:
        v24 = MEMORY[0x1E69E7CC0];
        goto LABEL_26;
      }

      swift_unknownObjectRelease();
      if (!v22)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v22 = v21 - v20;
      v23 = __OFSUB__(v21, v20);
      swift_unknownObjectRetain();
      if (v23)
      {
        goto LABEL_69;
      }

      if (!v22)
      {
        goto LABEL_22;
      }
    }

    if (v22 < 1)
    {
      v24 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      sub_18E161880(&qword_1EABD05B0, qword_18E1AA668);
      v24 = swift_allocObject();
      v25 = j__malloc_size(v24);
      v24[2] = v22;
      v24[3] = 2 * v25 - 64;
    }

    if (v20 == v21)
    {
      goto LABEL_73;
    }

    memcpy(v24 + 4, (v18 + v20), v22);
LABEL_26:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = v24[2];
      sub_18E19EAB0();
      v24 = v37;
    }

    v28 = v24[2];
    if (v28 >= v24[3] >> 1)
    {
      sub_18E19EAB0();
      v24 = v38;
    }

    v24[2] = v28 + 1;
    *(v24 + v28 + 32) = 0;
    if (*(v24 + 32))
    {
      break;
    }

LABEL_34:
    v31 = sub_18E1A75B0();
    v33 = v32;

    swift_unknownObjectRelease();
    v72 = v15;
    v34 = v15[2];
    if (v34 >= v15[3] >> 1)
    {
      sub_18E19B74C();
      v15 = v72;
    }

    ++v14;
    v15[2] = v34 + 1;
    v35 = &v15[2 * v34];
    v35[4] = v31;
    v35[5] = v33;
    v12 = v69;
    if (v14 == v13)
    {

LABEL_45:
      v40 = v15[2];
      if (!v40)
      {

        return MEMORY[0x1E69E7CC8];
      }

      v41 = MEMORY[0x1E69E7CC8];
      v69 = v15;
      for (i = v15 + 5; ; i += 2)
      {
        v43 = *(i - 1);
        v44 = *i;
        v45 = sub_18E1A75A0();

        v46 = fgetxattr(v71, (v45 + 32), 0, 0, 0, 0);

        if ((v46 & 0x8000000000000000) == 0)
        {
          if (v46)
          {
            v47 = sub_18E1A7690();
            *(v47 + 16) = v46;
            bzero((v47 + 32), v46);
          }

          else
          {
            v47 = MEMORY[0x1E69E7CC0];
          }

          v48 = sub_18E1A75A0();
          v49 = fgetxattr(v71, (v48 + 32), (v47 + 32), v46, 0, 0);

          if (v49 < 0)
          {
          }

          else
          {
            v72 = v47;
            sub_18E1A7560();
            sub_18E161880(&qword_1EABD0598, &qword_18E1AA658);
            sub_18E16F244();
            v50 = sub_18E1A7540();
            v52 = v51;

            if (v52)
            {
              v70 = v52;
              swift_isUniquelyReferenced_nonNull_native();
              v72 = v41;
              v53 = sub_18E159728(v43, v44);
              if (__OFADD__(v41[2], (v54 & 1) == 0))
              {
                goto LABEL_71;
              }

              v55 = v53;
              v56 = v54;
              sub_18E161880(&qword_1EABD05A8, &qword_18E1AA660);
              if (sub_18E1A7940())
              {
                v57 = sub_18E159728(v43, v44);
                if ((v56 & 1) != (v58 & 1))
                {
                  goto LABEL_74;
                }

                v55 = v57;
              }

              v41 = v72;
              if ((v56 & 1) == 0)
              {
                v72[(v55 >> 6) + 8] |= 1 << v55;
                v62 = (v41[6] + 16 * v55);
                *v62 = v43;
                v62[1] = v44;
                v63 = (v41[7] + 16 * v55);
                v64 = v70;
                *v63 = v50;
                v63[1] = v64;
                v65 = v41[2];
                v66 = __OFADD__(v65, 1);
                v67 = v65 + 1;
                if (v66)
                {
                  goto LABEL_72;
                }

                v41[2] = v67;
                goto LABEL_61;
              }

              v59 = (v72[7] + 16 * v55);
              v60 = v59[1];
              v61 = v70;
              *v59 = v50;
              v59[1] = v61;
            }
          }
        }

LABEL_61:
        if (!--v40)
        {

          return v41;
        }
      }
    }
  }

  v29 = 0;
  while (v28 != v29)
  {
    if (!*(v24 + v29++ + 33))
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  result = sub_18E1A7BB0();
  __break(1u);
  return result;
}

uint64_t DocumentResource.init(_:_:_:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_18E1A6D10();
  sub_18E159098(v8);
  (*(v9 + 32))(a4, a1);
  result = type metadata accessor for DocumentResource();
  *(a4 + *(result + 20)) = a2;
  *(a4 + *(result + 24)) = a3;
  return result;
}

uint64_t sub_18E16E820(uint64_t result, size_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v3 = result;
    v4 = sub_18E1A7690();
    *(v4 + 16) = a2;
    memset((v4 + 32), v3, a2);
    return v4;
  }

  return result;
}

void sub_18E16E890(unsigned __int8 a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 < 0)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    sub_18E19E9C8();
    v11 = v32;
LABEL_32:
    *(v11 + 16) = v4;
    v31 = (v11 + 32 * v9);
    v31[4] = v5;
    v31[5] = v6;
    v31[6] = v7;
    v31[7] = v8;
    return;
  }

  v4 = a4;
  v6 = a3;
  v8 = a2;
  v5 = *(a4 + 16);
  if (!a2 || !v5)
  {
    if (!v5 && (a3 & 1) != 0)
    {
LABEL_23:

      return;
    }

    v5 = sub_18E1A6C4C(0, *(a4 + 16), a4);
    v6 = v23;
    v7 = v24;
    v8 = v25;

    sub_18E19E9C8();
    v11 = v26;
    v9 = *(v26 + 16);
    v27 = *(v26 + 24);
LABEL_31:
    v4 = v9 + 1;
    if (v9 < v27 >> 1)
    {
      goto LABEL_32;
    }

    goto LABEL_35;
  }

  v7 = 0;
  v9 = a1;
  v10 = a4 + 32;
  v11 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v12 = (2 * v7) | 1;
    v13 = v10 + v7;
    while (2)
    {
      v14 = 0;
      for (i = v12; ; i += 2)
      {
        if (!(v7 - v5 + v14))
        {
          goto LABEL_24;
        }

        if ((v7 + v14) >= *(v4 + 16))
        {
          __break(1u);
          goto LABEL_34;
        }

        if (*(v13 + v14) == v9)
        {
          break;
        }

        ++v14;
      }

      if (!v14 && (v6 & 1) != 0)
      {
        ++v7;
        v12 += 2;
        ++v13;
        continue;
      }

      break;
    }

    v36 = v10;
    if (v7 < 0)
    {
      break;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = *(v11 + 16);
      sub_18E19E9C8();
      v11 = v20;
    }

    v10 = v36;
    v16 = *(v11 + 16);
    v17 = v16 + 1;
    if (v16 >= *(v11 + 24) >> 1)
    {
      v35 = v16 + 1;
      v21 = *(v11 + 16);
      sub_18E19E9C8();
      v16 = v21;
      v17 = v35;
      v10 = v36;
      v11 = v22;
    }

    *(v11 + 16) = v17;
    v18 = (v11 + 32 * v16);
    v18[4] = v4;
    v18[5] = v10;
    v18[6] = v7;
    v18[7] = i;
    v7 += v14 + 1;
    if (v17 == v8)
    {
LABEL_24:
      if (v7 == v5 && (v6 & 1) != 0)
      {
        goto LABEL_23;
      }

      if (v5 < v7)
      {
        __break(1u);
      }

      else
      {
        v5 = sub_18E1A6C4C(v7, v5, v4);
        v6 = v28;
        v7 = v29;
        v8 = v30;

        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_30:
          v9 = *(v11 + 16);
          v27 = *(v11 + 24);
          goto LABEL_31;
        }
      }

      v33 = *(v11 + 16);
      sub_18E19E9C8();
      v11 = v34;
      goto LABEL_30;
    }
  }

  __break(1u);
}

void static DocumentResource.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_18E1A6CF0())
  {
    v4 = type metadata accessor for DocumentResource();
    if (*(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20)))
    {
      v5 = *(v4 + 24);
      v6 = *(a1 + v5);
      v7 = *(a2 + v5);

      sub_18E16EBB8(v6, v7);
    }
  }
}

void sub_18E16EBB8(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v3 = 0;
    v5 = a1 + 64;
    v4 = *(a1 + 64);
    v6 = *(a1 + 32);
    sub_18E1590B8();
    v10 = v9 & v8;
    v12 = (v11 + 63) >> 6;
    while (v10)
    {
      v13 = __clz(__rbit64(v10));
      v30 = (v10 - 1) & v10;
LABEL_11:
      v16 = v13 | (v3 << 6);
      v17 = v7;
      v18 = (*(v7 + 48) + 16 * v16);
      v19 = *v18;
      v20 = v18[1];
      v21 = (*(v7 + 56) + 16 * v16);
      v23 = *v21;
      v22 = v21[1];

      v24 = sub_18E159728(v19, v20);
      v26 = v25;

      if ((v26 & 1) == 0)
      {

        return;
      }

      v27 = (*(a2 + 56) + 16 * v24);
      if (*v27 == v23 && v27[1] == v22)
      {

        v7 = v17;
        v10 = v30;
      }

      else
      {
        v29 = sub_18E1A7B90();

        v7 = v17;
        v10 = v30;
        if ((v29 & 1) == 0)
        {
          return;
        }
      }
    }

    v14 = v3;
    while (1)
    {
      v3 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v3 >= v12)
      {
        return;
      }

      v15 = *(v5 + 8 * v3);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v30 = (v15 - 1) & v15;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

uint64_t DocumentResource.hash(into:)(const void *a1)
{
  sub_18E1A6D10();
  sub_18E1594FC();
  sub_18E16F0EC(v3, v4);
  sub_18E1A74D0();
  v5 = type metadata accessor for DocumentResource();
  v6 = *(v1 + *(v5 + 20));
  sub_18E1A7C90();
  v7 = *(v1 + *(v5 + 24));

  return sub_18E16EF58(a1, v7);
}

uint64_t DocumentResource.hashValue.getter()
{
  sub_18E1A7C60();
  sub_18E1A6D10();
  sub_18E1594FC();
  sub_18E16F0EC(v1, v2);
  sub_18E1A74D0();
  v3 = type metadata accessor for DocumentResource();
  v4 = *(v0 + *(v3 + 20));
  sub_18E1A7C90();
  sub_18E16EF58(v6, *(v0 + *(v3 + 24)));
  return sub_18E1A7CA0();
}

uint64_t sub_18E16EEA0(uint64_t a1, uint64_t a2)
{
  sub_18E1A7C60();
  sub_18E1A6D10();
  sub_18E16F0EC(&qword_1EABD0520, MEMORY[0x1E6968FB0]);
  sub_18E1A74D0();
  v4 = *(v2 + *(a2 + 20));
  sub_18E1A7C90();
  sub_18E16EF58(v6, *(v2 + *(a2 + 24)));
  return sub_18E1A7CA0();
}

uint64_t sub_18E16EF58(const void *a1, uint64_t a2)
{
  v4 = a2 + 64;
  v3 = *(a2 + 64);
  v5 = *(a2 + 32);
  sub_18E1590B8();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;

  v12 = 0;
  for (i = 0; v8; v12 ^= result)
  {
    v14 = i;
LABEL_7:
    v15 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v16 = (v14 << 10) | (16 * v15);
    v17 = (*(a2 + 48) + v16);
    v18 = *v17;
    v19 = v17[1];
    v20 = (*(a2 + 56) + v16);
    v21 = *v20;
    v22 = v20[1];
    memcpy(__dst, a1, sizeof(__dst));

    sub_18E1A75C0();

    sub_18E1A75C0();

    result = sub_18E1A7CA0();
  }

  while (1)
  {
    v14 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      return MEMORY[0x193ACB0A0](v12);
    }

    v8 = *(v4 + 8 * v14);
    ++i;
    if (v8)
    {
      i = v14;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18E16F0EC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_18E16F15C()
{
  sub_18E1A6D10();
  if (v0 <= 0x3F)
  {
    sub_18E16F1E8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_18E16F1E8()
{
  if (!qword_1ED8DA0D8[0])
  {
    v0 = sub_18E1A74B0();
    if (!v1)
    {
      atomic_store(v0, qword_1ED8DA0D8);
    }
  }
}

unint64_t sub_18E16F244()
{
  result = qword_1EABD05A0;
  if (!qword_1EABD05A0)
  {
    sub_18E169A64(&qword_1EABD0598, &qword_18E1AA658);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD05A0);
  }

  return result;
}

GenerativeModelsFoundation::AccessGroup_optional __swiftcall AccessGroup.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_18E1A79E0();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t AccessGroup.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD000000000000016;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

unint64_t sub_18E16F364()
{
  result = qword_1EABD05B8;
  if (!qword_1EABD05B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD05B8);
  }

  return result;
}

unint64_t sub_18E16F3DC@<X0>(unint64_t *a1@<X8>)
{
  result = AccessGroup.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_18E16F408()
{
  result = qword_1EABD05C0;
  if (!qword_1EABD05C0)
  {
    sub_18E169A64(&qword_1EABD05C8, &qword_18E1AA720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD05C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AccessGroup(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_18E16F608()
{
  result = qword_1EABD05D0;
  if (!qword_1EABD05D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD05D0);
  }

  return result;
}

uint64_t DeleteDataRequest.key.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t sub_18E16F6B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7247737365636361 && a2 == 0xEB0000000070756FLL;
  if (v4 || (sub_18E1A7B90() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 7955819 && a2 == 0xE300000000000000;
    if (v6 || (sub_18E1A7B90() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x44497469647561 && a2 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_18E1A7B90();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_18E16F7CC(char a1)
{
  if (!a1)
  {
    return 0x7247737365636361;
  }

  if (a1 == 1)
  {
    return 7955819;
  }

  return 0x44497469647561;
}

uint64_t sub_18E16F82C()
{
  v1 = *v0;
  sub_18E1A7C60();
  MEMORY[0x193ACB0A0](v1);
  return sub_18E1A7CA0();
}

uint64_t sub_18E16F878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E16F6B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18E16F8A0(uint64_t a1)
{
  v2 = sub_18E16FADC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E16F8DC(uint64_t a1)
{
  v2 = sub_18E16FADC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DeleteDataRequest.encode(to:)(void *a1)
{
  v4 = sub_18E161880(&qword_1EABD05D8, &qword_18E1AA7E0);
  v5 = sub_18E159050(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5, v10);
  v12 = &v18 - v11;
  v13 = *v1;
  v14 = *(v1 + 1);
  v20 = *(v1 + 2);
  v21 = v14;
  v19 = *(v1 + 6);
  HIDWORD(v18) = v1[28];
  v15 = a1[4];
  sub_18E158E00(a1, a1[3]);
  sub_18E16FADC();
  sub_18E1A7CD0();
  v26 = v13;
  v25 = 0;
  sub_18E16FB30();
  sub_18E1A7B30();
  if (!v2)
  {
    v16 = BYTE4(v18);
    v24 = 1;
    sub_18E1A7B00();
    v23 = 2;
    v22 = v16;
    sub_18E1A7AF0();
  }

  return (*(v7 + 8))(v12, v4);
}

unint64_t sub_18E16FADC()
{
  result = qword_1EABD05E0;
  if (!qword_1EABD05E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD05E0);
  }

  return result;
}

unint64_t sub_18E16FB30()
{
  result = qword_1EABD05E8;
  if (!qword_1EABD05E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD05E8);
  }

  return result;
}

uint64_t DeleteDataRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_18E161880(&qword_1EABD05F0, &qword_18E1AA7E8);
  v6 = sub_18E159050(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v10 = a1[4];
  sub_18E158E00(a1, a1[3]);
  sub_18E16FADC();
  sub_18E1A7CC0();
  if (v2)
  {
    return sub_18E158EC4(a1);
  }

  sub_18E16FDA4();
  sub_18E1A7A80();
  v11 = sub_18E1A7A50();
  v17 = v12;
  v13 = sub_18E1A7A40();
  v14 = sub_18E159514();
  v15(v14);
  *a2 = v18;
  *(a2 + 8) = v11;
  *(a2 + 16) = v17;
  *(a2 + 24) = v13;
  *(a2 + 28) = BYTE4(v13) & 1;

  sub_18E158EC4(a1);
}

unint64_t sub_18E16FDA4()
{
  result = qword_1EABD05F8;
  if (!qword_1EABD05F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD05F8);
  }

  return result;
}

__n128 sub_18E16FE28(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t sub_18E16FE3C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 29))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_18E16FE7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 28) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 29) = 1;
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

    *(result + 29) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DeleteDataRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_18E16FFB4()
{
  result = qword_1EABD0600;
  if (!qword_1EABD0600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0600);
  }

  return result;
}

unint64_t sub_18E17000C()
{
  result = qword_1EABD0608;
  if (!qword_1EABD0608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0608);
  }

  return result;
}

unint64_t sub_18E170064()
{
  result = qword_1EABD0610;
  if (!qword_1EABD0610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0610);
  }

  return result;
}

uint64_t ReadDataRequest.key.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t sub_18E170114(uint64_t a1)
{
  v2 = sub_18E17033C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E170150(uint64_t a1)
{
  v2 = sub_18E17033C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ReadDataRequest.encode(to:)()
{
  sub_18E159F44();
  v3 = v2;
  v4 = sub_18E161880(&qword_1EABD0628, &qword_18E1AA9B0);
  sub_18E159050(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v16 - v11;
  v13 = *v0;
  v14 = *(v0 + 1);
  v18 = *(v0 + 2);
  v19 = v14;
  v17 = *(v0 + 6);
  v16[1] = v0[28];
  v15 = v3[4];
  sub_18E158E00(v3, v3[3]);
  sub_18E17033C();
  sub_18E1A7CD0();
  sub_18E16FB30();
  sub_18E1A7B30();
  if (!v1)
  {
    sub_18E1A7B00();
    sub_18E1A7AF0();
  }

  (*(v6 + 8))(v12, v4);
  sub_18E15A29C();
}

unint64_t sub_18E17033C()
{
  result = qword_1EABD0630;
  if (!qword_1EABD0630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0630);
  }

  return result;
}

void ReadDataRequest.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_18E159F44();
  v15 = v14;
  v17 = v16;
  v18 = sub_18E161880(&unk_1EABD0640, &qword_18E1AA9B8);
  sub_18E159050(v18);
  v20 = *(v19 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v21, v22);
  sub_18E159FE0();
  v23 = v15[4];
  sub_18E158E00(v15, v15[3]);
  sub_18E17033C();
  sub_18E1A7CC0();
  if (v13)
  {
    sub_18E158EC4(v15);
  }

  else
  {
    sub_18E16FDA4();
    sub_18E15AB78();
    sub_18E1A7A80();
    v24 = sub_18E1A7A50();
    v29 = v25;
    v26 = sub_18E1A7A40();
    v27 = sub_18E159514();
    v28(v27);
    *v17 = a13;
    *(v17 + 8) = v24;
    *(v17 + 16) = v29;
    *(v17 + 24) = v26;
    *(v17 + 28) = BYTE4(v26) & 1;

    sub_18E158EC4(v15);
  }

  sub_18E15A29C();
}

uint64_t static ReadDataResponse.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (a1[1] >> 60 != 15)
  {
    if (v4 >> 60 != 15)
    {
      sub_18E17067C(*a2, *(a2 + 8));
      v8 = sub_18E15D9A4();
      sub_18E17067C(v8, v9);
      v10 = sub_18E15D9A4();
      v5 = MEMORY[0x193ACA180](v10);
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (v4 >> 60 != 15)
  {
LABEL_5:
    sub_18E17067C(*a2, *(a2 + 8));
    v6 = sub_18E15D9A4();
    sub_18E17067C(v6, v7);
    v5 = 0;
    goto LABEL_7;
  }

  v5 = 1;
LABEL_7:
  v11 = sub_18E15D9A4();
  sub_18E1706E8(v11, v12);
  sub_18E1706E8(v3, v4);
  return v5 & 1;
}

uint64_t sub_18E17067C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_18E170690(a1, a2);
  }

  return a1;
}

uint64_t sub_18E170690(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_18E1706E8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_18E16BCA0(a1, a2);
  }

  return a1;
}

uint64_t sub_18E1706FC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_18E1A7B90() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_18E1A7B90();

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

uint64_t sub_18E1707CC(char a1)
{
  if (a1)
  {
    return 1635017060;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_18E1707F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E1706FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18E17081C(uint64_t a1)
{
  v2 = sub_18E170C44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E170858(uint64_t a1)
{
  v2 = sub_18E170C44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E170898(uint64_t a1)
{
  v2 = sub_18E170C98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E1708D4(uint64_t a1)
{
  v2 = sub_18E170C98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E170910(uint64_t a1)
{
  v2 = sub_18E170D40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E17094C(uint64_t a1)
{
  v2 = sub_18E170D40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ReadDataResponse.encode(to:)()
{
  sub_18E159F44();
  v2 = v1;
  v3 = sub_18E161880(&qword_1EABD0650, &qword_18E1AA9C0);
  v4 = sub_18E159050(v3);
  v36 = v5;
  v37 = v4;
  v7 = *(v6 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v8, v9);
  v35 = &v32 - v10;
  v11 = sub_18E161880(&qword_1EABD0658, &qword_18E1AA9C8);
  v12 = sub_18E159050(v11);
  v33 = v13;
  v34 = v12;
  v15 = *(v14 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v32 - v18;
  v20 = sub_18E161880(&qword_1EABD0660, &qword_18E1AA9D0);
  sub_18E159050(v20);
  v22 = *(v21 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v23, v24);
  sub_18E159FE0();
  v25 = v0[1];
  v32 = *v0;
  v26 = v2[4];
  sub_18E158E00(v2, v2[3]);
  sub_18E170C44();
  sub_18E1A7CD0();
  if (v25 >> 60 == 15)
  {
    LOBYTE(v38) = 0;
    sub_18E170D40();
    sub_18E15AB78();
    sub_18E1A7AD0();
    (*(v33 + 8))(v19, v34);
  }

  else
  {
    LOBYTE(v38) = 1;
    sub_18E170C98();
    v29 = v35;
    sub_18E15AB78();
    sub_18E1A7AD0();
    v38 = v32;
    v39 = v25;
    sub_18E170CEC();
    v30 = v37;
    sub_18E1A7B30();
    sub_18E15D03C();
    v31(v29, v30);
  }

  v27 = sub_18E15A818();
  v28(v27, v20);
  sub_18E15A29C();
}

unint64_t sub_18E170C44()
{
  result = qword_1EABD0668;
  if (!qword_1EABD0668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0668);
  }

  return result;
}

unint64_t sub_18E170C98()
{
  result = qword_1EABD0670;
  if (!qword_1EABD0670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0670);
  }

  return result;
}

unint64_t sub_18E170CEC()
{
  result = qword_1EABD0678;
  if (!qword_1EABD0678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0678);
  }

  return result;
}

unint64_t sub_18E170D40()
{
  result = qword_1EABD0680;
  if (!qword_1EABD0680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0680);
  }

  return result;
}

uint64_t ReadDataResponse.hash(into:)()
{
  if (v0[1] >> 60 == 15)
  {
    return MEMORY[0x193ACB0A0](0);
  }

  v2 = *v0;
  MEMORY[0x193ACB0A0](1);

  return sub_18E1A6D70();
}

uint64_t ReadDataResponse.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_18E1A7C60();
  if (v2 >> 60 == 15)
  {
    MEMORY[0x193ACB0A0](0);
  }

  else
  {
    MEMORY[0x193ACB0A0](1);
    sub_18E1A6D70();
  }

  return sub_18E1A7CA0();
}

void ReadDataResponse.init(from:)()
{
  sub_18E159F44();
  v3 = v2;
  v55 = v4;
  v58 = sub_18E161880(&qword_1EABD0688, &qword_18E1AA9D8);
  sub_18E159050(v58);
  v56 = v5;
  v7 = *(v6 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v49[-v10];
  v12 = sub_18E161880(&qword_1EABD0690, &qword_18E1AA9E0);
  sub_18E159050(v12);
  v54 = v13;
  v15 = *(v14 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v16, v17);
  sub_18E159FE0();
  v18 = sub_18E161880(&qword_1EABD0698, &qword_18E1AA9E8);
  sub_18E159050(v18);
  v57 = v19;
  v21 = *(v20 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v49[-v24];
  v26 = v3[4];
  sub_18E158E00(v3, v3[3]);
  sub_18E170C44();
  sub_18E1A7CC0();
  if (v0)
  {
    goto LABEL_8;
  }

  v51 = v12;
  v52 = v1;
  v53 = v11;
  v27 = v58;
  v28 = sub_18E1A7AA0();
  sub_18E15AF14(v28, 0);
  if (v30 == v31 >> 1)
  {
LABEL_7:
    v37 = sub_18E1A78C0();
    swift_allocError();
    v39 = v38;
    v40 = *(sub_18E161880(&qword_1EABD06A0, &qword_18E1AA9F0) + 48);
    *v39 = &type metadata for ReadDataResponse;
    sub_18E1A7A00();
    sub_18E1A78A0();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v37);
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_18E15D03C();
    v41(v25, v18);
LABEL_8:
    v42 = v3;
LABEL_9:
    sub_18E158EC4(v42);
    sub_18E15A29C();
    return;
  }

  if (v30 < (v31 >> 1))
  {
    v50 = *(v29 + v30);
    sub_18E15AF84(v30 + 1);
    v33 = v32;
    v35 = v34;
    swift_unknownObjectRelease();
    if (v33 == v35 >> 1)
    {
      if (v50)
      {
        LOBYTE(v59) = 1;
        sub_18E170C98();
        sub_18E1A79F0();
        v36 = v55;
        sub_18E171E48();
        sub_18E15AB78();
        sub_18E1A7A80();
        v44 = v57;
        swift_unknownObjectRelease();
        v46 = sub_18E15A818();
        v47(v46, v27);
        (*(v44 + 8))(v25, v18);
        v48 = v59;
      }

      else
      {
        LOBYTE(v59) = 0;
        sub_18E170D40();
        v43 = v52;
        sub_18E1A79F0();
        v36 = v55;
        swift_unknownObjectRelease();
        (*(v54 + 8))(v43, v51);
        sub_18E15D03C();
        v45(v25, v18);
        v48 = xmmword_18E1AA9A0;
      }

      *v36 = v48;
      v42 = v3;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_18E1713EC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_18E1A7C60();
  if (v2 >> 60 == 15)
  {
    MEMORY[0x193ACB0A0](0);
  }

  else
  {
    MEMORY[0x193ACB0A0](1);
    sub_18E1A6D70();
  }

  return sub_18E1A7CA0();
}

id ReadDataResponseWrapper.__allocating_init(readDataResponse:)(_OWORD *a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC26GenerativeModelsFoundation23ReadDataResponseWrapper_readDataResponse] = *a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id ReadDataResponseWrapper.init(readDataResponse:)(_OWORD *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC26GenerativeModelsFoundation23ReadDataResponseWrapper_readDataResponse] = *a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t static ReadDataResponseWrapper.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EABD0620 = a1;
  return result;
}

uint64_t sub_18E171628@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EABD0620;
  return result;
}

uint64_t sub_18E171674(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EABD0620 = v1;
  return result;
}

Swift::Void __swiftcall ReadDataResponseWrapper.encode(with:)(NSCoder with)
{
  v3 = sub_18E1A6CA0();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_18E1A6C90();
  v11 = *(v1 + OBJC_IVAR____TtC26GenerativeModelsFoundation23ReadDataResponseWrapper_readDataResponse);
  v12 = *(v1 + OBJC_IVAR____TtC26GenerativeModelsFoundation23ReadDataResponseWrapper_readDataResponse + 8);
  sub_18E17067C(v11, v12);
  sub_18E171E9C();
  v6 = sub_18E1A6C80();
  v8 = v7;
  sub_18E1706E8(v11, v12);

  sub_18E171EF0();
  sub_18E170690(v6, v8);
  v9 = sub_18E171814(v6, v8);
  v10 = sub_18E1A7500();
  [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];

  sub_18E16BCA0(v6, v8);
}

id sub_18E171814(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_18E1A6D40();
  v6 = [v4 initWithData_];

  sub_18E16BCA0(a1, a2);
  return v6;
}

id ReadDataResponseWrapper.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_18E171EF0();
  v3 = sub_18E1A7770();
  if (v3)
  {
    v4 = v3;
    v5 = sub_18E1A6C70();
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    sub_18E1A6C60();
    v8 = MEMORY[0x193ACA160](v4);
    v10 = v9;
    sub_18E171F34();
    sub_18E1A6C50();
    sub_18E16BCA0(v8, v10);

    v12 = v20;
    v13 = objc_allocWithZone(ObjectType);
    v14 = &v13[OBJC_IVAR____TtC26GenerativeModelsFoundation23ReadDataResponseWrapper_readDataResponse];
    *v14 = v19;
    *(v14 + 1) = v12;
    v18.receiver = v13;
    v18.super_class = ObjectType;
    v15 = objc_msgSendSuper2(&v18, sel_init);

    v16 = swift_getObjectType();
    sub_18E15A008(v16);
  }

  else
  {

    v11 = swift_getObjectType();
    sub_18E15A008(v11);
    return 0;
  }

  return v15;
}

id ReadDataResponseWrapper.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4 = v1 + OBJC_IVAR____TtC26GenerativeModelsFoundation23ReadDataResponseWrapper_readDataResponse;
  v5 = *(v1 + OBJC_IVAR____TtC26GenerativeModelsFoundation23ReadDataResponseWrapper_readDataResponse);
  v6 = *(v4 + 8);
  v7 = objc_allocWithZone(ObjectType);
  v8 = &v7[OBJC_IVAR____TtC26GenerativeModelsFoundation23ReadDataResponseWrapper_readDataResponse];
  *v8 = v5;
  *(v8 + 1) = v6;
  v9 = sub_18E15D9A4();
  sub_18E17067C(v9, v10);
  v12.receiver = v7;
  v12.super_class = ObjectType;
  result = objc_msgSendSuper2(&v12, sel_init);
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

uint64_t ReadDataResponseWrapper.description.getter()
{
  sub_18E1A7870();
  MEMORY[0x193ACAA20](0xD000000000000014, 0x800000018E1B21F0);
  v2 = *(v0 + OBJC_IVAR____TtC26GenerativeModelsFoundation23ReadDataResponseWrapper_readDataResponse);
  sub_18E1A7930();
  MEMORY[0x193ACAA20](32032, 0xE200000000000000);
  return 0;
}

uint64_t ReadDataResponseWrapper.hash.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26GenerativeModelsFoundation23ReadDataResponseWrapper_readDataResponse);
  v2 = *(v0 + OBJC_IVAR____TtC26GenerativeModelsFoundation23ReadDataResponseWrapper_readDataResponse + 8);
  sub_18E1A7C60();
  if (v2 >> 60 == 15)
  {
    MEMORY[0x193ACB0A0](0);
  }

  else
  {
    MEMORY[0x193ACB0A0](1);
    sub_18E1A6D70();
  }

  return sub_18E1A7CA0();
}

id ReadDataResponseWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ReadDataResponseWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_18E171E48()
{
  result = qword_1EABD06A8;
  if (!qword_1EABD06A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD06A8);
  }

  return result;
}

unint64_t sub_18E171E9C()
{
  result = qword_1EABD06B8;
  if (!qword_1EABD06B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD06B8);
  }

  return result;
}

unint64_t sub_18E171EF0()
{
  result = qword_1EABD06C0;
  if (!qword_1EABD06C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EABD06C0);
  }

  return result;
}

unint64_t sub_18E171F34()
{
  result = qword_1EABD06C8;
  if (!qword_1EABD06C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD06C8);
  }

  return result;
}

unint64_t sub_18E171F8C()
{
  result = qword_1EABD06D0;
  if (!qword_1EABD06D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD06D0);
  }

  return result;
}

uint64_t sub_18E171FF0(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_18E17200C(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18E172034(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 16))
  {
    return (*a1 + 12);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  if (v3 + 1 >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18E172088(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 12;
    if (a3 >= 0xC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

void *sub_18E1720D8(void *result, unsigned int a2)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    result[1] = 0;
  }

  else if (a2)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ReadDataResponse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for ReadDataResponse.DataCodingKeys(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for ReadDataRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_18E1723F4()
{
  result = qword_1EABD07A0;
  if (!qword_1EABD07A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD07A0);
  }

  return result;
}

unint64_t sub_18E17244C()
{
  result = qword_1EABD07A8;
  if (!qword_1EABD07A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD07A8);
  }

  return result;
}

unint64_t sub_18E1724A4()
{
  result = qword_1EABD07B0;
  if (!qword_1EABD07B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD07B0);
  }

  return result;
}

unint64_t sub_18E1724FC()
{
  result = qword_1EABD07B8;
  if (!qword_1EABD07B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD07B8);
  }

  return result;
}

unint64_t sub_18E172554()
{
  result = qword_1EABD07C0;
  if (!qword_1EABD07C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD07C0);
  }

  return result;
}

unint64_t sub_18E1725AC()
{
  result = qword_1EABD07C8;
  if (!qword_1EABD07C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD07C8);
  }

  return result;
}

unint64_t sub_18E172604()
{
  result = qword_1EABD07D0;
  if (!qword_1EABD07D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD07D0);
  }

  return result;
}

unint64_t sub_18E17265C()
{
  result = qword_1EABD07D8;
  if (!qword_1EABD07D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD07D8);
  }

  return result;
}

unint64_t sub_18E1726B4()
{
  result = qword_1EABD07E0;
  if (!qword_1EABD07E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD07E0);
  }

  return result;
}

unint64_t sub_18E17270C()
{
  result = qword_1EABD07E8;
  if (!qword_1EABD07E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD07E8);
  }

  return result;
}

unint64_t sub_18E172764()
{
  result = qword_1EABD07F0;
  if (!qword_1EABD07F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD07F0);
  }

  return result;
}

uint64_t WriteDataRequest.key.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t WriteDataRequest.data.getter()
{
  v1 = *(v0 + 32);
  sub_18E170690(v1, *(v0 + 40));
  return v1;
}

uint64_t sub_18E172854(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7247737365636361 && a2 == 0xEB0000000070756FLL;
  if (v4 || (sub_18E1A7B90() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7974697275636573 && a2 == 0xED00006C6576654CLL;
    if (v6 || (sub_18E1A7B90() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 7955819 && a2 == 0xE300000000000000;
      if (v7 || (sub_18E1A7B90() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x44497469647561 && a2 == 0xE700000000000000;
        if (v8 || (sub_18E1A7B90() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 1635017060 && a2 == 0xE400000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_18E1A7B90();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_18E172A08(char a1)
{
  result = 0x7247737365636361;
  switch(a1)
  {
    case 1:
      result = 0x7974697275636573;
      break;
    case 2:
      result = 7955819;
      break;
    case 3:
      result = 0x44497469647561;
      break;
    case 4:
      result = 1635017060;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_18E172AB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E172854(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18E172AD8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18E172A00();
  *a1 = result;
  return result;
}

uint64_t sub_18E172B00(uint64_t a1)
{
  v2 = sub_18E172DC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E172B3C(uint64_t a1)
{
  v2 = sub_18E172DC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WriteDataRequest.encode(to:)(void *a1)
{
  v4 = sub_18E161880(&qword_1EABD0860, &qword_18E1AB030);
  v5 = sub_18E159050(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5, v10);
  v12 = &v19 - v11;
  v13 = *v1;
  v27 = v1[1];
  v14 = *(v1 + 1);
  v23 = *(v1 + 2);
  v24 = v14;
  v22 = *(v1 + 6);
  v21 = v1[28];
  v15 = *(v1 + 5);
  v19 = *(v1 + 4);
  v20 = v15;
  v16 = a1[4];
  sub_18E158E00(a1, a1[3]);
  sub_18E172DC0();
  sub_18E1A7CD0();
  LOBYTE(v25) = v13;
  v28 = 0;
  sub_18E16FB30();
  sub_18E1590D4();
  sub_18E1A7B30();
  if (!v2)
  {
    v17 = v21;
    LOBYTE(v25) = v27;
    v28 = 1;
    sub_18E172E14();
    sub_18E1590D4();
    sub_18E1A7B30();
    LOBYTE(v25) = 2;
    sub_18E1A7B00();
    LOBYTE(v25) = 3;
    v28 = v17;
    sub_18E1590D4();
    sub_18E1A7AF0();
    v25 = v19;
    v26 = v20;
    v28 = 4;
    sub_18E170690(v19, v20);
    sub_18E170CEC();
    sub_18E1590D4();
    sub_18E1A7B30();
    sub_18E16BCA0(v25, v26);
  }

  return (*(v7 + 8))(v12, v4);
}

unint64_t sub_18E172DC0()
{
  result = qword_1EABD0868;
  if (!qword_1EABD0868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0868);
  }

  return result;
}

unint64_t sub_18E172E14()
{
  result = qword_1EABD0870;
  if (!qword_1EABD0870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0870);
  }

  return result;
}

uint64_t WriteDataRequest.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_18E161880(&qword_1EABD0878, &qword_18E1AB038);
  v6 = sub_18E159050(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v10 = a1[4];
  sub_18E158E00(a1, a1[3]);
  sub_18E172DC0();
  sub_18E1A7CC0();
  if (v2)
  {
    return sub_18E158EC4(a1);
  }

  sub_18E16FDA4();
  sub_18E15D6FC();
  sub_18E17312C();
  sub_18E15D6FC();
  v37 = v29[0];
  sub_18E15AA08(2);
  v11 = sub_18E1A7A50();
  v13 = v12;
  v24 = v11;
  v25 = v29[0];
  sub_18E15AA08(3);
  v14 = sub_18E1A7A40();
  v15 = v14;
  v38 = BYTE4(v14) & 1;
  v39 = 4;
  sub_18E171E48();
  sub_18E15D6FC();
  v16 = sub_18E159524();
  v17(v16);
  v22 = *(&v36 + 1);
  v23 = v36;
  v18 = v29[0];
  LOBYTE(v26) = v29[0];
  BYTE1(v26) = v29[0];
  *(&v26 + 1) = v24;
  *&v27 = v13;
  DWORD2(v27) = v15;
  v19 = v38;
  BYTE12(v27) = v38;
  v28 = v36;
  v20 = v27;
  *a2 = v26;
  a2[1] = v20;
  a2[2] = v28;
  sub_18E173180(&v26, v29);
  sub_18E158EC4(a1);
  v29[0] = v18;
  v29[1] = v25;
  v30 = v24;
  v31 = v13;
  v32 = v15;
  v33 = v19;
  v34 = v23;
  v35 = v22;
  return sub_18E1731B8(v29);
}

unint64_t sub_18E17312C()
{
  result = qword_1EABD0880;
  if (!qword_1EABD0880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0880);
  }

  return result;
}

__n128 sub_18E173218(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_18E17322C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_18E17326C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WriteDataRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WriteDataRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_18E173430()
{
  result = qword_1EABD0888;
  if (!qword_1EABD0888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0888);
  }

  return result;
}

unint64_t sub_18E173488()
{
  result = qword_1EABD0890;
  if (!qword_1EABD0890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0890);
  }

  return result;
}

unint64_t sub_18E1734E0()
{
  result = qword_1EABD0898;
  if (!qword_1EABD0898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0898);
  }

  return result;
}

BOOL sub_18E173534(uint64_t a1, uint64_t a2)
{
  error[1] = *MEMORY[0x1E69E9840];
  v4 = SecTaskCreateFromSelf(0);
  if (!v4)
  {
    if (qword_1EABCFD70 != -1)
    {
      sub_18E159534();
    }

    v11 = sub_18E1A7360();
    v5 = sub_18E15A824(v11, qword_1EABCFD78);
    v12 = sub_18E1A7710();
    if (os_log_type_enabled(v5, v12))
    {
      *sub_18E15BCEC() = 0;
      sub_18E15D048(&dword_18E157000, v13, v14, "Failed to create sec task for checking entitlements");
      sub_18E1590E4();
    }

    goto LABEL_23;
  }

  v5 = v4;
  error[0] = 0;
  v6 = sub_18E1A7500();
  v7 = SecTaskCopyValueForEntitlement(v5, v6, error);

  if (!v7)
  {
    if (qword_1EABCFD70 != -1)
    {
      sub_18E159534();
    }

    v15 = sub_18E1A7360();
    v16 = sub_18E15A824(v15, qword_1EABCFD78);
    v17 = sub_18E1A7720();
    if (sub_18E15AA20(v17))
    {
      *sub_18E15BCEC() = 0;
      sub_18E15D9B0(&dword_18E157000, v18, v19, "Missing keychain-access-groups entitlement!");
      sub_18E1590E4();
    }

    goto LABEL_21;
  }

  v27[0] = v7;
  swift_unknownObjectRetain();
  sub_18E161880(&qword_1EABD08A0, &qword_18E1AB268);
  v8 = swift_dynamicCast();
  if (!v8)
  {
    if (qword_1EABCFD70 != -1)
    {
      sub_18E159534();
    }

    v20 = sub_18E1A7360();
    v21 = sub_18E15A824(v20, qword_1EABCFD78);
    v22 = sub_18E1A7720();
    if (sub_18E15AA20(v22))
    {
      v23 = sub_18E15BCEC();
      *v23 = 0;
      _os_log_impl(&dword_18E157000, v21, a1, "keychain-access-groups entitlement is present, but isn't an array of strings!", v23, 2u);
      sub_18E1590E4();
    }

    swift_unknownObjectRelease();
LABEL_21:
    if (error[0])
    {
    }

LABEL_23:

    v10 = 0;
    goto LABEL_24;
  }

  v27[0] = a1;
  v27[1] = a2;
  MEMORY[0x1EEE9AC00](v8, v9);
  v26[2] = v27;
  v10 = sub_18E173B2C(sub_18E173C08, v26, v27[2]);
  swift_unknownObjectRelease();

  if (error[0])
  {
  }

LABEL_24:
  v24 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t sub_18E173848()
{
  error[1] = *MEMORY[0x1E69E9840];
  v0 = SecTaskCreateFromSelf(0);
  if (!v0)
  {
    if (qword_1EABCFD70 != -1)
    {
      sub_18E159534();
    }

    v5 = sub_18E1A7360();
    v1 = sub_18E15A824(v5, qword_1EABCFD78);
    v6 = sub_18E1A7710();
    if (os_log_type_enabled(v1, v6))
    {
      *sub_18E15BCEC() = 0;
      sub_18E15D048(&dword_18E157000, v7, v8, "Failed to create sec task for checking entitlements");
      sub_18E1590E4();
    }

    goto LABEL_23;
  }

  v1 = v0;
  error[0] = 0;
  v2 = sub_18E1A7500();
  v3 = SecTaskCopyValueForEntitlement(v1, v2, error);

  if (!v3)
  {
    if (qword_1EABCFD70 != -1)
    {
      sub_18E159534();
    }

    v9 = sub_18E1A7360();
    v10 = sub_18E15A824(v9, qword_1EABCFD78);
    v11 = sub_18E1A7720();
    if (sub_18E15AA20(v11))
    {
      *sub_18E15BCEC() = 0;
      sub_18E15D9B0(&dword_18E157000, v12, v13, "Missing com.apple.generativeexperiences.ExternalPartnerCredentialStorage entitlement!");
      sub_18E1590E4();
    }

    goto LABEL_21;
  }

  swift_unknownObjectRetain();
  if (!swift_dynamicCast())
  {
    if (qword_1EABCFD70 != -1)
    {
      sub_18E159534();
    }

    v14 = sub_18E1A7360();
    v15 = sub_18E15A824(v14, qword_1EABCFD78);
    v16 = sub_18E1A7720();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = sub_18E15BCEC();
      *v17 = 0;
      _os_log_impl(&dword_18E157000, v15, v16, "com.apple.generativeexperiences.ExternalPartnerCredentialStorage entitlement is present, but isn't a BOOLean value!", v17, 2u);
      sub_18E1590E4();
    }

    swift_unknownObjectRelease();
LABEL_21:
    if (error[0])
    {
    }

LABEL_23:

    v4 = 0;
    goto LABEL_24;
  }

  swift_unknownObjectRelease();
  v4 = v20;
  if (error[0])
  {
  }

LABEL_24:
  v18 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t sub_18E173AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_18E1A7B90() & 1;
  }
}

BOOL sub_18E173B2C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_18E173C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v5[0] = a1;
  v5[1] = a2;
  return a4(v5, a3);
}

uint64_t sub_18E173C64(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {

    v7 = v4;
    v4 = sub_18E1A6D60();
    v9 = v8;
  }

  else
  {

    v9 = 0xF000000000000000;
  }

  v10 = a3;
  v6(v4, v9, a3);

  sub_18E1706E8(v4, v9);
}

uint64_t *sub_18E173D24()
{
  if (qword_1EABD0270 != -1)
  {
    sub_18E159554();
  }

  return &qword_1EABD08A8;
}

id static ExternalPartnerCredentialStorageXPCService.interface.getter()
{
  if (qword_1EABD0270 != -1)
  {
    sub_18E159554();
  }

  sub_18E15D8E8();
  v0 = qword_1EABD08A8;

  return v0;
}

void static ExternalPartnerCredentialStorageXPCService.interface.setter(uint64_t a1)
{
  if (qword_1EABD0270 != -1)
  {
    sub_18E159554();
  }

  sub_18E15BC90();
  v2 = qword_1EABD08A8;
  qword_1EABD08A8 = a1;
}

uint64_t static ExternalPartnerCredentialStorageXPCService.interface.modify()
{
  if (qword_1EABD0270 != -1)
  {
    sub_18E159554();
  }

  sub_18E15D968();
  return sub_18E15D874();
}

id sub_18E173E94@<X0>(void *a1@<X8>)
{
  sub_18E173D24();
  swift_beginAccess();
  v2 = qword_1EABD08A8;
  *a1 = qword_1EABD08A8;

  return v2;
}

void sub_18E173EF4(id *a1)
{
  v1 = *a1;
  sub_18E173D24();
  swift_beginAccess();
  v2 = qword_1EABD08A8;
  qword_1EABD08A8 = v1;
}

uint64_t sub_18E174008()
{
  sub_18E161880(&qword_1EABD0928, &unk_18E1AB510);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18E1AB270;
  *(v0 + 32) = sel_readDataWithRequestData_with_;
  *(v0 + 40) = 0;
  sub_18E161880(&qword_1EABD0930, &qword_18E1B0B10);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_18E1AB270;
  DataResponseWrapper = type metadata accessor for ReadDataResponseWrapper();
  *(v1 + 56) = sub_18E161880(&qword_1EABD0938, &qword_18E1AB520);
  *(v1 + 32) = DataResponseWrapper;
  sub_18E17678C(0, &qword_1EABD0940, 0x1E695DFD8);
  v3 = MEMORY[0x193ACAB90](v1);
  sub_18E17678C(0, &qword_1EABD0948, 0x1E69E58C0);
  sub_18E1767CC();
  v4 = sub_18E1A76E0();

  v5 = sub_18E17414C(v4);

  *(v0 + 48) = v5;
  qword_1EABD08D0 = v0;
  return result;
}

uint64_t sub_18E17414C(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (sub_18E1A77F0())
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = MEMORY[0x1E69E7CD0];
    if (v2)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_18E161880(&qword_1EABD0958, &qword_18E1AB528);
  v3 = sub_18E1A7840();
  if (v2)
  {
LABEL_4:

    sub_18E1A77E0();
    sub_18E17678C(0, &qword_1EABD0948, 0x1E69E58C0);
    sub_18E1767CC();
    result = sub_18E1A76F0();
    v1 = v31;
    v5 = v32;
    v6 = v33;
    v7 = v34;
    v8 = v35;
    goto LABEL_11;
  }

LABEL_7:
  v9 = -1 << *(v1 + 32);
  v5 = v1 + 56;
  v6 = ~v9;
  v10 = -v9;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v8 = v11 & *(v1 + 56);

  v7 = 0;
LABEL_11:
  v12 = v3 + 56;
  if (v1 < 0)
  {
    goto LABEL_14;
  }

LABEL_12:
  if (v8)
  {
    v13 = v7;
LABEL_21:
    v16 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v17 = *(*(v1 + 48) + ((v13 << 9) | (8 * v16)));
    while (1)
    {
      sub_18E17678C(0, &qword_1EABD0948, 0x1E69E58C0);
      swift_dynamicCast();
      v18 = *(v3 + 40);
      result = sub_18E1A7810();
      v19 = -1 << *(v3 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        break;
      }

      v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_31:
      *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v27 = *(v3 + 48) + 40 * v22;
      *(v27 + 32) = v30;
      *v27 = v28;
      *(v27 + 16) = v29;
      ++*(v3 + 16);
      if ((v1 & 0x8000000000000000) == 0)
      {
        goto LABEL_12;
      }

LABEL_14:
      v14 = sub_18E1A7800();
      if (!v14)
      {
        goto LABEL_33;
      }

      *&v28 = v14;
      sub_18E17678C(0, &qword_1EABD0948, 0x1E69E58C0);
      swift_dynamicCast();
    }

    v23 = 0;
    v24 = (63 - v19) >> 6;
    while (++v21 != v24 || (v23 & 1) == 0)
    {
      v25 = v21 == v24;
      if (v21 == v24)
      {
        v21 = 0;
      }

      v23 |= v25;
      v26 = *(v12 + 8 * v21);
      if (v26 != -1)
      {
        v22 = __clz(__rbit64(~v26)) + (v21 << 6);
        goto LABEL_31;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = v7;
    while (1)
    {
      v13 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v13 >= ((v6 + 64) >> 6))
      {
LABEL_33:
        sub_18E176834();

        return v3;
      }

      v8 = *(v5 + 8 * v13);
      ++v15;
      if (v8)
      {
        v7 = v13;
        goto LABEL_21;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t *sub_18E1744C4()
{
  if (qword_1EABD0278 != -1)
  {
    sub_18E15D71C();
  }

  return &qword_1EABD08D0;
}

uint64_t static ExternalPartnerCredentialStorageXPCService.selectorClasses.getter()
{
  if (qword_1EABD0278 != -1)
  {
    sub_18E15D71C();
  }

  sub_18E15D8E8();
}

uint64_t static ExternalPartnerCredentialStorageXPCService.selectorClasses.setter(uint64_t a1)
{
  if (qword_1EABD0278 != -1)
  {
    sub_18E15D71C();
  }

  sub_18E15BC90();
  qword_1EABD08D0 = a1;
}

uint64_t static ExternalPartnerCredentialStorageXPCService.selectorClasses.modify()
{
  if (qword_1EABD0278 != -1)
  {
    sub_18E15D71C();
  }

  sub_18E15D968();
  return sub_18E15D874();
}

uint64_t sub_18E174628@<X0>(void *a1@<X8>)
{
  sub_18E1744C4();
  swift_beginAccess();
  *a1 = qword_1EABD08D0;
}

uint64_t sub_18E17467C(uint64_t *a1)
{
  v1 = *a1;

  sub_18E1744C4();
  swift_beginAccess();
  qword_1EABD08D0 = v1;
}

uint64_t sub_18E1746D8()
{
  v0 = sub_18E1A7360();
  sub_18E16BD84(v0, qword_1EABD08D8);
  v1 = sub_18E1592FC(v0, qword_1EABD08D8);
  if (qword_1ED8D9B48 != -1)
  {
    swift_once();
  }

  v2 = sub_18E1592FC(v0, qword_1ED8D9780);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_18E1747A0()
{
  if (qword_1EABD0280 != -1)
  {
    sub_18E1590FC();
  }

  v0 = sub_18E1A7360();

  return sub_18E1592FC(v0, qword_1EABD08D8);
}

uint64_t static ExternalPartnerCredentialStorageXPCService.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EABD0280 != -1)
  {
    sub_18E1590FC();
  }

  v2 = sub_18E1A7360();
  v3 = sub_18E1592FC(v2, qword_1EABD08D8);
  sub_18E15D8E8();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static ExternalPartnerCredentialStorageXPCService.logger.setter(uint64_t a1)
{
  if (qword_1EABD0280 != -1)
  {
    sub_18E1590FC();
  }

  v2 = sub_18E1A7360();
  v3 = sub_18E1592FC(v2, qword_1EABD08D8);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t static ExternalPartnerCredentialStorageXPCService.logger.modify()
{
  if (qword_1EABD0280 != -1)
  {
    sub_18E1590FC();
  }

  v0 = sub_18E1A7360();
  sub_18E1592FC(v0, qword_1EABD08D8);
  swift_beginAccess();
  return sub_18E15D874();
}

uint64_t sub_18E174A00@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_18E1747A0();
  swift_beginAccess();
  v3 = sub_18E1A7360();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t sub_18E174A7C(uint64_t a1)
{
  v2 = sub_18E1747A0();
  swift_beginAccess();
  v3 = sub_18E1A7360();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

uint64_t ExternalParterCredentialStorageError.hashValue.getter()
{
  sub_18E1A7C60();
  MEMORY[0x193ACB0A0](0);
  return sub_18E1A7CA0();
}

uint64_t sub_18E174C10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ExternalPartnerCredentialStorageXPCClient.Delegate();

  return MEMORY[0x1EEE2EE60](a1, v5, a3);
}

uint64_t ExternalPartnerCredentialStorageXPCClient.init()@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ExternalPartnerCredentialStorageXPCClient.Delegate();
  a1[1] = swift_allocObject();
  sub_18E176524(&qword_1EABCFCA0, type metadata accessor for ExternalPartnerCredentialStorageXPCClient.Delegate);
  v2 = sub_18E161880(&qword_1EABD08F0, &qword_18E1AB280);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();

  v5 = sub_18E1A7130();
  sub_18E161880(&qword_1EABD08F8, &unk_18E1AB288);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v5;
  *a1 = result;
  return result;
}

uint64_t sub_18E174D70(char *a1, uint64_t a2, uint64_t a3)
{
  v19[2] = a3;
  v19[1] = a2;
  v21[2] = *MEMORY[0x1E69E9840];
  v5 = sub_18E1A7240();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = *v3;
  v19[0] = v3[1];
  (*(v6 + 104))(v10, *MEMORY[0x1E69A0B38], v5);
  v13 = sub_18E1A7220();
  v14 = sub_18E1A7230();
  v15 = _os_activity_create(&dword_18E157000, "ExternalPartnerCredentialStorageXPCClient.readData()", v13, v14);
  swift_unknownObjectRelease();
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v15, &state);
  v16 = v19[3];
  sub_18E174F6C(v11, v12, v21);
  os_activity_scope_leave(&state);
  swift_unknownObjectRelease();
  if (v16)
  {
    result = (*(v6 + 8))(v10, v5);
  }

  else
  {
    (*(v6 + 8))(v10, v5);
    result = v21[0];
  }

  v18 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18E174F6C(char a1@<W0>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v7 = sub_18E1A6CA0();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();

  sub_18E1A6C90();
  LOBYTE(v17) = a1 & 1;
  sub_18E1766DC();
  v10 = sub_18E1A6C80();
  v12 = v11;

  if (!v3)
  {
    MEMORY[0x1EEE9AC00](v13, v14);
    os_unfair_lock_lock((a2 + 24));
    sub_18E176730((a2 + 16));
    os_unfair_lock_unlock((a2 + 24));
    sub_18E16BCA0(v10, v12);
    v15 = *&v17[OBJC_IVAR____TtC26GenerativeModelsFoundation23ReadDataResponseWrapper_readDataResponse];
    v16 = *&v17[OBJC_IVAR____TtC26GenerativeModelsFoundation23ReadDataResponseWrapper_readDataResponse + 8];
    sub_18E17067C(v15, v16);

    if (v16 >> 60 == 15)
    {
      *a3 = xmmword_18E1AA9A0;
    }

    else
    {
      *a3 = v15;
      *(a3 + 8) = v16;
    }
  }
}

uint64_t sub_18E175100(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for ReadDataResponseWrapper();
  return sub_18E1A7110();
}

uint64_t sub_18E17516C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;

  sub_18E17520C(a4, a5, sub_18E176754, v10, a1);
}

void sub_18E17520C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_18E1A6D40();
  v10[4] = a3;
  v10[5] = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_18E1752E0;
  v10[3] = &unk_1F01036C0;
  v9 = _Block_copy(v10);

  [a5 readDataWithRequestData:v8 with:v9];
  _Block_release(v9);
}

void sub_18E1752E0(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_18E1753BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, SEL *a9)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;

  sub_18E175768(a4, a5, a7, v16, a1, a8, a9);
}

uint64_t sub_18E17546C(char *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = *MEMORY[0x1E69E9840];
  v9 = sub_18E1A7240();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v35[0] = *v4;
  v16 = *MEMORY[0x1E69A0B38];
  v17 = *(v10 + 104);
  v36 = v18;
  v17(v14, v16);
  v19 = sub_18E1A7220();
  v20 = sub_18E1A7230();
  v21 = _os_activity_create(&dword_18E157000, "ExternalPartnerCredentialStorageXPCClient.deleteData()", v19, v20);
  swift_unknownObjectRelease();
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v21, &state);
  v22 = sub_18E1A6CA0();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();

  sub_18E1A6C90();
  LOBYTE(v38) = v15;
  v39 = a2;
  v40 = a3;
  v41 = a4;
  v42 = BYTE4(a4) & 1;
  sub_18E17656C();
  v25 = v35[1];
  v26 = sub_18E1A6C80();
  if (v25)
  {
  }

  else
  {
    v28 = v26;
    v29 = v27;

    MEMORY[0x1EEE9AC00](v30, v31);
    v35[-2] = v28;
    v35[-1] = v29;
    v32 = v35[0];
    os_unfair_lock_lock((v35[0] + 24));
    sub_18E1765C0((v32 + 16));
    os_unfair_lock_unlock((v32 + 24));
    sub_18E16BCA0(v28, v29);
    sub_18E16BCA0(v38, v39);
  }

  os_activity_scope_leave(&state);
  swift_unknownObjectRelease();
  result = (*(v10 + 8))(v14, v36);
  v34 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18E175768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, SEL *a7)
{
  v12 = sub_18E1A6D40();
  v14[4] = a3;
  v14[5] = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_18E173C64;
  v14[3] = a6;
  v13 = _Block_copy(v14);

  [a5 *a7];
  _Block_release(v13);
}

uint64_t ExternalPartnerCredentialStorageXPCClient.readData(accessGroup:key:auditID:)()
{
  v5 = sub_18E15A1F8();
  v6 = sub_18E159098(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  sub_18E15A808();
  if (sub_18E176860())
  {
    v10 = sub_18E15D068();
    v13 = sub_18E174D70(v10, v11, v12);
    if (!v1)
    {
      return v13;
    }
  }

  else
  {
    if (qword_1EABCFD70 != -1)
    {
      sub_18E159534();
    }

    v14 = sub_18E1A7360();
    v0 = sub_18E1592FC(v14, qword_1EABCFD78);
    v15 = sub_18E1A7340();
    v16 = sub_18E1A7720();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = sub_18E15BCEC();
      sub_18E176854(v17);
      sub_18E159F68(&dword_18E157000, v18, v19, "ExternalPartnerCredentialStorageXPCClient:readData: Your process must have true for the com.apple.generativeexperiences.ExternalPartnerCredentialStorage entitlement. Falling back on checking legacy direct access to keychain.");
      sub_18E15B7A0();
    }

    sub_18E159574();
    if (v2)
    {
      v22 = v21;
    }

    else
    {
      v22 = v20;
    }

    v23 = "com.apple.openai";
    if (v2)
    {
      v23 = "com.apple.openai.xcode";
    }

    v24 = sub_18E173534(v22, (v23 - 32) | 0x8000000000000000);

    if (v24)
    {
      sub_18E15986C();
      (*(v25 + 16))(v3 + v26, v0, v14);
      if ((v4 & 0x100000000) != 0)
      {
        v27 = 0;
        v28 = 0;
      }

      else
      {
        v27 = sub_18E1A7B70();
      }

      v34 = sub_18E15A028(v27, v28);
      v0 = KeychainStore.readData(accessGroup:key:)(v34, v35, v36);
      sub_18E17626C(v3);
    }

    else
    {
      v29 = sub_18E1A7340();
      v30 = sub_18E1A7720();
      if (sub_18E15AA3C(v30))
      {
        v31 = sub_18E15BCEC();
        sub_18E176854(v31);
        sub_18E15D484(&dword_18E157000, v32, v33, "ExternalPartnerCredentialStorageXPCClient:readData: Your process must have true for the com.apple.generativeexperiences.ExternalPartnerCredentialStorage entitlement. Process also does not have legacy direct access to keychain.");
        sub_18E15B7A0();
      }

      sub_18E176218();
      swift_allocError();
      swift_willThrow();
    }
  }

  return v0;
}

uint64_t ExternalPartnerCredentialStorageXPCClient.writeData(accessGroup:securityLevel:key:auditID:data:)(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, os_unfair_lock_s *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(&v73 + 1) = a7;
  v72 = a3;
  *&v73 = a6;
  v80 = *MEMORY[0x1E69E9840];
  v70 = type metadata accessor for KeychainStore();
  v12 = sub_18E159098(v70);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  sub_18E15A808();
  v71 = (v17 - v16);
  v18 = sub_18E1A7240();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18, v21);
  sub_18E15A808();
  v24 = v23 - v22;
  v25 = *a1;
  v26 = *a2;
  v27 = *v7;
  if (sub_18E173848())
  {
    v69 = v27;
    v28 = *MEMORY[0x1E69A0B38];
    v70 = v19;
    v71 = v18;
    (*(v19 + 104))(v24, v28, v18);
    v29 = sub_18E1A7220();
    v30 = sub_18E1A7230();
    v31 = _os_activity_create(&dword_18E157000, "ExternalPartnerCredentialStorageXPCClient.writeData()", v29, v30);
    swift_unknownObjectRelease();
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v31, &state);
    LOBYTE(v76[0]) = BYTE4(a5) & 1;
    LOBYTE(v77) = v25;
    BYTE1(v77) = v26;
    *(&v77 + 1) = v72;
    *&v78 = a4;
    DWORD2(v78) = a5;
    BYTE12(v78) = BYTE4(a5) & 1;
    v79 = v73;
    v32 = sub_18E1A6CA0();
    v33 = *(v32 + 48);
    v34 = *(v32 + 52);
    swift_allocObject();

    sub_18E170690(v73, *(&v73 + 1));
    sub_18E1A6C90();
    v76[0] = v77;
    v76[1] = v78;
    v76[2] = v79;
    sub_18E1762C8();
    v35 = sub_18E1A6C80();
    if (v74)
    {

      sub_18E1731B8(&v77);
      os_activity_scope_leave(&state);
      swift_unknownObjectRelease();
      result = (*(v70 + 8))(v24, v71);
    }

    else
    {
      v56 = v35;
      v57 = v36;

      MEMORY[0x1EEE9AC00](v58, v59);
      *&v67[-16] = v56;
      *&v67[-8] = v57;
      v60 = v69;
      os_unfair_lock_lock(v69 + 6);
      sub_18E17631C(&v60[4]);
      os_unfair_lock_unlock(v60 + 6);
      sub_18E1731B8(&v77);
      sub_18E16BCA0(v56, v57);
      sub_18E16BCA0(*&v76[0], *(&v76[0] + 1));
      os_activity_scope_leave(&state);
      swift_unknownObjectRelease();
      result = (*(v70 + 8))(v24, v71);
    }
  }

  else
  {
    v68 = v26;
    v69 = a4;
    v37 = *(&v73 + 1);
    if (qword_1EABCFD70 != -1)
    {
      sub_18E159534();
    }

    v38 = sub_18E1A7360();
    v39 = sub_18E1592FC(v38, qword_1EABCFD78);
    v40 = sub_18E1A7340();
    v41 = sub_18E1A7720();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = sub_18E15BCEC();
      *v42 = 0;
      _os_log_impl(&dword_18E157000, v40, v41, "ExternalPartnerCredentialStorageXPCClient:writeData: Your process must have true for the com.apple.generativeexperiences.ExternalPartnerCredentialStorage entitlement. Falling back on checking legacy direct access to keychain.", v42, 2u);
      MEMORY[0x193ACB8D0](v42, -1, -1);
    }

    sub_18E159574();
    if (v25)
    {
      v45 = v44;
    }

    else
    {
      v45 = v43;
    }

    v46 = "com.apple.openai";
    if (v25)
    {
      v46 = "com.apple.openai.xcode";
    }

    v47 = sub_18E173534(v45, (v46 - 32) | 0x8000000000000000);

    if (v47)
    {
      v48 = v71;
      (*(*(v38 - 8) + 16))(&v71[*(v70 + 20)], v39, v38);
      if ((a5 & 0x100000000) != 0)
      {
        v49 = 0;
        v50 = 0;
      }

      else
      {
        LODWORD(v77) = a5;
        v49 = sub_18E1A7B70();
      }

      v62 = v69;
      v64 = v72;
      v63 = v73;
      v65 = v68;
      *v71 = v49;
      *(v48 + 8) = v50;
      LOBYTE(v77) = v25;
      LOBYTE(v76[0]) = v65;
      KeychainStore.writeData(accessGroup:key:securityLevel:data:)(&v77, v64, v62, v76, v63, v37);
      result = sub_18E17626C(v48);
    }

    else
    {
      v51 = sub_18E1A7340();
      v52 = sub_18E1A7720();
      if (sub_18E15AA3C(v52))
      {
        v53 = sub_18E15BCEC();
        sub_18E176854(v53);
        sub_18E15D484(&dword_18E157000, v54, v55, "ExternalPartnerCredentialStorageXPCClient:writeData: Your process must have true for the com.apple.generativeexperiences.ExternalPartnerCredentialStorage entitlement. Process also does not have legacy direct access to keychain.");
        sub_18E15B7A0();
      }

      sub_18E176218();
      swift_allocError();
      result = swift_willThrow();
    }
  }

  v66 = *MEMORY[0x1E69E9840];
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ExternalPartnerCredentialStorageXPCClient.deleteData(accessGroup:key:auditID:)(GenerativeModelsFoundation::AccessGroup accessGroup, Swift::String key, Swift::UInt32_optional auditID)
{
  v6 = sub_18E15A1F8();
  v7 = sub_18E159098(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  sub_18E15A808();
  if (sub_18E176860())
  {
    v11 = sub_18E15D068();
    sub_18E17546C(v11, v12, v13, v14);
  }

  else
  {
    if (qword_1EABCFD70 != -1)
    {
      sub_18E159534();
    }

    v15 = sub_18E1A7360();
    v16 = sub_18E1592FC(v15, qword_1EABCFD78);
    v17 = sub_18E1A7340();
    v18 = sub_18E1A7720();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = sub_18E15BCEC();
      sub_18E176854(v19);
      sub_18E159F68(&dword_18E157000, v20, v21, "ExternalPartnerCredentialStorageXPCClient:deleteData: Your process must have true for the com.apple.generativeexperiences.ExternalPartnerCredentialStorage entitlement. Falling back on checking legacy direct access to keychain.");
      sub_18E15B7A0();
    }

    sub_18E159574();
    if (v3)
    {
      v24 = v23;
    }

    else
    {
      v24 = v22;
    }

    v25 = "com.apple.openai";
    if (v3)
    {
      v25 = "com.apple.openai.xcode";
    }

    v26 = sub_18E173534(v24, (v25 - 32) | 0x8000000000000000);

    if (v26)
    {
      sub_18E15986C();
      (*(v27 + 16))(v4 + v28, v16, v15);
      if ((v5 & 0x100000000) != 0)
      {
        v29 = 0;
        v30 = 0;
      }

      else
      {
        v29 = sub_18E1A7B70();
      }

      v36 = sub_18E15A028(v29, v30);
      KeychainStore.deleteData(accessGroup:key:)(v36, v37);
      sub_18E17626C(v4);
    }

    else
    {
      v31 = sub_18E1A7340();
      v32 = sub_18E1A7720();
      if (sub_18E15AA3C(v32))
      {
        v33 = sub_18E15BCEC();
        sub_18E176854(v33);
        sub_18E15D484(&dword_18E157000, v34, v35, "ExternalPartnerCredentialStorageXPCClient:deleteData: Your process must have true for the com.apple.generativeexperiences.ExternalPartnerCredentialStorage entitlement. Process also does not have legacy direct access to keychain.");
        sub_18E15B7A0();
      }

      sub_18E176218();
      swift_allocError();
      swift_willThrow();
    }
  }
}

unint64_t sub_18E176218()
{
  result = qword_1EABD0900;
  if (!qword_1EABD0900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0900);
  }

  return result;
}

uint64_t sub_18E17626C(uint64_t a1)
{
  v2 = type metadata accessor for KeychainStore();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_18E1762C8()
{
  result = qword_1EABD0908;
  if (!qword_1EABD0908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0908);
  }

  return result;
}

uint64_t sub_18E17631C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_18E17536C(a1);
}

unint64_t sub_18E17633C()
{
  result = qword_1EABD0910;
  if (!qword_1EABD0910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0910);
  }

  return result;
}

_BYTE *sub_18E1763A4(_BYTE *result, int a2, int a3)
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

uint64_t sub_18E176450(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_18E176490(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_18E176524(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_18E17656C()
{
  result = qword_1EABD0918;
  if (!qword_1EABD0918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0918);
  }

  return result;
}

uint64_t sub_18E1765C0(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_18E175718(a1);
}

uint64_t sub_18E176634(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_18E1766A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v7[0] = a1;
  v7[1] = a2;
  return v4(v7, a3);
}

unint64_t sub_18E1766DC()
{
  result = qword_1EABD0920;
  if (!qword_1EABD0920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0920);
  }

  return result;
}

uint64_t sub_18E176730(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_18E175100(a1);
}

uint64_t sub_18E176754(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_18E17678C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_18E1767CC()
{
  result = qword_1EABD0950;
  if (!qword_1EABD0950)
  {
    sub_18E17678C(255, &qword_1EABD0948, 0x1E69E58C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0950);
  }

  return result;
}

uint64_t sub_18E176860()
{
  v4 = *v0;
  *(v2 - 112) = *v1;

  return sub_18E173848();
}

uint64_t KeychainStore.init(auditID:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(type metadata accessor for KeychainStore() + 20);
  if (qword_1EABCFD70 != -1)
  {
    swift_once();
  }

  v5 = sub_18E1A7360();
  v6 = sub_18E1592FC(v5, qword_1EABCFD78);
  (*(*(v5 - 8) + 16))(a2 + v4, v6, v5);
  result = 0;
  v8 = 0;
  if ((a1 & 0x100000000) == 0)
  {
    result = sub_18E1A7B70();
  }

  *a2 = result;
  a2[1] = v8;
  return result;
}

uint64_t type metadata accessor for KeychainStore()
{
  result = qword_1EABCFD40;
  if (!qword_1EABCFD40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t KeychainStore.readData(accessGroup:key:)(_BYTE *a1, uint64_t a2, unint64_t a3)
{
  v64 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  LOBYTE(v62) = *a1;
  sub_18E1776E4(&v62, a2, a3);
  if (!v4)
  {
    v8 = *MEMORY[0x1E697B260];
    v9 = sub_18E1A7530();
    v11 = v10;
    v12 = *MEMORY[0x1E697B270];
    type metadata accessor for CFString(0);
    *(&v63 + 1) = v13;
    *&v62 = v12;
    sub_18E177BE0(&v62, result);
    v14 = v12;
    swift_isUniquelyReferenced_nonNull_native();
    sub_18E15AB84();
    sub_18E177BF0(v15, v9, v11);

    v16 = *MEMORY[0x1E697B318];
    v17 = sub_18E1A7530();
    v19 = v18;
    v20 = *MEMORY[0x1E695E4D0];
    if (*MEMORY[0x1E695E4D0])
    {
      type metadata accessor for CFBoolean(0);
      *(&v63 + 1) = v21;
      *&v62 = v20;
      sub_18E177BE0(&v62, result);
      v22 = v20;
      swift_isUniquelyReferenced_nonNull_native();
      sub_18E15AB84();
      sub_18E177BF0(v23, v17, v19);
    }

    else
    {
      v62 = 0u;
      v63 = 0u;
      sub_18E178150(&v62, &qword_1EABD0960, &qword_18E1AB550);
      v24 = sub_18E159728(v17, v19);
      if (v25)
      {
        v26 = v24;
        swift_isUniquelyReferenced_nonNull_native();
        v27 = v59[3];
        sub_18E161880(&qword_1EABD0970, &unk_18E1AB558);
        sub_18E1A7940();
        v28 = *(v59[6] + 16 * v26 + 8);

        sub_18E177BE0((v59[7] + 32 * v26), result);
        sub_18E1A7960();
      }

      else
      {
        *result = 0u;
        v61 = 0u;
      }

      sub_18E178150(result, &qword_1EABD0960, &qword_18E1AB550);
    }

    result[0] = 0;
    v29 = sub_18E1A7470();

    v30 = SecItemCopyMatching(v29, result);

    if (v30)
    {
      if (v30 == -25300)
      {
        v31 = *(type metadata accessor for KeychainStore() + 20);

        v32 = sub_18E1A7340();
        v33 = sub_18E1A7700();

        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *&v62 = swift_slowAlloc();
          *v34 = 136315394;
          *(v34 + 4) = sub_18E1694A4(a2, a3, &v62);
          *(v34 + 12) = 2080;
          sub_18E159574();
          if (v7)
          {
            v37 = v36;
          }

          else
          {
            v37 = v35;
          }

          if (v7)
          {
            v38 = "com.apple.openai";
          }

          else
          {
            v38 = "availabilityService";
          }

          v39 = sub_18E1694A4(v37, v38 | 0x8000000000000000, &v62);

          *(v34 + 14) = v39;
          _os_log_impl(&dword_18E157000, v32, v33, "nil result for key: %s in accessGroup %s", v34, 0x16u);
          swift_arrayDestroy();
          sub_18E1590E4();
          sub_18E1590E4();
        }

        v3 = 0;
        goto LABEL_22;
      }

      v40 = v3 + *(type metadata accessor for KeychainStore() + 20);
      v41 = sub_18E1A7340();
      v42 = sub_18E1A7710();
      if (sub_18E15AA3C(v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 67109120;
        *(v43 + 4) = v30;
        sub_18E15A2B4();
        _os_log_impl(v44, v45, v46, v47, v43, 8u);
        sub_18E1590E4();
      }

      v3 = v30;
      sub_18E177D28();
      sub_18E15B7BC();
      *v48 = v30;
      *(v48 + 8) = 0;
    }

    else
    {
      if (result[0])
      {
        swift_unknownObjectRetain();
        if (swift_dynamicCast())
        {
          v3 = v62;
LABEL_22:
          swift_unknownObjectRelease();
          goto LABEL_30;
        }
      }

      v3 += *(type metadata accessor for KeychainStore() + 20);
      v49 = sub_18E1A7340();
      v50 = sub_18E1A7710();
      if (sub_18E15AA3C(v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        sub_18E15A2B4();
        _os_log_impl(v52, v53, v54, v55, v51, 2u);
        sub_18E1590E4();
      }

      sub_18E177D28();
      sub_18E15B7BC();
      *v56 = 0;
      *(v56 + 8) = 1;
    }

    swift_willThrow();
    swift_unknownObjectRelease();
  }

LABEL_30:
  v57 = *MEMORY[0x1E69E9840];
  return v3;
}

void KeychainStore.writeData(accessGroup:key:securityLevel:data:)(unsigned __int8 *a1, uint64_t a2, unint64_t a3, char *a4, uint64_t a5, unint64_t a6)
{
  v10 = *a1;
  v76 = *a4;
  v11 = *(type metadata accessor for KeychainStore() + 20);

  v87 = v6;
  v12 = sub_18E1A7340();
  v13 = sub_18E1A7700();

  log = v12;
  if (os_log_type_enabled(v12, v13))
  {
    v78 = v10;
    v14 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    *&v90 = v74;
    *v14 = 136315394;
    sub_18E159574();
    if (v78)
    {
      v17 = v16;
    }

    else
    {
      v17 = v15;
    }

    v18 = v11;
    if (v78)
    {
      v19 = "com.apple.openai";
    }

    else
    {
      v19 = "availabilityService";
    }

    v20 = v13;
    v21 = a6;
    v22 = sub_18E1694A4(v17, v19 | 0x8000000000000000, &v90);

    *(v14 + 4) = v22;
    a6 = v21;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_18E1694A4(a2, a3, &v90);
    _os_log_impl(&dword_18E157000, v12, v20, "Before writing data, deleting existing values for %s.%s", v14, 0x16u);
    swift_arrayDestroy();
    sub_18E1590E4();
    v10 = v78;
    sub_18E1590E4();
  }

  else
  {
    v18 = v11;
  }

  sub_18E15D9D0();
  KeychainStore.deleteData(accessGroup:key:)(v23, v24);
  if (!v25)
  {

    sub_18E170690(a5, a6);
    v79 = v18;
    v26 = sub_18E1A7340();
    v27 = sub_18E1A7700();

    sub_18E16BCA0(a5, a6);
    v72 = a6;
    if (os_log_type_enabled(v26, v27))
    {
      v85 = a3;
      v28 = swift_slowAlloc();
      *&v90 = swift_slowAlloc();
      *v28 = 136315650;
      sub_18E159574();
      if (v10)
      {
        v31 = v30;
      }

      else
      {
        v31 = v29;
      }

      log = a2;
      if (v10)
      {
        v32 = "com.apple.openai";
      }

      else
      {
        v32 = "availabilityService";
      }

      v33 = sub_18E1694A4(v31, v32 | 0x8000000000000000, &v90);

      *(v28 + 4) = v33;
      *(v28 + 12) = 2080;
      *(v28 + 14) = sub_18E1694A4(log, v85, &v90);
      *(v28 + 22) = 2080;
      v34 = sub_18E1A6D20();
      v36 = sub_18E1694A4(v34, v35, &v90);

      *(v28 + 24) = v36;
      _os_log_impl(&dword_18E157000, v26, v27, "Writing data to %s.%s: %s", v28, 0x20u);
      swift_arrayDestroy();
      sub_18E1590E4();
      sub_18E1590E4();
    }

    else
    {
    }

    sub_18E15D9D0();
    sub_18E1776E4(v37, v38, v39);
    v40 = a5;
    v41 = *MEMORY[0x1E697ABD8];
    sub_18E1A7530();
    v42 = **(&unk_1E725FC28 + v76);
    type metadata accessor for CFString(0);
    v91 = v43;
    *&v90 = v42;
    sub_18E177BE0(&v90, v89);
    v44 = v42;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_18E15D098(isUniquelyReferenced_nonNull_native, v46, v47, v48, v49, v50, v51, v52, v72, v74, v76, v79, a5, log, v85, v87, v89[0]);

    v53 = *MEMORY[0x1E697B3C0];
    sub_18E1A7530();
    v91 = MEMORY[0x1E6969080];
    *&v90 = v40;
    *(&v90 + 1) = v73;
    sub_18E177BE0(&v90, v89);
    sub_18E170690(v40, v73);
    v54 = swift_isUniquelyReferenced_nonNull_native();
    sub_18E15D098(v54, v55, v56, v57, v58, v59, v60, v61, v73, v75, v77, v80, v82, loga, v86, v88, v89[0]);

    v62 = sub_18E1A7470();

    v63 = SecItemAdd(v62, 0);

    if (v63)
    {
      v64 = sub_18E1A7340();
      v65 = sub_18E1A7710();
      if (sub_18E15AA3C(v65))
      {
        v66 = swift_slowAlloc();
        *v66 = 67109120;
        *(v66 + 4) = v63;
        sub_18E15A2B4();
        _os_log_impl(v67, v68, v69, v70, v66, 8u);
        sub_18E1590E4();
      }

      sub_18E177D28();
      sub_18E15B7BC();
      *v71 = v63;
      *(v71 + 8) = 0;
      swift_willThrow();
    }
  }
}

uint64_t sub_18E1776E4(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = MEMORY[0x1E69E6158];
  v7 = sub_18E1A7490();
  v8 = *MEMORY[0x1E697AFF8];
  v9 = sub_18E1A7530();
  v11 = v10;
  v12 = *MEMORY[0x1E697B008];
  type metadata accessor for CFString(0);
  *(&v45 + 1) = v13;
  *&v44 = v12;
  sub_18E177BE0(&v44, v43);
  v14 = v12;
  swift_isUniquelyReferenced_nonNull_native();
  v46 = v7;
  sub_18E177BF0(v43, v9, v11);

  v15 = v46;
  v16 = *MEMORY[0x1E697AE88];
  v17 = sub_18E1A7530();
  v19 = v18;
  if (a3)
  {
    *(&v45 + 1) = v6;
    *&v44 = a2;
    *(&v44 + 1) = a3;
    sub_18E177BE0(&v44, v43);

    swift_isUniquelyReferenced_nonNull_native();
    v46 = v15;
    sub_18E177BF0(v43, v17, v19);

    v15 = v46;
  }

  else
  {
    v44 = 0u;
    v45 = 0u;
    sub_18E178150(&v44, &qword_1EABD0960, &qword_18E1AB550);
    v20 = sub_18E159728(v17, v19);
    if (v21)
    {
      v22 = v20;
      swift_isUniquelyReferenced_nonNull_native();
      v46 = v15;
      v23 = *(v15 + 24);
      sub_18E161880(&qword_1EABD0970, &unk_18E1AB558);
      sub_18E1A7940();
      v15 = v46;
      v24 = *(*(v46 + 48) + 16 * v22 + 8);

      sub_18E177BE0((*(v15 + 56) + 32 * v22), v43);
      sub_18E1A7960();
    }

    else
    {
      memset(v43, 0, sizeof(v43));
    }

    sub_18E178150(v43, &qword_1EABD0960, &qword_18E1AB550);
  }

  v25 = *MEMORY[0x1E697ABD0];
  v26 = sub_18E1A7530();
  v28 = v27;
  if (v5)
  {
    v29 = 0xD000000000000016;
  }

  else
  {
    v29 = 0xD000000000000010;
  }

  if (v5)
  {
    v30 = "com.apple.openai";
  }

  else
  {
    v30 = "availabilityService";
  }

  *(&v45 + 1) = v6;
  v31 = v30 | 0x8000000000000000;
  *&v44 = v29;
  *(&v44 + 1) = v30 | 0x8000000000000000;
  sub_18E177BE0(&v44, v43);
  swift_isUniquelyReferenced_nonNull_native();
  v46 = v15;
  sub_18E177BF0(v43, v26, v28);

  v32 = v46;
  v33 = *MEMORY[0x1E697AC30];
  v34 = sub_18E1A7530();
  v36 = v35;
  *(&v45 + 1) = v6;
  *&v44 = v29;
  *(&v44 + 1) = v31;
  sub_18E177BE0(&v44, v43);
  swift_isUniquelyReferenced_nonNull_native();
  v46 = v32;
  sub_18E177BF0(v43, v34, v36);

  v37 = v46;
  v38 = *MEMORY[0x1E697B390];
  v39 = sub_18E1A7530();
  v41 = v40;
  *(&v45 + 1) = MEMORY[0x1E69E6370];
  LOBYTE(v44) = 1;
  sub_18E177BE0(&v44, v43);
  swift_isUniquelyReferenced_nonNull_native();
  v46 = v37;
  sub_18E177BF0(v43, v39, v41);

  return v46;
}

unint64_t sub_18E177A94(unsigned int a1)
{
  v3 = MEMORY[0x193ACB070](*(v1 + 40), a1, 4);

  return sub_18E177B20(a1, v3);
}

unint64_t sub_18E177ADC(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_18E1A7C50();

  return sub_18E177B80(a1, v4);
}

unint64_t sub_18E177B20(int a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_18E177B80(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

_OWORD *sub_18E177BE0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

_OWORD *sub_18E177BF0(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_18E159728(a2, a3);
  sub_18E15911C(v9, v10);
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v11;
  v15 = v12;
  sub_18E161880(&qword_1EABD0970, &unk_18E1AB558);
  if ((sub_18E1A7940() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = *v4;
  v17 = sub_18E159728(a2, a3);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_13:
    result = sub_18E1A7BB0();
    __break(1u);
    return result;
  }

  v14 = v17;
LABEL_5:
  if (v15)
  {
    v19 = (*(*v4 + 56) + 32 * v14);
    sub_18E158EC4(v19);

    return sub_18E177BE0(a1, v19);
  }

  else
  {
    sub_18E15A84C();
    sub_18E17808C(v21, v22, v23, a1, v24);
  }
}

unint64_t sub_18E177D28()
{
  result = qword_1EABD0968;
  if (!qword_1EABD0968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0968);
  }

  return result;
}

void sub_18E177DA4()
{
  sub_18E177E28();
  if (v0 <= 0x3F)
  {
    sub_18E1A7360();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_18E177E28()
{
  if (!qword_1EABCFC88)
  {
    v0 = sub_18E1A77A0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EABCFC88);
    }
  }
}

uint64_t initializeBufferWithCopyOfBuffer for ExternalPartnerCredentialStorageError(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ExternalPartnerCredentialStorageError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ExternalPartnerCredentialStorageError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_18E177EDC(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18E177EF8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

unint64_t sub_18E177F28(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_18E15DD7C(a2, &qword_1EABD0980, &qword_18E1ABF00);
  sub_18E15911C(v7, v8);
  if (v11)
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = v9;
  v13 = v10;
  sub_18E161880(&qword_1EABD0978, &unk_18E1AB5F0);
  if ((sub_18E1A7940() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = *v3;
  v15 = sub_18E15DD7C(a2, &qword_1EABD0980, &qword_18E1ABF00);
  if ((v13 & 1) != (v16 & 1))
  {
LABEL_11:
    sub_18E161880(&qword_1EABD0980, &qword_18E1ABF00);
    result = sub_18E1A7BB0();
    __break(1u);
    return result;
  }

  v12 = v15;
LABEL_5:
  v17 = *v3;
  if (v13)
  {
    v18 = v17[7];
    v19 = *(v18 + 8 * v12);
    *(v18 + 8 * v12) = a1;
  }

  else
  {
    sub_18E15DF6C(a2, v21, &qword_1EABD0980, &qword_18E1ABF00);
    return sub_18E1780F8(v12, v21, a1, v17);
  }
}

_OWORD *sub_18E17808C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_18E177BE0(a4, (a5[7] + 32 * a1));
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

unint64_t sub_18E1780F8(unint64_t result, _OWORD *a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = (a4[6] + 48 * result);
  v5 = a2[1];
  *v4 = *a2;
  v4[1] = v5;
  v4[2] = a2[2];
  *(a4[7] + 8 * result) = a3;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_18E178150(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_18E161880(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

GenerativeModelsFoundation::SecurityLevel_optional __swiftcall SecurityLevel.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_18E1A79E0();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t SecurityLevel.rawValue.getter()
{
  result = 0xD000000000000024;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000032;
      break;
    case 2:
      result = 0xD000000000000020;
      break;
    case 3:
      result = 0xD00000000000002ELL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_18E1782B0@<X0>(unint64_t *a1@<X8>)
{
  result = SecurityLevel.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_18E1782DC()
{
  result = qword_1EABD0990;
  if (!qword_1EABD0990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0990);
  }

  return result;
}

unint64_t sub_18E1783FC()
{
  result = qword_1EABD0998;
  if (!qword_1EABD0998)
  {
    sub_18E169A64(&qword_1EABD09A0, &qword_18E1AB700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0998);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SecurityLevel(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SecurityLevel(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_18E1785D4()
{
  result = qword_1EABD09A8;
  if (!qword_1EABD09A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD09A8);
  }

  return result;
}

uint64_t sub_18E17863C()
{
  sub_18E158FCC();
  if (qword_1ED8DA2C8 != -1)
  {
    sub_18E15D0C0();
  }

  v1 = sub_18E1A7360();
  sub_18E1592FC(v1, qword_1ED8DA2D0);
  v2 = sub_18E1A7340();
  v3 = sub_18E1A7730();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    sub_18E15A2C0(&dword_18E157000, v5, v6, "GenerativeModelOverrides no longer supported.");
    MEMORY[0x193ACB8D0](v4, -1, -1);
  }

  v7 = *(v0 + 16);

  v8 = sub_18E161880(&qword_1EABD09B0, &qword_18E1AB788);
  sub_18E15D73C(v8);
  sub_18E15A7EC();

  return v9();
}

uint64_t sub_18E178758()
{
  sub_18E158FCC();
  if (qword_1ED8DA2C8 != -1)
  {
    sub_18E15D0C0();
  }

  v1 = sub_18E1A7360();
  sub_18E1592FC(v1, qword_1ED8DA2D0);
  v2 = sub_18E1A7340();
  v3 = sub_18E1A7730();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    sub_18E15A2C0(&dword_18E157000, v5, v6, "GenerativeModelOverrides no longer supported.");
    MEMORY[0x193ACB8D0](v4, -1, -1);
  }

  v7 = *(v0 + 16);

  v8 = sub_18E161880(&qword_1EABD09B8, &qword_18E1AB798);
  sub_18E15D73C(v8);
  sub_18E15A7EC();

  return v9();
}

uint64_t static _GenerativeModelOverrideHelpers._generativeFunctionOverridesCompletionPrompt(_:)()
{
  sub_18E15A288();
  v0[2] = v1;
  v2 = *(*(sub_18E161880(&qword_1EABD09C0, &qword_18E1AB7A8) - 8) + 64) + 15;
  v3 = swift_task_alloc();
  v0[3] = v3;
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_18E178930;

  return static _GenerativeModelOverrideHelpers._generativeFunctionOverridesWithMetadataCompletionPrompt(_:)(v3);
}

uint64_t sub_18E178930()
{
  sub_18E15A288();
  v2 = *v1;
  sub_18E15A7FC();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  sub_18E15A7FC();
  *v8 = v7;
  *(v9 + 40) = v0;

  if (v0)
  {
    v10 = sub_18E178B48;
  }

  else
  {
    v10 = sub_18E178A38;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_18E178A38()
{
  sub_18E158FCC();
  v3 = *(v2 + 24);
  v4 = sub_18E161880(&qword_1EABD09B0, &qword_18E1AB788);
  sub_18E15A048(v4);
  if (v5)
  {
    sub_18E16D540(v3, &qword_1EABD09C0, &qword_18E1AB7A8);
    v6 = sub_18E1A70A0();
    sub_18E15D73C(v6);
  }

  else
  {
    v7 = *(v1 + 48);
    v8 = sub_18E1A70A0();
    sub_18E159098(v8);
    (*(v9 + 32))(v0, v3, v8);
    v10 = sub_18E15B7D4();
    sub_18E159098(v10);
    (*(v11 + 8))(v3 + v7);
  }

  v12 = *(v2 + 24);

  sub_18E15A7EC();

  return v13();
}

uint64_t sub_18E178B48()
{
  sub_18E15A288();
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t static _GenerativeModelOverrideHelpers._generativeFunctionOverridesChatMessagesPrompt(_:)()
{
  sub_18E15A288();
  v0[2] = v1;
  v2 = *(*(sub_18E161880(&qword_1EABD09C8, &qword_18E1AB7B8) - 8) + 64) + 15;
  v3 = swift_task_alloc();
  v0[3] = v3;
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_18E178C78;

  return static _GenerativeModelOverrideHelpers._generativeFunctionOverridesWithMetadataChatMessagesPrompt(_:)(v3);
}

uint64_t sub_18E178C78()
{
  sub_18E15A288();
  v2 = *v1;
  sub_18E15A7FC();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  sub_18E15A7FC();
  *v8 = v7;
  *(v9 + 40) = v0;

  if (v0)
  {
    v10 = sub_18E178F94;
  }

  else
  {
    v10 = sub_18E178D80;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_18E178D80()
{
  sub_18E158FCC();
  v3 = *(v2 + 24);
  v4 = sub_18E161880(&qword_1EABD09B8, &qword_18E1AB798);
  sub_18E15A048(v4);
  if (v5)
  {
    sub_18E16D540(v3, &qword_1EABD09C8, &qword_18E1AB7B8);
    v6 = sub_18E1A70B0();
    sub_18E15D73C(v6);
  }

  else
  {
    v7 = *(v1 + 48);
    v8 = sub_18E1A70B0();
    sub_18E159098(v8);
    (*(v9 + 32))(v0, v3, v8);
    v10 = sub_18E15B7D4();
    sub_18E159098(v10);
    (*(v11 + 8))(v3 + v7);
  }

  v12 = *(v2 + 24);

  sub_18E15A7EC();

  return v13();
}

_BYTE *storeEnumTagSinglePayload for _GenerativeModelOverrideHelpers(_BYTE *result, int a2, int a3)
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

uint64_t static _OverrideConfigurationHelper.renderedPromptSanitizer(_:)@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(a2, __src, 0x88uLL);
  return sub_18E178FF8(__dst, &v5);
}

uint64_t static _OverrideConfigurationHelper.responseSanitizer(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  sub_18E159D24(v3);
}

uint64_t static _OverrideConfigurationHelper.renderedPromptSanitizer(_:)@<X0>(void *__src@<X0>, uint64_t a2@<X8>)
{
  v2 = __src;
  memcpy(__dst, __src, 0x89uLL);
  memcpy(v13, v2, 0x89uLL);
  sub_18E1791DC(v13);
  nullsub_1(v13);
  memcpy(v10, __dst, 0x89uLL);
  v4 = nullsub_1(v10);
  v6 = *v4;
  v7 = *(v4 + 120);
  LOBYTE(v2) = *(v4 + 16);
  memcpy(__srca, (v4 + 24), sizeof(__srca));
  v9 = v2;
  memcpy(&v8[7], __srca, 0x60uLL);
  *a2 = v6;
  *(a2 + 16) = v9;
  memcpy((a2 + 17), v8, 0x67uLL);
  *(a2 + 120) = v7;
  return sub_18E1791E4(__dst, v10);
}

uint64_t sub_18E1791E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_18E161880(&qword_1EABD09D0, &unk_18E1AB800);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static _OverrideConfigurationHelper.responseSanitizer(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4 & 1;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  return sub_18E179280(v3);
}

uint64_t sub_18E179280(uint64_t a1)
{
  sub_18E159D24(a1);
}

_BYTE *storeEnumTagSinglePayload for _OverrideConfigurationHelper(_BYTE *result, int a2, int a3)
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

uint64_t OverrideHint.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6);
  return (*(*(*(a1 + 16) - 8) + 32))(a2, v6);
}

uint64_t sub_18E17947C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_18E1794E0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_20;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_20;
      }

      goto LABEL_12;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_20;
      }

      goto LABEL_12;
    }

    if (v8 < 2)
    {
LABEL_20:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_20;
  }

LABEL_12:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    switch(v4)
    {
      case 2:
        LODWORD(v4) = *a1;
        break;
      case 3:
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v4) = *a1;
        break;
      default:
        LODWORD(v4) = *a1;
        break;
    }
  }

  return (v4 | v9) + 255;
}

void sub_18E1795F8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_35:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_24;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_23;
      case 3:
        goto LABEL_35;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_24;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

uint64_t FailureTrackingClientProvider.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t sub_18E179800()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18E15DC38;

  return FailureTrackingClientProvider.record(failure:)();
}

uint64_t dispatch thunk of FailureTrackingClientProviding.record(failure:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_18E15DC38;

  return v11(a1, a2, a3);
}

uint64_t FailureTracking.Failure.Severity.hashValue.getter()
{
  v1 = *v0;
  sub_18E1A7C60();
  MEMORY[0x193ACB0A0](v1);
  return sub_18E1A7CA0();
}

uint64_t FailureTracking.Failure.useCaseIdentifier.getter()
{
  sub_18E15D6F0();
  v2 = sub_18E1A6F70();
  v3 = sub_18E159098(v2);
  v5 = *(v4 + 16);

  return v5(v0, v1, v3);
}

uint64_t FailureTracking.Failure.userRequestIdentifier.getter()
{
  sub_18E15D6F0();
  v2 = *(type metadata accessor for FailureTracking.Failure() + 20);
  v3 = sub_18E1A6D90();
  v4 = sub_18E159098(v3);
  v6 = *(v5 + 16);

  return v6(v0, v1 + v2, v4);
}

uint64_t type metadata accessor for FailureTracking.Failure()
{
  result = qword_1EABCFD30;
  if (!qword_1EABCFD30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FailureTracking.Failure.severity.getter()
{
  sub_18E15D6F0();
  result = type metadata accessor for FailureTracking.Failure();
  *v0 = *(v1 + *(result + 28));
  return result;
}

void FailureTracking.Failure.init(useCaseIdentifier:)(uint64_t a1)
{
  sub_18E15D6F0();
  v3 = sub_18E1A6F70();
  v4 = sub_18E159050(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4, v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v6 + 16);
  v12(v11, a1, v3);
  v13 = getuid();
  v12(v1, v11, v3);
  v14 = type metadata accessor for FailureTracking.Failure();
  v15 = &v1[*(v14 + 20)];
  sub_18E1A6D80();
  v16 = *(v6 + 8);
  v16(a1, v3);
  v16(v11, v3);
  *&v1[*(v14 + 24)] = v13;
  sub_18E15AA58();
}

uint64_t FailureTracking.Failure.init(useCaseIdentifier:onBehalfOfUserIdentifier:severity:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = sub_18E1A6F70();
  sub_18E159050(v8);
  v10 = v9;
  (*(v11 + 16))(a4, a1, v8);
  v12 = type metadata accessor for FailureTracking.Failure();
  v13 = a4 + v12[5];
  sub_18E1A6D80();
  result = (*(v10 + 8))(a1, v8);
  *(a4 + v12[6]) = a2;
  *(a4 + v12[7]) = v7;
  return result;
}

void FailureTracking.Failure.init(useCaseIdentifier:onBehalfOfUserIdentifier:)(uint64_t a1, int a2)
{
  sub_18E15D6F0();
  v5 = sub_18E1A6F70();
  v6 = sub_18E159050(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6, v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v8 + 16);
  v14(v13, a1, v5);
  v14(v2, v13, v5);
  v15 = type metadata accessor for FailureTracking.Failure();
  v16 = &v2[*(v15 + 20)];
  sub_18E1A6D80();
  v17 = *(v8 + 8);
  v17(a1, v5);
  v17(v13, v5);
  *&v2[*(v15 + 24)] = a2;
  sub_18E15AA58();
}

uint64_t FailureTracking.Failure.init(useCaseIdentifier:userRequestIdentifier:onBehalfOfUserIdentifier:severity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a4;
  v10 = sub_18E1A6F70();
  sub_18E159098(v10);
  (*(v11 + 32))(a5, a1);
  v12 = type metadata accessor for FailureTracking.Failure();
  v13 = v12[5];
  v14 = sub_18E1A6D90();
  sub_18E159098(v14);
  result = (*(v15 + 32))(a5 + v13, a2);
  *(a5 + v12[6]) = a3;
  *(a5 + v12[7]) = v9;
  return result;
}

unint64_t sub_18E17A030()
{
  result = qword_1EABD09D8;
  if (!qword_1EABD09D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD09D8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FailureTracking(_BYTE *result, int a2, int a3)
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

uint64_t sub_18E17A158()
{
  result = sub_18E1A6F70();
  if (v1 <= 0x3F)
  {
    result = sub_18E1A6D90();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FailureTracking.Failure.Severity(_BYTE *result, unsigned int a2, unsigned int a3)
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

id FailureTracking.SecureStorage.init(user:)@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v4 = objc_allocWithZone(type metadata accessor for NSUserDefaults.Secure());
  result = NSUserDefaults.Secure.init(domain:user:)(0xD000000000000014, 0x800000018E1B2670, a1);
  if (result)
  {
    *a2 = result;
    *(a2 + 8) = a1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t FailureTracking.FailureRecord.useCaseIdentifier.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 48));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_18E17A390(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
  if (v4 || (sub_18E1A7B90() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1919251317 && a2 == 0xE400000000000000;
    if (v6 || (sub_18E1A7B90() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x800000018E1B2690 == a2;
      if (v7 || (sub_18E1A7B90() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000015 && 0x800000018E1B26B0 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_18E1A7B90();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_18E17A504(char a1)
{
  result = 0x6D617473656D6974;
  switch(a1)
  {
    case 1:
      result = 1919251317;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

BOOL sub_18E17A590(char *a1, char *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  return sub_18E15F1FC(*a1, *a2);
}

uint64_t sub_18E17A5A8(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_18E16411C(*v1);
}

uint64_t sub_18E17A5B8(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  return sub_18E15AF24(a1, *v2);
}

uint64_t sub_18E17A5C8(uint64_t a1, void *a2)
{
  sub_18E1A7C60();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  sub_18E15AF24(v8, *v2);
  return sub_18E1A7CA0();
}

unint64_t sub_18E17A614(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_18E17A504(*v1);
}

uint64_t sub_18E17A624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = sub_18E17A390(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_18E17A658(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = *v1;
  return sub_18E158FC0();
}

uint64_t sub_18E17A680@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  result = sub_18E17A4FC();
  *a2 = result;
  return result;
}

uint64_t sub_18E17A6B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_18E17A708(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FailureTracking.FailureRecord.encode(to:)(void *a1, void *a2)
{
  v24[0] = a2;
  v3 = a2[3];
  v24[2] = a2[2];
  v4 = a2[4];
  _s13FailureRecordV10CodingKeysOMa();
  sub_18E159584();
  swift_getWitnessTable();
  v5 = sub_18E1A7B50();
  sub_18E159050(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v24 - v12;
  v14 = a1[4];
  sub_18E158E00(a1, a1[3]);
  v15 = v24[1];
  sub_18E1A7CD0();
  v28 = 0;
  v16 = v24[3];
  sub_18E1A7B30();
  if (!v16)
  {
    v17 = v24[0];
    v18 = *(v15 + *(v24[0] + 44));
    v27 = 1;
    sub_18E1A7B40();
    v19 = (v15 + *(v17 + 48));
    v20 = *v19;
    v21 = v19[1];
    v26 = 2;
    sub_18E1A7B00();
    v22 = *(v17 + 52);
    v25 = 3;
    sub_18E1A6D90();
    sub_18E17AEB4(&qword_1EABD09E8);
    sub_18E1A7AE0();
  }

  return (*(v7 + 8))(v13, v5);
}

uint64_t FailureTracking.FailureRecord.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v45 = a4;
  v7 = *(*(sub_18E161880(&qword_1EABD09E0, &qword_18E1AB9D8) - 8) + 64);
  sub_18E159074();
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v46 = &v43 - v11;
  v48 = *(a2 - 8);
  v12 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v51 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s13FailureRecordV10CodingKeysOMa();
  sub_18E159584();
  swift_getWitnessTable();
  v53 = sub_18E1A7AC0();
  sub_18E159050(v53);
  v47 = v15;
  v17 = *(v16 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v43 - v20;
  v49 = a3;
  v50 = a2;
  v22 = type metadata accessor for FailureTracking.FailureRecord();
  sub_18E159050(v22);
  v44 = v23;
  v25 = *(v24 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v43 - v28;
  v30 = a1[4];
  sub_18E158E00(a1, a1[3]);
  v52 = v21;
  v31 = v54;
  sub_18E1A7CC0();
  if (v31)
  {
    return sub_18E158EC4(a1);
  }

  v32 = v48;
  v54 = a1;
  v58 = 0;
  v33 = v50;
  sub_18E1A7A80();
  (*(v32 + 32))(v29, v51, v33);
  v57 = 1;
  *&v29[v22[11]] = sub_18E1A7A90();
  v56 = 2;
  v34 = sub_18E1A7A50();
  v35 = &v29[v22[12]];
  *v35 = v34;
  v35[1] = v36;
  sub_18E1A6D90();
  v55 = 3;
  sub_18E17AEB4(qword_1EABD09F0);
  v37 = v29;
  v38 = v46;
  sub_18E1A7A30();
  v39 = sub_18E15D75C();
  v40(v39);
  sub_18E17AEF8(v38, &v37[v22[13]]);
  v41 = v44;
  (*(v44 + 16))(v45, v37, v22);
  sub_18E158EC4(v54);
  return (*(v41 + 8))(v37, v22);
}

uint64_t sub_18E17AE14(uint64_t a1, uint64_t a2)
{
  v4 = sub_18E161880(&qword_1EABD09E0, &qword_18E1AB9D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18E17AEB4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_18E1A6D90();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_18E17AEF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_18E161880(&qword_1EABD09E0, &qword_18E1AB9D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_18E17AF68(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_18E17AF7C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 12))
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

uint64_t sub_18E17AFBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 12) = 1;
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

    *(result + 12) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_18E17B014(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_18E17B648();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_18E17B0B4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_18E1A6D90();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  if (v7 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v7;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v6 + 64);
  v15 = *(v9 + 80);
  if (v10)
  {
    v16 = *(*(v8 - 8) + 64);
  }

  else
  {
    v16 = *(*(v8 - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = v15 + 16;
  if (a2 <= v13)
  {
    goto LABEL_33;
  }

  v18 = v16 + ((v17 + ((((v14 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8)) & ~v15);
  v19 = 8 * v18;
  if (v18 <= 3)
  {
    v22 = ((a2 - v13 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v22))
    {
      v20 = *(a1 + v18);
      if (!v20)
      {
        goto LABEL_33;
      }

      goto LABEL_23;
    }

    if (v22 > 0xFF)
    {
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_33;
      }

      goto LABEL_23;
    }

    if (v22 < 2)
    {
LABEL_33:
      if (v7 == v13)
      {

        return sub_18E15D690(a1, v7, v5);
      }

      else
      {
        v26 = (((a1 + v14 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8;
        if ((v12 & 0x80000000) != 0)
        {
          v28 = sub_18E15D690((v17 + v26) & ~v15, v10, v8);
          if (v28 >= 2)
          {
            return v28 - 1;
          }

          else
          {
            return 0;
          }
        }

        else
        {
          v27 = *(v26 + 8);
          if (v27 >= 0xFFFFFFFF)
          {
            LODWORD(v27) = -1;
          }

          return (v27 + 1);
        }
      }
    }
  }

  v20 = *(a1 + v18);
  if (!*(a1 + v18))
  {
    goto LABEL_33;
  }

LABEL_23:
  v23 = (v20 - 1) << v19;
  if (v18 > 3)
  {
    v23 = 0;
  }

  if (v18)
  {
    if (v18 <= 3)
    {
      v24 = v18;
    }

    else
    {
      v24 = 4;
    }

    switch(v24)
    {
      case 2:
        v25 = *a1;
        break;
      case 3:
        v25 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v25 = *a1;
        break;
      default:
        v25 = *a1;
        break;
    }
  }

  else
  {
    v25 = 0;
  }

  return v13 + (v25 | v23) + 1;
}

void sub_18E17B340(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = sub_18E1A6D90();
  v11 = 0;
  v12 = *(v10 - 8);
  v13 = *(v12 + 84);
  v14 = v13 - 1;
  if (!v13)
  {
    v14 = 0;
  }

  if (v9 > v14)
  {
    v14 = v9;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v8 + 64);
  v17 = *(v12 + 80);
  v18 = (v17 + 16 + ((((v16 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8)) & ~v17;
  v19 = *(*(v10 - 8) + 64);
  if (!v13)
  {
    ++v19;
  }

  v20 = v18 + v19;
  v21 = 8 * (v18 + v19);
  if (a3 > v15)
  {
    if (v20 <= 3)
    {
      v22 = ((a3 - v15 + ~(-1 << v21)) >> v21) + 1;
      if (HIWORD(v22))
      {
        v11 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v11 = v23;
        }

        else
        {
          v11 = 0;
        }
      }
    }

    else
    {
      v11 = 1;
    }
  }

  if (v15 >= a2)
  {
    switch(v11)
    {
      case 1:
        a1[v20] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        return;
      case 2:
        *&a1[v20] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        return;
      case 3:
LABEL_52:
        __break(1u);
        return;
      case 4:
        *&a1[v20] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (!a2)
        {
          return;
        }

LABEL_33:
        if (v9 == v15)
        {
          v27 = a1;
          v28 = a2;
          v13 = v9;
          v10 = v7;
        }

        else
        {
          v29 = (((&a1[v16 + 3] & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8);
          if ((v14 & 0x80000000) == 0)
          {
            if ((a2 & 0x80000000) != 0)
            {
              *v29 = a2 & 0x7FFFFFFF;
              v29[1] = 0;
            }

            else
            {
              v29[1] = (a2 - 1);
            }

            return;
          }

          v27 = (v29 + v17 + 16) & ~v17;
          v28 = (a2 + 1);
        }

        sub_18E159EBC(v27, v28, v13, v10);
        break;
    }
  }

  else
  {
    v24 = ~v15 + a2;
    if (v20 < 4)
    {
      v25 = (v24 >> v21) + 1;
      if (v20)
      {
        v26 = v24 & ~(-1 << v21);
        bzero(a1, v20);
        if (v20 == 3)
        {
          *a1 = v26;
          a1[2] = BYTE2(v26);
        }

        else if (v20 == 2)
        {
          *a1 = v26;
        }

        else
        {
          *a1 = v24;
        }
      }
    }

    else
    {
      bzero(a1, v20);
      *a1 = v24;
      v25 = 1;
    }

    switch(v11)
    {
      case 1:
        a1[v20] = v25;
        break;
      case 2:
        *&a1[v20] = v25;
        break;
      case 3:
        goto LABEL_52;
      case 4:
        *&a1[v20] = v25;
        break;
      default:
        return;
    }
  }
}

void sub_18E17B648()
{
  if (!qword_1EABCFE68)
  {
    sub_18E1A6D90();
    v0 = sub_18E1A77A0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EABCFE68);
    }
  }
}

_BYTE *sub_18E17B6A8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

void sub_18E17B7C8()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_18E17BF70((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_18E17B820(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v11);
  v13 = &v16[-v12 - 8];
  (*(a4 + 24))(a3, a4);
  swift_getAssociatedConformanceWitness();
  sub_18E1A79D0();
  (*(v9 + 8))(v13, AssociatedTypeWitness);
  sub_18E161880(&qword_1EABD0A78, &qword_18E1ABBB8);
  sub_18E17C67C(a3, v16, v17);
  sub_18E17E554(v17, a2, a1, a3, a4);
  return sub_18E17BF90(v17);
}

void sub_18E17B9C0()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 6);
  sub_18E161880(&qword_1EABD0A90, &unk_18E1ABD30);
  sub_18E1A74A0();

  os_unfair_lock_unlock(v1 + 6);
}

uint64_t CachedSafetyModelsWrapper.__allocating_init()()
{
  sub_18E15959C();
  v0 = swift_allocObject();
  type metadata accessor for CachedSafetyModels();
  sub_18E15959C();
  v1 = swift_allocObject();
  sub_18E161880(&qword_1EABD0988, &unk_18E1AB600);
  sub_18E161880(&qword_1EABD0A78, &qword_18E1ABBB8);
  sub_18E15A160();
  v2 = sub_18E1A7490();
  sub_18E161880(&qword_1EABD0A80, qword_18E1ABBC0);
  sub_18E159140();
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 16) = v2;
  *(v1 + 16) = v3;
  *(v0 + 16) = v1;
  return v0;
}

uint64_t CachedSafetyModelsWrapper.init()()
{
  type metadata accessor for CachedSafetyModels();
  sub_18E15959C();
  v1 = swift_allocObject();
  sub_18E161880(&qword_1EABD0988, &unk_18E1AB600);
  sub_18E161880(&qword_1EABD0A78, &qword_18E1ABBB8);
  sub_18E15A160();
  v2 = sub_18E1A7490();
  sub_18E161880(&qword_1EABD0A80, qword_18E1ABBC0);
  sub_18E159140();
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 16) = v2;
  *(v1 + 16) = v3;
  *(v0 + 16) = v1;
  return v0;
}

uint64_t CachedSafetyModelsWrapper.count.getter()
{
  v1 = *(*(v0 + 16) + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(*(v1 + 16) + 16);
  os_unfair_lock_unlock((v1 + 24));
  return v2;
}

uint64_t CachedSafetyModelsWrapper.__allocating_init(from:)(uint64_t *a1)
{
  sub_18E15959C();
  v2 = swift_allocObject();
  type metadata accessor for CachedSafetyModels();
  sub_18E15959C();
  v3 = swift_allocObject();
  sub_18E161880(&qword_1EABD0988, &unk_18E1AB600);
  sub_18E161880(&qword_1EABD0A78, &qword_18E1ABBB8);
  sub_18E15A160();
  v4 = sub_18E1A7490();
  sub_18E161880(&qword_1EABD0A80, qword_18E1ABBC0);
  sub_18E159140();
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 16) = v4;
  *(v3 + 16) = v5;
  sub_18E158EC4(a1);
  *(v2 + 16) = v3;
  return v2;
}

uint64_t CachedSafetyModelsWrapper.init(from:)(uint64_t *a1)
{
  type metadata accessor for CachedSafetyModels();
  sub_18E15959C();
  v3 = swift_allocObject();
  sub_18E161880(&qword_1EABD0988, &unk_18E1AB600);
  sub_18E161880(&qword_1EABD0A78, &qword_18E1ABBB8);
  sub_18E15A160();
  v4 = sub_18E1A7490();
  sub_18E161880(&qword_1EABD0A80, qword_18E1ABBC0);
  sub_18E159140();
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 16) = v4;
  *(v3 + 16) = v5;
  sub_18E158EC4(a1);
  *(v1 + 16) = v3;
  return v1;
}

uint64_t CachedSafetyModelsWrapper.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t sub_18E17BE4C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = CachedSafetyModelsWrapper.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_18E17BEC8()
{
  result = qword_1EABD0A88;
  if (!qword_1EABD0A88)
  {
    type metadata accessor for CachedSafetyModelsWrapper();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0A88);
  }

  return result;
}

uint64_t sub_18E17BF90(uint64_t a1)
{
  v2 = sub_18E161880(&qword_1EABD0988, &unk_18E1AB600);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18E17C004(uint64_t a1, uint64_t a2)
{
  v4 = sub_18E161880(&qword_1EABD0A98, &qword_18E1ABD40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ModelBundleInfoForSanitizer.init(resourceURI:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_18E1A6D10();
  (*(*(v4 - 8) + 32))(a2, a1, v4);

  return sub_18E159EBC(a2, 0, 1, v4);
}

uint64_t sub_18E17C100(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x656372756F736572 && a2 == 0xEB00000000495255)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_18E1A7B90();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_18E17C17C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E17C100(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_18E17C1A8(uint64_t a1)
{
  v2 = sub_18E15C810();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E17C1E4(uint64_t a1)
{
  v2 = sub_18E15C810();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ModelBundleInfoForSanitizer.encode(to:)(void *a1)
{
  v2 = sub_18E161880(&qword_1EABD0AA0, &qword_18E1ABD48);
  v3 = sub_18E159050(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3, v8);
  v10 = &v13 - v9;
  v11 = a1[4];
  sub_18E158E00(a1, a1[3]);
  sub_18E15C810();
  sub_18E1A7CD0();
  sub_18E1A6D10();
  sub_18E15C864(&qword_1ED8D96D8);
  sub_18E1A7AE0();
  return (*(v5 + 8))(v10, v2);
}

void sub_18E17C3B8()
{
  sub_18E17C424();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_18E17C424()
{
  if (!qword_1ED8D9B80)
  {
    sub_18E1A6D10();
    v0 = sub_18E1A77A0();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8D9B80);
    }
  }
}

unint64_t sub_18E17C490()
{
  result = qword_1EABD0AB0;
  if (!qword_1EABD0AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0AB0);
  }

  return result;
}

unint64_t sub_18E17C4E8()
{
  result = qword_1ED8D96E8;
  if (!qword_1ED8D96E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8D96E8);
  }

  return result;
}

unint64_t sub_18E17C540()
{
  result = qword_1ED8D96F0;
  if (!qword_1ED8D96F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8D96F0);
  }

  return result;
}

uint64_t sub_18E17C594(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, a2);
  v8 = sub_18E17D4A8(v7, a2);
  (*(v4 + 8))(a1, a2);
  return v8;
}

__n128 sub_18E17C67C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  result = *a2;
  v4 = *(a2 + 16);
  *(a3 + 8) = *a2;
  *(a3 + 24) = v4;
  *(a3 + 40) = *(a2 + 32);
  return result;
}

uint64_t *sub_18E17C6D4()
{
  v1 = *v0;
  v5 = 0;
  v6 = 1;
  v2 = *(v1 + 88);
  type metadata accessor for GMFWeakReference();
  v3 = sub_18E1A77A0();
  v0[2] = sub_18E17C594(&v5, v3);
  return v0;
}

void sub_18E17C748(uint64_t a1, const char *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v34 = a6;
  v35 = a7;
  v36 = a2;
  v8 = sub_18E1A72F0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v32[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_18E1A72B0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v32[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = sub_18E1A72D0();
  sub_18E1A7300();
  v33 = sub_18E1A7740();
  if (sub_18E1A7780())
  {
    if ((a4 & 1) == 0)
    {
      if (v36)
      {
LABEL_9:

        sub_18E1A7330();

        if ((*(v9 + 88))(v13, v8) == *MEMORY[0x1E69E93E8])
        {
          v21 = "[Error] Interval already ended";
        }

        else
        {
          (*(v9 + 8))(v13, v8);
          v21 = "";
        }

        v22 = swift_slowAlloc();
        *v22 = 0;
        v23 = sub_18E1A72A0();
        _os_signpost_emit_with_name_impl(&dword_18E157000, v20, v33, v23, v36, v21, v22, 2u);
        MEMORY[0x193ACB8D0](v22, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v36 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v36 & 0xFFFFF800) == 0xD800)
      {
LABEL_20:
        __break(1u);
        return;
      }

      if (v36 >> 16 <= 0x10)
      {
        v36 = &v37;
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_13:

  (*(v15 + 8))(v19, v14);
  if (qword_1ED8DA2E8 != -1)
  {
    swift_once();
  }

  v24 = sub_18E1A7360();
  sub_18E1592FC(v24, qword_1ED8DA2F0);
  v25 = sub_18E1A7340();
  v26 = sub_18E1A7700();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v38 = v28;
    *v27 = 136315138;
    (*(v35 + 40))();
    v29 = sub_18E1A7880();
    v31 = sub_18E1694A4(v29, v30, &v38);

    *(v27 + 4) = v31;
    _os_log_impl(&dword_18E157000, v25, v26, "Caching - signpost for %s", v27, 0xCu);
    sub_18E158EC4(v28);
    MEMORY[0x193ACB8D0](v28, -1, -1);
    MEMORY[0x193ACB8D0](v27, -1, -1);
  }
}

uint64_t sub_18E17CB10(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  v2 = sub_18E1A77A0();
  sub_18E1A7790();
  (*(*(v2 - 8) + 8))(a1, v2);
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_18E17CBBC()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t sub_18E17CBDC()
{
  v0 = sub_18E17CBBC();

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_18E17CC0C(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    JUMPOUT(0x193ACAC50);
  }

  return 0;
}

uint64_t sub_18E17CC68()
{
  sub_18E1A7C60();
  sub_18E17CC30();
  return sub_18E1A7CA0();
}

uint64_t sub_18E17CCB0()
{
  sub_18E1A7C60();
  sub_18E17CC30();
  return sub_18E1A7CA0();
}

uint64_t sub_18E17CCF0()
{
  type metadata accessor for ModelCache();
  v0 = swift_allocObject();
  sub_18E161880(&qword_1EABD0980, &qword_18E1ABF00);
  type metadata accessor for ModelCache.ModelHolderBase();
  sub_18E17DB34();
  v1 = sub_18E1A7490();
  sub_18E161880(&qword_1EABD0AD8, &qword_18E1AC160);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v1;
  *(v0 + 16) = result;
  qword_1ED8D95A0 = v0;
  return result;
}

uint64_t static ModelCache.shared.getter()
{
  if (qword_1ED8D9598 != -1)
  {
    swift_once();
  }
}

uint64_t sub_18E17CE20@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 40);
  return sub_18E15E054(a1, *(v2 + 32), a2);
}

uint64_t sub_18E17CE40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_18E17CE64, 0, 0);
}

uint64_t sub_18E17CE64()
{
  sub_18E158FCC();
  v1 = v0[2];
  (*(v0[4] + 48))(v0[3]);
  sub_18E1594CC();

  return v2();
}

uint64_t sub_18E17CEEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_18E161880(&qword_1EABD0AB8, &qword_18E1ABEF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = v24 - v11;
  sub_18E15DF6C(a3, v24 - v11, &qword_1EABD0AB8, &qword_18E1ABEF0);
  v13 = sub_18E1A76D0();
  v14 = sub_18E15D690(v12, 1, v13);

  if (v14 == 1)
  {
    sub_18E178150(v12, &qword_1EABD0AB8, &qword_18E1ABEF0);
  }

  else
  {
    sub_18E1A76C0();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_18E1A76A0();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_18E1A75A0() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_18E178150(a3, &qword_1EABD0AB8, &qword_18E1ABEF0);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_18E178150(a3, &qword_1EABD0AB8, &qword_18E1ABEF0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_18E17D17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_18E161880(&qword_1EABD0AB8, &qword_18E1ABEF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v14 = &v19[-v13];
  sub_18E16BBD0(a5, v19);
  sub_18E161880(&qword_1EABD0AC8, &unk_18E1AC130);
  v15 = swift_allocObject();
  *(v15 + 48) = 0;
  sub_18E15DF6C(v19, v15 + 16, &qword_1EABD0960, &qword_18E1AB550);
  sub_18E178150(v19, &qword_1EABD0960, &qword_18E1AB550);
  v16 = sub_18E1A76D0();
  sub_18E159EBC(v14, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a1;
  v17[5] = a2;
  v17[6] = v15;
  v17[7] = a3;
  v17[8] = a4;

  sub_18E17CEEC(0, 0, v14, &unk_18E1AC148, v17);
}

uint64_t sub_18E17D2F8(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_18E17D3C0;

  return sub_18E17CE40(a1, v6, v7, v8, v4, v5);
}

uint64_t sub_18E17D3C0()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_18E159064();
  *v3 = v2;

  sub_18E1594CC();

  return v4();
}

uint64_t sub_18E17D4A8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for os_unfair_lock_s(255);
  sub_18E1A78E0();
  v4 = sub_18E1A78D0();
  (*(*(a2 - 8) + 8))(a1, a2);
  return v4;
}

uint64_t sub_18E17D558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = sub_18E1A7910();
  v8[7] = v9;
  v10 = *(v9 - 8);
  v8[8] = v10;
  v11 = *(v10 + 64) + 15;
  v8[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18E17D620, 0, 0);
}

uint64_t sub_18E17D620()
{
  v1 = v0[9];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];
  v5 = sub_18E1A70F0();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();

  v0[10] = sub_18E1A7100();
  sub_18E1A7BE0();
  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = sub_18E17D750;
  v9 = v0[9];
  v11 = v0[5];
  v10 = v0[6];

  return sub_18E17E064(v11, v10, 0, 0, 1);
}

uint64_t sub_18E17D750()
{
  sub_18E158FCC();
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *v1;
  sub_18E159064();
  *v7 = v6;
  *(v8 + 96) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v9 = sub_18E17D958;
  }

  else
  {
    v9 = sub_18E17D8B4;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_18E17D8B4()
{
  sub_18E158FCC();
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[4];
  os_unfair_lock_lock((v3 + 48));
  sub_18E178150(v3 + 16, &qword_1EABD0960, &qword_18E1AB550);
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  os_unfair_lock_unlock((v3 + 48));

  sub_18E1594CC();

  return v4();
}

uint64_t sub_18E17D958()
{
  sub_18E158FCC();
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[4];
  os_unfair_lock_lock((v3 + 48));
  sub_18E178150(v3 + 16, &qword_1EABD0960, &qword_18E1AB550);
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  os_unfair_lock_unlock((v3 + 48));

  sub_18E1594CC();
  v5 = v0[12];

  return v4();
}

uint64_t sub_18E17D9FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  os_unfair_lock_lock((a1 + 48));
  sub_18E178150(a1 + 16, &qword_1EABD0960, &qword_18E1AB550);
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  os_unfair_lock_unlock((a1 + 48));
  v4 = *MEMORY[0x1E69C5B00];
  v5 = sub_18E1A70E0();
  v6 = *(*(v5 - 8) + 104);

  return v6(a2, v4, v5);
}

Swift::Void __swiftcall ModelCache.reset()()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);

  sub_18E161880(&qword_1EABD0980, &qword_18E1ABF00);
  type metadata accessor for ModelCache.ModelHolderBase();
  sub_18E17DB34();
  *(v1 + 16) = sub_18E1A7490();

  os_unfair_lock_unlock((v1 + 24));
}

unint64_t sub_18E17DB34()
{
  result = qword_1ED8D95A8[0];
  if (!qword_1ED8D95A8[0])
  {
    sub_18E169A64(&qword_1EABD0980, &qword_18E1ABF00);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8D95A8);
  }

  return result;
}

uint64_t ModelCache.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t ModelCache.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_18E17DCF0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_18E17DD38(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18E17DD58(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_18E17DD80()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_18E17DDD4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_18E17DE10(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_18E17DE50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_18E17DED0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a1 + ((*(v2 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v2 + *MEMORY[0x1E69E6B68]) - 8) + 16))(a2);
}

uint64_t sub_18E17DF80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_18E17E830;

  return sub_18E17D558(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_18E17E064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_18E1A7900();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_18E17E164, 0, 0);
}

uint64_t sub_18E17E164()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_18E1A7910();
  v7 = sub_18E17E50C(&qword_1EABD0128, MEMORY[0x1E69E8820]);
  sub_18E1A7BC0();
  sub_18E17E50C(&qword_1EABD0130, MEMORY[0x1E69E87E8]);
  sub_18E1A7920();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x1E69E8938] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_18E17E2F4;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x1EEE6DE58](v11, v0 + 2, v6, v7);
}
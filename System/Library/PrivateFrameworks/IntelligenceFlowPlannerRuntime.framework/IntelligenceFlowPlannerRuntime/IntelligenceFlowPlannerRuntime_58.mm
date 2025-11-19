unint64_t sub_22C8693A0()
{
  result = qword_27D9C0AE8;
  if (!qword_27D9C0AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0AE8);
  }

  return result;
}

unint64_t sub_22C8693F8()
{
  result = qword_27D9C0AF0;
  if (!qword_27D9C0AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0AF0);
  }

  return result;
}

unint64_t sub_22C869450()
{
  result = qword_27D9C0AF8;
  if (!qword_27D9C0AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0AF8);
  }

  return result;
}

uint64_t sub_22C8694A4()
{

  return sub_22C90B2BC();
}

uint64_t sub_22C869504()
{
  v2 = sub_22C9063DC();
  v3 = sub_22C369824(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C869EDC();
  v6 = sub_22C9027BC();
  v7 = sub_22C369824(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22C36A0E0();
  MEMORY[0x28223BE20](v10);
  sub_22C3705C8();
  v12 = MEMORY[0x28223BE20](v11);
  v20 = sub_22C373BE8(v12, v13, v14, v15, v16, v17, v18, v19, v48);
  v1(v20);
  v21 = sub_22C388A98();
  v23 = v22(v21);
  if (v23 == *MEMORY[0x277D1CD18])
  {
    v24 = sub_22C36C56C();
    v25(v24);
    return 0xD00000000000001CLL;
  }

  else if (v23 == *MEMORY[0x277D1CD10])
  {
    v27 = sub_22C36C56C();
    v28(v27);
    return 0xD00000000000001ALL;
  }

  else if (v23 == *MEMORY[0x277D1CCE8])
  {
    sub_22C371EBC();
    return v29 + 3;
  }

  else if (v23 == *MEMORY[0x277D1CD00])
  {
    sub_22C371EBC();
    return v30 + 5;
  }

  else if (v23 == *MEMORY[0x277D1CCC0])
  {
    return 0xD000000000000011;
  }

  else if (v23 == *MEMORY[0x277D1CCE0])
  {
    sub_22C371EBC();
    return v31 | 2;
  }

  else if (v23 == *MEMORY[0x277D1CD08])
  {
    sub_22C371EBC();
    return v32 + 7;
  }

  else
  {
    v33 = sub_22C36C56C();
    v34(v33);
    sub_22C90405C();
    v35 = sub_22C386F08();
    v1(v35);
    v36 = sub_22C9063CC();
    v37 = sub_22C90AADC();
    if (sub_22C36DBFC(v37))
    {
      swift_slowAlloc();
      sub_22C869F30();
      v38 = sub_22C869EF8(4.8149e-34);
      v1(v38);
      sub_22C90A1AC();
      v39 = sub_22C378930();
      v40(v39);
      v41 = sub_22C389328();

      *(v0 + 4) = v41;
      sub_22C869F0C(&dword_22C366000, v42, v43, "Unknown system requirement %s");
      sub_22C3751A8();
      sub_22C370510();
    }

    else
    {

      v44 = sub_22C378930();
      v45(v44);
    }

    v46 = sub_22C372EE8();
    v47(v46);
    return 0;
  }
}

uint64_t sub_22C869898()
{
  v2 = sub_22C9063DC();
  v3 = sub_22C369824(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C869EDC();
  v6 = sub_22C90217C();
  v7 = sub_22C369824(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22C36A0E0();
  MEMORY[0x28223BE20](v10);
  sub_22C3705C8();
  v12 = MEMORY[0x28223BE20](v11);
  v20 = sub_22C373BE8(v12, v13, v14, v15, v16, v17, v18, v19, v40);
  v1(v20);
  v21 = sub_22C388A98();
  v23 = v22(v21);
  if (v23 == *MEMORY[0x277D1C5D8])
  {
    return 0x65526E496E676973;
  }

  if (v23 == *MEMORY[0x277D1C5E0])
  {
    return 0xD000000000000014;
  }

  if (v23 == *MEMORY[0x277D1C5E8])
  {
    return 0xD000000000000018;
  }

  v25 = sub_22C36C56C();
  v26(v25);
  sub_22C90405C();
  v27 = sub_22C386F08();
  v1(v27);
  v28 = sub_22C9063CC();
  v29 = sub_22C90AADC();
  if (sub_22C36DBFC(v29))
  {
    swift_slowAlloc();
    sub_22C869F30();
    v30 = sub_22C869EF8(4.8149e-34);
    v1(v30);
    sub_22C90A1AC();
    v31 = sub_22C378930();
    v32(v31);
    v33 = sub_22C389328();

    *(v0 + 4) = v33;
    sub_22C869F0C(&dword_22C366000, v34, v35, "Unknown app requirement %s");
    sub_22C3751A8();
    sub_22C370510();
  }

  else
  {

    v36 = sub_22C378930();
    v37(v36);
  }

  v38 = sub_22C372EE8();
  v39(v38);
  return 0;
}

unint64_t sub_22C869B6C()
{
  v2 = sub_22C9063DC();
  v3 = sub_22C369824(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C869EDC();
  v6 = sub_22C9029BC();
  v7 = sub_22C369824(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22C36A0E0();
  MEMORY[0x28223BE20](v10);
  sub_22C3705C8();
  v12 = MEMORY[0x28223BE20](v11);
  v20 = sub_22C373BE8(v12, v13, v14, v15, v16, v17, v18, v19, v44);
  v1(v20);
  v21 = sub_22C388A98();
  v23 = v22(v21);
  if (v23 == *MEMORY[0x277D1CF28])
  {
    return 0xD000000000000016;
  }

  if (v23 == *MEMORY[0x277D1CF58])
  {
    goto LABEL_4;
  }

  if (v23 == *MEMORY[0x277D1CF20])
  {
    sub_22C38C244();
    return v26 + 11;
  }

  if (v23 == *MEMORY[0x277D1CF48])
  {
    goto LABEL_8;
  }

  if (v23 == *MEMORY[0x277D1CF30])
  {
    return 0xD000000000000016;
  }

  if (v23 == *MEMORY[0x277D1CF50])
  {
LABEL_4:
    sub_22C38C244();
    return v25 + 5;
  }

  if (v23 == *MEMORY[0x277D1CF38])
  {
    sub_22C38C244();
    return v28 + 2;
  }

  else
  {
    if (v23 == *MEMORY[0x277D1CF40])
    {
LABEL_8:
      sub_22C38C244();
      return v27 + 4;
    }

    v29 = sub_22C36C56C();
    v30(v29);
    sub_22C90405C();
    v31 = sub_22C386F08();
    v1(v31);
    v32 = sub_22C9063CC();
    v33 = sub_22C90AADC();
    if (sub_22C36DBFC(v33))
    {
      swift_slowAlloc();
      sub_22C869F30();
      v34 = sub_22C869EF8(4.8149e-34);
      v1(v34);
      sub_22C90A1AC();
      v35 = sub_22C378930();
      v36(v35);
      v37 = sub_22C389328();

      *(v0 + 4) = v37;
      sub_22C869F0C(&dword_22C366000, v38, v39, "Unknown permission requirement %s");
      sub_22C3751A8();
      sub_22C370510();
    }

    else
    {

      v40 = sub_22C378930();
      v41(v40);
    }

    v42 = sub_22C372EE8();
    v43(v42);
    return 0;
  }
}

void sub_22C869F0C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(v6 - 116);
  v9 = *(v6 - 116);

  _os_log_impl(a1, v4, v9, a4, v5, 0xCu);
}

uint64_t sub_22C869F30()
{
  *(v1 - 116) = v0;

  return swift_slowAlloc();
}

uint64_t dispatch thunk of ResponseGenerationTranscriptPromptBuilding.buildPrompt(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_22C86A08C;

  return v11(a1, a2, a3);
}

uint64_t sub_22C86A08C(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

double sub_22C86A198()
{
  v45 = sub_22C906ECC();
  v1 = *(v45 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v45);
  v42 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22C90FB40;
  v5 = swift_allocObject();
  v43 = 679043443;
  v44 = 0xE400000000000000;
  *(v5 + 16) = sub_22C90A49C();
  *(v5 + 24) = v6;
  *(inited + 32) = v5;
  v7 = MEMORY[0x2318B5650]();
  v8 = *(v7 + 16);
  if (v8)
  {
    v35 = inited;
    v36 = v0;
    v43 = MEMORY[0x277D84F90];
    sub_22C3B63D4();
    v9 = v43;
    v11 = *(v1 + 16);
    v10 = v1 + 16;
    v12 = *(v10 + 64);
    v34 = v7;
    v13 = v7 + ((v12 + 32) & ~v12);
    v39 = *(v10 + 56);
    v40 = v11;
    v38 = (v10 - 8);
    v37 = *MEMORY[0x277D1D798];
    v41 = v10;
    do
    {
      v14 = v42;
      v15 = v45;
      v40(v42, v13, v45);
      type metadata accessor for PromptTreeIdentifier.Label(0);
      v16 = swift_allocBox();
      v18 = v17;
      sub_22C901FAC();
      v19 = swift_allocBox();
      sub_22C906E1C();
      (*v38)(v14, v15);
      *v18 = v19;
      v20 = sub_22C902D0C();
      (*(*(v20 - 8) + 104))(v18, v37, v20);
      swift_storeEnumTagMultiPayload();
      v43 = v9;
      v21 = *(v9 + 16);
      if (v21 >= *(v9 + 24) >> 1)
      {
        sub_22C3B63D4();
        v9 = v43;
      }

      *(v9 + 16) = v21 + 1;
      *(v9 + 8 * v21 + 32) = v16 | 0x2000000000000000;
      v13 += v39;
      --v8;
    }

    while (v8);

    inited = v35;
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
  }

  v22 = sub_22C3DB9B0(v9);

  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_22C912A90;
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  sub_22C369AEC();
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  *(v23 + 32) = v24;
  sub_22C369AEC();
  v25 = swift_allocObject();
  sub_22C369AEC();
  v26 = swift_allocObject();
  *(v26 + 16) = v23 | 0x8000000000000000;
  *(v25 + 16) = v26;
  *(inited + 40) = v25 | 0x6000000000000000;
  v27 = swift_allocObject();
  v43 = 41;
  v44 = 0xE100000000000000;
  *(v27 + 16) = sub_22C90A49C();
  *(v27 + 24) = v28;
  *(inited + 48) = v27;
  v29 = sub_22C3DB9B0(inited);
  swift_setDeallocating();
  sub_22C58FFB0();
  sub_22C369AEC();
  v30 = swift_allocObject();
  sub_22C369AEC();
  v31 = swift_allocObject();
  *(v31 + 16) = v29;
  *(v30 + 16) = v31;
  sub_22C3A5908(&qword_27D9BC438, &unk_22C912FE0);
  v32 = swift_allocObject();
  *&result = 1;
  *(v32 + 16) = xmmword_22C90F800;
  *(v32 + 32) = 0;
  *(v32 + 40) = v30 | 0x6000000000000002;
  return result;
}

uint64_t sub_22C86A5F0(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  while (1)
  {
    if (v7 == v6)
    {
      return 0;
    }

    v8 = *(sub_22C907C5C() - 8);
    result = a1(a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6);
    if (v3)
    {
      return result;
    }

    if (result)
    {
      break;
    }

    ++v6;
  }

  return v6;
}

void __swiftcall ResponseCatalogIdentifiers.init(appBundleID:intentID:actionType:responseMode:)(IntelligenceFlowPlannerRuntime::ResponseCatalogIdentifiers_optional *__return_ptr retstr, Swift::String_optional appBundleID, Swift::String_optional intentID, Swift::String_optional actionType, Swift::String_optional responseMode)
{
  sub_22C36BA7C();
  v8 = v7;
  v53 = v9;
  v54 = v10;
  v12 = v11;
  v14 = v13;
  v52 = v15;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = sub_22C9063DC();
  v23 = sub_22C369824(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22C369ABC();
  v28 = (v26 - v27);
  MEMORY[0x28223BE20](v29);
  sub_22C37F9FC();
  MEMORY[0x28223BE20](v30);
  sub_22C37B03C();
  v32 = MEMORY[0x28223BE20](v31);
  v34 = &v51 - v33;
  if (!v17)
  {
    sub_22C383968(v32);

    sub_22C90405C();
    v36 = sub_22C9063CC();
    v37 = sub_22C90AADC();
    if (!os_log_type_enabled(v36, v37))
    {
      v28 = v34;
      goto LABEL_17;
    }

    sub_22C3720F4();
    v38 = swift_slowAlloc();
    sub_22C53799C(v38);
    _os_log_impl(&dword_22C366000, v36, v37, "ResponseCatalog identifier missing: appBundleID", v12, 2u);
    v28 = v34;
LABEL_16:
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    goto LABEL_17;
  }

  if (!v14)
  {
    sub_22C383968(v32);

    sub_22C90405C();
    v36 = sub_22C9063CC();
    sub_22C90AADC();
    sub_22C375AAC();
    if (!os_log_type_enabled(v36, v39))
    {
      v28 = v6;
      goto LABEL_17;
    }

    sub_22C3720F4();
    v40 = swift_slowAlloc();
    sub_22C53799C(v40);
    sub_22C871EFC(&dword_22C366000, v41, v42, "ResponseCatalog identifier missing: intentID");
    v28 = v6;
    goto LABEL_16;
  }

  if (!v12)
  {
    sub_22C383968(v32);

    sub_22C90405C();
    v36 = sub_22C9063CC();
    sub_22C90AADC();
    sub_22C375AAC();
    if (!os_log_type_enabled(v36, v43))
    {
      v28 = v5;
      goto LABEL_17;
    }

    sub_22C3720F4();
    v44 = swift_slowAlloc();
    sub_22C53799C(v44);
    sub_22C871EFC(&dword_22C366000, v45, v46, "ResponseCatalog identifier missing: actionType");
    v28 = v5;
    goto LABEL_16;
  }

  if (!v8)
  {
    sub_22C383968(v32);

    sub_22C90405C();
    v36 = sub_22C9063CC();
    sub_22C90AADC();
    sub_22C375AAC();
    if (os_log_type_enabled(v36, v47))
    {
      sub_22C3720F4();
      v48 = swift_slowAlloc();
      sub_22C53799C(v48);
      sub_22C871EFC(&dword_22C366000, v49, v50, "ResponseCatalog identifier missing: responseMode");
      goto LABEL_16;
    }

LABEL_17:

    (*(v19 + 8))(v28, v54);
    *(v21 + 32) = 0u;
    *(v21 + 48) = 0u;
    *v21 = 0u;
    *(v21 + 16) = 0u;
    goto LABEL_18;
  }

  *v21 = v19;
  *(v21 + 8) = v17;
  v35 = v53;
  *(v21 + 16) = v52;
  *(v21 + 24) = v14;
  *(v21 + 32) = v35;
  *(v21 + 40) = v12;
  *(v21 + 48) = v54;
  *(v21 + 56) = v8;
LABEL_18:
  sub_22C36CC48();
}

IntelligenceFlowPlannerRuntime::RequestedResponseMode_optional __swiftcall RequestedResponseMode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22C90B21C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

IntelligenceFlowPlannerRuntime::RequestedResponseMode_optional __swiftcall RequestedResponseMode.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = RequestedResponseMode.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

uint64_t RequestedResponseMode.stringValue.getter()
{
  result = 0x726143746E6F647ELL;
  switch(*v0)
  {
    case 1:
      result = 0x4679616C70736964;
      break;
    case 2:
      result = 0x4F79616C70736964;
      break;
    case 3:
      result = 0x726F466563696F76;
      break;
    case 4:
      result = 0x6C6E4F6563696F76;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C86AB84()
{
  v0 = sub_22C90B21C();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_22C86AC04@<X0>(uint64_t *a1@<X8>)
{
  result = RequestedResponseMode.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22C86AC38(uint64_t a1)
{
  v2 = sub_22C871DB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C86AC74(uint64_t a1)
{
  v2 = sub_22C871DB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C86ACD4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_22C86AB84();
  *a2 = result;
  return result;
}

uint64_t sub_22C86AD04@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22C3A2360(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_22C86AD38@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22C86ABD0();
  *a1 = result;
  return result;
}

uint64_t sub_22C86AD60(uint64_t a1)
{
  v2 = sub_22C870D58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C86AD9C(uint64_t a1)
{
  v2 = sub_22C870D58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C86ADD8()
{
  sub_22C3870A4();
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_22C36BA00();
}

uint64_t sub_22C86AE1C()
{
  sub_22C370250();
  sub_22C38009C();
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
}

uint64_t sub_22C86AEAC()
{
  sub_22C3870A4();
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return sub_22C36BA00();
}

uint64_t sub_22C86AEF0()
{
  sub_22C370250();
  sub_22C38009C();
  swift_beginAccess();
  v3 = *(v1 + 40);
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
}

uint64_t sub_22C86AFB8()
{
  sub_22C3870A4();
  swift_beginAccess();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return sub_22C36BA00();
}

uint64_t sub_22C86AFFC()
{
  sub_22C370250();
  sub_22C38009C();
  swift_beginAccess();
  v3 = *(v1 + 56);
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
}

uint64_t sub_22C86B08C()
{
  sub_22C3870A4();
  swift_beginAccess();
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return sub_22C36BA00();
}

uint64_t sub_22C86B0D0()
{
  sub_22C370250();
  sub_22C38009C();
  swift_beginAccess();
  v3 = *(v1 + 72);
  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
}

uint64_t sub_22C86B160()
{
  sub_22C3870A4();
  swift_beginAccess();
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return sub_22C36BA00();
}

uint64_t sub_22C86B1A4()
{
  sub_22C370250();
  sub_22C38009C();
  swift_beginAccess();
  v3 = *(v1 + 88);
  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
}

uint64_t sub_22C86B26C()
{
  sub_22C3870A4();
  swift_beginAccess();
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return sub_22C36BA00();
}

uint64_t sub_22C86B2B0()
{
  sub_22C370250();
  sub_22C38009C();
  swift_beginAccess();
  v3 = *(v1 + 104);
  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
}

uint64_t CatalogEntry.__allocating_init(from:)()
{
  v0 = swift_allocObject();
  CatalogEntry.init(from:)();
  return v0;
}

void CatalogEntry.init(from:)()
{
  sub_22C370030();
  v2 = v0;
  v4 = v3;
  v5 = sub_22C3A5908(&qword_27D9C0B00, &qword_22C92A3F0);
  sub_22C369824(v5);
  v36 = v6;
  v8 = *(v7 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  v11 = &v35 - v10;
  v41 = v2;
  v2[4] = 0u;
  v2 += 4;
  v2[1] = 0u;
  v2[2] = 0u;
  v12 = v4[3];
  v13 = v4[4];
  v37 = v4;
  sub_22C374168(v4, v12);
  sub_22C870D58();
  sub_22C90B6BC();
  if (v1)
  {
    v15 = v41[9];

    v16 = v41[11];

    v17 = v41[13];

    type metadata accessor for CatalogEntry();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v14 = v36;
    v40 = 0;
    v18 = v11;
    v41[2] = sub_22C90B2DC();
    v41[3] = v19;
    sub_22C871F1C(1);
    v41[4] = sub_22C90B2DC();
    v41[5] = v20;
    sub_22C871F1C(2);
    v41[6] = sub_22C90B2DC();
    v41[7] = v21;
    sub_22C871F1C(5);
    v22 = sub_22C90B2DC();
    v35 = v23;
    sub_22C38009C();
    swift_beginAccess();
    v24 = v41[13];
    v25 = v35;
    v41[12] = v22;
    v41[13] = v25;

    v39 = 3;
    v26 = v18;
    v27 = sub_22C90B2DC();
    v29 = v28;
    sub_22C38009C();
    swift_beginAccess();
    v30 = v41[9];
    v41[8] = v27;
    v41[9] = v29;

    v38 = 4;
    v31 = sub_22C90B2DC();
    v33 = v32;
    (*(v14 + 8))(v26, v5);
    sub_22C38009C();
    swift_beginAccess();
    v34 = v41[11];
    v41[10] = v31;
    v41[11] = v33;
  }

  sub_22C36FF94(v37);
  sub_22C36FB20();
}

void sub_22C86B738()
{
  sub_22C370030();
  v1 = v0;
  v3 = v2;
  v4 = sub_22C3A5908(&qword_27D9C0B10, &qword_22C92A3F8);
  sub_22C369824(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  sub_22C3881C0();
  v10 = v3[4];
  sub_22C374168(v3, v3[3]);
  sub_22C870D58();
  sub_22C90B6CC();
  sub_22C3870A4();
  swift_beginAccess();
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);

  sub_22C382A58();
  if (v11)
  {
    goto LABEL_4;
  }

  sub_22C3870A4();
  swift_beginAccess();
  v13 = *(v1 + 32);
  v14 = *(v1 + 40);

  sub_22C382A58();
  if (v13 || (, sub_22C3870A4(), swift_beginAccess(), v15 = *(v1 + 48), v16 = *(v1 + 56), , sub_22C382A58(), v15))
  {
LABEL_4:
    v17 = *(v6 + 8);
    v18 = sub_22C371530();
    v19(v18);
  }

  else
  {

    sub_22C3870A4();
    swift_beginAccess();
    v25 = *(v1 + 64);
    sub_22C3A5908(&qword_27D9BAD90, &unk_22C91D9E0);
    sub_22C7911C0();
    sub_22C376AB0();
    sub_22C3870A4();
    swift_beginAccess();
    v24 = *(v1 + 80);
    sub_22C376AB0();
    sub_22C3870A4();
    swift_beginAccess();
    v23 = *(v1 + 96);
    sub_22C376AB0();
    v20 = *(v6 + 8);
    v21 = sub_22C371530();
    v22(v21);
  }

  sub_22C36FB20();
}

void *CatalogEntry.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  return v0;
}

uint64_t CatalogEntry.__deallocating_deinit()
{
  CatalogEntry.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_22C86BA34@<X0>(uint64_t *a1@<X8>)
{
  result = CatalogEntry.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_22C86BA84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282162858](a1, a2, a3, WitnessTable);
}

uint64_t sub_22C86BB94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282162828](a1, a2, a3, WitnessTable);
}

uint64_t ResponseCatalog.__allocating_init(_:)()
{
  sub_22C370250();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  v3 = sub_22C36A724();
  v5 = ResponseCatalogDatabase.init(_:)(v3, v4);

  sub_22C872614();

  return v5;
}

uint64_t ResponseCatalog.init(_:)(uint64_t a1, uint64_t a2)
{
  v2 = ResponseCatalogDatabase.init(_:)(a1, a2);

  sub_22C872614();

  return v2;
}

uint64_t sub_22C86BCAC()
{
  sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22C90FB40;
  sub_22C3819C0();
  *(v1 + 32) = 0xD0000000000000E1;
  *(v1 + 40) = v2;
  sub_22C3819C0();
  *(v3 + 48) = 0xD00000000000006FLL;
  *(v3 + 56) = v4;
  sub_22C90AF5C();

  sub_22C3819C0();
  v8 = v5;
  v6 = sub_22C90B47C();
  MEMORY[0x2318B7850](v6);

  *(v0 + 64) = 0xD000000000000014;
  *(v0 + 72) = v8;
  return v0;
}

uint64_t sub_22C86BDA4(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime23ResponseCatalogDatabase_databaseQueue))
  {
    v2 = MEMORY[0x28223BE20](result);
    MEMORY[0x28223BE20](v2);
    sub_22C90108C();

    sub_22C3A5908(&qword_27D9C0B20, &unk_22C92A410);
    sub_22C90109C();
  }

  return result;
}

uint64_t sub_22C86BEB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22C90117C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0xD000000000000063;
  v14 = 0x800000022C9385E0;
  MEMORY[0x2318B7850](a2, a3);
  v10 = v13;
  v11 = v14;
  v13 = 0x20545245534E49;
  v14 = 0xE700000000000000;
  MEMORY[0x2318B7850](v10, v11);

  sub_22C90116C();
  sub_22C90120C();
  (*(v6 + 8))(v9, v5);
}

uint64_t sub_22C86C020@<X0>(uint64_t (*a1)(void)@<X1>, _BYTE *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = 0;
  }

  return result;
}

void sub_22C86C054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(void, void), uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C370030();
  a19 = v22;
  a20 = v23;
  v24 = v21;
  v26 = v25;
  v27 = sub_22C9063DC();
  v28 = sub_22C369824(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v28);
  sub_22C369ABC();
  v34 = MEMORY[0x28223BE20](v33);
  v36 = &v71 - v35;
  MEMORY[0x28223BE20](v34);
  v39 = &v71 - v38;
  v40 = *(v20 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime23ResponseCatalogDatabase_databaseQueue);
  if (v40)
  {
    v79 = v30;
    v80 = v27;
    v41 = *v26;
    v42 = v26[1];
    v43 = v26[3];
    v76 = v26[2];
    v77 = v41;
    v44 = v26[5];
    v75 = v26[4];
    v45 = v26[6];
    v46 = v26[7];
    v73 = v37;
    v74 = v45;
    v78 = v40;

    sub_22C90405C();

    v47 = sub_22C9063CC();
    v48 = sub_22C90AACC();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v71 = v21;
      v50 = v49;
      v72 = swift_slowAlloc();
      a10 = v72;
      *v50 = 136315906;
      *(v50 + 4) = sub_22C36F9F4(v77, v42, &a10);
      *(v50 + 12) = 2080;
      *(v50 + 14) = sub_22C36F9F4(v76, v43, &a10);
      *(v50 + 22) = 2080;
      *(v50 + 24) = sub_22C36F9F4(v75, v44, &a10);
      *(v50 + 32) = 2080;
      v51 = v74;
      *(v50 + 34) = sub_22C36F9F4(v74, v46, &a10);
      _os_log_impl(&dword_22C366000, v47, v48, "ResponseCatalog: Querying for: appBundleID=%s, intentID=%s, actionType=%s, responseMode=%s", v50, 0x2Au);
      swift_arrayDestroy();
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      v24 = v71;
      sub_22C369B50();
      MEMORY[0x2318B9880]();

      v52 = sub_22C871F68();
      v53(v52);
    }

    else
    {

      v57 = sub_22C871F68();
      v58(v57);
      v51 = v74;
    }

    v59 = swift_allocObject();
    v60 = v76;
    v59[2] = v77;
    v59[3] = v42;
    v59[4] = v60;
    v59[5] = v43;
    v59[6] = v75;
    v59[7] = v44;
    v59[8] = v51;
    v59[9] = v46;
    v61 = MEMORY[0x28223BE20](v59);
    *(&v71 - 2) = sub_22C870DD0;
    *(&v71 - 1) = v61;

    sub_22C3A5908(&qword_27D9C0B18, &unk_22C92A400);
    v62 = v24;
    sub_22C90106C();
    if (v24)
    {
      v63 = v73;
      sub_22C90405C();
      v64 = v24;
      v65 = sub_22C9063CC();
      v66 = sub_22C90AADC();

      if (os_log_type_enabled(v65, v66))
      {
        sub_22C36BED8();
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        *v67 = 138412290;
        v69 = v62;
        v70 = _swift_stdlib_bridgeErrorToNSError();
        *(v67 + 4) = v70;
        *v68 = v70;
        _os_log_impl(&dword_22C366000, v65, v66, "Siri response cache read failed with: %@", v67, 0xCu);
        sub_22C36DD28(v68, &qword_27D9BB158, qword_22C910FD0);
        sub_22C369B50();
        MEMORY[0x2318B9880]();
        sub_22C369B50();
        MEMORY[0x2318B9880]();
      }

      else
      {
      }

      v72(v63, v80);
    }

    else
    {
    }
  }

  else
  {
    sub_22C90405C();
    v54 = sub_22C9063CC();
    sub_22C90AADC();
    sub_22C375AAC();
    if (os_log_type_enabled(v54, v55))
    {
      sub_22C3720F4();
      v56 = swift_slowAlloc();
      sub_22C53799C(v56);
      _os_log_impl(&dword_22C366000, v54, v36, "ResponseCatalog: Unable to access database", v39, 2u);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    (*(v30 + 8))(v36, v27);
  }

  sub_22C36FB20();
}

char *sub_22C86C5AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9)
{
  v49 = a8;
  v46 = a1;
  v50 = a9;
  v15 = sub_22C9063DC();
  v39 = *(v15 - 8);
  v40 = v15;
  v16 = *(v39 + 64);
  MEMORY[0x28223BE20](v15);
  v41 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_22C90117C();
  v45 = *(v47 - 8);
  v18 = *(v45 + 64);
  MEMORY[0x28223BE20](v47);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v51[0] = 0;
  *(&v51[0] + 1) = 0xE000000000000000;
  sub_22C90AF5C();
  MEMORY[0x2318B7850](0xD00000000000002ALL, 0x800000022C938650);
  v36 = a2;
  v42 = a3;
  v21 = a3;
  v22 = v50;
  MEMORY[0x2318B7850](a2, v21);
  MEMORY[0x2318B7850](0xD000000000000012, 0x800000022C938680);
  v37 = a4;
  v43 = a5;
  MEMORY[0x2318B7850](a4, a5);
  MEMORY[0x2318B7850](0xD000000000000016, 0x800000022C9382C0);
  v38 = a6;
  v44 = a7;
  MEMORY[0x2318B7850](a6, a7);
  MEMORY[0x2318B7850](0xD000000000000017, 0x800000022C9386A0);
  MEMORY[0x2318B7850](v49, v22);
  MEMORY[0x2318B7850](0xD000000000000015, 0x800000022C9386C0);
  MEMORY[0x2318B7850](0x726143746E6F647ELL, 0xE900000000000065);
  MEMORY[0x2318B7850](0xD00000000000001CLL, 0x800000022C9386E0);
  v23 = v51[0];
  sub_22C3A5908(&qword_27D9BAAE0, &qword_22C90D380);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_22C90F800;
  *&v51[0] = 0;
  *(&v51[0] + 1) = 0xE000000000000000;
  sub_22C90AF5C();

  *&v51[0] = 0xD00000000000001CLL;
  *(&v51[0] + 1) = 0x800000022C938700;
  MEMORY[0x2318B7850](v23, *(&v23 + 1));
  v25 = v51[0];
  *(v24 + 56) = MEMORY[0x277D837D0];
  *(v24 + 32) = v25;
  sub_22C90B5FC();

  type metadata accessor for CatalogEntry();
  v52 = 0;
  memset(v51, 0, sizeof(v51));
  sub_22C90116C();
  sub_22C871E58(&qword_27D9C0BC0);
  v26 = v48;
  sub_22C90114C();
  if (v26)
  {

    (*(v45 + 8))(v20, v47);
    sub_22C36DD28(v51, &qword_27D9C0BC8, &qword_22C92AFB0);
  }

  else
  {
    v27 = v41;

    (*(v45 + 8))(v20, v47);
    sub_22C36DD28(v51, &qword_27D9C0BC8, &qword_22C92AFB0);
    v20 = v53;
    if (!v53)
    {
      sub_22C90405C();

      v29 = v50;

      v30 = sub_22C9063CC();
      v31 = sub_22C90AABC();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        *&v51[0] = v33;
        *v32 = 136315906;
        *(v32 + 4) = sub_22C36F9F4(v36, v28, v51);
        *(v32 + 12) = 2080;
        *(v32 + 14) = sub_22C36F9F4(v37, v43, v51);
        *(v32 + 22) = 2080;
        *(v32 + 24) = sub_22C36F9F4(v38, v44, v51);
        *(v32 + 32) = 2080;
        *(v32 + 34) = sub_22C36F9F4(v49, v29, v51);
        _os_log_impl(&dword_22C366000, v30, v31, "ResponseCatalog: No cache entry found for %s:%s:%s:%s", v32, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x2318B9880](v33, -1, -1);
        MEMORY[0x2318B9880](v32, -1, -1);
      }

      (*(v39 + 8))(v27, v40);
    }
  }

  return v20;
}

uint64_t sub_22C86CBC8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v10 = a1[3];
  v11 = a1[4];
  v12 = a1[5];
  v19 = a1[7];
  v20 = a1[6];
  sub_22C90AF5C();

  v13 = sub_22C36FC2C();
  MEMORY[0x2318B7850](v13);
  sub_22C871F90();
  v14 = sub_22C36CC9C();
  MEMORY[0x2318B7850](v14);
  sub_22C871F90();
  MEMORY[0x2318B7850](v11, v12);
  v15 = sub_22C371530();
  MEMORY[0x2318B7850](v15);
  MEMORY[0x2318B7850](a2, a3);
  MEMORY[0x2318B7850](a6, a7);
  MEMORY[0x2318B7850](v20, v19);
  MEMORY[0x2318B7850](2107687, 0xE300000000000000);
  sub_22C86BDA4(10024);
}

void sub_22C86CCF8()
{
  sub_22C370030();
  v2 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[7];
  v16 = v1[6];
  sub_22C90AF5C();
  MEMORY[0x2318B7850](0xD000000000000028, 0x800000022C938270);
  v9 = sub_22C36CC9C();
  MEMORY[0x2318B7850](v9);
  MEMORY[0x2318B7850](0xD000000000000012, 0x800000022C9382A0);
  v10 = sub_22C371530();
  MEMORY[0x2318B7850](v10);
  v11 = sub_22C38C528();
  MEMORY[0x2318B7850](v11);
  v12 = sub_22C36FC2C();
  MEMORY[0x2318B7850](v12);
  v13 = sub_22C38C528();
  MEMORY[0x2318B7850](v13);
  MEMORY[0x2318B7850](v16, v8);
  v14 = MEMORY[0x2318B7850](39, 0xE100000000000000);
  if (*(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime23ResponseCatalogDatabase_databaseQueue))
  {
    v15 = MEMORY[0x28223BE20](v14);
    MEMORY[0x28223BE20](v15);
    sub_22C90108C();

    sub_22C3A5908(&qword_27D9C0B20, &unk_22C92A410);
    sub_22C90109C();
  }

  sub_22C36FB20();
}

uint64_t sub_22C86CEEC()
{
  v0 = sub_22C90117C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C90116C();
  sub_22C90120C();
  return (*(v1 + 8))(v4, v0);
}

uint64_t ResponseCatalog.__deallocating_deinit()
{
  v0 = *ResponseCatalogDatabase.deinit();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22C86D044()
{
  v1 = sub_22C901DDC();
  v2 = sub_22C369824(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  sub_22C3881C0();
  v7 = sub_22C90210C();
  v8 = sub_22C369824(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  v15 = v14 - v13;
  sub_22C9020FC();
  (*(v4 + 104))(v0, *MEMORY[0x277D1C248], v1);
  sub_22C871F7C();
  sub_22C9020EC();
  v16 = *(v4 + 8);
  v17 = sub_22C371530();
  v18(v17);
  return (*(v10 + 8))(v15, v7);
}

void sub_22C86D1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v23;
  a20 = v24;
  v220 = v25;
  v27 = v26;
  v29 = v28;
  v197 = sub_22C90035C();
  v30 = sub_22C369824(v197);
  v196 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  sub_22C3698A8();
  sub_22C3698F8(v34);
  v216 = type metadata accessor for ResponseGenerationPreferences();
  v35 = sub_22C36985C(v216);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  sub_22C3698A8();
  v217 = v38;
  v39 = sub_22C3A5908(&qword_27D9BD698, &qword_22C9187B0);
  v40 = sub_22C369914(v39);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v43);
  sub_22C36BA64();
  v194 = v44;
  v45 = sub_22C3A5908(&qword_27D9BB138, &qword_22C90DB70);
  v46 = sub_22C369914(v45);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v49);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v50);
  sub_22C36BA58();
  v219 = v51;
  MEMORY[0x28223BE20](v52);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v53);
  sub_22C36BA64();
  sub_22C3698F8(v54);
  v209 = sub_22C90687C();
  v55 = sub_22C369824(v209);
  v208 = v56;
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v55);
  sub_22C3698A8();
  sub_22C3698F8(v59);
  v206 = sub_22C9026BC();
  v60 = sub_22C369824(v206);
  v205 = v61;
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v60);
  sub_22C3698A8();
  sub_22C3698F8(v64);
  v203 = sub_22C907DEC();
  v65 = sub_22C369824(v203);
  v202 = v66;
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v65);
  sub_22C3698A8();
  sub_22C3698F8(v69);
  v201 = sub_22C906ECC();
  v70 = sub_22C369824(v201);
  v200 = v71;
  v73 = *(v72 + 64);
  MEMORY[0x28223BE20](v70);
  sub_22C3698A8();
  sub_22C3698F8(v74);
  v193 = sub_22C90977C();
  v75 = sub_22C369824(v193);
  v192[1] = v76;
  v78 = *(v77 + 64);
  MEMORY[0x28223BE20](v75);
  sub_22C369838();
  sub_22C37B6BC();
  v79 = sub_22C907C5C();
  v80 = sub_22C369824(v79);
  v82 = v81;
  v84 = *(v83 + 64);
  MEMORY[0x28223BE20](v80);
  sub_22C369838();
  sub_22C3881C0();
  v85 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  v86 = sub_22C369914(v85);
  v88 = *(v87 + 64);
  MEMORY[0x28223BE20](v86);
  sub_22C369ABC();
  v91 = v89 - v90;
  MEMORY[0x28223BE20](v92);
  sub_22C37F9FC();
  MEMORY[0x28223BE20](v93);
  v95 = v192 - v94;
  v29[2] = 0u;
  v29[3] = 0u;
  *v29 = 0u;
  v29[1] = 0u;
  v215 = v27;
  sub_22C90803C();
  sub_22C907C3C();
  (*(v82 + 8))(v21, v79);
  v218 = v95;
  sub_22C379DF8(v95, v22, &qword_27D9BC1E8, &qword_22C9123B0);
  v96 = sub_22C908EAC();
  v97 = sub_22C36FD7C();
  sub_22C36D0A8(v97, v98, v96);
  if (v99)
  {
    sub_22C36DD28(v22, &qword_27D9BC1E8, &qword_22C9123B0);
    v101 = 0;
    v198 = 0xE000000000000000;
  }

  else
  {
    sub_22C908DDC();
    sub_22C36BBA8(v96);
    (*(v100 + 8))(v22, v96);
    v101 = sub_22C9096FC();
    v198 = v102;
    sub_22C36FB04(&v223);
    v103(v20, v193);
  }

  sub_22C379DF8(v218, v91, &qword_27D9BC1E8, &qword_22C9123B0);
  sub_22C36D0A8(v91, 1, v96);
  v104 = v215;
  if (v99)
  {
    sub_22C36DD28(v91, &qword_27D9BC1E8, &qword_22C9123B0);
    v105 = 0;
    v107 = 0xE000000000000000;
  }

  else
  {
    v105 = sub_22C908E7C();
    v107 = v106;
    sub_22C36BBA8(v96);
    v109 = *(v108 + 8);
    v110 = sub_22C36FC2C();
    v111(v110);
  }

  v112 = v199;
  sub_22C90802C();
  sub_22C37205C(&v226 + 8);
  sub_22C906EBC();
  sub_22C36FB04(&v225 + 8);
  v113(v112, v201);
  v114 = v204;
  sub_22C907DAC();
  sub_22C36FB04(&v227);
  v115(v21, v203);
  v116 = sub_22C86DF98();
  v118 = v117;
  sub_22C36FB04(&v228);
  v119(v114, v206);
  v120 = v207;
  sub_22C907FDC();
  v121 = sub_22C90685C();
  v123 = v122;
  sub_22C36FB04(&a11);
  v124(v120, v209);
  v125 = v29[1];
  v224 = *v29;
  v225 = v125;
  v126 = v29[3];
  v226 = v29[2];
  v227 = v126;
  sub_22C36DD28(&v224, &qword_27D9C0BB0, &qword_22C92A998);
  v127 = v198;
  *v29 = v101;
  *(v29 + 1) = v127;
  *(v29 + 2) = v105;
  *(v29 + 3) = v107;
  *(v29 + 4) = v116;
  *(v29 + 5) = v118;
  *(v29 + 6) = v121;
  *(v29 + 7) = v123;
  v128 = type metadata accessor for ResponseCatalogMatcher(0);
  v129 = v128[5];
  v130 = sub_22C90806C();
  v131 = *(*(v130 - 8) + 16);
  v209 = v130;
  v131(v29 + v129, v104);
  v132 = v210;
  sub_22C379DF8(v220, v210, &qword_27D9BB138, &qword_22C90DB70);
  v133 = sub_22C90046C();
  if (sub_22C370B74(v132, 1, v133) == 1)
  {
    v134 = v128;
    v135 = v211;
    if (qword_2814357B8 != -1)
    {
      sub_22C371ED0();
    }

    v136 = v216;
    v137 = sub_22C37AA60(v216, qword_281437588);
    sub_22C3870A4();
    swift_beginAccess();
    sub_22C36C57C();
    v138 = v217;
    sub_22C382BD4(v137, v217, v139);
    v140 = *(v136 + 72);
    sub_22C3A5908(&qword_27D9BE020, &qword_22C91CD10);
    sub_22C901EDC();
    LODWORD(v140) = v222;
    sub_22C38C258();
    sub_22C38B6EC(v138, v141);
    v99 = v140 == 1;
    v142 = v194;
    if (v99)
    {
      sub_22C86D044();
    }

    else
    {
      sub_22C3879D0();
    }

    v145 = sub_22C902D7C();
    v128 = v134;
    if (sub_22C379BB0(v145) == 1)
    {
      sub_22C36DD28(v142, &qword_27D9BD698, &qword_22C9187B0);
      v146 = sub_22C36FD7C();
      sub_22C36C640(v146, v147, 1, v133);
    }

    else
    {
      sub_22C902D5C();
      sub_22C36BBA8(v138);
      v149 = *(v148 + 8);
      v150 = sub_22C37170C();
      v151(v150);
    }

    v144 = v219;
    sub_22C36D0A8(v132, 1, v133);
    if (!v99)
    {
      sub_22C36DD28(v132, &qword_27D9BB138, &qword_22C90DB70);
    }
  }

  else
  {
    sub_22C36BBA8(v133);
    v135 = v211;
    (*(v143 + 32))(v211, v132, v133);
    sub_22C36C640(v135, 0, 1, v133);
    v144 = v219;
  }

  v152 = v128[7];
  sub_22C871D44(v135, v29 + v152);
  v153 = v29 + v152;
  v154 = v212;
  sub_22C379DF8(v153, v212, &qword_27D9BB138, &qword_22C90DB70);
  sub_22C36D0A8(v154, 1, v133);
  if (v99)
  {
    sub_22C36DD28(v154, &qword_27D9BB138, &qword_22C90DB70);
    v164 = 1;
  }

  else
  {
    v155 = v196;
    v156 = v195;
    v157 = v128;
    v158 = v197;
    (*(v196 + 104))(v195, *MEMORY[0x277CC91D8], v197);
    sub_22C3858B4();
    sub_22C90042C();
    v159 = v158;
    v128 = v157;
    (*(v155 + 8))(v156, v159);
    sub_22C36BBA8(v133);
    v161 = *(v160 + 8);
    v162 = sub_22C37B9B0();
    v163(v162);
    v164 = 0;
  }

  sub_22C36C640(v144, v164, 1, v133);
  v165 = v213;
  sub_22C379DF8(v144, v213, &qword_27D9BB138, &qword_22C90DB70);
  v166 = type metadata accessor for DefaultCATResponseDialogGenerator();
  v167 = *(v166 + 48);
  v168 = *(v166 + 52);
  swift_allocObject();
  v169 = sub_22C3835E0(v165);
  v170 = (v29 + v128[8]);
  v170[3] = v166;
  v170[4] = &off_283FC29B0;
  *v170 = v169;
  if (qword_2814357B8 != -1)
  {
    sub_22C371ED0();
  }

  v171 = v216;
  v172 = sub_22C37AA60(v216, qword_281437588);
  sub_22C3870A4();
  swift_beginAccess();
  sub_22C36C57C();
  v173 = v217;
  sub_22C382BD4(v172, v217, v174);
  v175 = *(v171 + 72);
  sub_22C3A5908(&qword_27D9BE020, &qword_22C91CD10);
  sub_22C901EDC();
  LODWORD(v175) = v221;
  sub_22C38C258();
  sub_22C38B6EC(v173, v176);
  v99 = v175 == 1;
  v177 = v214;
  if (v99)
  {
    sub_22C86D044();
  }

  else
  {
    sub_22C3879D0();
  }

  v178 = sub_22C902D7C();
  if (sub_22C379BB0(v178) == 1)
  {
    sub_22C36DD28(v177, &qword_27D9BD698, &qword_22C9187B0);
LABEL_32:
    sub_22C36DD28(v220, &qword_27D9BB138, &qword_22C90DB70);
    v189 = sub_22C386BF4();
    v190(v189);
    sub_22C36DD28(v219, &qword_27D9BB138, &qword_22C90DB70);
    sub_22C36DD28(v218, &qword_27D9BC1E8, &qword_22C9123B0);

    v186 = 0xE700000000000000;
    v184 = 0x6E776F6E6B6E75;
    goto LABEL_33;
  }

  v179 = sub_22C902D6C();
  sub_22C36BBA8(v173);
  v181 = *(v180 + 8);
  v182 = sub_22C37170C();
  v183(v182);
  if (!v179)
  {
    goto LABEL_32;
  }

  v184 = sub_22C6054B8(0x7265567465737341, 0xEC0000006E6F6973, v179);
  v186 = v185;

  if (!v186)
  {
    goto LABEL_32;
  }

  sub_22C36DD28(v220, &qword_27D9BB138, &qword_22C90DB70);
  v187 = sub_22C386BF4();
  v188(v187);
  sub_22C36DD28(v219, &qword_27D9BB138, &qword_22C90DB70);
  sub_22C36DD28(v218, &qword_27D9BC1E8, &qword_22C9123B0);
LABEL_33:
  v191 = (v29 + v128[6]);
  *v191 = v184;
  v191[1] = v186;
  sub_22C36CC48();
}

uint64_t sub_22C86DF98()
{
  v1 = sub_22C9026BC();
  v2 = sub_22C369824(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  v9 = v8 - v7;
  v10 = *(v4 + 16);
  v11 = sub_22C37170C();
  v12(v11);
  v13 = (*(v4 + 88))(v9, v1);
  if (v13 == *MEMORY[0x277D1CBF0])
  {
    v0 = 0x73736563637573;
  }

  else
  {
    if (v13 != *MEMORY[0x277D1CB98])
    {
      if (v13 == *MEMORY[0x277D1CBA8] || v13 == *MEMORY[0x277D1CBB0])
      {
        sub_22C387644();
        v0 = v14 - 1;
        goto LABEL_8;
      }

      if (v13 != *MEMORY[0x277D1CBB8])
      {
        if (v13 == *MEMORY[0x277D1CBD0])
        {
          sub_22C387644();
          v0 = v16 + 2;
          goto LABEL_8;
        }

        if (v13 == *MEMORY[0x277D1CBD8])
        {
          sub_22C387644();
          v0 = v17 | 4;
          goto LABEL_8;
        }

        if (v13 != *MEMORY[0x277D1CBC0])
        {
          if (v13 == *MEMORY[0x277D1CBE0])
          {
            sub_22C387644();
            v0 = v18 | 8;
            goto LABEL_8;
          }

          if (v13 == *MEMORY[0x277D1CBA0])
          {
            sub_22C387644();
            v0 = v19 - 2;
            goto LABEL_8;
          }

          if (v13 != *MEMORY[0x277D1CBC8] && v13 == *MEMORY[0x277D1CBE8])
          {
            v0 = 0x6572756C696166;
            goto LABEL_8;
          }
        }
      }
    }

    sub_22C871F5C();
  }

LABEL_8:
  (*(v4 + 8))(v9, v1);
  return v0;
}

uint64_t *sub_22C86E25C()
{
  v3 = sub_22C9063DC();
  v4 = sub_22C369824(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  v9 = sub_22C36FC2C();
  v11 = sub_22C3A5908(v9, v10);
  sub_22C369914(v11);
  v13 = *(v12 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v14);
  v15 = sub_22C371BB4();
  v16 = type metadata accessor for ResponseCatalogMatcher(v15);
  sub_22C379DF8(v0 + *(v16 + 28), v2, &qword_27D9BB138, &qword_22C90DB70);
  v17 = sub_22C90046C();
  v18 = sub_22C36FD7C();
  if (sub_22C370B74(v18, v19, v17) == 1)
  {
    sub_22C36DD28(v2, &qword_27D9BB138, &qword_22C90DB70);
    sub_22C90405C();
    v20 = sub_22C9063CC();
    v21 = sub_22C90AADC();
    if (os_log_type_enabled(v20, v21))
    {
      sub_22C3720F4();
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_22C366000, v20, v21, "Could not get path for Catalog DB", v22, 2u);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    v23 = *(v6 + 8);
    v24 = sub_22C37B9B0();
    v25(v24);
    return 0;
  }

  else
  {
    sub_22C9003EC();
    sub_22C36BBA8(v17);
    (*(v26 + 8))(v2, v17);
    sub_22C86E4CC();

    v27 = sub_22C37B9B0();
    v29 = sub_22C86E54C(v27, v28);
    if (!v1)
    {
      v0 = v29;
    }
  }

  return v0;
}

uint64_t sub_22C86E4CC()
{

  v1 = sub_22C90A49C();
  sub_22C90A35C();
  return v1;
}

uint64_t *sub_22C86E54C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = type metadata accessor for ResponseCatalog(0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();

  ResponseCatalogDatabase.init(_:)(a1, a2);
  sub_22C872614();
  v17 = v4[1];
  if (v17)
  {
    v18 = *v4;
    v20 = v4[4];
    v19 = v4[5];
    v22 = v4[6];
    v21 = v4[7];
    *&v53 = *v4;
    *(&v53 + 1) = v17;
    v54 = *(v4 + 1);
    *&v55 = v20;
    *(&v55 + 1) = v19;
    *&v56 = v22;
    *(&v56 + 1) = v21;
    sub_22C86C054(&v53, v10, v11, v12, v13, v14, v15, v16, v41, v42, v43, v44, v45, v46, v47, v48, v49, *(&v49 + 1), v50, *(&v50 + 1));
    if (v3)
    {
    }

    else
    {
      v4 = v23;
      if (!v23)
      {
        *&v53 = v18;
        *(&v53 + 1) = v17;
        *&v54 = 5852737;
        *(&v54 + 1) = 0xE300000000000000;
        *&v55 = v20;
        *(&v55 + 1) = v19;
        *&v56 = v22;
        *(&v56 + 1) = v21;
        v49 = v53;
        v50 = v54;
        v51 = v55;
        v52 = v56;
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();

        sub_22C86C054(&v49, v25, v26, v27, v28, v29, v30, v31, v41, v42, v43, v44, v45, v46, v47, v48, v49, *(&v49 + 1), v50, *(&v50 + 1));
        v4 = v32;
        sub_22C871D14(&v53);
        if (!v4)
        {
          *&v51 = v20;
          *(&v51 + 1) = v19;
          *&v52 = v22;
          *(&v52 + 1) = v21;
          sub_22C86C054(&v41, v33, v34, v35, v36, v37, v38, v39, 5852737, 0xE300000000000000, 5852737, 0xE300000000000000, v20, v19, v22, v21, 5852737, 0xE300000000000000, 5852737, 0xE300000000000000);
          v4 = v40;

          sub_22C871D14(&v49);
          return v4;
        }
      }
    }
  }

  else
  {

    return 0;
  }

  return v4;
}

uint64_t sub_22C86E748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[36] = a3;
  v4[37] = v3;
  v4[34] = a1;
  v4[35] = a2;
  v5 = type metadata accessor for ResponseCatalogMatcher(0);
  v4[38] = v5;
  sub_22C369914(v5);
  v7 = *(v6 + 64);
  v4[39] = sub_22C3699D4();
  v8 = sub_22C9063DC();
  v4[40] = v8;
  sub_22C3699B8(v8);
  v4[41] = v9;
  v11 = *(v10 + 64) + 15;
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  v12 = sub_22C9021BC();
  v4[44] = v12;
  sub_22C3699B8(v12);
  v4[45] = v13;
  v15 = *(v14 + 64);
  v4[46] = sub_22C3699D4();
  v16 = sub_22C90687C();
  v4[47] = v16;
  sub_22C3699B8(v16);
  v4[48] = v17;
  v19 = *(v18 + 64);
  v4[49] = sub_22C3699D4();
  v20 = sub_22C90077C();
  v4[50] = v20;
  sub_22C3699B8(v20);
  v4[51] = v21;
  v23 = *(v22 + 64);
  v4[52] = sub_22C3699D4();
  v24 = sub_22C3A5908(&qword_27D9BB138, &qword_22C90DB70);
  sub_22C369914(v24);
  v26 = *(v25 + 64);
  v4[53] = sub_22C3699D4();

  return MEMORY[0x2822009F8](sub_22C86E944, 0, 0);
}

uint64_t sub_22C86E944()
{
  v1 = *(v0 + 280);
  sub_22C3870A4();
  swift_beginAccess();
  v3 = *(v1 + 64);
  v2 = *(v1 + 72);
  *(v0 + 432) = v2;
  if (!v2)
  {
    v6 = *(v0 + 336);
    v7 = *(v0 + 312);
    v8 = *(v0 + 296);
    sub_22C90405C();
    v9 = sub_22C36A724();
    sub_22C382BD4(v9, v10, v11);
    v12 = sub_22C9063CC();
    v13 = sub_22C90AABC();
    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 328);
    v16 = *(v0 + 336);
    v18 = *(v0 + 312);
    v17 = *(v0 + 320);
    if (v14)
    {
      sub_22C36BED8();
      v76 = v16;
      v19 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      *v19 = 136315138;
      v20 = v18[2];
      v21 = v18[3];
      v23 = *v18;
      v22 = v18[1];
      *(v0 + 48) = v20;
      *(v0 + 64) = v21;
      *(v0 + 16) = v23;
      *(v0 + 32) = v22;
      *(v0 + 80) = v23;
      *(v0 + 96) = v22;
      *(v0 + 112) = v20;
      *(v0 + 128) = v21;
      sub_22C379DF8(v0 + 16, v0 + 144, &qword_27D9C0BB0, &qword_22C92A998);
      v24 = sub_22C36CC9C();
      sub_22C3A5908(v24, v25);
      sub_22C90A1AC();
      sub_22C38AC10();
      v26 = sub_22C36CC9C();
      v29 = sub_22C36F9F4(v26, v27, v28);

      *(v19 + 4) = v29;
      _os_log_impl(&dword_22C366000, v12, v13, "ResponseValidator did not find a CAT ID for %s", v19, 0xCu);
      sub_22C36FF94(v77);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();

      (*(v15 + 8))(v76, v17);
    }

    else
    {

      sub_22C38AC10();
      (*(v15 + 8))(v16, v17);
    }

    v43 = *(v0 + 272);
    goto LABEL_11;
  }

  v5 = *(v0 + 288);
  v4 = *(v0 + 296);

  sub_22C86F24C();
  v31 = v30;
  sub_22C379DF8(*(v0 + 296) + *(*(v0 + 304) + 28), *(v0 + 424), &qword_27D9BB138, &qword_22C90DB70);
  v32 = sub_22C90046C();
  v33 = sub_22C379BB0(v32);
  v34 = *(v0 + 424);
  if (v33 == 1)
  {
    v35 = *(v0 + 344);

    sub_22C36DD28(v34, &qword_27D9BB138, &qword_22C90DB70);
    sub_22C90405C();
    v36 = sub_22C9063CC();
    v37 = sub_22C90AADC();
    if (os_log_type_enabled(v36, v37))
    {
      sub_22C3720F4();
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_22C366000, v36, v37, "Could not get path for Catalog DB", v38, 2u);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    v39 = *(v0 + 344);
    v40 = *(v0 + 320);
    v41 = *(v0 + 328);
    v42 = *(v0 + 272);

    (*(v41 + 8))(v39, v40);
LABEL_11:
    sub_22C90234C();
    v44 = sub_22C36CCF8();
    sub_22C36C640(v44, v45, 1, v46);
    sub_22C871F38();

    sub_22C369A24();
    sub_22C36D5F8();

    __asm { BRAA            X1, X16 }
  }

  v50 = *(v0 + 296);
  v49 = *(v0 + 304);
  sub_22C9003EC();

  sub_22C36BBA8(0);
  v52 = *(v51 + 8);
  v53 = sub_22C37170C();
  v54(v53);
  sub_22C378A4C(v50 + *(v49 + 32), v0 + 208);
  v55 = sub_22C374168((v0 + 208), *(v0 + 232));
  if (!v31)
  {
    v31 = sub_22C909F0C();
  }

  *(v0 + 440) = v31;
  v56 = *(v0 + 416);
  v57 = *(v0 + 392);
  v58 = *(v0 + 368);
  v59 = *(v0 + 296);
  v60 = *(*(v0 + 304) + 20);
  sub_22C907FFC();
  sub_22C907FDC();
  sub_22C907FEC();
  v61 = *v55;
  v62 = swift_task_alloc();
  *(v0 + 448) = v62;
  *v62 = v0;
  v62[1] = sub_22C86EE64;
  v63 = *(v0 + 416);
  v64 = *(v0 + 392);
  v65 = *(v0 + 368);
  v66 = *(v0 + 272);
  sub_22C36D5F8();

  return sub_22C87CD94(v67, v68, v69, v70, v71, v72, v73);
}

uint64_t sub_22C86EE64()
{
  v2 = *v1;
  v3 = *(*v1 + 448);
  v20 = *v1;
  *(*v1 + 456) = v0;

  v4 = v2[55];
  v5 = v2[54];
  v19 = v2[52];
  v6 = v2[51];
  v7 = v2[50];
  v8 = v2[49];
  v9 = v2[48];
  v10 = v2[47];
  v11 = v2[46];
  v12 = v2[45];
  v13 = v2[44];

  (*(v12 + 8))(v11, v13);
  (*(v9 + 8))(v8, v10);
  (*(v6 + 8))(v19, v7);
  sub_22C36D5F8();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_22C86F0C8()
{
  v1 = *(v0 + 272);
  v2 = sub_22C90234C();
  sub_22C36C640(v1, 0, 1, v2);
  sub_22C36FF94((v0 + 208));
  sub_22C871F38();

  sub_22C369A24();

  return v3();
}

uint64_t sub_22C86F18C()
{
  sub_22C36FF94(v0 + 26);
  v1 = v0[57];
  v3 = v0[52];
  v2 = v0[53];
  v4 = v0[49];
  v5 = v0[46];
  v7 = v0[42];
  v6 = v0[43];
  v8 = v0[39];

  sub_22C369A24();

  return v9();
}

void sub_22C86F24C()
{
  sub_22C370030();
  v242 = v1;
  v3 = v0;
  v234 = v4;
  v253 = *MEMORY[0x277D85DE8];
  v5 = sub_22C9063DC();
  v6 = sub_22C369824(v5);
  v238 = v7;
  v239 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v10);
  sub_22C36BA64();
  sub_22C3698F8(v11);
  v216 = sub_22C90A17C();
  v12 = sub_22C369824(v216);
  v215 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22C3698A8();
  v214 = v16;
  v17 = sub_22C3A5908(&qword_27D9BF9F0, &unk_22C92DAD0);
  sub_22C369914(v17);
  v19 = *(v18 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v20);
  sub_22C3698F8(&v213 - v21);
  v220 = sub_22C90077C();
  v22 = sub_22C369824(v220);
  v219 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22C3698A8();
  v218 = v26;
  v27 = sub_22C3A5908(&qword_27D9BF328, &qword_22C9225C0);
  sub_22C369914(v27);
  v29 = *(v28 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v30);
  sub_22C3698F8(&v213 - v31);
  v241 = sub_22C907DEC();
  v32 = sub_22C369824(v241);
  v226 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22C3698A8();
  sub_22C3698F8(v36);
  v225 = sub_22C906ECC();
  v37 = sub_22C369824(v225);
  v224 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  sub_22C3698A8();
  sub_22C3698F8(v41);
  v229 = sub_22C9026AC();
  v42 = sub_22C369824(v229);
  v228 = v43;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v42);
  sub_22C3698A8();
  sub_22C3698F8(v46);
  v47 = sub_22C907C5C();
  v48 = sub_22C369824(v47);
  v50 = v49;
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v48);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v53);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v54);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v55);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v56);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v57);
  v59 = &v213 - v58;
  v60 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  v61 = sub_22C369914(v60);
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v61);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v64);
  v66 = &v213 - v65;
  v67 = type metadata accessor for TypedValueFormatter(0);
  v68 = v67 - 8;
  v69 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  sub_22C369838();
  v70 = sub_22C371BB4();
  v71 = *(type metadata accessor for ResponseCatalogMatcher(v70) + 20);
  sub_22C907FFC();
  v72 = *(v68 + 28);
  v232 = v2;
  v73 = (v2 + v72);
  *v73 = 0;
  v73[1] = 0;
  sub_22C90803C();
  sub_22C907C3C();
  v74 = *(v50 + 8);
  v244 = v47;
  v236 = v50 + 8;
  v243 = v74;
  v74(v59, v47);
  sub_22C908EAC();
  v75 = sub_22C36CCF8();
  v240 = v76;
  if (sub_22C370B74(v75, v77, v76) == 1)
  {
    sub_22C36DD28(v66, &qword_27D9BC1E8, &qword_22C9123B0);
    v78 = MEMORY[0x277D84F90];
  }

  else
  {
    v78 = sub_22C908DCC();
    sub_22C36BBA8(v240);
    (*(v79 + 8))(v66);
  }

  v233 = sub_22C909F0C();
  v80 = v223;
  sub_22C90802C();
  sub_22C37205C(&v252);
  sub_22C906EBC();
  sub_22C36FB04(&v251 + 8);
  v81(v80, v225);
  v82 = v230;
  sub_22C907DDC();
  sub_22C36FB04(&v253);
  v83(v71, v241);
  v84 = sub_22C36CCF8();
  v85 = v229;
  v87 = sub_22C370B74(v84, v86, v229);
  v241 = v71;
  v88 = v228;
  v89 = v227;
  if (v87 == 1)
  {
    sub_22C36DD28(v82, &qword_27D9BF328, &qword_22C9225C0);
    sub_22C37205C(&v245);
    sub_22C90803C();
    v90 = v221;
    sub_22C907C4C();
    v243(v71, v244);
    v91 = sub_22C9086FC();
    v92 = sub_22C36CCF8();
    if (sub_22C370B74(v92, v93, v91) == 1)
    {

      sub_22C36DD28(v90, &qword_27D9BF9F0, &unk_22C92DAD0);
      v94 = v241;
      goto LABEL_19;
    }

    v102 = v90;
    v103 = v242;
    v104 = sub_22C8F256C(v78, v234);
    v101 = v103;
    if (v103)
    {

      sub_22C36BBA8(v91);
      (*(v105 + 8))(v102, v91);
      goto LABEL_11;
    }

    v106 = v104;

    sub_22C36BBA8(v91);
    (*(v107 + 8))(v102, v91);
LABEL_14:
    v248 = v106;
    sub_22C3A5908(&qword_27D9C0B98, &qword_22C92A978);
    sub_22C871C34();
    sub_22C909F5C();
    v94 = v241;
    v242 = 0;

    v165 = v214;
    sub_22C90A15C();
    sub_22C90A12C();
    v167 = v166;

    sub_22C36FB04(&v244);
    v168(v165, v216);
    if (v167 >> 60 == 15)
    {
      v169 = 0xC000000000000000;
    }

    else
    {
      v169 = v167;
    }

    v170 = objc_opt_self();
    sub_22C36BA00();
    v171 = sub_22C90050C();
    v172 = sub_22C36BA00();
    sub_22C38B120(v172, v173);
    v248 = 0;
    v174 = [v170 JSONObjectWithData:v171 options:0 error:&v248];

    v175 = v248;
    if (v174)
    {
      sub_22C90ADDC();
      swift_unknownObjectRelease();
      v176 = sub_22C871F2C();
      sub_22C36F998(v176, v177);
      sub_22C3A5908(&qword_27D9BFAE0, &unk_22C92A980);
      if (swift_dynamicCast())
      {
        sub_22C8A598C(v247);
        sub_22C3743B4();
        v178 = v233;
        swift_isUniquelyReferenced_nonNull_native();
        v248 = v178;
        sub_22C36A4C0();
        v179 = v242;
        sub_22C8719D4(v169, v180, 0, v181, &v248);
        v242 = v179;
        sub_22C36FF94(&v251);
        v233 = v248;
      }

      else
      {
        sub_22C36FF94(&v251);
      }

      goto LABEL_19;
    }

    v198 = v175;
    v101 = sub_22C90030C();

    swift_willThrow();
    goto LABEL_15;
  }

  (*(v228 + 32))(v227, v82, v85);
  sub_22C37205C(&v246);
  sub_22C907FFC();
  v95 = sub_22C9006BC();
  v97 = v96;
  sub_22C36FB04(&v247);
  v98(v71, v220);
  v99 = v242;
  v100 = sub_22C8F1DEC(v78, v95, v97);
  v101 = v99;
  if (!v99)
  {
    v106 = v100;
    (*(v88 + 8))(v89, v85);

    goto LABEL_14;
  }

  (*(v88 + 8))(v89, v85);

LABEL_11:
  v94 = v241;
LABEL_15:
  v242 = 0;
  sub_22C90405C();
  v108 = v101;
  v109 = sub_22C9063CC();
  v110 = sub_22C90AADC();

  if (os_log_type_enabled(v109, v110))
  {
    sub_22C36BED8();
    v111 = swift_slowAlloc();
    v112 = swift_slowAlloc();
    *v111 = 138412290;
    v113 = v101;
    v114 = _swift_stdlib_bridgeErrorToNSError();
    *(v111 + 4) = v114;
    *v112 = v114;
    _os_log_impl(&dword_22C366000, v109, v110, "Error getting formattedParams: %@", v111, 0xCu);
    sub_22C36DD28(v112, &qword_27D9BB158, qword_22C910FD0);
    v94 = v241;
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  else
  {
  }

  (*(v238 + 8))(v237, v239);
LABEL_19:
  v115 = sub_22C90804C();
  sub_22C8EB724(v115);
  sub_22C3743B4();
  v252 = sub_22C3A5908(&qword_27D9C0B90, &qword_22C92A970);
  *&v251 = v3 + v94;
  v116 = sub_22C871F2C();
  sub_22C456E34(v116, v117);
  v118 = v233;
  swift_isUniquelyReferenced_nonNull_native();
  v247 = v118;
  sub_22C62F20C();
  v119 = v247;
  ResponseGenerationInput.parameterConfirmationValueStatementResultIndex.getter();
  if (v121)
  {
    v237 = v119;
  }

  else
  {
    v252 = MEMORY[0x277D83B88];
    *&v251 = v120;
    v122 = sub_22C871F2C();
    sub_22C456E34(v122, v123);
    swift_isUniquelyReferenced_nonNull_native();
    v247 = v119;
    sub_22C62F20C();
    v237 = v247;
  }

  v124 = v235;
  v125 = v234;
  v126 = v231;
  sub_22C90803C();
  v127 = v242;
  v128 = sub_22C8EBCC4();
  v129 = v126;
  v130 = v127;
  if (v127)
  {
    v243(v126, v244);
    v242 = 0;
LABEL_27:
    sub_22C90405C();
    v141 = v130;
    v142 = sub_22C9063CC();
    v143 = sub_22C90AADC();

    if (os_log_type_enabled(v142, v143))
    {
      sub_22C36BED8();
      v144 = swift_slowAlloc();
      v145 = swift_slowAlloc();
      *&v251 = v145;
      *v144 = 136315138;
      swift_getErrorValue();
      v146 = sub_22C90B57C();
      v148 = sub_22C36F9F4(v146, v147, &v251);

      *(v144 + 4) = v148;
      _os_log_impl(&dword_22C366000, v142, v143, "Error getting DialogValue params: %s", v144, 0xCu);
      sub_22C36FF94(v145);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    else
    {
    }

    (*(v238 + 8))(v124, v239);
    v149 = v237;
    goto LABEL_31;
  }

  v131 = v128;
  v132 = (v243)(v129, v244);
  MEMORY[0x28223BE20](v132);
  sub_22C369920();
  *(v133 - 16) = v125;
  *(v133 - 8) = v3;
  sub_22C37EE44();
  sub_22C3743B4();
  sub_22C36FF20();
  *&v251 = v131;
  sub_22C36A4C0();
  sub_22C37B854(v134, v135, v136, v137);
  sub_22C3818B8();
  v138 = v217;
  sub_22C90803C();
  sub_22C8EBE00();
  v130 = v131;
  if (v131)
  {
    v140 = v138;
LABEL_26:
    v243(v140, v244);
    v242 = 0;
    v124 = v235;
    goto LABEL_27;
  }

  v182 = v139;
  v243(v138, v244);
  v183 = sub_22C36BA00();
  v186 = sub_22C8EF95C(v183, v184, v185, v182);

  MEMORY[0x28223BE20](v187);
  sub_22C369920();
  *(v188 - 16) = v234;
  *(v188 - 8) = v3;
  sub_22C37EE44();
  sub_22C3743B4();
  sub_22C36FF20();
  *&v251 = v186;
  sub_22C36A4C0();
  sub_22C37B854(v189, v190, v191, v192);
  sub_22C3818B8();
  v193 = v213;
  sub_22C90803C();
  v194 = sub_22C8EBE00();
  v130 = v186;
  if (v186)
  {
    v140 = v193;
    goto LABEL_26;
  }

  v202 = v194;
  v203 = v195;
  v204 = v196;
  v205 = v197;
  v243(v193, v244);
  v206 = sub_22C8EF95C(v202, v203, v204 & 1, v205);

  MEMORY[0x28223BE20](v207);
  sub_22C369920();
  *(v208 - 16) = v234;
  *(v208 - 8) = v3;
  sub_22C37EE44();
  sub_22C3743B4();
  sub_22C36FF20();
  *&v251 = v206;
  sub_22C36A4C0();
  sub_22C37B854(v209, v210, v211, v212);
  v242 = 0;
  v149 = v251;
LABEL_31:
  sub_22C605DE8(v149, &v251);
  v150 = v241;
  if (!v252)
  {
    goto LABEL_39;
  }

  sub_22C3A5908(&qword_27D9BAB50, &qword_22C90D3F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_40;
  }

  sub_22C605DE8(v248, &v251);

  if (v252)
  {
    v151 = MEMORY[0x277D837D0];
    if (swift_dynamicCast())
    {
      v237 = v149;
      v153 = v248;
      v152 = v249;
      if ((v248 || v249 != 0xE000000000000000) && (sub_22C90B4FC() & 1) == 0)
      {
        v252 = v151;
        *&v251 = v153;
        *(&v251 + 1) = v152;
        v199 = sub_22C871F2C();
        sub_22C456E34(v199, v200);
        v201 = v237;
        swift_isUniquelyReferenced_nonNull_native();
        v247 = v201;
LABEL_44:
        sub_22C62F20C();
        sub_22C871ED0();
        goto LABEL_46;
      }

      v150 = v241;
      v149 = v237;
    }
  }

  else
  {
LABEL_39:
    sub_22C36DD28(&v251, &qword_27D9BD5D8, &qword_22C918510);
  }

LABEL_40:
  sub_22C37205C(&v250);
  sub_22C90803C();
  v154 = v222;
  sub_22C907C3C();
  v243(v150, v244);
  v155 = sub_22C36FD7C();
  if (sub_22C370B74(v155, v156, v240) != 1)
  {
    v157 = v149;
    v158 = sub_22C908E0C();
    v160 = v159;
    sub_22C36BBA8(v240);
    (*(v161 + 8))(v154);
    if (!v160)
    {
      sub_22C871ED0();
      goto LABEL_46;
    }

    v252 = MEMORY[0x277D837D0];
    *&v251 = v158;
    *(&v251 + 1) = v160;
    v162 = sub_22C871F2C();
    sub_22C456E34(v162, v163);
    swift_isUniquelyReferenced_nonNull_native();
    v247 = v157;
    goto LABEL_44;
  }

  sub_22C871ED0();
  sub_22C36DD28(v154, &qword_27D9BC1E8, &qword_22C9123B0);
LABEL_46:
  v164 = *MEMORY[0x277D85DE8];
  sub_22C36FB20();
}

void ResponseGenerationInput.parameterConfirmationValueStatementResultIndex.getter()
{
  sub_22C36BA7C();
  v3 = sub_22C3A5908(&qword_27D9BF318, &qword_22C9225A0);
  sub_22C369914(v3);
  v5 = *(v4 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v6);
  v67 = &v59 - v7;
  sub_22C36BA0C();
  v8 = sub_22C9025EC();
  v9 = sub_22C369824(v8);
  v65 = v10;
  v66 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22C3698A8();
  v64 = v13;
  sub_22C36BA0C();
  v68 = sub_22C901ECC();
  v14 = sub_22C369824(v68);
  v60 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22C3698A8();
  v59 = v18;
  sub_22C36BA0C();
  v19 = sub_22C9026BC();
  v20 = sub_22C369824(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22C369838();
  v27 = v26 - v25;
  v28 = sub_22C907DEC();
  v29 = sub_22C369824(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22C369838();
  sub_22C371BB4();
  v34 = sub_22C906ECC();
  v35 = sub_22C369824(v34);
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v35);
  sub_22C369838();
  sub_22C37B6BC();
  v40 = sub_22C9029AC();
  v41 = sub_22C369824(v40);
  v62 = v42;
  v63 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v41);
  sub_22C3698A8();
  v69 = v45;
  v61 = v0;
  sub_22C90802C();
  sub_22C906EBC();
  (*(v37 + 8))(v1, v34);
  sub_22C907DAC();
  (*(v31 + 8))(v2, v28);
  if ((*(v22 + 88))(v27, v19) == *MEMORY[0x277D1CBD0])
  {
    (*(v22 + 96))(v27, v19);
    v47 = v62;
    v46 = v63;
    (*(v62 + 32))(v69, v27, v63);
    v48 = v64;
    sub_22C90298C();
    v49 = v67;
    sub_22C9025BC();
    (*(v65 + 8))(v48, v66);
    v50 = sub_22C36CCF8();
    v51 = v68;
    sub_22C36D0A8(v50, v52, v68);
    if (v53)
    {
      (*(v47 + 8))(v69, v46);
      sub_22C36DD28(v49, &qword_27D9BF318, &qword_22C9225A0);
    }

    else
    {
      v55 = v59;
      v54 = v60;
      (*(v60 + 32))(v59, v49, v51);
      v56 = sub_22C90804C();
      MEMORY[0x28223BE20](v56);
      sub_22C369920();
      *(v57 - 16) = v55;
      sub_22C86A5F0(sub_22C870E6C, v58, v56);

      (*(v47 + 8))(v69, v46);
      (*(v54 + 8))(v55, v51);
    }
  }

  else
  {
    (*(v22 + 8))(v27, v19);
  }

  sub_22C36CC48();
}

void sub_22C870A60()
{
  sub_22C370030();
  v18 = v0;
  v2 = v1;
  v4 = v3;
  v5 = sub_22C90077C();
  v6 = sub_22C369824(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  v13 = v12 - v11;
  v14 = v2 + *(type metadata accessor for ResponseCatalogMatcher(0) + 20);
  sub_22C907FFC();
  v15 = sub_22C9006BC();
  v17 = v16;
  (*(v8 + 8))(v13, v5);
  v18(v4, v15, v17);

  sub_22C36FB20();
}

uint64_t sub_22C870B80()
{
  v0 = sub_22C901FAC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - v6;
  v8 = sub_22C906ECC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C907C0C();
  sub_22C906E1C();
  v13 = (*(v9 + 8))(v12, v8);
  MEMORY[0x2318AF390](v13);
  v14 = sub_22C901F6C();
  v15 = *(v1 + 8);
  v15(v5, v0);
  v15(v7, v0);
  return v14 & 1;
}

unint64_t sub_22C870D58()
{
  result = qword_27D9C0B08;
  if (!qword_27D9C0B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0B08);
  }

  return result;
}

uint64_t sub_22C870E04@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_22C870E38()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_22C86CEEC();
}

unint64_t sub_22C870E90()
{
  result = qword_27D9C0B28;
  if (!qword_27D9C0B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0B28);
  }

  return result;
}

unint64_t sub_22C870EE8()
{
  result = qword_27D9C0B30;
  if (!qword_27D9C0B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0B30);
  }

  return result;
}

unint64_t sub_22C870F40()
{
  result = qword_27D9C0B38;
  if (!qword_27D9C0B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0B38);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RequestedResponseMode(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for ResponseCatalogAsset(_BYTE *result, int a2, int a3)
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

void sub_22C871658()
{
  sub_22C871714();
  if (v0 <= 0x3F)
  {
    sub_22C90806C();
    if (v1 <= 0x3F)
    {
      sub_22C5D37EC();
      if (v2 <= 0x3F)
      {
        sub_22C871764();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22C871714()
{
  if (!qword_27D9C0B70)
  {
    v0 = sub_22C90AC6C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D9C0B70);
    }
  }
}

unint64_t sub_22C871764()
{
  result = qword_281431E28[0];
  if (!qword_281431E28[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_281431E28);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CatalogEntry.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22C8718A0()
{
  result = qword_27D9C0B78;
  if (!qword_27D9C0B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0B78);
  }

  return result;
}

unint64_t sub_22C8718F8()
{
  result = qword_27D9C0B80;
  if (!qword_27D9C0B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0B80);
  }

  return result;
}

unint64_t sub_22C871950()
{
  result = qword_27D9C0B88;
  if (!qword_27D9C0B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0B88);
  }

  return result;
}

void sub_22C8719A4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_22C870A60();
}

uint64_t sub_22C8719D4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  sub_22C8920A0(v48, a1, a2, a3);
  v44 = v48[0];
  v45 = v48[1];
  v46 = v48[2];
  v47 = v49;
  *(&v37 + 1) = a1;

  *&v37 = a3;

  while (1)
  {
    sub_22C891C58(v9, v10, v11, v12, v13, v14, v15, v16, v37, v38[0], v38[1], v39[0], v39[1], v40, v41, *(&v41 + 1), v42, v43, v44, *(&v44 + 1), v45, *(&v45 + 1), v46, *(&v46 + 1), v47, *&v48[0]);
    v17 = *(&v40 + 1);
    if (!*(&v40 + 1))
    {
      sub_22C36A674();
    }

    v18 = v40;
    sub_22C456E34(&v41, v39);
    v19 = *a5;
    v21 = sub_22C36E2BC(v18, v17);
    v22 = v19[2];
    v23 = (v20 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      break;
    }

    v25 = v20;
    if (v19[3] >= v24)
    {
      if (a4)
      {
        if (v20)
        {
          goto LABEL_10;
        }
      }

      else
      {
        sub_22C3A5908(&qword_27D9BF388, &unk_22C92B1F0);
        sub_22C90B16C();
        if (v25)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_22C88F6B8(v24);
      v26 = *a5;
      v27 = sub_22C36E2BC(v18, v17);
      if ((v25 & 1) != (v28 & 1))
      {
        goto LABEL_18;
      }

      v21 = v27;
      if (v25)
      {
LABEL_10:
        v29 = *a5;
        sub_22C36F998(v39, v38);
        sub_22C36FF94(v39);

        v30 = (v29[7] + 32 * v21);
        sub_22C36FF94(v30);
        v9 = sub_22C456E34(v38, v30);
        goto LABEL_14;
      }
    }

    v31 = *a5;
    *(*a5 + 8 * (v21 >> 6) + 64) |= 1 << v21;
    v32 = (v31[6] + 16 * v21);
    *v32 = v18;
    v32[1] = v17;
    v9 = sub_22C456E34(v39, (v31[7] + 32 * v21));
    v33 = v31[2];
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (v34)
    {
      goto LABEL_17;
    }

    v31[2] = v35;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

void sub_22C871C04()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_22C870A60();
}

unint64_t sub_22C871C34()
{
  result = qword_27D9C0BA0;
  if (!qword_27D9C0BA0)
  {
    sub_22C3AC1A0(&qword_27D9C0B98, &qword_22C92A978);
    sub_22C871CC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0BA0);
  }

  return result;
}

unint64_t sub_22C871CC0()
{
  result = qword_27D9C0BA8;
  if (!qword_27D9C0BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0BA8);
  }

  return result;
}

uint64_t sub_22C871D44(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BB138, &qword_22C90DB70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_22C871DB4()
{
  result = qword_27D9C0BB8;
  if (!qword_27D9C0BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0BB8);
  }

  return result;
}

uint64_t sub_22C871E24@<X0>(_BYTE *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4();
  if (!v2)
  {
    *a1 = 0;
  }

  return result;
}

uint64_t sub_22C871E58(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CatalogEntry();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22C871ED0()
{
  v2 = *(v0 - 304);

  return sub_22C38B6EC(v2, type metadata accessor for TypedValueFormatter);
}

void sub_22C871EFC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

uint64_t sub_22C871F38()
{
  v3 = v0[52];
  v2 = v0[53];
  v4 = v0[49];
  v5 = v0[46];
  v7 = v0[42];
  v6 = v0[43];
  v8 = v0[39];
}

uint64_t sub_22C871F68()
{
  v2 = *(v1 - 88);
  result = v0;
  *(v1 - 152) = *(*(v1 - 96) + 8);
  return result;
}

void sub_22C871F90()
{

  JUMPOUT(0x2318B7850);
}

uint64_t sub_22C871FB0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *a2;
}

uint64_t ResponseCatalogDatabase.init(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_22C90121C();
  v7 = sub_22C369824(v6);
  v43 = v8;
  v44 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  v42 = (v12 - v11);
  v13 = sub_22C90104C();
  v14 = sub_22C369824(v13);
  v40 = v15;
  v41 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22C369838();
  v20 = v19 - v18;
  v21 = sub_22C90AB1C();
  v22 = sub_22C36985C(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22C369838();
  v25 = sub_22C90AB2C();
  v26 = sub_22C369824(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22C369838();
  v33 = v32 - v31;
  v34 = sub_22C909AFC();
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  sub_22C369838();
  *(v3 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime23ResponseCatalogDatabase_databaseQueue) = 0;
  v36 = (v3 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime23ResponseCatalogDatabase_filePath);
  *v36 = a1;
  v36[1] = a2;
  *(v3 + 16) = 0xD000000000000032;
  *(v3 + 24) = 0x800000022C938720;
  sub_22C87238C();
  sub_22C909AEC();
  (*(v28 + 104))(v33, *MEMORY[0x277D85260], v25);
  sub_22C8723D0();
  sub_22C3A5908(&qword_27D9C0BE8, &unk_22C92A9A0);
  sub_22C872428();
  sub_22C90AE4C();
  v37 = sub_22C90AB3C();
  sub_22C90103C();
  (*(v40 + 32))(v3 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime23ResponseCatalogDatabase_config, v20, v41);
  sub_22C388AAC();
  sub_22C90100C();
  swift_endAccess();
  sub_22C909AEC();
  sub_22C388AAC();
  sub_22C900FFC();
  sub_22C900FEC();
  *v42 = 0x3FB999999999999ALL;
  (*(v43 + 104))(v42, *MEMORY[0x277D0B810], v44);
  sub_22C90101C();
  sub_22C90102C();
  v38 = v37;
  sub_22C900FDC();
  swift_endAccess();

  return v3;
}

unint64_t sub_22C87238C()
{
  result = qword_27D9C0BD8;
  if (!qword_27D9C0BD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D9C0BD8);
  }

  return result;
}

unint64_t sub_22C8723D0()
{
  result = qword_27D9C0BE0;
  if (!qword_27D9C0BE0)
  {
    sub_22C90AB1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0BE0);
  }

  return result;
}

unint64_t sub_22C872428()
{
  result = qword_27D9C0BF0;
  if (!qword_27D9C0BF0)
  {
    sub_22C3AC1A0(&qword_27D9C0BE8, &unk_22C92A9A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0BF0);
  }

  return result;
}

uint64_t ResponseCatalogDatabase.deinit()
{
  v1 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime23ResponseCatalogDatabase_databaseQueue;
  v2 = *(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime23ResponseCatalogDatabase_databaseQueue);
  *(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime23ResponseCatalogDatabase_databaseQueue) = 0;

  v3 = *(v0 + 24);

  v4 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime23ResponseCatalogDatabase_config;
  v5 = sub_22C90104C();
  sub_22C36985C(v5);
  (*(v6 + 8))(v0 + v4);
  v7 = *(v0 + v1);

  v8 = *(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime23ResponseCatalogDatabase_filePath + 8);

  return v0;
}

uint64_t sub_22C872524(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime23ResponseCatalogDatabase_databaseQueue))
  {
    MEMORY[0x28223BE20](result);
    sub_22C90108C();

    sub_22C3A5908(&qword_27D9C0B20, &unk_22C92A410);
    sub_22C90109C();
  }

  return result;
}

uint64_t sub_22C872614()
{
  v1 = v0;
  v64 = sub_22C90104C();
  v2 = sub_22C369824(v64);
  v4 = v3;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v2);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v63 = &v56 - v10;
  v11 = sub_22C9063DC();
  v12 = sub_22C369824(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v12);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v56 - v20;
  sub_22C90405C();

  v22 = sub_22C9063CC();
  v23 = sub_22C90AACC();

  v24 = os_log_type_enabled(v22, v23);
  v60 = v14;
  v61 = v11;
  v62 = v19;
  v57 = v9;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v58 = v4;
    v26 = v25;
    v65[0] = swift_slowAlloc();
    *v26 = 136315394;
    v27 = *(v1 + 16);
    v28 = *(v1 + 24);

    v29 = sub_22C36F9F4(v27, v28, v65);

    *(v26 + 4) = v29;
    *(v26 + 12) = 2080;
    v30 = *(v1 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime23ResponseCatalogDatabase_filePath);
    v31 = *(v1 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime23ResponseCatalogDatabase_filePath + 8);

    v32 = sub_22C36F9F4(v30, v31, v65);

    *(v26 + 14) = v32;
    _os_log_impl(&dword_22C366000, v22, v23, "Initializing %s DB queue at path: %s", v26, 0x16u);
    swift_arrayDestroy();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    v4 = v58;
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v59 = *(v14 + 8);
  v59(v21, v11);
  v33 = [objc_opt_self() defaultManager];
  v34 = (v1 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime23ResponseCatalogDatabase_filePath);
  v35 = *(v1 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime23ResponseCatalogDatabase_filePath);
  v36 = *(v1 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime23ResponseCatalogDatabase_filePath + 8);

  v37 = sub_22C90A0EC();

  LODWORD(v58) = [v33 fileExistsAtPath_];

  v38 = *v34;
  v39 = v34[1];
  v40 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime23ResponseCatalogDatabase_config;
  swift_beginAccess();
  v41 = *(v4 + 16);
  v41(v63, v1 + v40, v64);
  v42 = sub_22C90108C();
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  swift_allocObject();

  v45 = sub_22C90105C();
  v46 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime23ResponseCatalogDatabase_databaseQueue;
  v47 = *(v1 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime23ResponseCatalogDatabase_databaseQueue);
  *(v1 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime23ResponseCatalogDatabase_databaseQueue) = v45;

  if (v58)
  {
    if (*(v1 + v46))
    {
      v49 = *(v1 + v46);

      sub_22C872C30();
      v54 = v53;

      if (v54 != 1)
      {
        v55 = v34[1];

        sub_22C8733E8();
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v50 = v57;
    v51 = v64;
    v52 = (v41)(v57, v1 + v40, v64);
    sub_22C872524(v52);
    return (*(v4 + 8))(v50, v51);
  }

  return result;
}

void sub_22C872C30()
{
  v2 = v1;
  v3 = v0;
  v4 = sub_22C9063DC();
  v5 = sub_22C369824(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v12 = v11 - v10;
  sub_22C90106C();
  if (v1)
  {
    sub_22C90405C();

    v13 = sub_22C9063CC();
    sub_22C90AADC();

    v14 = sub_22C3729E4();
    if (os_log_type_enabled(v14, v15))
    {
      sub_22C36BED8();
      v31 = v7;
      v16 = swift_slowAlloc();
      sub_22C370220();
      v17 = swift_slowAlloc();
      v29 = v17;
      *v16 = 136315138;
      v18 = *(v3 + 16);
      v19 = *(v3 + 24);

      v28 = v4;
      v20 = sub_22C36F9F4(v18, v19, &v29);

      *(v16 + 4) = v20;
      sub_22C376034(&dword_22C366000, v21, v22, "Database version cannot be read for %s");
      sub_22C36FF94(v17);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();

      (*(v31 + 8))(v12, v28);
    }

    else
    {

      (*(v7 + 8))(v12, v4);
    }

    v29 = 0;
    v30 = 0xE000000000000000;
    sub_22C90AF5C();

    v29 = 0xD000000000000024;
    v30 = 0x800000022C938760;
    v23 = *(v3 + 16);
    v24 = *(v3 + 24);

    MEMORY[0x2318B7850](v23, v24);

    v25 = v29;
    v26 = v30;
    sub_22C873D48();
    swift_allocError();
    *v27 = v25;
    *(v27 + 8) = v26;
    *(v27 + 16) = 1;
    swift_willThrow();
  }
}

uint64_t sub_22C872EC8()
{
  v2 = v0;
  v3 = sub_22C9063DC();
  v4 = sub_22C369824(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  v11 = v10 - v9;
  if (!*(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime23ResponseCatalogDatabase_databaseQueue) || (, sub_22C90107C(), result = , !v1))
  {
    sub_22C90405C();

    v13 = sub_22C9063CC();
    sub_22C90AABC();

    v14 = sub_22C3729E4();
    if (os_log_type_enabled(v14, v15))
    {
      sub_22C36BED8();
      v23 = v3;
      v16 = swift_slowAlloc();
      sub_22C370220();
      v17 = swift_slowAlloc();
      v24 = v17;
      *v16 = 136315138;
      v18 = *(v2 + 16);
      v19 = *(v2 + 24);

      v20 = sub_22C36F9F4(v18, v19, &v24);

      *(v16 + 4) = v20;
      sub_22C376034(&dword_22C366000, v21, v22, "Database closed: %s");
      sub_22C36FF94(v17);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();

      return (*(v6 + 8))(v11, v23);
    }

    else
    {

      return (*(v6 + 8))(v11, v3);
    }
  }

  return result;
}

uint64_t sub_22C8730A0()
{
  v1 = v0;
  v2 = sub_22C9063DC();
  v3 = sub_22C369824(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v10 = v9 - v8;
  sub_22C872614();
  sub_22C90405C();

  v11 = sub_22C9063CC();
  sub_22C90AABC();

  v12 = sub_22C3729E4();
  if (os_log_type_enabled(v12, v13))
  {
    sub_22C36BED8();
    v14 = swift_slowAlloc();
    sub_22C370220();
    v15 = swift_slowAlloc();
    v22 = v15;
    *v14 = 136315138;
    v16 = *(v1 + 16);
    v17 = *(v1 + 24);

    v18 = sub_22C36F9F4(v16, v17, &v22);

    *(v14 + 4) = v18;
    sub_22C376034(&dword_22C366000, v19, v20, "Database reopened: %s");
    sub_22C36FF94(v15);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  return (*(v5 + 8))(v10, v2);
}

uint64_t sub_22C87323C()
{
  v1 = v0;
  v2 = sub_22C9063DC();
  v3 = sub_22C369824(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v10 = v9 - v8;
  sub_22C90405C();

  v11 = sub_22C9063CC();
  v12 = sub_22C90AABC();

  if (os_log_type_enabled(v11, v12))
  {
    sub_22C36BED8();
    v13 = swift_slowAlloc();
    sub_22C370220();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136315138;
    v15 = *(v1 + 16);
    v16 = *(v1 + 24);

    v17 = sub_22C36F9F4(v15, v16, &v20);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_22C366000, v11, v12, "Database queue destroyed: %s", v13, 0xCu);
    sub_22C36FF94(v14);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  (*(v5 + 8))(v10, v2);
  v18 = *(v1 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime23ResponseCatalogDatabase_databaseQueue);
  *(v1 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime23ResponseCatalogDatabase_databaseQueue) = 0;
}

uint64_t sub_22C8733E8()
{
  sub_22C90AF5C();

  v1 = sub_22C90B47C();
  MEMORY[0x2318B7850](v1);

  MEMORY[0x2318B7850](544175136, 0xE400000000000000);
  v2 = sub_22C90B47C();
  MEMORY[0x2318B7850](v2);

  MEMORY[0x2318B7850](0x2064656C69616620, 0xEC00000020726F66);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);

  MEMORY[0x2318B7850](v4, v3);

  sub_22C873D48();
  swift_allocError();
  *v5 = 0xD000000000000018;
  *(v5 + 8) = 0x800000022C938790;
  *(v5 + 16) = 3;
  return swift_willThrow();
}

uint64_t sub_22C87357C(uint64_t a1)
{
  v2 = sub_22C8740D4();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C8735B8(uint64_t a1)
{
  v2 = sub_22C8740D4();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22C873618()
{
  sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22C90F800;
  sub_22C90AF5C();

  v1 = sub_22C90B47C();
  MEMORY[0x2318B7850](v1);

  *(v0 + 32) = 0xD000000000000014;
  *(v0 + 40) = 0x800000022C938250;
  return v0;
}

void sub_22C8736EC(uint64_t a1, uint64_t a2)
{
  v35 = a1;
  v4 = sub_22C9063DC();
  v32 = *(v4 - 8);
  v33 = v4;
  v5 = *(v32 + 64);
  MEMORY[0x28223BE20](v4);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_22C90117C();
  v7 = *(v34 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v34);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (*(*a2 + 208))(v9);
  v13 = 0;
  v14 = *(v12 + 16);
  v15 = (v7 + 8);
  for (i = (v12 + 40); ; i += 2)
  {
    if (v14 == v13)
    {

      return;
    }

    if (v13 >= *(v12 + 16))
    {
      __break(1u);
      return;
    }

    v17 = *(i - 1);
    v18 = *i;

    sub_22C90116C();
    sub_22C90120C();
    if (v2)
    {
      break;
    }

    ++v13;
    (*v15)(v11, v34);
  }

  (*v15)(v11, v34);

  v19 = v31;
  sub_22C90405C();
  v20 = v2;
  v21 = sub_22C9063CC();
  v22 = sub_22C90AADC();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    v25 = v2;
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v23 + 4) = v26;
    *v24 = v26;
    _os_log_impl(&dword_22C366000, v21, v22, "ResponseCatalog: Error preparing uninitialized database: %@", v23, 0xCu);
    sub_22C36DD28(v24, &qword_27D9BB158, qword_22C910FD0);
    MEMORY[0x2318B9880](v24, -1, -1);
    MEMORY[0x2318B9880](v23, -1, -1);
  }

  (*(v32 + 8))(v19, v33);
  v36 = 0;
  v37 = 0xE000000000000000;
  sub_22C90AF5C();
  MEMORY[0x2318B7850](0xD000000000000025, 0x800000022C938840);
  v38 = v2;
  sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
  sub_22C90B12C();
  v27 = v36;
  v28 = v37;
  sub_22C873D48();
  swift_allocError();
  *v29 = v27;
  *(v29 + 8) = v28;
  *(v29 + 16) = 4;
  swift_willThrow();
}

uint64_t ResponseCatalogDatabase.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  ResponseCatalogDatabase.init(_:)(a1, a2);
  return v7;
}

uint64_t ResponseCatalogDatabase.__deallocating_deinit()
{
  ResponseCatalogDatabase.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22C873BA4@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_22C90117C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  sub_22C90116C();
  sub_22C90118C();
  if (v1)
  {
    (*(v4 + 8))(v7, v3);
    return sub_22C36DD28(v10, &qword_27D9C0BC8, &qword_22C92AFB0);
  }

  else
  {
    (*(v4 + 8))(v7, v3);
    result = sub_22C36DD28(v10, &qword_27D9C0BC8, &qword_22C92AFB0);
    if (v13)
    {
      v9 = -1;
    }

    else
    {
      v9 = v12;
    }

    *a1 = v9;
  }

  return result;
}

unint64_t sub_22C873D48()
{
  result = qword_27D9C0C00;
  if (!qword_27D9C0C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0C00);
  }

  return result;
}

uint64_t sub_22C873DAC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF8 && *(a1 + 17))
    {
      v2 = *a1 + 247;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 8)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22C873DEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 16) = 0;
    *result = a2 - 248;
    *(result + 8) = 0;
    if (a3 >= 0xF8)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for ResponseCatalogDatabase()
{
  result = qword_27D9C0C08;
  if (!qword_27D9C0C08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C873E9C()
{
  result = sub_22C90104C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_22C8740D4()
{
  result = qword_27D9C0C18;
  if (!qword_27D9C0C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0C18);
  }

  return result;
}

void sub_22C874128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_22C387658();
  a25 = v27;
  a26 = v29;
  if (!*(v28 + 16))
  {
    goto LABEL_4;
  }

  v30 = *(v28 + 16);
  sub_22C59774C();
  sub_22C371EF0();
  sub_22C3D1290(v31, v32, v33, v34);
  sub_22C38B868();
  sub_22C374ABC();
  if (!v35)
  {
    __break(1u);
LABEL_4:
    v26 = MEMORY[0x277D84F90];
  }

  a10 = v26;
  sub_22C876C2C(&a10);
  sub_22C388F1C();
}

void sub_22C8741B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_22C387658();
  a25 = v27;
  a26 = v29;
  if (!*(v28 + 16))
  {
    goto LABEL_4;
  }

  v30 = *(v28 + 16);
  sub_22C5977C8();
  sub_22C371EF0();
  sub_22C3D1388();
  sub_22C38B868();
  sub_22C374ABC();
  if (!v31)
  {
    __break(1u);
LABEL_4:
    v26 = MEMORY[0x277D84F90];
  }

  a10 = v26;
  sub_22C876CB0(&a10);
  sub_22C388F1C();
}

uint64_t sub_22C874248(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = *(a1 + 16);
  v3 = sub_22C5977C8();
  sub_22C3D2C14();
  v5 = v4;

  sub_22C36A674();
  if (v5 != v1)
  {
    __break(1u);
LABEL_4:
    v3 = MEMORY[0x277D84F90];
  }

  v7 = v3;
  sub_22C876CB0(&v7);
  return v7;
}

BOOL sub_22C87435C@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_22C3A2890();
  *a2 = result;
  return result;
}

uint64_t sub_22C874390@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22C87432C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_22C8743BC@<W0>(_BYTE *a1@<X8>)
{
  result = sub_22C3A2890();
  *a1 = result;
  return result;
}

uint64_t sub_22C8743E8(uint64_t a1)
{
  v2 = sub_22C87475C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C874424(uint64_t a1)
{
  v2 = sub_22C87475C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C874460(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_22C8744EC(v2, v3);
}

uint64_t sub_22C8744A0()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_22C8744EC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t ValidationEntry.__allocating_init(from:)(uint64_t *a1)
{
  sub_22C36A8CC();
  v2 = swift_allocObject();
  ValidationEntry.init(from:)(a1);
  return v2;
}

uint64_t ValidationEntry.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = sub_22C3A5908(&qword_27D9C0C28, &qword_22C92AC10);
  v6 = sub_22C369824(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v18 - v11;
  v13 = a1[4];
  sub_22C374168(a1, a1[3]);
  sub_22C87475C();
  sub_22C90B6BC();
  if (v2)
  {
    type metadata accessor for ValidationEntry();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v15 = sub_22C90B2DC();
    v17 = v16;
    (*(v8 + 8))(v12, v5);
    *(v3 + 16) = v15;
    *(v3 + 24) = v17;
  }

  sub_22C36FF94(a1);
  return v3;
}

unint64_t sub_22C87475C()
{
  result = qword_27D9C0C30;
  if (!qword_27D9C0C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0C30);
  }

  return result;
}

uint64_t sub_22C8747D4(void *a1)
{
  v2 = v1;
  v4 = sub_22C3A5908(&qword_27D9C0C38, &unk_22C92AC18);
  v5 = sub_22C369824(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v16 - v10;
  v12 = a1[4];
  sub_22C374168(a1, a1[3]);
  sub_22C87475C();
  sub_22C90B6CC();
  swift_beginAccess();
  v13 = *(v2 + 16);
  v14 = *(v2 + 24);

  sub_22C90B3CC();
  (*(v7 + 8))(v11, v4);
}

uint64_t ValidationEntry.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t ValidationEntry.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  sub_22C36A8CC();

  return swift_deallocClassInstance();
}

uint64_t sub_22C874978@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = ValidationEntry.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_22C8749C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282162858](a1, a2, a3, WitnessTable);
}

uint64_t sub_22C874A40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282162828](a1, a2, a3, WitnessTable);
}

uint64_t sub_22C874AA8()
{
  v0 = type metadata accessor for ResponseValidator();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  v3 = ResponseCatalogDatabase.init(_:)(0xD00000000000001FLL, 0x800000022C938A40);

  sub_22C872614();

  qword_27D9C0C20 = v3;
  return result;
}

uint64_t sub_22C874B14(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  v7 = ResponseCatalogDatabase.init(_:)(a1, a2);

  sub_22C872614();

  return v7;
}

uint64_t static ResponseValidator.current.getter()
{
  if (qword_27D9BA7C8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_22C874BD4()
{
  sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22C90FB40;
  *(v0 + 32) = 0xD000000000000041;
  *(v0 + 40) = 0x800000022C938870;
  *(v0 + 48) = 0xD00000000000003CLL;
  *(v0 + 56) = 0x800000022C9388C0;
  sub_22C90AF5C();

  v1 = sub_22C90B47C();
  MEMORY[0x2318B7850](v1);

  *(v0 + 64) = 0xD000000000000014;
  *(v0 + 72) = 0x800000022C938250;
  return v0;
}

uint64_t sub_22C874CDC(uint64_t a1, Swift::String *a2)
{
  v83 = a1;
  v3 = sub_22C9063DC();
  v85 = sub_22C369824(v3);
  v86 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v85);
  sub_22C369ABC();
  v84 = v7 - v8;
  sub_22C369930();
  MEMORY[0x28223BE20](v9);
  v81 = &v79 - v10;
  sub_22C369930();
  MEMORY[0x28223BE20](v11);
  v80 = &v79 - v12;
  sub_22C369930();
  MEMORY[0x28223BE20](v13);
  v15 = &v79 - v14;
  v16 = sub_22C90634C();
  v17 = sub_22C369824(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22C369ABC();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v79 - v26;
  v82 = sub_22C90636C();
  v28 = sub_22C369824(v82);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v28);
  v34 = &v79 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a2[1];
  v88.appBundleID = *a2;
  v88.intentID = v35;
  v36 = a2[3];
  v88.actionType = a2[2];
  v88.responseMode = v36;
  sub_22C9036AC();
  sub_22C90633C();
  v37 = sub_22C90635C();
  v38 = sub_22C90AB6C();
  if (sub_22C90AC5C())
  {
    v39 = swift_slowAlloc();
    v79 = v15;
    v40 = v39;
    *v39 = 0;
    v41 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v37, v38, v41, "ResponseGeneration.responseValidation", "", v40, 2u);
    v15 = v79;
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  (*(v19 + 16))(v24, v27, v16);
  v42 = sub_22C9063AC();
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  swift_allocObject();
  sub_22C90639C();
  (*(v19 + 8))(v27, v16);
  (*(v30 + 8))(v34, v82);
  sub_22C90405C();
  v45 = sub_22C9063CC();
  v46 = sub_22C90AABC();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = v15;
    v48 = swift_slowAlloc();
    *v48 = 67109120;
    swift_getKeyPath();
    sub_22C901F3C();

    *(v48 + 4) = LOBYTE(identifiers.appBundleID._countAndFlagsBits);
    _os_log_impl(&dword_22C366000, v45, v46, "ResponseGeneration:(ResponseValidator)validateflag = %{BOOL}d", v48, 8u);
    v15 = v47;
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v49 = v85;
  v51 = v86 + 8;
  v50 = *(v86 + 8);
  v50(v15, v85);
  swift_getKeyPath();
  sub_22C901F3C();

  if (LOBYTE(identifiers.appBundleID._countAndFlagsBits) == 1)
  {
    v52 = sub_22C874248(v83);
    identifiers = v88;
    v53 = hashInputKeysOnly(inputParamKeys:identifiers:)(v52, &identifiers);

    v64 = sub_22C875C2C(v53._countAndFlagsBits, v53._object);

    if (v64)
    {

      goto LABEL_13;
    }

    v66 = v80;
    sub_22C90405C();
    sub_22C87714C(&v88, &identifiers);

    v67 = sub_22C9063CC();
    v68 = sub_22C90AADC();
    sub_22C871D14(&v88);

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      identifiers.appBundleID._countAndFlagsBits = swift_slowAlloc();
      *v69 = 136315907;
      v70 = v50;
      object = v88.intentID._object;
      v72 = sub_22C388ACC();
      *(v69 + 4) = sub_22C36F9F4(v72, object, v73);
      v86 = v51;
      *(v69 + 12) = 2080;
      v74 = sub_22C388ACC();
      *(v69 + 14) = sub_22C36F9F4(v74, object, v75);
      *(v69 + 22) = 2080;
      *(v69 + 24) = sub_22C36F9F4(v88.actionType._countAndFlagsBits, v88.actionType._object, &identifiers.appBundleID._countAndFlagsBits);
      *(v69 + 32) = 2085;
      type metadata accessor for DialogValue(0);
      v76 = sub_22C909EDC();
      v78 = sub_22C36F9F4(v76, v77, &identifiers.appBundleID._countAndFlagsBits);

      *(v69 + 34) = v78;
      _os_log_impl(&dword_22C366000, v67, v68, "ResponseValidator: INVALID request - Model not trained for these parameters:\n%s:%s:%s -%{sensitive}s", v69, 0x2Au);
      swift_arrayDestroy();
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();

      v70(v80, v49);
      goto LABEL_13;
    }

    v63 = v66;
LABEL_12:
    v50(v63, v49);
    goto LABEL_13;
  }

  v54 = v81;
  sub_22C90405C();

  v55 = sub_22C9063CC();
  v56 = sub_22C90AABC();

  if (!os_log_type_enabled(v55, v56))
  {

    v63 = v54;
    goto LABEL_12;
  }

  v57 = swift_slowAlloc();
  v58 = swift_slowAlloc();
  identifiers.appBundleID._countAndFlagsBits = v58;
  *v57 = 136642819;
  type metadata accessor for DialogValue(0);
  v59 = sub_22C909EDC();
  v61 = v50;
  v62 = sub_22C36F9F4(v59, v60, &identifiers.appBundleID._countAndFlagsBits);

  *(v57 + 4) = v62;
  _os_log_impl(&dword_22C366000, v55, v56, "ResponseValidator: Because validation currently disabled, permitting the request to go through:\n%{sensitive}s", v57, 0xCu);
  sub_22C36FF94(v58);
  sub_22C369B50();
  MEMORY[0x2318B9880]();
  sub_22C369B50();
  MEMORY[0x2318B9880]();

  v61(v81, v49);
LABEL_13:
  sub_22C87561C();

  return 1;
}

uint64_t sub_22C87561C()
{
  v31 = sub_22C90637C();
  v29 = *(v31 - 1);
  v0 = *(v29 + 64);
  MEMORY[0x28223BE20](v31);
  v2 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22C90634C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C90636C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C9036AC();
  v13 = sub_22C90635C();
  sub_22C90638C();
  v30 = sub_22C90AB5C();
  if (sub_22C90AC5C())
  {
    v26 = v9;
    v27 = v8;
    v28 = v3;

    sub_22C9063BC();

    v14 = v29;
    v15 = v31;
    if ((*(v29 + 88))(v2, v31) == *MEMORY[0x277D85B00])
    {
      v16 = 0;
      v17 = 0;
      v31 = "[Error] Interval already ended";
    }

    else
    {
      (*(v14 + 8))(v2, v15);
      v31 = "%s";
      v17 = 2;
      v16 = 1;
    }

    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v32 = v20;
    *v19 = v17;
    *(v19 + 1) = v16;
    *(v19 + 2) = 2080;
    sub_22C90366C();
    v21 = sub_22C90AF7C();
    v23 = sub_22C36F9F4(v21, v22, &v32);

    *(v19 + 4) = v23;
    v24 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v13, v30, v24, "ResponseGeneration.responseValidation", v31, v19, 0xCu);
    sub_22C36FF94(v20);
    MEMORY[0x2318B9880](v20, -1, -1);
    MEMORY[0x2318B9880](v19, -1, -1);

    (*(v4 + 8))(v7, v28);
    return (*(v26 + 8))(v12, v27);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
    return (*(v9 + 8))(v12, v8);
  }
}

Swift::String __swiftcall hashInputKeysOnly(inputParamKeys:identifiers:)(Swift::OpaquePointer inputParamKeys, IntelligenceFlowPlannerRuntime::ResponseCatalogIdentifiers *identifiers)
{
  sub_22C387658();
  v51 = v2;
  v52 = v3;
  v5 = v4;
  v8 = *v6;
  v7 = v6[1];
  v10 = v6[2];
  v9 = v6[3];
  v11 = v6[5];
  v12 = v6[7];
  v47 = v6[4];
  v48 = v6[6];

  sub_22C590270();
  v14 = v13;
  v16 = *(v13 + 16);
  v15 = *(v13 + 24);
  v17 = v15 >> 1;
  v18 = v16 + 1;
  if (v15 >> 1 <= v16)
  {
    sub_22C369AB0(v15);
    sub_22C36C594();
    v14 = v42;
    v15 = *(v42 + 24);
    v17 = v15 >> 1;
  }

  *(v14 + 16) = v18;
  v19 = v14 + 16 * v16;
  *(v19 + 32) = v8;
  *(v19 + 40) = v7;
  v20 = v16 + 2;
  if (v17 < (v16 + 2))
  {
    sub_22C369AB0(v15);
    sub_22C36C594();
    v14 = v43;
  }

  *(v14 + 16) = v20;
  v21 = v14 + 16 * v18;
  *(v21 + 32) = v10;
  *(v21 + 40) = v9;
  v22 = *(v14 + 24);
  v23 = v16 + 3;
  if ((v16 + 3) > (v22 >> 1))
  {
    sub_22C369AB0(v22);
    sub_22C36C594();
    v14 = v44;
  }

  *(v14 + 16) = v23;
  v24 = v14 + 16 * v20;
  *(v24 + 32) = v47;
  *(v24 + 40) = v11;
  v25 = *(v14 + 24);
  if ((v16 + 4) > (v25 >> 1))
  {
    sub_22C369AB0(v25);
    sub_22C36C594();
    v14 = v45;
  }

  *(v14 + 16) = v16 + 4;
  v26 = v14 + 16 * v23;
  *(v26 + 32) = v48;
  *(v26 + 40) = v12;
  v27 = *(v5 + 16);
  if (v27)
  {
    v28 = (v5 + 40);
    do
    {
      v30 = *(v28 - 1);
      v29 = *v28;
      v31 = *(v14 + 16);
      v32 = *(v14 + 24);

      if (v31 >= v32 >> 1)
      {
        sub_22C36C594();
        v14 = v34;
      }

      *(v14 + 16) = v31 + 1;
      v33 = v14 + 16 * v31;
      *(v33 + 32) = v30;
      *(v33 + 40) = v29;
      v28 += 2;
      --v27;
    }

    while (v27);
  }

  v49 = v14;

  sub_22C876CB0(&v49);

  v35 = v49;
  v49 = 0;
  v50 = 0xE000000000000000;
  v36 = *(v35 + 16);
  if (v36)
  {
    v37 = (v35 + 40);
    do
    {
      v38 = *(v37 - 1);
      v39 = *v37;

      MEMORY[0x2318B7850](v38, v39);

      v37 += 2;
      --v36;
    }

    while (v36);
  }

  sub_22C8767C4();

  sub_22C388F1C();
  result._object = v41;
  result._countAndFlagsBits = v40;
  return result;
}

uint64_t sub_22C875C2C(uint64_t a1, unint64_t a2)
{
  v6 = sub_22C9063DC();
  v7 = sub_22C369824(v6);
  v43 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22C369ABC();
  v42 = (v11 - v12);
  sub_22C369930();
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v40 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v40 - v17;
  if (*(v2 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime23ResponseCatalogDatabase_databaseQueue))
  {
    v41 = v6;
    v19 = swift_allocObject();
    *(v19 + 16) = a1;
    *(v19 + 24) = a2;

    sub_22C90405C();

    v20 = sub_22C9063CC();
    v21 = sub_22C90AABC();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v40 = v19;
      v24 = v23;
      v44 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_22C36F9F4(a1, a2, &v44);
      _os_log_impl(&dword_22C366000, v20, v21, "ResponseValidator: searching cache for %s", v22, 0xCu);
      sub_22C36FF94(v24);
      v19 = v40;
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    v25 = *(v43 + 8);
    v26 = v41;
    v27 = v25(v18, v41);
    MEMORY[0x28223BE20](v27);
    *(&v40 - 2) = sub_22C876D1C;
    *(&v40 - 1) = v19;
    sub_22C3A5908(&qword_27D9C0C40, &unk_22C92AC28);
    sub_22C90106C();
    if (v3)
    {
      sub_22C90405C();
      v28 = v3;
      v29 = sub_22C9063CC();
      v30 = sub_22C90AADC();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v40 = v19;
        v33 = v32;
        *v31 = 138412290;
        v34 = v3;
        v35 = _swift_stdlib_bridgeErrorToNSError();
        *(v31 + 4) = v35;
        *v33 = v35;
        _os_log_impl(&dword_22C366000, v29, v30, "ResponseValidator: read failed with: %@", v31, 0xCu);
        sub_22C3770B0(v33, &qword_27D9BB158, qword_22C910FD0);
        sub_22C369B50();
        MEMORY[0x2318B9880]();
        sub_22C369B50();
        MEMORY[0x2318B9880]();
      }

      else
      {
      }

      v25(v42, v26);

      return 0;
    }

    else
    {

      return v44;
    }
  }

  else
  {
    sub_22C90405C();
    v36 = sub_22C9063CC();
    v37 = sub_22C90AADC();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_22C366000, v36, v37, "ResponseValidator: Unable to access database", v38, 2u);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    (*(v43 + 8))(v16, v6);
    return 0;
  }
}

uint64_t sub_22C8760C4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v26 = a1;
  v5 = sub_22C9063DC();
  v24 = *(v5 - 8);
  v25 = v5;
  v6 = *(v24 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C90117C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v28[0] = 0;
  *(&v28[0] + 1) = 0xE000000000000000;
  sub_22C90AF5C();
  MEMORY[0x2318B7850](0xD00000000000003DLL, 0x800000022C9389E0);
  MEMORY[0x2318B7850](a2, a3);
  MEMORY[0x2318B7850](15143, 0xE200000000000000);
  type metadata accessor for ValidationEntry();
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  sub_22C90116C();
  sub_22C878D38(&qword_27D9C0C80, v14, type metadata accessor for ValidationEntry);
  v15 = v27;
  sub_22C90114C();
  if (v15)
  {

    (*(v10 + 8))(v13, v9);
    sub_22C3770B0(v28, &qword_27D9C0BC8, &qword_22C92AFB0);
  }

  else
  {
    v27 = a2;
    v16 = v25;

    (*(v10 + 8))(v13, v9);
    sub_22C3770B0(v28, &qword_27D9C0BC8, &qword_22C92AFB0);
    v9 = v30;
    if (!v30)
    {
      v17 = v8;
      sub_22C90405C();
      v18 = a3;

      v19 = sub_22C9063CC();
      v20 = sub_22C90AABC();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        *&v28[0] = v22;
        *v21 = 136315138;
        *(v21 + 4) = sub_22C36F9F4(v27, v18, v28);
        _os_log_impl(&dword_22C366000, v19, v20, "ResponseValidator: No entry found for hashcode '%s'", v21, 0xCu);
        sub_22C36FF94(v22);
        MEMORY[0x2318B9880](v22, -1, -1);
        MEMORY[0x2318B9880](v21, -1, -1);
      }

      (*(v24 + 8))(v17, v16);
    }
  }

  return v9;
}

uint64_t sub_22C87645C(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime23ResponseCatalogDatabase_databaseQueue))
  {
    v2 = MEMORY[0x28223BE20](result);
    MEMORY[0x28223BE20](v2);
    sub_22C90108C();

    sub_22C3A5908(&qword_27D9C0B20, &unk_22C92A410);
    sub_22C90109C();
  }

  return result;
}

uint64_t sub_22C876570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22C90117C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0xD000000000000027;
  v14 = 0x800000022C9389B0;
  MEMORY[0x2318B7850](a2, a3);
  v10 = v13;
  v11 = v14;
  v13 = 0x20545245534E49;
  v14 = 0xE700000000000000;
  MEMORY[0x2318B7850](v10, v11);

  sub_22C90116C();
  sub_22C90120C();
  (*(v6 + 8))(v9, v5);
}

uint64_t sub_22C8766D8(Swift::OpaquePointer a1, IntelligenceFlowPlannerRuntime::ResponseCatalogIdentifiers *a2)
{
  countAndFlagsBits = hashInputKeysOnly(inputParamKeys:identifiers:)(a1, a2)._countAndFlagsBits;
  MEMORY[0x2318B7850](countAndFlagsBits);

  MEMORY[0x2318B7850](2107687, 0xE300000000000000);
  sub_22C87645C(10024);
}

uint64_t ResponseValidator.__deallocating_deinit()
{
  v0 = *ResponseCatalogDatabase.deinit();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

void sub_22C8767C4()
{
  v0 = sub_22C909CBC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22C909CAC();
  v46 = *(v5 - 8);
  v6 = *(v46 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C90A17C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C90A15C();
  v14 = sub_22C90A12C();
  v16 = v15;
  v17 = v9;
  v18 = v16;
  (*(v10 + 8))(v13, v17);
  if (v18 >> 60 == 15)
  {
    goto LABEL_24;
  }

  sub_22C909C9C();
  sub_22C3C832C(v14, v18);
  sub_22C878670(v14, v18, v8);
  v45 = v14;
  sub_22C3C8114(v14, v18);
  sub_22C909C7C();
  v19 = sub_22C878954(0xD000000000000010, 0x800000022C938A20);
  if (sub_22C909C8C() + 0x4000000000000000 < 0)
  {
    goto LABEL_20;
  }

  sub_22C596D84();
  v21 = v20;
  sub_22C878D38(&qword_27D9C0C88, 255, MEMORY[0x277CC55B0]);
  v22 = sub_22C909C5C();
  v24 = *(v22 + 16);
  v25 = v24 - v23;
  v43 = v8;
  v44 = v4;
  v42 = v18;
  if (v24 != v23)
  {
    if (v24 <= v23)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (v23 < 0)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    if (!v24)
    {
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      return;
    }

    v39 = v5;
    v40 = v1;
    v41 = v0;
    v26 = v19 + 4;
    v27 = (v23 + v22 + 32);
    while (1)
    {
      v29 = *v27++;
      v28 = v29;
      if (v19[2] <= v29 >> 4)
      {
        break;
      }

      v30 = *(v26 + (v28 >> 4));
      v31 = *(v21 + 16);
      v32 = v31 + 1;
      if (v31 >= *(v21 + 24) >> 1)
      {
        sub_22C596D84();
        v21 = v34;
      }

      *(v21 + 16) = v32;
      *(v21 + 2 * v31 + 32) = v30;
      if (v19[2] <= (v28 & 0xF))
      {
        goto LABEL_19;
      }

      v33 = *(v26 + (v28 & 0xF));
      if ((v31 + 2) > *(v21 + 24) >> 1)
      {
        sub_22C596D84();
        v21 = v35;
      }

      *(v21 + 16) = v31 + 2;
      *(v21 + 2 * v32 + 32) = v33;
      if (!--v25)
      {

        v1 = v40;
        v0 = v41;
        v5 = v39;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_17:
  v36 = v46;

  v37 = *(v21 + 16);
  sub_22C90A0DC();
  sub_22C3C8114(v45, v42);
  (*(v1 + 8))(v44, v0);
  (*(v36 + 8))(v43, v5);
}

uint64_t sub_22C876C2C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C56C11C(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_22C8771A8(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_22C876CB0(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C56C134(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_22C87729C(v6);
  *a1 = v2;
  return result;
}

uint64_t type metadata accessor for ResponseValidator()
{
  result = qword_27D9C0C58;
  if (!qword_27D9C0C58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ValidationEntry.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_22C877048()
{
  result = qword_27D9C0C68;
  if (!qword_27D9C0C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0C68);
  }

  return result;
}

unint64_t sub_22C8770A0()
{
  result = qword_27D9C0C70;
  if (!qword_27D9C0C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0C70);
  }

  return result;
}

unint64_t sub_22C8770F8()
{
  result = qword_27D9C0C78;
  if (!qword_27D9C0C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0C78);
  }

  return result;
}

uint64_t sub_22C8771A8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22C90B45C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_22C90A64C();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_22C877508(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_22C877390(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22C87729C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22C90B45C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_22C90A64C();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_22C877B4C(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_22C877440(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22C877390(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 == a2)
  {
    return result;
  }

  v4 = *a4;
  v5 = *a4 + 24 * a3 - 24;
  v6 = result - a3;
  while (2)
  {
    v7 = v6;
    v8 = v5;
    do
    {
      v9 = *(v8 + 32);
      v10 = *(v8 + 40);
      v11 = *(v8 + 16);
      v12 = v10 >= v11;
      if (v10 != v11)
      {
        goto LABEL_7;
      }

      v13 = *(v8 + 24) >> 14;
      if (v13 == *v8 >> 14)
      {
        v12 = v9 >> 14 >= *(v8 + 8) >> 14;
LABEL_7:
        if (v12)
        {
          break;
        }

        goto LABEL_8;
      }

      if (v13 >= *v8 >> 14)
      {
        break;
      }

LABEL_8:
      if (!v4)
      {
        __break(1u);
        return result;
      }

      v15 = *(v8 + 16);
      v14 = *(v8 + 24);
      *(v8 + 24) = *v8;
      *(v8 + 40) = v15;
      *v8 = v14;
      *(v8 + 8) = v9;
      *(v8 + 16) = v10;
      v8 -= 24;
      v12 = __CFADD__(v7++, 1);
    }

    while (!v12);
    ++a3;
    v5 += 24;
    --v6;
    if (a3 != a2)
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_22C877440(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_22C90B4FC();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_22C877508(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_102:
    v98 = *a1;
    if (!*a1)
    {
      goto LABEL_143;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_104:
      v89 = (v7 + 16);
      v90 = *(v7 + 16);
      while (v90 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_140;
        }

        v91 = v7;
        v92 = (v7 + 16 * v90);
        v93 = *v92;
        v94 = &v89[2 * v90];
        v7 = *(v94 + 1);
        sub_22C878180((*a3 + 24 * *v92), (*a3 + 24 * *v94), (*a3 + 24 * v7), v98);
        if (v100)
        {
          break;
        }

        if (v7 < v93)
        {
          goto LABEL_128;
        }

        if (v90 - 2 >= *v89)
        {
          goto LABEL_129;
        }

        *v92 = v93;
        v92[1] = v7;
        v95 = *v89 - v90;
        if (*v89 < v90)
        {
          goto LABEL_130;
        }

        v100 = 0;
        v90 = *v89 - 1;
        sub_22C56BFF0(v94 + 16, v95, v94);
        *v89 = v90;
        v7 = v91;
      }

LABEL_112:

      return;
    }

LABEL_137:
    v7 = sub_22C56BFD8(v7);
    goto LABEL_104;
  }

  v5 = a4;
  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v6++;
    if (v6 < v4)
    {
      v9 = *a3 + 24 * v6;
      v10 = *(v9 + 16);
      v11 = *a3 + 24 * v8;
      v12 = *(v11 + 16);
      if (v10 == v12)
      {
        v13 = *v9 >> 14;
        v14 = *v11 >> 14;
        if (v13 == v14)
        {
          v15 = *(*a3 + 24 * v6 + 8) >> 14 < *(*a3 + 24 * v8 + 8) >> 14;
        }

        else
        {
          v15 = v13 < v14;
        }
      }

      else
      {
        v15 = v10 < v12;
      }

      v16 = v8 + 2;
      if (v4 > v8 + 2)
      {
        v16 = v4;
      }

      v17 = 24 * v8;
      v18 = (*a3 + 24 * v8 + 64);
      while (++v6 < v4)
      {
        v19 = *v18;
        v20 = *(v18 - 24);
        if (v19 == v20)
        {
          v21 = *(v18 - 2) >> 14;
          v22 = *(v18 - 5) >> 14;
          v23 = *(v18 - 1) >> 14 < *(v18 - 4) >> 14;
          if (v21 != v22)
          {
            v23 = v21 < v22;
          }
        }

        else
        {
          v23 = v19 < v20;
        }

        v18 += 24;
        if (v15 != v23)
        {
          if (!v15)
          {
            goto LABEL_29;
          }

          goto LABEL_21;
        }
      }

      v6 = v16;
      if (!v15)
      {
        goto LABEL_29;
      }

LABEL_21:
      if (v6 < v8)
      {
        goto LABEL_134;
      }

      if (v8 < v6)
      {
        v24 = 0;
        v25 = 24 * v6;
        v26 = v8;
        do
        {
          if (v26 != v6 + v24 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_141;
            }

            v28 = (v27 + v17);
            v29 = v27 + v25;
            v30 = *(v28 + 16);
            v31 = *v28;
            v32 = *(v29 - 8);
            *v28 = *(v29 - 24);
            *(v28 + 2) = v32;
            *(v29 - 24) = v31;
            *(v29 - 8) = v30;
          }

          ++v26;
          --v24;
          v25 -= 24;
          v17 += 24;
        }

        while (v26 < v6 + v24);
        v4 = a3[1];
      }
    }

LABEL_29:
    if (v6 < v4)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_133;
      }

      if (v6 - v8 < v5)
      {
        break;
      }
    }

LABEL_50:
    if (v6 < v8)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v86 = *(v7 + 16);
      sub_22C590218();
      v7 = v87;
    }

    v45 = *(v7 + 16);
    v46 = v45 + 1;
    if (v45 >= *(v7 + 24) >> 1)
    {
      sub_22C590218();
      v7 = v88;
    }

    *(v7 + 16) = v46;
    v47 = v7 + 32;
    v48 = (v7 + 32 + 16 * v45);
    *v48 = v8;
    v48[1] = v6;
    v98 = *a1;
    if (!*a1)
    {
      goto LABEL_142;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        v50 = (v47 + 16 * (v46 - 1));
        v51 = (v7 + 16 * v46);
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v52 = *(v7 + 32);
          v53 = *(v7 + 40);
          v62 = __OFSUB__(v53, v52);
          v54 = v53 - v52;
          v55 = v62;
LABEL_70:
          if (v55)
          {
            goto LABEL_119;
          }

          v67 = *v51;
          v66 = v51[1];
          v68 = __OFSUB__(v66, v67);
          v69 = v66 - v67;
          v70 = v68;
          if (v68)
          {
            goto LABEL_122;
          }

          v71 = v50[1];
          v72 = v71 - *v50;
          if (__OFSUB__(v71, *v50))
          {
            goto LABEL_125;
          }

          if (__OFADD__(v69, v72))
          {
            goto LABEL_127;
          }

          if (v69 + v72 >= v54)
          {
            if (v54 < v72)
            {
              v49 = v46 - 2;
            }

            goto LABEL_92;
          }

          goto LABEL_85;
        }

        if (v46 < 2)
        {
          goto LABEL_121;
        }

        v74 = *v51;
        v73 = v51[1];
        v62 = __OFSUB__(v73, v74);
        v69 = v73 - v74;
        v70 = v62;
LABEL_85:
        if (v70)
        {
          goto LABEL_124;
        }

        v76 = *v50;
        v75 = v50[1];
        v62 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v62)
        {
          goto LABEL_126;
        }

        if (v77 < v69)
        {
          goto LABEL_99;
        }

LABEL_92:
        if (v49 - 1 >= v46)
        {
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*a3)
        {
          goto LABEL_139;
        }

        v81 = v7;
        v82 = (v47 + 16 * (v49 - 1));
        v83 = *v82;
        v84 = v47 + 16 * v49;
        v7 = *(v84 + 8);
        sub_22C878180((*a3 + 24 * *v82), (*a3 + 24 * *v84), (*a3 + 24 * v7), v98);
        if (v100)
        {
          goto LABEL_112;
        }

        if (v7 < v83)
        {
          goto LABEL_114;
        }

        v85 = *(v81 + 16);
        if (v49 > v85)
        {
          goto LABEL_115;
        }

        *v82 = v83;
        v82[1] = v7;
        if (v49 >= v85)
        {
          goto LABEL_116;
        }

        v100 = 0;
        v46 = v85 - 1;
        sub_22C56BFF0((v84 + 16), v85 - 1 - v49, (v47 + 16 * v49));
        v7 = v81;
        *(v81 + 16) = v85 - 1;
        if (v85 <= 2)
        {
          goto LABEL_99;
        }
      }

      v56 = v47 + 16 * v46;
      v57 = *(v56 - 64);
      v58 = *(v56 - 56);
      v62 = __OFSUB__(v58, v57);
      v59 = v58 - v57;
      if (v62)
      {
        goto LABEL_117;
      }

      v61 = *(v56 - 48);
      v60 = *(v56 - 40);
      v62 = __OFSUB__(v60, v61);
      v54 = v60 - v61;
      v55 = v62;
      if (v62)
      {
        goto LABEL_118;
      }

      v63 = v51[1];
      v64 = v63 - *v51;
      if (__OFSUB__(v63, *v51))
      {
        goto LABEL_120;
      }

      v62 = __OFADD__(v54, v64);
      v65 = v54 + v64;
      if (v62)
      {
        goto LABEL_123;
      }

      if (v65 >= v59)
      {
        v79 = *v50;
        v78 = v50[1];
        v62 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v62)
        {
          goto LABEL_131;
        }

        if (v54 < v80)
        {
          v49 = v46 - 2;
        }

        goto LABEL_92;
      }

      goto LABEL_70;
    }

LABEL_99:
    v4 = a3[1];
    v5 = a4;
    if (v6 >= v4)
    {
      goto LABEL_102;
    }
  }

  if (__OFADD__(v8, v5))
  {
    goto LABEL_135;
  }

  if (v8 + v5 < v4)
  {
    v4 = v8 + v5;
  }

  if (v4 < v8)
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  if (v6 == v4)
  {
    goto LABEL_50;
  }

  v33 = *a3;
  v34 = *a3 + 24 * v6 - 24;
  v35 = v8 - v6;
LABEL_38:
  v36 = v35;
  v37 = v34;
  while (1)
  {
    v38 = *(v37 + 32);
    v39 = *(v37 + 40);
    v40 = *(v37 + 16);
    v41 = v39 >= v40;
    if (v39 == v40)
    {
      v42 = *(v37 + 24) >> 14;
      if (v42 == *v37 >> 14)
      {
        if (v38 >> 14 >= *(v37 + 8) >> 14)
        {
          goto LABEL_48;
        }

        goto LABEL_45;
      }

      v41 = v42 >= *v37 >> 14;
    }

    if (v41)
    {
      goto LABEL_48;
    }

LABEL_45:
    if (!v33)
    {
      break;
    }

    v44 = *(v37 + 16);
    v43 = *(v37 + 24);
    *(v37 + 24) = *v37;
    *(v37 + 40) = v44;
    *v37 = v43;
    *(v37 + 8) = v38;
    *(v37 + 16) = v39;
    v37 -= 24;
    v41 = __CFADD__(v36++, 1);
    if (v41)
    {
LABEL_48:
      ++v6;
      v34 += 24;
      --v35;
      if (v6 == v4)
      {
        v6 = v4;
        goto LABEL_50;
      }

      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
}

void sub_22C877B4C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v92 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_22C90B4FC();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_22C90B4FC()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
            return;
          }

          if (v10 != v27)
          {
            v87 = v5;
            v89 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_22C90B4FC() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v87;
            v9 = v89;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v88 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v82 = v8[2];
        sub_22C590218();
        v8 = v83;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_22C590218();
        v8 = v84;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v88;
      v90 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_22C8783A8((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v90);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v88;
      if (v88 >= v6)
      {
        v92 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_22C878054(&v92, *a1, a3);
LABEL_102:
}

uint64_t sub_22C878054(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_22C56BFD8(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_22C8783A8((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_22C878180(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_22C3D8758(a1, (a2 - a1) / 24, a4);
    v10 = &v4[24 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v19 = v7;
        goto LABEL_37;
      }

      v12 = v6[16];
      v13 = v4[16];
      v14 = v12 >= v13;
      if (v12 != v13)
      {
        goto LABEL_10;
      }

      v15 = *v6 >> 14;
      if (v15 == *v4 >> 14)
      {
        break;
      }

      if (v15 >= *v4 >> 14)
      {
LABEL_15:
        v16 = v4;
        v17 = v7 == v4;
        v4 += 24;
        if (v17)
        {
          goto LABEL_17;
        }

LABEL_16:
        v18 = *v16;
        *(v7 + 2) = *(v16 + 2);
        *v7 = v18;
        goto LABEL_17;
      }

LABEL_11:
      v16 = v6;
      v17 = v7 == v6;
      v6 += 24;
      if (!v17)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 24;
    }

    v14 = *(v6 + 1) >> 14 >= *(v4 + 1) >> 14;
LABEL_10:
    if (v14)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  sub_22C3D8758(a2, (a3 - a2) / 24, a4);
  v10 = &v4[24 * v9];
LABEL_19:
  v19 = v6;
  v6 -= 24;
  v20 = v5;
  while (v10 > v4 && v19 > v7)
  {
    v22 = v10 - 24;
    v23 = *(v10 - 8);
    v24 = *(v19 - 8);
    if (v23 == v24)
    {
      v25 = *v22 >> 14;
      if (v25 == *v6 >> 14)
      {
        v5 = v20 - 24;
        if (*(v10 - 2) >> 14 < *(v19 - 2) >> 14)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v5 = v20 - 24;
        if (v25 < *v6 >> 14)
        {
LABEL_34:
          if (v20 != v19)
          {
            v27 = *v6;
            *(v5 + 2) = *(v6 + 2);
            *v5 = v27;
          }

          goto LABEL_19;
        }
      }
    }

    else
    {
      v5 = v20 - 24;
      if (v23 < v24)
      {
        goto LABEL_34;
      }
    }

    v17 = v10 == v20;
    v20 = v5;
    v10 -= 24;
    if (!v17)
    {
      v26 = *v22;
      *(v5 + 2) = *(v22 + 2);
      *v5 = v26;
      v20 = v5;
      v10 = v22;
    }
  }

LABEL_37:
  v28 = 24 * ((v10 - v4) / 24);
  if (v19 != v4 || v19 >= &v4[v28])
  {
    memmove(v19, v4, v28);
  }

  return 1;
}

uint64_t sub_22C8783A8(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_22C3A4F80(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_22C90B4FC() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_22C3A4F80(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (sub_22C90B4FC() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

void sub_22C878568(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v12 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_11;
      }

      a1 = a1;
      v11 = v12;
      goto LABEL_9;
    case 2uLL:
      v10 = *(a1 + 24);
      a1 = *(a1 + 16);
      v11 = v10;
LABEL_9:
      sub_22C76A5B0(a1, v11);
      if (v2)
      {
        goto LABEL_10;
      }

      return;
    case 3uLL:
      sub_22C36A4D8();
      v7 = MEMORY[0x277CC5540];
      v3 = 0;
      v9 = 0;
      goto LABEL_5;
    default:
      sub_22C36A4D8();
      v7 = MEMORY[0x277CC5540];
      v9 = v8 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      sub_22C878798(v3, v9, v6, v4, v5, v7);
      if (v2)
      {
LABEL_10:

        __break(1u);
LABEL_11:
        __break(1u);
      }

      return;
  }
}

void sub_22C878670(uint64_t a1, unint64_t a2, uint64_t a3)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v9 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_11;
      }

      a1 = a1;
      v8 = v9;
      goto LABEL_9;
    case 2uLL:
      v7 = *(a1 + 24);
      a1 = *(a1 + 16);
      v8 = v7;
LABEL_9:
      sub_22C878870(a1, v8);
      if (v3)
      {
        goto LABEL_10;
      }

      return;
    case 3uLL:
      v4 = MEMORY[0x277CC5588];
      v5 = MEMORY[0x277CC5588];
      a1 = 0;
      v6 = 0;
      goto LABEL_5;
    default:
      v4 = MEMORY[0x277CC5588];
      v5 = MEMORY[0x277CC5588];
      v6 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      sub_22C878798(a1, v6, a3, v4, &qword_27D9C0C90, v5);
      if (v3)
      {
LABEL_10:

        __break(1u);
LABEL_11:
        __break(1u);
      }

      return;
  }
}

uint64_t sub_22C878798(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  v10 = *MEMORY[0x277D85DE8];
  a4(0);
  sub_22C878D38(a5, 255, a6);
  result = sub_22C909C1C();
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22C878870(uint64_t a1, uint64_t a2)
{
  result = sub_22C90006C();
  if (!result || (result = sub_22C90008C(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_22C90007C();
      sub_22C909CAC();
      sub_22C878D38(&qword_27D9C0C90, 255, MEMORY[0x277CC5588]);
      return sub_22C909C1C();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_22C878954(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x2318B78E0]();
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = v4;
  v6 = sub_22C878CBC(v4, 0);

  v7 = sub_22C8789E4(v9, (v6 + 4), v5, a1, a2);

  if (v7 != v5)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v6;
}

uint64_t sub_22C8789E4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if ((a5 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a5) & 0xF;
  }

  else
  {
    v7 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (!a2)
  {
    v12 = 0;
    v11 = 0;
    v8 = 0;
LABEL_36:
    v14 = 1;
    goto LABEL_40;
  }

  v8 = a3;
  if (!a3)
  {
    v12 = 0;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    __break(1u);
    return result;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = a5 & 0xFFFFFFFFFFFFFFLL;
  v26 = result;
  v27 = (a5 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v14 = 1;
  while (1)
  {
    v15 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v14)
    {
      if (v12 >= v7)
      {
        goto LABEL_38;
      }

      if ((a5 & 0x1000000000000000) != 0)
      {
        v22 = v13;
        v23 = sub_22C90AF4C();
        v13 = v22;
        v18 = v23;
      }

      else
      {
        if ((a5 & 0x2000000000000000) == 0)
        {
          v16 = v27;
          if ((a4 & 0x1000000000000000) == 0)
          {
            v24 = v13;
            v16 = sub_22C90AFCC();
            v13 = v24;
          }

          v17 = (v16 + v12);
          v18 = *(v16 + v12);
          if (*(v16 + v12) < 0)
          {
            switch(__clz(v18 ^ 0xFF))
            {
              case 0x1Au:
                LOWORD(v18) = v17[1] & 0x3F | ((v18 & 0x1F) << 6);
                v19 = 2;
                goto LABEL_17;
              case 0x1Bu:
                LOWORD(v18) = (v18 << 12) | ((v17[1] & 0x3F) << 6) | v17[2] & 0x3F;
                v19 = 3;
                goto LABEL_17;
              case 0x1Cu:
                goto LABEL_25;
              default:
                break;
            }
          }

          v19 = 1;
LABEL_17:
          v12 += v19;
LABEL_29:
          v14 = 1;
          goto LABEL_30;
        }

        v28[0] = a4;
        v28[1] = v13;
        v17 = v28 + v12;
        v18 = *(v28 + v12);
        if (*(v28 + v12) < 0)
        {
          switch(__clz(v18 ^ 0xFF))
          {
            case 0x1Au:
              v18 = v17[1] & 0x3F | ((v18 & 0x1F) << 6);
              v20 = 2;
              break;
            case 0x1Bu:
              v18 = ((v18 & 0xF) << 12) | ((v17[1] & 0x3F) << 6) | v17[2] & 0x3F;
              v20 = 3;
              break;
            case 0x1Cu:
LABEL_25:
              v18 = ((v18 & 0xF) << 18) | ((v17[1] & 0x3F) << 12) | ((v17[2] & 0x3F) << 6) | v17[3] & 0x3F;
              v20 = 4;
              break;
            default:
              goto LABEL_20;
          }
        }

        else
        {
LABEL_20:
          v20 = 1;
        }
      }

      v12 += v20;
      if (HIWORD(v18))
      {
        v25 = v13;
        v11 = sub_22C90B71C();
        v21 = sub_22C90B71C();
        v13 = v25;
        LOWORD(v18) = v21;
        v14 = 0;
        goto LABEL_30;
      }

      goto LABEL_29;
    }

    v14 = 1;
    LOWORD(v18) = v11;
    v11 = 0;
LABEL_30:
    *(a2 + 2 * v10++) = v18;
    if (v15 == v8)
    {
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_38:
  v14 = 1;
  v8 = v10;
LABEL_39:
  result = v26;
LABEL_40:
  *result = a4;
  *(result + 8) = a5;
  *(result + 16) = v12;
  *(result + 24) = v7;
  *(result + 32) = v11;
  *(result + 34) = v14;
  return v8;
}

void *sub_22C878CBC(uint64_t a1, uint64_t a2)
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

  sub_22C3A5908(&qword_27D9BE350, &qword_22C91D8D0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 2);
  return v4;
}

uint64_t sub_22C878D38(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_22C878D84()
{
  v1 = [objc_opt_self() resultBuilderForItem_];
  v2 = [v1 buildInlineCardSections];

  sub_22C878EFC();
  v3 = sub_22C90A5EC();

  if (!sub_22C36E2B8(v3))
  {
    goto LABEL_8;
  }

  sub_22C633A2C(0, (v3 & 0xC000000000000001) == 0, v3);
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x2318B8460](0, v3);
  }

  else
  {
    v4 = *(v3 + 32);
  }

  v5 = v4;
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
LABEL_7:

LABEL_8:
    v11 = [objc_allocWithZone(MEMORY[0x277D4C230]) init];
    sub_22C878F40(v3, v11);
    return v11;
  }

  v7 = v6;
  sub_22C3A5908(&qword_27D9BE3A8, &unk_22C91D950);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_22C922290;
  result = [v7 fallbackCardSection];
  if (result)
  {
    v10 = result;

    *(v8 + 32) = v10;
    v3 = v8;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

unint64_t sub_22C878EFC()
{
  result = qword_27D9C0C98;
  if (!qword_27D9C0C98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D9C0C98);
  }

  return result;
}

void sub_22C878F40(uint64_t a1, void *a2)
{
  sub_22C878EFC();
  v3 = sub_22C90A5DC();

  [a2 setCardSections_];
}

unint64_t sub_22C878FDC(uint64_t a1)
{
  v57 = sub_22C3A5908(&qword_27D9BF480, &qword_22C922740);
  v2 = *(*(v57 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v57);
  v56 = (&v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v55 = &v45 - v5;
  v6 = sub_22C90221C();
  v7 = sub_22C369824(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  v14 = (v13 - v12);
  v15 = sub_22C879C0C(a1);
  v16 = *(v15 + 16);
  if (v16)
  {
    v66 = MEMORY[0x277D84F90];
    sub_22C3B7FC4();
    v17 = v66;
    result = sub_22C6339F8(v15);
    v21 = 0;
    v22 = v15 + 64;
    v51 = v9 + 32;
    v52 = v9 + 16;
    v47 = v19;
    v46 = v15 + 72;
    v53 = v15 + 64;
    v54 = v14;
    v48 = v16;
    v49 = v15;
    v50 = v9;
    while ((result & 0x8000000000000000) == 0 && result < 1 << *(v15 + 32))
    {
      if ((*(v22 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        goto LABEL_24;
      }

      if (*(v15 + 36) != v19)
      {
        goto LABEL_25;
      }

      v61 = 1 << result;
      v62 = result >> 6;
      v59 = v21;
      v60 = v19;
      v58 = v20;
      v23 = v57;
      v24 = *(v57 + 48);
      v25 = *(v15 + 56);
      v26 = (*(v15 + 48) + 16 * result);
      v28 = *v26;
      v27 = v26[1];
      v63 = *(v9 + 72);
      v64 = result;
      v65 = v17;
      v29 = *(v9 + 16);
      v30 = v55;
      v29(&v55[v24], v25 + v63 * result, v6);
      v31 = v56;
      *v56 = v28;
      *(v31 + 8) = v27;
      v32 = *(v23 + 48);
      v33 = *(v9 + 32);
      v33(v31 + v32, &v30[v24], v6);
      v34 = v31 + v32;
      v35 = v54;
      v29(v54, v34, v6);
      v17 = v65;

      sub_22C879F98(v31);
      v66 = v17;
      v36 = *(v17 + 16);
      if (v36 >= *(v17 + 24) >> 1)
      {
        sub_22C3B7FC4();
        v17 = v66;
      }

      *(v17 + 16) = v36 + 1;
      v9 = v50;
      v33(v17 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v36 * v63, v35, v6);
      v15 = v49;
      v37 = 1 << *(v49 + 32);
      result = v64;
      v22 = v53;
      if (v64 >= v37)
      {
        goto LABEL_26;
      }

      v38 = *(v53 + 8 * v62);
      if ((v38 & v61) == 0)
      {
        goto LABEL_27;
      }

      if (*(v49 + 36) != v60)
      {
        goto LABEL_28;
      }

      v39 = v38 & (-2 << (v64 & 0x3F));
      if (v39)
      {
        v37 = __clz(__rbit64(v39)) | v64 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v40 = v62 << 6;
        v41 = v62 + 1;
        v42 = (v46 + 8 * v62);
        while (v41 < (v37 + 63) >> 6)
        {
          v44 = *v42++;
          v43 = v44;
          v40 += 64;
          ++v41;
          if (v44)
          {
            sub_22C3A5038(v64, v60, v58 & 1);
            v37 = __clz(__rbit64(v43)) + v40;
            goto LABEL_19;
          }
        }

        sub_22C3A5038(v64, v60, v58 & 1);
      }

LABEL_19:
      v20 = 0;
      v21 = v59 + 1;
      result = v37;
      v19 = v47;
      if (v59 + 1 == v48)
      {

        return v17;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

void *sub_22C8793F0()
{
  sub_22C3A5908(&qword_27D9C0CB0, &qword_22C92AFB8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22C90F870;
  *(inited + 32) = 0xD000000000000019;
  *(inited + 40) = 0x800000022C92E340;
  sub_22C5EA364();
  *(inited + 48) = v1;
  *(inited + 56) = 0xD000000000000010;
  *(inited + 64) = 0x800000022C938A60;
  sub_22C5EA364();
  *(inited + 72) = v2;
  sub_22C3A5908(&qword_27D9C0CB8, &qword_22C92AFC0);
  result = sub_22C909F0C();
  off_27D9C0CA8 = result;
  return result;
}

uint64_t sub_22C8794D0()
{
  v0 = sub_22C90934C();
  v1 = sub_22C369824(v0);
  v52 = v2;
  v53 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22C369838();
  v7 = v6 - v5;
  v8 = sub_22C90910C();
  v9 = sub_22C369824(v8);
  v54 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22C369838();
  v15 = v14 - v13;
  v16 = sub_22C90919C();
  v17 = sub_22C369824(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22C369838();
  v24 = v23 - v22;
  v25 = sub_22C9093BC();
  v26 = sub_22C369824(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22C369838();
  v33 = (v32 - v31);
  sub_22C90207C();
  v34 = (*(v28 + 88))(v33, v25);
  if (v34 != *MEMORY[0x277D72A58] && v34 != *MEMORY[0x277D729E8])
  {
    if (v34 == *MEMORY[0x277D72A38])
    {
      v37 = sub_22C36A4F0();
      v38(v37);
      v39 = *v33;
      v40 = swift_projectBox();
      (*(v19 + 16))(v24, v40, v16);
      v36 = sub_22C90908C();
      (*(v19 + 8))(v24, v16);
LABEL_9:

      return v36;
    }

    if (v34 != *MEMORY[0x277D729E0] && v34 != *MEMORY[0x277D72A30] && v34 != *MEMORY[0x277D72A40])
    {
      if (v34 == *MEMORY[0x277D729F8])
      {
        v44 = sub_22C36A4F0();
        v45(v44);
        v46 = *v33;
        v47 = swift_projectBox();
        (*(v54 + 16))(v15, v47, v8);
        v36 = sub_22C90908C();
        (*(v54 + 8))(v15, v8);
        goto LABEL_9;
      }

      if (v34 == *MEMORY[0x277D72A60])
      {
        v48 = sub_22C36A4F0();
        v49(v48);
        v50 = *v33;
        v51 = swift_projectBox();
        (*(v52 + 16))(v7, v51, v53);
        v36 = sub_22C90932C();
        (*(v52 + 8))(v7, v53);
        goto LABEL_9;
      }
    }
  }

  (*(v28 + 8))(v33, v25);
  return 0;
}

BOOL sub_22C8798C0()
{
  v0 = sub_22C9093BC();
  v1 = sub_22C369824(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22C369838();
  v8 = v7 - v6;
  v9 = sub_22C90952C();
  v10 = sub_22C369824(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v10);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v34 - v18;
  sub_22C90207C();
  sub_22C90935C();
  (*(v3 + 8))(v8, v0);
  (*(v12 + 16))(v17, v19, v9);
  v20 = (*(v12 + 88))(v17, v9);
  if (v20 == *MEMORY[0x277D72D50] || v20 == *MEMORY[0x277D72D30])
  {
    goto LABEL_11;
  }

  if (v20 != *MEMORY[0x277D72D28])
  {
    v29 = *MEMORY[0x277D72D18];
LABEL_11:
    v30 = *(v12 + 8);
    v30(v19, v9);
    v30(v17, v9);
    return 0;
  }

  (*(v12 + 96))(v17, v9);
  v22 = *v17;
  v23 = *(*v17 + 16);
  v24 = *(*v17 + 24);
  v25 = *(*v17 + 32);
  v26 = *(v22 + 40);
  if (qword_27D9BA7D8 != -1)
  {
    v32 = v23;
    v33 = v24;
    swift_once();
    v24 = v33;
    v23 = v32;
  }

  v27 = sub_22C633A24(v23, v24, off_27D9C0CA8);
  if (v27)
  {
    v28 = sub_22C5E935C(v25, v26, v27);
  }

  else
  {
    v28 = 0;
  }

  (*(v12 + 8))(v19, v9);

  return v28;
}

void *sub_22C879B94(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_22C879D70(v5, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

uint64_t sub_22C879C0C(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v9 = swift_slowAlloc();
      v2 = sub_22C879B94(v9, v4, v2);
      MEMORY[0x2318B9880](v9, -1, -1);
      goto LABEL_5;
    }
  }

  MEMORY[0x28223BE20](a1);
  v5 = v10 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_22C88FAFC(0, v4, v5);
  sub_22C879D70(v5, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }

  else
  {
    v2 = v6;
  }

LABEL_5:
  v7 = *MEMORY[0x277D85DE8];
  return v2;
}

void sub_22C879D70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = 0;
  v3 = 0;
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
LABEL_5:
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v29 = (v7 - 1) & v7;
LABEL_12:
    v27 = v9 | (v3 << 6);
    v12 = (*(a3 + 48) + 16 * v27);
    v14 = *v12;
    v13 = v12[1];
    v15 = qword_27D9BA7D0;

    if (v15 != -1)
    {
      swift_once();
    }

    v16 = off_27D9C0CA0;
    if (*(off_27D9C0CA0 + 2))
    {
      v17 = *(off_27D9C0CA0 + 5);
      sub_22C90B62C();
      sub_22C909FFC();
      v18 = sub_22C90B66C();
      v19 = ~(-1 << v16[32]);
      while (1)
      {
        v20 = v18 & v19;
        if (((*&v16[(((v18 & v19) >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> (v18 & v19)) & 1) == 0)
        {
          break;
        }

        v21 = (*(v16 + 6) + 16 * v20);
        if (*v21 != v14 || v21[1] != v13)
        {
          v23 = sub_22C90B4FC();
          v18 = v20 + 1;
          if ((v23 & 1) == 0)
          {
            continue;
          }
        }

        v7 = v29;
        goto LABEL_5;
      }
    }

    *(a1 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v24 = __OFADD__(v26++, 1);
    v7 = v29;
    if (v24)
    {
      goto LABEL_28;
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      sub_22C839868();
      return;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v29 = (v11 - 1) & v11;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
}

uint64_t sub_22C879F98(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BF480, &qword_22C922740);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C87A000()
{
  v0 = sub_22C3A5908(&qword_27D9C0CC0, &qword_22C92AFC8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v81 - v2;
  v94 = sub_22C90214C();
  v4 = sub_22C369824(v94);
  v82 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C3698E4();
  v88 = v8;
  sub_22C369930();
  MEMORY[0x28223BE20](v9);
  v87 = v81 - v10;
  v11 = sub_22C9024EC();
  v12 = sub_22C369824(v11);
  v90 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22C369838();
  v96 = v17 - v16;
  v18 = sub_22C9024FC();
  v19 = sub_22C369824(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22C3698E4();
  v103 = v24;
  sub_22C369930();
  MEMORY[0x28223BE20](v25);
  v95 = v81 - v26;
  sub_22C369930();
  MEMORY[0x28223BE20](v27);
  v29 = v81 - v28;
  v30 = sub_22C3A5908(&qword_27D9BF850, &qword_22C92D260);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v33 = v81 - v32;
  v34 = sub_22C90256C();
  v35 = sub_22C369824(v34);
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v35);
  sub_22C369838();
  v42 = v41 - v40;
  sub_22C90269C();
  if (sub_22C370B74(v33, 1, v34) != 1)
  {
    v81[0] = v29;
    v81[2] = v37;
    v43 = *(v37 + 32);
    v44 = sub_22C38BD8C();
    v81[3] = v34;
    v46 = v45(v44);
    v81[1] = v42;
    result = MEMORY[0x2318AF920](v46);
    v48 = 0;
    v102 = *(result + 16);
    v98 = v21 + 88;
    v99 = v21 + 16;
    v97 = *MEMORY[0x277D1CA30];
    v91 = (v90 + 4);
    v92 = (v21 + 96);
    ++v90;
    v85 = (v82 + 88);
    v86 = (v82 + 32);
    v84 = *MEMORY[0x277D1C528];
    v83 = (v82 + 8);
    v50 = v95;
    v49 = v96;
    v93 = v11;
    v89 = v21;
    v100 = result;
    v101 = (v21 + 8);
    while (1)
    {
      if (v102 == v48)
      {

        v73 = sub_22C87ACAC();
        v74(v73);
        return 0;
      }

      if (v48 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v51 = *(v21 + 16);
      v51(v50, result + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v48, v18);
      v51(v103, v50, v18);
      v52 = v103;
      v53 = (*(v21 + 88))(v103, v18);
      if (v53 != v97)
      {
        v60 = v52;
        v61 = v101;
        (*v101)(v60, v18);
        goto LABEL_18;
      }

      (*v92)(v52, v18);
      (*v91)(v49, v52, v11);
      v54 = sub_22C9024DC();
      v56 = v55;
      if (v54 == sub_22C90213C() && v56 == v57)
      {
        break;
      }

      v59 = sub_22C90B4FC();

      if (v59)
      {
        goto LABEL_15;
      }

      v49 = v96;
      (*v90)(v96, v11);
LABEL_17:
      v50 = v95;
      v61 = v101;
LABEL_18:
      (*v61)(v50, v18);
      ++v48;
      result = v100;
    }

LABEL_15:
    v62 = sub_22C8FFECC();
    v63 = *(v62 + 48);
    v64 = *(v62 + 52);
    swift_allocObject();
    sub_22C8FFEBC();
    v65 = v94;
    v66 = v96;
    sub_22C9024CC();
    sub_22C87AC54();
    sub_22C8FFEAC();
    (*v90)(v66, v93);
    v67 = sub_22C371530();
    sub_22C38B120(v67, v68);

    sub_22C36C640(v3, 0, 1, v65);
    v69 = v87;
    v70 = *v86;
    (*v86)(v87, v3, v65);
    v71 = v88;
    v70(v88, v69, v65);
    v72 = (*v85)(v71, v65);
    if (v72 == v84)
    {
      (*(v82 + 96))(v71, v94);
      v76 = *(v71 + 1);

      v77 = v89 + 32;
      v78 = v81[0];
      (*(v89 + 32))(v81[0], v95, v18);
      v75 = sub_22C87A7DC();
      v79 = sub_22C87ACAC();
      v80(v79);
      (*(v77 - 24))(v78, v18);
      return v75;
    }

    (*v83)(v71, v94);
    v11 = v93;
    v49 = v96;
    v21 = v89;
    goto LABEL_17;
  }

  sub_22C3770B0(v33, &qword_27D9BF850, &qword_22C92D260);
  return 0;
}

uint64_t sub_22C87A7DC()
{
  v1 = sub_22C3A5908(&qword_27D9C0CC0, &qword_22C92AFC8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v70 - v3;
  v5 = sub_22C90214C();
  v6 = sub_22C369824(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C3698E4();
  v72 = v11;
  sub_22C369930();
  MEMORY[0x28223BE20](v12);
  v71 = &v70 - v13;
  v14 = sub_22C9024FC();
  v15 = sub_22C369824(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22C369838();
  v22 = v21 - v20;
  v23 = sub_22C9024EC();
  v24 = sub_22C369824(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  sub_22C369838();
  v31 = v30 - v29;
  (*(v17 + 16))(v22, v0, v14);
  v32 = *(v17 + 88);
  v33 = sub_22C38BD8C();
  if (v34(v33) != *MEMORY[0x277D1CA30])
  {
    v46 = *(v17 + 8);
    v47 = sub_22C38BD8C();
LABEL_9:
    v48(v47);
    return 0;
  }

  v35 = *(v17 + 96);
  v36 = sub_22C38BD8C();
  v37(v36);
  (*(v26 + 32))(v31, v22, v23);
  v38 = sub_22C9024DC();
  v40 = v39;
  if (v38 == sub_22C90213C() && v40 == v41)
  {

LABEL_11:
    v70 = v8;
    v49 = sub_22C8FFECC();
    v50 = *(v49 + 48);
    v51 = *(v49 + 52);
    swift_allocObject();
    sub_22C8FFEBC();
    v52 = sub_22C9024CC();
    v54 = v53;
    sub_22C87AC54();
    sub_22C8FFEAC();
    v56 = sub_22C378940();
    v57(v56);
    sub_22C38B120(v52, v54);

    sub_22C36C640(v4, 0, 1, v5);
    v58 = v70;
    v59 = v71;
    v60 = v70[4];
    v60(v71, v4, v5);
    v61 = v72;
    v60(v72, v59, v5);
    v62 = v58[11];
    v63 = sub_22C371530();
    if (v64(v63) == *MEMORY[0x277D1C528])
    {
      v65 = v58[12];
      v66 = sub_22C371530();
      v67(v66);
      result = *v61;
      v68 = v61[1];
      return result;
    }

    v69 = v58[1];
    v47 = sub_22C371530();
    goto LABEL_9;
  }

  v43 = sub_22C90B4FC();

  if (v43)
  {
    goto LABEL_11;
  }

  v44 = sub_22C378940();
  v45(v44);
  return 0;
}

unint64_t sub_22C87AC54()
{
  result = qword_27D9C0CC8;
  if (!qword_27D9C0CC8)
  {
    sub_22C90214C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0CC8);
  }

  return result;
}

uint64_t sub_22C87ACAC()
{
  v1 = *(*(v0 - 288) + 8);
  result = *(v0 - 296);
  v3 = *(v0 - 280);
  return result;
}

uint64_t sub_22C87ACCC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22C3A5908(&qword_27D9BF498, &unk_22C922750);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v62 - v4;
  sub_22C9099FC();
  sub_22C36A948();
  v65 = v7;
  v66 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C3698A8();
  v64 = v10;
  sub_22C908DAC();
  sub_22C36A948();
  v68 = v12;
  v69 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C3698A8();
  v67 = v15;
  v16 = sub_22C908EAC();
  sub_22C36A948();
  v18 = v17;
  v20 = *(v19 + 64);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v63 = &v62 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v62 - v27;
  v29 = sub_22C3A5908(&qword_27D9BC0B0, &unk_22C912AD0);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v33 = &v62 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v35 = &v62 - v34;
  sub_22C908ADC();
  v36 = sub_22C908ABC();
  if (sub_22C370B74(v35, 1, v36) == 1)
  {
    goto LABEL_2;
  }

  v62 = a1;
  sub_22C711034(v35, v33);
  sub_22C36A948();
  v40 = v39;
  v42 = *(v41 + 88);
  v43 = sub_22C36A10C();
  v45 = v44(v43);
  if (v45 == *MEMORY[0x277D1E8E0] || v45 == *MEMORY[0x277D1E8C8])
  {
    v46 = *(v40 + 96);
    v47 = sub_22C36A10C();
    v48(v47);
    (*(v18 + 32))(v28, v33, v16);
    sub_22C908E1C();
    (*(v18 + 8))(v28, v16);
    return sub_22C3770B0(v35, &qword_27D9BC0B0, &unk_22C912AD0);
  }

  if (v45 != *MEMORY[0x277D1E8D0])
  {
    v58 = *(v40 + 8);
    v59 = sub_22C36A10C();
    v60(v59);
    a1 = v62;
LABEL_2:
    v37 = sub_22C90944C();
    v38 = a1;
LABEL_3:
    sub_22C36C640(v38, 1, 1, v37);
    return sub_22C3770B0(v35, &qword_27D9BC0B0, &unk_22C912AD0);
  }

  v50 = *(v40 + 96);
  v51 = sub_22C36A10C();
  v52(v51);
  (*(v68 + 32))(v67, v33, v69);
  v53 = v64;
  sub_22C908D7C();
  v54 = sub_22C908A1C();
  result = (*(v65 + 8))(v53, v66);
  if (!v54)
  {
LABEL_17:
    (*(v68 + 8))(v67, v69);
    v37 = sub_22C90944C();
    v38 = v62;
    goto LABEL_3;
  }

  v55 = 0;
  v56 = *(v54 + 16);
  v66 = v18 + 16;
  while (1)
  {
    if (v56 == v55)
    {

      goto LABEL_17;
    }

    if (v55 >= *(v54 + 16))
    {
      break;
    }

    (*(v18 + 16))(v24, v54 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v55, v16);
    sub_22C908E1C();
    v57 = sub_22C90944C();
    if (sub_22C370B74(v5, 1, v57) != 1)
    {

      sub_22C3770B0(v5, &qword_27D9BF498, &unk_22C922750);
      v61 = v63;
      (*(v18 + 32))(v63, v24, v16);
      sub_22C908E1C();
      (*(v68 + 8))(v67, v69);
      (*(v18 + 8))(v61, v16);
      return sub_22C3770B0(v35, &qword_27D9BC0B0, &unk_22C912AD0);
    }

    ++v55;
    sub_22C3770B0(v5, &qword_27D9BF498, &unk_22C922750);
    result = (*(v18 + 8))(v24, v16);
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for ResponseGenerationSnippetLabelsExecutor()
{
  result = qword_27D9C0CD0;
  if (!qword_27D9C0CD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C87B338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a2;
  v5 = sub_22C90254C();
  v6 = sub_22C369824(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v6);
  v13 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v49 - v14;
  v16 = sub_22C9026BC();
  v17 = sub_22C369824(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22C369838();
  v24 = v23 - v22;
  (*(v19 + 16))(v23 - v22, a1, v16);
  v25 = (*(v19 + 88))(v24, v16);
  if (v25 != *MEMORY[0x277D1CBF0] && v25 != *MEMORY[0x277D1CB98])
  {
    if (v25 == *MEMORY[0x277D1CBA8])
    {
      goto LABEL_11;
    }

    if (v25 != *MEMORY[0x277D1CBB0] && v25 != *MEMORY[0x277D1CBB8])
    {
      if (v25 == *MEMORY[0x277D1CBD0])
      {
LABEL_11:
        v49[0] = a3;
        v32 = sub_22C36A754();
        v33(v32);
        v34 = 0;
        v35 = *(v51 + 16);
        v49[1] = v8 + 88;
        v50 = v35;
        v36 = *MEMORY[0x277D1CA90];
        while (1)
        {
          if (v50 == v34)
          {
            v29 = v49[0];
            goto LABEL_7;
          }

          v37 = *(v8 + 16);
          v37(v15, v51 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v34, v5);
          v37(v13, v15, v5);
          v38 = (*(v8 + 88))(v13, v5);
          v39 = *(v8 + 8);
          v39(v13, v5);
          if (v38 == v36)
          {
            break;
          }

          ++v34;
          v39(v15, v5);
        }

        v48 = v49[0];
        (*(v8 + 32))(v49[0], v15, v5);
        v29 = v48;
        v30 = 0;
        return sub_22C36C640(v29, v30, 1, v5);
      }

      if (v25 != *MEMORY[0x277D1CBD8] && v25 != *MEMORY[0x277D1CBC0] && v25 != *MEMORY[0x277D1CBE0] && v25 != *MEMORY[0x277D1CBA0] && v25 != *MEMORY[0x277D1CBC8] && v25 != *MEMORY[0x277D1CBE8])
      {
        sub_22C36C640(a3, 1, 1, v5);
        v46 = sub_22C36A754();
        return v47(v46);
      }
    }
  }

  v27 = sub_22C36A754();
  v28(v27);
  v29 = a3;
LABEL_7:
  v30 = 1;
  return sub_22C36C640(v29, v30, 1, v5);
}

uint64_t sub_22C87B6F8()
{
  sub_22C369980();
  *(v0 + 24) = v1;
  *(v0 + 32) = v2;
  *(v0 + 136) = v3;
  *(v0 + 16) = v4;
  v5 = sub_22C9063DC();
  *(v0 + 40) = v5;
  sub_22C3699B8(v5);
  *(v0 + 48) = v6;
  v8 = *(v7 + 64);
  *(v0 + 56) = sub_22C3699D4();
  v9 = sub_22C90253C();
  *(v0 + 64) = v9;
  sub_22C3699B8(v9);
  *(v0 + 72) = v10;
  v12 = *(v11 + 64);
  *(v0 + 80) = sub_22C3699D4();
  v13 = sub_22C3A5908(&qword_27D9C0CE8, &qword_22C92B028);
  sub_22C369914(v13);
  v15 = *(v14 + 64);
  *(v0 + 88) = sub_22C3699D4();
  v16 = sub_22C90254C();
  *(v0 + 96) = v16;
  sub_22C3699B8(v16);
  *(v0 + 104) = v17;
  v19 = *(v18 + 64) + 15;
  *(v0 + 112) = swift_task_alloc();
  *(v0 + 120) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C87B884, 0, 0);
}

uint64_t sub_22C87B884()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  sub_22C87B338(*(v0 + 16), *(v0 + 32), v1);
  if (sub_22C370B74(v1, 1, v2) == 1)
  {
    sub_22C3770B0(*(v0 + 88), &qword_27D9C0CE8, &qword_22C92B028);
  }

  else
  {
    v3 = *(v0 + 112);
    v4 = *(v0 + 120);
    v5 = *(v0 + 96);
    v6 = *(v0 + 104);
    (*(v6 + 32))(v4, *(v0 + 88), v5);
    (*(v6 + 16))(v3, v4, v5);
    v7 = (*(v6 + 88))(v3, v5);
    v8 = *(v0 + 112);
    v9 = *(v0 + 120);
    v10 = *(v0 + 96);
    v11 = *(v0 + 104);
    if (v7 == *MEMORY[0x277D1CA90])
    {
      v13 = *(v0 + 72);
      v12 = *(v0 + 80);
      v14 = *(v0 + 64);
      (*(v11 + 96))(*(v0 + 112), *(v0 + 96));
      (*(v13 + 32))(v12, v8, v14);
      sub_22C90251C();
      sub_22C9024DC();
      (*(v13 + 8))(v12, v14);
      (*(v11 + 8))(v9, v10);
      v16 = *(v0 + 112);
      v15 = *(v0 + 120);
      v18 = *(v0 + 80);
      v17 = *(v0 + 88);
      v19 = *(v0 + 56);

      v20 = *(v0 + 8);
      sub_22C372034();

      __asm { BRAA            X5, X16 }
    }

    v23 = *(v11 + 8);
    v23(*(v0 + 120), *(v0 + 96));
    v23(v8, v10);
  }

  v24 = *(v0 + 56);
  sub_22C90405C();
  v25 = sub_22C9063CC();
  v26 = sub_22C90AABC();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_22C366000, v25, v26, "The tool has requested a Confirmation but provided no label for the buttons. Using fallback labels.)", v27, 2u);
    sub_22C3699EC();
  }

  v29 = *(v0 + 48);
  v28 = *(v0 + 56);
  v30 = *(v0 + 40);

  (*(v29 + 8))(v28, v30);
  v31 = swift_task_alloc();
  *(v0 + 128) = v31;
  *v31 = v0;
  v31[1] = sub_22C87BBB4;
  v32 = *(v0 + 136);
  v33 = *(v0 + 24);
  sub_22C372034();

  return sub_22C87BD68();
}

void sub_22C87BBB4()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v11 = *v0;

  v3 = v1[15];
  v4 = v1[14];
  v5 = v1[11];
  v6 = v1[10];
  v7 = v1[7];

  v8 = *(v11 + 8);
  sub_22C372034();

  __asm { BRAA            X5, X16 }
}

uint64_t sub_22C87BD68()
{
  sub_22C369980();
  *(v0 + 244) = v1;
  *(v0 + 136) = v2;
  v3 = sub_22C9063DC();
  *(v0 + 144) = v3;
  sub_22C3699B8(v3);
  *(v0 + 152) = v4;
  v6 = *(v5 + 64) + 15;
  *(v0 + 160) = swift_task_alloc();
  *(v0 + 168) = swift_task_alloc();
  v7 = sub_22C90304C();
  *(v0 + 176) = v7;
  sub_22C369914(v7);
  v9 = *(v8 + 64);
  *(v0 + 184) = sub_22C3699D4();
  v10 = sub_22C3A5908(&qword_27D9BB138, &qword_22C90DB70);
  sub_22C369914(v10);
  v12 = *(v11 + 64);
  *(v0 + 192) = sub_22C3699D4();

  return MEMORY[0x2822009F8](sub_22C87BE7C, 0, 0);
}

uint64_t sub_22C87BE7C()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  v4 = v0[17];
  sub_22C902F2C();
  sub_22C3A5908(&qword_27D9BBCA0, &qword_22C9120F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22C90F800;
  *(inited + 32) = 0x656C61636F6CLL;
  *(inited + 40) = 0xE600000000000000;
  v6 = sub_22C9006BC();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  sub_22C909F0C();
  v8 = sub_22C902EAC();
  v0[25] = v8;
  sub_22C381CB4();
  v0[15] = MEMORY[0x277D84F90];
  sub_22C87CBA4();
  sub_22C3A5908(&qword_27D9C0CF8, &unk_22C92B040);
  sub_22C87CBFC();
  sub_22C90AE4C();
  v9 = type metadata accessor for ResponseGenerationSnippetLabelsExecutor();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = v8;
  v0[26] = sub_22C87C8B0(v1, v2);
  v13 = swift_task_alloc();
  v0[27] = v13;
  *v13 = v0;
  v13[1] = sub_22C87C04C;

  return sub_22C87C780();
}

uint64_t sub_22C87C04C()
{
  sub_22C369980();
  v2 = *v1;
  v3 = *(*v1 + 216);
  v7 = *v1;
  *(v2 + 224) = v4;
  *(v2 + 232) = v0;

  if (v0)
  {
    v5 = sub_22C87C274;
  }

  else
  {
    v5 = sub_22C87C15C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22C87C15C()
{
  v1 = *(v0 + 224);
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  if (*(v0 + 244))
  {
    v4 = 243;
  }

  else
  {
    v4 = 241;
  }

  v5 = 240;
  if (*(v0 + 244))
  {
    v5 = 242;
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  if (*(v0 + 244))
  {
    v7 = 3;
  }

  else
  {
    v7 = 1;
  }

  *(v0 + v5) = v6;
  v8 = sub_22C902FFC();
  v10 = v9;
  *(v0 + v4) = v7;
  v11 = sub_22C902FFC();
  v13 = v12;

  v15 = *(v0 + 184);
  v14 = *(v0 + 192);
  v17 = *(v0 + 160);
  v16 = *(v0 + 168);

  v18 = *(v0 + 8);

  return v18(v8, v10, v11, v13);
}

uint64_t sub_22C87C274()
{
  v48 = v0;
  v1 = *(v0 + 232);
  v2 = *(v0 + 168);
  sub_22C90405C();
  v3 = v1;
  v4 = sub_22C9063CC();
  v5 = sub_22C90AADC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 232);
    v7 = *(v0 + 168);
    v8 = *(v0 + 144);
    v9 = *(v0 + 152);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v47 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v13 = *(v0 + 96);
    v12 = *(v0 + 104);
    v14 = *(v0 + 112);
    v15 = sub_22C90B57C();
    v17 = sub_22C36F9F4(v15, v16, &v47);

    *(v10 + 4) = v17;
    _os_log_impl(&dword_22C366000, v4, v5, "Error retrieving localized Confirmation labels from CAT: %s", v10, 0xCu);
    sub_22C36FF94(v11);
    sub_22C3699EC();
    sub_22C3699EC();

    v18 = *(v9 + 8);
    v18(v7, v8);
  }

  else
  {
    v19 = *(v0 + 168);
    v20 = *(v0 + 144);
    v21 = *(v0 + 152);

    v18 = *(v21 + 8);
    v18(v19, v20);
  }

  if (*(v0 + 244) == 1)
  {
    v22 = 0x6C65636E6143;
    v23 = 0x6574656C6544;
    v24 = *(v0 + 160);
    sub_22C90405C();
    v25 = sub_22C9063CC();
    v26 = sub_22C90AACC();
    v27 = os_log_type_enabled(v25, v26);
    v46 = *(v0 + 232);
    v28 = *(v0 + 208);
    v30 = *(v0 + 152);
    v29 = *(v0 + 160);
    v31 = *(v0 + 144);
    if (v27)
    {
      v44 = *(v0 + 200);
      v45 = *(v0 + 144);
      v32 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v32 = 136315394;
      v43 = v29;
      v33 = 0xE600000000000000;
      *(v32 + 4) = sub_22C36F9F4(0x6574656C6544, 0xE600000000000000, &v47);
      *(v32 + 12) = 2080;
      *(v32 + 14) = sub_22C36F9F4(0x6C65636E6143, 0xE600000000000000, &v47);
      _os_log_impl(&dword_22C366000, v25, v26, "Confirmation is destructive using labels: (%s, %s)", v32, 0x16u);
      swift_arrayDestroy();
      sub_22C3699EC();
      sub_22C3699EC();

      v18(v43, v45);
    }

    else
    {

      v18(v29, v31);
      v33 = 0xE600000000000000;
    }

    v36 = 0xE600000000000000;
  }

  else
  {
    v34 = *(v0 + 200);
    v35 = *(v0 + 208);

    v36 = 0xE200000000000000;
    v33 = 0xE300000000000000;
    v22 = 28494;
    v23 = 7562585;
  }

  v38 = *(v0 + 184);
  v37 = *(v0 + 192);
  v40 = *(v0 + 160);
  v39 = *(v0 + 168);

  v41 = *(v0 + 8);

  return v41(v23, v33, v22, v36);
}

uint64_t sub_22C87C618()
{
  v0 = sub_22C90B21C();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_22C87C664(char a1)
{
  result = 0x4C6D7269666E6F63;
  switch(a1)
  {
    case 1:
      result = 0x6562614C796E6564;
      break;
    case 2:
      result = 0xD000000000000017;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C87C724@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_22C87C618();
  *a2 = result;
  return result;
}

unint64_t sub_22C87C754@<X0>(unint64_t *a1@<X8>)
{
  result = sub_22C87C664(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_22C87C780()
{
  v1 = *(MEMORY[0x277D55C68] + 4);
  v6 = (*MEMORY[0x277D55C68] + MEMORY[0x277D55C68]);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  v3 = sub_22C87CB50();
  *v2 = v0;
  v2[1] = sub_22C5D9AB0;
  v4 = MEMORY[0x277D84F90];

  return v6(0xD000000000000019, 0x800000022C938AD0, v4, &type metadata for ResponseGenerationSnippetLabelsExecutor.ResponseGenerationSnippetLabelId, v3);
}

uint64_t sub_22C87C85C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_22C87C8B0(a1, a2);
}

uint64_t sub_22C87C8B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C90304C();
  v5 = sub_22C369824(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v12 = v11 - v10;
  v13 = sub_22C3A5908(&qword_27D9BB138, &qword_22C90DB70);
  v14 = sub_22C369914(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22C3F966C(a1, &v20 - v17);
  (*(v7 + 16))(v12, a2, v4);
  v18 = sub_22C902FCC();
  (*(v7 + 8))(a2, v4);
  sub_22C3770B0(a1, &qword_27D9BB138, &qword_22C90DB70);
  return v18;
}

uint64_t sub_22C87CA1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C90304C();
  v5 = sub_22C369824(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v12 = v11 - v10;
  v13 = *(v2 + 48);
  v14 = *(v2 + 52);
  swift_allocObject();
  (*(v7 + 16))(v12, a2, v4);
  v15 = sub_22C902FDC();
  (*(v7 + 8))(a2, v4);
  return v15;
}

uint64_t sub_22C87CB18()
{
  sub_22C902FEC();

  return swift_deallocClassInstance();
}

unint64_t sub_22C87CB50()
{
  result = qword_27D9C0CE0;
  if (!qword_27D9C0CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0CE0);
  }

  return result;
}

unint64_t sub_22C87CBA4()
{
  result = qword_27D9C0CF0;
  if (!qword_27D9C0CF0)
  {
    sub_22C90304C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0CF0);
  }

  return result;
}

unint64_t sub_22C87CBFC()
{
  result = qword_27D9C0D00;
  if (!qword_27D9C0D00)
  {
    sub_22C3AC1A0(&qword_27D9C0CF8, &unk_22C92B040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0D00);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ResponseGenerationSnippetLabelsExecutor.ResponseGenerationSnippetLabelId(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22C87CD40()
{
  result = qword_27D9C0D08;
  if (!qword_27D9C0D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0D08);
  }

  return result;
}

uint64_t sub_22C87CD94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[31] = a7;
  v8[32] = v7;
  v8[29] = a5;
  v8[30] = a6;
  v8[27] = a3;
  v8[28] = a4;
  v8[25] = a1;
  v8[26] = a2;
  v9 = sub_22C90234C();
  v8[33] = v9;
  sub_22C3699B8(v9);
  v8[34] = v10;
  v12 = *(v11 + 64);
  v8[35] = sub_22C3699D4();
  v13 = sub_22C90304C();
  v8[36] = v13;
  sub_22C3699B8(v13);
  v8[37] = v14;
  v16 = *(v15 + 64);
  v8[38] = sub_22C3699D4();
  v17 = sub_22C90219C();
  v8[39] = v17;
  sub_22C3699B8(v17);
  v8[40] = v18;
  v20 = *(v19 + 64);
  v8[41] = sub_22C3699D4();
  v21 = sub_22C9018AC();
  v8[42] = v21;
  sub_22C3699B8(v21);
  v8[43] = v22;
  v24 = *(v23 + 64);
  v8[44] = sub_22C3699D4();
  v25 = sub_22C90077C();
  v8[45] = v25;
  sub_22C3699B8(v25);
  v8[46] = v26;
  v28 = *(v27 + 64);
  v8[47] = sub_22C3699D4();
  v29 = sub_22C9063DC();
  v8[48] = v29;
  sub_22C3699B8(v29);
  v8[49] = v30;
  v32 = *(v31 + 64) + 15;
  v8[50] = swift_task_alloc();
  v8[51] = swift_task_alloc();
  v8[52] = swift_task_alloc();
  v33 = *(*(sub_22C3A5908(&qword_27D9BB138, &qword_22C90DB70) - 8) + 64);
  v8[53] = sub_22C3699D4();
  v34 = sub_22C90046C();
  v8[54] = v34;
  sub_22C3699B8(v34);
  v8[55] = v35;
  v37 = *(v36 + 64) + 15;
  v8[56] = swift_task_alloc();
  v8[57] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C87D07C, 0, 0);
}

uint64_t sub_22C87D07C()
{
  v69 = v0;
  v1 = *(v0 + 424);
  v2 = *(v0 + 432);
  sub_22C3F966C(*(v0 + 256) + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime33DefaultCATResponseDialogGenerator_defaultTemplateFolder, v1);
  if (sub_22C370B74(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 400);
    sub_22C3770B0(*(v0 + 424), &qword_27D9BB138, &qword_22C90DB70);
    sub_22C90405C();
    v4 = sub_22C9063CC();
    v5 = sub_22C90AADC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_22C366000, v4, v5, "Can't find any template folder, return empty response.", v6, 2u);
      sub_22C3699EC();
    }

    v8 = *(v0 + 392);
    v7 = *(v0 + 400);
    v9 = *(v0 + 384);
    v10 = *(v0 + 200);

    (*(v8 + 8))(v7, v9);
    sub_22C90233C();
    sub_22C36A500();

    sub_22C369A24();
    sub_22C36EC40();

    __asm { BRAA            X1, X16 }
  }

  v13 = *(v0 + 448);
  v14 = *(v0 + 456);
  v15 = *(v0 + 432);
  v16 = *(v0 + 440);
  v17 = *(v0 + 416);
  v19 = *(v0 + 216);
  v18 = *(v0 + 224);
  (*(v16 + 32))(v14, *(v0 + 424), v15);
  sub_22C90405C();
  (*(v16 + 16))(v13, v14, v15);

  v20 = sub_22C9063CC();
  v21 = sub_22C90AABC();

  v22 = os_log_type_enabled(v20, v21);
  v24 = *(v0 + 440);
  v23 = *(v0 + 448);
  v25 = *(v0 + 432);
  v26 = *(v0 + 416);
  v27 = *(v0 + 384);
  v28 = *(v0 + 392);
  if (v22)
  {
    log = *(v0 + 224);
    v64 = *(v0 + 384);
    v66 = *(v0 + 416);
    v30 = *(v0 + 208);
    v29 = *(v0 + 216);
    v31 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    *v31 = 136315651;
    *(v31 + 4) = sub_22C36F9F4(v30, v29, &v68);
    *(v31 + 12) = 2085;
    v32 = sub_22C909EDC();
    v34 = sub_22C36F9F4(v32, v33, &v68);

    *(v31 + 14) = v34;
    *(v31 + 22) = 2080;
    sub_22C87E278();
    v35 = sub_22C90B47C();
    v37 = v36;
    loga = v20;
    v38 = v21;
    v39 = *(v24 + 8);
    v39(v23, v25);
    v40 = sub_22C36F9F4(v35, v37, &v68);

    *(v31 + 24) = v40;
    _os_log_impl(&dword_22C366000, loga, v38, "Generating response dialog using template:\ncatId: %s\nparameters: %{sensitive}s\ntemplateFolder:%s", v31, 0x20u);
    swift_arrayDestroy();
    sub_22C3699EC();
    sub_22C3699EC();

    v41 = *(v28 + 8);
    v41(v66, v64);
  }

  else
  {

    v39 = *(v24 + 8);
    v39(v23, v25);
    v41 = *(v28 + 8);
    v41(v26, v27);
  }

  *(v0 + 464) = v41;
  *(v0 + 472) = v39;
  v42 = *(v0 + 352);
  v44 = *(v0 + 336);
  v43 = *(v0 + 344);
  v45 = *(v0 + 320);
  v46 = *(v0 + 328);
  v65 = *(v0 + 312);
  v67 = *(v0 + 304);
  v48 = *(v0 + 240);
  v47 = *(v0 + 248);
  (*(*(v0 + 368) + 16))(*(v0 + 376), *(v0 + 232), *(v0 + 360));
  v49 = sub_22C902F0C();
  v50 = *(v49 + 48);
  v51 = *(v49 + 52);
  swift_allocObject();
  sub_22C902EDC();
  sub_22C87DED4();
  sub_22C902EEC();

  v52 = (*(v43 + 8))(v42, v44);
  MEMORY[0x2318AF660](v52);
  sub_22C87E034();
  (*(v45 + 8))(v46, v65);
  sub_22C902ECC();

  *(v0 + 480) = sub_22C902EFC();

  sub_22C902F4C();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  sub_22C90303C();
  v53 = *(MEMORY[0x277D55C20] + 4);
  v54 = swift_task_alloc();
  *(v0 + 488) = v54;
  *v54 = v0;
  v54[1] = sub_22C87D61C;
  v55 = *(v0 + 456);
  v56 = *(v0 + 304);
  v57 = *(v0 + 216);
  v58 = *(v0 + 224);
  v59 = *(v0 + 208);
  sub_22C36EC40();

  return MEMORY[0x2821B7E50]();
}

uint64_t sub_22C87D61C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 488);
  v5 = *(*v2 + 304);
  v6 = *(*v2 + 296);
  v7 = *(*v2 + 288);
  v10 = *v2;
  *(v3 + 496) = a1;
  *(v3 + 504) = v1;

  (*(v6 + 8))(v5, v7);
  sub_22C3770B0(v3 + 16, &qword_27D9C0D10, &unk_22C92B198);
  if (v1)
  {
    v8 = sub_22C87DDC0;
  }

  else
  {
    v8 = sub_22C87D7B0;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_22C87D7B0()
{
  v79 = v0;
  v1 = [*(v0 + 496) dialog];
  sub_22C87E234();
  v2 = sub_22C90A5EC();

  if (sub_22C36E2B8(v2))
  {
    sub_22C633A2C(0, (v2 & 0xC000000000000001) == 0, v2);
    if ((v2 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x2318B8460](0, v2);
    }

    else
    {
      v3 = *(v2 + 32);
    }

    v4 = v3;
    v5 = *(v0 + 408);
    v6 = *(v0 + 280);
    v8 = *(v0 + 208);
    v7 = *(v0 + 216);

    sub_22C90233C();
    v9 = [v4 fullPrint];
    sub_22C90A11C();
    sub_22C387674();
    sub_22C3726C4();
    sub_22C90230C();
    v10 = [v4 fullSpeak];
    sub_22C90A11C();
    sub_22C387674();
    sub_22C3726C4();
    sub_22C90232C();
    v11 = [v4 supportingPrint];
    sub_22C90A11C();
    sub_22C387674();
    sub_22C3726C4();
    sub_22C90229C();
    v12 = [v4 supportingSpeak];
    sub_22C90A11C();
    sub_22C387674();
    sub_22C3726C4();
    sub_22C9022BC();

    sub_22C9022DC();
    v13 = [v4 dialogId];
    sub_22C90A11C();

    sub_22C90227C();
    sub_22C90405C();

    v14 = sub_22C9063CC();
    v15 = sub_22C90AABC();

    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 496);
    v76 = v17;
    v77 = *(v0 + 480);
    if (v16)
    {
      v74 = *(v0 + 432);
      v75 = *(v0 + 456);
      v72 = *(v0 + 408);
      v73 = *(v0 + 440);
      v70 = *(v0 + 392);
      v71 = *(v0 + 384);
      v18 = *(v0 + 280);
      v68 = *(v0 + 208);
      v69 = *(v0 + 216);
      v19 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      *v19 = 136644099;
      sub_22C37E200();
      v20 = sub_22C9022FC();
      v22 = v21;
      swift_endAccess();
      sub_22C36F9F4(v20, v22, &v78);
      sub_22C87E2D0();
      *(v19 + 4) = v20;
      *(v19 + 12) = 2085;
      sub_22C37E200();
      v23 = sub_22C90231C();
      v25 = v24;
      swift_endAccess();
      if (v25)
      {
        v26 = v23;
      }

      else
      {
        v26 = 7104878;
      }

      if (v25)
      {
        v27 = v25;
      }

      else
      {
        v27 = 0xE300000000000000;
      }

      sub_22C36F9F4(v26, v27, &v78);
      sub_22C87E2D0();
      *(v19 + 14) = v25;
      *(v19 + 22) = 2085;
      sub_22C37E200();
      v28 = sub_22C90228C();
      v30 = v29;
      swift_endAccess();
      if (v30)
      {
        v31 = v28;
      }

      else
      {
        v31 = 7104878;
      }

      if (v30)
      {
        v32 = v30;
      }

      else
      {
        v32 = 0xE300000000000000;
      }

      sub_22C36F9F4(v31, v32, &v78);
      sub_22C87E2D0();
      *(v19 + 24) = v30;
      *(v19 + 32) = 2085;
      sub_22C37E200();
      v33 = sub_22C9022AC();
      v35 = v34;
      swift_endAccess();
      if (v35)
      {
        v36 = v33;
      }

      else
      {
        v36 = 7104878;
      }

      if (v35)
      {
        v37 = v35;
      }

      else
      {
        v37 = 0xE300000000000000;
      }

      sub_22C36F9F4(v36, v37, &v78);
      sub_22C87E2D0();
      *(v19 + 34) = v35;
      *(v19 + 42) = 2080;
      *(v19 + 44) = sub_22C36F9F4(v68, v69, &v78);
      *(v19 + 52) = 2080;
      sub_22C37E200();
      v38 = sub_22C90226C();
      v40 = v39;
      swift_endAccess();
      if (v40)
      {
        v41 = v38;
      }

      else
      {
        v41 = 7104878;
      }

      if (v40)
      {
        v42 = v40;
      }

      else
      {
        v42 = 0xE300000000000000;
      }

      v43 = sub_22C36F9F4(v41, v42, &v78);

      *(v19 + 54) = v43;
      _os_log_impl(&dword_22C366000, v14, v15, "Templated response dialog:\nfullPrint: %{sensitive}s\nfullSpeak: %{sensitive}s\nsupportingPrint: %{sensitive}s\nsupportingSpeak: %{sensitive}s\ncatId: %s\ndialogId: %s", v19, 0x3Eu);
      swift_arrayDestroy();
      sub_22C3699EC();
      sub_22C3699EC();

      (*(v70 + 8))(v72, v71);
      (*(v73 + 8))(v75, v74);
    }

    else
    {
      v52 = *(v0 + 464);
      v51 = *(v0 + 472);
      v53 = *(v0 + 456);
      v54 = *(v0 + 432);
      v55 = *(v0 + 440);
      v56 = *(v0 + 408);
      v57 = v4;
      v59 = *(v0 + 384);
      v58 = *(v0 + 392);

      v52(v56, v59);
      v51(v53, v54);
    }

    v61 = *(v0 + 272);
    v60 = *(v0 + 280);
    v62 = *(v0 + 264);
    v63 = *(v0 + 200);
    swift_beginAccess();
    v64 = sub_22C36C5AC(v61);
    v65(v64);
    (*(v61 + 8))(v60, v62);
  }

  else
  {
    v44 = *(v0 + 496);
    v46 = *(v0 + 472);
    v45 = *(v0 + 480);
    v47 = *(v0 + 456);
    v48 = *(v0 + 432);
    v49 = *(v0 + 440);
    v50 = *(v0 + 200);

    sub_22C90233C();

    v46(v47, v48);
  }

  sub_22C36A500();

  sub_22C369A24();

  return v66();
}
uint64_t sub_24A8973EC()
{
  v1 = *v0;
  sub_24A8BB934();
  sub_24A8BB2C4();

  return sub_24A8BB954();
}

uint64_t sub_24A8974BC()
{
  *v0;
  *v0;
  *v0;
  sub_24A8BB2C4();
}

uint64_t sub_24A897578()
{
  v1 = *v0;
  sub_24A8BB934();
  sub_24A8BB2C4();

  return sub_24A8BB954();
}

uint64_t sub_24A897644@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24A89822C();
  *a2 = result;
  return result;
}

void sub_24A897674(uint64_t *a1@<X8>)
{
  v2 = 0xE90000000000006ELL;
  v3 = 0x656B6F5468747561;
  v4 = 0xE800000000000000;
  v5 = 0x656D614E74736F68;
  if (*v1 != 2)
  {
    v5 = 0x54746E756F636361;
    v4 = 0xEB00000000657079;
  }

  if (*v1)
  {
    v3 = 0x64496E6F73726570;
    v2 = 0xE800000000000000;
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

uint64_t sub_24A897700()
{
  v1 = 0x656B6F5468747561;
  v2 = 0x656D614E74736F68;
  if (*v0 != 2)
  {
    v2 = 0x54746E756F636361;
  }

  if (*v0)
  {
    v1 = 0x64496E6F73726570;
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

uint64_t sub_24A897788@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24A89822C();
  *a1 = result;
  return result;
}

uint64_t sub_24A8977C8(uint64_t a1)
{
  v2 = sub_24A898278();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A897804(uint64_t a1)
{
  v2 = sub_24A898278();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMNAuthenticationCredential.__allocating_init(accountType:authToken:personId:hostName:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = swift_allocObject();
  v15 = *a1;
  *(result + 16) = a2;
  *(result + 24) = a3;
  *(result + 32) = a4;
  *(result + 40) = a5;
  *(result + 48) = a6;
  *(result + 56) = a7;
  *(result + 64) = v15;
  return result;
}

uint64_t FMNAuthenticationCredential.init(accountType:authToken:personId:hostName:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *a1;
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  *(v7 + 32) = a4;
  *(v7 + 40) = a5;
  *(v7 + 48) = a6;
  *(v7 + 56) = a7;
  *(v7 + 64) = v8;
  return v7;
}

uint64_t FMNAuthenticationCredential.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  FMNAuthenticationCredential.init(from:)(a1);
  return v2;
}

uint64_t FMNAuthenticationCredential.init(from:)(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF790C8, &qword_24A8BC610);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24A898278();
  sub_24A8BB974();
  if (!v2)
  {
    v29 = 0;
    v10 = sub_24A8BB664();
    v12 = v11;
    v13 = v10;
    v28 = 1;
    v14 = sub_24A8BB664();
    v16 = v15;
    v24 = v14;
    v27 = 2;
    v22 = sub_24A8BB664();
    v23 = v17;
    v26 = 3;
    v18._countAndFlagsBits = sub_24A8BB664();
    FMNAccountType.init(rawValue:)(v18);
    if (v25 != 15)
    {
      HIDWORD(v21) = v25;
      (*(v5 + 8))(v8, v4);
      *(v1 + 16) = v13;
      *(v1 + 24) = v12;
      *(v1 + 32) = v24;
      *(v1 + 40) = v16;
      v20 = v23;
      *(v1 + 48) = v22;
      *(v1 + 56) = v20;
      *(v1 + 64) = BYTE4(v21);
      goto LABEL_4;
    }

    sub_24A8982CC();
    swift_allocError();
    swift_willThrow();
    (*(v5 + 8))(v8, v4);
  }

  type metadata accessor for FMNAuthenticationCredential();
  swift_deallocPartialClassInstance();
LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v1;
}

uint64_t sub_24A897C08(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF790E0, &qword_24A8BC618);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24A898278();
  sub_24A8BB984();
  swift_beginAccess();
  v12 = *(v4 + 16);
  v13 = *(v4 + 24);
  v20[64] = 0;

  sub_24A8BB6E4();
  if (v3)
  {
    (*(v7 + 8))(v10, v6);
  }

  else
  {

    swift_beginAccess();
    v14 = *(v4 + 32);
    v15 = *(v4 + 40);
    v20[40] = 1;

    sub_24A8BB6E4();

    swift_beginAccess();
    v16 = *(v4 + 48);
    v17 = *(v4 + 56);
    v20[16] = 2;

    sub_24A8BB6E4();

    v19 = swift_beginAccess();
    v20[15] = *(v4 + 64);
    FMNAccountType.rawValue.getter(v19);
    v20[14] = 3;
    sub_24A8BB6E4();
    (*(v7 + 8))(v10, v6);
  }
}

void *FMNAuthenticationCredential.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return v0;
}

uint64_t FMNAuthenticationCredential.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8D8](v0, 65, 7);
}

uint64_t sub_24A897F04()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  return v2;
}

uint64_t sub_24A897F54(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();
  v6 = *(v5 + 24);
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
}

uint64_t (*sub_24A897FAC())()
{
  v1 = *v0;
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_24A898000(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();
  v6 = *(v5 + 40);
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
}

uint64_t (*sub_24A898058())()
{
  v1 = *v0;
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_24A8980AC@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = swift_beginAccess();
  *a1 = *(v3 + 64);
  return result;
}

uint64_t sub_24A8980F4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();
  v6 = *(v5 + 56);
  *(v5 + 48) = a1;
  *(v5 + 56) = a2;
}

uint64_t (*sub_24A89814C())()
{
  v1 = *v0;
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_24A8981A0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for FMNAuthenticationCredential();
  v5 = swift_allocObject();
  result = FMNAuthenticationCredential.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_24A89822C()
{
  v0 = sub_24A8BB624();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_24A898278()
{
  result = qword_27EF790D0;
  if (!qword_27EF790D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF790D0);
  }

  return result;
}

unint64_t sub_24A8982CC()
{
  result = qword_27EF790D8;
  if (!qword_27EF790D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF790D8);
  }

  return result;
}

unint64_t sub_24A898320(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF790B0, &qword_24A8BC4E0);
    v3 = sub_24A8BB614();
    v4 = a1 + 32;

    while (1)
    {
      sub_24A898C1C(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_24A88C87C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_24A890B2C(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t _s12FMNetworking27FMNAuthenticationCredentialC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = v4 == *(a2 + 16) && v5 == *(a2 + 24);
  if (!v6 && (sub_24A8BB804() & 1) == 0)
  {
    goto LABEL_15;
  }

  swift_beginAccess();
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  swift_beginAccess();
  if ((v7 != *(a2 + 32) || v8 != *(a2 + 40)) && (sub_24A8BB804() & 1) == 0)
  {
    goto LABEL_15;
  }

  if (swift_beginAccess(), v9 = *(a1 + 48), v10 = *(a1 + 56), swift_beginAccess(), v9 == *(a2 + 48)) && v10 == *(a2 + 56) || (sub_24A8BB804())
  {
    swift_beginAccess();
    v11 = *(a1 + 64);
    v12 = swift_beginAccess();
    v19 = *(a2 + 64);
    v13 = FMNAccountType.rawValue.getter(v12);
    v15 = v14;
    if (v13 == FMNAccountType.rawValue.getter(v13) && v15 == v16)
    {
      v17 = 1;
    }

    else
    {
      v17 = sub_24A8BB804();
    }
  }

  else
  {
LABEL_15:
    v17 = 0;
  }

  return v17 & 1;
}

unint64_t sub_24A89860C()
{
  result = qword_27EF790E8;
  if (!qword_27EF790E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF790E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMNAPSTokenProvidingError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for FMNAPSTokenProvidingError(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for FMNAuthenticationCredential.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FMNAuthenticationCredential.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
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

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24A898B18()
{
  result = qword_27EF790F0;
  if (!qword_27EF790F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF790F0);
  }

  return result;
}

unint64_t sub_24A898B70()
{
  result = qword_27EF790F8;
  if (!qword_27EF790F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF790F8);
  }

  return result;
}

unint64_t sub_24A898BC8()
{
  result = qword_27EF79100;
  if (!qword_27EF79100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79100);
  }

  return result;
}

uint64_t sub_24A898C1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79108, &unk_24A8BC940);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A898C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v65 = a5;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79110, &qword_24A8BDC50);
  v11 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56);
  v57 = (&v55 - v12);
  v13 = sub_24A8BAF24();
  v63 = *(v13 - 8);
  v64 = v13;
  v14 = *(v63 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v62 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v61 = &v55 - v17;
  sub_24A886914(a1, v82);
  sub_24A886914(a2, v83);
  sub_24A883EEC(v82, &v69, &qword_27EF79160, &qword_24A8BC968);
  sub_24A883B44(&v69, v79);
  sub_24A883B44(v72, v78);
  v18 = sub_24A886978(v79);
  sub_24A886B10(v18, v77);
  v19 = v6[5];
  v67 = v6;
  v68 = v18;
  v66 = v18;
  type metadata accessor for FMNHttpClient();
  sub_24A8BB424();
  v60 = 0;
  v20 = v69;
  sub_24A886914(v82, v75);
  sub_24A886914(v83, &v76);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79148, &unk_24A8BD740);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v24 = sub_24A8BB1D4();
  v25 = swift_allocObject();
  *(v25 + 16) = a3;
  *(v25 + 24) = a4;

  sub_24A8BB184();

  v26 = swift_allocObject();
  *(v26 + 16) = a3;
  *(v26 + 24) = a4;

  sub_24A8BB194();

  v27 = v6[2];
  v28 = v6[3];
  sub_24A883EEC(v75, &v71, &qword_27EF79160, &qword_24A8BC968);
  v29 = OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_credential;
  swift_beginAccess();
  v58 = v20;
  sub_24A883EEC(v20 + v29, &v73, &qword_27EF79120, &qword_24A8BC960);
  sub_24A883EEC(v77, v74, &qword_27EF79118, &unk_24A8BD720);
  swift_unknownObjectWeakInit();
  *(&v69 + 1) = v27;
  v70 = v28;
  swift_weakInit();
  v74[8] = v65;
  swift_unknownObjectRetain();
  v30 = sub_24A8A2F40(a3, a4, v24);
  sub_24A886D90(&v69, &qword_27EF79168, &unk_24A8BC970);
  sub_24A886D90(v75, &qword_27EF79160, &qword_24A8BC968);
  v31 = swift_allocObject();
  v31[2] = v6;
  v31[3] = v30;
  v31[4] = v24;
  v33 = v80;
  v32 = v81;
  __swift_project_boxed_opaque_existential_1(v79, v80);
  v34 = *(v32 + 16);
  v65 = v24;

  v35 = v30;
  v36 = v63;
  v59 = v35;

  v37 = v62;
  v38 = v33;
  v39 = v61;
  v40 = v32;
  v41 = v64;
  v34(v38, v40);
  v42 = v58;
  sub_24A888D88(v37, v77, v39);
  v43 = *(v36 + 8);
  v43(v37, v41);
  v44 = v60;
  sub_24A8AA108(v78, v39, sub_24A8995D4, v31);
  if (v44)
  {
    v43(v39, v41);
    sub_24A8BB3C4();
    sub_24A882E60();
    v45 = sub_24A8BB464();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_24A8BC300;
    swift_getErrorValue();
    v47 = sub_24A8BB8D4();
    v49 = v48;
    *(v46 + 56) = MEMORY[0x277D837D0];
    *(v46 + 64) = sub_24A8897F0();
    *(v46 + 32) = v47;
    *(v46 + 40) = v49;
    sub_24A8BB0B4();

    v50 = v57;
    *v57 = v44;
    swift_storeEnumTagMultiPayload();
    v51 = v44;
    sub_24A8BB3D4();
    v52 = sub_24A8BB464();
    sub_24A8BB0B4();

    v53 = v59;
    sub_24A88F02C(v50, v59, v65);

    sub_24A886D90(v50, &qword_27EF79110, &qword_24A8BDC50);
  }

  else
  {

    v43(v39, v41);
  }

  sub_24A886D90(v77, &qword_27EF79118, &unk_24A8BD720);
  __swift_destroy_boxed_opaque_existential_0Tm(v78);
  sub_24A886D90(v82, &qword_27EF79160, &qword_24A8BC968);
  return __swift_destroy_boxed_opaque_existential_0Tm(v79);
}

uint64_t sub_24A89936C(void *a1, void (*a2)(void *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79110, &qword_24A8BDC50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (v16 - v6);
  sub_24A8BB3C4();
  sub_24A882E60();
  v8 = sub_24A8BB464();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_24A8BC300;
  v16[1] = a1;
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79130, "VC");
  v11 = sub_24A8BB2A4();
  v13 = v12;
  *(v9 + 56) = MEMORY[0x277D837D0];
  *(v9 + 64) = sub_24A8897F0();
  *(v9 + 32) = v11;
  *(v9 + 40) = v13;
  sub_24A8BB0B4();

  *v7 = a1;
  swift_storeEnumTagMultiPayload();
  v14 = a1;
  a2(v7);
  return sub_24A886D90(v7, &qword_27EF79110, &qword_24A8BDC50);
}

uint64_t sub_24A899520@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  result = sub_24A888B10(a1);
  *a2 = result;
  return result;
}

unint64_t sub_24A899560()
{
  result = qword_2814AAA18;
  if (!qword_2814AAA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814AAA18);
  }

  return result;
}

uint64_t FMNServerCommand.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24A8BAFC4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FMNServerCommand.data.getter()
{
  v1 = v0 + *(type metadata accessor for FMNServerCommand() + 20);
  v2 = *v1;
  sub_24A88C9AC(*v1, *(v1 + 8));
  return v2;
}

uint64_t type metadata accessor for FMNServerCommand()
{
  result = qword_27EF79170;
  if (!qword_27EF79170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FMNServerCommand.headers.getter()
{
  v1 = *(v0 + *(type metadata accessor for FMNServerCommand() + 24));
}

void sub_24A899734()
{
  sub_24A8BAFC4();
  if (v0 <= 0x3F)
  {
    sub_24A883CB0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

id sub_24A8997C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = sub_24A8BAD74();
  v9 = sub_24A8BAF84();
  v13[4] = a3;
  v13[5] = a4;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_24A88D49C;
  v13[3] = &block_descriptor_0;
  v10 = _Block_copy(v13);

  v11 = [v7 uploadTaskWithRequest:v8 fromFile:v9 completionHandler:v10];

  _Block_release(v10);

  return v11;
}

FMNetworking::FMNAccountType_optional __swiftcall FMNAccountType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3 = v1;
  v4 = rawValue._countAndFlagsBits == 6712678 && rawValue._object == 0xE300000000000000;
  if (v4 || (countAndFlagsBits = rawValue._countAndFlagsBits, (sub_24A8BB804() & 1) != 0))
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 0x707041666D66 && object == 0xE600000000000000 || (sub_24A8BB804() & 1) != 0)
  {

    v7 = 1;
  }

  else if (countAndFlagsBits == 1885957478 && object == 0xE400000000000000 || (sub_24A8BB804() & 1) != 0)
  {

    v7 = 2;
  }

  else if (countAndFlagsBits == 0x6972695370696D66 && object == 0xE800000000000000 || (sub_24A8BB804() & 1) != 0)
  {

    v7 = 3;
  }

  else if (countAndFlagsBits == 0x7075746573 && object == 0xE500000000000000 || (sub_24A8BB804() & 1) != 0)
  {

    v7 = 4;
  }

  else if (countAndFlagsBits == 0x6150686372616573 && object == 0xEB00000000797472 || (sub_24A8BB804() & 1) != 0)
  {

    v7 = 5;
  }

  else if (countAndFlagsBits == 0x4C676E6972696170 && object == 0xEB000000006B636FLL || (sub_24A8BB804() & 1) != 0)
  {

    v7 = 6;
  }

  else if (countAndFlagsBits == 0x726F737365636361 && object == 0xE900000000000079 || (sub_24A8BB804() & 1) != 0)
  {

    v7 = 7;
  }

  else if (countAndFlagsBits == 0xD000000000000013 && 0x800000024A8BF270 == object || (sub_24A8BB804() & 1) != 0)
  {

    v7 = 8;
  }

  else if (countAndFlagsBits == 0x7373656363413277 && object == 0xEB0000000079726FLL || (sub_24A8BB804() & 1) != 0)
  {

    v7 = 9;
  }

  else if (countAndFlagsBits == 0xD000000000000014 && 0x800000024A8BF290 == object || (sub_24A8BB804() & 1) != 0)
  {

    v7 = 10;
  }

  else if (countAndFlagsBits == 0x6F4C657275636573 && object == 0xEF736E6F69746163 || (sub_24A8BB804() & 1) != 0)
  {

    v7 = 11;
  }

  else if (countAndFlagsBits == 0xD000000000000014 && 0x800000024A8BF2B0 == object || (sub_24A8BB804() & 1) != 0)
  {

    v7 = 12;
  }

  else if (countAndFlagsBits == 0x726168536D657469 && object == 0xEB00000000676E69 || (sub_24A8BB804() & 1) != 0)
  {

    v7 = 13;
  }

  else if (countAndFlagsBits == 1701736302 && object == 0xE400000000000000)
  {

    v7 = 14;
  }

  else
  {
    v8 = sub_24A8BB804();

    if (v8)
    {
      v7 = 14;
    }

    else
    {
      v7 = 15;
    }
  }

  *v3 = v7;
  return result;
}

uint64_t sub_24A899DA4()
{
  v1 = *v0;
  v2 = sub_24A8BB934();
  FMNAccountType.description.getter(v2);
  sub_24A8BB2C4();

  return sub_24A8BB954();
}

uint64_t sub_24A899E0C(uint64_t a1)
{
  v3 = *v1;
  FMNAccountType.description.getter(a1);
  sub_24A8BB2C4();
}

uint64_t sub_24A899E70()
{
  v1 = *v0;
  v2 = sub_24A8BB934();
  FMNAccountType.description.getter(v2);
  sub_24A8BB2C4();

  return sub_24A8BB954();
}

uint64_t sub_24A899ED4(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = FMNAccountType.description.getter(a1);
  v4 = v3;
  if (v2 == FMNAccountType.description.getter(v2) && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_24A8BB804();
  }

  return v7 & 1;
}

uint64_t sub_24A899F7C@<X0>(uint64_t *a1@<X8>)
{
  result = FMNAccountType.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t FMNAuthenticationProviderError.hashValue.getter()
{
  v1 = *v0;
  sub_24A8BB934();
  MEMORY[0x24C21EF50](v1);
  return sub_24A8BB954();
}

uint64_t sub_24A89A030()
{
  v1 = *v0;
  sub_24A8BB934();
  MEMORY[0x24C21EF50](v1);
  return sub_24A8BB954();
}

uint64_t sub_24A89A078()
{
  v1 = *v0;
  sub_24A8BB934();
  MEMORY[0x24C21EF50](v1);
  return sub_24A8BB954();
}

FMNetworking::FMNAuthenticationOverride_optional __swiftcall FMNAuthenticationOverride.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A8BB624();

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

unint64_t FMNAuthenticationOverride.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD000000000000016;
  }

  else
  {
    result = 0xD000000000000017;
  }

  *v0;
  return result;
}

uint64_t sub_24A89A158(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000016;
  }

  else
  {
    v4 = 0xD000000000000017;
  }

  if (v3)
  {
    v5 = "Id";
  }

  else
  {
    v5 = "FMNetworking.fmip.token";
  }

  if (*a2)
  {
    v6 = 0xD000000000000016;
  }

  else
  {
    v6 = 0xD000000000000017;
  }

  if (*a2)
  {
    v7 = "FMNetworking.fmip.token";
  }

  else
  {
    v7 = "Id";
  }

  if (v4 == v6 && (v5 | 0x8000000000000000) == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_24A8BB804();
  }

  return v9 & 1;
}

uint64_t sub_24A89A200()
{
  v1 = *v0;
  sub_24A8BB934();
  sub_24A8BB2C4();

  return sub_24A8BB954();
}

uint64_t sub_24A89A27C()
{
  *v0;
  sub_24A8BB2C4();
}

uint64_t sub_24A89A2E4()
{
  v1 = *v0;
  sub_24A8BB934();
  sub_24A8BB2C4();

  return sub_24A8BB954();
}

uint64_t sub_24A89A35C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_24A8BB624();

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

void sub_24A89A3BC(unint64_t *a1@<X8>)
{
  v2 = "FMNetworking.fmip.token";
  v3 = 0xD000000000000016;
  if (!*v1)
  {
    v3 = 0xD000000000000017;
    v2 = "Id";
  }

  *a1 = v3;
  a1[1] = v2 | 0x8000000000000000;
}

uint64_t sub_24A89A42C(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t FMNAuthenticationProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  FMNAuthenticationProvider.init()();
  return v0;
}

void sub_24A89A4F4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  if (a2)
  {
    sub_24A89C6F4();
    v4 = swift_allocError();
    *v5 = 4;
    (a3)(0, v4);
  }

  else
  {
    a3();
  }
}

uint64_t sub_24A89A588(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_24A8BB0D4();
  v25 = *(v10 - 8);
  v11 = *(v25 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_24A8BB104();
  v14 = *(v24 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v24);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A8BB3D4();
  if (qword_2814AB038 != -1)
  {
    swift_once();
  }

  v18 = MEMORY[0x277D84F90];
  sub_24A8BB0B4();
  v23 = *(v5 + 24);
  v19 = swift_allocObject();
  v19[2] = v5;
  v19[3] = a3;
  v19[4] = a4;
  v19[5] = a1;
  v19[6] = a2;
  aBlock[4] = sub_24A89BBE4;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A8875B4;
  aBlock[3] = &block_descriptor_12;
  v20 = _Block_copy(aBlock);

  v21 = a2;
  sub_24A8BB0F4();
  v26 = v18;
  sub_24A882D00(qword_2814AACF0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF797F0, &qword_24A8BD2C0);
  sub_24A882D48(&qword_2814AACD0, &qword_27EF797F0, &qword_24A8BD2C0);
  sub_24A8BB4E4();
  MEMORY[0x24C21EA40](0, v17, v13, v20);
  _Block_release(v20);
  (*(v25 + 8))(v13, v10);
  (*(v14 + 8))(v17, v24);
}

void sub_24A89A8E0(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, void *a5)
{
  v10 = *(a1 + 56);
  *(a1 + 56) = 0;

  v11 = sub_24A8844D8();
  v12 = [v11 aa_primaryAppleAccount];

  if (v12)
  {
    swift_beginAccess();
    v15 = *(a4 + 64);

    sub_24A89CE14(v12, &v15, a5, a1, a2, a3);
  }

  else
  {
    sub_24A8BB3D4();
    if (qword_2814AB038 != -1)
    {
      swift_once();
    }

    sub_24A8BB0B4();
    sub_24A89C6F4();
    v13 = swift_allocError();
    *v14 = 0;
    a2();
  }
}

uint64_t sub_24A89AA7C(void *a1, uint64_t (*a2)(void *))
{
  if (a1)
  {
    sub_24A8BB3C4();
    if (qword_2814AB038 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_24A8BC300;
    v5 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF79480, &unk_24A8BCDA0);
    v6 = sub_24A8BB2A4();
    v8 = v7;
    *(v4 + 56) = MEMORY[0x277D837D0];
    *(v4 + 64) = sub_24A8897F0();
    *(v4 + 32) = v6;
    *(v4 + 40) = v8;
    sub_24A8BB0B4();
  }

  return a2(a1);
}

void sub_24A89ABC0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_24A89AC2C(void *a1, void (*a2)(void, void *), uint64_t a3, char a4)
{
  sub_24A8BB3D4();
  if (qword_2814AB038 != -1)
  {
    swift_once();
  }

  sub_24A8BB0B4();
  swift_beginAccess();
  v8 = a1[2];
  v9 = __OFSUB__(v8, 1);
  v10 = v8 - 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a1[2] = v10;
    v11 = swift_allocObject();
    *(v11 + 16) = a2;
    *(v11 + 24) = a3;
    *(v11 + 32) = a1;
    *(v11 + 40) = a4;
    swift_beginAccess();
    if (a1[5])
    {
      v12 = a1[4];

      v13 = sub_24A8BB244();
      v14 = [objc_opt_self() bundleWithIdentifier_];

      if (v14)
      {
        sub_24A8BAF34();
        v15 = objc_opt_self();
        v16 = sub_24A8BB244();

        v17 = sub_24A8BB244();

        v18 = swift_allocObject();
        *(v18 + 16) = sub_24A89D4F8;
        *(v18 + 24) = v11;
        aBlock[4] = sub_24A89D508;
        aBlock[5] = v18;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_24A89ABC0;
        aBlock[3] = &block_descriptor_58;
        v19 = _Block_copy(aBlock);

        [v15 renewCredentialsWithBundleId:v16 force:0 reason:v17 completion:{v19, 0xE000000000000000}];

        _Block_release(v19);

        return;
      }

      sub_24A89C6F4();
      v28 = swift_allocError();
      *v29 = 8;
      sub_24A8BB3C4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_24A8BC300;
      aBlock[0] = v28;
      v31 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF79480, &unk_24A8BCDA0);
      v32 = sub_24A8BB2A4();
      v34 = v33;
      *(v30 + 56) = MEMORY[0x277D837D0];
      *(v30 + 64) = sub_24A8897F0();
      *(v30 + 32) = v32;
      *(v30 + 40) = v34;
      sub_24A8BB0B4();

      a2(0, v28);

      v27 = v28;
    }

    else
    {
      sub_24A89C6F4();
      v20 = swift_allocError();
      *v21 = 8;

      sub_24A8BB3C4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_24A8BC300;
      aBlock[0] = v20;
      v23 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF79480, &unk_24A8BCDA0);
      v24 = sub_24A8BB2A4();
      v26 = v25;
      *(v22 + 56) = MEMORY[0x277D837D0];
      *(v22 + 64) = sub_24A8897F0();
      *(v22 + 32) = v24;
      *(v22 + 40) = v26;
      sub_24A8BB0B4();

      a2(0, v20);

      v27 = v20;
    }
  }
}

uint64_t sub_24A89B140(void *a1, uint64_t (*a2)(void, void *), uint64_t a3, uint64_t a4, char a5)
{
  if (a1)
  {
    sub_24A8BB3C4();
    if (qword_2814AB038 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_24A8BC300;
    v9 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF79480, &unk_24A8BCDA0);
    v10 = sub_24A8BB2A4();
    v12 = v11;
    *(v8 + 56) = MEMORY[0x277D837D0];
    *(v8 + 64) = sub_24A8897F0();
    *(v8 + 32) = v10;
    *(v8 + 40) = v12;
    sub_24A8BB0B4();

    return a2(0, a1);
  }

  else
  {
    sub_24A8BB3D4();
    if (qword_2814AB038 != -1)
    {
      swift_once();
    }

    sub_24A8BB0B4();
    v15 = a5;
    return sub_24A883F54(&v15, a2, a3);
  }
}

void static FMNAuthenticationProvider.configurationURL(accountType:)(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79180, &qword_24A8BC9F0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v23 - v7;
  v9 = *a1;
  if (v9 <= 9)
  {
    if (*a1 <= 7u)
    {
      if (v9 - 6 < 2)
      {
        v10 = "icloud_fmip_al_service";
LABEL_12:
        v14 = v10 - 32;
        v12 = MEMORY[0x24C21F020](v6);
        v15 = v14 | 0x8000000000000000;
        v16 = a2;
        v13 = 0xD000000000000016;
LABEL_21:
        sub_24A89B654(v13, v15, v16);

        objc_autoreleasePoolPop(v12);
        return;
      }

      if (v9 == 5)
      {
        v17 = "icloud_acsn_gateway_url";
LABEL_19:
        v11 = (v17 - 32);
        v12 = MEMORY[0x24C21F020](v6);
        v13 = 0xD000000000000017;
        goto LABEL_20;
      }

      goto LABEL_26;
    }

    if (v9 == 8)
    {
      v18 = MEMORY[0x24C21F020](v6);
      sub_24A89B654(0xD000000000000021, 0x800000024A8BF420, v8);
      objc_autoreleasePoolPop(v18);
      v19 = sub_24A8BAFC4();
      v20 = *(v19 - 8);
      if ((*(v20 + 48))(v8, 1, v19) == 1)
      {
        sub_24A886D90(v8, &qword_27EF79180, &qword_24A8BC9F0);
        sub_24A8BAFB4();
      }

      else
      {
        (*(v20 + 32))(a2, v8, v19);
        (*(v20 + 56))(a2, 0, 1, v19);
      }

      return;
    }

    if (v9 != 9)
    {
      goto LABEL_26;
    }

    v11 = "findmy_owner_device_url";
    v12 = MEMORY[0x24C21F020](v6);
    v13 = 0xD000000000000015;
LABEL_20:
    v15 = v11 | 0x8000000000000000;
    v16 = a2;
    goto LABEL_21;
  }

  if (*a1 <= 0xBu)
  {
    if (v9 != 10 && v9 != 11)
    {
      goto LABEL_26;
    }

    v11 = "nProvider: credentialDidFail";
    v12 = MEMORY[0x24C21F020](v6);
    v13 = 0xD000000000000019;
    goto LABEL_20;
  }

  if (v9 == 12)
  {
    v17 = "findmy_owner_device_url";
    goto LABEL_19;
  }

  if (v9 == 13)
  {
    v10 = "findmy_key_sharing_url";
    goto LABEL_12;
  }

LABEL_26:
  v21 = sub_24A8BAFC4();
  v22 = *(*(v21 - 8) + 56);

  v22(a2, 1, 1, v21);
}

id sub_24A89B654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79180, &qword_24A8BC9F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v27 - v8;
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v11 = result;
    v12 = [result aa_primaryAppleAccount];

    if (!v12)
    {
      sub_24A8BB3C4();
      if (qword_2814AB038 != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_24A8BC300;
      *(v24 + 56) = MEMORY[0x277D837D0];
      *(v24 + 64) = sub_24A8897F0();
      *(v24 + 32) = a1;
      *(v24 + 40) = a2;

      sub_24A8BB0B4();

      goto LABEL_17;
    }

    v13 = sub_24A8BB244();
    v14 = [v12 propertiesForDataclass_];

    if (!v14 || (v15 = sub_24A8BB1F4(), v14, v16 = sub_24A88DD3C(v15), , !v16))
    {
      sub_24A8BB3C4();
      if (qword_2814AB038 == -1)
      {
        goto LABEL_16;
      }

      goto LABEL_19;
    }

    if (!*(v16 + 16) || (v17 = sub_24A88C87C(a1, a2), (v18 & 1) == 0))
    {

LABEL_15:
      sub_24A8BB3C4();
      if (qword_2814AB038 == -1)
      {
LABEL_16:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_24A8BC300;
        *(v25 + 56) = MEMORY[0x277D837D0];
        *(v25 + 64) = sub_24A8897F0();
        *(v25 + 32) = a1;
        *(v25 + 40) = a2;

        sub_24A8BB0B4();

LABEL_17:
        v26 = sub_24A8BAFC4();
        return (*(*(v26 - 8) + 56))(a3, 1, 1, v26);
      }

LABEL_19:
      swift_once();
      goto LABEL_16;
    }

    v19 = (*(v16 + 56) + 16 * v17);
    v20 = *v19;
    v21 = v19[1];

    sub_24A8BAFB4();

    v22 = sub_24A8BAFC4();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v9, 1, v22) == 1)
    {
      sub_24A886D90(v9, &qword_27EF79180, &qword_24A8BC9F0);
      goto LABEL_15;
    }

    (*(v23 + 32))(a3, v9, v22);
    return (*(v23 + 56))(a3, 0, 1, v22);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t FMNAuthenticationProvider.deinit()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  return v0;
}

uint64_t FMNAuthenticationProvider.__deallocating_deinit()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

unint64_t sub_24A89BBF8()
{
  result = qword_27EF79188;
  if (!qword_27EF79188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79188);
  }

  return result;
}

unint64_t sub_24A89BC50()
{
  result = qword_27EF79190;
  if (!qword_27EF79190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79190);
  }

  return result;
}

unint64_t sub_24A89BCA8()
{
  result = qword_27EF79198;
  if (!qword_27EF79198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79198);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMNAccountType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FMNAccountType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
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

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMNAuthenticationProviderError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FMNAuthenticationProviderError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
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

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMNAuthenticationOverride(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FMNAuthenticationOverride(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
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

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id sub_24A89C284(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF791A0, &qword_24A8BCD88);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v31 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79180, &qword_24A8BC9F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v31 - v8;
  v10 = sub_24A8BAFC4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 dataclassProperties];
  if (result)
  {
    v16 = result;
    v17 = sub_24A8BB244();
    v18 = [v16 valueForKey_];

    if (v18)
    {
      sub_24A8BB4D4();
      swift_unknownObjectRelease();
    }

    else
    {
      v32 = 0u;
      v33 = 0u;
    }

    v34 = v32;
    v35 = v33;
    if (*(&v33 + 1))
    {
      sub_24A882CB8(0, &unk_2814AACC0, 0x277CBEAC0);
      if ((swift_dynamicCast() & 1) == 0)
      {

        return 0;
      }

      v19 = v31;
      v20 = sub_24A8BB244();
      v21 = v19;
      v22 = [v19 valueForKey_];

      if (v22)
      {
        sub_24A8BB4D4();
        swift_unknownObjectRelease();
      }

      else
      {
        v32 = 0u;
        v33 = 0u;
      }

      v34 = v32;
      v35 = v33;
      if (*(&v33 + 1))
      {
        if ((swift_dynamicCast() & 1) == 0)
        {

          return 0;
        }

        sub_24A8BAFB4();

        if ((*(v11 + 48))(v9, 1, v10) == 1)
        {

          v23 = &qword_27EF79180;
          v24 = &qword_24A8BC9F0;
          v25 = v9;
        }

        else
        {
          (*(v11 + 32))(v14, v9, v10);
          sub_24A8BAEA4();
          v26 = sub_24A8BAF24();
          v27 = *(v26 - 8);
          if ((*(v27 + 48))(v5, 1, v26) != 1)
          {
            v28 = sub_24A8BAEC4();
            v30 = v29;

            (*(v11 + 8))(v14, v10);
            (*(v27 + 8))(v5, v26);
            if (v30)
            {
              return v28;
            }

            return 0;
          }

          (*(v11 + 8))(v14, v10);

          v23 = &qword_27EF791A0;
          v24 = &qword_24A8BCD88;
          v25 = v5;
        }

        goto LABEL_17;
      }
    }

    v23 = &qword_27EF79078;
    v24 = &qword_24A8BC4B0;
    v25 = &v34;
LABEL_17:
    sub_24A886D90(v25, v23, v24);
    return 0;
  }

  return result;
}

unint64_t sub_24A89C6F4()
{
  result = qword_27EF791A8;
  if (!qword_27EF791A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF791A8);
  }

  return result;
}

uint64_t sub_24A89C748(void *a1, char *a2, void *a3, uint64_t a4, void (*a5)(void, uint64_t), uint64_t a6)
{
  v41 = a1;
  v11 = sub_24A8BB0D4();
  v39 = *(v11 - 8);
  v40 = v11;
  v12 = *(v39 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24A8BB104();
  v38 = *(v15 - 8);
  v16 = *(v38 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  *(v19 + 16) = a5;
  *(v19 + 24) = a6;
  v20 = *a2;

  if ((sub_24A8BAD54() & 1) == 0)
  {
    v37 = a5;
    v24 = swift_beginAccess();
    if (*(a4 + 16) <= 0)
    {
LABEL_12:
      sub_24A8BB3D4();
      if (qword_2814AB038 != -1)
      {
        swift_once();
      }

      sub_24A8BB0B4();
      sub_24A89C6F4();
      v27 = swift_allocError();
      *v28 = 4;
      v37(0, v27);
      v29 = v27;
      goto LABEL_15;
    }

    LOBYTE(aBlock[0]) = v20;
    if (FMNAccountType.description.getter(v24) == 1701736302 && v25 == 0xE400000000000000)
    {

      goto LABEL_12;
    }

    v26 = sub_24A8BB804();

    if (v26)
    {
      goto LABEL_12;
    }

    aBlock[0] = a3;
    v30 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79130, "VC");
    if (swift_dynamicCast() && !v42)
    {
      sub_24A8BB3D4();
      if (qword_2814AB038 == -1)
      {
LABEL_23:
        sub_24A8BB0B4();
        sub_24A89C6F4();
        v34 = swift_allocError();
        *v35 = 4;
        v37(0, v34);
        v29 = v34;
LABEL_15:
      }
    }

    else
    {
      if (![v41 aa_isManagedAppleID])
      {
        v41 = *(a4 + 24);
        v31 = swift_allocObject();
        *(v31 + 16) = a4;
        *(v31 + 24) = sub_24A89D510;
        *(v31 + 32) = v19;
        *(v31 + 40) = v20;
        aBlock[4] = sub_24A89D538;
        aBlock[5] = v31;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_24A8875B4;
        aBlock[3] = &block_descriptor_68;
        v32 = _Block_copy(aBlock);

        sub_24A8BB0F4();
        v42 = MEMORY[0x277D84F90];
        sub_24A882D00(qword_2814AACF0, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF797F0, &qword_24A8BD2C0);
        sub_24A882D48(&qword_2814AACD0, &qword_27EF797F0, &qword_24A8BD2C0);
        v33 = v40;
        sub_24A8BB4E4();
        MEMORY[0x24C21EA40](0, v18, v14, v32);
        _Block_release(v32);
        (*(v39 + 8))(v14, v33);
        (*(v38 + 8))(v18, v15);
      }

      sub_24A8BB3D4();
      if (qword_2814AB038 == -1)
      {
        goto LABEL_23;
      }
    }

    swift_once();
    goto LABEL_23;
  }

  sub_24A8BB3D4();
  if (qword_2814AB038 != -1)
  {
    swift_once();
  }

  sub_24A8BB0B4();
  sub_24A89C6F4();
  v21 = swift_allocError();
  *v22 = 4;
  a5(0, v21);
}

uint64_t sub_24A89CE14(void *a1, char *a2, void *a3, uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v41 = a1;
  v11 = sub_24A8BB0D4();
  v40 = *(v11 - 8);
  v12 = *(v40 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24A8BB104();
  v16 = *(v15 - 8);
  v38 = v15;
  v39 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  *(v20 + 16) = a5;
  *(v20 + 24) = a6;
  v21 = *a2;

  if (sub_24A8BAD54())
  {
    sub_24A8BB3D4();
    if (qword_2814AB038 != -1)
    {
      swift_once();
    }

    sub_24A8BB0B4();
    sub_24A89C6F4();
    v22 = swift_allocError();
    *v23 = 10;
    a5();
  }

  v37 = v11;
  v25 = swift_beginAccess();
  if (*(a4 + 16) <= 0)
  {
    goto LABEL_12;
  }

  LOBYTE(aBlock[0]) = v21;
  if (FMNAccountType.description.getter(v25) == 1701736302 && v26 == 0xE400000000000000)
  {

LABEL_12:
    sub_24A8BB3D4();
    if (qword_2814AB038 != -1)
    {
      swift_once();
    }

    sub_24A8BB0B4();
    sub_24A89C6F4();
    v29 = swift_allocError();
    v30 = 6;
LABEL_15:
    *v28 = v30;
    a5();
  }

  v27 = sub_24A8BB804();

  if (v27)
  {
    goto LABEL_12;
  }

  aBlock[0] = a3;
  v31 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79130, "VC");
  if (!swift_dynamicCast() || v42)
  {
    if (![v41 aa_isManagedAppleID])
    {
      v32 = *(a4 + 24);
      v33 = swift_allocObject();
      *(v33 + 16) = a4;
      *(v33 + 24) = sub_24A89D4BC;
      *(v33 + 32) = v20;
      *(v33 + 40) = v21;
      aBlock[4] = sub_24A89D4E8;
      aBlock[5] = v33;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24A8875B4;
      aBlock[3] = &block_descriptor_49;
      v34 = _Block_copy(aBlock);

      sub_24A8BB0F4();
      v42 = MEMORY[0x277D84F90];
      sub_24A882D00(qword_2814AACF0, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF797F0, &qword_24A8BD2C0);
      sub_24A882D48(&qword_2814AACD0, &qword_27EF797F0, &qword_24A8BD2C0);
      v35 = v37;
      sub_24A8BB4E4();
      MEMORY[0x24C21EA40](0, v19, v14, v34);
      _Block_release(v34);
      (*(v40 + 8))(v14, v35);
      (*(v39 + 8))(v19, v38);
    }

    sub_24A8BB3D4();
    if (qword_2814AB038 != -1)
    {
      swift_once();
    }

    sub_24A8BB0B4();
    sub_24A89C6F4();
    v29 = swift_allocError();
    v30 = 7;
    goto LABEL_15;
  }

  sub_24A8BB3D4();
  if (qword_2814AB038 != -1)
  {
    swift_once();
  }

  sub_24A8BB0B4();
  (a5)(a3);
}

uint64_t sub_24A89D4BC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(a2);
}

uint64_t type metadata accessor for FMNHTTPArchiveReader()
{
  result = qword_27EF791B0;
  if (!qword_27EF791B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A89D5B0()
{
  result = sub_24A8BAFC4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void *sub_24A89D61C()
{
  v1 = v0;
  v2 = sub_24A8BAE04();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
  v7 = swift_allocObject();
  v21 = xmmword_24A8BC300;
  *(v7 + 16) = xmmword_24A8BC300;
  v8 = sub_24A8BAF64();
  v10 = v9;
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = sub_24A8897F0();
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  sub_24A882E60();
  v11 = sub_24A8BB464();
  sub_24A8BB3D4();
  sub_24A8BB0A4();

  v20[1] = v1;
  v12 = sub_24A8BAFE4();
  v14 = v13;
  v15 = sub_24A8BAE44();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  sub_24A8BAE34();
  (*(v3 + 104))(v6, *MEMORY[0x277CC86D0], v2);
  sub_24A8BAE14();
  sub_24A89DB84();
  sub_24A8BAE24();

  sub_24A88C828(v12, v14);
  v18 = v22[2];

  v22[0] = v18;

  sub_24A89DEF8(v22);

  return v22[0];
}

uint64_t sub_24A89D9C0()
{
  v1 = *(v0 + 40);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F98];
  }

  v3 = (v1 + 56);
  v4 = MEMORY[0x277D84F98];
  while (1)
  {
    v8 = *(v3 - 3);
    v7 = *(v3 - 2);
    v10 = *(v3 - 1);
    v9 = *v3;
    swift_bridgeObjectRetain_n();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = sub_24A88C87C(v8, v7);
    v14 = v4[2];
    v15 = (v13 & 1) == 0;
    v16 = __OFADD__(v14, v15);
    v17 = v14 + v15;
    if (v16)
    {
      break;
    }

    v18 = v13;
    if (v4[3] < v17)
    {
      sub_24A894EF4(v17, isUniquelyReferenced_nonNull_native);
      v12 = sub_24A88C87C(v8, v7);
      if ((v18 & 1) != (v19 & 1))
      {
        goto LABEL_19;
      }

LABEL_10:
      if (v18)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v24 = v12;
    sub_24A8958FC();
    v12 = v24;
    if (v18)
    {
LABEL_3:
      v5 = (v4[7] + 16 * v12);
      v6 = v5[1];
      *v5 = v10;
      v5[1] = v9;

      goto LABEL_4;
    }

LABEL_11:
    v4[(v12 >> 6) + 8] |= 1 << v12;
    v20 = (v4[6] + 16 * v12);
    *v20 = v8;
    v20[1] = v7;
    v21 = (v4[7] + 16 * v12);
    *v21 = v10;
    v21[1] = v9;

    v22 = v4[2];
    v16 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (v16)
    {
      goto LABEL_18;
    }

    v4[2] = v23;
LABEL_4:
    v3 += 4;
    if (!--v2)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_24A8BB8C4();
  __break(1u);
  return result;
}

unint64_t sub_24A89DB84()
{
  result = qword_27EF791C0;
  if (!qword_27EF791C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF791C0);
  }

  return result;
}

void *sub_24A89DBD8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79098, &qword_24A8BC4D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79090, &unk_24A8BCDF0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_24A89DD20(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79060, &unk_24A8BCDE0);
  v10 = *(type metadata accessor for HAREntry() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for HAREntry() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_24A89DEF8(void **a1)
{
  v2 = *(type metadata accessor for HAREntry() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_24A89F104(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_24A89DFA0(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_24A89DFA0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_24A8BB714();
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
        type metadata accessor for HAREntry();
        v6 = sub_24A8BB364();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for HAREntry() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_24A89E2C0(v8, v9, a1, v4);
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
    return sub_24A89E0CC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_24A89E0CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v34 = type metadata accessor for HAREntry();
  v8 = *(*(v34 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v34);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v27 - v13;
  result = MEMORY[0x28223BE20](v12);
  v18 = &v27 - v17;
  v29 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v28 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v32 = v21;
    v33 = a3;
    v30 = v24;
    v31 = v23;
    while (1)
    {
      sub_24A89F118(v24, v18);
      sub_24A89F118(v21, v14);
      v25 = sub_24A8BB034();
      sub_24A89F17C(v14);
      result = sub_24A89F17C(v18);
      if ((v25 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v21 = v32 + v28;
        v23 = v31 - 1;
        v24 = v30 + v28;
        if (v33 + 1 == v29)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v19)
      {
        break;
      }

      sub_24A89F1D8(v24, v11);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_24A89F1D8(v11, v21);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24A89E2C0(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v100 = a1;
  v111 = type metadata accessor for HAREntry();
  v107 = *(v111 - 8);
  v9 = *(v107 + 64);
  v10 = MEMORY[0x28223BE20](v111);
  v102 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v110 = &v96 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v96 - v15;
  result = MEMORY[0x28223BE20](v14);
  v19 = &v96 - v18;
  v109 = a3;
  v20 = a3[1];
  if (v20 < 1)
  {
    v22 = MEMORY[0x277D84F90];
LABEL_97:
    v5 = *v100;
    if (!*v100)
    {
      goto LABEL_136;
    }

    a4 = v22;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_130:
      result = sub_24A89F00C(a4);
    }

    v112 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*v109)
      {
        v92 = *(result + 16 * a4);
        v93 = result;
        v94 = *(result + 16 * (a4 - 1) + 40);
        sub_24A89EAF8(*v109 + *(v107 + 72) * v92, *v109 + *(v107 + 72) * *(result + 16 * (a4 - 1) + 32), *v109 + *(v107 + 72) * v94, v5);
        if (v6)
        {
        }

        if (v94 < v92)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v93 = sub_24A89F00C(v93);
        }

        if (a4 - 2 >= *(v93 + 2))
        {
          goto LABEL_124;
        }

        v95 = &v93[16 * a4];
        *v95 = v92;
        *(v95 + 1) = v94;
        v112 = v93;
        sub_24A89EF80(a4 - 1);
        result = v112;
        a4 = *(v112 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_134;
    }
  }

  v21 = 0;
  v22 = MEMORY[0x277D84F90];
  v99 = a4;
  while (1)
  {
    v23 = v21;
    v24 = v21 + 1;
    v103 = v22;
    if (v24 >= v20)
    {
      v30 = v24;
    }

    else
    {
      v25 = *v109;
      v106 = v25;
      v26 = *(v107 + 72);
      v5 = v25 + v26 * v24;
      sub_24A89F118(v5, v19);
      sub_24A89F118(v25 + v26 * v23, v16);
      v27 = sub_24A8BB034();
      sub_24A89F17C(v16);
      result = sub_24A89F17C(v19);
      v98 = v23;
      a4 = v23 + 2;
      v108 = v26;
      v28 = v106 + v26 * (v23 + 2);
      while (v20 != a4)
      {
        sub_24A89F118(v28, v19);
        sub_24A89F118(v5, v16);
        v29 = sub_24A8BB034() & 1;
        sub_24A89F17C(v16);
        result = sub_24A89F17C(v19);
        ++a4;
        v28 += v108;
        v5 += v108;
        if ((v27 & 1) != v29)
        {
          v30 = a4 - 1;
          goto LABEL_11;
        }
      }

      v30 = v20;
      v23 = v98;
      if ((v27 & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_11:
      if (v30 < v98)
      {
        goto LABEL_127;
      }

      if (v98 < v30)
      {
        v97 = v6;
        v31 = v108 * (v30 - 1);
        v32 = v30;
        v33 = v30 * v108;
        v106 = v30;
        v34 = v98 * v108;
        do
        {
          if (v23 != --v32)
          {
            v35 = *v109;
            if (!*v109)
            {
              goto LABEL_133;
            }

            v5 = v35 + v34;
            sub_24A89F1D8(v35 + v34, v102);
            if (v34 < v31 || v5 >= v35 + v33)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v34 != v31)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_24A89F1D8(v102, v35 + v31);
          }

          ++v23;
          v31 -= v108;
          v33 -= v108;
          v34 += v108;
        }

        while (v23 < v32);
        v6 = v97;
        v23 = v98;
        a4 = v99;
        v30 = v106;
      }

      else
      {
LABEL_24:
        a4 = v99;
      }
    }

    v36 = v109[1];
    if (v30 < v36)
    {
      if (__OFSUB__(v30, v23))
      {
        goto LABEL_126;
      }

      if (v30 - v23 < a4)
      {
        if (__OFADD__(v23, a4))
        {
          goto LABEL_128;
        }

        if ((v23 + a4) >= v36)
        {
          v37 = v109[1];
        }

        else
        {
          v37 = v23 + a4;
        }

        if (v37 < v23)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v30 != v37)
        {
          break;
        }
      }
    }

    v38 = v30;
    if (v30 < v23)
    {
      goto LABEL_125;
    }

LABEL_36:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v22 = v103;
    }

    else
    {
      result = sub_24A8960E8(0, *(v103 + 2) + 1, 1, v103);
      v22 = result;
    }

    a4 = *(v22 + 2);
    v39 = *(v22 + 3);
    v5 = a4 + 1;
    if (a4 >= v39 >> 1)
    {
      result = sub_24A8960E8((v39 > 1), a4 + 1, 1, v22);
      v22 = result;
    }

    *(v22 + 2) = v5;
    v40 = &v22[16 * a4];
    *(v40 + 4) = v23;
    *(v40 + 5) = v38;
    v41 = *v100;
    if (!*v100)
    {
      goto LABEL_135;
    }

    v104 = v38;
    if (a4)
    {
      while (1)
      {
        v42 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v43 = *(v22 + 4);
          v44 = *(v22 + 5);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_55:
          if (v46)
          {
            goto LABEL_114;
          }

          v59 = &v22[16 * v5];
          v61 = *v59;
          v60 = *(v59 + 1);
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_117;
          }

          v65 = &v22[16 * v42 + 32];
          v67 = *v65;
          v66 = *(v65 + 1);
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_121;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v5 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v69 = &v22[16 * v5];
        v71 = *v69;
        v70 = *(v69 + 1);
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_69:
        if (v64)
        {
          goto LABEL_116;
        }

        v72 = &v22[16 * v42];
        v74 = *(v72 + 4);
        v73 = *(v72 + 5);
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_119;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_76:
        a4 = v42 - 1;
        if (v42 - 1 >= v5)
        {
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
          goto LABEL_129;
        }

        if (!*v109)
        {
          goto LABEL_132;
        }

        v80 = v22;
        v81 = *&v22[16 * a4 + 32];
        v5 = *&v22[16 * v42 + 40];
        sub_24A89EAF8(*v109 + *(v107 + 72) * v81, *v109 + *(v107 + 72) * *&v22[16 * v42 + 32], *v109 + *(v107 + 72) * v5, v41);
        if (v6)
        {
        }

        if (v5 < v81)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v80 = sub_24A89F00C(v80);
        }

        if (a4 >= *(v80 + 2))
        {
          goto LABEL_111;
        }

        v82 = &v80[16 * a4];
        *(v82 + 4) = v81;
        *(v82 + 5) = v5;
        v112 = v80;
        result = sub_24A89EF80(v42);
        v22 = v112;
        v5 = *(v112 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v47 = &v22[16 * v5 + 32];
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_112;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_113;
      }

      v54 = &v22[16 * v5];
      v56 = *v54;
      v55 = *(v54 + 1);
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_115;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_118;
      }

      if (v58 >= v50)
      {
        v76 = &v22[16 * v42 + 32];
        v78 = *v76;
        v77 = *(v76 + 1);
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_122;
        }

        if (v45 < v79)
        {
          v42 = v5 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v20 = v109[1];
    v21 = v104;
    a4 = v99;
    if (v104 >= v20)
    {
      goto LABEL_97;
    }
  }

  v97 = v6;
  v98 = v23;
  v83 = *v109;
  v84 = *(v107 + 72);
  v85 = *v109 + v84 * (v30 - 1);
  v86 = -v84;
  v87 = v23 - v30;
  v106 = v30;
  v101 = v84;
  a4 = v83 + v30 * v84;
  v104 = v37;
LABEL_87:
  v5 = a4;
  v105 = v87;
  v108 = v85;
  v88 = v85;
  while (1)
  {
    sub_24A89F118(v5, v19);
    sub_24A89F118(v88, v16);
    v89 = sub_24A8BB034();
    sub_24A89F17C(v16);
    result = sub_24A89F17C(v19);
    if ((v89 & 1) == 0)
    {
LABEL_86:
      v85 = v108 + v101;
      v87 = v105 - 1;
      a4 += v101;
      v38 = v104;
      if (++v106 != v104)
      {
        goto LABEL_87;
      }

      v6 = v97;
      v23 = v98;
      if (v104 < v98)
      {
        goto LABEL_125;
      }

      goto LABEL_36;
    }

    if (!v83)
    {
      break;
    }

    v90 = v110;
    sub_24A89F1D8(v5, v110);
    swift_arrayInitWithTakeFrontToBack();
    sub_24A89F1D8(v90, v88);
    v88 += v86;
    v5 += v86;
    if (__CFADD__(v87++, 1))
    {
      goto LABEL_86;
    }
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
  return result;
}

uint64_t sub_24A89EAF8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v45 = a3;
  v43 = type metadata accessor for HAREntry();
  v8 = *(*(v43 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v43);
  v44 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v13 = v39 - v12;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_61;
  }

  v16 = v45 - a2;
  if (v45 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_62;
  }

  v17 = (a2 - a1) / v15;
  v48 = a1;
  v47 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v39[1] = v4;
    v24 = a4 + v19;
    if (v19 < 1)
    {
      v27 = a4 + v19;
    }

    else
    {
      v25 = -v15;
      v26 = a4 + v19;
      v27 = v24;
      v41 = v25;
      v42 = a4;
      do
      {
        v39[0] = v27;
        v28 = a2;
        v29 = a2 + v25;
        while (1)
        {
          v31 = v45;
          if (v28 <= a1)
          {
            v48 = v28;
            v46 = v39[0];
            goto LABEL_59;
          }

          v40 = v27;
          v45 += v25;
          v32 = v26 + v25;
          sub_24A89F118(v32, v13);
          v33 = v29;
          v34 = v29;
          v35 = v13;
          v36 = v44;
          sub_24A89F118(v34, v44);
          v37 = sub_24A8BB034();
          v38 = v36;
          v13 = v35;
          sub_24A89F17C(v38);
          sub_24A89F17C(v35);
          if (v37)
          {
            break;
          }

          v27 = v32;
          if (v31 < v26 || v45 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
            v29 = v33;
          }

          else
          {
            v29 = v33;
            if (v31 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v26 = v32;
          v30 = v32 > v42;
          v25 = v41;
          if (!v30)
          {
            a2 = v28;
            goto LABEL_58;
          }
        }

        if (v31 < v28 || v45 >= v28)
        {
          a2 = v33;
          swift_arrayInitWithTakeFrontToBack();
          v27 = v40;
          v25 = v41;
        }

        else
        {
          v27 = v40;
          v25 = v41;
          a2 = v33;
          if (v31 != v28)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v26 > v42);
    }

LABEL_58:
    v48 = a2;
    v46 = v27;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v20 = a4 + v18;
    v46 = a4 + v18;
    if (v18 >= 1 && a2 < v45)
    {
      do
      {
        sub_24A89F118(a2, v13);
        v22 = v44;
        sub_24A89F118(a4, v44);
        v23 = sub_24A8BB034();
        sub_24A89F17C(v22);
        sub_24A89F17C(v13);
        if (v23)
        {
          if (a1 < a2 || a1 >= a2 + v15)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v15;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v15)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v47 = a4 + v15;
          a4 += v15;
        }

        a1 += v15;
        v48 = a1;
      }

      while (a4 < v20 && a2 < v45);
    }
  }

LABEL_59:
  sub_24A89F020(&v48, &v47, &v46);
  return 1;
}

uint64_t sub_24A89EF80(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_24A89F00C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_24A89F020(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for HAREntry();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_24A89F118(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HAREntry();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A89F17C(uint64_t a1)
{
  v2 = type metadata accessor for HAREntry();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24A89F1D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HAREntry();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t FMNMockingPreferences.domain.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t FMNMockingPreferences.filePath.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

FMNetworking::FMNMockingPreferences __swiftcall FMNMockingPreferences.init(domain:filePath:)(Swift::String domain, Swift::String filePath)
{
  *v2 = domain;
  v2[1] = filePath;
  result.filePath = filePath;
  result.domain = domain;
  return result;
}

uint64_t type metadata accessor for FMNResponseSerializableCodingStrategy()
{
  result = qword_27EF791E0;
  if (!qword_27EF791E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FMNResponseSerializableCodingStrategy.init(dateDecodingStrategy:dateEncodingStrategy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_24A88B1BC(a1, a3, &qword_27EF791C8, &qword_24A8BCED0);
  v5 = type metadata accessor for FMNResponseSerializableCodingStrategy();
  return sub_24A88B1BC(a2, a3 + *(v5 + 20), &qword_27EF791D0, &qword_24A8BCED8);
}

uint64_t static FMNResponseSerializable.decode(data:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v46 = a2;
  v45 = a1;
  v43[2] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF791D8, &qword_24A8BCEE0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v43 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF791C8, &qword_24A8BCED0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v43 - v13;
  v15 = sub_24A8BAE04();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = v43 - v21;
  v23 = sub_24A8BAE44();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v43[1] = sub_24A8BAE34();
  v26 = *(a4 + 48);
  v43[3] = a3;
  v44 = a4;
  v26(a3, a4);
  v27 = type metadata accessor for FMNResponseSerializableCodingStrategy();
  if ((*(*(v27 - 8) + 48))(v10, 1, v27) == 1)
  {
    sub_24A886D90(v10, &qword_27EF791D8, &qword_24A8BCEE0);
    (*(v16 + 56))(v14, 1, 1, v15);
LABEL_4:
    v28 = sub_24A886D90(v14, &qword_27EF791C8, &qword_24A8BCED0);
    goto LABEL_6;
  }

  sub_24A883EEC(v10, v14, &qword_27EF791C8, &qword_24A8BCED0);
  sub_24A8A07F4(v10);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    goto LABEL_4;
  }

  (*(v16 + 32))(v22, v14, v15);
  (*(v16 + 16))(v20, v22, v15);
  sub_24A8BAE14();
  v28 = (*(v16 + 8))(v22, v15);
LABEL_6:
  v29 = MEMORY[0x24C21F020](v28);
  v30 = *(v44 + 8);
  v31 = v47;
  sub_24A8BAE24();
  objc_autoreleasePoolPop(v29);
  if (!v31)
  {
  }

  sub_24A8BB3C4();
  sub_24A882E60();
  v32 = sub_24A8BB464();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_24A8BCEB0;
  MetatypeMetadata = swift_getMetatypeMetadata();
  swift_getMetatypeMetadata();
  v34 = sub_24A8BB2A4();
  v36 = v35;
  v37 = MEMORY[0x277D837D0];
  *(v33 + 56) = MEMORY[0x277D837D0];
  v38 = sub_24A8897F0();
  *(v33 + 64) = v38;
  *(v33 + 32) = v34;
  *(v33 + 40) = v36;
  MetatypeMetadata = v31;
  v39 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79130, "VC");
  v40 = sub_24A8BB2A4();
  *(v33 + 96) = v37;
  *(v33 + 104) = v38;
  *(v33 + 72) = v40;
  *(v33 + 80) = v41;
  sub_24A8BB0B4();

  return swift_willThrow();
}

uint64_t FMNResponseSerializable.dictionaryValue.getter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v9 = MEMORY[0x277D84F98];
  v6 = MEMORY[0x24C21F020]();
  sub_24A8A0850(v3, &v9, a1, a2, &v8);
  objc_autoreleasePoolPop(v6);
  return v9;
}

uint64_t FMNResponseSerializable.data.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF791D8, &qword_24A8BCEE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF791D0, &qword_24A8BCED8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v27 - v10;
  v12 = sub_24A8BAE54();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v27 - v18;
  v20 = sub_24A8BAE94();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  sub_24A8BAE84();
  (*(a2 + 48))(a1, a2);
  v23 = type metadata accessor for FMNResponseSerializableCodingStrategy();
  if ((*(*(v23 - 8) + 48))(v7, 1, v23) == 1)
  {
    sub_24A886D90(v7, &qword_27EF791D8, &qword_24A8BCEE0);
    (*(v13 + 56))(v11, 1, 1, v12);
  }

  else
  {
    sub_24A883EEC(&v7[*(v23 + 20)], v11, &qword_27EF791D0, &qword_24A8BCED8);
    sub_24A8A07F4(v7);
    if ((*(v13 + 48))(v11, 1, v12) != 1)
    {
      (*(v13 + 32))(v19, v11, v12);
      (*(v13 + 16))(v17, v19, v12);
      sub_24A8BAE64();
      (*(v13 + 8))(v19, v12);
      goto LABEL_6;
    }
  }

  sub_24A886D90(v11, &qword_27EF791D0, &qword_24A8BCED8);
LABEL_6:
  v24 = *(a2 + 16);
  v25 = sub_24A8BAE74();

  return v25;
}

void KeyedDecodingContainer.compactDecode<A>(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v11 = MEMORY[0x24C21F020]();
  sub_24A8A0230(v6, a1, *(a2 + 16), a3, *(a2 + 24), a4, &v24);
  if (v5)
  {
    objc_autoreleasePoolPop(v11);
  }

  else
  {
    objc_autoreleasePoolPop(v11);
    v12 = MEMORY[0x24C21F020]();
    sub_24A8A0330(&v25);
    objc_autoreleasePoolPop(v12);
    type metadata accessor for OptionalDecodable();
    v13 = sub_24A8BB384();

    v14 = sub_24A8BB384();
    if (v13 != v14)
    {
      v15 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_24A8BCEC0;
      v25 = a3;
      swift_getMetatypeMetadata();
      v17 = sub_24A8BB2A4();
      v19 = v18;
      *(v16 + 56) = MEMORY[0x277D837D0];
      v20 = sub_24A8897F0();
      *(v16 + 32) = v17;
      *(v16 + 40) = v19;
      v21 = MEMORY[0x277D83B88];
      v22 = MEMORY[0x277D83C10];
      *(v16 + 96) = MEMORY[0x277D83B88];
      *(v16 + 104) = v22;
      *(v16 + 64) = v20;
      *(v16 + 72) = v13;
      *(v16 + 136) = v21;
      *(v16 + 144) = v22;
      *(v16 + 112) = v15;
      sub_24A882E60();
      v23 = sub_24A8BB464();
      sub_24A8BB3D4();
      sub_24A8BB0A4();
    }
  }
}

uint64_t sub_24A8A0230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  type metadata accessor for OptionalDecodable();
  sub_24A8BB3A4();
  sub_24A8BB6C4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  result = sub_24A8BB6A4();
  if (v7)
  {
    *a7 = v7;
  }

  return result;
}

uint64_t sub_24A8A0330@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for OptionalDecodable();
  sub_24A8BB3A4();
  swift_getWitnessTable();
  result = sub_24A8BB344();
  *a1 = result;
  return result;
}

uint64_t sub_24A8A03EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v25 = *(a2 - 8);
  v6 = *(v25 + 64);
  MEMORY[0x28223BE20](a1);
  v26 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v8;
  v9 = type metadata accessor for OptionalDecodable();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v22 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = sub_24A8BB964();
  if (v3)
  {
    v16 = a1;
  }

  else
  {
    v17 = v25;
    v22 = a1;
    v23 = v10;
    v24 = v9;
    v18 = MEMORY[0x24C21F020](v15);
    v19 = v26;
    sub_24A8A074C(v29, a2, v27, &v30);
    objc_autoreleasePoolPop(v18);
    (*(v17 + 32))(v13, v19, a2);
    (*(v17 + 56))(v13, 0, 1, a2);
    v20 = v22;
    __swift_destroy_boxed_opaque_existential_0Tm(v29);
    (*(v23 + 32))(v28, v13, v24);
    v16 = v20;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v16);
}

uint64_t sub_24A8A074C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_24A8BB814();
  if (v4)
  {
    *a4 = v4;
  }

  return result;
}

uint64_t sub_24A8A07F4(uint64_t a1)
{
  v2 = type metadata accessor for FMNResponseSerializableCodingStrategy();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24A8A0850(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v20[4] = *MEMORY[0x277D85DE8];
  v7 = (*(a4 + 40))(a3, a4);
  v9 = v8;
  v10 = objc_opt_self();
  v11 = sub_24A8BB004();
  v20[0] = 0;
  v12 = [v10 JSONObjectWithData:v11 options:0 error:v20];

  if (v12)
  {
    v13 = v20[0];
    sub_24A8BB4D4();
    sub_24A88C828(v7, v9);
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79010, &qword_24A8BC320);
    result = swift_dynamicCast();
    if (result)
    {
      v15 = *a2;
      *a2 = v19;
    }
  }

  else
  {
    v16 = v20[0];
    v17 = sub_24A8BAF44();

    swift_willThrow();
    result = sub_24A88C828(v7, v9);
    *a5 = v17;
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24A8A0A2C()
{
  sub_24A8A0AE8(319, &qword_27EF791F0, MEMORY[0x277CC86E0]);
  if (v0 <= 0x3F)
  {
    sub_24A8A0AE8(319, qword_27EF791F8, MEMORY[0x277CC8780]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24A8A0AE8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24A8BB484();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24A8A0BA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = sub_24A8BB484();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24A8A0C18(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_24A8A0D98(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

uint64_t sub_24A8A0FC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 24);
  v6 = sub_24A8BB484();
  return (*(*(v6 - 8) + 16))(a2, a1, v6);
}

FMNetworking::FMNRequestMethod_optional __swiftcall FMNRequestMethod.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A8BB624();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FMNRequestMethod.rawValue.getter()
{
  v1 = 5522759;
  v2 = 5526864;
  if (*v0 != 2)
  {
    v2 = 0x4554454C4544;
  }

  if (*v0)
  {
    v1 = 1414745936;
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

unint64_t sub_24A8A1104()
{
  result = qword_27EF79280;
  if (!qword_27EF79280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79280);
  }

  return result;
}

uint64_t sub_24A8A1158()
{
  v1 = *v0;
  sub_24A8BB934();
  sub_24A8BB2C4();

  return sub_24A8BB954();
}

uint64_t sub_24A8A1200()
{
  *v0;
  *v0;
  *v0;
  sub_24A8BB2C4();
}

uint64_t sub_24A8A1294()
{
  v1 = *v0;
  sub_24A8BB934();
  sub_24A8BB2C4();

  return sub_24A8BB954();
}

void sub_24A8A1344(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 5522759;
  v4 = 0xE300000000000000;
  v5 = 5526864;
  if (*v1 != 2)
  {
    v5 = 0x4554454C4544;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 1414745936;
    v2 = 0xE400000000000000;
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

void sub_24A8A1504()
{
  sub_24A8BAFC4();
  if (v0 <= 0x3F)
  {
    sub_24A883CB0();
    if (v1 <= 0x3F)
    {
      sub_24A8899E8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_24A8A15B0()
{
  result = qword_27EF79298;
  if (!qword_27EF79298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79298);
  }

  return result;
}

unint64_t sub_24A8A1628()
{
  result = qword_27EF792A0;
  if (!qword_27EF792A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF792A0);
  }

  return result;
}

unint64_t sub_24A8A1680()
{
  result = qword_27EF792A8;
  if (!qword_27EF792A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF792A8);
  }

  return result;
}

Swift::String_optional __swiftcall FMNRedirectHostStore.redirectedHost()()
{
  v1 = v0;
  v15 = 0;
  v16 = 0;
  v2 = *v0;
  sub_24A887424(v1, v13);
  v3 = swift_allocObject();
  v4 = v13[1];
  *(v3 + 16) = v13[0];
  *(v3 + 32) = v4;
  *(v3 + 48) = v13[2];
  *(v3 + 64) = v14;
  *(v3 + 72) = &v15;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_24A88BB7C;
  *(v5 + 24) = v3;
  aBlock[4] = sub_24A88B9D4;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A88B9FC;
  aBlock[3] = &block_descriptor_9;
  v6 = _Block_copy(aBlock);

  dispatch_sync(v2, v6);
  _Block_release(v6);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    v9 = v15;
    v10 = v16;

    v7 = v9;
    v8 = v10;
  }

  result.value._object = v8;
  result.value._countAndFlagsBits = v7;
  return result;
}

uint64_t sub_24A8A1880()
{
  if (*v0)
  {
    result = 0x64496E6F73726570;
  }

  else
  {
    result = 1953722216;
  }

  *v0;
  return result;
}

uint64_t sub_24A8A18B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1953722216 && a2 == 0xE400000000000000;
  if (v5 || (sub_24A8BB804() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64496E6F73726570 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24A8BB804();

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

uint64_t sub_24A8A1990(uint64_t a1)
{
  v2 = sub_24A8A1E94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A8A19CC(uint64_t a1)
{
  v2 = sub_24A8A1E94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMNRedirectedHost.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF792B0, &qword_24A8BD2C8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24A8A1E94();
  sub_24A8BB984();
  v16 = 0;
  v12 = v14[3];
  sub_24A8BB6E4();
  if (!v12)
  {
    v15 = 1;
    sub_24A8BB6E4();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t FMNRedirectedHost.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF792C0, &qword_24A8BD2D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24A8A1E94();
  sub_24A8BB974();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v21 = 0;
  v11 = sub_24A8BB664();
  v13 = v12;
  v19 = v11;
  v20 = 1;
  v14 = sub_24A8BB664();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  *a2 = v19;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

void sub_24A8A1E00()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_24A8BB244();
  [v0 removeObjectForKey_];
}

unint64_t sub_24A8A1E94()
{
  result = qword_27EF792B8;
  if (!qword_27EF792B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF792B8);
  }

  return result;
}

Swift::Void __swiftcall FMNRedirectHostStore.saveRedirectedHost(host:)(Swift::String host)
{
  v2 = v1;
  object = host._object;
  countAndFlagsBits = host._countAndFlagsBits;
  v5 = sub_24A8BB0D4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24A8BB104();
  v10 = *(v18 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v18);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v2;
  sub_24A887424(v2, v21);
  v14 = swift_allocObject();
  *(v14 + 16) = countAndFlagsBits;
  *(v14 + 24) = object;
  v15 = v21[1];
  *(v14 + 32) = v21[0];
  *(v14 + 48) = v15;
  *(v14 + 64) = v21[2];
  *(v14 + 80) = v22;
  aBlock[4] = sub_24A8A247C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A8875B4;
  aBlock[3] = &block_descriptor_21;
  v16 = _Block_copy(aBlock);

  sub_24A8BB0F4();
  v19 = MEMORY[0x277D84F90];
  sub_24A8870CC(qword_2814AACF0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF797F0, &qword_24A8BD2C0);
  sub_24A882D48(&qword_2814AACD0, &qword_27EF797F0, &qword_24A8BD2C0);
  sub_24A8BB4E4();
  MEMORY[0x24C21EA40](0, v13, v9, v16);
  _Block_release(v16);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v18);
}

uint64_t sub_24A8A21DC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3[4];
  v6 = a3[5];
  __swift_project_boxed_opaque_existential_1(a3 + 1, v5);
  v7 = *(v6 + 32);

  v7(v5, v6);
  v8 = sub_24A8BAE94();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_24A8BAE84();
  sub_24A8A25B0();
  v11 = sub_24A8BAE74();
  v13 = v12;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_24A8BC300;
  *(v14 + 56) = MEMORY[0x277D837D0];
  *(v14 + 64) = sub_24A8897F0();
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  sub_24A882CB8(0, &qword_2814AB000, 0x277D86200);

  v15 = sub_24A8BB464();
  sub_24A8BB3D4();
  sub_24A8BB0A4();

  v16 = [objc_opt_self() standardUserDefaults];
  v17 = sub_24A8BB004();
  v18 = sub_24A8BB244();
  [v16 setValue:v17 forKey:v18];

  sub_24A88C828(v11, v13);
}

unint64_t sub_24A8A24AC()
{
  result = qword_27EF792C8;
  if (!qword_27EF792C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF792C8);
  }

  return result;
}

unint64_t sub_24A8A2504()
{
  result = qword_27EF792D0;
  if (!qword_27EF792D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF792D0);
  }

  return result;
}

unint64_t sub_24A8A255C()
{
  result = qword_27EF792D8;
  if (!qword_27EF792D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF792D8);
  }

  return result;
}

unint64_t sub_24A8A25B0()
{
  result = qword_27EF792E0;
  if (!qword_27EF792E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF792E0);
  }

  return result;
}

uint64_t sub_24A8A2604(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_24A8A2648()
{
  result = qword_27EF792E8;
  if (!qword_27EF792E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF792E8);
  }

  return result;
}

uint64_t FMNPreferenceKey.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_24A8BB624();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_24A8A2730()
{
  sub_24A8BB934();
  sub_24A8BB2C4();
  return sub_24A8BB954();
}

uint64_t sub_24A8A27B4()
{
  sub_24A8BB934();
  sub_24A8BB2C4();
  return sub_24A8BB954();
}

uint64_t sub_24A8A2810@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_24A8BB624();

  *a2 = v5 != 0;
  return result;
}

uint64_t FMNURLSessionFactory.mockSessionCreationBlock.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_24A88D378(v1);
  return v1;
}

__n128 FMNURLSessionFactory.__allocating_init(mockSessionCreationBlock:preferences:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  result = *a3;
  v8 = *(a3 + 16);
  *(v6 + 32) = *a3;
  *(v6 + 48) = v8;
  return result;
}

uint64_t FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v4 = a3[1];
  *(v3 + 32) = *a3;
  *(v3 + 48) = v4;
  return v3;
}

unint64_t sub_24A8A2920()
{
  result = qword_27EF792F0;
  if (!qword_27EF792F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF792F0);
  }

  return result;
}

void sub_24A8A2974(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79180, &qword_24A8BC9F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v21 - v5;
  v7 = sub_24A8BAFC4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 40))
  {
    v12 = *(v1 + 32);
    sub_24A88C21C(a1, v6);
    v13 = *(v8 + 48);
    if (v13(v6, 1, v7) == 1)
    {
      sub_24A88C1B4(v6);
    }

    else
    {
      (*(v8 + 32))(v11, v6, v7);
      v14 = sub_24A8BAF54();
      (*(v8 + 8))(v11, v7);
      if ((v14 & 1) == 0)
      {
        __break(1u);
        return;
      }
    }

    v15 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v16 = sub_24A8BB244();
    v17 = [v15 initWithSuiteName_];

    if (v13(a1, 1, v7) == 1)
    {
      if (!v17)
      {
        return;
      }

      v18 = v17;
      v19 = sub_24A8BB244();
      [v18 removeObjectForKey_];
    }

    else
    {
      if (!v17)
      {
        return;
      }

      v20 = v17;
      v19 = sub_24A8BB244();
      [v20 setBool:1 forKey:v19];
    }
  }
}

uint64_t *FMNURLSessionFactory.deinit()
{
  v1 = v0[3];
  sub_24A8895E8(v0[2]);
  v2 = v0[6];
  v3 = v0[7];
  sub_24A8A2604(v0[4], v0[5]);
  return v0;
}

uint64_t FMNURLSessionFactory.__deallocating_deinit()
{
  v1 = v0[3];
  sub_24A8895E8(v0[2]);
  v2 = v0[6];
  v3 = v0[7];
  sub_24A8A2604(v0[4], v0[5]);

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

unint64_t sub_24A8A2C88()
{
  result = qword_27EF792F8;
  if (!qword_27EF792F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF792F8);
  }

  return result;
}

unint64_t sub_24A8A2DC4()
{
  result = qword_27EF79300;
  if (!qword_27EF79300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79300);
  }

  return result;
}

id MockURLDataTask.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MockURLDataTask();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

NSObject *sub_24A8A2F40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = dispatch_group_create();
  sub_24A883EEC(v4, v25, &qword_27EF79168, &unk_24A8BC970);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  sub_24A88B1BC(v25, v9 + 24, &qword_27EF79168, &unk_24A8BC970);
  sub_24A883EEC(v4, v25, &qword_27EF79168, &unk_24A8BC970);
  sub_24A883EEC(v4 + 24, v24, &qword_27EF79160, &qword_24A8BC968);
  sub_24A883EEC(v4 + 144, v22, &qword_27EF79118, &unk_24A8BD720);
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  sub_24A88B1BC(v25, v10 + 24, &qword_27EF79168, &unk_24A8BC970);
  *(v10 + 240) = a3;
  v11 = v24[2];
  v12 = v24[3];
  v13 = v24[0];
  *(v10 + 264) = v24[1];
  *(v10 + 280) = v11;
  v14 = v24[4];
  *(v10 + 296) = v12;
  *(v10 + 312) = v14;
  *(v10 + 248) = v13;
  v15 = v22[1];
  *(v10 + 328) = v22[0];
  *(v10 + 344) = v15;
  *(v10 + 360) = v22[2];
  *(v10 + 376) = v23;
  *(v10 + 384) = a1;
  *(v10 + 392) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79340, &qword_24A8BDA40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24A8BCEB0;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_24A8A8584;
  *(v17 + 24) = v9;
  *(inited + 32) = 401;
  *(inited + 40) = sub_24A8A868C;
  *(inited + 48) = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_24A8A85C0;
  *(v18 + 24) = v10;
  *(inited + 56) = 330;
  *(inited + 64) = sub_24A8A868C;
  *(inited + 72) = v18;
  v21[2] = v4;
  v19 = v8;

  sub_24A88B224(sub_24A8A861C, v21, inited);

  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79348, &qword_24A8BDA48);
  swift_arrayDestroy();
  return v19;
}

uint64_t FMNServerInteractionController.FMNServerInteractionError.hashValue.getter()
{
  v1 = *v0;
  sub_24A8BB934();
  MEMORY[0x24C21EF50](v1);
  return sub_24A8BB954();
}

FMNetworking::FMNServerInteractionController::InternalServerMetadata::HeaderKeys_optional __swiftcall FMNServerInteractionController.InternalServerMetadata.HeaderKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A8BB624();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t FMNServerInteractionController.InternalServerMetadata.HeaderKeys.rawValue.getter()
{
  v1 = 0xD000000000000012;
  v2 = 0xD000000000000015;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0 <= 1u)
  {
    result = v1;
  }

  else
  {
    result = v2;
  }

  *v0;
  return result;
}

uint64_t sub_24A8A335C()
{
  v1 = *v0;
  sub_24A8BB934();
  sub_24A8BB2C4();

  return sub_24A8BB954();
}

uint64_t sub_24A8A3410()
{
  *v0;
  *v0;
  *v0;
  sub_24A8BB2C4();
}

uint64_t sub_24A8A34B0()
{
  v1 = *v0;
  sub_24A8BB934();
  sub_24A8BB2C4();

  return sub_24A8BB954();
}

void sub_24A8A356C(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000012;
  v3 = "PUT";
  v4 = "x-apple-request-uuid";
  v5 = 0xD000000000000015;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000013;
    v4 = "x-responding-instance";
  }

  if (*v1)
  {
    v2 = 0xD000000000000014;
    v3 = "x-apple-error-code";
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v2 = v5;
    v6 = v4;
  }

  *a1 = v2;
  a1[1] = v6 | 0x8000000000000000;
}

uint64_t FMNServerInteractionController.InternalServerMetadata.errorCode.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24A8BB174();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FMNServerInteractionController.InternalServerMetadata.respondingInstance.getter()
{
  v1 = (v0 + *(type metadata accessor for FMNServerInteractionController.InternalServerMetadata(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t FMNServerInteractionController.InternalServerMetadata.dateEpoch.getter()
{
  v1 = (v0 + *(type metadata accessor for FMNServerInteractionController.InternalServerMetadata(0) + 28));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t FMNServerInteractionController.InternalServerMetadata.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79310, &qword_24A8BD700);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v20 - v3;
  v5 = sub_24A8BB094();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v8);
  v10 = v20 - v9;
  v20[0] = 0;
  v20[1] = 0xE000000000000000;
  sub_24A8BB594();
  MEMORY[0x24C21E8E0](0x5574736575716572, 0xED0000203A444955);
  v11 = type metadata accessor for FMNServerInteractionController.InternalServerMetadata(0);
  sub_24A883EEC(v0 + *(v11 + 20), v4, &qword_27EF79310, &qword_24A8BD700);
  v12 = *(v6 + 48);
  if (v12(v4, 1, v5) == 1)
  {
    sub_24A8BB084();
    sub_24A8BB064();
    if (v12(v4, 1, v5) != 1)
    {
      sub_24A886D90(v4, &qword_27EF79310, &qword_24A8BD700);
    }
  }

  else
  {
    (*(v6 + 32))(v10, v4, v5);
  }

  sub_24A8831E4(&qword_2814AAA38, MEMORY[0x277CC95F0]);
  v13 = sub_24A8BB724();
  MEMORY[0x24C21E8E0](v13);

  (*(v6 + 8))(v10, v5);
  MEMORY[0x24C21E8E0](0xD000000000000015, 0x800000024A8C0170);
  v14 = (v0 + *(v11 + 24));
  v15 = v14[1];
  if (v15)
  {
    v16 = *v14;
  }

  else
  {
    v16 = 0;
  }

  if (v15)
  {
    v17 = v14[1];
  }

  else
  {
    v17 = 0xE000000000000000;
  }

  MEMORY[0x24C21E8E0](v16, v17);

  MEMORY[0x24C21E8E0](0x6F43726F72726520, 0xEC000000203A6564);
  sub_24A8BB174();
  sub_24A8831E4(&qword_2814AAA10, MEMORY[0x277D498D8]);
  v18 = sub_24A8BB724();
  MEMORY[0x24C21E8E0](v18);

  return v20[0];
}

uint64_t FMNServerInteractionController.FMNResponseFields.data.getter()
{
  v1 = *v0;
  sub_24A88C9AC(*v0, *(v0 + 8));
  return v1;
}

uint64_t FMNServerInteractionController.FMNResponseFields.metadata.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for FMNServerInteractionController.FMNResponseFields(0) + 28);

  return sub_24A8A3B74(a1, v3);
}

uint64_t sub_24A8A3B74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF79450, &unk_24A8BD708);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t FMNServerInteractionController.FMNResponseFields.init(data:statusCode:responseHeaders:metadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v12 = *(type metadata accessor for FMNServerInteractionController.FMNResponseFields(0) + 28);
  v13 = type metadata accessor for FMNServerInteractionController.InternalServerMetadata(0);
  (*(*(v13 - 8) + 56))(&a6[v12], 1, 1, v13);
  *a6 = a1;
  *(a6 + 1) = a2;
  *(a6 + 2) = a3;
  *(a6 + 3) = a4;

  return sub_24A8A3B74(a5, &a6[v12]);
}

uint64_t FMNServerInteractionController.FMNResponseFields.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF79450, &unk_24A8BD708);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v16 - v4;
  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  sub_24A8BB594();

  strcpy(v17, "statusCode: ");
  BYTE5(v17[1]) = 0;
  HIWORD(v17[1]) = -5120;
  v16[1] = *(v0 + 16);
  v6 = sub_24A8BB724();
  MEMORY[0x24C21E8E0](v6);

  MEMORY[0x24C21E8E0](0x7461646174656D20, 0xEB00000000203A61);
  v7 = type metadata accessor for FMNServerInteractionController.FMNResponseFields(0);
  sub_24A883EEC(v0 + *(v7 + 28), v5, &unk_27EF79450, &unk_24A8BD708);
  v8 = type metadata accessor for FMNServerInteractionController.InternalServerMetadata(0);
  if ((*(*(v8 - 8) + 48))(v5, 1, v8) == 1)
  {
    sub_24A886D90(v5, &unk_27EF79450, &unk_24A8BD708);
    v9 = 0;
    v10 = 0xE000000000000000;
  }

  else
  {
    v11 = FMNServerInteractionController.InternalServerMetadata.description.getter();
    v10 = v12;
    sub_24A890DF4(v5, type metadata accessor for FMNServerInteractionController.InternalServerMetadata);
    v9 = v11;
  }

  MEMORY[0x24C21E8E0](v9, v10);

  MEMORY[0x24C21E8E0](0xD000000000000012, 0x800000024A8C0190);
  v13 = *(v1 + 24);
  v14 = sub_24A8BB204();
  MEMORY[0x24C21E8E0](v14);

  return v17[0];
}

uint64_t FMNServerInteractionController.mockingPreferences.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[13];
  v3 = v1[14];
  v4 = v1[15];
  v5 = v1[16];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_24A883290(v2, v3);
}

uint64_t sub_24A8A3F30@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_24A8BAFC4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  v9 = type metadata accessor for FMNMockClientURLSession();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  result = FMNMockClientURLSession.init(httpArchiveFileURL:)(v7);
  a2[3] = v9;
  a2[4] = &protocol witness table for FMNMockClientURLSession;
  *a2 = result;
  return result;
}

uint64_t FMNServerInteractionController.__allocating_init(authenticationProvider:mockingPreferences:urlSessionFactory:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  FMNServerInteractionController.init(authenticationProvider:mockingPreferences:urlSessionFactory:)(a1, a2, a3, a4);
  return v8;
}

uint64_t FMNServerInteractionController.deinit()
{
  v1 = v0;
  v2 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79318, &qword_24A8BD718);
  sub_24A8BB424();

  v3 = *(v1 + 16);
  swift_unknownObjectRelease();

  sub_24A886D90(v1 + 48, &qword_27EF79118, &unk_24A8BD720);
  v4 = *(v1 + 120);
  v5 = *(v1 + 128);
  sub_24A8A2604(*(v1 + 104), *(v1 + 112));
  v6 = *(v1 + 136);

  return v1;
}

void sub_24A8A4150(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *&v3[OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_sessionLock];
    MEMORY[0x28223BE20](a1);
    v5 = v3;

    sub_24A8BB0C4();
  }

  *a2 = v3 == 0;
}

uint64_t FMNServerInteractionController.__deallocating_deinit()
{
  FMNServerInteractionController.deinit();

  return MEMORY[0x2821FE8D8](v0, 144, 7);
}

uint64_t sub_24A8A4284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_24A886914(a1, v13);
  sub_24A886914(a2, &v14);
  sub_24A883EEC(v13, v11, &qword_27EF79160, &qword_24A8BC968);
  v9 = swift_allocObject();
  *(v9 + 16) = a5;
  *(v9 + 24) = a6;

  sub_24A898C9C(v11, v12, sub_24A8A4380, v9, 0);

  sub_24A886D90(v13, &qword_27EF79160, &qword_24A8BC968);
  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  return __swift_destroy_boxed_opaque_existential_0Tm(v11);
}

uint64_t sub_24A8A4388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_24A886914(a1, v16);
  sub_24A886914(a2, &v17);
  sub_24A883EEC(v16, v14, &qword_27EF79160, &qword_24A8BC968);
  sub_24A886914(v14, v12);
  sub_24A886914(v15, &v13);
  sub_24A883EEC(v12, v10, &qword_27EF79160, &qword_24A8BC968);
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;

  sub_24A898C9C(v10, v11, sub_24A8A8690, v8, 0);

  sub_24A886D90(v12, &qword_27EF79160, &qword_24A8BC968);
  sub_24A886D90(v16, &qword_27EF79160, &qword_24A8BC968);
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  __swift_destroy_boxed_opaque_existential_0Tm(v10);
  __swift_destroy_boxed_opaque_existential_0Tm(v15);
  return __swift_destroy_boxed_opaque_existential_0Tm(v14);
}

uint64_t sub_24A8A44D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_24A886914(a1, v13);
  sub_24A886914(a2, &v14);
  sub_24A883EEC(v13, v11, &qword_27EF79160, &qword_24A8BC968);
  sub_24A898C9C(v11, v12, a4, a5, a6);
  sub_24A886D90(v13, &qword_27EF79160, &qword_24A8BC968);
  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  return __swift_destroy_boxed_opaque_existential_0Tm(v11);
}

uint64_t sub_24A8A45A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_24A886914(a1, v12);
  sub_24A886914(a2, &v13);
  sub_24A883EEC(v12, v10, &qword_27EF79140, &unk_24A8BD730);
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;

  sub_24A8833C4(v10, v11, sub_24A8A8694, v8);

  sub_24A886D90(v12, &qword_27EF79140, &unk_24A8BD730);
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return __swift_destroy_boxed_opaque_existential_0Tm(v10);
}

uint64_t sub_24A8A46A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_24A886914(a1, v11);
  sub_24A886914(a2, &v12);
  sub_24A883EEC(v11, v9, &qword_27EF79140, &unk_24A8BD730);
  sub_24A8833C4(v9, v10, a4, a5);
  sub_24A886D90(v11, &qword_27EF79140, &unk_24A8BD730);
  __swift_destroy_boxed_opaque_existential_0Tm(v10);
  return __swift_destroy_boxed_opaque_existential_0Tm(v9);
}

uint64_t sub_24A8A4754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v65 = a6;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79110, &qword_24A8BDC50);
  v12 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56);
  v57 = (&v55 - v13);
  v14 = sub_24A8BAF24();
  v63 = *(v14 - 8);
  v64 = v14;
  v15 = *(v63 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v62 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v61 = &v55 - v18;
  sub_24A886914(a1, v86);
  sub_24A886914(a2, &v87);
  sub_24A883EEC(v86, v84, &qword_27EF79140, &unk_24A8BD730);
  sub_24A886914(v84, v82);
  sub_24A886914(v85, v83);
  sub_24A883EEC(v82, &v69, &qword_27EF79140, &unk_24A8BD730);
  sub_24A883B44(&v69, v79);
  sub_24A883B44(v72, v78);
  v19 = sub_24A886978(v79);
  sub_24A886B10(v19, v77);
  v20 = v7[5];
  v67 = v7;
  v68 = v19;
  v66 = v19;
  type metadata accessor for FMNHttpClient();
  sub_24A8BB424();
  v60 = 0;
  v21 = v69;
  sub_24A886914(v82, v75);
  sub_24A886914(v83, &v76);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79148, &unk_24A8BD740);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v25 = sub_24A8BB1D4();
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;

  sub_24A8BB184();

  v27 = swift_allocObject();
  *(v27 + 16) = a4;
  *(v27 + 24) = a5;

  sub_24A8BB194();

  v28 = v7[2];
  v29 = v7[3];
  sub_24A883EEC(v75, &v71, &qword_27EF79140, &unk_24A8BD730);
  v30 = OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_credential;
  swift_beginAccess();
  v58 = v21;
  sub_24A883EEC(v21 + v30, &v73, &qword_27EF79120, &qword_24A8BC960);
  sub_24A883EEC(v77, v74, &qword_27EF79118, &unk_24A8BD720);
  swift_unknownObjectWeakInit();
  *(&v69 + 1) = v28;
  v70 = v29;
  swift_weakInit();
  v74[8] = v65;
  swift_unknownObjectRetain();
  v31 = sub_24A8887E8(a4, a5, v25);
  sub_24A886D90(&v69, &qword_27EF79150, &unk_24A8BD750);
  sub_24A886D90(v75, &qword_27EF79140, &unk_24A8BD730);
  v32 = swift_allocObject();
  v32[2] = v7;
  v32[3] = v31;
  v32[4] = v25;
  v33 = v80;
  v34 = v81;
  __swift_project_boxed_opaque_existential_1(v79, v80);
  v35 = *(v34 + 16);
  v65 = v25;

  v59 = v31;

  v36 = v62;
  v37 = v33;
  v38 = v61;
  v39 = v34;
  v40 = v63;
  v35(v37, v39);
  v41 = v58;
  v42 = v64;
  sub_24A888D88(v36, v77, v38);
  v43 = *(v40 + 8);
  v43(v36, v42);
  v44 = v60;
  sub_24A889A4C(v78, v38, sub_24A88EF80, v32);
  if (v44)
  {
    v43(v38, v42);
    sub_24A8BB3C4();
    sub_24A882CB8(0, &qword_2814AB000, 0x277D86200);
    v45 = sub_24A8BB464();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_24A8BC300;
    swift_getErrorValue();
    v47 = sub_24A8BB8D4();
    v49 = v48;
    *(v46 + 56) = MEMORY[0x277D837D0];
    *(v46 + 64) = sub_24A8897F0();
    *(v46 + 32) = v47;
    *(v46 + 40) = v49;
    sub_24A8BB0B4();

    v50 = v57;
    *v57 = v44;
    swift_storeEnumTagMultiPayload();
    v51 = v44;
    sub_24A8BB3D4();
    v52 = sub_24A8BB464();
    sub_24A8BB0B4();

    v53 = v59;
    sub_24A88F02C(v50, v59, v65);

    sub_24A886D90(v50, &qword_27EF79110, &qword_24A8BDC50);
  }

  else
  {

    v43(v38, v42);
  }

  sub_24A886D90(v77, &qword_27EF79118, &unk_24A8BD720);
  __swift_destroy_boxed_opaque_existential_0Tm(v78);
  sub_24A886D90(v82, &qword_27EF79140, &unk_24A8BD730);
  sub_24A886D90(v86, &qword_27EF79140, &unk_24A8BD730);
  __swift_destroy_boxed_opaque_existential_0Tm(v79);
  __swift_destroy_boxed_opaque_existential_0Tm(v85);
  return __swift_destroy_boxed_opaque_existential_0Tm(v84);
}

unint64_t sub_24A8A4E90(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF790B0, &qword_24A8BC4E0);
    v2 = sub_24A8BB614();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = (v13 << 10) | (16 * v14);
        v16 = (*(a1 + 48) + v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = (*(a1 + 56) + v15);
        v25 = *v19;
        v26 = v19[1];

        swift_dynamicCast();
        sub_24A890B2C(&v27, v29);
        sub_24A890B2C(v29, v30);
        sub_24A890B2C(v30, &v28);
        result = sub_24A88C87C(v18, v17);
        if (v20)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_0Tm(v12);
          result = sub_24A890B2C(&v28, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v21 = (v2[6] + 16 * result);
          *v21 = v18;
          v21[1] = v17;
          result = sub_24A890B2C(&v28, (v2[7] + 32 * result));
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_24A8A50E8(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_24A8BB5D4();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_24A8A7718(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

void sub_24A8A53E8(int a1, int a2, dispatch_group_t group, uint64_t a4, uint64_t a5, uint64_t a6)
{
  dispatch_group_enter(group);
  sub_24A882CB8(0, &qword_2814AB000, 0x277D86200);
  v9 = sub_24A8BB464();
  sub_24A8BB3D4();
  sub_24A8BB0A4();

  sub_24A883EEC(a4 + 104, &v40, &qword_27EF79120, &qword_24A8BC960);
  if (v41)
  {
    sub_24A883B44(&v40, v42);
    if (*(a4 + 8))
    {
      v38 = *(a4 + 16);
      v10 = v43;
      v11 = v44;
      __swift_project_boxed_opaque_existential_1(v42, v43);
      v39 = a6;
      v12 = *(v11 + 8);
      swift_unknownObjectRetain();
      v37 = v12(v10, v11);
      v14 = v13;
      v15 = v43;
      v16 = v44;
      __swift_project_boxed_opaque_existential_1(v42, v43);
      v17 = (*(v16 + 32))(v15, v16);
      v19 = v18;
      v21 = v43;
      v20 = v44;
      __swift_project_boxed_opaque_existential_1(v42, v43);
      v22 = (*(v20 + 72))(v21, v20);
      v24 = v23;
      v26 = v43;
      v25 = v44;
      __swift_project_boxed_opaque_existential_1(v42, v43);
      (*(v25 + 64))(&v40, v26, v25);
      v27 = v40;
      type metadata accessor for FMNAuthenticationCredential();
      v28 = swift_allocObject();
      *(v28 + 16) = v37;
      *(v28 + 24) = v14;
      *(v28 + 32) = v17;
      *(v28 + 40) = v19;
      *(v28 + 48) = v22;
      *(v28 + 56) = v24;
      *(v28 + 64) = v27;
      ObjectType = swift_getObjectType();
      sub_24A899560();
      v30 = swift_allocError();
      *v31 = 2;
      v32 = swift_allocObject();
      *(v32 + 16) = group;
      v33 = *(v38 + 16);
      v34 = group;
      v33(v28, v30, v39, v32, ObjectType, v38);

      swift_unknownObjectRelease();
    }

    else
    {
      v36 = sub_24A8BB464();
      sub_24A8BB3D4();
      sub_24A8BB0A4();

      dispatch_group_leave(group);
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v42);
  }

  else
  {
    sub_24A886D90(&v40, &qword_27EF79120, &qword_24A8BC960);
    v35 = sub_24A8BB464();
    sub_24A8BB3D4();
    sub_24A8BB0A4();

    dispatch_group_leave(group);
  }
}

uint64_t sub_24A8A574C(int a1, uint64_t a2, dispatch_group_t group, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, NSObject *a8, void (*a9)(void, void))
{
  dispatch_group_enter(group);
  if (*(a2 + 16) && (v12 = sub_24A88C87C(0xD000000000000010, 0x800000024A8C02C0), (v13 & 1) != 0))
  {
    v14 = (*(a2 + 56) + 16 * v12);
    v16 = *v14;
    v15 = v14[1];
  }

  else
  {
    v16 = 0;
    v15 = 0;
  }

  sub_24A8BB3D4();
  if (qword_27EF78FF0 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_24A8BC300;
  v34[0] = v16;
  v34[1] = v15;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79128, &unk_24A8BDA50);
  v18 = sub_24A8BB2A4();
  v20 = v19;
  *(v17 + 56) = MEMORY[0x277D837D0];
  *(v17 + 64) = sub_24A8897F0();
  *(v17 + 32) = v18;
  *(v17 + 40) = v20;
  sub_24A8BB0B4();

  sub_24A883EEC(a4, v34, &qword_27EF79168, &unk_24A8BC970);
  sub_24A883EEC(a6, v33, &qword_27EF79160, &qword_24A8BC968);
  sub_24A883EEC(a7, v32, &qword_27EF79118, &unk_24A8BD720);
  if (v15)
  {
    sub_24A883EEC(a4 + 144, v31, &qword_27EF79118, &unk_24A8BD720);
    if (v31[0])
    {
      v21._countAndFlagsBits = v16;
      v21._object = v15;
      FMNRedirectHostStore.saveRedirectedHost(host:)(v21);
      sub_24A887480(v31);
    }

    else
    {
      sub_24A886D90(v31, &qword_27EF79118, &unk_24A8BD720);
    }

    sub_24A8A66B4(*(a4 + 208) < 1, a5, v34, v33, v32, a8, a9, group);
  }

  else
  {
    sub_24A8BB3C4();
    sub_24A882CB8(0, &qword_2814AB000, 0x277D86200);
    v22 = sub_24A8BB464();
    sub_24A8BB0B4();

    v23 = swift_allocObject();
    v24 = MEMORY[0x277D839B0];
    *(v23 + 16) = xmmword_24A8BC300;
    v25 = MEMORY[0x277D839F0];
    *(v23 + 56) = v24;
    *(v23 + 64) = v25;
    *(v23 + 32) = 0;
    sub_24A8BB3D4();
    sub_24A8BB0A4();

    dispatch_group_leave(group);
  }

  sub_24A886D90(v32, &qword_27EF79118, &unk_24A8BD720);
  sub_24A886D90(v33, &qword_27EF79160, &qword_24A8BC968);
  return sub_24A886D90(v34, &qword_27EF79168, &unk_24A8BC970);
}

void sub_24A8A5AE8(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4, NSObject *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v92 = a8;
  v97 = a5;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79110, &qword_24A8BDC50);
  v13 = *(*(v90 - 8) + 64);
  MEMORY[0x28223BE20](v90);
  v91 = (&v84 - v14);
  v15 = sub_24A8BAF24();
  v16 = *(v15 - 8);
  v17 = v16[8];
  v18 = MEMORY[0x28223BE20](v15);
  v93 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v84 - v20;
  v99 = a3;
  dispatch_group_enter(a3);
  v22 = *(a2 + 16);
  v94 = v21;
  if (v22 && (v23 = sub_24A88C87C(0xD000000000000010, 0x800000024A8C02C0), (v24 & 1) != 0))
  {
    v25 = (*(a2 + 56) + 16 * v23);
    v26 = *v25;
    v27 = v25[1];
  }

  else
  {
    v26 = 0;
    v27 = 0;
  }

  v95 = v16;
  v96 = v15;
  sub_24A8BB3D4();
  if (qword_27EF78FF0 != -1)
  {
    swift_once();
  }

  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
  v29 = swift_allocObject();
  v100 = xmmword_24A8BC300;
  *(v29 + 16) = xmmword_24A8BC300;
  v125[0] = v26;
  v125[1] = v27;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79128, &unk_24A8BDA50);
  v30 = sub_24A8BB2A4();
  v101 = v27;
  v32 = v31;
  *(v29 + 56) = MEMORY[0x277D837D0];
  v89 = sub_24A8897F0();
  *(v29 + 64) = v89;
  *(v29 + 32) = v30;
  *(v29 + 40) = v32;
  v33 = v101;
  sub_24A8BB0B4();

  sub_24A883EEC(a4, v125, &qword_27EF79150, &unk_24A8BD750);
  sub_24A883EEC(a6, v124, &qword_27EF79140, &unk_24A8BD730);
  if (!v33)
  {
    sub_24A8BB3C4();
    sub_24A882CB8(0, &qword_2814AB000, 0x277D86200);
    v35 = sub_24A8BB464();
    sub_24A8BB0B4();

    v36 = swift_allocObject();
    v37 = MEMORY[0x277D839B0];
    *(v36 + 16) = v100;
    v38 = MEMORY[0x277D839F0];
    *(v36 + 56) = v37;
    *(v36 + 64) = v38;
    *(v36 + 32) = 0;
    sub_24A8BB3D4();
    sub_24A8BB0A4();

    dispatch_group_leave(v99);
LABEL_21:
    sub_24A886D90(v124, &qword_27EF79140, &unk_24A8BD730);
    sub_24A886D90(v125, &qword_27EF79150, &unk_24A8BD750);
    return;
  }

  v98 = v28;
  sub_24A883EEC(a4 + 144, &v102, &qword_27EF79118, &unk_24A8BD720);
  if (v102)
  {
    v34._countAndFlagsBits = v26;
    v34._object = v33;
    FMNRedirectHostStore.saveRedirectedHost(host:)(v34);
    sub_24A887480(&v102);
  }

  else
  {
    sub_24A886D90(&v102, &qword_27EF79118, &unk_24A8BD720);
  }

  v39 = *(a4 + 208);
  v40 = swift_allocObject();
  v41 = MEMORY[0x277D839B0];
  *(v40 + 16) = v100;
  v42 = MEMORY[0x277D839F0];
  *(v40 + 56) = v41;
  *(v40 + 64) = v42;
  *(v40 + 32) = v39 < 1;
  sub_24A8BB3D4();
  sub_24A8BB0A4();

  if (v39 > 0)
  {
LABEL_20:
    dispatch_group_leave(v99);

    goto LABEL_21;
  }

  sub_24A899560();
  v43 = swift_allocError();
  *v44 = 5;
  sub_24A8BB1B4();

  v45 = (v126 + 1);
  if (!__OFADD__(v126, 1))
  {
    sub_24A883EEC(v124, v123, &qword_27EF79140, &unk_24A8BD730);
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v47 = Strong;
      sub_24A883EEC(v123, v121, &qword_27EF79140, &unk_24A8BD730);
      v87 = v45;
      sub_24A886914(v121, v119);
      sub_24A886914(v122, &v120);
      sub_24A883EEC(v119, v117, &qword_27EF79140, &unk_24A8BD730);
      sub_24A886914(v117, v115);
      sub_24A886914(v118, v116);
      sub_24A883EEC(v115, &v102, &qword_27EF79140, &unk_24A8BD730);
      sub_24A883B44(&v102, v112);
      sub_24A883B44(v105, v111);
      v48 = sub_24A886978(v112);
      sub_24A886B10(v48, v110);
      v49 = v47[5];
      MEMORY[0x28223BE20](v50);
      *(&v84 - 2) = v47;
      *(&v84 - 1) = v48;
      v97 = v48;
      type metadata accessor for FMNHttpClient();
      sub_24A8BB424();
      v88 = 0;
      v51 = v102;
      sub_24A886914(v115, v108);
      sub_24A886914(v116, &v109);
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79148, &unk_24A8BD740);
      v53 = *(v52 + 48);
      v54 = *(v52 + 52);
      swift_allocObject();
      v55 = sub_24A8BB1D4();
      v56 = swift_allocObject();
      v57 = v92;
      *(v56 + 16) = v92;
      *(v56 + 24) = a9;

      sub_24A8BB184();

      v58 = swift_allocObject();
      *(v58 + 16) = v57;
      *(v58 + 24) = a9;

      sub_24A8BB194();

      v59 = v47[2];
      v60 = v47[3];
      sub_24A883EEC(v108, &v104, &qword_27EF79140, &unk_24A8BD730);
      v61 = OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_credential;
      swift_beginAccess();
      v85 = v51;
      sub_24A883EEC(v51 + v61, &v106, &qword_27EF79120, &qword_24A8BC960);
      sub_24A883EEC(v110, v107, &qword_27EF79118, &unk_24A8BD720);
      swift_unknownObjectWeakInit();
      *(&v102 + 1) = v59;
      v103 = v60;
      swift_weakInit();
      v107[8] = v87;
      swift_unknownObjectRetain();
      v62 = sub_24A8887E8(v57, a9, v55);
      sub_24A886D90(&v102, &qword_27EF79150, &unk_24A8BD750);
      sub_24A886D90(v108, &qword_27EF79140, &unk_24A8BD730);
      v63 = swift_allocObject();
      v63[2] = v47;
      v63[3] = v62;
      v63[4] = v55;
      v64 = v113;
      v65 = v114;
      __swift_project_boxed_opaque_existential_1(v112, v113);
      v66 = *(v65 + 16);
      v92 = v55;

      v86 = v62;

      v67 = v93;
      v66(v64, v65);
      v68 = v94;
      v87 = v47;
      sub_24A888D88(v67, v110, v94);
      v69 = v96;
      v70 = v95[1];
      v71 = v67;
      v72 = v85;
      v70(v71, v96);
      v95 = v63;
      v73 = v63;
      v74 = v88;
      sub_24A889A4C(v111, v68, sub_24A8995D4, v73);
      if (v74)
      {
        v70(v68, v69);
        sub_24A8BB3C4();
        sub_24A882CB8(0, &qword_2814AB000, 0x277D86200);
        v75 = sub_24A8BB464();
        v76 = swift_allocObject();
        *(v76 + 16) = v100;
        swift_getErrorValue();
        v77 = sub_24A8BB8D4();
        v78 = v89;
        *(v76 + 56) = MEMORY[0x277D837D0];
        *(v76 + 64) = v78;
        *(v76 + 32) = v77;
        *(v76 + 40) = v79;
        sub_24A8BB0B4();

        v80 = v91;
        *v91 = v74;
        swift_storeEnumTagMultiPayload();
        v81 = v74;
        sub_24A8BB3D4();
        v82 = sub_24A8BB464();
        sub_24A8BB0B4();

        v83 = v86;
        sub_24A88F02C(v80, v86, v92);

        sub_24A886D90(v80, &qword_27EF79110, &qword_24A8BDC50);
      }

      else
      {

        v70(v68, v69);
      }

      sub_24A886D90(v110, &qword_27EF79118, &unk_24A8BD720);
      __swift_destroy_boxed_opaque_existential_0Tm(v111);
      sub_24A886D90(v115, &qword_27EF79140, &unk_24A8BD730);
      sub_24A886D90(v119, &qword_27EF79140, &unk_24A8BD730);
      sub_24A886D90(v123, &qword_27EF79140, &unk_24A8BD730);
      __swift_destroy_boxed_opaque_existential_0Tm(v112);
      __swift_destroy_boxed_opaque_existential_0Tm(v118);
      __swift_destroy_boxed_opaque_existential_0Tm(v117);
      __swift_destroy_boxed_opaque_existential_0Tm(v122);
      __swift_destroy_boxed_opaque_existential_0Tm(v121);
    }

    else
    {
      sub_24A886D90(v123, &qword_27EF79140, &unk_24A8BD730);
    }

    goto LABEL_20;
  }

  __break(1u);
}

void sub_24A8A66B4(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6, void (*a7)(void, void), NSObject *a8)
{
  v119 = a6;
  v120 = a7;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79110, &qword_24A8BDC50);
  v12 = *(*(v117 - 8) + 64);
  MEMORY[0x28223BE20](v117);
  v14 = &v109 - v13;
  v15 = sub_24A8BAF24();
  v122 = *(v15 - 8);
  v123 = v15;
  v16 = v122[8];
  v17 = MEMORY[0x28223BE20](v15);
  v118 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v121 = &v109 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v109 - v21;
  if (qword_27EF78FF0 != -1)
  {
    swift_once();
  }

  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
  v23 = swift_allocObject();
  v115 = xmmword_24A8BC300;
  *(v23 + 16) = xmmword_24A8BC300;
  v24 = MEMORY[0x277D839F0];
  *(v23 + 56) = MEMORY[0x277D839B0];
  *(v23 + 64) = v24;
  *(v23 + 32) = a1 & 1;
  sub_24A8BB3D4();
  sub_24A8BB0A4();

  if ((a1 & 1) == 0)
  {
    goto LABEL_22;
  }

  sub_24A899560();
  v25 = swift_allocError();
  *v26 = 5;
  sub_24A8BB1B4();

  v27 = *(a3 + 208);
  v114 = v27 + 1;
  if (!__OFADD__(v27, 1))
  {
    sub_24A883EEC(a4, &v124, &qword_27EF79160, &qword_24A8BC968);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79160, &qword_24A8BC968);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79140, &unk_24A8BD730);
    if (swift_dynamicCast())
    {
      sub_24A886D90(v149, &qword_27EF79140, &unk_24A8BD730);
      sub_24A883EEC(a4, &v124, &qword_27EF79160, &qword_24A8BC968);
      if (swift_dynamicCast())
      {
        v111 = v14;
        v149[2] = v146;
        v149[3] = v147;
        v149[4] = v148;
        v149[0] = v144;
        v149[1] = v145;
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v29 = Strong;
          v112 = a8;
          sub_24A883EEC(v149, &v144, &qword_27EF79140, &unk_24A8BD730);
          sub_24A886914(&v144, v142);
          sub_24A886914(&v146 + 8, v143);
          sub_24A883EEC(v142, v140, &qword_27EF79140, &unk_24A8BD730);
          sub_24A886914(v140, v138);
          sub_24A886914(v141, v139);
          sub_24A883EEC(v138, &v124, &qword_27EF79140, &unk_24A8BD730);
          sub_24A883B44(&v124, v135);
          sub_24A883B44(v127, v134);
          v30 = sub_24A886978(v135);
          sub_24A886B10(v30, v133);
          v31 = *(v29 + 40);
          MEMORY[0x28223BE20](v32);
          *(&v109 - 2) = v29;
          *(&v109 - 1) = v30;
          v110 = v30;
          type metadata accessor for FMNHttpClient();
          sub_24A8BB424();
          v109 = 0;
          v113 = v124;
          sub_24A886914(v138, v131);
          sub_24A886914(v139, v132);
          v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79148, &unk_24A8BD740);
          v34 = *(v33 + 48);
          v35 = *(v33 + 52);
          swift_allocObject();
          v36 = sub_24A8BB1D4();
          v37 = swift_allocObject();
          v38 = v29;
          v39 = v119;
          v40 = v120;
          *(v37 + 16) = v119;
          *(v37 + 24) = v40;

          v118 = v36;
          sub_24A8BB184();

          v41 = swift_allocObject();
          *(v41 + 16) = v39;
          *(v41 + 24) = v40;

          sub_24A8BB194();

          v42 = v38;
          v43 = *(v38 + 16);
          v44 = *(v38 + 24);
          sub_24A883EEC(v131, v126, &qword_27EF79140, &unk_24A8BD730);
          v45 = OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_credential;
          v46 = v113;
          swift_beginAccess();
          sub_24A883EEC(v46 + v45, v128, &qword_27EF79120, &qword_24A8BC960);
          sub_24A883EEC(v133, v129, &qword_27EF79118, &unk_24A8BD720);
          swift_unknownObjectWeakInit();
          *(&v124 + 1) = v43;
          v125 = v44;
          swift_weakInit();
          v130 = v114;
          swift_unknownObjectRetain();
          v47 = v39;
          v48 = v118;
          v49 = sub_24A8887E8(v47, v40, v118);
          sub_24A886D90(&v124, &qword_27EF79150, &unk_24A8BD750);
          sub_24A886D90(v131, &qword_27EF79140, &unk_24A8BD730);
          v50 = swift_allocObject();
          v50[2] = v42;
          v50[3] = v49;
          v50[4] = v48;
          v51 = v136;
          v52 = v137;
          __swift_project_boxed_opaque_existential_1(v135, v136);
          v120 = *(v52 + 16);

          v119 = v49;

          v53 = v121;
          v120(v51, v52);
          v120 = v42;
          sub_24A888D88(v53, v133, v22);
          v54 = v123;
          v55 = v122[1];
          v56 = v53;
          v57 = v113;
          v55(v56, v123);
          v122 = v50;
          v58 = v50;
          v59 = v109;
          sub_24A889A4C(v134, v22, sub_24A8995D4, v58);
          if (v59)
          {
            v55(v22, v54);
            sub_24A8BB3C4();
            sub_24A882CB8(0, &qword_2814AB000, 0x277D86200);
            v60 = sub_24A8BB464();
            v61 = swift_allocObject();
            *(v61 + 16) = v115;
            swift_getErrorValue();
            v62 = sub_24A8BB8D4();
            v64 = v63;
            *(v61 + 56) = MEMORY[0x277D837D0];
            *(v61 + 64) = sub_24A8897F0();
            *(v61 + 32) = v62;
            *(v61 + 40) = v64;
            sub_24A8BB0B4();

            v65 = v111;
            *v111 = v59;
            swift_storeEnumTagMultiPayload();
            v66 = v59;
            sub_24A8BB3D4();
            v67 = sub_24A8BB464();
            sub_24A8BB0B4();

            v68 = v119;
            sub_24A88F02C(v65, v119, v118);

            sub_24A886D90(v65, &qword_27EF79110, &qword_24A8BDC50);
          }

          else
          {

            v55(v22, v54);
          }

          a8 = v112;
          sub_24A886D90(v133, &qword_27EF79118, &unk_24A8BD720);
          __swift_destroy_boxed_opaque_existential_0Tm(v134);
          v107 = &qword_27EF79140;
          v108 = &unk_24A8BD730;
LABEL_21:
          sub_24A886D90(v138, v107, v108);
          sub_24A886D90(v142, v107, v108);
          sub_24A886D90(v149, v107, v108);
          __swift_destroy_boxed_opaque_existential_0Tm(v135);
          __swift_destroy_boxed_opaque_existential_0Tm(v141);
          __swift_destroy_boxed_opaque_existential_0Tm(v140);
          __swift_destroy_boxed_opaque_existential_0Tm(&v146 + 1);
          __swift_destroy_boxed_opaque_existential_0Tm(&v144);
          goto LABEL_22;
        }

        v105 = &qword_27EF79140;
        v106 = &unk_24A8BD730;
        goto LABEL_18;
      }

      v147 = 0u;
      v148 = 0u;
      v145 = 0u;
      v146 = 0u;
      v144 = 0u;
      sub_24A886D90(&v144, &unk_27EF79350, &qword_24A8BDA60);
    }

    sub_24A883EEC(a4, v149, &qword_27EF79160, &qword_24A8BC968);
    v69 = swift_weakLoadStrong();
    if (v69)
    {
      v70 = v69;
      v111 = v14;
      v112 = a8;
      sub_24A883EEC(v149, &v144, &qword_27EF79160, &qword_24A8BC968);
      sub_24A886914(&v144, v142);
      sub_24A886914(&v146 + 8, v143);
      sub_24A883EEC(v142, v140, &qword_27EF79160, &qword_24A8BC968);
      sub_24A886914(v140, v138);
      sub_24A886914(v141, v139);
      sub_24A883EEC(v138, &v124, &qword_27EF79160, &qword_24A8BC968);
      sub_24A883B44(&v124, v135);
      sub_24A883B44(v127, v134);
      v71 = sub_24A886978(v135);
      sub_24A886B10(v71, v133);
      v72 = v70[5];
      MEMORY[0x28223BE20](v73);
      *(&v109 - 2) = v70;
      *(&v109 - 1) = v71;
      v110 = v71;
      type metadata accessor for FMNHttpClient();
      sub_24A8BB424();
      v109 = 0;
      v74 = v124;
      sub_24A886914(v138, v131);
      sub_24A886914(v139, v132);
      v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79148, &unk_24A8BD740);
      v76 = *(v75 + 48);
      v77 = *(v75 + 52);
      swift_allocObject();
      v78 = sub_24A8BB1D4();
      v79 = swift_allocObject();
      v81 = v119;
      v80 = v120;
      *(v79 + 16) = v119;
      *(v79 + 24) = v80;

      sub_24A8BB184();

      v82 = swift_allocObject();
      *(v82 + 16) = v81;
      *(v82 + 24) = v80;

      sub_24A8BB194();

      v83 = v70[2];
      v84 = v70[3];
      sub_24A883EEC(v131, v126, &qword_27EF79160, &qword_24A8BC968);
      v85 = OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_credential;
      swift_beginAccess();
      v113 = v74;
      sub_24A883EEC(v74 + v85, v128, &qword_27EF79120, &qword_24A8BC960);
      sub_24A883EEC(v133, v129, &qword_27EF79118, &unk_24A8BD720);
      swift_unknownObjectWeakInit();
      *(&v124 + 1) = v83;
      v125 = v84;
      swift_weakInit();
      v130 = v114;
      swift_unknownObjectRetain();
      v86 = sub_24A8A2F40(v81, v80, v78);
      sub_24A886D90(&v124, &qword_27EF79168, &unk_24A8BC970);
      sub_24A886D90(v131, &qword_27EF79160, &qword_24A8BC968);
      v87 = swift_allocObject();
      v87[2] = v70;
      v87[3] = v86;
      v87[4] = v78;
      v88 = v136;
      v89 = v137;
      __swift_project_boxed_opaque_existential_1(v135, v136);
      v90 = *(v89 + 16);
      v120 = v78;

      v119 = v86;

      v91 = v121;
      v90(v88, v89);
      v92 = v118;
      sub_24A888D88(v91, v133, v118);
      v93 = v123;
      v94 = v122[1];
      v94(v91, v123);
      v95 = v109;
      sub_24A8AA108(v134, v92, sub_24A8995D4, v87);
      if (v95)
      {
        v94(v92, v93);
        sub_24A8BB3C4();
        sub_24A882CB8(0, &qword_2814AB000, 0x277D86200);
        v96 = sub_24A8BB464();
        v97 = swift_allocObject();
        *(v97 + 16) = v115;
        swift_getErrorValue();
        v98 = sub_24A8BB8D4();
        v100 = v99;
        *(v97 + 56) = MEMORY[0x277D837D0];
        *(v97 + 64) = sub_24A8897F0();
        *(v97 + 32) = v98;
        *(v97 + 40) = v100;
        sub_24A8BB0B4();

        v101 = v111;
        *v111 = v95;
        swift_storeEnumTagMultiPayload();
        v102 = v95;
        sub_24A8BB3D4();
        v103 = sub_24A8BB464();
        sub_24A8BB0B4();

        v104 = v119;
        sub_24A88F02C(v101, v119, v120);

        sub_24A886D90(v101, &qword_27EF79110, &qword_24A8BDC50);
      }

      else
      {

        v94(v92, v93);
      }

      a8 = v112;
      sub_24A886D90(v133, &qword_27EF79118, &unk_24A8BD720);
      __swift_destroy_boxed_opaque_existential_0Tm(v134);
      v107 = &qword_27EF79160;
      v108 = &qword_24A8BC968;
      goto LABEL_21;
    }

    v105 = &qword_27EF79160;
    v106 = &qword_24A8BC968;
LABEL_18:
    sub_24A886D90(v149, v105, v106);
LABEL_22:
    dispatch_group_leave(a8);
    return;
  }

  __break(1u);
}

unsigned __int8 *sub_24A8A7718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_24A8BB324();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_24A8A7CA4();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_24A8BB5D4();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_24A8A7CA4()
{
  v0 = sub_24A8BB334();
  v4 = sub_24A8A7D24(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_24A8A7D24(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_24A8BB2B4();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_24A8BB494();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_24A8A7E7C(v9, 0);
  v12 = sub_24A8A7EF0(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_24A8BB2B4();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_24A8BB5D4();
LABEL_4:

  return sub_24A8BB2B4();
}

void *sub_24A8A7E7C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79338, "6;");
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_24A8A7EF0(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_24A8A8110(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_24A8BB304();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_24A8BB5D4();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_24A8A8110(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_24A8BB2E4();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_24A8A8110(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_24A8BB314();
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
    v5 = MEMORY[0x24C21E900](15, a1 >> 16);
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

unint64_t sub_24A8A8190()
{
  result = qword_27EF79328;
  if (!qword_27EF79328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79328);
  }

  return result;
}

unint64_t sub_24A8A81E8()
{
  result = qword_27EF79330;
  if (!qword_27EF79330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79330);
  }

  return result;
}

uint64_t dispatch thunk of FMNServerInteractionController.retryUpload(consolidatedContent:redirectedHostStore:responseHandler:retryCount:)()
{
  return (*(*v0 + 192))();
}

{
  return (*(*v0 + 200))();
}

uint64_t dispatch thunk of FMNServerInteractionController.retryRequest(consolidatedContent:redirectedHostStore:responseHandler:retryCount:)()
{
  return (*(*v0 + 224))();
}

{
  return (*(*v0 + 232))();
}

uint64_t getEnumTagSinglePayload for FMNServerInteractionController.FMNServerInteractionError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FMNServerInteractionController.FMNServerInteractionError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
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

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24A8A8530()
{
  result = qword_2814AAA70;
  if (!qword_2814AAA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814AAA70);
  }

  return result;
}

unint64_t sub_24A8A869C(char a1)
{
  result = 6712678;
  switch(a1)
  {
    case 1:
      result = 0x707041666D66;
      break;
    case 2:
      result = 1885957478;
      break;
    case 3:
      result = 0x6972695370696D66;
      break;
    case 4:
      result = 0x7075746573;
      break;
    case 5:
      result = 0x6150686372616573;
      break;
    case 6:
      result = 0x4C676E6972696170;
      break;
    case 7:
      result = 0x726F737365636361;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0x7373656363413277;
      break;
    case 10:
      result = 0xD000000000000014;
      break;
    case 11:
      result = 0x6F4C657275636573;
      break;
    case 12:
      result = 0xD000000000000014;
      break;
    case 13:
      result = 0x726168536D657469;
      break;
    case 14:
      result = 1701736302;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24A8A888C(uint64_t a1)
{
  swift_beginAccess();
  sub_24A8A88DC(a1, v1 + 16);
  return swift_endAccess();
}

uint64_t sub_24A8A88DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79120, &qword_24A8BC960);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A8A899C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A8BAF24();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  return (*(**a2 + 160))(v7);
}

uint64_t sub_24A8A8A88(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12FMNetworking14FMNHTTPRequest_urlComponents;
  swift_beginAccess();
  v4 = sub_24A8BAF24();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t FMNHTTPRequest.__allocating_init(hostName:scheme:path:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(v6 + 48);
  v12 = *(v6 + 52);
  v13 = swift_allocObject();
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0u;
  *(v13 + 48) = 0;
  *(v13 + 56) = 14;
  sub_24A8BAF14();
  swift_beginAccess();
  sub_24A8BAF04();
  MEMORY[0x24C21E4E0](a1, a2);
  MEMORY[0x24C21E500](a5, a6);
  swift_endAccess();
  return v13;
}

uint64_t sub_24A8A8C5C(uint64_t a1, uint64_t a2)
{
  v5 = (*(*v2 + 168))(v7);

  MEMORY[0x24C21E4E0](a1, a2);
  return v5(v7, 0);
}

unint64_t sub_24A8A8CF4()
{
  v1 = sub_24A8BAF24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = 0;
  v21 = 0xE000000000000000;
  sub_24A8BB594();

  v20 = 0xD000000000000011;
  v21 = 0x800000024A8C0550;
  (*(*v0 + 152))(v6);
  sub_24A889310();
  v7 = sub_24A8BB724();
  v9 = v8;
  (*(v2 + 8))(v5, v1);
  MEMORY[0x24C21E8E0](v7, v9);

  MEMORY[0x24C21E8E0](8236, 0xE200000000000000);
  v11 = v20;
  v10 = v21;
  v20 = 0;
  v21 = 0xE000000000000000;
  sub_24A8BB594();

  strcpy(v22, "accountType: ");
  HIWORD(v22[1]) = -4864;
  (*(*v0 + 128))(&v20, v12);
  v13 = sub_24A8A869C(v20);
  MEMORY[0x24C21E8E0](v13);

  v14 = MEMORY[0x24C21E8E0](0x746E656465726320, 0xED0000203A6C6169);
  (*(*v0 + 104))(&v20, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79120, &qword_24A8BC960);
  v15 = sub_24A8BB2A4();
  MEMORY[0x24C21E8E0](v15);

  v16 = v22[0];
  v17 = v22[1];
  v20 = v11;
  v21 = v10;

  MEMORY[0x24C21E8E0](v16, v17);

  return v20;
}

uint64_t FMNHTTPRequest.deinit()
{
  sub_24A8A900C(v0 + 16);
  v1 = OBJC_IVAR____TtC12FMNetworking14FMNHTTPRequest_urlComponents;
  v2 = sub_24A8BAF24();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_24A8A900C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79120, &qword_24A8BC960);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FMNHTTPRequest.__deallocating_deinit()
{
  sub_24A8A900C(v0 + 16);
  v1 = OBJC_IVAR____TtC12FMNetworking14FMNHTTPRequest_urlComponents;
  v2 = sub_24A8BAF24();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

id FMNHttpClient.__allocating_init(credential:urlSessionFactory:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_24A886534(a1, a2);

  return v6;
}

uint64_t sub_24A8A932C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = sub_24A8BAFC4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FMNFileUploadRequest(0);
  (*(v6 + 16))(v9, v3 + v10[6], v5);
  sub_24A8BAD94();
  v11 = *(v3 + v10[5]);
  v12 = qword_24A8BDCA0[v11];
  v13 = qword_24A8BDCC0[v11];
  v56 = a1;
  sub_24A8BAD64();
  sub_24A883EEC(v3 + v10[8], &v51, &qword_27EF79120, &qword_24A8BC960);
  if (v52)
  {
    sub_24A883B44(&v51, v53);
    v14 = v54;
    v15 = v55;
    __swift_project_boxed_opaque_existential_1(v53, v54);
    result = (*(v15 + 56))(v14, v15);
    v17 = result;
    if (!*(result + 16))
    {

      sub_24A8AC55C();
      swift_allocError();
      *v48 = 1;
      swift_willThrow();
      v49 = sub_24A8BADF4();
      (*(*(v49 - 8) + 8))(v56, v49);
      return __swift_destroy_boxed_opaque_existential_0Tm(v53);
    }

    v50[0] = v3;
    v50[1] = v2;
    v18 = 0;
    v19 = 1 << *(result + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(result + 64);
    for (i = (v19 + 63) >> 6; v21; result = )
    {
      v23 = v18;
LABEL_11:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v25 = (v23 << 10) | (16 * v24);
      v26 = (*(v17 + 48) + v25);
      v27 = *v26;
      v28 = v26[1];
      v29 = (*(v17 + 56) + v25);
      v30 = *v29;
      v31 = v29[1];

      sub_24A8BADE4();
    }

    while (1)
    {
      v23 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v23 >= i)
      {

        __swift_destroy_boxed_opaque_existential_0Tm(v53);
        v3 = v50[0];
        goto LABEL_15;
      }

      v21 = *(v17 + 64 + 8 * v23);
      ++v18;
      if (v21)
      {
        v18 = v23;
        goto LABEL_11;
      }
    }
  }

  else
  {
    sub_24A886D90(&v51, &qword_27EF79120, &qword_24A8BC960);
LABEL_15:
    v32 = *(v3 + v10[7]);
    v33 = 1 << *(v32 + 32);
    v34 = -1;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    v35 = v34 & *(v32 + 64);
    v36 = (v33 + 63) >> 6;
    v37 = *(v3 + v10[7]);

    for (j = 0; v35; result = )
    {
      v39 = j;
LABEL_23:
      v40 = __clz(__rbit64(v35));
      v35 &= v35 - 1;
      v41 = (v39 << 10) | (16 * v40);
      v42 = (*(v32 + 48) + v41);
      v43 = *v42;
      v44 = v42[1];
      v45 = (*(v32 + 56) + v41);
      v46 = *v45;
      v47 = v45[1];

      sub_24A8BADE4();
    }

    while (1)
    {
      v39 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if (v39 >= v36)
      {
      }

      v35 = *(v32 + 64 + 8 * v39);
      ++j;
      if (v35)
      {
        j = v39;
        goto LABEL_23;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24A8A9750@<X0>(void *a1@<X0>, uint64_t (**a2)(uint64_t *a1, uint64_t *a2)@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_authenticationChallengeHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24A8AC548;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24A88D378(v4);
}

uint64_t sub_24A8A97F0(uint64_t *a1, uint64_t *a2, void (*a3)(uint64_t, uint64_t (*)(uint64_t a1, uint64_t a2), uint64_t))
{
  v4 = *a1;
  v6 = *a2;
  v5 = a2[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;

  a3(v4, sub_24A8AC4D4, v7);
}

uint64_t sub_24A8A9888(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24A8AC510;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_authenticationChallengeHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_24A88D378(v3);
  return sub_24A8895E8(v8);
}

uint64_t sub_24A8A9950(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, void *))
{
  v10 = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v9[0] = sub_24A8AC518;
  v9[1] = v7;

  a4(&v10, v9);
}

uint64_t sub_24A8A99F4()
{
  v1 = (v0 + OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_authenticationChallengeHandler);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  sub_24A88D378(v3);
  return v3;
}

uint64_t sub_24A8A9A50(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_authenticationChallengeHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_24A8895E8(v6);
}

uint64_t sub_24A8A9B10(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_bundleIdentifierFallback);
  swift_beginAccess();
  v5 = v4[1];
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_24A8A9B7C()
{
  v1 = (v0 + OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_bundleIdentifierFallback);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_24A8A9BD4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_bundleIdentifierFallback);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

id FMNHttpClient.init(credential:urlSessionFactory:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_24A886534(a1, a2);

  return v2;
}

id FMNHttpClient.__deallocating_deinit()
{
  v1 = *&v0[OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_sessionLock];

  sub_24A8BB0C4();

  v3.receiver = v0;
  v3.super_class = type metadata accessor for FMNHttpClient();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_24A8A9F04()
{
  v1 = *(v0 + OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_sessionLock);

  sub_24A8BB0C4();
}

uint64_t sub_24A8A9F84(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_session;
  swift_beginAccess();
  sub_24A883EEC(a1 + v2, &v9, &qword_27EF79478, &unk_24A8BDC70);
  if (*(&v10 + 1))
  {
    sub_24A886914(&v9, v6);
    sub_24A886D90(&v9, &qword_27EF79478, &unk_24A8BDC70);
    v3 = v7;
    v4 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    (*(v4 + 24))(v3, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
  }

  else
  {
    sub_24A886D90(&v9, &qword_27EF79478, &unk_24A8BDC70);
  }

  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  swift_beginAccess();
  sub_24A8874D4(&v9, a1 + v2, &qword_27EF79478, &unk_24A8BDC70);
  return swift_endAccess();
}

uint64_t sub_24A8AA108(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v98 = a4;
  v97 = a3;
  v112 = a2;
  v103 = sub_24A8BADF4();
  v102 = *(v103 - 8);
  v5 = *(v102 + 64);
  v6 = MEMORY[0x28223BE20](v103);
  v100 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v99 = &v95 - v9;
  MEMORY[0x28223BE20](v8);
  v101 = &v95 - v10;
  v104 = type metadata accessor for FMNFileUploadRequest(0);
  v11 = *(*(v104 - 8) + 64);
  MEMORY[0x28223BE20](v104);
  v107 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79180, &qword_24A8BC9F0);
  v13 = *(*(v110 - 1) + 64);
  v14 = MEMORY[0x28223BE20](v110);
  v16 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  *&v109 = &v95 - v17;
  v18 = sub_24A8BAF24();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v95 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_24A8BAFC4();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v96 = &v95 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v111 = &v95 - v28;
  v29 = a1[3];
  v30 = a1[4];
  v106 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  v31 = (*(v30 + 56))(v29, v30);
  v32 = 0;
  v33 = 0;
  if (v31)
  {
    v34 = OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_credential;
    v35 = v117;
    swift_beginAccess();
    sub_24A883EEC(&v35[v34], v114, &qword_27EF79120, &qword_24A8BC960);
    v32 = v115;
    if (v115)
    {
      v36 = v116;
      __swift_project_boxed_opaque_existential_1(v114, v115);
      v32 = (*(v36 + 32))(v32, v36);
      v33 = v37;
      sub_24A886D90(v114, &qword_27EF79120, &qword_24A8BC960);
    }

    else
    {
      sub_24A886D90(v114, &qword_27EF79120, &qword_24A8BC960);
      v33 = 0;
    }
  }

  (*(v19 + 16))(v22, v112, v18);
  if (v33)
  {
    v38 = sub_24A8BAEE4();
    v112 = v24;
    v114[0] = v38;
    v114[1] = v39;
    v113[2] = 16421;
    v113[3] = 0xE200000000000000;
    v113[0] = v32;
    v113[1] = v33;
    sub_24A88A774();
    v40 = MEMORY[0x277D837D0];
    v41 = sub_24A8BB4B4();
    v105 = v18;
    v43 = v42;

    MEMORY[0x24C21E500](v41, v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_24A8BC300;
    sub_24A8BAEB4();
    v45 = sub_24A8BB2A4();
    v47 = v46;
    *(v44 + 56) = v40;
    *(v44 + 64) = sub_24A8897F0();
    *(v44 + 32) = v45;
    *(v44 + 40) = v47;
    v24 = v112;
    sub_24A882CB8(0, &qword_2814AB000, 0x277D86200);
    v48 = sub_24A8BB464();
    sub_24A8BB3D4();
    sub_24A8BB0A4();
    v18 = v105;
  }

  sub_24A8BAEB4();
  if ((*(v24 + 48))(v16, 1, v23) == 1)
  {
    sub_24A886D90(v16, &qword_27EF79180, &qword_24A8BC9F0);
    sub_24A8AC098();
    swift_allocError();
    *v49 = 1;
    swift_willThrow();

    return (*(v19 + 8))(v22, v18);
  }

  else
  {

    (*(v19 + 8))(v22, v18);
    v51 = v111;
    v52 = (*(v24 + 32))(v111, v16, v23);
    v53 = *&v117[OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_sessionLock];
    MEMORY[0x28223BE20](v52);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79388, &qword_24A8BDB10);
    v54 = v108;
    sub_24A8BB0C4();
    if (v54)
    {
      (*(v24 + 8))(v51, v23);
    }

    else
    {

      v110 = MEMORY[0x24C21F020](v55);
      v56 = v106;
      v57 = v106[3];
      v58 = v106[4];
      __swift_project_boxed_opaque_existential_1(v106, v57);
      (*(v58 + 40))(v113, v57, v58);
      v59 = v51;
      LODWORD(v112) = LOBYTE(v113[0]);
      v60 = v104;
      v61 = v107;
      (*(v24 + 16))(v107 + *(v104 + 24), v59, v23);
      v62 = v56[3];
      v63 = v56[4];
      __swift_project_boxed_opaque_existential_1(v56, v62);
      (*(v63 + 8))(v62, v63);
      v64 = OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_credential;
      v65 = v117;
      swift_beginAccess();
      sub_24A883EEC(&v65[v64], v61 + v60[8], &qword_27EF79120, &qword_24A8BC960);
      v66 = v56[3];
      v67 = v56[4];
      __swift_project_boxed_opaque_existential_1(v56, v66);
      v68 = (*(v67 + 16))(v66, v67);
      *(v61 + v60[5]) = v112;
      *(v61 + v60[7]) = v68;
      v69 = v56[3];
      v70 = v56[4];
      __swift_project_boxed_opaque_existential_1(v56, v69);
      if ((*(v70 + 48))(v69, v70))
      {
        v71 = &v118;
      }

      else
      {
        v71 = &v119;
      }

      v72 = *(v71 - 32);
      sub_24A8A932C(v72);
      v112 = v24;
      (*(v102 + 32))(v101, v72, v103);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
      v73 = swift_allocObject();
      v109 = xmmword_24A8BC300;
      *(v73 + 16) = xmmword_24A8BC300;
      v74 = sub_24A88CA00();
      v76 = v75;
      *(v73 + 56) = MEMORY[0x277D837D0];
      *(v73 + 64) = sub_24A8897F0();
      *(v73 + 32) = v74;
      *(v73 + 40) = v76;
      sub_24A882CB8(0, &qword_2814AB000, 0x277D86200);
      v77 = sub_24A8BB464();
      sub_24A8BB3D4();
      sub_24A8BB0A4();

      v78 = swift_allocObject();
      *(v78 + 16) = v109;
      v79 = sub_24A8BAD84();
      *(v78 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF793A8, &qword_24A8BDB18);
      *(v78 + 64) = sub_24A882D9C(&qword_2814AABC0, &unk_27EF793A8, &qword_24A8BDB18);
      v95 = v23;
      if (!v79)
      {
        v79 = sub_24A88B040(MEMORY[0x277D84F90]);
      }

      *(v78 + 32) = v79;
      v80 = sub_24A8BB464();
      sub_24A8BB3D4();
      sub_24A8BB0A4();

      v81 = v106[3];
      v82 = v106[4];
      __swift_project_boxed_opaque_existential_1(v106, v81);
      v83 = v96;
      (*(v82 + 8))(v81, v82);
      v84 = v115;
      v85 = v116;
      __swift_project_boxed_opaque_existential_1(v114, v115);
      v86 = swift_allocObject();
      v87 = v117;
      v88 = v97;
      v86[2] = v117;
      v86[3] = v88;
      v86[4] = v98;
      v89 = *(v85 + 16);
      v90 = v87;

      v91 = v101;
      v92 = v89(v101, v83, sub_24A88DCF8, v86, v84, v85);

      v93 = *(v112 + 8);
      v94 = v95;
      v93(v83, v95);
      [v92 resume];
      (*(v102 + 8))(v91, v103);
      sub_24A88CDF4(v107, type metadata accessor for FMNFileUploadRequest);
      objc_autoreleasePoolPop(v110);

      v93(v111, v94);
      return __swift_destroy_boxed_opaque_existential_0Tm(v114);
    }
  }
}

uint64_t sub_24A8AADC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;

  a7(a1, a2, a6, v13);
}

uint64_t sub_24A8AAE60(uint64_t a1, void (*a2)(void **))
{
  v20 = a2;
  v3 = type metadata accessor for FMNServerInteractionController.FMNResponseFields(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79158, &unk_24A8BDC80);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = (&v19 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79110, &qword_24A8BDC50);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v19 - v14);
  sub_24A883EEC(a1, &v19 - v14, &qword_27EF79110, &qword_24A8BDC50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *v15;
    *v11 = *v15;
    (*(v8 + 104))(v11, *MEMORY[0x277D498C0], v7);
    v17 = v16;
    v20(v11);

    return (*(v8 + 8))(v11, v7);
  }

  else
  {
    sub_24A88F45C(v15, v6);
    sub_24A88ECB0(v6, v11, type metadata accessor for FMNServerInteractionController.FMNResponseFields);
    (*(v8 + 104))(v11, *MEMORY[0x277D498C8], v7);
    v20(v11);
    (*(v8 + 8))(v11, v7);
    return sub_24A88CDF4(v6, type metadata accessor for FMNServerInteractionController.FMNResponseFields);
  }
}

uint64_t sub_24A8AB0F8@<X0>(uint64_t a1@<X8>)
{
  v100 = a1;
  v2 = sub_24A8BB294();
  v101 = *(v2 - 8);
  v3 = v101[8];
  MEMORY[0x28223BE20](v2);
  v5 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A8BADF4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A882CB8(0, &qword_2814AB000, 0x277D86200);
  v11 = sub_24A8BB464();
  sub_24A8BB3D4();
  sub_24A8BB0A4();

  result = sub_24A88C28C(v10);
  if (!v1)
  {
    v13 = v101;
    v98 = v6;
    v99 = v7;
    v97 = 0;
    v14 = sub_24A8BB244();
    v15 = NSClassFromString(v14);

    if (v15)
    {
      return (*(v99 + 32))(v100, v10, v98);
    }

    v16 = sub_24A8BB464();
    sub_24A8BB3D4();
    sub_24A8BB0A4();

    v17 = v10;
    v18 = sub_24A8BAD84();
    v19 = v98;
    if (!v18)
    {
      goto LABEL_11;
    }

    v20 = v18;
    if (!*(v18 + 16) || (v21 = sub_24A88C87C(0x7A69726F68747541, 0xED00006E6F697461), (v22 & 1) == 0))
    {

      goto LABEL_11;
    }

    v23 = (*(v20 + 56) + 16 * v21);
    v24 = *v23;
    v25 = v23[1];

    sub_24A8BB284();
    v96 = sub_24A8BB264();
    v27 = v26;

    (v13[1])(v5, v2);
    if (v27 >> 60 == 15)
    {
LABEL_11:
      sub_24A8AC098();
      swift_allocError();
      *v30 = 2;
      swift_willThrow();
      return (*(v99 + 8))(v17, v19);
    }

    v28 = sub_24A8BADC4();
    if (v29 >> 60 == 15)
    {
      sub_24A88C814(v96, v27);
      goto LABEL_11;
    }

    v31 = v28;
    v32 = v29;
    v33 = [objc_allocWithZone(MEMORY[0x277CBEB28]) init];
    v94 = v27;
    v34 = sub_24A8BB004();
    [v33 appendData_];

    v93 = v31;
    v92 = v32;
    v35 = sub_24A8BB004();
    [v33 appendData_];

    v91 = v33;
    v36 = [v33 fm_sha256Hash];
    v37 = sub_24A8BB024();
    v39 = v38;

    v40 = dispatch_group_create();
    v41 = swift_allocObject();
    *(v41 + 16) = 0;
    v101 = (v41 + 16);
    v42 = swift_allocObject();
    *(v42 + 16) = MEMORY[0x277D84F98];
    dispatch_group_enter(v40);
    v95 = [objc_opt_self() sharedInstance];
    v89 = v37;
    v88 = v39;
    v43 = sub_24A8BB004();
    v44 = swift_allocObject();
    v44[2] = v40;
    v44[3] = v41;
    v44[4] = v42;
    aBlock[4] = sub_24A8AC550;
    aBlock[5] = v44;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A8ABFF8;
    aBlock[3] = &block_descriptor_105;
    v45 = _Block_copy(aBlock);
    v46 = v40;
    v90 = v41;
    v47 = v42 + 16;

    v87 = v42;

    v48 = v95;
    [v95 signatureHeadersWithData:v43 completion:v45];
    _Block_release(v45);

    v95 = v46;
    sub_24A8BB3F4();
    swift_beginAccess();
    if (!*(*(v42 + 16) + 16))
    {
      v86 = sub_24A8BB3C4();
      v85 = sub_24A8BB464();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_24A8BCEB0;
      v50 = v101;
      swift_beginAccess();
      v102 = *v50;
      v51 = v102;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF79480, &unk_24A8BCDA0);
      v52 = sub_24A8BB2A4();
      v54 = v53;
      v55 = MEMORY[0x277D837D0];
      *(v49 + 56) = MEMORY[0x277D837D0];
      v56 = sub_24A8897F0();
      *(v49 + 64) = v56;
      *(v49 + 32) = v52;
      *(v49 + 40) = v54;
      v57 = *v47;

      v58 = sub_24A8BB204();
      v60 = v59;

      *(v49 + 96) = v55;
      *(v49 + 104) = v56;
      *(v49 + 72) = v58;
      *(v49 + 80) = v60;
      v61 = v85;
      sub_24A8BB0B4();

      v62 = *v50;
      v63 = *v50;
      v64 = *v50;
      if (!*v50)
      {
        sub_24A8AC098();
        v64 = swift_allocError();
        *v65 = 3;
        v63 = *v50;
      }

      *v50 = v64;
      v66 = v62;
    }

    v67 = v101;
    swift_beginAccess();
    if (*v67)
    {
      aBlock[8] = 3;
      sub_24A8BB724();
      sub_24A8BADE4();
    }

    v68 = *v47 + 64;
    v69 = 1 << *(*v47 + 32);
    v70 = -1;
    if (v69 < 64)
    {
      v70 = ~(-1 << v69);
    }

    v71 = v70 & *(*v47 + 64);
    v72 = (v69 + 63) >> 6;
    v101 = *v47;

    v73 = 0;
    v74 = v99;
    for (i = v100; v71; i = v100)
    {
      v76 = v73;
LABEL_27:
      v77 = __clz(__rbit64(v71));
      v71 &= v71 - 1;
      v78 = (v76 << 10) | (16 * v77);
      v79 = (v101[6] + v78);
      v80 = *v79;
      v81 = v79[1];
      v82 = (v101[7] + v78);
      v83 = *v82;
      v84 = v82[1];

      sub_24A8BADE4();

      v74 = v99;
    }

    while (1)
    {
      v76 = v73 + 1;
      if (__OFADD__(v73, 1))
      {
        break;
      }

      if (v76 >= v72)
      {
        sub_24A88C814(v96, v94);
        sub_24A88C814(v93, v92);
        sub_24A88C828(v89, v88);

        (*(v74 + 32))(i, v17, v98);
      }

      v71 = *(v68 + 8 * v76);
      ++v73;
      if (v71)
      {
        v73 = v76;
        goto LABEL_27;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24A8ABA20(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t *, uint64_t *))
{
  v4 = a2;
  v5 = a1;
  return a3(&v5, &v4);
}

id FMNHttpClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t FMNHttpClient.urlSession(_:didReceive:completionHandler:)(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t, void), uint64_t a4)
{
  v35 = a3;
  v32 = a2;
  v6 = sub_24A8BB0D4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24A8BB104();
  v33 = *(v11 - 8);
  v34 = v11;
  v12 = *(v33 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24A8BB0E4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = (v4 + OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_authenticationChallengeHandler);
  swift_beginAccess();
  v21 = *v20;
  if (!*v20)
  {
    return v35(1, 0);
  }

  v31 = v7;
  v22 = v20[1];
  sub_24A882CB8(0, &unk_2814AB010, 0x277D85C78);
  (*(v16 + 104))(v19, *MEMORY[0x277D851C8], v15);

  v30 = sub_24A8BB454();
  (*(v16 + 8))(v19, v15);
  v23 = swift_allocObject();
  v23[2] = v21;
  v23[3] = v22;
  v24 = v32;
  v25 = v35;
  v23[4] = v32;
  v23[5] = v25;
  v23[6] = a4;
  aBlock[4] = sub_24A88D404;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A8875B4;
  aBlock[3] = &block_descriptor_23;
  v26 = _Block_copy(aBlock);
  sub_24A88D378(v21);
  v27 = v24;

  sub_24A8BB0F4();
  v36 = MEMORY[0x277D84F90];
  sub_24A8870CC(qword_2814AACF0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF797F0, &qword_24A8BD2C0);
  sub_24A882D9C(&qword_2814AACD0, &qword_27EF797F0, &qword_24A8BD2C0);
  sub_24A8BB4E4();
  v28 = v30;
  MEMORY[0x24C21EA40](0, v14, v10, v26);
  _Block_release(v26);

  sub_24A8895E8(v21);
  (*(v31 + 8))(v10, v6);
  (*(v33 + 8))(v14, v34);
}

void sub_24A8ABF24(uint64_t a1, void *a2, NSObject *a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v10 = *(a4 + 16);
  *(a4 + 16) = a2;
  v11 = a2;

  if (a1)
  {
    v12 = a1;
  }

  else
  {
    swift_beginAccess();
    v12 = *(a5 + 16);
  }

  swift_beginAccess();
  v13 = *(a5 + 16);
  *(a5 + 16) = v12;

  dispatch_group_leave(a3);
}

uint64_t sub_24A8ABFF8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_24A8BB1F4();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v5(v6, a3);
}

unint64_t sub_24A8AC098()
{
  result = qword_27EF79380;
  if (!qword_27EF79380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79380);
  }

  return result;
}

uint64_t dispatch thunk of FMNHttpClient.upload(requestContent:urlComponents:completionHandler:)()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x150))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x158))();
}
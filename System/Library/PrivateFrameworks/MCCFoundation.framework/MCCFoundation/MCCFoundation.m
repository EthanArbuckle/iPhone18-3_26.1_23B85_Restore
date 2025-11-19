uint64_t sub_2561D2898(uint64_t a1, int a2)
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

uint64_t sub_2561D28B8(uint64_t result, int a2, int a3)
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

uint64_t sub_2561D291C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2561D2970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830368, &qword_2561EFCE0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 76);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2561D2A2C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830368, &qword_2561EFCE0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 76);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2561D2ADC(uint64_t *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830588, &qword_2561EFCE8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830590, &qword_2561EFCF0);
  sub_2561EDB60();
  sub_2561EDB60();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830598, &qword_2561EFCF8);
  sub_2561EDD00();
  sub_2561EE3D0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305A0, &qword_2561EFD00);
  swift_getTupleTypeMetadata2();
  sub_2561EE220();
  swift_getWitnessTable();
  sub_2561EE1B0();
  sub_2561EDB60();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305A8, &qword_2561EFD08);
  sub_2561EDB60();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305B0, &qword_2561EFD10);
  sub_2561EDB60();
  sub_2561EDB60();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305B8, &qword_2561EFD18);
  sub_2561EE1E0();
  swift_getTupleTypeMetadata2();
  sub_2561EE220();
  swift_getWitnessTable();
  sub_2561EDEF0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_2561E1BB8(&qword_27F8305C0, &qword_27F830588, &qword_2561EFCE8);
  swift_getOpaqueTypeConformance2();
  sub_2561EDBB0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305C8, &unk_2561EFD20);
  swift_getTupleTypeMetadata2();
  sub_2561EE220();
  swift_getWitnessTable();
  sub_2561EE1B0();
  sub_2561EDD00();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_2561D2F70@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2561EDC10();
  *a1 = result;
  return result;
}

uint64_t sub_2561D2FC4()
{
  v1 = *(v0 + 32);
  v34[0] = *(v0 + 16);
  v34[1] = v1;
  v2 = type metadata accessor for OBKListView(0, v34);
  v3 = (*(*(v2 - 1) + 80) + 136) & ~*(*(v2 - 1) + 80);
  v4 = *(*(v2 - 1) + 64);
  v5 = *(v0 + 56);

  v6 = *(v0 + 80);

  if (*(v0 + 112))
  {
    v7 = *(v0 + 96);

    v8 = *(v0 + 112);

    v9 = *(v0 + 128);
  }

  v10 = (v0 + v3);
  v11 = *(v0 + v3 + 8);

  v12 = *(v0 + v3 + 24);

  if (*(v0 + v3 + 32))
  {
    v13 = v10[5];
  }

  v14 = v10[7];

  if (v10[9])
  {

    v15 = v10[12];

    if (v10[16])
    {
      v16 = v10[14];

      v17 = v10[16];

      v18 = v10[18];
    }
  }

  if (v10[20])
  {

    v19 = v10[23];

    if (v10[27])
    {
      v20 = v10[25];

      v21 = v10[27];

      v22 = v10[29];
    }
  }

  v23 = v10[31];

  v24 = v10 + v2[19];
  v25 = type metadata accessor for OBKCaption();
  if (!(*(*(v25 - 8) + 48))(v24, 1, v25))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 2:
        goto LABEL_15;
      case 1:
        v28 = *(v24 + 1);

        v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830418, &qword_2561EF3B8) + 64);
        v30 = sub_2561ED970();
        (*(*(v30 - 8) + 8))(&v24[v29], v30);
        break;
      case 0:
LABEL_15:
        v27 = *(v24 + 1);

        break;
    }
  }

  v31 = *(v10 + v2[22] + 8);

  v32 = *(v10 + v2[23] + 8);

  return swift_deallocObject();
}

uint64_t sub_2561D325C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2561EDC30();
  *a1 = result & 1;
  return result;
}

uint64_t MCCError.debugDescription.getter()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830280, &qword_2561EEAF0) - 8) + 64);
  v2 = (MEMORY[0x28223BE20])();
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v44 - v5;
  v7 = sub_2561ED860();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MCCError();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2561D3A04(v0, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      (*(v8 + 32))(v11, v15, v7);
      v45 = 0;
      v46 = 0xE000000000000000;
      sub_2561EE430();

      v45 = 0xD00000000000001ALL;
      v46 = 0x80000002561F0220;
      sub_2561D4764(&qword_27F830298, MEMORY[0x277CC8678]);
      v29 = sub_2561EE4B0();
      MEMORY[0x259C5E4E0](v29);

      v30 = v45;
      (*(v8 + 8))(v11, v7);
      return v30;
    }

    if (EnumCaseMultiPayload != 4)
    {
      return 0x726F687475616E55;
    }

    v21 = *v15;
    v22 = v15[1];
    v23 = v15[2];
    if (v23 >> 60 == 15)
    {
      v32 = 0x80000002561F0200;
      v33 = 0xD000000000000016;
    }

    else
    {
      v24 = sub_2561ED890();
      v25 = *(v24 + 48);
      v26 = *(v24 + 52);
      swift_allocObject();
      sub_2561D3BA8(v22, v23);
      sub_2561ED880();
      sub_2561D3BFC();
      sub_2561ED870();

      sub_2561D3B40(v22, v23);
      v33 = v45;
      v32 = v46;
    }

    v45 = 0;
    v46 = 0xE000000000000000;
    sub_2561EE430();

    v45 = 0x6520726576726553;
    v46 = 0xEF5B203A726F7272;
    v47 = [v21 statusCode];
    v34 = sub_2561EE4B0();
    MEMORY[0x259C5E4E0](v34);

    MEMORY[0x259C5E4E0](8285, 0xE200000000000000);
    v35 = [v21 URL];
    if (v35)
    {
      v36 = v35;
      sub_2561ED950();

      v37 = 0;
    }

    else
    {
      v37 = 1;
    }

    v38 = sub_2561ED970();
    v39 = *(v38 - 8);
    (*(v39 + 56))(v4, v37, 1, v38);
    sub_2561D3A68(v4, v6);
    if ((*(v39 + 48))(v6, 1, v38) == 1)
    {
      sub_2561D3AD8(v6);
      v40 = 0xE600000000000000;
      v41 = 0x6C7275206F6ELL;
    }

    else
    {
      v42 = sub_2561ED930();
      v40 = v43;
      (*(v39 + 8))(v6, v38);
      v41 = v42;
    }

    MEMORY[0x259C5E4E0](v41, v40);

    MEMORY[0x259C5E4E0](8236, 0xE200000000000000);
    MEMORY[0x259C5E4E0](v33, v32);

    sub_2561D3B40(v22, v23);
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v17 = *v15;
      v18 = v15[1];
      v45 = 0;
      v46 = 0xE000000000000000;
      if (EnumCaseMultiPayload == 1)
      {
        sub_2561EE430();

        v19 = 0x80000002561F0260;
        v20 = 0xD000000000000011;
      }

      else
      {
        sub_2561EE430();

        v19 = 0x80000002561F0240;
        v20 = 0xD000000000000014;
      }

      v45 = v20;
      v46 = v19;
      MEMORY[0x259C5E4E0](v17, v18);
    }

    else
    {
      v27 = *v15;
      v45 = 0;
      v46 = 0xE000000000000000;
      sub_2561EE430();

      v45 = 0xD000000000000021;
      v46 = 0x80000002561F0280;
      v28 = sub_2561EE2B0();
      MEMORY[0x259C5E4E0](v28);
    }
  }

  return v45;
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

uint64_t type metadata accessor for MCCError()
{
  result = qword_280E1BDE8;
  if (!qword_280E1BDE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2561D3A04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MCCError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2561D3A68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830280, &qword_2561EEAF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2561D3AD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830280, &qword_2561EEAF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2561D3B40(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2561D3B54(a1, a2);
  }

  return a1;
}

uint64_t sub_2561D3B54(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2561D3BA8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_2561D3BFC()
{
  result = qword_27F830288;
  if (!qword_27F830288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F830288);
  }

  return result;
}

unint64_t sub_2561D3C50()
{
  result = qword_27F830290;
  if (!qword_27F830290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F830290);
  }

  return result;
}

uint64_t MCCError.errorDescription.getter()
{
  v1 = type metadata accessor for MCCError();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = (v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2561D3A04(v0, v4);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v5 = *v4;
    v6 = v4[1];
    v7 = v4[2];

    if (v7 >> 60 != 15)
    {
      v8 = sub_2561ED890();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      sub_2561ED880();
      sub_2561D3BFC();
      sub_2561ED870();

      sub_2561D3B40(v6, v7);
      return v12[2];
    }
  }

  else
  {
    sub_2561D3E20(v4);
  }

  return 0;
}

uint64_t sub_2561D3E20(uint64_t a1)
{
  v2 = type metadata accessor for MCCError();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2561D3EA4()
{
  sub_2561EE510();
  sub_2561EE2D0();
  return sub_2561EE530();
}

uint64_t sub_2561D3F18()
{
  sub_2561EE510();
  sub_2561EE2D0();
  return sub_2561EE530();
}

uint64_t sub_2561D3FB4@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_2561EE490();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_2561D4018(uint64_t a1)
{
  v2 = sub_2561D426C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2561D4054(uint64_t a1)
{
  v2 = sub_2561D426C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MCCErrorResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8302A0, &qword_2561EEAF8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2561D426C();
  sub_2561EE540();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = sub_2561EE4A0();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  *a2 = v11;
  *(a2 + 8) = v13;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_2561D426C()
{
  result = qword_27F8302A8;
  if (!qword_27F8302A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8302A8);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_2561D4324()
{
  sub_2561EE510();
  sub_2561EE2D0();
  return sub_2561EE530();
}

uint64_t sub_2561D4398()
{
  sub_2561EE510();
  sub_2561EE2D0();
  return sub_2561EE530();
}

uint64_t sub_2561D43F8@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2561EE490();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_2561D4484@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_2561EE490();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_2561D44DC(uint64_t a1)
{
  v2 = sub_2561D46C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2561D4518(uint64_t a1)
{
  v2 = sub_2561D46C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LegacyMCCErrorResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8302B0, &qword_2561EEB00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2561D46C8();
  sub_2561EE540();
  if (!v2)
  {
    v11 = sub_2561EE4A0();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2561D46C8()
{
  result = qword_27F8302B8;
  if (!qword_27F8302B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8302B8);
  }

  return result;
}

uint64_t sub_2561D4764(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2561D4818()
{
  sub_2561D4974(319, &qword_280E1BD08, type metadata accessor for Dataclass);
  if (v0 <= 0x3F)
  {
    sub_2561D4914();
    if (v1 <= 0x3F)
    {
      sub_2561D4944();
      if (v2 <= 0x3F)
      {
        sub_2561D4974(319, &unk_280E1BE00, MEMORY[0x277CC8678]);
        if (v3 <= 0x3F)
        {
          sub_2561D49C0();
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_2561D4914()
{
  result = qword_280E1BD48[0];
  if (!qword_280E1BD48[0])
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], qword_280E1BD48);
  }

  return result;
}

uint64_t sub_2561D4944()
{
  result = qword_280E1BD40;
  if (!qword_280E1BD40)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_280E1BD40);
  }

  return result;
}

void sub_2561D4974(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2561D49C0()
{
  if (!qword_280E1BD28)
  {
    sub_2561D4A40();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8302C8, &qword_2561EEC00);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E1BD28);
    }
  }
}

unint64_t sub_2561D4A40()
{
  result = qword_280E1BD20;
  if (!qword_280E1BD20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E1BD20);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_2561D4AE8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_2561D4B30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2561D4B90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2561D4BD8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_2561D4C5C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2561D4C7C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for iCloudMailAccountUIFeatureFlag(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for iCloudMailAccountUIFeatureFlag(_WORD *result, int a2, int a3)
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

unint64_t sub_2561D4DB4()
{
  result = qword_27F8302E0;
  if (!qword_27F8302E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8302E0);
  }

  return result;
}

unint64_t sub_2561D4E0C()
{
  result = qword_27F8302E8;
  if (!qword_27F8302E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8302E8);
  }

  return result;
}

uint64_t sub_2561D4E68(uint64_t a1, id *a2)
{
  result = sub_2561EE290();
  *a2 = 0;
  return result;
}

uint64_t sub_2561D4EE0(uint64_t a1, id *a2)
{
  v3 = sub_2561EE2A0();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2561D4F60@<X0>(uint64_t *a1@<X8>)
{
  sub_2561EE2B0();
  v2 = sub_2561EE280();

  *a1 = v2;
  return result;
}

void *sub_2561D4FB8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2561D4FC8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2561EE280();

  *a2 = v5;
  return result;
}

uint64_t sub_2561D5010@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_2561EE2B0();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_2561D503C(uint64_t a1)
{
  v2 = sub_2561D4764(&qword_27F830328, type metadata accessor for Dataclass);
  v3 = sub_2561D4764(&qword_27F830330, type metadata accessor for Dataclass);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2561D5188()
{
  v1 = *v0;
  v2 = sub_2561EE2B0();
  v3 = MEMORY[0x259C5E500](v2);

  return v3;
}

uint64_t sub_2561D51C4()
{
  v1 = *v0;
  sub_2561EE2B0();
  sub_2561EE2D0();
}

uint64_t sub_2561D5218()
{
  v1 = *v0;
  sub_2561EE2B0();
  sub_2561EE510();
  sub_2561EE2D0();
  v2 = sub_2561EE530();

  return v2;
}

uint64_t sub_2561D528C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_2561EE2B0();
  v6 = v5;
  if (v4 == sub_2561EE2B0() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2561EE4C0();
  }

  return v9 & 1;
}

unint64_t sub_2561D5360()
{
  result = qword_27F830308;
  if (!qword_27F830308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F830308);
  }

  return result;
}

unint64_t sub_2561D53B8()
{
  result = qword_27F830310;
  if (!qword_27F830310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F830310);
  }

  return result;
}

unint64_t sub_2561D5410()
{
  result = qword_27F830318;
  if (!qword_27F830318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F830318);
  }

  return result;
}

unint64_t sub_2561D5468()
{
  result = qword_27F830320;
  if (!qword_27F830320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F830320);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2561D54DC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2561D54FC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

void sub_2561D5564(uint64_t a1, unint64_t *a2)
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

uint64_t OBKView.init(title:detailText:image:contentView:contentLayout:caption:primaryButton:secondaryButton:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v40 = a8;
  v41 = a7;
  v18 = sub_2561EDA90();
  v42 = *(v18 - 8);
  v43 = v18;
  v19 = *(v42 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  v22 = v40;
  v23 = a5;
  v24 = a6;
  sub_2561D7E98(a5, (a9 + 4), &qword_27F830358, &qword_2561EF240);
  a9[10] = v41;
  sub_2561D7E98(a6, (a9 + 11), &qword_27F830360, &qword_2561EF248);
  v25 = type metadata accessor for OBKView(0);
  sub_2561D7E98(v22, a9 + v25[9], &qword_27F830368, &qword_2561EFCE0);
  v26 = a9 + v25[10];
  v27 = *(a10 + 48);
  *(v26 + 2) = *(a10 + 32);
  *(v26 + 3) = v27;
  *(v26 + 4) = *(a10 + 64);
  *(v26 + 10) = *(a10 + 80);
  v28 = *(a10 + 16);
  *v26 = *a10;
  *(v26 + 1) = v28;
  v29 = a9 + v25[11];
  v30 = *(a11 + 48);
  *(v29 + 2) = *(a11 + 32);
  *(v29 + 3) = v30;
  *(v29 + 4) = *(a11 + 64);
  *(v29 + 10) = *(a11 + 80);
  v31 = *(a11 + 16);
  *v29 = *a11;
  *(v29 + 1) = v31;
  if (qword_27F830270 != -1)
  {
    swift_once();
  }

  v32 = v43;
  v33 = __swift_project_value_buffer(v43, qword_27F832038);
  v34 = v42;
  (*(v42 + 16))(v21, v33, v32);
  v35 = sub_2561EDA70();
  v36 = sub_2561EE360();
  v37 = v34;
  if (os_log_type_enabled(v35, v36))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_2561D1000, v35, v36, "init OBKView", v38, 2u);
    MEMORY[0x259C5EC30](v38, -1, -1);
  }

  sub_2561D8584(v22, &qword_27F830368, &qword_2561EFCE0);
  sub_2561D8584(v24, &qword_27F830360, &qword_2561EF248);
  sub_2561D8584(v23, &qword_27F830358, &qword_2561EF240);
  return (*(v37 + 8))(v21, v32);
}

uint64_t OBKView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v61 = a1;
  v2 = sub_2561EDA90();
  v56 = *(v2 - 8);
  v57 = v2;
  v3 = *(v56 + 64);
  MEMORY[0x28223BE20](v2);
  v55 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830368, &qword_2561EFCE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v53 - v7;
  v9 = type metadata accessor for InternalOBKView(0);
  v10 = (v9 - 8);
  v11 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = (&v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v60 = &v53 - v15;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830370, &qword_2561EF250);
  v16 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v58 = &v53 - v17;
  v18 = *v1;
  v19 = v1[1];
  v20 = v1[3];
  v53 = v1[2];
  v54 = v18;
  sub_2561D7E98((v1 + 4), v64, &qword_27F830358, &qword_2561EF240);
  sub_2561D7E98((v1 + 11), v63, &qword_27F830360, &qword_2561EF248);
  v21 = v1[10];
  v22 = type metadata accessor for OBKView(0);
  sub_2561D7E98(v1 + v22[9], v8, &qword_27F830368, &qword_2561EFCE0);
  v23 = v1 + v22[10];
  v24 = *(v23 + 3);
  v67 = *(v23 + 2);
  v68 = v24;
  v69 = *(v23 + 4);
  v70 = *(v23 + 10);
  v25 = *(v23 + 1);
  v65 = *v23;
  v66 = v25;
  v26 = v1 + v22[11];
  v27 = *(v26 + 3);
  v73 = *(v26 + 2);
  v74 = v27;
  v75 = *(v26 + 4);
  v76 = *(v26 + 10);
  v28 = *(v26 + 1);
  v71 = *v26;
  v72 = v28;
  v29 = v53;
  *v14 = v54;
  v14[1] = v19;
  v14[2] = v29;
  v14[3] = v20;
  sub_2561D7E98(v64, (v14 + 4), &qword_27F830358, &qword_2561EF240);
  v14[10] = v21;
  sub_2561D7E98(v63, (v14 + 11), &qword_27F830360, &qword_2561EF248);
  sub_2561D7E98(v8, v14 + v10[11], &qword_27F830368, &qword_2561EFCE0);
  v30 = v14 + v10[12];
  v31 = v68;
  *(v30 + 2) = v67;
  *(v30 + 3) = v31;
  *(v30 + 4) = v69;
  *(v30 + 10) = v70;
  v32 = v66;
  *v30 = v65;
  *(v30 + 1) = v32;
  v33 = v14 + v10[13];
  v34 = v74;
  *(v33 + 2) = v73;
  *(v33 + 3) = v34;
  *(v33 + 4) = v75;
  *(v33 + 10) = v76;
  v35 = v72;
  *v33 = v71;
  *(v33 + 1) = v35;

  sub_2561D7E98(&v65, v62, &qword_27F830378, &qword_2561EFF60);
  sub_2561D7E98(&v71, v62, &qword_27F830378, &qword_2561EFF60);
  if (qword_27F830270 != -1)
  {
    swift_once();
  }

  v36 = v57;
  v37 = __swift_project_value_buffer(v57, qword_27F832038);
  v39 = v55;
  v38 = v56;
  (*(v56 + 16))(v55, v37, v36);
  v40 = sub_2561EDA70();
  v41 = sub_2561EE360();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_2561D1000, v40, v41, "init OBKView", v42, 2u);
    MEMORY[0x259C5EC30](v42, -1, -1);
  }

  (*(v38 + 8))(v39, v36);
  sub_2561D8584(v8, &qword_27F830368, &qword_2561EFCE0);
  sub_2561D8584(v63, &qword_27F830360, &qword_2561EF248);
  sub_2561D8584(v64, &qword_27F830358, &qword_2561EF240);
  v43 = v60;
  sub_2561D86BC(v14, v60, type metadata accessor for InternalOBKView);
  v44 = sub_2561EDE60();
  v45 = v43;
  v46 = v58;
  sub_2561D86BC(v45, v58, type metadata accessor for InternalOBKView);
  *(v46 + *(v59 + 36)) = v44;
  v47 = sub_2561EDB70();
  v48 = sub_2561EDE80();
  v49 = v46;
  v50 = v61;
  sub_2561D7F00(v49, v61);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830380, &qword_2561EF258);
  v52 = v50 + *(result + 36);
  *v52 = v47;
  *(v52 + 8) = v48;
  return result;
}

void *sub_2561D5E3C()
{
  v1 = v0;
  sub_2561D62F0();
  v3 = v2;
  sub_2561D6A34(v2);
  v4 = type metadata accessor for InternalOBKView(0);
  v5 = (v0 + *(v4 + 40));
  v6 = v5[3];
  v65 = v5[2];
  v66 = v6;
  v67 = v5[4];
  v68 = *(v5 + 10);
  v7 = v5[1];
  v63 = *v5;
  v64 = v7;
  v8 = *(&v63 + 1);
  if (*(&v63 + 1))
  {
    v9 = v63;
    v10 = v5[4];
    v60 = v5[3];
    v61 = v10;
    v62 = *(v5 + 10);
    v11 = v5[2];
    v58 = v5[1];
    v59 = v11;
    v12 = objc_opt_self();
    v49 = v65;
    v50 = v66;
    v51 = v67;
    v52 = v68;
    v47 = v63;
    v48 = v64;
    sub_2561D85E4(&v47, v45);
    v13 = [v12 boldButton];
    v14 = sub_2561EE280();
    [v13 setTitle:v14 forState:0];

    sub_2561D8858(0, &qword_27F830408, 0x277D750C8);
    v15 = swift_allocObject();
    *(v15 + 16) = v9;
    *(v15 + 24) = v8;
    v16 = v61;
    *(v15 + 64) = v60;
    *(v15 + 80) = v16;
    v17 = v62;
    v18 = v59;
    *(v15 + 32) = v58;
    *(v15 + 48) = v18;
    *(v15 + 96) = v17;
    *(v15 + 104) = v13;
    *(v15 + 112) = v3;
    sub_2561D7E98(&v63, v45, &qword_27F830378, &qword_2561EFF60);
    v19 = v13;
    v20 = v1;
    v21 = v3;
    v22 = sub_2561EE3C0();
    [v19 addAction:v22 forControlEvents:{0x2000, 0, 0, 0, sub_2561D89F8, v15}];

    v23 = v21;
    v1 = v20;
    v24 = [v23 0x1FBCBCFD0];
    [v24 addButton_];

    sub_2561D8584(&v63, &qword_27F830378, &qword_2561EFF60);
  }

  v25 = (v1 + *(v4 + 44));
  v26 = v25[3];
  v49 = v25[2];
  v50 = v26;
  v51 = v25[4];
  v52 = *(v25 + 10);
  v27 = v25[1];
  v47 = *v25;
  v48 = v27;
  v28 = *(&v47 + 1);
  if (*(&v47 + 1))
  {
    v29 = v47;
    v30 = v25[4];
    v55 = v25[3];
    v56 = v30;
    v57 = *(v25 + 10);
    v31 = v25[2];
    v53 = v25[1];
    v54 = v31;
    v32 = objc_opt_self();
    v45[3] = v50;
    v45[4] = v51;
    v46 = v52;
    v45[0] = v47;
    v45[1] = v48;
    v45[2] = v49;
    sub_2561D85E4(v45, v44);
    v33 = [v32 linkButton];
    v34 = sub_2561EE280();
    [v33 setTitle:v34 forState:0];

    sub_2561D8858(0, &qword_27F830408, 0x277D750C8);
    v35 = swift_allocObject();
    *(v35 + 16) = v29;
    *(v35 + 24) = v28;
    v36 = v56;
    *(v35 + 64) = v55;
    *(v35 + 80) = v36;
    v37 = v57;
    v38 = v54;
    *(v35 + 32) = v53;
    *(v35 + 48) = v38;
    *(v35 + 96) = v37;
    *(v35 + 104) = v33;
    *(v35 + 112) = v3;
    v39 = v3;
    sub_2561D7E98(&v47, v44, &qword_27F830378, &qword_2561EFF60);
    v40 = v33;
    v41 = sub_2561EE3C0();
    [v40 addAction:v41 forControlEvents:{0x2000, 0, 0, 0, sub_2561D8640, v35}];

    v42 = [v39 0x1FBCBCFD0];
    [v42 addButton_];

    sub_2561D8584(&v47, &qword_27F830378, &qword_2561EFF60);
  }

  sub_2561D71F4(v3);
  return v3;
}

void sub_2561D62F0()
{
  sub_2561D7E98((v0 + 4), &v76, &qword_27F830358, &qword_2561EF240);
  if (v77[25] == 255)
  {
    sub_2561D8584(&v76, &qword_27F830358, &qword_2561EF240);
    v1 = *v0;
    v2 = v0[1];
    v3 = v0[2];
    v4 = v0[3];
    v5 = v0[10];
    v6 = sub_2561EE280();
    if (v4)
    {
      v7 = sub_2561EE280();
    }

    else
    {
      v7 = 0;
    }

    [objc_allocWithZone(MEMORY[0x277D37698]) initWithTitle:v6 detailText:v7 icon:0 contentLayout:v5];

    return;
  }

  v78 = v76;
  v79[0] = *v77;
  *(v79 + 10) = *&v77[10];
  sub_2561D8944(&v78, &v76);
  if (!v77[25])
  {
    v16 = *v0;
    v17 = v0[1];
    v18 = v0[2];
    v19 = v0[3];
    v20 = v0[10];
    v21 = sub_2561EE280();
    if (v19)
    {
      v22 = sub_2561EE280();
    }

    else
    {
      v22 = 0;
    }

    v31 = objc_allocWithZone(MEMORY[0x277D37698]);
    v32 = sub_2561EE280();

    [v31 initWithTitle:v21 detailText:v22 symbolName:v32 contentLayout:v20];

    goto LABEL_18;
  }

  if (v77[25] == 1)
  {
    v8 = v76;
    v9 = *v0;
    v10 = v0[1];
    v11 = v0[2];
    v12 = v0[3];
    v13 = v0[10];
    v14 = sub_2561EE280();
    if (v12)
    {
      v15 = sub_2561EE280();
    }

    else
    {
      v15 = 0;
    }

    [objc_allocWithZone(MEMORY[0x277D37698]) initWithTitle:v14 detailText:v15 icon:v8 contentLayout:v13];

LABEL_18:
    sub_2561D89A0(&v78);
    return;
  }

  v23 = v77[24];
  sub_2561D8840(&v76, v74);
  v24 = *v0;
  v25 = v0[1];
  v26 = v0[2];
  v27 = v0[3];
  v28 = v0[10];
  v29 = sub_2561EE280();
  if (v27)
  {
    v30 = sub_2561EE280();
  }

  else
  {
    v30 = 0;
  }

  v33 = [objc_allocWithZone(MEMORY[0x277D37698]) initWithTitle:v29 detailText:v30 icon:0 contentLayout:v28];

  v34 = [v33 headerView];
  v35 = [v34 customIconContainerView];

  if (v35)
  {
    v36 = v75;
    v37 = __swift_project_boxed_opaque_existential_1(v74, v75);
    v38 = *(*(v36 - 8) + 64);
    MEMORY[0x28223BE20](v37);
    (*(v40 + 16))(&v71 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
    v73 = sub_2561EE1C0();
    v41 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830420, &qword_2561EF3C0));
    v42 = sub_2561EDCD0();
    v43 = [v42 view];
    if (v43)
    {
      v44 = v43;
      [v35 addSubview_];

      [v33 addChildViewController_];
      v45 = [v42 view];
      if (v45)
      {
        v46 = v45;
        [v45 setTranslatesAutoresizingMaskIntoConstraints_];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830428, &unk_2561EF3C8);
        v47 = swift_allocObject();
        *(v47 + 16) = xmmword_2561EF220;
        v48 = [v42 view];
        if (v48)
        {
          v49 = v48;
          v50 = [v48 leadingAnchor];

          v51 = [v35 leadingAnchor];
          v52 = [v50 constraintEqualToAnchor_];

          *(v47 + 32) = v52;
          v53 = [v42 view];
          if (v53)
          {
            v54 = v53;
            v55 = [v53 topAnchor];

            v56 = [v35 topAnchor];
            v57 = [v55 constraintEqualToAnchor_];

            *(v47 + 40) = v57;
            v58 = [v42 view];
            if (v58)
            {
              v59 = v58;
              v72 = v23;
              v60 = [v58 trailingAnchor];

              v61 = [v35 trailingAnchor];
              v62 = [v60 constraintEqualToAnchor_];

              *(v47 + 48) = v62;
              v63 = [v42 view];

              if (v63)
              {
                v64 = objc_opt_self();
                v65 = [v63 bottomAnchor];

                v66 = [v35 bottomAnchor];
                v67 = [v65 constraintEqualToAnchor_];

                *(v47 + 56) = v67;
                sub_2561D8858(0, &qword_27F830430, 0x277CCAAD0);
                v68 = sub_2561EE310();

                [v64 activateConstraints_];

                [v42 didMoveToParentViewController_];
                v23 = v72;
                goto LABEL_28;
              }

LABEL_36:
              __break(1u);
              return;
            }

LABEL_35:
            __break(1u);
            goto LABEL_36;
          }

LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

LABEL_33:
        __break(1u);
        goto LABEL_34;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_33;
  }

LABEL_28:
  if (v23 != 2)
  {
    v69 = [v33 headerView];
    v70 = [v69 customIconContainerView];

    [v70 setClipsToBounds_];
  }

  sub_2561D89A0(&v78);
  __swift_destroy_boxed_opaque_existential_1(v74);
}

void sub_2561D6A34(void *a1)
{
  sub_2561D7E98(v1 + 88, &v62, &qword_27F830360, &qword_2561EF248);
  if (v63[24] == 255)
  {
    sub_2561D8584(&v62, &qword_27F830360, &qword_2561EF248);
    return;
  }

  v64 = v62;
  v65[0] = *v63;
  *(v65 + 9) = *&v63[9];
  sub_2561D87E4(&v64, &v62);
  if (v63[24])
  {
    sub_2561D8840(&v62, v60);
    v3 = v61;
    v4 = __swift_project_boxed_opaque_existential_1(v60, v61);
    v5 = *(*(v3 - 8) + 64);
    MEMORY[0x28223BE20](v4);
    (*(v7 + 16))(&v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v59 = sub_2561EE1C0();
    v8 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830420, &qword_2561EF3C0));
    v9 = sub_2561EDCD0();
    [a1 addChildViewController_];
    v10 = [a1 contentView];
    v11 = [v9 view];
    if (v11)
    {
      v12 = v11;
      [v10 addSubview_];

      v13 = [v9 view];
      if (v13)
      {
        [v13 setTranslatesAutoresizingMaskIntoConstraints_];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830428, &unk_2561EF3C8);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_2561EF220;
        v15 = [v9 view];

        if (v15)
        {
          v16 = [v15 leadingAnchor];

          v17 = [a1 contentView];
          v18 = [v17 leadingAnchor];

          v19 = [v16 constraintEqualToAnchor_];
          *(v14 + 32) = v19;
          v20 = [v9 view];

          if (v20)
          {
            v21 = [v20 topAnchor];

            v22 = [a1 contentView];
            v23 = [v22 topAnchor];

            v24 = [v21 constraintEqualToAnchor_];
            *(v14 + 40) = v24;
            v25 = [v9 view];

            if (v25)
            {
              v26 = [v25 trailingAnchor];

              v27 = [a1 contentView];
              v28 = [v27 trailingAnchor];

              v29 = [v26 constraintEqualToAnchor_];
              *(v14 + 48) = v29;
              v30 = [v9 view];

              if (v30)
              {
                v31 = objc_opt_self();
                v32 = [v30 bottomAnchor];

                v33 = [a1 contentView];
                v34 = [v33 bottomAnchor];

                v35 = [v32 constraintEqualToAnchor_];
                *(v14 + 56) = v35;
                sub_2561D8858(0, &qword_27F830430, 0x277CCAAD0);
                v36 = sub_2561EE310();

                [v31 activateConstraints_];

                [v9 didMoveToParentViewController_];
                sub_2561D88A0(&v64);
                __swift_destroy_boxed_opaque_existential_1(v60);
                return;
              }

              goto LABEL_26;
            }

LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
            return;
          }

LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

LABEL_23:
        __break(1u);
        goto LABEL_24;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_23;
  }

  v58 = a1;
  v56 = v62;
  v37 = *(v62 + 16);
  if (v37)
  {
    v38 = (v56 + 48);
    do
    {
      v44 = *(v38 - 2);
      v43 = *(v38 - 1);
      v46 = *v38;
      v45 = v38[1];
      v48 = v38[2];
      v47 = v38[3];
      v49 = *(v38 + 32);
      v50 = v38[5];
      if (v49 == 255)
      {

        sub_2561D88F4(v48, v47, 255);
        v39 = v50;
        v40 = sub_2561EE280();
        v41 = sub_2561EE280();
        v42 = sub_2561EE280();
        [v58 addBulletedListItemWithTitle:v40 description:v41 symbolName:v42 tintColor:v39];

        sub_2561D891C(v48, v47, 255);
      }

      else
      {

        sub_2561D88F4(v48, v47, v49);
        v51 = v50;
        sub_2561D88F4(v48, v47, v49);
        v52 = sub_2561EE280();
        v53 = sub_2561EE280();
        if (v49)
        {
          [v58 addBulletedListItemWithTitle:v52 description:v53 image:v48 tintColor:v51];

          sub_2561D891C(v48, v47, v49);

          sub_2561D891C(v48, v47, v49);
        }

        else
        {
          v57 = v37;
          v54 = sub_2561EE280();
          sub_2561D891C(v48, v47, v49);
          [v58 addBulletedListItemWithTitle:v52 description:v53 symbolName:v54 tintColor:v51];

          sub_2561D891C(v48, v47, v49);

          v37 = v57;
        }
      }

      v38 += 8;
      --v37;
    }

    while (v37);
  }

  sub_2561D88A0(&v64);
}

uint64_t sub_2561D71F4(void *a1)
{
  v36 = a1;
  v2 = sub_2561ED970();
  v35 = *(v2 - 8);
  v3 = *(v35 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830368, &qword_2561EFCE0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v35 - v8;
  v10 = type metadata accessor for OBKCaption();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  v18 = type metadata accessor for InternalOBKView(0);
  sub_2561D7E98(v1 + *(v18 + 36), v9, &qword_27F830368, &qword_2561EFCE0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_2561D8584(v9, &qword_27F830368, &qword_2561EFCE0);
  }

  sub_2561D86BC(v9, v17, type metadata accessor for OBKCaption);
  sub_2561D8724(v17, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v22 = *v15;
  v21 = *(v15 + 1);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v23 = *(v15 + 2);
      v24 = v15[24];
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830418, &qword_2561EF3B8);
      (*(v35 + 32))(v5, &v15[*(v25 + 64)], v2);
      v26 = [v36 buttonTray];
      v27 = sub_2561EE280();

      v28 = sub_2561ED940();
      if (v24)
      {
        [v26 setCaptionText:v27 learnMoreURL:v28];
      }

      else
      {
        [v26 setCaptionText:v27 style:v23 learnMoreURL:v28];
      }

      (*(v35 + 8))(v5, v2);
    }

    else
    {
      v31 = [v36 buttonTray];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830410, &qword_2561EF3B0);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_2561EF230;
      *(v32 + 32) = v22;
      *(v32 + 40) = v21;
      v33 = sub_2561EE310();

      [v31 setPrivacyLinkForBundles_];
    }
  }

  else
  {
    if (v15[24])
    {
      v29 = [v36 buttonTray];
      v30 = sub_2561EE280();

      [v29 setCaptionText_];
    }

    else
    {
      v34 = *(v15 + 2);
      v29 = [v36 buttonTray];
      v30 = sub_2561EE280();

      [v29 setCaptionText:v30 style:v34];
    }
  }

  return sub_2561D8788(v17);
}

void sub_2561D766C(void *a1)
{
  v2 = [a1 buttonTray];
  v3 = [v2 allButtons];

  sub_2561D8858(0, &qword_27F830400, 0x277D37690);
  v4 = sub_2561EE320();

  v5 = type metadata accessor for InternalOBKView(0);
  v6 = v1 + *(v5 + 40);
  v7 = *(v6 + 16);
  v39 = *v6;
  v40 = v7;
  v8 = *(v6 + 48);
  v41 = *(v6 + 32);
  v42 = v8;
  v43 = *(v6 + 64);
  v44 = *(v6 + 80);
  v9 = v4 >> 62;
  if (!*(&v39 + 1))
  {
    goto LABEL_19;
  }

  v31 = v5;
  v32 = v4 >> 62;
  v29 = v40;
  v30 = BYTE1(v40);
  if (v9)
  {
    goto LABEL_42;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2561EE460())
  {
    v11 = *(&v41 + 1);
    v12 = v42;
    v13 = v43;

    sub_2561D8534(v11, v12, *(&v12 + 1), v13);
    if (i)
    {
      v14 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x259C5E640](v14, v4);
        }

        else
        {
          if (v14 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_39;
          }

          v15 = *(v4 + 8 * v14 + 32);
        }

        v16 = v15;
        v17 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          break;
        }

        ++v14;
        if (v17 == i)
        {
          goto LABEL_14;
        }
      }

      v18 = &selRef_showsBusyIndicator;
      if ((v29 & 1) == 0)
      {
        v18 = &selRef_hidesBusyIndicator;
      }

      [v16 *v18];
      v19 = v16;
      [v19 setEnabled_];
      sub_2561D8584(&v39, &qword_27F830378, &qword_2561EFF60);
    }

    else
    {
LABEL_14:
      sub_2561D8584(&v39, &qword_27F830378, &qword_2561EFF60);
    }

    v5 = v31;
    v9 = v32;
LABEL_19:
    v20 = v1 + *(v5 + 44);
    v21 = *(v20 + 16);
    v33 = *v20;
    v34 = v21;
    v22 = *(v20 + 48);
    v35 = *(v20 + 32);
    v36 = v22;
    v37 = *(v20 + 64);
    v38 = *(v20 + 80);
    if (!*(&v33 + 1))
    {
      break;
    }

    LODWORD(v31) = BYTE1(v34);
    if (v9)
    {
      v1 = sub_2561EE460();
    }

    else
    {
      v1 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    sub_2561D8534(*(&v35 + 1), v36, *(&v36 + 1), v37);
    if (!v1)
    {
LABEL_32:

      sub_2561D8584(&v33, &qword_27F830378, &qword_2561EFF60);
      return;
    }

    v23 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x259C5E640](v23, v4);
      }

      else
      {
        if (v23 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_41;
        }

        v24 = *(v4 + 8 * v23 + 32);
      }

      v25 = v24;
      v26 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {

        v27 = &selRef_showsBusyIndicator;
        if ((v34 & 1) == 0)
        {
          v27 = &selRef_hidesBusyIndicator;
        }

        [v25 *v27];
        v28 = v25;
        [v28 setEnabled_];
        sub_2561D8584(&v33, &qword_27F830378, &qword_2561EFF60);

        return;
      }

      ++v23;
      if (v26 == v1)
      {
        goto LABEL_32;
      }
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    ;
  }
}

void sub_2561D7A88(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (*(a2 + 64))
  {
    v6 = *(a2 + 56);
    v7 = *(a2 + 72);
    v8 = *(a2 + 80);
    if (*(a2 + 48))
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = sub_2561EE280();
    }

    else
    {
      v11 = 0;
    }

    v13 = sub_2561EE280();
    v14 = [objc_opt_self() alertControllerWithTitle:v11 message:v13 preferredStyle:0];

    v15 = sub_2561EE280();
    v18 = [objc_opt_self() actionWithTitle:v15 style:0 handler:0];

    [v14 addAction_];
    v16 = [v14 sheetPresentationController];
    if (v16)
    {
      v17 = v16;
      [v16 setSourceView_];
    }

    [a4 presentViewController:v14 animated:1 completion:0];
  }

  else
  {
    v12 = *(a2 + 32);
    (*(a2 + 24))();
  }
}

uint64_t sub_2561D7C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2561D84F0(&qword_27F8303F8);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_2561D7CF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2561D84F0(&qword_27F8303F8);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_2561D7D78()
{
  sub_2561D84F0(&qword_27F8303F8);
  sub_2561EDDF0();
  __break(1u);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2561D7DF4(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_2561D7E60(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2561D7E98(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2561D7F00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830370, &qword_2561EF250);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2561D7FB4()
{
  if (!qword_27F8303B0)
  {
    type metadata accessor for OBKCaption();
    v0 = sub_2561EE3D0();
    if (!v1)
    {
      atomic_store(v0, &qword_27F8303B0);
    }
  }
}

void sub_2561D800C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_2561EE3D0();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_2561D8058()
{
  result = qword_27F8303C0;
  if (!qword_27F8303C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830380, &qword_2561EF258);
    sub_2561D80E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8303C0);
  }

  return result;
}

unint64_t sub_2561D80E4()
{
  result = qword_27F8303C8;
  if (!qword_27F8303C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830370, &qword_2561EF250);
    sub_2561D84F0(&qword_27F8303D0);
    sub_2561D818C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8303C8);
  }

  return result;
}

unint64_t sub_2561D818C()
{
  result = qword_27F8303D8;
  if (!qword_27F8303D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8303E0, &qword_2561EF2D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8303D8);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830368, &qword_2561EFCE0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830368, &qword_2561EFCE0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_2561D8384()
{
  sub_2561D800C(319, &qword_27F830398);
  if (v0 <= 0x3F)
  {
    sub_2561D800C(319, &qword_27F8303A0);
    if (v1 <= 0x3F)
    {
      type metadata accessor for OBWelcomeContentViewLayout(319);
      if (v2 <= 0x3F)
      {
        sub_2561D800C(319, &qword_27F8303A8);
        if (v3 <= 0x3F)
        {
          sub_2561D7FB4();
          if (v4 <= 0x3F)
          {
            sub_2561D800C(319, &qword_27F8303B8);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_2561D84F0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for InternalOBKView(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2561D8534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t sub_2561D8584(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  if (*(v0 + 80))
  {
    v3 = *(v0 + 64);

    v4 = *(v0 + 80);

    v5 = *(v0 + 96);
  }

  return swift_deallocObject();
}

uint64_t sub_2561D86BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2561D8724(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OBKCaption();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2561D8788(uint64_t a1)
{
  v2 = type metadata accessor for OBKCaption();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2561D8840(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2561D8858(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

id sub_2561D88F4(id result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_2561D890C(result, a2, a3 & 1);
  }

  return result;
}

id sub_2561D890C(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
  }
}

void sub_2561D891C(void *a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_2561D8934(a1, a2, a3 & 1);
  }
}

void sub_2561D8934(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

__n128 OBKContentItem.init(title:description:image:tintColor:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, __n128 *a5@<X4>, unint64_t a6@<X5>, __n128 *a7@<X8>)
{
  v7 = a5[1].n128_u8[0];
  a7->n128_u64[0] = a1;
  a7->n128_u64[1] = a2;
  a7[1].n128_u64[0] = a3;
  a7[1].n128_u64[1] = a4;
  result = *a5;
  a7[2] = *a5;
  a7[3].n128_u8[0] = v7;
  a7[3].n128_u64[1] = a6;
  return result;
}

__n128 OBKButton.init(title:isLoading:isDisabled:confirmation:action:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v8 = *(a5 + 16);
  *(a8 + 40) = *a5;
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3 & 1;
  *(a8 + 17) = a4 & 1;
  *(a8 + 24) = a6;
  *(a8 + 32) = a7;
  *(a8 + 56) = v8;
  result = *(a5 + 32);
  *(a8 + 72) = result;
  return result;
}

void __swiftcall OBKListButtonConfirmationDialog.init(title:message:buttonTitle:)(MCCFoundation::OBKListButtonConfirmationDialog *__return_ptr retstr, Swift::String_optional title, Swift::String message, Swift::String buttonTitle)
{
  retstr->title = title;
  retstr->message = message;
  retstr->buttonTitle = buttonTitle;
}

uint64_t type metadata accessor for OBKCaption()
{
  result = qword_27F830438;
  if (!qword_27F830438)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2561D8AAC()
{
  sub_2561D8B34();
  if (v0 <= 0x3F)
  {
    sub_2561D8BAC();
    if (v1 <= 0x3F)
    {
      sub_2561D8C34();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_2561D8B34()
{
  if (!qword_27F830448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830450, &qword_2561EF3F0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F830448);
    }
  }
}

void sub_2561D8BAC()
{
  if (!qword_27F830458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830450, &qword_2561EF3F0);
    sub_2561ED970();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F830458);
    }
  }
}

uint64_t sub_2561D8C34()
{
  result = qword_27F830460;
  if (!qword_27F830460)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27F830460);
  }

  return result;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2561D8C84(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 42))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 41);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2561D8CC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 26) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = -a2;
    }
  }

  return result;
}

uint64_t sub_2561D8D0C(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 41) = a2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_13MCCFoundation31OBKListButtonConfirmationDialogVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_2561D8D80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_2561D8DC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13MCCFoundation14OBKContentItemV0bC9ImageTypeOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2561D8E60(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_2561D8EA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2561D8F1C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2561D8F64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2561D8FE4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2561D9020(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_2561D906C(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2561D90B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2561D9100(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

const char *Solarium.domain.getter()
{
  if (*v0)
  {
    return "OnBoardingKit";
  }

  else
  {
    return "SwiftUI";
  }
}

const char *Solarium.feature.getter()
{
  if (*v0)
  {
    return "NaturalUI";
  }

  else
  {
    return "Solarium";
  }
}

uint64_t Solarium.isEnabled.getter()
{
  v1 = *v0;
  v4[3] = &type metadata for Solarium;
  v4[4] = sub_2561D9210();
  LOBYTE(v4[0]) = v1;
  v2 = sub_2561EDA60();
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2 & 1;
}

unint64_t sub_2561D9210()
{
  result = qword_27F830468;
  if (!qword_27F830468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F830468);
  }

  return result;
}

uint64_t Solarium.hashValue.getter()
{
  v1 = *v0;
  sub_2561EE510();
  MEMORY[0x259C5E720](v1);
  return sub_2561EE530();
}

uint64_t sub_2561D9308()
{
  v1 = *v0;
  sub_2561EE510();
  MEMORY[0x259C5E720](v1);
  return sub_2561EE530();
}

uint64_t sub_2561D937C()
{
  v1 = *v0;
  sub_2561EE510();
  MEMORY[0x259C5E720](v1);
  return sub_2561EE530();
}

unint64_t sub_2561D93C4()
{
  result = qword_27F830470;
  if (!qword_27F830470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F830470);
  }

  return result;
}

const char *sub_2561D9418()
{
  if (*v0)
  {
    return "OnBoardingKit";
  }

  else
  {
    return "SwiftUI";
  }
}

const char *sub_2561D9448()
{
  if (*v0)
  {
    return "NaturalUI";
  }

  else
  {
    return "Solarium";
  }
}

uint64_t getEnumTagSinglePayload for Solarium(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Solarium(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2561D95E4()
{
  v2[3] = &type metadata for Solarium;
  v2[4] = sub_2561D9210();
  LOBYTE(v2[0]) = 0;
  v0 = sub_2561EDA60();
  result = __swift_destroy_boxed_opaque_existential_1(v2);
  byte_27F830478 = v0 & 1;
  return result;
}

uint64_t CloseButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830480, &qword_2561EF818);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v29 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830488, &qword_2561EF820);
  v30 = *(v33 - 8);
  v6 = *(v30 + 64);
  MEMORY[0x28223BE20](v33);
  v8 = &v29 - v7;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830490, &qword_2561EF828);
  v9 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v11 = &v29 - v10;
  v12 = sub_2561EDAF0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830498, &qword_2561EF830);
  v17 = *(v32 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v32);
  v20 = &v29 - v19;
  v22 = *v1;
  v21 = v1[1];
  if (qword_27F830260 != -1)
  {
    swift_once();
  }

  if (byte_27F830478 == 1)
  {
    sub_2561EDAD0();
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    *(v23 + 24) = v21;

    MEMORY[0x259C5E390](v16, sub_2561DA36C, v23);
    v24 = v32;
    (*(v17 + 16))(v11, v20, v32);
    swift_storeEnumTagMultiPayload();
    sub_2561D9B88(&qword_27F8304A0, &qword_27F830498, &qword_2561EF830);
    sub_2561D9B88(&qword_27F8304A8, &qword_27F830488, &qword_2561EF820);
    sub_2561EDCF0();
    return (*(v17 + 8))(v20, v24);
  }

  else
  {
    sub_2561EDAD0();
    (*(v13 + 56))(v5, 0, 1, v12);
    v26 = swift_allocObject();
    *(v26 + 16) = v22;
    *(v26 + 24) = v21;

    sub_2561EE170();
    v27 = v30;
    v28 = v33;
    (*(v30 + 16))(v11, v8, v33);
    swift_storeEnumTagMultiPayload();
    sub_2561D9B88(&qword_27F8304A0, &qword_27F830498, &qword_2561EF830);
    sub_2561D9B88(&qword_27F8304A8, &qword_27F830488, &qword_2561EF820);
    sub_2561EDCF0();
    return (*(v27 + 8))(v8, v28);
  }
}

uint64_t sub_2561D9B18@<X0>(uint64_t a1@<X8>)
{
  sub_2561EDC70();
  result = sub_2561EDF40();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_2561D9B88(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t DoneButton.init(onTap:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t DoneButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830480, &qword_2561EF818);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v29 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830488, &qword_2561EF820);
  v30 = *(v33 - 8);
  v6 = *(v30 + 64);
  MEMORY[0x28223BE20](v33);
  v8 = &v29 - v7;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830490, &qword_2561EF828);
  v9 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v11 = &v29 - v10;
  v12 = sub_2561EDAF0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830498, &qword_2561EF830);
  v17 = *(v32 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v32);
  v20 = &v29 - v19;
  v22 = *v1;
  v21 = v1[1];
  if (qword_27F830260 != -1)
  {
    swift_once();
  }

  if (byte_27F830478 == 1)
  {
    sub_2561EDAE0();
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    *(v23 + 24) = v21;

    MEMORY[0x259C5E390](v16, sub_2561DA36C, v23);
    v24 = v32;
    (*(v17 + 16))(v11, v20, v32);
    swift_storeEnumTagMultiPayload();
    sub_2561D9B88(&qword_27F8304A0, &qword_27F830498, &qword_2561EF830);
    sub_2561D9B88(&qword_27F8304A8, &qword_27F830488, &qword_2561EF820);
    sub_2561EDCF0();
    return (*(v17 + 8))(v20, v24);
  }

  else
  {
    sub_2561EDAE0();
    (*(v13 + 56))(v5, 0, 1, v12);
    v26 = swift_allocObject();
    *(v26 + 16) = v22;
    *(v26 + 24) = v21;

    sub_2561EE170();
    v27 = v30;
    v28 = v33;
    (*(v30 + 16))(v11, v8, v33);
    swift_storeEnumTagMultiPayload();
    sub_2561D9B88(&qword_27F8304A0, &qword_27F830498, &qword_2561EF830);
    sub_2561D9B88(&qword_27F8304A8, &qword_27F830488, &qword_2561EF820);
    sub_2561EDCF0();
    return (*(v27 + 8))(v8, v28);
  }
}

uint64_t sub_2561DA0C0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_2561DA0E8@<X0>(uint64_t a1@<X8>)
{
  sub_2561EDC70();
  v2 = sub_2561EDF40();
  v4 = v3;
  v6 = v5;
  v7 = sub_2561EDF20();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_2561DA350(v2, v4, v6 & 1);

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_2561DA200(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2561DA248(uint64_t result, int a2, int a3)
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

unint64_t sub_2561DA294()
{
  result = qword_27F8304B0;
  if (!qword_27F8304B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8304B8, &qword_2561EF928);
    sub_2561D9B88(&qword_27F8304A0, &qword_27F830498, &qword_2561EF830);
    sub_2561D9B88(&qword_27F8304A8, &qword_27F830488, &qword_2561EF820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8304B0);
  }

  return result;
}

uint64_t sub_2561DA350(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_2561DA378(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 5522759;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x4554454C4544;
    }

    else
    {
      v4 = 5526864;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 1414745936;
    }

    else
    {
      v4 = 5522759;
    }

    if (v3)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x4554454C4544;
  if (a2 != 2)
  {
    v8 = 5526864;
    v7 = 0xE300000000000000;
  }

  if (a2)
  {
    v2 = 1414745936;
    v6 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2561EE4C0();
  }

  return v11 & 1;
}

uint64_t AuthMethod.hashValue.getter()
{
  v1 = *v0;
  sub_2561EE510();
  MEMORY[0x259C5E720](v1);
  return sub_2561EE530();
}

MCCFoundation::HTTPMethod_optional __swiftcall HTTPMethod.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2561EE490();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t HTTPMethod.rawValue.getter()
{
  v1 = 5522759;
  v2 = 0x4554454C4544;
  if (*v0 != 2)
  {
    v2 = 5526864;
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

uint64_t sub_2561DA5E0()
{
  v1 = *v0;
  sub_2561EE510();
  sub_2561EE2D0();

  return sub_2561EE530();
}

uint64_t sub_2561DA688()
{
  *v0;
  *v0;
  *v0;
  sub_2561EE2D0();
}

uint64_t sub_2561DA71C()
{
  v1 = *v0;
  sub_2561EE510();
  sub_2561EE2D0();

  return sub_2561EE530();
}

void sub_2561DA7CC(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 5522759;
  v4 = 0xE600000000000000;
  v5 = 0x4554454C4544;
  if (*v1 != 2)
  {
    v5 = 5526864;
    v4 = 0xE300000000000000;
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

id sub_2561DA830()
{
  v1 = *(v0 + 24);
  v2 = v1;
  if (v1 == 1)
  {
    v2 = sub_2561DA884(v0);
    *(v0 + 24) = v2;
    v3 = v2;
  }

  sub_2561E11D4(v1);
  return v2;
}

id sub_2561DA884(os_unfair_lock_s **a1)
{
  v2 = objc_opt_self();
  v3 = [v2 defaultStore];
  result = [v2 defaultStore];
  if (result)
  {
    v5 = result;
    v6 = *a1;
    os_unfair_lock_lock(*a1 + 6);
    v7 = *&v6[4]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v6 + 6);
    v8 = [v5 aida:v7 accountForiCloudAccount:?];

    v9 = objc_allocWithZone(MEMORY[0x277CEC808]);
    v10 = sub_2561EE280();
    v11 = [v9 initWithAccountStore:v3 grandSlamAccount:v8 appTokenID:v10];

    if (v11)
    {
      [v11 setUseAltDSID_];
    }

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MCCNetworkController.init(account:session:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v15 = a1;
  v16 = a2;
  v14 = sub_2561EE380();
  v4 = *(v14 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v14);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2561EE370();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = sub_2561EE250();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  sub_2561DAC24();
  sub_2561EE240();
  v17 = MEMORY[0x277D84F90];
  sub_2561E05B4(&qword_280E1BD18, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8304C0, &qword_2561EF960);
  sub_2561DAC70();
  sub_2561EE3E0();
  (*(v4 + 104))(v7, *MEMORY[0x277D85260], v14);
  a3[2] = sub_2561EE390();
  a3[3] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8304C8, &qword_2561EF968);
  result = swift_allocObject();
  *(result + 24) = 0;
  v13 = v16;
  *(result + 16) = v15;
  *a3 = result;
  a3[1] = v13;
  return result;
}

unint64_t sub_2561DAC24()
{
  result = qword_280E1BD10;
  if (!qword_280E1BD10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E1BD10);
  }

  return result;
}

unint64_t sub_2561DAC70()
{
  result = qword_280E1BD38;
  if (!qword_280E1BD38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8304C0, &qword_2561EF960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E1BD38);
  }

  return result;
}

uint64_t MCCNetworkController.performDecodable<A>(with:httpMethod:authMethod:body:additionalHeaders:addGSToken:includeAnisette:)(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v9 + 64) = v13;
  *(v9 + 72) = v8;
  *(v9 + 130) = v11;
  *(v9 + 129) = a8;
  *(v9 + 48) = a7;
  *(v9 + 56) = v12;
  *(v9 + 32) = a5;
  *(v9 + 40) = a6;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 131) = *a3;
  *(v9 + 132) = *a4;
  return MEMORY[0x2822009F8](sub_2561DAD24, 0, 0);
}

uint64_t sub_2561DAD24()
{
  v1 = *(v0 + 131);
  v2 = *(v0 + 24);
  v3 = objc_allocWithZone(MEMORY[0x277CCAB70]);
  v4 = sub_2561ED940();
  v5 = [v3 initWithURL_];
  *(v0 + 80) = v5;

  v6 = *(v0 + 40);
  v7 = sub_2561EE280();

  [v5 setHTTPMethod_];

  if (v6 >> 60 != 15)
  {
    v9 = *(v0 + 32);
    v8 = *(v0 + 40);
    sub_2561D3BA8(v9, v8);
    v10 = sub_2561ED980();
    [v5 setHTTPBody_];

    sub_2561D3B40(v9, v8);
  }

  *(v0 + 128) = *(v0 + 132);
  v11 = swift_task_alloc();
  *(v0 + 88) = v11;
  *v11 = v0;
  v11[1] = sub_2561DAF00;
  v12 = *(v0 + 72);
  v13 = *(v0 + 130);
  v14 = *(v0 + 129);
  v15 = *(v0 + 48);

  return MCCNetworkController.perform(_:authMethod:additionalHeaders:addGSToken:includeAnisette:retry:)(v5, (v0 + 128), v15, v14, v13, 1);
}

uint64_t sub_2561DAF00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 88);
  v9 = *v4;
  v5[12] = a1;
  v5[13] = a2;
  v5[14] = a3;
  v5[15] = v3;

  if (v3)
  {
    v7 = sub_2561DB160;
  }

  else
  {
    v7 = sub_2561DB018;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2561DB018()
{
  v1 = *(v0 + 120);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 16);

  v7 = sub_2561ED890();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_2561ED880();
  sub_2561ED870();
  if (v1)
  {
    v10 = *(v0 + 104);
    v11 = *(v0 + 112);
    v12 = *(v0 + 96);

    sub_2561D3B54(v12, v10);
    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    v16 = *(v0 + 96);
    v15 = *(v0 + 104);

    sub_2561D3B54(v16, v15);
    v17 = *(v0 + 8);
    v18 = *(v0 + 112);

    return v17(v18);
  }
}

uint64_t sub_2561DB160()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t MCCNetworkController.perform(with:httpMethod:authMethod:body:additionalHeaders:addGSToken:includeAnisette:)(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  *(v9 + 40) = a6;
  *(v9 + 48) = v8;
  *(v9 + 106) = a8;
  *(v9 + 105) = a7;
  *(v9 + 24) = a4;
  *(v9 + 32) = a5;
  *(v9 + 16) = a1;
  *(v9 + 107) = *a2;
  *(v9 + 108) = *a3;
  return MEMORY[0x2822009F8](sub_2561DB204, 0, 0);
}

uint64_t sub_2561DB204()
{
  v1 = *(v0 + 107);
  v2 = *(v0 + 16);
  v3 = objc_allocWithZone(MEMORY[0x277CCAB70]);
  v4 = sub_2561ED940();
  v5 = [v3 initWithURL_];
  *(v0 + 56) = v5;

  v6 = *(v0 + 32);
  v7 = sub_2561EE280();

  [v5 setHTTPMethod_];

  if (v6 >> 60 != 15)
  {
    v9 = *(v0 + 24);
    v8 = *(v0 + 32);
    sub_2561D3BA8(v9, v8);
    v10 = sub_2561ED980();
    [v5 setHTTPBody_];

    sub_2561D3B40(v9, v8);
  }

  *(v0 + 104) = *(v0 + 108);
  v11 = swift_task_alloc();
  *(v0 + 64) = v11;
  *v11 = v0;
  v11[1] = sub_2561DB3DC;
  v12 = *(v0 + 106);
  v13 = *(v0 + 105);
  v14 = *(v0 + 40);
  v15 = *(v0 + 48);

  return MCCNetworkController.perform(_:authMethod:additionalHeaders:addGSToken:includeAnisette:retry:)(v5, (v0 + 104), v14, v13, v12, 1);
}

uint64_t sub_2561DB3DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *(*v4 + 64);
  v10 = *v4;
  *(*v4 + 72) = v3;

  if (v3)
  {
    v11 = sub_2561DB584;
  }

  else
  {
    v8[10] = a3;
    v8[11] = a2;
    v8[12] = a1;
    v11 = sub_2561DB518;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_2561DB518()
{
  v1 = *(v0 + 8);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 80);

  return v1(v2, v3, v4);
}

uint64_t sub_2561DB584()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 72);

  return v1();
}

uint64_t MCCNetworkController.perform(_:authMethod:additionalHeaders:addGSToken:includeAnisette:retry:)(uint64_t a1, _BYTE *a2, uint64_t a3, char a4, char a5, char a6)
{
  *(v7 + 24) = a3;
  *(v7 + 32) = v6;
  *(v7 + 299) = a6;
  *(v7 + 298) = a5;
  *(v7 + 297) = a4;
  *(v7 + 16) = a1;
  v9 = sub_2561ED860();
  *(v7 + 40) = v9;
  v10 = *(v9 - 8);
  *(v7 + 48) = v10;
  v11 = *(v10 + 64) + 15;
  *(v7 + 56) = swift_task_alloc();
  *(v7 + 64) = swift_task_alloc();
  v12 = sub_2561EDA90();
  *(v7 + 72) = v12;
  v13 = *(v12 - 8);
  *(v7 + 80) = v13;
  v14 = *(v13 + 64) + 15;
  *(v7 + 88) = swift_task_alloc();
  *(v7 + 96) = swift_task_alloc();
  *(v7 + 104) = swift_task_alloc();
  *(v7 + 112) = swift_task_alloc();
  *(v7 + 120) = swift_task_alloc();
  *(v7 + 128) = swift_task_alloc();
  *(v7 + 136) = swift_task_alloc();
  *(v7 + 144) = swift_task_alloc();
  *(v7 + 300) = *a2;

  return MEMORY[0x2822009F8](sub_2561DB780, 0, 0);
}

uint64_t sub_2561DB780()
{
  if (qword_27F830268 != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v1 = *(v0 + 144);
    v2 = *(v0 + 72);
    v3 = *(v0 + 80);
    v4 = *(v0 + 16);
    v5 = __swift_project_value_buffer(v2, qword_27F832020);
    *(v0 + 152) = v5;
    v6 = *(v3 + 16);
    *(v0 + 160) = v6;
    *(v0 + 168) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v79 = v6;
    v6(v1, v5, v2);
    v7 = v4;
    v8 = sub_2561EDA70();
    v9 = sub_2561EE360();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 16);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      *(v11 + 4) = v10;
      *v12 = v10;
      v13 = v10;
      _os_log_impl(&dword_2561D1000, v8, v9, "Adding necessary headers %@", v11, 0xCu);
      sub_2561D8584(v12, &qword_27F8304D0, &qword_2561EF988);
      MEMORY[0x259C5EC30](v12, -1, -1);
      MEMORY[0x259C5EC30](v11, -1, -1);
    }

    v14 = *(v0 + 144);
    v15 = *(v0 + 72);
    v16 = *(v0 + 80);
    v17 = *(v0 + 24);

    v18 = *(v16 + 8);
    *(v0 + 176) = v18;
    *(v0 + 184) = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v78 = v18;
    v18(v14, v15);
    if (!v17)
    {
      break;
    }

    v77 = v5;
    v80 = v0;
    v0 = *(v0 + 24);
    v19 = -1;
    v20 = -1 << *(v0 + 32);
    if (-v20 < 64)
    {
      v19 = ~(-1 << -v20);
    }

    v21 = v19 & *(v0 + 64);
    v22 = (63 - v20) >> 6;

    v23 = 0;
    while (v21)
    {
      v24 = v23;
LABEL_13:
      v25 = *(v80 + 16);
      v26 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v27 = (v24 << 10) | (16 * v26);
      v28 = (*(v0 + 48) + v27);
      v29 = *v28;
      v30 = v28[1];
      v31 = (*(v0 + 56) + v27);
      v32 = *v31;
      v33 = v31[1];

      v34 = sub_2561EE280();
      v35 = sub_2561EE280();
      [v25 setValue:v34 forHTTPHeaderField:v35];
    }

    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v24 >= v22)
      {

        v0 = v80;
        v5 = v77;
        goto LABEL_16;
      }

      v21 = *(v0 + 64 + 8 * v24);
      ++v23;
      if (v21)
      {
        v23 = v24;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_37:
    swift_once();
  }

LABEL_16:
  v36 = *(v0 + 300);
  v37 = *(v0 + 16);
  v38 = **(v0 + 32);
  os_unfair_lock_lock((v38 + 24));
  v39 = *(v38 + 16);
  os_unfair_lock_unlock((v38 + 24));
  v40 = [v39 aa_personID];
  v41 = sub_2561EE280();
  [v37 setValue:v40 forHTTPHeaderField:v41];

  v42 = *(v0 + 16);
  if (v36)
  {
    [v42 aa:v39 addBasicAuthorizationHeaderWithAccount:0 preferUsingPassword:?];
  }

  else
  {
    [v42 aa:v39 addAuthTokenOrBasicAuthHeaderWithAccount:0 preferUsingPassword:?];
  }

  v43 = *(v0 + 297);

  if (v43 == 1)
  {
    v44 = *(v0 + 32);
    v45 = sub_2561DA830();
    if (v45)
    {
      v46 = v45;
      v47 = [v45 signURLRequest:*(v0 + 16) isUserInitiated:1];
      v48 = *(v0 + 72);
      if (v47)
      {
        v49 = (v0 + 128);
        v79(*(v0 + 128), v5, v48);
        v50 = sub_2561EDA70();
        v51 = sub_2561EE360();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          *v52 = 0;
          v53 = "Sucessfully signed using GS Token";
LABEL_26:
          _os_log_impl(&dword_2561D1000, v50, v51, v53, v52, 2u);
          v54 = *v49;
          MEMORY[0x259C5EC30](v52, -1, -1);
LABEL_28:
          v55 = *(v0 + 72);

          v78(v54, v55);
          goto LABEL_29;
        }
      }

      else
      {
        v49 = (v0 + 136);
        v79(*(v0 + 136), v5, v48);
        v50 = sub_2561EDA70();
        v51 = sub_2561EE350();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          *v52 = 0;
          v53 = "Unable to sign grandslam request";
          goto LABEL_26;
        }
      }

      v54 = *v49;
      goto LABEL_28;
    }
  }

LABEL_29:
  v56 = *(v0 + 298);
  v57 = *(v0 + 16);
  sub_2561E1C68();
  if (v56 == 1)
  {
    v58 = *(v0 + 16);
    sub_2561E226C();
  }

  v59 = *(v0 + 120);
  v60 = *(v0 + 72);
  v61 = *(v0 + 16);
  sub_2561E25E8();
  v79(v59, v5, v60);
  v62 = v61;
  v63 = sub_2561EDA70();
  v64 = sub_2561EE360();

  v65 = os_log_type_enabled(v63, v64);
  v66 = *(v0 + 16);
  if (v65)
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    *v67 = 138412290;
    *(v67 + 4) = v66;
    *v68 = v66;
    v69 = v66;
    _os_log_impl(&dword_2561D1000, v63, v64, "Making request to %@", v67, 0xCu);
    sub_2561D8584(v68, &qword_27F8304D0, &qword_2561EF988);
    MEMORY[0x259C5EC30](v68, -1, -1);
    MEMORY[0x259C5EC30](v67, -1, -1);
  }

  *(v0 + 192) = v66;
  v70 = *(v0 + 64);
  v71 = *(v0 + 32);
  v78(*(v0 + 120), *(v0 + 72));
  v72 = *(v71 + 8);
  sub_2561ED850();
  v73 = *(MEMORY[0x277CC9D18] + 4);
  v74 = swift_task_alloc();
  *(v0 + 200) = v74;
  *v74 = v0;
  v74[1] = sub_2561DBE48;
  v75 = *(v0 + 64);

  return MEMORY[0x28211ECF8](v75, 0);
}

uint64_t sub_2561DBE48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v7 = *(*v4 + 200);
  v8 = *v4;
  v6[26] = a1;
  v6[27] = a2;
  v6[28] = a3;
  v6[29] = v3;

  (*(v5[6] + 8))(v5[8], v5[5]);
  if (v3)
  {
    v9 = sub_2561DCB80;
  }

  else
  {
    v9 = sub_2561DBFBC;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2561DBFBC()
{
  v1 = *(v0 + 224);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    v17 = *(v0 + 168);
    v18 = *(v0 + 16);
    (*(v0 + 160))(*(v0 + 88), *(v0 + 152), *(v0 + 72));
    v19 = v18;
    v20 = sub_2561EDA70();
    v21 = sub_2561EE350();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = *(v0 + 192);
      v23 = *(v0 + 16);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      *(v24 + 4) = v23;
      *v25 = v22;
      v26 = v23;
      _os_log_impl(&dword_2561D1000, v20, v21, "Failed to fetch response for request: %@", v24, 0xCu);
      sub_2561D8584(v25, &qword_27F8304D0, &qword_2561EF988);
      MEMORY[0x259C5EC30](v25, -1, -1);
      MEMORY[0x259C5EC30](v24, -1, -1);
    }

    v88 = *(v0 + 216);
    v85 = *(v0 + 224);
    v86 = *(v0 + 208);
    v28 = *(v0 + 184);
    v27 = *(v0 + 192);
    v29 = *(v0 + 176);
    v30 = *(v0 + 88);
    v31 = *(v0 + 72);
    v32 = *(v0 + 48);
    v33 = *(v0 + 56);
    v34 = *(v0 + 40);

    v29(v30, v31);
    type metadata accessor for MCCError();
    sub_2561E05B4(&qword_27F8302C0, type metadata accessor for MCCError);
    swift_allocError();
    v36 = v35;
    sub_2561ED850();
    (*(v32 + 32))(v36, v33, v34);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v37 = v86;
    v38 = v88;
    goto LABEL_13;
  }

  v3 = v2;
  v4 = *(v0 + 224);
  v5 = [v3 statusCode];
  if ((v5 - 300) < 0xFFFFFFFFFFFFFF9CLL)
  {
    if (v5 != 401)
    {
      v68 = *(v0 + 216);
      v67 = *(v0 + 224);
      v69 = *(v0 + 208);
      type metadata accessor for MCCError();
      sub_2561E05B4(&qword_27F8302C0, type metadata accessor for MCCError);
      swift_allocError();
      *v70 = v3;
      v70[1] = v69;
      v70[2] = v68;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      goto LABEL_20;
    }

    if (*(v0 + 299) == 1)
    {
      v6 = *(v0 + 168);
      (*(v0 + 160))(*(v0 + 104), *(v0 + 152), *(v0 + 72));
      v7 = sub_2561EDA70();
      v8 = sub_2561EE360();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_2561D1000, v7, v8, "401 Unauthorized, renewing credentials...", v9, 2u);
        MEMORY[0x259C5EC30](v9, -1, -1);
      }

      v11 = *(v0 + 176);
      v10 = *(v0 + 184);
      v12 = *(v0 + 104);
      v13 = *(v0 + 72);

      v11(v12, v13);
      v14 = swift_task_alloc();
      *(v0 + 240) = v14;
      *v14 = v0;
      v14[1] = sub_2561DC6BC;
      v15 = *(v0 + 32);

      return sub_2561DD1A0();
    }

    v82 = *(v0 + 216);
    v83 = *(v0 + 224);
    v84 = *(v0 + 208);
    type metadata accessor for MCCError();
    sub_2561E05B4(&qword_27F8302C0, type metadata accessor for MCCError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v37 = v84;
    v38 = v82;
LABEL_13:
    sub_2561D3B54(v37, v38);
LABEL_20:
    v72 = *(v0 + 136);
    v71 = *(v0 + 144);
    v74 = *(v0 + 120);
    v73 = *(v0 + 128);
    v76 = *(v0 + 104);
    v75 = *(v0 + 112);
    v78 = *(v0 + 88);
    v77 = *(v0 + 96);
    v79 = *(v0 + 56);
    v80 = *(v0 + 64);

    v81 = *(v0 + 8);

    return v81();
  }

  v40 = *(v0 + 160);
  v39 = *(v0 + 168);
  v41 = *(v0 + 152);
  v42 = *(v0 + 112);
  v43 = *(v0 + 72);
  v44 = *(v0 + 16);

  v40(v42, v41, v43);
  v45 = v44;
  v46 = sub_2561EDA70();
  v47 = sub_2561EE340();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = *(v0 + 192);
    v49 = *(v0 + 16);
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v50 = 138412290;
    *(v50 + 4) = v49;
    *v51 = v48;
    v52 = v49;
    _os_log_impl(&dword_2561D1000, v46, v47, "Successfully fetched response for request: %@", v50, 0xCu);
    sub_2561D8584(v51, &qword_27F8304D0, &qword_2561EF988);
    MEMORY[0x259C5EC30](v51, -1, -1);
    MEMORY[0x259C5EC30](v50, -1, -1);
  }

  v54 = *(v0 + 176);
  v53 = *(v0 + 184);
  v55 = *(v0 + 112);
  v56 = *(v0 + 72);

  v54(v55, v56);
  v89 = *(v0 + 208);
  v90 = *(v0 + 216);
  v58 = *(v0 + 136);
  v57 = *(v0 + 144);
  v60 = *(v0 + 120);
  v59 = *(v0 + 128);
  v62 = *(v0 + 104);
  v61 = *(v0 + 112);
  v63 = *(v0 + 88);
  v64 = *(v0 + 96);
  v65 = *(v0 + 64);
  v87 = *(v0 + 56);

  v66 = *(v0 + 8);

  return v66(v89, v90, v3);
}

uint64_t sub_2561DC6BC()
{
  v2 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_2561DCC64;
  }

  else
  {
    v3 = sub_2561DC7D0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2561DC7D0()
{
  v1 = *(v0 + 168);
  (*(v0 + 160))(*(v0 + 96), *(v0 + 152), *(v0 + 72));
  v2 = sub_2561EDA70();
  v3 = sub_2561EE360();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2561D1000, v2, v3, "Retrying last failed request", v4, 2u);
    MEMORY[0x259C5EC30](v4, -1, -1);
  }

  v6 = *(v0 + 176);
  v5 = *(v0 + 184);
  v7 = *(v0 + 300);
  v8 = *(v0 + 96);
  v9 = *(v0 + 72);

  v6(v8, v9);
  *(v0 + 296) = v7;
  v10 = swift_task_alloc();
  *(v0 + 256) = v10;
  *v10 = v0;
  v10[1] = sub_2561DC92C;
  v11 = *(v0 + 24);
  v12 = *(v0 + 32);
  v13 = *(v0 + 298);
  v14 = *(v0 + 297);
  v15 = *(v0 + 16);

  return MCCNetworkController.perform(_:authMethod:additionalHeaders:addGSToken:includeAnisette:retry:)(v15, v0 + 296, v11, v14, v13, 0);
}

uint64_t sub_2561DC92C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *(*v4 + 256);
  v10 = *v4;
  *(*v4 + 264) = v3;

  if (v3)
  {

    v11 = sub_2561DCD64;
  }

  else
  {
    *(v8 + 272) = a3;
    *(v8 + 280) = a2;
    *(v8 + 288) = a1;
    v11 = sub_2561DCA70;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_2561DCA70()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[26];

  sub_2561D3B54(v3, v1);
  v17 = v0[35];
  v18 = v0[36];
  v16 = v0[34];
  v5 = v0[17];
  v4 = v0[18];
  v7 = v0[15];
  v6 = v0[16];
  v9 = v0[13];
  v8 = v0[14];
  v10 = v0[11];
  v11 = v0[12];
  v13 = v0[7];
  v12 = v0[8];

  v14 = v0[1];

  return v14(v18, v17, v16);
}

uint64_t sub_2561DCB80()
{
  v13 = v0[29];
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v8 = v0[11];
  v7 = v0[12];
  v9 = v0[7];
  v10 = v0[8];

  v11 = v0[1];

  return v11();
}

uint64_t sub_2561DCC64()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[26];

  sub_2561D3B54(v3, v1);
  v16 = v0[31];
  v5 = v0[17];
  v4 = v0[18];
  v7 = v0[15];
  v6 = v0[16];
  v9 = v0[13];
  v8 = v0[14];
  v11 = v0[11];
  v10 = v0[12];
  v12 = v0[7];
  v13 = v0[8];

  v14 = v0[1];

  return v14();
}

uint64_t sub_2561DCD64()
{
  v1 = v0[28];
  sub_2561D3B54(v0[26], v0[27]);

  v14 = v0[33];
  v3 = v0[17];
  v2 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
  v7 = v0[13];
  v6 = v0[14];
  v9 = v0[11];
  v8 = v0[12];
  v10 = v0[7];
  v11 = v0[8];

  v12 = v0[1];

  return v12();
}

uint64_t MCCNetworkController.performDecodable<A>(_:authMethod:additionalHeaders:addGSToken:includeAnisette:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, char a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  *(v8 + 16) = a1;
  *(v8 + 80) = *a3;
  v13 = swift_task_alloc();
  *(v8 + 40) = v13;
  *v13 = v8;
  v13[1] = sub_2561DCF30;

  return MCCNetworkController.perform(_:authMethod:additionalHeaders:addGSToken:includeAnisette:retry:)(a2, (v8 + 80), a4, a5, a6, 1);
}

uint64_t sub_2561DCF30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 40);
  v9 = *v4;
  v5[6] = a1;
  v5[7] = a2;
  v5[8] = a3;
  v5[9] = v3;

  if (v3)
  {
    v7 = sub_2561DD188;
  }

  else
  {
    v7 = sub_2561DD048;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2561DD048()
{
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];
  v7 = sub_2561ED890();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_2561ED880();
  sub_2561ED870();
  if (v1)
  {
    v10 = v0[7];
    v11 = v0[8];
    v12 = v0[6];

    sub_2561D3B54(v12, v10);
    v13 = v0[1];

    return v13();
  }

  else
  {
    v16 = v0[6];
    v15 = v0[7];

    sub_2561D3B54(v16, v15);
    v17 = v0[1];
    v18 = v0[8];

    return v17(v18);
  }
}

uint64_t sub_2561DD1A0()
{
  v1[29] = v0;
  v2 = sub_2561EDA90();
  v1[30] = v2;
  v3 = *(v2 - 8);
  v1[31] = v3;
  v4 = *(v3 + 64) + 15;
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2561DD29C, 0, 0);
}

uint64_t sub_2561DD29C()
{
  v1 = v0[29];
  v2 = *v1;
  v0[38] = *v1;
  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);
  os_unfair_lock_unlock((v2 + 24));
  v4 = [v3 aa_altDSID];
  v0[39] = v4;

  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830508, &qword_2561EFBA8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2561EF950;
    v6 = *MEMORY[0x277CB9098];
    *(inited + 32) = sub_2561EE2B0();
    *(inited + 40) = v7;
    *(inited + 48) = 1;
    v8 = *MEMORY[0x277CB90A0];
    *(inited + 56) = sub_2561EE2B0();
    *(inited + 64) = v9;
    *(inited + 72) = 1;
    v10 = sub_2561E11E4(inited);
    v0[40] = v10;
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830510, &qword_2561EFBB0);
    swift_arrayDestroy();
    v11 = objc_opt_self();
    v0[41] = v11;
    v12 = [v11 defaultStore];
    v0[42] = v12;
    if (v12)
    {
      v13 = v12;
      os_unfair_lock_lock((v2 + 24));
      v14 = *(v2 + 16);
      v0[43] = v14;
      v15 = v14;
      os_unfair_lock_unlock((v2 + 24));
      sub_2561E0230(v10);
      v16 = sub_2561EE260();
      v0[44] = v16;

      v0[2] = v0;
      v0[7] = v0 + 28;
      v0[3] = sub_2561DD6B8;
      v17 = swift_continuation_init();
      v0[27] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830518, &qword_2561EFBB8);
      v0[20] = MEMORY[0x277D85DD0];
      v0[21] = 1107296256;
      v0[22] = sub_2561E04E8;
      v0[23] = &block_descriptor;
      v0[24] = v17;
      [v13 renewCredentialsForAccount:v15 options:v16 completion:v0 + 20];
      v18 = v0 + 2;
    }

    else
    {

      __break(1u);
    }

    return MEMORY[0x282200938](v18);
  }

  else
  {
    if (qword_27F830268 != -1)
    {
      swift_once();
    }

    v20 = v0[31];
    v19 = v0[32];
    v21 = v0[30];
    v22 = __swift_project_value_buffer(v21, qword_27F832020);
    (*(v20 + 16))(v19, v22, v21);
    v23 = sub_2561EDA70();
    v24 = sub_2561EE350();
    v25 = os_log_type_enabled(v23, v24);
    v27 = v0[31];
    v26 = v0[32];
    v28 = v0[30];
    if (v25)
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_2561D1000, v23, v24, "Renew credentials failed, missing id", v29, 2u);
      MEMORY[0x259C5EC30](v29, -1, -1);
    }

    (*(v27 + 8))(v26, v28);
    v31 = v0[36];
    v30 = v0[37];
    v33 = v0[34];
    v32 = v0[35];
    v35 = v0[32];
    v34 = v0[33];

    v36 = v0[1];

    return v36();
  }
}

uint64_t sub_2561DD6B8()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 360) = v3;
  if (v3)
  {
    v4 = *(v1 + 320);

    v5 = sub_2561DDD9C;
  }

  else
  {
    v5 = sub_2561DD7D8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_2561DD7D8()
{
  v2 = *(v0 + 344);
  v1 = *(v0 + 352);
  v3 = *(v0 + 224);

  if (v3 == 2)
  {
    v38 = *(v0 + 312);
    v37 = *(v0 + 320);

    if (qword_27F830268 != -1)
    {
      swift_once();
    }

    v39 = *(v0 + 272);
    v40 = *(v0 + 240);
    v41 = *(v0 + 248);
    v42 = __swift_project_value_buffer(v40, qword_27F832020);
    (*(v41 + 16))(v39, v42, v40);
    v29 = sub_2561EDA70();
    v30 = sub_2561EE350();
    v43 = os_log_type_enabled(v29, v30);
    v32 = *(v0 + 272);
    v33 = *(v0 + 240);
    v34 = *(v0 + 248);
    if (!v43)
    {
      goto LABEL_24;
    }

    v35 = swift_slowAlloc();
    *v35 = 0;
    v36 = "Renew credentials failed.";
    goto LABEL_23;
  }

  if (v3 == 1)
  {
    v24 = *(v0 + 312);
    v23 = *(v0 + 320);

    if (qword_27F830268 != -1)
    {
      swift_once();
    }

    v25 = *(v0 + 280);
    v26 = *(v0 + 240);
    v27 = *(v0 + 248);
    v28 = __swift_project_value_buffer(v26, qword_27F832020);
    (*(v27 + 16))(v25, v28, v26);
    v29 = sub_2561EDA70();
    v30 = sub_2561EE350();
    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v0 + 280);
    v33 = *(v0 + 240);
    v34 = *(v0 + 248);
    if (!v31)
    {
      goto LABEL_24;
    }

    v35 = swift_slowAlloc();
    *v35 = 0;
    v36 = "Renew credentials rejected.";
    goto LABEL_23;
  }

  if (v3)
  {
    v45 = *(v0 + 312);
    v44 = *(v0 + 320);

    if (qword_27F830268 != -1)
    {
      swift_once();
    }

    v46 = *(v0 + 264);
    v47 = *(v0 + 240);
    v48 = *(v0 + 248);
    v49 = __swift_project_value_buffer(v47, qword_27F832020);
    (*(v48 + 16))(v46, v49, v47);
    v29 = sub_2561EDA70();
    v30 = sub_2561EE350();
    v50 = os_log_type_enabled(v29, v30);
    v32 = *(v0 + 264);
    v33 = *(v0 + 240);
    v34 = *(v0 + 248);
    if (!v50)
    {
      goto LABEL_24;
    }

    v35 = swift_slowAlloc();
    *v35 = 0;
    v36 = "Renew credentials failed with unknown reason.";
LABEL_23:
    _os_log_impl(&dword_2561D1000, v29, v30, v36, v35, 2u);
    MEMORY[0x259C5EC30](v35, -1, -1);
LABEL_24:

    (*(v34 + 8))(v32, v33);
    goto LABEL_25;
  }

  if (qword_27F830268 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 296);
  v5 = *(v0 + 240);
  v6 = *(v0 + 248);
  v7 = __swift_project_value_buffer(v5, qword_27F832020);
  v8 = *(v6 + 16);
  v8(v4, v7, v5);
  v9 = sub_2561EDA70();
  v10 = sub_2561EE360();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_2561D1000, v9, v10, "Successfully renewed credentials.", v11, 2u);
    MEMORY[0x259C5EC30](v11, -1, -1);
  }

  v12 = *(v0 + 328);
  v13 = *(v0 + 296);
  v14 = *(v0 + 240);
  v15 = *(v0 + 248);

  v16 = *(v15 + 8);
  v16(v13, v14);
  v17 = [v12 defaultStore];
  if (!v17)
  {

    __break(1u);
    return;
  }

  v18 = v17;
  v20 = *(v0 + 312);
  v19 = *(v0 + 320);

  v21 = [v18 aa:v20 appleAccountWithAltDSID:?];

  if (v21)
  {
    v22 = *(v0 + 304);
    *(swift_task_alloc() + 16) = v21;
    os_unfair_lock_lock((v22 + 24));
    sub_2561E12F8((v22 + 16));
    os_unfair_lock_unlock((v22 + 24));
  }

  else
  {
    v8(*(v0 + 288), v7, *(v0 + 240));
    v58 = sub_2561EDA70();
    v59 = sub_2561EE350();
    v60 = os_log_type_enabled(v58, v59);
    v61 = *(v0 + 288);
    v62 = *(v0 + 240);
    v63 = *(v0 + 248);
    if (v60)
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_2561D1000, v58, v59, "Renew credentials failed, missing account", v64, 2u);
      MEMORY[0x259C5EC30](v64, -1, -1);
    }

    v16(v61, v62);
  }

LABEL_25:
  v52 = *(v0 + 288);
  v51 = *(v0 + 296);
  v54 = *(v0 + 272);
  v53 = *(v0 + 280);
  v56 = *(v0 + 256);
  v55 = *(v0 + 264);

  v57 = *(v0 + 8);

  v57();
}

uint64_t sub_2561DDD9C()
{
  v2 = v0[44];
  v1 = v0[45];
  v3 = v0[42];
  v4 = v0[43];
  v5 = v0[36];
  v6 = v0[37];
  v8 = v0[34];
  v7 = v0[35];
  v9 = v0[33];
  v13 = v0[32];
  swift_willThrow();

  v10 = v0[1];
  v11 = v0[45];

  return v10();
}

uint64_t MCCNetworkController.url(for:dataClass:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830280, &qword_2561EEAF0) - 8) + 64) + 15;
  v5[13] = swift_task_alloc();
  v7 = sub_2561EDA90();
  v5[14] = v7;
  v8 = *(v7 - 8);
  v5[15] = v8;
  v9 = *(v8 + 64) + 15;
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2561DDF94, 0, 0);
}

uint64_t sub_2561DDF94()
{
  v106 = v0;
  v2 = v0[11];
  v1 = v0[12];
  v3 = *v1;
  v0[20] = *v1;
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  os_unfair_lock_unlock((v3 + 24));
  v5 = [v4 propertiesForDataclass_];

  if (v5)
  {
    v6 = sub_2561EE270();

    v7 = sub_2561DF34C(v6);

    if (v7)
    {

      v8 = v0[20];
      v9 = v0[11];
      os_unfair_lock_lock((v8 + 24));
      v10 = *(v8 + 16);
      os_unfair_lock_unlock((v8 + 24));
      v11 = [v10 propertiesForDataclass_];

      if (!v11 || (v12 = sub_2561EE270(), v11, v13 = sub_2561DF34C(v12), , !v13))
      {
        if (qword_27F830268 != -1)
        {
          swift_once();
        }

        v55 = v0[15];
        v54 = v0[16];
        v56 = v0[14];
        v57 = v0[11];
        v58 = __swift_project_value_buffer(v56, qword_27F832020);
        (*(v55 + 16))(v54, v58, v56);
        v59 = v57;
        v60 = sub_2561EDA70();
        v61 = sub_2561EE350();

        v62 = os_log_type_enabled(v60, v61);
        v64 = v0[15];
        v63 = v0[16];
        v65 = v0[14];
        if (v62)
        {
          v66 = v0[11];
          v67 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          v105[0] = v68;
          *v67 = 136315138;
          v69 = sub_2561EE2B0();
          v71 = sub_2561E05FC(v69, v70, v105);

          *(v67 + 4) = v71;
          _os_log_impl(&dword_2561D1000, v60, v61, "Still not able to fetch properties for dataclass: %s. Failing.", v67, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v68);
          MEMORY[0x259C5EC30](v68, -1, -1);
          MEMORY[0x259C5EC30](v67, -1, -1);
        }

        (*(v64 + 8))(v63, v65);
        v72 = v0[11];
        type metadata accessor for MCCError();
        sub_2561E05B4(&qword_27F8302C0, type metadata accessor for MCCError);
        swift_allocError();
        *v73 = v72;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        v74 = v72;
        goto LABEL_32;
      }

      if (*(v13 + 16) && (v14 = sub_2561E0BE8(v0[9], v0[10]), (v15 & 1) != 0))
      {
        sub_2561E0C60(*(v13 + 56) + 32 * v14, (v0 + 2));

        if (swift_dynamicCast())
        {
          v16 = v0[13];
          v18 = v0[6];
          v17 = v0[7];
          sub_2561ED960();
          v19 = sub_2561ED970();
          v20 = *(v19 - 8);
          if ((*(v20 + 48))(v16, 1, v19) != 1)
          {
            v100 = v0[18];
            v99 = v0[19];
            v102 = v0[16];
            v101 = v0[17];
            v103 = v0[13];
            v104 = v0[8];

            (*(v20 + 32))(v104, v103, v19);

            v98 = v0[1];
            goto LABEL_33;
          }

          sub_2561D8584(v0[13], &qword_27F830280, &qword_2561EEAF0);
          if (qword_27F830268 != -1)
          {
            swift_once();
          }

          v21 = v0[18];
          v22 = v0[14];
          v23 = v0[15];
          v24 = __swift_project_value_buffer(v22, qword_27F832020);
          (*(v23 + 16))(v21, v24, v22);

          v25 = sub_2561EDA70();
          v26 = sub_2561EE350();

          v27 = os_log_type_enabled(v25, v26);
          v28 = v0[18];
          v29 = v0[14];
          v30 = v0[15];
          if (v27)
          {
            v31 = swift_slowAlloc();
            v32 = swift_slowAlloc();
            v105[0] = v32;
            *v31 = 136315138;
            *(v31 + 4) = sub_2561E05FC(v18, v17, v105);
            _os_log_impl(&dword_2561D1000, v25, v26, "Failed to create URL from string: %s", v31, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v32);
            MEMORY[0x259C5EC30](v32, -1, -1);
            MEMORY[0x259C5EC30](v31, -1, -1);
          }

          (*(v30 + 8))(v28, v29);
          type metadata accessor for MCCError();
          sub_2561E05B4(&qword_27F8302C0, type metadata accessor for MCCError);
          swift_allocError();
          *v33 = v18;
          v33[1] = v17;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
LABEL_32:
          v94 = v0[18];
          v93 = v0[19];
          v96 = v0[16];
          v95 = v0[17];
          v97 = v0[13];

          v98 = v0[1];
LABEL_33:

          return v98();
        }
      }

      else
      {
      }

      if (qword_27F830268 != -1)
      {
        swift_once();
      }

      v75 = v0[17];
      v76 = v0[14];
      v77 = v0[15];
      v78 = v0[10];
      v79 = __swift_project_value_buffer(v76, qword_27F832020);
      (*(v77 + 16))(v75, v79, v76);

      v80 = sub_2561EDA70();
      v81 = sub_2561EE350();

      v82 = os_log_type_enabled(v80, v81);
      v83 = v0[17];
      v84 = v0[14];
      v85 = v0[15];
      if (v82)
      {
        v87 = v0[9];
        v86 = v0[10];
        v88 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v105[0] = v89;
        *v88 = 136315138;
        *(v88 + 4) = sub_2561E05FC(v87, v86, v105);
        _os_log_impl(&dword_2561D1000, v80, v81, "Failed to fetch URL for key: %s", v88, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v89);
        MEMORY[0x259C5EC30](v89, -1, -1);
        MEMORY[0x259C5EC30](v88, -1, -1);
      }

      (*(v85 + 8))(v83, v84);
      v91 = v0[9];
      v90 = v0[10];
      type metadata accessor for MCCError();
      sub_2561E05B4(&qword_27F8302C0, type metadata accessor for MCCError);
      swift_allocError();
      *v92 = v91;
      v92[1] = v90;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      goto LABEL_32;
    }
  }

  if (qword_27F830268 != -1)
  {
    swift_once();
  }

  v34 = v0[19];
  v35 = v0[14];
  v36 = v0[15];
  v37 = v0[11];
  v38 = __swift_project_value_buffer(v35, qword_27F832020);
  (*(v36 + 16))(v34, v38, v35);
  v39 = v37;
  v40 = sub_2561EDA70();
  v41 = sub_2561EE350();

  v42 = os_log_type_enabled(v40, v41);
  v43 = v0[19];
  v44 = v0[14];
  v45 = v0[15];
  if (v42)
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v105[0] = v47;
    *v46 = 136315138;
    v48 = sub_2561EE2B0();
    v50 = sub_2561E05FC(v48, v49, v105);

    *(v46 + 4) = v50;
    _os_log_impl(&dword_2561D1000, v40, v41, "Failed to fetch properties for dataclass: %s. Trying to renew credentials.", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v47);
    MEMORY[0x259C5EC30](v47, -1, -1);
    MEMORY[0x259C5EC30](v46, -1, -1);
  }

  (*(v45 + 8))(v43, v44);
  v51 = swift_task_alloc();
  v0[21] = v51;
  *v51 = v0;
  v51[1] = sub_2561DE9E4;
  v52 = v0[12];

  return sub_2561DD1A0();
}

uint64_t sub_2561DE9E4()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;

  if (v0)
  {
    v6 = v2[18];
    v5 = v2[19];
    v8 = v2[16];
    v7 = v2[17];
    v9 = v2[13];

    v10 = *(v4 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_2561DEB5C, 0, 0);
}

uint64_t sub_2561DEB5C()
{
  v80 = v0;
  v1 = v0[20];
  v2 = v0[11];
  os_unfair_lock_lock((v1 + 24));
  v3 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 24));
  v4 = [v3 propertiesForDataclass_];

  if (!v4 || (v5 = sub_2561EE270(), v4, v6 = sub_2561DF34C(v5), , !v6))
  {
    if (qword_27F830268 != -1)
    {
      swift_once();
    }

    v28 = v0[15];
    v27 = v0[16];
    v29 = v0[14];
    v30 = v0[11];
    v31 = __swift_project_value_buffer(v29, qword_27F832020);
    (*(v28 + 16))(v27, v31, v29);
    v32 = v30;
    v33 = sub_2561EDA70();
    v34 = sub_2561EE350();

    v35 = os_log_type_enabled(v33, v34);
    v37 = v0[15];
    v36 = v0[16];
    v38 = v0[14];
    if (v35)
    {
      v39 = v0[11];
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v79[0] = v41;
      *v40 = 136315138;
      v42 = sub_2561EE2B0();
      v44 = sub_2561E05FC(v42, v43, v79);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_2561D1000, v33, v34, "Still not able to fetch properties for dataclass: %s. Failing.", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v41);
      MEMORY[0x259C5EC30](v41, -1, -1);
      MEMORY[0x259C5EC30](v40, -1, -1);
    }

    (*(v37 + 8))(v36, v38);
    v45 = v0[11];
    type metadata accessor for MCCError();
    sub_2561E05B4(&qword_27F8302C0, type metadata accessor for MCCError);
    swift_allocError();
    *v46 = v45;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v47 = v45;
    goto LABEL_23;
  }

  if (!*(v6 + 16) || (v7 = sub_2561E0BE8(v0[9], v0[10]), (v8 & 1) == 0))
  {

    goto LABEL_18;
  }

  sub_2561E0C60(*(v6 + 56) + 32 * v7, (v0 + 2));

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    if (qword_27F830268 != -1)
    {
      swift_once();
    }

    v48 = v0[17];
    v49 = v0[14];
    v50 = v0[15];
    v51 = v0[10];
    v52 = __swift_project_value_buffer(v49, qword_27F832020);
    (*(v50 + 16))(v48, v52, v49);

    v53 = sub_2561EDA70();
    v54 = sub_2561EE350();

    v55 = os_log_type_enabled(v53, v54);
    v56 = v0[17];
    v57 = v0[14];
    v58 = v0[15];
    if (v55)
    {
      v60 = v0[9];
      v59 = v0[10];
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v79[0] = v62;
      *v61 = 136315138;
      *(v61 + 4) = sub_2561E05FC(v60, v59, v79);
      _os_log_impl(&dword_2561D1000, v53, v54, "Failed to fetch URL for key: %s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v62);
      MEMORY[0x259C5EC30](v62, -1, -1);
      MEMORY[0x259C5EC30](v61, -1, -1);
    }

    (*(v58 + 8))(v56, v57);
    v64 = v0[9];
    v63 = v0[10];
    type metadata accessor for MCCError();
    sub_2561E05B4(&qword_27F8302C0, type metadata accessor for MCCError);
    swift_allocError();
    *v65 = v64;
    v65[1] = v63;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    goto LABEL_23;
  }

  v9 = v0[13];
  v11 = v0[6];
  v10 = v0[7];
  sub_2561ED960();
  v12 = sub_2561ED970();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v9, 1, v12) == 1)
  {
    sub_2561D8584(v0[13], &qword_27F830280, &qword_2561EEAF0);
    if (qword_27F830268 != -1)
    {
      swift_once();
    }

    v14 = v0[18];
    v15 = v0[14];
    v16 = v0[15];
    v17 = __swift_project_value_buffer(v15, qword_27F832020);
    (*(v16 + 16))(v14, v17, v15);

    v18 = sub_2561EDA70();
    v19 = sub_2561EE350();

    v20 = os_log_type_enabled(v18, v19);
    v21 = v0[18];
    v22 = v0[14];
    v23 = v0[15];
    if (v20)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v79[0] = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_2561E05FC(v11, v10, v79);
      _os_log_impl(&dword_2561D1000, v18, v19, "Failed to create URL from string: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x259C5EC30](v25, -1, -1);
      MEMORY[0x259C5EC30](v24, -1, -1);
    }

    (*(v23 + 8))(v21, v22);
    type metadata accessor for MCCError();
    sub_2561E05B4(&qword_27F8302C0, type metadata accessor for MCCError);
    swift_allocError();
    *v26 = v11;
    v26[1] = v10;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_23:
    v67 = v0[18];
    v66 = v0[19];
    v69 = v0[16];
    v68 = v0[17];
    v70 = v0[13];

    v71 = v0[1];
    goto LABEL_24;
  }

  v74 = v0[18];
  v73 = v0[19];
  v76 = v0[16];
  v75 = v0[17];
  v77 = v0[13];
  v78 = v0[8];

  (*(v13 + 32))(v78, v77, v12);

  v71 = v0[1];
LABEL_24:

  return v71();
}

unint64_t sub_2561DF34C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8304F0, &qword_2561EFB90);
    v2 = sub_2561EE470();
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
        v14 = __clz(__rbit64(v5)) | (v13 << 6);
        sub_2561E1058(*(a1 + 48) + 40 * v14, v29);
        sub_2561E0C60(*(a1 + 56) + 32 * v14, v30 + 8);
        v27[0] = v30[0];
        v27[1] = v30[1];
        v28 = v31;
        v26[0] = v29[0];
        v26[1] = v29[1];
        sub_2561E1058(v26, v21);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_2561E0C60(v27 + 8, v22);
        sub_2561D8584(v26, &qword_27F8304F8, &qword_2561EFB98);
        v23 = v20;
        sub_2561E11C0(v22, v24);
        v15 = v23;
        sub_2561E11C0(v24, v25);
        sub_2561E11C0(v25, &v23);
        result = sub_2561E0BE8(v15, *(&v15 + 1));
        if (v16)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v15;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_1(v12);
          result = sub_2561E11C0(&v23, v12);
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
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v15;
          result = sub_2561E11C0(&v23, (v2[7] + 32 * result));
          v17 = v2[2];
          v18 = __OFADD__(v17, 1);
          v19 = v17 + 1;
          if (v18)
          {
            goto LABEL_24;
          }

          v2[2] = v19;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }

      sub_2561D8584(v26, &qword_27F8304F8, &qword_2561EFB98);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t MCCNetworkController.apiGatewayHost()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2561DF6CC;

  return sub_2561DF7DC(0xD000000000000020, 0x80000002561F0340);
}

uint64_t sub_2561DF6CC(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t sub_2561DF7DC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_2561EDA90();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_2561ED8E0();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8304E8, &qword_2561EFB88) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830280, &qword_2561EEAF0) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v12 = sub_2561ED970();
  v3[14] = v12;
  v13 = *(v12 - 8);
  v3[15] = v13;
  v14 = *(v13 + 64) + 15;
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2561DF9D4, 0, 0);
}

uint64_t sub_2561DF9D4()
{
  v1 = *MEMORY[0x277CB89C8];
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_2561DFA80;
  v3 = v0[13];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];

  return MCCNetworkController.url(for:dataClass:)(v3, v6, v4, v1);
}

uint64_t sub_2561DFA80()
{
  v2 = *(*v1 + 136);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_2561DFF24;
  }

  else
  {
    v3 = sub_2561DFB98;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2561DFB98()
{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[11];
  v6 = v0[8];
  v7 = v0[9];
  (*(v2 + 56))(v4, 0, 1, v3);
  (*(v2 + 32))(v1, v4, v3);
  sub_2561ED8B0();
  v8 = *(v7 + 48);
  if (!v8(v5, 1, v6))
  {
    v9 = v0[11];
    MEMORY[0x259C5DAD0](0, 0xE000000000000000);
  }

  v10 = v0[11];
  v11 = v0[8];
  if (v8(v10, 1, v11))
  {
    goto LABEL_6;
  }

  v12 = v0[14];
  v13 = v0[15];
  v14 = v0[12];
  v16 = v0[9];
  v15 = v0[10];
  (*(v16 + 16))(v15, v10, v11);
  sub_2561ED8C0();
  (*(v16 + 8))(v15, v11);
  if ((*(v13 + 48))(v14, 1, v12) == 1)
  {
    sub_2561D8584(v0[12], &qword_27F830280, &qword_2561EEAF0);
    v10 = v0[11];
LABEL_6:
    v18 = v0[15];
    v17 = v0[16];
    v19 = v0[14];
    v21 = v0[2];
    v20 = v0[3];
    type metadata accessor for MCCError();
    sub_2561E05B4(&qword_27F8302C0, type metadata accessor for MCCError);
    swift_allocError();
    *v22 = v21;
    v22[1] = v20;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v23 = *(v18 + 8);

    v23(v17, v19);
    sub_2561D8584(v10, &qword_27F8304E8, &qword_2561EFB88);
    v24 = v0[16];
    v26 = v0[12];
    v25 = v0[13];
    v28 = v0[10];
    v27 = v0[11];
    v29 = v0[7];

    v30 = v0[1];

    return v30();
  }

  v33 = v0[15];
  v32 = v0[16];
  v35 = v0[13];
  v34 = v0[14];
  v37 = v0[11];
  v36 = v0[12];
  v38 = v0[10];
  v39 = v0[7];
  v40 = sub_2561ED930();
  v44 = v41;
  v45 = v40;
  v42 = *(v33 + 8);
  v42(v32, v34);
  v42(v36, v34);
  sub_2561D8584(v37, &qword_27F8304E8, &qword_2561EFB88);

  v43 = v0[1];

  return v43(v45, v44);
}

uint64_t sub_2561DFF24()
{
  v1 = v0[13];
  (*(v0[15] + 56))(v1, 1, 1, v0[14]);
  sub_2561D8584(v1, &qword_27F830280, &qword_2561EEAF0);
  if (qword_27F830268 != -1)
  {
    swift_once();
  }

  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  v5 = __swift_project_value_buffer(v4, qword_27F832020);
  (*(v3 + 16))(v2, v5, v4);
  v6 = sub_2561EDA70();
  v7 = sub_2561EE350();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2561D1000, v6, v7, "Failed to get API gateway host", v8, 2u);
    MEMORY[0x259C5EC30](v8, -1, -1);
  }

  v10 = v0[6];
  v9 = v0[7];
  v11 = v0[5];
  v13 = v0[2];
  v12 = v0[3];

  (*(v10 + 8))(v9, v11);
  type metadata accessor for MCCError();
  sub_2561E05B4(&qword_27F8302C0, type metadata accessor for MCCError);
  swift_allocError();
  *v14 = v13;
  v14[1] = v12;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v15 = v0[16];
  v17 = v0[12];
  v16 = v0[13];
  v19 = v0[10];
  v18 = v0[11];
  v20 = v0[7];

  v21 = v0[1];

  return v21();
}

uint64_t MCCNetworkController.commandCenterHost()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2561E133C;

  return sub_2561DF7DC(0xD000000000000026, 0x80000002561F0370);
}

uint64_t sub_2561E0230(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830528, &qword_2561EFBC8);
    v2 = sub_2561EE470();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(a1 + 56) + v13);
    *&v33[0] = *v14;
    *(&v33[0] + 1) = v15;

    swift_dynamicCast();
    swift_dynamicCast();
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_2561E11C0(&v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_2561E11C0(v32, v33);
    v17 = *(v2 + 40);
    result = sub_2561EE3F0();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_2561E11C0(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_2561E04E8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830520, &qword_2561EFBC0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_2561E05B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2561E05FC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2561E06C8(v11, 0, 0, 1, a1, a2);
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
    sub_2561E0C60(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_2561E06C8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2561E07D4(a5, a6);
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
    result = sub_2561EE450();
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

uint64_t sub_2561E07D4(uint64_t a1, unint64_t a2)
{
  v4 = sub_2561E0820(a1, a2);
  sub_2561E0950(&unk_286842AD8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2561E0820(uint64_t a1, unint64_t a2)
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

  v6 = sub_2561E0A3C(v5, 0);
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

  result = sub_2561EE450();
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
        v10 = sub_2561EE2F0();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2561E0A3C(v10, 0);
        result = sub_2561EE420();
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

uint64_t sub_2561E0950(uint64_t result)
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

  result = sub_2561E0AB0(result, v12, 1, v3);
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

void *sub_2561E0A3C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830500, &qword_2561EFBA0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2561E0AB0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830500, &qword_2561EFBA0);
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

unint64_t sub_2561E0BA4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_2561EE3F0();

  return sub_2561E0F90(a1, v5);
}

unint64_t sub_2561E0BE8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2561EE510();
  sub_2561EE2D0();
  v6 = sub_2561EE530();

  return sub_2561E1108(a1, a2, v6);
}

uint64_t sub_2561E0C60(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2561E0CC0()
{
  result = qword_27F8304D8;
  if (!qword_27F8304D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8304D8);
  }

  return result;
}

unint64_t sub_2561E0D18()
{
  result = qword_27F8304E0;
  if (!qword_27F8304E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8304E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HTTPMethod(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HTTPMethod(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t get_enum_tag_for_layout_string_So17AAGrandSlamSignerCSgSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2561E0EF8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2561E0F40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2561E0F90(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2561E1058(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x259C5E600](v9, a1);
      sub_2561E10B4(v9);
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

unint64_t sub_2561E1108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_2561EE4C0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

_OWORD *sub_2561E11C0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

id sub_2561E11D4(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

unint64_t sub_2561E11E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830530, &unk_2561EFBD0);
    v3 = sub_2561EE470();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2561E0BE8(v5, v6);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

id sub_2561E12F8(id *a1)
{
  v3 = *(v1 + 16);

  *a1 = v3;
  return v3;
}

uint64_t iCloudMailAccountUIFeatureFlag.isEnabled.getter()
{
  v2[3] = &type metadata for iCloudMailAccountUIFeatureFlag;
  v2[4] = sub_2561E13B8();
  v0 = sub_2561EDA60();
  __swift_destroy_boxed_opaque_existential_1(v2);
  return v0 & 1;
}

unint64_t sub_2561E13B8()
{
  result = qword_27F830538;
  if (!qword_27F830538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F830538);
  }

  return result;
}

uint64_t iCloudMailAccountUIFeatureFlag.hashValue.getter()
{
  sub_2561EE510();
  MEMORY[0x259C5E720](0);
  return sub_2561EE530();
}

uint64_t sub_2561E1480()
{
  sub_2561EE510();
  MEMORY[0x259C5E720](0);
  return sub_2561EE530();
}

uint64_t sub_2561E14EC()
{
  sub_2561EE510();
  MEMORY[0x259C5E720](0);
  return sub_2561EE530();
}

unint64_t sub_2561E1530()
{
  result = qword_27F830540;
  if (!qword_27F830540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F830540);
  }

  return result;
}

CGFloat sub_2561E15E8()
{
  v0 = sub_2561ED8A0();
  if (!v0)
  {
    goto LABEL_8;
  }

  v1 = v0;
  v2 = *MEMORY[0x277D76BB8];
  sub_2561EE2B0();
  sub_2561EE410();
  if (!*(v1 + 16) || (v3 = sub_2561E0BA4(&v6), (v4 & 1) == 0))
  {

    sub_2561E10B4(&v6);
LABEL_8:
    v7 = 0u;
    v8 = 0u;
    goto LABEL_9;
  }

  sub_2561E0C60(*(v1 + 56) + 32 * v3, &v7);
  sub_2561E10B4(&v6);

  if (!*(&v8 + 1))
  {
LABEL_9:
    sub_2561E1C00(&v7);
    return 0.0;
  }

  type metadata accessor for CGRect(0);
  if (swift_dynamicCast())
  {
    return CGRectGetHeight(v6);
  }

  return 0.0;
}

uint64_t sub_2561E16EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830548, &qword_2561EFCB8);
  v1 = *(v0 - 8);
  v37 = v0;
  v38 = v1;
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v36 = &v33 - v3;
  v4 = sub_2561EE3A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830550, &qword_2561EFCC0);
  v35 = *(v9 - 8);
  v10 = v35;
  v11 = *(v35 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v34 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v33 = &v33 - v14;
  v15 = objc_opt_self();
  v16 = [v15 defaultCenter];
  v17 = *MEMORY[0x277D76BA8];
  sub_2561EE3B0();

  sub_2561E1B60();
  sub_2561EDAC0();
  v18 = *(v5 + 8);
  v18(v8, v4);
  v19 = [v15 defaultCenter];
  v20 = *MEMORY[0x277D76BA0];
  sub_2561EE3B0();

  v21 = v34;
  sub_2561EDAC0();
  v18(v8, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830560, &qword_2561EFCC8);
  v22 = *(v35 + 72);
  v23 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2561EF950;
  v25 = v24 + v23;
  v26 = *(v10 + 16);
  v27 = v33;
  v26(v25, v33, v9);
  v26(v25 + v22, v21, v9);
  sub_2561E1BB8(&qword_27F830568, &qword_27F830550, &qword_2561EFCC0);
  v28 = v36;
  sub_2561EDAA0();
  sub_2561E1BB8(&qword_27F830570, &qword_27F830548, &qword_2561EFCB8);
  v29 = v37;
  v30 = sub_2561EDAB0();
  (*(v38 + 8))(v28, v29);
  v31 = *(v10 + 8);
  v31(v21, v9);
  v31(v27, v9);
  return v30;
}

unint64_t sub_2561E1B60()
{
  result = qword_27F830558;
  if (!qword_27F830558)
  {
    sub_2561EE3A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F830558);
  }

  return result;
}

uint64_t sub_2561E1BB8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2561E1C00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830578, &qword_2561EFCD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2561E1C68()
{
  v1 = v0;
  v2 = sub_2561ED9F0();
  v45 = *(v2 - 8);
  v46 = v2;
  v3 = *(v45 + 64);
  MEMORY[0x28223BE20](v2);
  v44 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2561EDA20();
  v42 = *(v5 - 8);
  v43 = v5;
  v6 = *(v42 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2561ED9A0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2561EDA50();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v1 aa_addClientInfoHeaders];
  [v1 aa_addMultiUserDeviceHeaderIfEnabled];
  v19 = sub_2561EE280();
  [v1 aa:v19 addContentTypeHeaders:?];

  [v1 ak_addDeviceUDIDHeader];
  v20 = [objc_opt_self() systemTimeZone];
  sub_2561EDA40();

  sub_2561ED990();
  sub_2561EDA30();
  v22 = v21;
  (*(v10 + 8))(v13, v9);
  (*(v15 + 8))(v18, v14);
  if (v22)
  {
    v23 = sub_2561EE280();

    v24 = sub_2561EE280();
    [v1 setValue:v23 forHTTPHeaderField:v24];
  }

  v25 = [objc_opt_self() currentInfo];
  if (!v25)
  {
    __break(1u);
    goto LABEL_8;
  }

  v26 = v25;
  v27 = [v25 udid];

  v28 = sub_2561EE280();
  [v1 setValue:v27 forHTTPHeaderField:v28];

  v29 = [objc_opt_self() currentLocale];
  sub_2561EDA10();

  v30 = v44;
  sub_2561EDA00();
  (*(v42 + 8))(v8, v43);
  sub_2561ED9E0();
  (*(v45 + 8))(v30, v46);
  v31 = sub_2561EE280();

  v32 = sub_2561EE280();
  [v1 setValue:v31 forHTTPHeaderField:v32];

  v33 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v33 setDateStyle_];
  [v33 setTimeStyle_];
  v34 = [v33 dateFormat];
  if (!v34)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v35 = v34;

  v36 = sub_2561EE280();
  [v1 setValue:v35 forHTTPHeaderField:v36];

  v37 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v37 setDateStyle_];
  [v37 setTimeStyle_];
  v38 = [v37 dateFormat];
  if (v38)
  {
    v39 = v38;

    v40 = sub_2561EE280();
    [v1 setValue:v39 forHTTPHeaderField:v40];

    return;
  }

LABEL_9:
  __break(1u);
}

void sub_2561E226C()
{
  v1 = v0;
  v25[1] = *MEMORY[0x277D85DE8];
  v2 = sub_2561EDA90();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x277CF0168]) init];
  v25[0] = 0;
  v8 = [v7 anisetteDataWithError_];
  if (v8)
  {
    v9 = v8;
    v10 = v25[0];
    v11 = [v9 machineID];
    v12 = sub_2561EE280();
    [v1 setValue:v11 forHTTPHeaderField:v12];

    v13 = [v9 oneTimePassword];
    v14 = sub_2561EE280();
    [v1 setValue:v13 forHTTPHeaderField:v14];

    v25[0] = [v9 routingInfo];
    sub_2561EE4B0();
    v15 = sub_2561EE280();

    v16 = sub_2561EE280();
    [v1 setValue:v15 forHTTPHeaderField:v16];
  }

  else
  {
    v17 = v25[0];
    v18 = sub_2561ED920();

    swift_willThrow();
    if (qword_27F830268 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v2, qword_27F832020);
    (*(v3 + 16))(v6, v19, v2);
    v20 = sub_2561EDA70();
    v21 = sub_2561EE350();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2561D1000, v20, v21, "Can't get anisette data", v22, 2u);
      MEMORY[0x259C5EC30](v22, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void sub_2561E25E8()
{
  v1 = v0;
  v2 = sub_2561ED9D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2561EE280();
  v12 = [v1 valueForHTTPHeaderField_];

  v8 = v12;
  if (v12)
  {
  }

  else
  {
    sub_2561ED9C0();
    sub_2561ED9B0();
    (*(v3 + 8))(v6, v2);
    v9 = sub_2561EE280();

    v10 = sub_2561EE280();
    [v1 setValue:v9 forHTTPHeaderField:v10];
  }
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

uint64_t sub_2561E2840(uint64_t a1, uint64_t *a2)
{
  v3 = sub_2561EDA90();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_2561EDA80();
}

uint64_t sub_2561E28B8(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v20 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v23 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v24 = (v6 + 32);
    v25 = a2;
    do
    {
      if (a2 == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = *v24;
      }

      v28 = *v23++;
      v27 = v28;
      v29 = *v5++;
      (*(*(v27 - 8) + 16))(&v22[v26], v29);
      v24 += 4;
      --v25;
    }

    while (v25);
  }

  return sub_2561EE230();
}

uint64_t sub_2561E2A88(uint64_t a1, uint64_t a2)
{
  v4 = sub_2561EDCE0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_2561EDCF0();
}

uint64_t sub_2561E2B80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2561EDCE0();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_2561EDCF0();
}

void sub_2561E2C78()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  byte_27F830580 = v1 == 1;
}

uint64_t sub_2561E2CE0(uint64_t a1)
{
  v2 = (v1 + *(a1 + 88));
  v5 = *v2;
  v6 = *(v2 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830818, &qword_2561F0020);
  sub_2561EE140();
  return v4;
}

uint64_t sub_2561E2D40(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *(a2 + 88));
  v5 = *v3;
  v6 = *(v3 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830818, &qword_2561F0020);
  return sub_2561EE150();
}

uint64_t sub_2561E2DE0(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *(a2 + 92));
  v5 = *v3;
  v6 = *(v3 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830818, &qword_2561F0020);
  return sub_2561EE150();
}

uint64_t sub_2561E2E44(uint64_t a1)
{
  v2 = (v1 + *(a1 + 92));
  v5 = *v2;
  v6 = *(v2 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830818, &qword_2561F0020);
  sub_2561EE160();
  return v4;
}

uint64_t OBKListView.init(title:detailText:caption:primaryButton:secondaryButton:applyListRowBackground:headerImage:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ValueMetadata *a17)
{
  v42 = &type metadata for Solarium;
  v20 = sub_2561D9210();
  v43 = v20;
  LOBYTE(v39) = 0;
  v21 = sub_2561EDA60();
  __swift_destroy_boxed_opaque_existential_1(&v39);
  v22 = 0;
  if (v21)
  {
    v42 = &type metadata for Solarium;
    v43 = v20;
    LOBYTE(v39) = 1;
    v22 = sub_2561EDA60();
    __swift_destroy_boxed_opaque_existential_1(&v39);
  }

  v39 = a14;
  v40 = a15;
  v41 = a16;
  v42 = a17;
  v23 = type metadata accessor for OBKListView(0, &v39);
  *(a9 + v23[21]) = v22 & 1;
  v24 = a9 + v23[22];
  v44 = 0;
  sub_2561EE130();
  v25 = v40;
  *v24 = v39;
  *(v24 + 8) = v25;
  v26 = a9 + v23[23];
  v44 = 0;
  sub_2561EE130();
  v27 = v40;
  *v26 = v39;
  *(v26 + 8) = v27;
  v28 = *(a6 + 48);
  *(a9 + 96) = *(a6 + 32);
  *(a9 + 112) = v28;
  *(a9 + 128) = *(a6 + 64);
  v29 = *(a6 + 16);
  *(a9 + 64) = *a6;
  *(a9 + 80) = v29;
  v30 = *(a7 + 48);
  *(a9 + 184) = *(a7 + 32);
  *(a9 + 200) = v30;
  *(a9 + 216) = *(a7 + 64);
  v31 = *(a7 + 16);
  *(a9 + 152) = *a7;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 240) = 0;
  *(a9 + 248) = 0;
  *(a9 + 32) = a10;
  *(a9 + 40) = a11;
  *(a9 + 48) = a12;
  *(a9 + 56) = a13;
  *(a9 + 144) = *(a6 + 80);
  *(a9 + 232) = *(a7 + 80);
  *(a9 + 168) = v31;
  result = sub_2561E30CC(a5, a9 + v23[19]);
  *(a9 + v23[20]) = (a8 == 2) | a8 & 1;
  return result;
}

uint64_t sub_2561E30CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830368, &qword_2561EFCE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OBKListView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830588, &qword_2561EFCE8);
  v3 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830590, &qword_2561EFCF0);
  v63 = v3;
  sub_2561EDB60();
  sub_2561EDB60();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830598, &qword_2561EFCF8);
  sub_2561EDD00();
  sub_2561EE3D0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305A0, &qword_2561EFD00);
  swift_getTupleTypeMetadata2();
  sub_2561EE220();
  swift_getWitnessTable();
  sub_2561EE1B0();
  sub_2561EDB60();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305A8, &qword_2561EFD08);
  sub_2561EDB60();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305B0, &qword_2561EFD10);
  sub_2561EDB60();
  sub_2561EDB60();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305B8, &qword_2561EFD18);
  sub_2561EE1E0();
  swift_getTupleTypeMetadata2();
  sub_2561EE220();
  swift_getWitnessTable();
  sub_2561EDEF0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  v72 = sub_2561E1BB8(&qword_27F8305C0, &qword_27F830588, &qword_2561EFCE8);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_2561EDBB0();
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v5 = swift_getOpaqueTypeConformance2();
  v70 = OpaqueTypeMetadata2;
  v71 = v5;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305C8, &unk_2561EFD20);
  swift_getTupleTypeMetadata2();
  sub_2561EE220();
  WitnessTable = swift_getWitnessTable();
  v6 = sub_2561EE1B0();
  v55 = *(v6 - 8);
  v7 = *(v55 + 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &WitnessTable - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v53 = &WitnessTable - v12;
  v64 = a1;
  v13 = a1 - 8;
  v54 = *(a1 - 8);
  v14 = *(v54 + 64);
  MEMORY[0x28223BE20](v11);
  v52 = &WitnessTable - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_checkMetadataState();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &WitnessTable - v19;
  v70 = v18;
  v71 = v5;
  v59 = v5;
  v21 = swift_getOpaqueTypeMetadata2();
  v57 = *(v21 - 8);
  v58 = v21;
  v22 = *(v57 + 64);
  MEMORY[0x28223BE20](v21);
  v56 = &WitnessTable - v23;
  v24 = sub_2561EDD00();
  v25 = v62;
  v60 = *(v24 - 8);
  v61 = v24;
  v26 = *(v60 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &WitnessTable - v28;
  if (*(v25 + *(v13 + 92)) == 1)
  {
    v55 = &WitnessTable - v28;
    v30 = v64;
    v31 = v25;
    sub_2561E3CC4(v64, v20);
    sub_2561EDE50();
    if (qword_27F830278 != -1)
    {
      swift_once();
    }

    v32 = v56;
    v33 = v59;
    sub_2561EDFB0();
    (*(v16 + 8))(v20, v15);
    LODWORD(v53) = sub_2561E46E4(v30);
    v34 = v54;
    v35 = v52;
    (*(v54 + 16))(v52, v31, v30);
    v36 = (*(v34 + 80) + 48) & ~*(v34 + 80);
    v37 = swift_allocObject();
    *(v37 + 16) = v63;
    *(v37 + 24) = *(v30 + 24);
    *(v37 + 40) = *(v30 + 40);
    (*(v34 + 32))(v37 + v36, v35, v30);
    v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305D0, &qword_2561EFD30);
    v70 = v15;
    v71 = v33;
    v39 = swift_getOpaqueTypeConformance2();
    v40 = sub_2561E5E84();
    v41 = v58;
    v70 = v58;
    v71 = v38;
    v72 = v39;
    OpaqueTypeConformance2 = v40;
    swift_getOpaqueTypeMetadata2();
    sub_2561EDB60();
    v70 = v41;
    v71 = v38;
    v72 = v39;
    OpaqueTypeConformance2 = v40;
    v66 = swift_getOpaqueTypeConformance2();
    v67 = MEMORY[0x277CDF918];
    swift_getWitnessTable();
    View.if<A>(_:content:)(v53 & 1, v41, &v70);

    (*(v57 + 8))(v32, v41);
    swift_getWitnessTable();
    v29 = v55;
    sub_2561E2A88(&v70, MEMORY[0x277CE11C8]);
  }

  else
  {
    MEMORY[0x28223BE20](v27);
    v42 = v64;
    *(&WitnessTable - 6) = v63;
    *(&WitnessTable - 5) = *(v42 + 24);
    *(&WitnessTable - 3) = *(v42 + 40);
    *(&WitnessTable - 2) = v25;
    sub_2561EDCB0();
    sub_2561EE1A0();
    swift_getWitnessTable();
    v43 = v55;
    v44 = *(v55 + 2);
    v45 = v53;
    v44(v53, v10, v6);
    v46 = *(v43 + 1);
    v46(v10, v6);
    v44(v10, v45, v6);
    sub_2561E2B80(v10, MEMORY[0x277CE11C8], v6);
    v46(v10, v6);
    v46(v45, v6);
  }

  v47 = swift_getWitnessTable();
  v68 = MEMORY[0x277CE11C0];
  v69 = v47;
  v48 = v61;
  swift_getWitnessTable();
  v49 = v60;
  (*(v60 + 16))(v65, v29, v48);
  return (*(v49 + 8))(v29, v48);
}

uint64_t sub_2561E3CC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a1;
  v71 = a2;
  v69 = *(a1 - 8);
  v2 = *(v69 + 64);
  v3 = a1 - 8;
  *&v55 = a1 - 8;
  MEMORY[0x28223BE20](a1 - 8);
  v67 = v4;
  v68 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_2561EDD60();
  v65 = *(v66 - 8);
  v5 = *(v65 + 64);
  MEMORY[0x28223BE20](v66);
  v60 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830590, &qword_2561EFCF0);
  v72 = *(v3 + 24);
  sub_2561EDB60();
  sub_2561EDB60();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830598, &qword_2561EFCF8);
  sub_2561EDD00();
  sub_2561EE3D0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305A0, &qword_2561EFD00);
  swift_getTupleTypeMetadata2();
  sub_2561EE220();
  swift_getWitnessTable();
  sub_2561EE1B0();
  sub_2561EDB60();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305A8, &qword_2561EFD08);
  sub_2561EDB60();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305B0, &qword_2561EFD10);
  sub_2561EDB60();
  sub_2561EDB60();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305B8, &qword_2561EFD18);
  sub_2561EE1E0();
  swift_getTupleTypeMetadata2();
  v7 = sub_2561EE220();
  v52 = v7;
  WitnessTable = swift_getWitnessTable();
  v78 = MEMORY[0x277D84A98];
  v79 = v7;
  v80 = MEMORY[0x277D84AA8];
  v81 = WitnessTable;
  v8 = sub_2561EDEF0();
  v50 = *(v8 - 8);
  v9 = *(v50 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v49 - v10;
  v12 = swift_getWitnessTable();
  v78 = v8;
  v79 = v12;
  v13 = v12;
  v49 = v12;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v58 = *(OpaqueTypeMetadata2 - 8);
  v15 = *(v58 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v17 = &v49 - v16;
  v78 = v8;
  v79 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v78 = OpaqueTypeMetadata2;
  v79 = OpaqueTypeConformance2;
  v19 = swift_getOpaqueTypeMetadata2();
  v61 = *(v19 - 8);
  v20 = *(v61 + 64);
  MEMORY[0x28223BE20](v19);
  v59 = &v49 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830588, &qword_2561EFCE8);
  v23 = v60;
  v24 = sub_2561E1BB8(&qword_27F8305C0, &qword_27F830588, &qword_2561EFCE8);
  v56 = OpaqueTypeMetadata2;
  v78 = OpaqueTypeMetadata2;
  v79 = OpaqueTypeConformance2;
  v25 = swift_getOpaqueTypeConformance2();
  v57 = v22;
  v78 = v22;
  v79 = v19;
  v62 = v19;
  v54 = v24;
  v80 = v24;
  v81 = v25;
  v53 = v25;
  v64 = sub_2561EDBB0();
  v63 = *(v64 - 8);
  v26 = *(v63 + 64);
  MEMORY[0x28223BE20](v64);
  v28 = &v49 - v27;
  v29 = *(v55 + 32);
  v74 = v72;
  v75 = v29;
  v55 = *(v55 + 40);
  v76 = v55;
  v77 = v73;
  sub_2561EDEE0();
  sub_2561EE050();
  (*(v50 + 8))(v11, v8);
  sub_2561EDD50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830870, &qword_2561F0050);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2561EF950;
  LOBYTE(OpaqueTypeConformance2) = sub_2561EDE40();
  *(inited + 32) = OpaqueTypeConformance2;
  v31 = sub_2561EDE20();
  *(inited + 33) = v31;
  sub_2561EDE30();
  sub_2561EDE30();
  if (sub_2561EDE30() != OpaqueTypeConformance2)
  {
    sub_2561EDE30();
  }

  sub_2561EDE30();
  if (sub_2561EDE30() != v31)
  {
    sub_2561EDE30();
  }

  v32 = v59;
  v33 = v56;
  sub_2561EE000();
  (*(v65 + 8))(v23, v66);
  (*(v58 + 8))(v17, v33);
  v78 = sub_2561E16EC();
  v34 = v69;
  v35 = v68;
  v36 = v70;
  (*(v69 + 16))(v68, v73, v70);
  v37 = (*(v34 + 80) + 48) & ~*(v34 + 80);
  v38 = swift_allocObject();
  *&v39 = v72;
  *(&v39 + 1) = v29;
  v40 = v55;
  *(v38 + 16) = v39;
  *(v38 + 32) = v40;
  (*(v34 + 32))(v38 + v37, v35, v36);
  v41 = v62;
  sub_2561EE0B0();

  (*(v61 + 8))(v32, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830878, &qword_2561F0058);
  v42 = *(sub_2561EDBD0() - 8);
  v43 = *(v42 + 72);
  v44 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_2561EF230;
  sub_2561EDBC0();
  v46 = v64;
  v47 = swift_getWitnessTable();
  MEMORY[0x259C5E220](1, v45, v46, v47);

  return (*(v63 + 8))(v28, v46);
}

BOOL sub_2561E46E4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830368, &qword_2561EFCE0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  sub_2561D7E98(v1 + *(a1 + 76), &v11 - v5, &qword_27F830368, &qword_2561EFCE0);
  v7 = type metadata accessor for OBKCaption();
  v8 = 1;
  v9 = (*(*(v7 - 8) + 48))(v6, 1, v7);
  sub_2561D8584(v6, &qword_27F830368, &qword_2561EFCE0);
  if (v9 == 1 && !*(v1 + 72))
  {
    return *(v1 + 160) != 0;
  }

  return v8;
}

uint64_t sub_2561E47F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v36 = a5;
  v37 = a6;
  v33 = a3;
  v34 = a4;
  v35 = a2;
  v38 = a1;
  v39 = a7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830588, &qword_2561EFCE8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830590, &qword_2561EFCF0);
  sub_2561EDB60();
  sub_2561EDB60();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830598, &qword_2561EFCF8);
  sub_2561EDD00();
  sub_2561EE3D0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305A0, &qword_2561EFD00);
  swift_getTupleTypeMetadata2();
  sub_2561EE220();
  swift_getWitnessTable();
  sub_2561EE1B0();
  sub_2561EDB60();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305A8, &qword_2561EFD08);
  sub_2561EDB60();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305B0, &qword_2561EFD10);
  sub_2561EDB60();
  sub_2561EDB60();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305B8, &qword_2561EFD18);
  sub_2561EE1E0();
  swift_getTupleTypeMetadata2();
  sub_2561EE220();
  swift_getWitnessTable();
  sub_2561EDEF0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_2561E1BB8(&qword_27F8305C0, &qword_27F830588, &qword_2561EFCE8);
  swift_getOpaqueTypeConformance2();
  sub_2561EDBB0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305D0, &qword_2561EFD30);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v8 = sub_2561E5E84();
  v47 = OpaqueTypeMetadata2;
  v48 = v30;
  v49 = OpaqueTypeConformance2;
  v50 = v8;
  v31 = MEMORY[0x277CDE708];
  v29 = swift_getOpaqueTypeMetadata2();
  v32 = *(v29 - 8);
  v9 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  v11 = &OpaqueTypeConformance2 - v10;
  v12 = sub_2561EDB60();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &OpaqueTypeConformance2 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &OpaqueTypeConformance2 - v18;
  v40 = v33;
  v41 = v34;
  v42 = v36;
  v43 = v37;
  v44 = v35;
  sub_2561EDCB0();
  v20 = swift_checkMetadataState();
  v21 = OpaqueTypeConformance2;
  v22 = v30;
  sub_2561EDFC0();
  sub_2561EDE80();
  v47 = v20;
  v48 = v22;
  v49 = v21;
  v50 = v8;
  v23 = swift_getOpaqueTypeConformance2();
  v24 = v29;
  sub_2561EE090();
  (*(v32 + 8))(v11, v24);
  v45 = v23;
  v46 = MEMORY[0x277CDF918];
  swift_getWitnessTable();
  v25 = v13[2];
  v25(v19, v17, v12);
  v26 = v13[1];
  v26(v17, v12);
  v25(v39, v19, v12);
  return (v26)(v19, v12);
}

uint64_t sub_2561E4EF4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v29 = a5;
  v9 = sub_2561EDCA0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v48 = a1;
  *(&v48 + 1) = a2;
  *&v49 = a3;
  *(&v49 + 1) = a4;
  v14 = type metadata accessor for OBKListView(0, &v48);
  sub_2561E51E4(v14, v46);
  v42 = v46[12];
  v43 = v46[13];
  v44 = v46[14];
  v45 = v47;
  v38 = v46[8];
  v39 = v46[9];
  v40 = v46[10];
  v41 = v46[11];
  v34 = v46[4];
  v35 = v46[5];
  v36 = v46[6];
  v37 = v46[7];
  v30 = v46[0];
  v31 = v46[1];
  v15 = v29;
  v32 = v46[2];
  v33 = v46[3];
  sub_2561EDC90();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8305F0, &qword_2561EFD40);
  sub_2561E5FD8();
  sub_2561EE040();
  (*(v10 + 8))(v13, v9);
  v60 = v42;
  v61 = v43;
  v62 = v44;
  v63 = v45;
  v56 = v38;
  v57 = v39;
  v58 = v40;
  v59 = v41;
  v52 = v34;
  v53 = v35;
  v54 = v36;
  v55 = v37;
  v48 = v30;
  v49 = v31;
  v50 = v32;
  v51 = v33;
  sub_2561D8584(&v48, &qword_27F8305F0, &qword_2561EFD40);
  LOBYTE(a4) = sub_2561EDE90();
  v16 = v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8305E8, &qword_2561EFD38) + 36);
  *v16 = a4;
  *(v16 + 8) = 0u;
  *(v16 + 24) = 0u;
  *(v16 + 40) = 1;
  v17 = sub_2561EDE50();
  if (qword_27F830278 != -1)
  {
    swift_once();
  }

  sub_2561EDB00();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8305D0, &qword_2561EFD30);
  v27 = v15 + *(result + 36);
  *v27 = v17;
  *(v27 + 8) = v19;
  *(v27 + 16) = v21;
  *(v27 + 24) = v23;
  *(v27 + 32) = v25;
  *(v27 + 40) = 0;
  return result;
}

double sub_2561E51E4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_2561EDCB0();
  v15 = 0;
  sub_2561E87F8(v3, a1[2], a1[3], a1[4], a1[5], &v16);
  v23 = v16;
  v24 = v17;
  v25 = v18;
  v26 = v19;
  v27[0] = v16;
  v27[1] = v17;
  v27[2] = v18;
  v27[3] = v19;
  sub_2561D7E98(&v23, v13, &qword_27F8306D0, &qword_2561EFEE0);
  sub_2561D8584(v27, &qword_27F8306D0, &qword_2561EFEE0);
  *&v14[7] = v23;
  *&v14[23] = v24;
  *&v14[39] = v25;
  *&v14[55] = v26;
  LOBYTE(a1) = v15;
  LOBYTE(v3) = sub_2561EDE90();
  v13[0] = 1;
  sub_2561EE1F0();
  sub_2561EDBE0();
  v7 = *v14;
  *(a2 + 33) = *&v14[16];
  v8 = *&v14[48];
  *(a2 + 49) = *&v14[32];
  *(a2 + 65) = v8;
  *(a2 + 17) = v7;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  v9 = v18;
  *(a2 + 184) = v19;
  v10 = v21;
  *(a2 + 200) = v20;
  *(a2 + 216) = v10;
  *(a2 + 232) = v22;
  result = *&v16;
  v12 = v17;
  *(a2 + 136) = v16;
  *(a2 + 152) = v12;
  *a2 = v6;
  *(a2 + 8) = 0x4024000000000000;
  *(a2 + 16) = a1;
  *(a2 + 80) = *&v14[63];
  *(a2 + 88) = v3;
  *(a2 + 128) = 1;
  *(a2 + 168) = v9;
  return result;
}

uint64_t View.if<A>(_:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v5 = *(*(a2 - 8) + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(v9 - 8) + 64);
  if (MEMORY[0x28223BE20](v6))
  {
    v11(v3);
  }

  else
  {
    (*(v13 + 16))(v8, v3, v12);
  }

  result = sub_2561EE1C0();
  *a3 = result;
  return result;
}

uint64_t sub_2561E54B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *&v44 = a4;
  *(&v44 + 1) = a5;
  v45 = a1;
  v46 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830588, &qword_2561EFCE8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830590, &qword_2561EFCF0);
  sub_2561EDB60();
  sub_2561EDB60();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830598, &qword_2561EFCF8);
  sub_2561EDD00();
  sub_2561EE3D0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305A0, &qword_2561EFD00);
  swift_getTupleTypeMetadata2();
  sub_2561EE220();
  swift_getWitnessTable();
  sub_2561EE1B0();
  sub_2561EDB60();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305A8, &qword_2561EFD08);
  sub_2561EDB60();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305B0, &qword_2561EFD10);
  sub_2561EDB60();
  sub_2561EDB60();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305B8, &qword_2561EFD18);
  sub_2561EE1E0();
  swift_getTupleTypeMetadata2();
  v9 = sub_2561EE220();
  WitnessTable = swift_getWitnessTable();
  *&v55[0] = MEMORY[0x277D84A98];
  *(&v55[0] + 1) = v9;
  *&v55[1] = MEMORY[0x277D84AA8];
  *(&v55[1] + 1) = WitnessTable;
  v11 = sub_2561EDEF0();
  v12 = swift_getWitnessTable();
  *&v55[0] = v11;
  *(&v55[0] + 1) = v12;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v55[0] = v11;
  *(&v55[0] + 1) = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v55[0] = OpaqueTypeMetadata2;
  *(&v55[0] + 1) = OpaqueTypeConformance2;
  v15 = swift_getOpaqueTypeMetadata2();
  v16 = sub_2561E1BB8(&qword_27F8305C0, &qword_27F830588, &qword_2561EFCE8);
  *&v55[0] = OpaqueTypeMetadata2;
  *(&v55[0] + 1) = OpaqueTypeConformance2;
  v17 = swift_getOpaqueTypeConformance2();
  *&v55[0] = v8;
  *(&v55[0] + 1) = v15;
  *&v55[1] = v16;
  *(&v55[1] + 1) = v17;
  v18 = sub_2561EDBB0();
  v19 = swift_getWitnessTable();
  *&v55[0] = v18;
  *(&v55[0] + 1) = v19;
  v20 = swift_getOpaqueTypeMetadata2();
  v43 = *(v20 - 8);
  v21 = *(v43 + 8);
  MEMORY[0x28223BE20](v20);
  v23 = v42 - v22;
  *&v55[0] = v18;
  *(&v55[0] + 1) = v19;
  v24 = swift_getOpaqueTypeConformance2();
  *&v55[0] = v20;
  *(&v55[0] + 1) = v24;
  v42[1] = MEMORY[0x277D4D750];
  v25 = swift_getOpaqueTypeMetadata2();
  v42[0] = *(v25 - 8);
  v26 = *(v42[0] + 64);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = v42 - v30;
  *&v55[0] = a2;
  *(&v55[0] + 1) = a3;
  v55[1] = v44;
  v32 = type metadata accessor for OBKListView(0, v55);
  sub_2561E3CC4(v32, v23);
  sub_2561EDF60();
  (*(v43 + 1))(v23, v20);
  v33 = v42[0];
  *&v55[0] = v20;
  *(&v55[0] + 1) = v24;
  v34 = swift_getOpaqueTypeConformance2();
  v35 = *(v33 + 16);
  *&v44 = v31;
  v35(v31, v29, v25);
  v36 = *(v33 + 8);
  *(&v44 + 1) = v29;
  v36(v29, v25);
  if (sub_2561E46E4(v32))
  {
    v43 = v35;
    sub_2561E51E4(v32, v55);
    v51[12] = v55[12];
    v51[13] = v55[13];
    v51[14] = v55[14];
    *&v51[15] = *&v55[15];
    v51[8] = v55[8];
    v51[9] = v55[9];
    v51[10] = v55[10];
    v51[11] = v55[11];
    v51[4] = v55[4];
    v51[5] = v55[5];
    v51[6] = v55[6];
    v51[7] = v55[7];
    v51[0] = v55[0];
    v51[1] = v55[1];
    v51[2] = v55[2];
    v51[3] = v55[3];
    v37 = sub_2561EDE50();
    LOBYTE(v53[0]) = 1;
    v38 = sub_2561EDE50();
    LOBYTE(v52[0]) = 1;
    sub_2561EE1F0();
    sub_2561EDBE0();
    *&v47[55] = *&v53[63];
    *&v47[71] = *&v53[65];
    *&v47[87] = *&v53[67];
    *&v47[103] = v54;
    *&v47[7] = *&v53[57];
    *&v47[23] = *&v53[59];
    *&v47[39] = *&v53[61];
    *&v53[4] = v51[2];
    *&v53[6] = v51[3];
    *v53 = v51[0];
    *&v53[2] = v51[1];
    *&v53[12] = v51[6];
    *&v53[14] = v51[7];
    *&v53[8] = v51[4];
    *&v53[10] = v51[5];
    *&v53[20] = v51[10];
    *&v53[22] = v51[11];
    *&v53[16] = v51[8];
    *&v53[18] = v51[9];
    v53[30] = *&v51[15];
    *&v53[26] = v51[13];
    *&v53[28] = v51[14];
    *&v53[24] = v51[12];
    LOBYTE(v53[31]) = v37;
    memset(&v53[32], 0, 32);
    LOBYTE(v53[36]) = 1;
    LOBYTE(v53[37]) = v38;
    memset(&v53[38], 0, 32);
    v35 = v43;
    LOBYTE(v53[42]) = 1;
    *(&v53[50] + 1) = *&v47[64];
    *(&v53[52] + 1) = *&v47[80];
    *(&v53[54] + 1) = *&v47[96];
    *(&v53[42] + 1) = *v47;
    *(&v53[44] + 1) = *&v47[16];
    *(&v53[46] + 1) = *&v47[32];
    *(&v53[48] + 1) = *&v47[48];
    v53[56] = *(&v54 + 1);
    nullsub_1(v53);
    memcpy(v55, v53, 0x1C8uLL);
  }

  else
  {
    v39.n128_f64[0] = sub_2561ED118(v55);
  }

  v40 = v44;
  (v35)(*(&v44 + 1), v44, v25, v39);
  v52[0] = *(&v40 + 1);
  memcpy(v51, v55, 0x1C8uLL);
  v52[1] = v51;
  sub_2561D7E98(v55, v53, &qword_27F8305C8, &unk_2561EFD20);
  v50[0] = v25;
  v50[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8305C8, &unk_2561EFD20);
  v48 = v34;
  v49 = sub_2561ED164();
  sub_2561E28B8(v52, 2uLL, v50);
  sub_2561D8584(v55, &qword_27F8305C8, &unk_2561EFD20);
  v36(v40, v25);
  memcpy(v53, v51, 0x1C8uLL);
  sub_2561D8584(v53, &qword_27F8305C8, &unk_2561EFD20);
  return (v36)(*(&v40 + 1), v25);
}

uint64_t sub_2561E5DC8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v12[0] = v2[2];
  v5 = v12[0];
  v12[1] = v6;
  v12[2] = v7;
  v12[3] = v8;
  v9 = *(type metadata accessor for OBKListView(0, v12) - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_2561E47F8(a1, v10, v5, v6, v7, v8, a2);
}

unint64_t sub_2561E5E84()
{
  result = qword_27F8305D8;
  if (!qword_27F8305D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305D0, &qword_2561EFD30);
    sub_2561E5F10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8305D8);
  }

  return result;
}

unint64_t sub_2561E5F10()
{
  result = qword_27F8305E0;
  if (!qword_27F8305E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305E8, &qword_2561EFD38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305F0, &qword_2561EFD40);
    sub_2561E5FD8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8305E0);
  }

  return result;
}

unint64_t sub_2561E5FD8()
{
  result = qword_27F8305F8;
  if (!qword_27F8305F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305F0, &qword_2561EFD40);
    sub_2561E6064();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8305F8);
  }

  return result;
}

unint64_t sub_2561E6064()
{
  result = qword_27F830600;
  if (!qword_27F830600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830608, &qword_2561EFD48);
    sub_2561E1BB8(&qword_27F830610, qword_27F830618, &qword_2561EFD50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F830600);
  }

  return result;
}

uint64_t sub_2561E611C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v56 = a5;
  v54 = a4;
  v55 = a3;
  v50 = a1;
  v52 = a6;
  v51 = *(a3 - 1);
  v7 = *(v51 + 64);
  MEMORY[0x28223BE20](a1);
  v57 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830590, &qword_2561EFCF0);
  v49 = a2;
  sub_2561EDB60();
  sub_2561EDB60();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830598, &qword_2561EFCF8);
  sub_2561EDD00();
  sub_2561EE3D0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305A0, &qword_2561EFD00);
  swift_getTupleTypeMetadata2();
  sub_2561EE220();
  swift_getWitnessTable();
  sub_2561EE1B0();
  sub_2561EDB60();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305A8, &qword_2561EFD08);
  sub_2561EDB60();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305B0, &qword_2561EFD10);
  sub_2561EDB60();
  v9 = sub_2561EDB60();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305B8, &qword_2561EFD18);
  v10 = sub_2561EE1E0();
  v58 = *(v10 - 8);
  v11 = *(v58 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v53 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v43 - v14;
  v45 = &v43 - v14;
  v60 = a2;
  v61 = v55;
  v62 = v54;
  v63 = v56;
  v16 = v50;
  v64 = v50;
  WitnessTable = swift_getWitnessTable();
  v83 = MEMORY[0x277CDFC60];
  v17 = swift_getWitnessTable();
  v18 = sub_2561E1BB8(&qword_27F830880, &qword_27F8305A8, &qword_2561EFD08);
  v80 = v17;
  v81 = v18;
  v19 = swift_getWitnessTable();
  v47 = MEMORY[0x277CE04A0];
  v20 = sub_2561E1BB8(&qword_27F830888, &qword_27F8305B0, &qword_2561EFD10);
  v78 = v19;
  v79 = v20;
  v76 = swift_getWitnessTable();
  v77 = MEMORY[0x277CDF918];
  v21 = swift_getWitnessTable();
  v22 = sub_2561ECB80();
  v23 = v53;
  sub_2561E7278(sub_2561E687C, 0, sub_2561ECB68, v59, v9);
  v73 = v21;
  v74 = v22;
  v75 = MEMORY[0x277CE1410];
  v46 = swift_getWitnessTable();
  v24 = v58;
  v44 = *(v58 + 16);
  v44(v15, v23, v10);
  v25 = *(v24 + 8);
  v58 = v24 + 8;
  v48 = v25;
  v26 = v25(v23, v10);
  v27 = *(v16 + 56);
  v28 = v16;
  (*(v16 + 48))(v26);
  v29 = v49;
  v30 = v55;
  v69 = v49;
  v70 = v55;
  v31 = v54;
  v32 = v56;
  v71 = v54;
  v72 = v56;
  v33 = *(v28 + *(type metadata accessor for OBKListView(0, &v69) + 80));
  v34 = swift_allocObject();
  v34[2] = v29;
  v34[3] = v30;
  v34[4] = v31;
  v34[5] = v32;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8308A0, &qword_2561F0060);
  sub_2561EDB60();
  v35 = sub_2561E1BB8(&qword_27F830898, &qword_27F8308A0, &qword_2561F0060);
  v68[1] = v32;
  v68[2] = v35;
  swift_getWitnessTable();
  v36 = v33;
  v37 = v57;
  View.if<A>(_:content:)(v36, v30, &v69);

  (*(v51 + 8))(v37, v30);
  v38 = v69;
  v39 = v53;
  v40 = v45;
  v44(v53, v45, v10);
  v68[0] = v38;
  v69 = v39;
  v70 = v68;

  v67[0] = v10;
  v67[1] = MEMORY[0x277CE11C8];
  v65 = v46;
  v66 = MEMORY[0x277CE11C0];
  sub_2561E28B8(&v69, 2uLL, v67);

  v41 = v48;
  v48(v40, v10);

  return v41(v39, v10);
}

uint64_t sub_2561E687C@<X0>(uint64_t *a1@<X8>)
{
  sub_2561EE0D0();
  result = sub_2561EE1C0();
  *a1 = result;
  return result;
}

uint64_t sub_2561E68C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v50 = a3;
  v51 = a4;
  v41 = a1;
  v52 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8308A8, &qword_2561F0068);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v43 = &v41 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830590, &qword_2561EFCF0);
  sub_2561EDB60();
  sub_2561EDB60();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830598, &qword_2561EFCF8);
  sub_2561EDD00();
  sub_2561EE3D0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305A0, &qword_2561EFD00);
  swift_getTupleTypeMetadata2();
  sub_2561EE220();
  swift_getWitnessTable();
  sub_2561EE1B0();
  v11 = sub_2561EDB60();
  v45 = *(v11 - 8);
  v12 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v41 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305A8, &qword_2561EFD08);
  v15 = sub_2561EDB60();
  v47 = *(v15 - 8);
  v16 = *(v47 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v41 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305B0, &qword_2561EFD10);
  v19 = sub_2561EDB60();
  v49 = *(v19 - 8);
  v20 = *(v49 + 64);
  MEMORY[0x28223BE20](v19);
  v42 = &v41 - v21;
  v22 = sub_2561EDB60();
  v48 = *(v22 - 8);
  v23 = *(v48 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v44 = &v41 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v46 = &v41 - v26;
  *&v61 = a2;
  *(&v61 + 1) = v50;
  *&v62 = v51;
  *(&v62 + 1) = a5;
  v51 = type metadata accessor for OBKListView(0, &v61);
  sub_2561E6F7C(v51);
  v27 = sub_2561EDF10();
  v28 = v43;
  (*(*(v27 - 8) + 56))(v43, 1, 1, v27);
  WitnessTable = swift_getWitnessTable();
  v60 = MEMORY[0x277CDFC60];
  v29 = swift_getWitnessTable();
  sub_2561EE0A0();
  sub_2561D8584(v28, &qword_27F8308A8, &qword_2561F0068);
  (*(v45 + 8))(v14, v11);
  v30 = sub_2561E1BB8(&qword_27F830880, &qword_27F8305A8, &qword_2561EFD08);
  v61 = 0u;
  v62 = 0u;
  v63 = 0;
  v57 = v29;
  v58 = v30;
  v31 = swift_getWitnessTable();
  v32 = v42;
  sub_2561EDFD0();
  (*(v47 + 8))(v18, v15);
  sub_2561EDE70();
  sub_2561E7200(v51);
  v33 = sub_2561E1BB8(&qword_27F830888, &qword_27F8305B0, &qword_2561EFD10);
  v55 = v31;
  v56 = v33;
  v34 = swift_getWitnessTable();
  v35 = v44;
  sub_2561EE090();
  (*(v49 + 8))(v32, v19);
  v53 = v34;
  v54 = MEMORY[0x277CDF918];
  swift_getWitnessTable();
  v36 = v48;
  v37 = *(v48 + 16);
  v38 = v46;
  v37(v46, v35, v22);
  v39 = *(v36 + 8);
  v39(v35, v22);
  v37(v52, v38, v22);
  return (v39)(v38, v22);
}

uint64_t sub_2561E6F7C(uint64_t a1)
{
  v3 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830590, &qword_2561EFCF0);
  sub_2561EDB60();
  sub_2561EDB60();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830598, &qword_2561EFCF8);
  sub_2561EDD00();
  sub_2561EE3D0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305A0, &qword_2561EFD00);
  swift_getTupleTypeMetadata2();
  sub_2561EE220();
  swift_getWitnessTable();
  v4 = sub_2561EE1B0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10[-v7];
  sub_2561EDCB0();
  *(v1 + *(a1 + 84));
  v11 = v3;
  v12 = *(a1 + 24);
  v13 = *(a1 + 40);
  v14 = v1;
  sub_2561EE1A0();
  sub_2561EE1F0();
  swift_getWitnessTable();
  sub_2561EE080();
  return (*(v5 + 8))(v8, v4);
}

void sub_2561E7200(uint64_t a1)
{
  if ((*(v1 + *(a1 + 84)) & 1) == 0)
  {
    v2 = [objc_opt_self() mainScreen];
    [v2 bounds];
  }
}

uint64_t sub_2561E7278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(*(a5 - 8) + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v7(v6);
  return sub_2561EE1D0();
}

uint64_t sub_2561E7348@<X0>(uint64_t a1@<X4>, uint64_t a2@<X8>)
{
  v16[0] = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8308A0, &qword_2561F0060);
  v3 = sub_2561EDB60();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v16 - v9;
  v11 = [objc_opt_self() secondarySystemBackgroundColor];
  v16[3] = sub_2561EE0C0();
  sub_2561EE010();

  v12 = sub_2561E1BB8(&qword_27F830898, &qword_27F8308A0, &qword_2561F0060);
  v16[1] = a1;
  v16[2] = v12;
  swift_getWitnessTable();
  v13 = v4[2];
  v13(v10, v8, v3);
  v14 = v4[1];
  v14(v8, v3);
  v13(v16[0], v10, v3);
  return (v14)(v10, v3);
}

uint64_t sub_2561E7560(uint64_t *a1)
{
  v2 = *a1;
  sub_2561EE210();
  sub_2561EDB40();
}

double sub_2561E75DC(uint64_t a1)
{
  result = 40.0;
  if (!*(v1 + *(a1 + 84)))
  {
    return 15.0;
  }

  return result;
}

uint64_t sub_2561E75FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v119 = a3;
  v120 = a5;
  v135 = a4;
  v126 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8308B0, &qword_2561F0070);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v121 = &v111 - v10;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8305A0, &qword_2561EFD00);
  v11 = *(*(v123 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v123);
  v125 = &v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v122 = &v111 - v15;
  MEMORY[0x28223BE20](v14);
  v124 = &v111 - v16;
  v17 = sub_2561EE110();
  v114 = *(v17 - 8);
  v18 = *(v114 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v111 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a2 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  v25 = &v111 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830590, &qword_2561EFCF0);
  v130 = a2;
  v26 = sub_2561EDB60();
  v115 = *(v26 - 8);
  v27 = *(v115 + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v111 - v28;
  v30 = sub_2561EDB60();
  v117 = *(v30 - 8);
  v31 = *(v117 + 64);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v111 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v116 = &v111 - v35;
  v118 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830598, &qword_2561EFCF8);
  v131 = sub_2561EDD00();
  v36 = sub_2561EE3D0();
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x28223BE20](v36);
  v39 = MEMORY[0x28223BE20](v38);
  v42 = *(a1 + 32);
  v127 = v30;
  v128 = v26;
  v133 = v39;
  v134 = v43;
  v132 = &v111 - v44;
  v129 = v40;
  if (v42)
  {
    v45 = v41[5];
    v113 = v41;
    v114 = v45;

    v42(v46);
    sub_2561EDB50();
    sub_2561ECF5C();
    v112 = v42;
    v47 = v29;
    v48 = v130;
    v49 = v135;
    sub_2561EDFF0();
    (*(v22 + 8))(v25, v48);
    sub_2561EE1F0();
    v50 = sub_2561E1BB8(&qword_27F8308B8, &qword_27F830590, &qword_2561EFCF0);
    v140 = v49;
    v141 = v50;
    WitnessTable = swift_getWitnessTable();
    sub_2561EE070();
    (*(v115 + 8))(v47, v26);
    v138 = WitnessTable;
    v139 = MEMORY[0x277CDF678];
    v52 = swift_getWitnessTable();
    v54 = v116;
    v53 = v117;
    v55 = *(v117 + 16);
    v55(v116, v34, v30);
    v56 = *(v53 + 8);
    v56(v34, v30);
    v55(v34, v54, v30);
    v57 = v113;
    v58 = sub_2561ECC74();
    v59 = v129;
    sub_2561E2A88(v34, v30);
    sub_2561ECFB0(v112);
    v56(v34, v30);
    v56(v54, v30);
    (*(*(v131 - 8) + 56))(v59, 0, 1, v131);
    v136 = v52;
    v137 = v58;
    swift_getWitnessTable();
    v60 = v133;
    v61 = v134;
    v117 = *(v134 + 16);
    (v117)(v132, v59, v133);
    v118 = *(v61 + 8);
    v118(v59, v60);
    v62 = v130;
    v63 = v135;
  }

  else
  {
    v64 = v114;
    v65 = v135;
    if (v41[31])
    {
      v66 = v41[30];
      v67 = v40;
      v68 = v41;
      v69 = v41[31];

      sub_2561EE100();
      (*(v64 + 104))(v21, *MEMORY[0x277CE0FE0], v17);
      v70 = sub_2561EE120();

      (*(v64 + 8))(v21, v17);
      sub_2561EDB50();
      sub_2561EE1F0();
      sub_2561EDB30();
      LOBYTE(v164) = 1;
      *&v150[22] = v162;
      *&v150[38] = v163;
      *&v150[6] = v161;
      v148 = v70;
      *v149 = 1;
      *&v149[2] = *v150;
      *&v149[18] = *&v150[16];
      *&v149[34] = *&v150[32];
      v57 = v68;
      *&v149[48] = *(&v163 + 1);
      v71 = sub_2561E1BB8(&qword_27F8308B8, &qword_27F830590, &qword_2561EFCF0);
      v146 = v65;
      v147 = v71;
      v144 = swift_getWitnessTable();
      v145 = MEMORY[0x277CDF678];
      v72 = v127;
      v73 = swift_getWitnessTable();
      v74 = sub_2561ECC74();
      sub_2561E2B80(&v148, v72, v118);
      v166 = *&v149[16];
      v167 = *&v149[32];
      *&v168 = *&v149[48];
      v164 = v148;
      v165 = *v149;
      sub_2561D8584(&v164, &qword_27F830598, &qword_2561EFCF8);
      (*(*(v131 - 8) + 56))(v67, 0, 1, v131);
      v142 = v73;
      v143 = v74;
      v63 = v65;
      swift_getWitnessTable();
      v76 = v133;
      v75 = v134;
      v117 = *(v134 + 16);
      (v117)(v132, v67, v133);
      v118 = *(v75 + 8);
      v118(v67, v76);
    }

    else
    {
      v77 = v40;
      v57 = v41;
      (*(*(v131 - 8) + 56))(v40, 1, 1, v131);
      v78 = sub_2561E1BB8(&qword_27F8308B8, &qword_27F830590, &qword_2561EFCF0);
      v79 = v65;
      v160[6] = v65;
      v160[7] = v78;
      v160[4] = swift_getWitnessTable();
      v160[5] = MEMORY[0x277CDF678];
      v80 = swift_getWitnessTable();
      v81 = sub_2561ECC74();
      v160[2] = v80;
      v160[3] = v81;
      swift_getWitnessTable();
      v83 = v133;
      v82 = v134;
      v117 = *(v134 + 16);
      (v117)(v132, v77, v133);
      v63 = v79;
      v118 = *(v82 + 8);
      v118(v77, v83);
    }

    v62 = v130;
  }

  v84 = v62;
  v86 = v119;
  v85 = v120;
  *&v164 = v62;
  *(&v164 + 1) = v119;
  v87 = v63;
  *&v165 = v63;
  *(&v165 + 1) = v120;
  v88 = v57;
  v89 = *(v57 + *(type metadata accessor for OBKListView(0, &v164) + 84));
  v90 = v121;
  if (v89 == 1)
  {
    v91 = sub_2561EDCC0();
    v92 = 0;
  }

  else
  {
    v92 = 0x4020000000000000;
    v91 = sub_2561EDCB0();
  }

  *v90 = v91;
  *(v90 + 1) = v92;
  v90[16] = 0;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8308E8, &qword_2561F0088);
  sub_2561E83E0(v88, v84, v86, v87, v85, &v90[*(v93 + 44)]);
  if (v89)
  {
    sub_2561EE200();
  }

  else
  {
    sub_2561EE1F0();
  }

  sub_2561EDBE0();
  v94 = v90;
  v95 = v122;
  sub_2561ECE3C(v94, v122, &qword_27F8308B0, &qword_2561F0070);
  v96 = v123;
  v97 = (v95 + *(v123 + 36));
  v98 = v169;
  v97[4] = v168;
  v97[5] = v98;
  v97[6] = v170;
  v99 = v165;
  *v97 = v164;
  v97[1] = v99;
  v100 = v167;
  v97[2] = v166;
  v97[3] = v100;
  v101 = v124;
  sub_2561ECE3C(v95, v124, &qword_27F8305A0, &qword_2561EFD00);
  v102 = v133;
  v103 = v129;
  v104 = v132;
  (v117)(v129, v132, v133);
  *&v148 = v103;
  v105 = v125;
  sub_2561D7E98(v101, v125, &qword_27F8305A0, &qword_2561EFD00);
  *(&v148 + 1) = v105;
  v160[0] = v102;
  v160[1] = v96;
  v106 = sub_2561E1BB8(&qword_27F8308B8, &qword_27F830590, &qword_2561EFCF0);
  v156 = v135;
  v157 = v106;
  v154 = swift_getWitnessTable();
  v155 = MEMORY[0x277CDF678];
  v107 = swift_getWitnessTable();
  v108 = sub_2561ECC74();
  v152 = v107;
  v153 = v108;
  v151 = swift_getWitnessTable();
  v158 = swift_getWitnessTable();
  v159 = sub_2561ECEA4();
  sub_2561E28B8(&v148, 2uLL, v160);
  sub_2561D8584(v101, &qword_27F8305A0, &qword_2561EFD00);
  v109 = v118;
  v118(v104, v102);
  sub_2561D8584(v105, &qword_27F8305A0, &qword_2561EFD00);
  return v109(v103, v102);
}

uint64_t sub_2561E83E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v63 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830908, &qword_2561F0090);
  v65 = *(v11 - 8);
  v66 = v11;
  v12 = *(v65 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v64 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v67 = &v60 - v15;
  v16 = a1[1];
  v68 = *a1;
  v69 = v16;
  v17 = sub_2561EBCE4();

  v61 = v17;
  v18 = sub_2561EDF50();
  v20 = v19;
  v22 = v21;
  v68 = a2;
  v69 = a3;
  v70 = a4;
  v71 = a5;
  LODWORD(v62) = *(a1 + *(type metadata accessor for OBKListView(0, &v68) + 84));
  if (v62 == 1)
  {
    sub_2561EDEC0();
  }

  else
  {
    sub_2561EDEA0();
  }

  v23 = sub_2561EDF30();
  v25 = v24;
  v27 = v26;
  v29 = v28;

  sub_2561DA350(v18, v20, v22 & 1);

  v30 = v62;
  v31 = v62 ^ 1;
  KeyPath = swift_getKeyPath();
  v68 = v23;
  v69 = v25;
  v27 &= 1u;
  LOBYTE(v70) = v27;
  v71 = v29;
  v72 = KeyPath;
  v73 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830910, &qword_2561F0098);
  sub_2561ECFC0();
  sub_2561EE060();
  sub_2561DA350(v23, v25, v27);

  v33 = a1[3];
  if (v33)
  {
    v68 = a1[2];
    v69 = v33;

    v34 = sub_2561EDF50();
    v36 = v35;
    v38 = v37;
    if (v30)
    {
      sub_2561EDEC0();
    }

    else
    {
      sub_2561EDEB0();
    }

    v43 = sub_2561EDF30();
    v45 = v44;
    v47 = v46;
    v49 = v48;

    sub_2561DA350(v34, v36, v38 & 1);

    v41 = swift_getKeyPath();
    v39 = v47 & 1;
    v61 = v45;
    v62 = v43;
    sub_2561EB9B4(v43, v45, v39);
    v40 = v49;

    v42 = v31;
  }

  else
  {
    v61 = 0;
    v62 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
  }

  v51 = v64;
  v50 = v65;
  v52 = *(v65 + 16);
  v53 = v66;
  v52(v64, v67, v66);
  v54 = v63;
  v52(v63, v51, v53);
  v55 = &v54[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830930, &qword_2561F00A8) + 48)];
  v57 = v61;
  v56 = v62;
  sub_2561ED078(v62, v61, v39, v40);
  sub_2561ED0C8(v56, v57, v39, v40);
  *v55 = v56;
  *(v55 + 1) = v57;
  *(v55 + 2) = v39;
  *(v55 + 3) = v40;
  *(v55 + 4) = v41;
  v55[40] = v42;
  v58 = *(v50 + 8);
  v58(v67, v53);
  sub_2561ED0C8(v56, v57, v39, v40);
  return (v58)(v51, v53);
}

uint64_t sub_2561E87F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830368, &qword_2561EFCE0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v28 - v14;
  v28 = a2;
  v29 = a3;
  v30 = a4;
  v31 = a5;
  v16 = type metadata accessor for OBKListView(0, &v28);
  sub_2561D7E98(a1 + *(v16 + 76), v15, &qword_27F830368, &qword_2561EFCE0);
  v17 = type metadata accessor for OBKCaption();
  LODWORD(a5) = (*(*(v17 - 8) + 48))(v15, 1, v17);
  sub_2561D8584(v15, &qword_27F830368, &qword_2561EFCE0);
  if (a5 == 1)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 16711680;
    if (*(a1 + 72))
    {
      goto LABEL_3;
    }

LABEL_9:
    v24 = 1;
    if (!*(a1 + 160))
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  sub_2561E8AD8(v16, &v28);
  v18 = v28;
  v19 = v29;
  v20 = v30;
  v21 = v31;
  v22 = v32;
  if (v34)
  {
    v25 = 0x10000;
  }

  else
  {
    v25 = 0;
  }

  v23 = v25 | v33;
  sub_2561EBA50(v28, v29, v30, v31, v32, v33, v34, sub_2561EB96C, sub_2561EB9C4);
  if (!*(a1 + 72))
  {
    goto LABEL_9;
  }

LABEL_3:
  sub_2561E9360(a1, *(v16 + 16), *(v16 + 24), *(v16 + 32), *(v16 + 40), &v28);
  v24 = v28;

  if (!*(a1 + 160))
  {
    goto LABEL_11;
  }

LABEL_10:
  if ((sub_2561E2CE0(v16) & 1) == 0)
  {
    sub_2561EA310(a1, *(v16 + 16), *(v16 + 24), *(v16 + 32), *(v16 + 40), &v28);
    v26 = v28;

    goto LABEL_13;
  }

LABEL_11:
  v26 = 1;
LABEL_13:
  sub_2561EB910(v18, v19, v20, v21, v22, v23);
  sub_2561EB9D4(v24);
  sub_2561EB9D4(v26);
  sub_2561EB9E4(v24);
  sub_2561EB9F4(v18, v19, v20, v21, v22, v23);
  sub_2561EB9E4(v26);
  *a6 = v18;
  *(a6 + 8) = v19;
  *(a6 + 16) = v20;
  *(a6 + 24) = v21;
  *(a6 + 32) = v22;
  *(a6 + 42) = BYTE2(v23);
  *(a6 + 40) = v23;
  *(a6 + 48) = v24;
  *(a6 + 56) = v26;
  sub_2561EB9E4(v26);
  sub_2561EB9E4(v24);
  return sub_2561EB9F4(v18, v19, v20, v21, v22, v23);
}

double sub_2561E8AD8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2561E8B34(v2, a1[2], a1[3], a1[4], a1[5], v9);
  v4 = v10;
  v5 = v11;
  v6 = v12;
  result = *v9;
  v8 = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = v8;
  *(a2 + 32) = v4;
  *(a2 + 40) = v5;
  *(a2 + 42) = v6;
  return result;
}

double sub_2561E8B34@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_2561ED970();
  v84 = *(v12 - 8);
  v13 = *(v84 + 64);
  MEMORY[0x28223BE20](v12);
  v83 = &v80[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830368, &qword_2561EFCE0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v80[-v17];
  *&v91 = a2;
  *(&v91 + 1) = a3;
  *&v92 = a4;
  *(&v92 + 1) = a5;
  v19 = type metadata accessor for OBKListView(0, &v91);
  v20 = *(v19 + 76);
  v85 = a1;
  sub_2561D7E98(a1 + v20, v18, &qword_27F830368, &qword_2561EFCE0);
  v21 = type metadata accessor for OBKCaption();
  if ((*(*(v21 - 8) + 48))(v18, 1, v21) == 1)
  {
    v86 = 0uLL;
    LOBYTE(v87) = 1;
    sub_2561EB850();
    sub_2561EDCF0();
    v86 = v91;
    v88 = 0;
    v87 = v92;
    v89 = 0;
    v90 = 1;
LABEL_12:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8306D8, &qword_2561EFEE8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8306E0, &qword_2561EFEF0);
    sub_2561EBAC8();
    sub_2561EBC04();
    sub_2561EDCF0();
    goto LABEL_13;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v24 = *v18;
  v23 = *(v18 + 1);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      *&v86 = *v18;
      *(&v86 + 1) = v23;
      LOBYTE(v87) = 0;
      sub_2561EB850();
      sub_2561EDCF0();
      v86 = v91;
      v88 = 0;
      v87 = v92;
      v89 = 0;
      v90 = 1;
      goto LABEL_12;
    }

    v25 = *(v18 + 2);
    v81 = v18[24];
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830418, &qword_2561EF3B8);
    v27 = *(v84 + 32);
    v28 = &v18[*(v26 + 64)];
    v82 = v12;
    v27(v83, v28, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830718, &qword_2561EFF08);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_2561EF950;
    v30 = MEMORY[0x277D837D0];
    *(v29 + 56) = MEMORY[0x277D837D0];
    v31 = sub_2561EBC90();
    *(v29 + 64) = v31;
    *(v29 + 32) = v24;
    *(v29 + 40) = v23;
    v32 = sub_2561ED930();
    *(v29 + 96) = v30;
    *(v29 + 104) = v31;
    *(v29 + 72) = v32;
    *(v29 + 80) = v33;
    sub_2561EE2C0();
    sub_2561EDED0();
    v34 = sub_2561EDF30();
    v36 = v35;
    v38 = v37;

    if ((v81 & 1) != 0 || v25 != 2)
    {
      v39 = sub_2561EE0F0();
    }

    else
    {
      v39 = sub_2561EE0E0();
    }

    *&v91 = v39;
    v55 = sub_2561EDF00();
    v57 = v56;
    v59 = v58;
    v60 = v34;
    v62 = v61;
    sub_2561DA350(v60, v36, v38 & 1);

    v63 = (*(v85 + *(v19 + 84)) & 1) == 0;
    KeyPath = swift_getKeyPath();
    *&v86 = v55;
    *(&v86 + 1) = v57;
    *&v87 = v59 & 1;
    *(&v87 + 1) = v62;
    v88 = KeyPath;
    LOBYTE(v89) = v63;
    HIBYTE(v89) = 1;
    sub_2561EB9B4(v55, v57, v59 & 1);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8306F8, &qword_2561EFEF8);
    sub_2561EBB4C();
    sub_2561EDCF0();
    if (HIBYTE(v94))
    {
      v65 = 256;
    }

    else
    {
      v65 = 0;
    }

    v86 = v91;
    v87 = v92;
    v88 = v93;
    v89 = v65 | v94;
    v90 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8306D8, &qword_2561EFEE8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8306E0, &qword_2561EFEF0);
    sub_2561EBAC8();
    sub_2561EBC04();
    sub_2561EDCF0();
    sub_2561DA350(v55, v57, v59 & 1);

    (*(v84 + 8))(v83, v82);
  }

  else
  {
    v82 = *(v18 + 2);
    LODWORD(v83) = v18[24];
    *&v91 = v24;
    *(&v91 + 1) = v23;
    sub_2561EBCE4();
    v40 = sub_2561EDF50();
    v42 = v41;
    v44 = v43;
    sub_2561EDED0();
    v45 = sub_2561EDF30();
    v84 = v46;
    v48 = v47;

    sub_2561DA350(v40, v42, v44 & 1);

    if ((v83 & 1) != 0 || v82 != 2)
    {
      v49 = sub_2561EE0F0();
    }

    else
    {
      v49 = sub_2561EE0E0();
    }

    *&v91 = v49;
    v66 = v45;
    v67 = v84;
    v68 = sub_2561EDF00();
    v83 = v69;
    v71 = v70;
    v73 = v72;
    sub_2561DA350(v66, v67, v48 & 1);

    v74 = (*(v85 + *(v19 + 84)) & 1) == 0;
    v75 = swift_getKeyPath();
    *&v86 = v68;
    *(&v86 + 1) = v83;
    *&v87 = v71 & 1;
    *(&v87 + 1) = v73;
    v88 = v75;
    v89 = v74;
    v76 = v68;
    v77 = v68;
    v78 = v83;
    sub_2561EB9B4(v76, v83, v71 & 1);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8306F8, &qword_2561EFEF8);
    sub_2561EBB4C();
    sub_2561EDCF0();
    if (HIBYTE(v94))
    {
      v79 = 256;
    }

    else
    {
      v79 = 0;
    }

    v86 = v91;
    v87 = v92;
    v88 = v93;
    v89 = v79 | v94;
    v90 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8306D8, &qword_2561EFEE8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8306E0, &qword_2561EFEF0);
    sub_2561EBAC8();
    sub_2561EBC04();
    sub_2561EDCF0();
    sub_2561DA350(v77, v78, v71 & 1);
  }

LABEL_13:
  result = *&v91;
  v51 = v92;
  v52 = v93;
  v53 = v94;
  v54 = v95;
  *a6 = v91;
  *(a6 + 16) = v51;
  *(a6 + 32) = v52;
  *(a6 + 40) = v53;
  *(a6 + 42) = v54;
  return result;
}
uint64_t sub_24B85F044()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

void *_s12FlowFrameKit17IllegalStateErrorVwCP_0(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

void *_s12FlowFrameKit17IllegalStateErrorVwta_0(void *a1, void *a2)
{
  v3 = a2[1];
  v4 = a1[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t sub_24B85F110()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24B85F148()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24B85F188()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_24B85F25C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B86D954();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24B85F2C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B86D954();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24B85F338(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24B86D904();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24B85F3E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24B86D904();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24B85F488()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24B85F4C0()
{
  v1 = *(v0 + 48);
  if (v1 != 255)
  {
    sub_24B86C2E8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v1 & 1);
  }

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_24B85F510()
{
  v1 = *(v0 + 48);
  if (v1 != 255)
  {
    if (v1)
    {
      MEMORY[0x24C24CCF0](*(v0 + 16));
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
    }
  }

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_24B85F564()
{
  v1 = *(v0 + 24);
  if (v1 != 255)
  {
    sub_24B85F5E4(*(v0 + 16), v1 & 1);
  }

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

void *sub_24B85F5B4(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void sub_24B85F5E4(uint64_t a1, char a2)
{
  if (a2)
  {
    JUMPOUT(0x24C24CCF0);
  }
}

uint64_t Understandable.hashValue.getter()
{
  v1 = *v0;
  sub_24B86DE34();
  MEMORY[0x24C24CAA0](v1);
  return sub_24B86DE54();
}

uint64_t sub_24B85F6A8()
{
  v1 = *v0;
  sub_24B86DE34();
  MEMORY[0x24C24CAA0](v1);
  return sub_24B86DE54();
}

uint64_t sub_24B85F71C()
{
  v1 = *v0;
  sub_24B86DE34();
  MEMORY[0x24C24CAA0](v1);
  return sub_24B86DE54();
}

uint64_t sub_24B85F790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  (*(*(a2 - 8) + 8))(a1, a2);
  return v6;
}

void sub_24B85F7FC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27[1] = a5;
  v28 = a3;
  v29 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = sub_24B86DCB4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = (MEMORY[0x28223BE20])();
  v18 = v27 - v17;
  v19 = *(AssociatedTypeWitness - 8);
  v20 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v16);
  v22 = v27 - v21;
  sub_24B860C6C(a1, &v30);
  v23 = swift_dynamicCast();
  v24 = *(v19 + 56);
  if (v23)
  {
    v24(v18, 0, 1, AssociatedTypeWitness);
    (*(v19 + 32))(v22, v18, AssociatedTypeWitness);
    (*(a8 + 56))(v22, a2, v28, v29, a7, a8);
    (*(v19 + 8))(v22, AssociatedTypeWitness);
  }

  else
  {
    v24(v18, 1, 1, AssociatedTypeWitness);
    (*(v14 + 8))(v18, v13);
    sub_24B861378();
    v25 = swift_allocError();
    *v26 = 0xD00000000000001BLL;
    v26[1] = 0x800000024B86ED60;
    v30 = v25;
    v31 = 1;
    v28(&v30);
    sub_24B85F5E4(v30, v31);
  }
}

uint64_t sub_24B85FAAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v17 = &v21[-v16];
  sub_24B860C6C(a1, v21);
  swift_dynamicCast();
  v18 = swift_allocObject();
  v18[2] = a5;
  v18[3] = a6;
  v18[4] = a7;
  v18[5] = a2;
  v18[6] = a3;
  v19 = *(a7 + 64);

  v19(v17, sub_24B8612C0, v18, a6, a7);

  return (*(v14 + 8))(v17, AssociatedTypeWitness);
}

uint64_t sub_24B85FC48(uint64_t a1, void (*a2)(uint64_t *))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v18[-1] - v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0617E8, &qword_24B86E4E0);
  v9 = sub_24B86DE64();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v18[-1] - v11);
  (*(v13 + 16))(&v18[-1] - v11, a1, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18[0] = *v12;
    v14 = v18[0];
    v19 = 1;
    MEMORY[0x24C24CD00](v18[0]);
    a2(v18);
    MEMORY[0x24C24CCF0](v14);
  }

  else
  {
    (*(v5 + 32))(v8, v12, AssociatedTypeWitness);
    v18[3] = AssociatedTypeWitness;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v18);
    (*(v5 + 16))(boxed_opaque_existential_0, v8, AssociatedTypeWitness);
    v19 = 0;
    a2(v18);
    (*(v5 + 8))(v8, AssociatedTypeWitness);
  }

  return sub_24B861318(v18, &qword_27F0617F0, &qword_24B86E4E8);
}

uint64_t sub_24B85FEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = a4;
  v26 = a5;
  v24 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v16 = &v23 - v15;
  v17 = swift_getAssociatedTypeWitness();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v23 - v20;
  sub_24B860C6C(a1, v28);
  swift_dynamicCast();
  sub_24B860C6C(a2, v27);
  swift_dynamicCast();
  (*(a8 + 72))(v21, v16, v24, v25, a7, a8);
  (*(v13 + 8))(v16, AssociatedTypeWitness);
  return (*(v18 + 8))(v21, v17);
}

uint64_t sub_24B8600C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = &v15[-v11];
  sub_24B860C6C(a1, v15);
  swift_dynamicCast();
  v13 = *(a3 + 80);
  a4[3] = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_0(a4);
  v13(v12, a2, a3);
  return (*(v9 + 8))(v12, AssociatedTypeWitness);
}

uint64_t sub_24B860238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(v5 + 32);
  v11 = *(v5 + 40);
  v15[3] = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v15);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_0, a1, a5);
  v12(v15, a2, a3, a4);
  return __swift_destroy_boxed_opaque_existential_0Tm(v15);
}

uint64_t sub_24B8602E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v4 + 48);
  v9 = *(v4 + 56);
  v13[3] = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v13);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_0, a1, a4);
  v10(v13, a2, a3);
  return __swift_destroy_boxed_opaque_existential_0Tm(v13);
}

uint64_t sub_24B860388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(v5 + 64);
  v11 = *(v5 + 72);
  v15[3] = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v15);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_0, a1, a5);
  v12(v15, a2, a3, a4);
  return __swift_destroy_boxed_opaque_existential_0Tm(v15);
}

uint64_t sub_24B860438(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 80);
  v5 = *(v2 + 88);
  v9[3] = a2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v9);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_0, a1, a2);
  v6(v9);
  return __swift_destroy_boxed_opaque_existential_0Tm(v9);
}

unint64_t sub_24B8604D0()
{
  v1 = v0;
  sub_24B86DD14();

  MEMORY[0x24C24C6C0](v1[12], v1[13]);
  MEMORY[0x24C24C6C0](0x7073656D616E202CLL, 0xED0000203A656361);
  MEMORY[0x24C24C6C0](v1[2], v1[3]);
  MEMORY[0x24C24C6C0](41, 0xE100000000000000);
  return 0xD000000000000018;
}

uint64_t sub_24B860584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24B86DCB4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  sub_24B860C6C(v2 + 112, v15);
  v10 = swift_dynamicCast();
  v11 = *(*(a1 - 8) + 56);
  if (v10)
  {
    v12 = *(a1 - 8);
    v11(v9, 0, 1, a1);
    (*(v12 + 32))(a2, v9, a1);
    v13 = 0;
  }

  else
  {
    v13 = 1;
    v11(v9, 1, 1, a1);
    (*(v6 + 8))(v9, v5);
  }

  return v11(a2, v13, 1, a1);
}

void *AnyFrame.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 14);
  return v0;
}

uint64_t AnyFrame.__deallocating_deinit()
{
  AnyFrame.deinit();

  return MEMORY[0x2821FE8D8](v0, 144, 7);
}

void *sub_24B8607E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v37 = *v3;
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v11;
  MEMORY[0x28223BE20](v10);
  v15 = &v33 - v14;
  v4[17] = v16;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v4 + 14);
  v18 = *(v8 + 16);
  v18(boxed_opaque_existential_0, a1, a2);
  v40 = v18;
  v18(v15, a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0617D8, &qword_24B86E4D0);
  if (swift_dynamicCast())
  {
    sub_24B861218(v41, v43);
    v35 = v43[4];
    __swift_project_boxed_opaque_existential_1(v43, v43[3]);
    v4[12] = sub_24B86DDC4();
    v4[13] = v19;
    __swift_destroy_boxed_opaque_existential_0Tm(v43);
  }

  else
  {
    v42 = 0;
    memset(v41, 0, sizeof(v41));
    sub_24B861318(v41, &qword_27F0617E0, &qword_24B86E4D8);
    v43[0] = swift_getDynamicType();
    swift_getMetatypeMetadata();
    v4[12] = sub_24B86DA44();
    v4[13] = v20;
  }

  v4[2] = (*(a3 + 48))(a2, a3);
  v4[3] = v21;
  v40(v12, a1, a2);
  v36 = v8 + 16;
  v34 = *(v8 + 80);
  v22 = (v34 + 40) & ~v34;
  v23 = swift_allocObject();
  v38 = a1;
  v39 = a3;
  v35 = *(v37 + 80);
  v23[2] = v35;
  v23[3] = a2;
  v23[4] = a3;
  v24 = v13;
  v37 = *(v8 + 32);
  (v37)(v23 + v22, v12, a2);
  v4[4] = sub_24B861098;
  v4[5] = v23;
  v25 = v40;
  v40(v12, a1, a2);
  v33 = v24;
  v26 = swift_allocObject();
  v26[2] = v35;
  v26[3] = a2;
  v26[4] = v39;
  (v37)(v26 + v22, v12, a2);
  v4[6] = sub_24B8610D8;
  v4[7] = v26;
  v25(v12, v38, a2);
  v27 = swift_allocObject();
  v28 = v35;
  v27[2] = v35;
  v27[3] = a2;
  v29 = v39;
  v27[4] = v39;
  v30 = v37;
  (v37)(v27 + v22, v12, a2);
  v4[8] = sub_24B861118;
  v4[9] = v27;
  v40(v12, v38, a2);
  v31 = swift_allocObject();
  *(v31 + 2) = v28;
  *(v31 + 3) = a2;
  *(v31 + 4) = v29;
  v30(&v31[v22], v12, a2);
  v4[10] = sub_24B8611D8;
  v4[11] = v31;
  return v4;
}

void *sub_24B860C10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 80);
  type metadata accessor for AnyFrame();
  swift_allocObject();
  return sub_24B8607E0(a1, a2, a3);
}

uint64_t sub_24B860C6C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_24B860CCC()
{
  result = qword_27F061750[0];
  if (!qword_27F061750[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F061750);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Understandable(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Understandable(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

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

uint64_t objectdestroyTm()
{
  v1 = *(*(v0 + 24) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24B8611D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[2];
  v4 = *(*(v2[3] - 8) + 80);
  return sub_24B8600C0(a1, v2[3], v2[4], a2);
}

uint64_t sub_24B861218(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_24B8612C0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 48);
  return sub_24B85FC48(a1, *(v1 + 40));
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

uint64_t sub_24B861318(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_24B861378()
{
  result = qword_27F0617F8[0];
  if (!qword_27F0617F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F0617F8);
  }

  return result;
}

uint64_t NonUnderstanding.localizedDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_24B861464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  v8 = type metadata accessor for NonUnderstanding();
  v9 = *(*(a4 - 8) + 32);
  v10 = a5 + *(v8 + 28);

  return v9(v10, a3, a4);
}

uint64_t TimedOutError.message.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_24B86153C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *sub_24B8615D8(void *a1, void *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  if (v6 <= 7 && (*(v5 + 80) & 0x100000) == 0 && ((-17 - v6) | v6) - *(v5 + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    v10 = a2[1];
    *a1 = *a2;
    a1[1] = v10;
    v11 = a2 + v6 + 16;
    v12 = *(v5 + 16);

    v12((a1 + v6 + 16) & ~v6, v11 & ~v6, v4);
  }

  else
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  return a1;
}

uint64_t sub_24B8616E4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);

  v5 = *(*(a2 + 16) - 8);
  v6 = *(v5 + 8);
  v7 = (a1 + *(v5 + 80) + 16) & ~*(v5 + 80);

  return v6(v7);
}

void *sub_24B861758(void *a1, void *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 16);
  v7 = *(*(v5 - 8) + 80);
  v8 = a2 + v7 + 16;

  v6((a1 + v7 + 16) & ~v7, v8 & ~v7, v5);
  return a1;
}

void *sub_24B8617E8(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = a1[1];
  a1[1] = a2[1];

  v7 = *(*(a3 + 16) - 8);
  (*(v7 + 24))((a1 + *(v7 + 80) + 16) & ~*(v7 + 80), (a2 + *(v7 + 80) + 16) & ~*(v7 + 80));
  return a1;
}

_OWORD *sub_24B861880(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 32))((a1 + *(v4 + 80) + 16) & ~*(v4 + 80), (a2 + *(v4 + 80) + 16) & ~*(v4 + 80));
  return a1;
}

void *sub_24B8618F0(void *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  v7 = a1[1];
  *a1 = *a2;
  a1[1] = v6;

  v8 = *(*(a3 + 16) - 8);
  (*(v8 + 40))((a1 + *(v8 + 80) + 16) & ~*(v8 + 80), (a2 + *(v8 + 80) + 16) & ~*(v8 + 80));
  return a1;
}

uint64_t sub_24B861978(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_24B861AFC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

void *sub_24B861D74(void *a1, void *a2)
{
  *a1 = *a2;
  v3 = a1[1];
  a1[1] = a2[1];

  return a1;
}

uint64_t sub_24B861DB8(uint64_t a1, int a2)
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

uint64_t sub_24B861E00(uint64_t result, int a2, int a3)
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

uint64_t AnyFlowFrameFactory.namespace.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_24B861EB0()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  return v1();
}

uint64_t sub_24B861ED8()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  return v1();
}

uint64_t AnyFlowFrameFactory.__allocating_init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  AnyFlowFrameFactory.init<A>(_:)(a1, a2, a3);
  return v6;
}

uint64_t *AnyFlowFrameFactory.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v23 = a1;
  v26 = *v4;
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4[2] = (*(v11 + 32))(v12, v11);
  v4[3] = v13;
  v25 = *(v8 + 16);
  v25(v10, a1, a2);
  v14 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v22[1] = v9;
  v15 = swift_allocObject();
  v26 = *(v26 + 80);
  *(v15 + 2) = v26;
  *(v15 + 3) = a2;
  *(v15 + 4) = a3;
  v24 = *(v8 + 32);
  v24(&v15[v14], v10, a2);
  v4[8] = sub_24B8622BC;
  v4[9] = v15;
  v16 = v23;
  v25(v10, v23, a2);
  v17 = swift_allocObject();
  *(v17 + 2) = v26;
  *(v17 + 3) = a2;
  *(v17 + 4) = a3;
  v24(&v17[v14], v10, a2);
  v4[10] = sub_24B862358;
  v4[11] = v17;
  v25(v10, v16, a2);
  v18 = swift_allocObject();
  *(v18 + 2) = v26;
  *(v18 + 3) = a2;
  *(v18 + 4) = a3;
  v19 = v24;
  v24(&v18[v14], v10, a2);
  v4[4] = sub_24B8623B8;
  v4[5] = v18;
  v19(v10, v23, a2);
  v20 = swift_allocObject();
  *(v20 + 2) = v26;
  *(v20 + 3) = a2;
  *(v20 + 4) = a3;
  v19(&v20[v14], v10, a2);
  v4[6] = sub_24B862424;
  v4[7] = v20;
  return v4;
}

uint64_t sub_24B862238@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v6 = *(a2 + 40);
  a3[3] = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_0(a3);
  return v6(a1, a2);
}

uint64_t sub_24B8622D4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v6 = *(a2 + 48);
  a3[3] = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_0(a3);
  return v6(a1, a2);
}

uint64_t sub_24B86248C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1() & 1;
}

uint64_t sub_24B8624B8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  return v1();
}

void *AnyFlowFrameFactory.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  return v0;
}

uint64_t AnyFlowFrameFactory.__deallocating_deinit()
{
  AnyFlowFrameFactory.deinit();

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

uint64_t sub_24B86270C()
{
  v0 = sub_24B86D934();
  __swift_allocate_value_buffer(v0, qword_28151B890);
  __swift_project_value_buffer(v0, qword_28151B890);
  if (qword_28151B420 != -1)
  {
    swift_once();
  }

  v1 = qword_28151B8A8;
  return sub_24B86D944();
}

uint64_t sub_24B862798()
{
  sub_24B862800();
  result = sub_24B86DCA4();
  qword_28151B8A8 = result;
  return result;
}

unint64_t sub_24B862800()
{
  result = qword_28151B390;
  if (!qword_28151B390)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28151B390);
  }

  return result;
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t FrameOperationType.hashValue.getter()
{
  v1 = *v0;
  sub_24B86DE34();
  MEMORY[0x24C24CAA0](v1);
  return sub_24B86DE54();
}

_BYTE *FrameOperation.init(type:next:onChildFrameCompletion:requireInput:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = *result;
  *(a5 + 8) = a2;
  *(a5 + 24) = a3;
  *(a5 + 16) = a4;
  return result;
}

uint64_t static FrameOperation.ongoing(requireInput:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 24) = 0;
  *(a2 + 16) = result;
  return result;
}

uint64_t AnyChildCompletion.__allocating_init<A, B>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a1;
  v9[5] = a2;
  *(v8 + 16) = sub_24B863310;
  *(v8 + 24) = v9;
  return v8;
}

uint64_t static FrameOperation.ongoing(next:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = a1;
  *(a2 + 24) = 0;
  *(a2 + 16) = 0;
}

void static FrameOperation.complete()(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
}

uint64_t static FrameOperation.complete(next:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 1;
  *(a2 + 8) = a1;
  *(a2 + 24) = 0;
  *(a2 + 16) = 0;
}

uint64_t static FrameOperation.replan(requireInput:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 2;
  *(a2 + 8) = 0;
  *(a2 + 24) = 0;
  *(a2 + 16) = result;
  return result;
}

void *sub_24B862ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, char a4@<W4>, uint64_t a5@<X8>)
{
  type metadata accessor for AnyFrame();
  result = sub_24B860C10(a1, a2, a3);
  *a5 = a4;
  *(a5 + 8) = result;
  *(a5 + 24) = 0;
  *(a5 + 16) = 0;
  return result;
}

uint64_t sub_24B862B54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, char a7@<W7>, uint64_t a8@<X8>)
{
  type metadata accessor for AnyFrame();
  v16 = sub_24B860C10(a1, a4, a6);
  type metadata accessor for AnyChildCompletion();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = swift_allocObject();
  v19 = swift_allocObject();
  v19[2] = a5;
  v19[3] = AssociatedTypeWitness;
  v19[4] = a2;
  v19[5] = a3;
  *(v18 + 16) = sub_24B863310;
  *(v18 + 24) = v19;
  *a8 = a7;
  *(a8 + 8) = v16;
  *(a8 + 24) = v18;
  *(a8 + 16) = 0;
}

uint64_t static FrameOperation.replan(next:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 2;
  *(a2 + 8) = a1;
  *(a2 + 24) = 0;
  *(a2 + 16) = 0;
}

uint64_t AnyChildCompletion.init<A, B>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a1;
  v9[5] = a2;
  *(v4 + 16) = sub_24B863310;
  *(v4 + 24) = v9;
  return v4;
}

uint64_t sub_24B862CF4(uint64_t a1, uint64_t a2, void (*a3)(char *, char *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = a4;
  v38 = a3;
  v39 = a2;
  v9 = sub_24B86DCB4();
  v34 = *(v9 - 8);
  v35 = v9;
  v10 = *(v34 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v32 - v12;
  v14 = *(a6 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24B86DCB4();
  v33 = *(v18 - 8);
  v19 = *(v33 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v32 - v21;
  v23 = *(a5 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  v26 = &v32 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a1;
  sub_24B860C6C(a1, v40);
  v27 = swift_dynamicCast();
  v28 = *(v23 + 56);
  if (v27)
  {
    v28(v22, 0, 1, a5);
    (*(v23 + 32))(v26, v22, a5);
    sub_24B860C6C(v39, v40);
    if (swift_dynamicCast())
    {
      (*(v14 + 56))(v13, 0, 1, a6);
      (*(v14 + 32))(v17, v13, a6);
      v38(v26, v17);
      (*(v14 + 8))(v17, a6);
      return (*(v23 + 8))(v26, a5);
    }

    (*(v23 + 8))(v26, a5);
    (*(v14 + 56))(v13, 1, 1, a6);
    (*(v34 + 8))(v13, v35);
  }

  else
  {
    v28(v22, 1, 1, a5);
    (*(v33 + 8))(v22, v18);
  }

  v40[0] = 0;
  v40[1] = 0xE000000000000000;
  sub_24B86DD14();
  MEMORY[0x24C24C6C0](0xD00000000000001CLL, 0x800000024B86EE90);
  v30 = sub_24B86DE74();
  MEMORY[0x24C24C6C0](v30);

  MEMORY[0x24C24C6C0](0xD000000000000017, 0x800000024B86EEB0);
  v31 = sub_24B86DE74();
  MEMORY[0x24C24C6C0](v31);

  MEMORY[0x24C24C6C0](0xD000000000000011, 0x800000024B86EED0);
  sub_24B86DD94();
  MEMORY[0x24C24C6C0](0x20646E6120, 0xE500000000000000);
  sub_24B86DD94();
  result = sub_24B86DDA4();
  __break(1u);
  return result;
}

uint64_t sub_24B8631FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v7 = *(v3 + 24);
  v11[3] = a3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v11);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a1, a3);
  v8(v11, a2);
  return __swift_destroy_boxed_opaque_existential_0Tm(v11);
}

uint64_t AnyChildCompletion.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t AnyChildCompletion.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

unint64_t sub_24B863320()
{
  result = qword_27F061880[0];
  if (!qword_27F061880[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F061880);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FrameOperationType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FrameOperationType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_24B8634D4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t sub_24B863504(uint64_t a1)
{
  v2 = *(a1 + 8);

  v3 = *(a1 + 24);
}

uint64_t sub_24B863540(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t sub_24B863590(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  v5 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_24B86360C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  v5 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t sub_24B863664(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_24B8636C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_24B86377C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  sub_24B8637D4(a1, a2, a3);
  return v9;
}

uint64_t sub_24B8637D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = qword_28151B8C0;
  *(v3 + v7) = dispatch_semaphore_create(0);
  v8 = qword_28151B8B8;
  *(v3 + v8) = dispatch_semaphore_create(0);
  v9 = qword_28151B8C8;
  *(v3 + v9) = dispatch_semaphore_create(0);
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v10 = qword_28151B8B0;
  v11 = sub_24B86D954();
  (*(*(v11 - 8) + 32))(v3 + v10, a3, v11);
  *(v3 + qword_28151B8D0) = 0;
  return v3;
}

uint64_t sub_24B8638A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v70 = a1;
  v71 = a2;
  v74 = a4;
  v7 = sub_24B86D9C4();
  v72 = *(v7 - 8);
  v73 = v7;
  v8 = *(v72 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v68 - v12;
  if (qword_28151B398 != -1)
  {
    swift_once();
  }

  v14 = sub_24B86D934();
  __swift_project_value_buffer(v14, qword_28151B890);

  v15 = sub_24B86D924();
  v16 = sub_24B86DBF4();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v69 = v11;
    v18 = a3;
    v19 = v17;
    v20 = swift_slowAlloc();
    v75 = v20;
    *v19 = 136315138;
    v21 = *(v4 + 16);
    v22 = sub_24B8604D0();
    v24 = sub_24B86A3F4(v22, v23, &v75);

    *(v19 + 4) = v24;
    _os_log_impl(&dword_24B85E000, v15, v16, "FlowFrameRuntime MegaFrame.onInput. %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    MEMORY[0x24C24CEA0](v20, -1, -1);
    v25 = v19;
    a3 = v18;
    v11 = v69;
    MEMORY[0x24C24CEA0](v25, -1, -1);
  }

  v26 = qword_28151B8D0;
  if (*(v5 + qword_28151B8D0) == 1)
  {
    v27 = sub_24B86D924();
    v28 = sub_24B86DBF4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_24B85E000, v27, v28, "MegaFrame.onInput Cancelled before.", v29, 2u);
      MEMORY[0x24C24CEA0](v29, -1, -1);
    }

    v75 = 0;
    v76 = 0xE000000000000000;
    sub_24B86DD14();
    v30 = *(v5 + 16);
    v32 = *(v30 + 96);
    v31 = *(v30 + 104);

    v75 = v32;
    v76 = v31;
    MEMORY[0x24C24C6C0](0xD000000000000024, 0x800000024B86F220);
    v33 = v75;
    v34 = v76;
    sub_24B86C394();
    result = swift_allocError();
    v36 = result;
    *v37 = v33;
    v37[1] = v34;
    goto LABEL_21;
  }

  v38 = swift_allocObject();
  *(v38 + 16) = 0;
  *(v38 + 24) = -1;
  v39 = *(v5 + 16);
  v40 = swift_allocObject();
  v40[2] = a3;
  v40[3] = v5;
  v40[4] = v38;

  v41 = v71;
  v71 = v39;
  sub_24B860238(v70, v41, sub_24B86C564, v40, a3);

  v42 = sub_24B86D924();
  v43 = sub_24B86DBF4();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_24B85E000, v42, v43, "FlowFrameRuntime MegaFrame.onInput wait.", v44, 2u);
    MEMORY[0x24C24CEA0](v44, -1, -1);
  }

  v45 = *(v5 + qword_28151B8B8);
  sub_24B86D9B4();
  MEMORY[0x24C24C630](v11, v5 + qword_28151B8B0);
  v46 = *(v72 + 8);
  v47 = v11;
  v48 = v73;
  v46(v47, v73);
  sub_24B86DC74();
  v46(v13, v48);
  if (sub_24B86D964())
  {
    v49 = sub_24B86D924();
    v50 = sub_24B86DBF4();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_24B85E000, v49, v50, "FlowFrameRuntime MegaFrame.onInput wait timeout.", v51, 2u);
      MEMORY[0x24C24CEA0](v51, -1, -1);
    }

    v75 = 0;
    v76 = 0xE000000000000000;
    sub_24B86DD14();
    v53 = *(v71 + 96);
    v52 = *(v71 + 104);

    v75 = v53;
    v76 = v52;
    MEMORY[0x24C24C6C0](0xD000000000000015, 0x800000024B86F200);
    v54 = v75;
    v55 = v76;
    sub_24B86B240();
  }

  else
  {
    if (*(v5 + v26) != 1)
    {
      swift_beginAccess();
      v62 = *(v38 + 24);
      if (v62 != 255)
      {
        v36 = *(v38 + 16);
        sub_24B86C570(v36, v62 & 1);

        goto LABEL_22;
      }

      v64 = sub_24B86D924();
      v65 = sub_24B86DBF4();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        *v66 = 0;
        _os_log_impl(&dword_24B85E000, v64, v65, "MegaFrame.onInput result not set.", v66, 2u);
        MEMORY[0x24C24CEA0](v66, -1, -1);
      }

      sub_24B861378();
      v36 = swift_allocError();
      *v67 = 0xD000000000000020;
      v67[1] = 0x800000024B86F1A0;
      goto LABEL_20;
    }

    v56 = sub_24B86D924();
    v57 = sub_24B86DBF4();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_24B85E000, v56, v57, "FlowFrameRuntime MegaFrame.onInput Cancelled after.", v58, 2u);
      MEMORY[0x24C24CEA0](v58, -1, -1);
    }

    v75 = 0;
    v76 = 0xE000000000000000;
    sub_24B86DD14();
    v60 = *(v71 + 96);
    v59 = *(v71 + 104);

    v75 = v60;
    v76 = v59;
    MEMORY[0x24C24C6C0](0xD000000000000023, 0x800000024B86F1D0);
    v54 = v75;
    v55 = v76;
    sub_24B86C394();
  }

  v36 = swift_allocError();
  *v61 = v54;
  v61[1] = v55;
LABEL_20:

LABEL_21:
  LOBYTE(v62) = 1;
LABEL_22:
  v63 = v74;
  *v74 = v36;
  *(v63 + 8) = v62 & 1;
  return result;
}

uint64_t sub_24B86402C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *a2;
  swift_beginAccess();
  if (*(a3 + 24) != 255)
  {
    v8 = *(v7 + 80);
    sub_24B86AA54(0x7475706E496E6FuLL, 0xE700000000000000);
  }

  swift_beginAccess();
  v9 = *(a3 + 16);
  v10 = *(a3 + 24);
  if (v10 == 255)
  {
    sub_24B86C570(v5, v6);
  }

  else
  {
    v5 = *(a3 + 16);
    v6 = *(a3 + 24);
  }

  v11 = v6 & 1;
  swift_beginAccess();
  v12 = *(a3 + 16);
  *(a3 + 16) = v5;
  v13 = *(a3 + 24);
  *(a3 + 24) = v11;
  sub_24B86C57C(v9, v10);
  sub_24B86C594(v12, v13);
  v14 = *(a2 + qword_28151B8B8);
  return sub_24B86DC94();
}

uint64_t sub_24B864168@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v69 = a1;
  v70 = a2;
  v73 = a3;
  v5 = sub_24B86D9C4();
  v71 = *(v5 - 8);
  v72 = v5;
  v6 = *(v71 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v68 - v10;
  if (qword_28151B398 != -1)
  {
    swift_once();
  }

  v12 = sub_24B86D934();
  __swift_project_value_buffer(v12, qword_28151B890);

  v13 = sub_24B86D924();
  v14 = sub_24B86DBF4();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *&v77[0] = v16;
    *v15 = 136315138;
    v17 = *(v3 + 16);
    v18 = sub_24B8604D0();
    v20 = sub_24B86A3F4(v18, v19, v77);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_24B85E000, v13, v14, "FlowFrameRuntime MegaFrame.execute. %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    MEMORY[0x24C24CEA0](v16, -1, -1);
    MEMORY[0x24C24CEA0](v15, -1, -1);
  }

  v21 = qword_28151B8D0;
  if (*(v4 + qword_28151B8D0) != 1)
  {
    v32 = swift_allocObject();
    *(v32 + 16) = 0u;
    v33 = v32 + 16;
    *(v32 + 32) = 0u;
    *(v32 + 48) = -1;
    v34 = *(v4 + 16);
    v35 = swift_allocObject();
    v36 = v70;
    v35[2] = v70;
    v35[3] = v4;
    v35[4] = v32;

    v68 = v32;

    v70 = v34;
    sub_24B8602E8(v69, sub_24B86C440, v35, v36);

    v37 = sub_24B86D924();
    v38 = sub_24B86DBF4();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_24B85E000, v37, v38, "FlowFrameRuntime MegaFrame.execute wait.", v39, 2u);
      MEMORY[0x24C24CEA0](v39, -1, -1);
    }

    v40 = *(v4 + qword_28151B8C0);
    sub_24B86D9B4();
    MEMORY[0x24C24C630](v9, v4 + qword_28151B8B0);
    v41 = *(v71 + 8);
    v42 = v9;
    v43 = v72;
    v41(v42, v72);
    sub_24B86DC74();
    v41(v11, v43);
    if (sub_24B86D964())
    {
      v44 = sub_24B86D924();
      v45 = sub_24B86DBF4();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_24B85E000, v44, v45, "FlowFrameRuntime MegaFrame.execute wait timeout.", v46, 2u);
        MEMORY[0x24C24CEA0](v46, -1, -1);
      }

      *&v77[0] = 0;
      *(&v77[0] + 1) = 0xE000000000000000;
      sub_24B86DD14();
      v48 = *(v70 + 96);
      v47 = *(v70 + 104);

      *&v77[0] = v48;
      *(&v77[0] + 1) = v47;
      MEMORY[0x24C24C6C0](0xD000000000000015, 0x800000024B86F150);
      v50 = *(&v77[0] + 1);
      v49 = *&v77[0];
      sub_24B86B240();
    }

    else
    {
      v51 = *(v4 + v21);
      v52 = sub_24B86D924();
      v53 = sub_24B86DBF4();
      v54 = os_log_type_enabled(v52, v53);
      if (v51 != 1)
      {
        if (v54)
        {
          v62 = swift_slowAlloc();
          *v62 = 0;
          _os_log_impl(&dword_24B85E000, v52, v53, "FlowFrameRuntime MegaFrame.execute wait complete.", v62, 2u);
          MEMORY[0x24C24CEA0](v62, -1, -1);
        }

        swift_beginAccess();
        sub_24B86C44C(v33, &v74, &qword_27F061958, &unk_24B86EB68);
        if (v76 != 255)
        {
          v63 = v75;
          v77[0] = v74;
          v77[1] = v75;
          v61 = v76;
          v78 = v76;
          v60 = v73;
          *v73 = v74;
          v60[1] = v63;
          goto LABEL_21;
        }

        sub_24B861318(&v74, &qword_27F061958, &unk_24B86EB68);
        v64 = sub_24B86D924();
        v65 = sub_24B86DBF4();
        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          *v66 = 0;
          _os_log_impl(&dword_24B85E000, v64, v65, "MegaFrame.execute result not set.", v66, 2u);
          MEMORY[0x24C24CEA0](v66, -1, -1);
        }

        sub_24B861378();
        v58 = swift_allocError();
        *v67 = 0xD000000000000020;
        v67[1] = 0x800000024B86F120;
LABEL_20:
        v60 = v73;
        *v73 = v58;
        v61 = 1;
LABEL_21:
        *(v60 + 32) = v61;
      }

      if (v54)
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&dword_24B85E000, v52, v53, "FlowFrameRuntime MegaFrame.execute Cancelled after.", v55, 2u);
        MEMORY[0x24C24CEA0](v55, -1, -1);
      }

      *&v77[0] = 0;
      *(&v77[0] + 1) = 0xE000000000000000;
      sub_24B86DD14();
      v57 = *(v70 + 96);
      v56 = *(v70 + 104);

      *&v77[0] = v57;
      *(&v77[0] + 1) = v56;
      MEMORY[0x24C24C6C0](0xD000000000000023, 0x800000024B86F0C0);
      v50 = *(&v77[0] + 1);
      v49 = *&v77[0];
      sub_24B86C394();
    }

    v58 = swift_allocError();
    *v59 = v49;
    v59[1] = v50;
    goto LABEL_20;
  }

  v22 = sub_24B86D924();
  v23 = sub_24B86DBF4();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_24B85E000, v22, v23, "MegaFrame.execute Cancelled before.", v24, 2u);
    MEMORY[0x24C24CEA0](v24, -1, -1);
  }

  *&v77[0] = 0;
  *(&v77[0] + 1) = 0xE000000000000000;
  sub_24B86DD14();
  v25 = *(v4 + 16);
  v27 = *(v25 + 96);
  v26 = *(v25 + 104);

  *&v77[0] = v27;
  *(&v77[0] + 1) = v26;
  MEMORY[0x24C24C6C0](0xD000000000000024, 0x800000024B86F170);
  v28 = v77[0];
  sub_24B86C394();
  result = swift_allocError();
  *v30 = v28;
  v31 = v73;
  *v73 = result;
  *(v31 + 32) = 1;
  return result;
}

uint64_t sub_24B864964(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  swift_beginAccess();
  sub_24B86C44C(a3 + 16, v12, &qword_27F061958, &unk_24B86EB68);
  if (v13 == 255)
  {
    sub_24B861318(v12, &qword_27F061958, &unk_24B86EB68);
  }

  else
  {
    sub_24B861318(v12, &qword_27F061958, &unk_24B86EB68);
    v7 = *(v6 + 80);
    sub_24B86AA54(0x65747563657865uLL, 0xE700000000000000);
  }

  swift_beginAccess();
  sub_24B86C44C(a3 + 16, v10, &qword_27F061958, &unk_24B86EB68);
  if (v11 == 255)
  {
    sub_24B86C44C(a1, v12, &qword_27F0617F0, &qword_24B86E4E8);
    if (v11 != 255)
    {
      sub_24B861318(v10, &qword_27F061958, &unk_24B86EB68);
    }
  }

  else
  {
    v12[0] = v10[0];
    v12[1] = v10[1];
    v13 = v11;
  }

  swift_beginAccess();
  sub_24B86C4B4(v12, a3 + 16);
  v8 = *(a2 + qword_28151B8C0);
  return sub_24B86DC94();
}

uint64_t sub_24B864AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  if (qword_28151B398 != -1)
  {
    swift_once();
  }

  v8 = sub_24B86D934();
  __swift_project_value_buffer(v8, qword_28151B890);

  v9 = sub_24B86D924();
  v10 = sub_24B86DBF4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v56 = v12;
    *v11 = 136315138;
    v13 = *(v4 + 16);
    v14 = sub_24B8604D0();
    v16 = sub_24B86A3F4(v14, v15, &v56);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_24B85E000, v9, v10, "FlowFrameRuntime MegaFrame.action. %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x24C24CEA0](v12, -1, -1);
    MEMORY[0x24C24CEA0](v11, -1, -1);
  }

  v17 = qword_28151B8D0;
  if (*(v5 + qword_28151B8D0) == 1)
  {
    v18 = sub_24B86D924();
    v19 = sub_24B86DBF4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_24B85E000, v18, v19, "MegaFrame.action Cancelled before.", v20, 2u);
      MEMORY[0x24C24CEA0](v20, -1, -1);
    }

    v56 = 0;
    v57 = 0xE000000000000000;
    sub_24B86DD14();
    v21 = *(v5 + 16);
    v23 = *(v21 + 96);
    v22 = *(v21 + 104);

    v56 = v23;
    v57 = v22;
    MEMORY[0x24C24C6C0](0xD000000000000023, 0x800000024B86F0F0);
    v24 = v56;
    v25 = v57;
    sub_24B86C394();
    result = swift_allocError();
    *v27 = v24;
    v27[1] = v25;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
    *a4 = result;
    *(a4 + 8) = 0;
  }

  else
  {
    v28 = swift_allocObject();
    *(v28 + 16) = 0u;
    *(v28 + 32) = 0u;
    *(v28 + 48) = -1;
    v29 = *(v5 + 16);
    v30 = swift_allocObject();
    v30[2] = a3;
    v30[3] = v5;
    v30[4] = v28;

    sub_24B860388(a1, a2, sub_24B86C338, v30, a3);

    v31 = sub_24B86D924();
    v32 = sub_24B86DBF4();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_24B85E000, v31, v32, "FlowFrameRuntime MegaFrame.action wait.", v33, 2u);
      MEMORY[0x24C24CEA0](v33, -1, -1);
    }

    v34 = *(v5 + qword_28151B8C8);
    sub_24B86DC84();
    if (*(v5 + v17) == 1)
    {
      v35 = sub_24B86D924();
      v36 = sub_24B86DBF4();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_24B85E000, v35, v36, "MegaFrame.action Cancelled after.", v37, 2u);
        MEMORY[0x24C24CEA0](v37, -1, -1);
      }

      v56 = 0;
      v57 = 0xE000000000000000;
      sub_24B86DD14();
      v39 = *(v29 + 96);
      v38 = *(v29 + 104);

      v56 = v39;
      v57 = v38;
      MEMORY[0x24C24C6C0](0xD000000000000023, 0x800000024B86F0C0);
      v40 = v56;
      v41 = v57;
      sub_24B86C394();
      v42 = swift_allocError();
      *v43 = v40;
      v43[1] = v41;
    }

    else
    {
      swift_beginAccess();
      v44 = *(v28 + 48);
      if (v44 != 255)
      {
        v46 = *(v28 + 32);
        v45 = *(v28 + 40);
        v48 = *(v28 + 16);
        v47 = *(v28 + 24);
        v49 = v44 & 1;
        sub_24B86C344(v48, v47, v46, v45, v44 & 1);

        *a4 = v48;
        *(a4 + 8) = v47;
        *(a4 + 16) = v46;
        *(a4 + 24) = v45;
        *(a4 + 32) = v49;
        return result;
      }

      v50 = sub_24B86D924();
      v51 = sub_24B86DBF4();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_24B85E000, v50, v51, "MegaFrame.action result not set.", v52, 2u);
        MEMORY[0x24C24CEA0](v52, -1, -1);
      }

      sub_24B861378();
      v42 = swift_allocError();
      *v53 = 0xD00000000000001FLL;
      v53[1] = 0x800000024B86F0A0;
    }

    *a4 = v42;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
  }

  *(a4 + 32) = 1;
  return result;
}

uint64_t sub_24B8650A8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *a2;
  swift_beginAccess();
  if (*(a3 + 48) != 255)
  {
    v10 = *(v9 + 80);
    sub_24B86AA54(0x6E6F69746361uLL, 0xE600000000000000);
  }

  swift_beginAccess();
  v11 = *(a3 + 48);
  v25 = *(a3 + 24);
  v26 = *(a3 + 16);
  v23 = *(a3 + 40);
  v24 = *(a3 + 32);
  if (v11 == 255)
  {
    sub_24B86C344(v5, v4, v6, v7, v8);
    v22 = v7;
    v12 = v4;
    v13 = v6;
  }

  else
  {
    v5 = *(a3 + 16);
    v12 = *(a3 + 24);
    v13 = *(a3 + 32);
    v22 = *(a3 + 40);
    v8 = *(a3 + 48);
  }

  v14 = v8 & 1;
  swift_beginAccess();
  v15 = *(a3 + 16);
  v16 = *(a3 + 24);
  v18 = *(a3 + 32);
  v17 = *(a3 + 40);
  *(a3 + 16) = v5;
  *(a3 + 24) = v12;
  *(a3 + 32) = v13;
  *(a3 + 40) = v22;
  v19 = *(a3 + 48);
  *(a3 + 48) = v14;
  sub_24B86C3E8(v26, v25, v24, v23, v11);
  sub_24B86C414(v15, v16, v18, v17, v19);
  v20 = *(a2 + qword_28151B8C8);
  return sub_24B86DC94();
}

uint64_t sub_24B86523C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_28151B398 != -1)
  {
    swift_once();
  }

  v6 = sub_24B86D934();
  __swift_project_value_buffer(v6, qword_28151B890);

  v7 = sub_24B86D924();
  v8 = sub_24B86DBF4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315138;
    v11 = *(v2 + 16);
    v12 = sub_24B8604D0();
    v14 = sub_24B86A3F4(v12, v13, &v17);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_24B85E000, v7, v8, "FlowFrameRuntime MegaFrame.exit. %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x24C24CEA0](v10, -1, -1);
    MEMORY[0x24C24CEA0](v9, -1, -1);
  }

  v15 = *(v3 + 16);
  return sub_24B860438(a1, a2);
}

uint64_t sub_24B8653C0()
{
  v1 = v0;
  if (qword_28151B398 != -1)
  {
    swift_once();
  }

  v2 = sub_24B86D934();
  __swift_project_value_buffer(v2, qword_28151B890);

  v3 = sub_24B86D924();
  v4 = sub_24B86DBF4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315138;
    v7 = *(v0 + 16);
    v8 = sub_24B8604D0();
    v10 = sub_24B86A3F4(v8, v9, &v15);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_24B85E000, v3, v4, "FlowFrameRuntime MegaFrame.cancel. %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x24C24CEA0](v6, -1, -1);
    MEMORY[0x24C24CEA0](v5, -1, -1);
  }

  *(v1 + qword_28151B8D0) = 1;
  v11 = *(v1 + qword_28151B8B8);
  sub_24B86DC94();
  v12 = *(v1 + qword_28151B8C0);
  sub_24B86DC94();
  v13 = *(v1 + qword_28151B8C8);
  return sub_24B86DC94();
}

uint64_t sub_24B86555C()
{
  v1 = *v0;
  sub_24B86DD14();
  MEMORY[0x24C24C6C0](0xD000000000000015, 0x800000024B86F280);
  v2 = v0[2];
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);

  MEMORY[0x24C24C6C0](v3, v4);

  MEMORY[0x24C24C6C0](0x756F656D6974202CLL, 0xEB00000000203A74);
  sub_24B86D954();
  sub_24B86DD94();
  MEMORY[0x24C24C6C0](0x3A656D617266202CLL, 0xE900000000000020);
  v9 = v0[2];
  v5 = *(v1 + 80);
  type metadata accessor for AnyFrame();
  sub_24B86DDB4();
  MEMORY[0x24C24C6C0](0x636E61437369202CLL, 0xEF203A64656C6C65);
  if (*(v0 + qword_28151B8D0))
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (*(v0 + qword_28151B8D0))
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x24C24C6C0](v6, v7);

  return 0;
}

uint64_t sub_24B865718()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = qword_28151B8B0;
  v4 = sub_24B86D954();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t sub_24B8657FC()
{
  v0 = sub_24B86C6DC();

  return MEMORY[0x2821FE8D8](v0, 41, 7);
}

uint64_t sub_24B86582C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *(*(*a1 + 80) + 80);
  sub_24B865918(a1);
  *a2 = v5;
  a2[1] = v6;
  Strong = swift_weakLoadStrong();
  sub_24B865918(Strong);
  v9 = v8;
  v11 = v10;

  a2[2] = v9;
  a2[3] = v11;
  v12 = *(a1[2] + 16);
  v13 = v12[3];
  a2[4] = v12[2];
  a2[5] = v13;
  v14 = v12[13];
  a2[6] = v12[12];
  a2[7] = v14;

  a2[8] = sub_24B8659E4();
  v15 = a2 + *(type metadata accessor for InstrumentedCancellableStack.TrackedFrame() + 44);
  sub_24B86D914();
}

uint64_t sub_24B865918(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *(*(a1 + 16) + 16);

  v2 = sub_24B86DA14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F061940, &qword_24B86EB60);
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D84D38];
  *(v3 + 16) = xmmword_24B86E8C0;
  v5 = MEMORY[0x277D84D90];
  *(v3 + 56) = v4;
  *(v3 + 64) = v5;
  *(v3 + 32) = v2;
  sub_24B86DA34();

  return v2;
}

uint64_t sub_24B8659E4()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = sub_24B8659E4();

    result = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
    }
  }

  return result;
}

BOOL sub_24B865A2C()
{
  type metadata accessor for InstrumentedCancellableStack.TrackedFrame();
  v0 = sub_24B865A84();
  return v0 == sub_24B865A84();
}

uint64_t sub_24B865A84()
{
  sub_24B86DE34();
  v1 = *v0;
  v2 = v0[1];
  sub_24B86DA54();
  return sub_24B86DE54();
}

uint64_t sub_24B865AC8()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_24B86DA54();
}

uint64_t sub_24B865AD0(uint64_t a1)
{
  v2 = v1;
  v5 = v1[4];
  v4 = v1[5];

  MEMORY[0x24C24C6C0](58, 0xE100000000000000);
  v7 = v1[6];
  v6 = v1[7];
  MEMORY[0x24C24C6C0](v2[6], v2[7]);
  v8 = sub_24B865CCC(0, v5, v4);

  sub_24B86DC54();
  if (qword_28151B420 != -1)
  {
    swift_once();
  }

  v9 = *(a1 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F061940, &qword_24B86EB60);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_24B86E8D0;
  v11 = MEMORY[0x277D837D0];
  *(v10 + 56) = MEMORY[0x277D837D0];
  v12 = sub_24B86C25C();
  *(v10 + 32) = v5;
  *(v10 + 40) = v4;
  *(v10 + 96) = v11;
  *(v10 + 104) = v12;
  *(v10 + 64) = v12;
  *(v10 + 72) = v7;
  *(v10 + 80) = v6;
  v13 = v2[8];
  v14 = MEMORY[0x277D83C10];
  *(v10 + 136) = MEMORY[0x277D83B88];
  *(v10 + 144) = v14;
  *(v10 + 112) = v13;
  v15 = *v2;
  v16 = v2[1];
  *(v10 + 176) = v11;
  *(v10 + 184) = v12;
  *(v10 + 152) = v15;
  *(v10 + 160) = v16;
  v17 = v2[2];
  v18 = v2[3];
  *(v10 + 216) = v11;
  *(v10 + 224) = v12;
  v19 = MEMORY[0x277D84B78];
  *(v10 + 192) = v17;
  *(v10 + 200) = v18;
  v20 = MEMORY[0x277D84BC0];
  *(v10 + 256) = v19;
  *(v10 + 264) = v20;
  *(v10 + 232) = -v8;

  sub_24B86D8D4();
}

unint64_t sub_24B865CCC(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if ((a3 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return a1;
  }

  v7 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v7) = 1;
  }

  v8 = 4 << v7;
  v20 = a3 & 0xFFFFFFFFFFFFFFLL;
  v9 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
  result = 15;
  while (1)
  {
    v11 = result & 0xC;
    v12 = result;
    if (v11 == v8)
    {
      v16 = result;
      v12 = sub_24B86A99C(result, a2, a3);
      result = v16;
    }

    v13 = v12 >> 16;
    if (v12 >> 16 >= v4)
    {
      break;
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      v18 = result;
      v15 = sub_24B86DAA4();
      result = v18;
      if (v11 != v8)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if ((a3 & 0x2000000000000000) != 0)
      {
        v19[0] = a2;
        v19[1] = v20;
        v14 = v19;
      }

      else
      {
        v14 = v9;
        if ((a2 & 0x1000000000000000) == 0)
        {
          v17 = result;
          v14 = sub_24B86DD34();
          result = v17;
        }
      }

      v15 = *(v14 + v13);
      if (v11 != v8)
      {
LABEL_19:
        if ((a3 & 0x1000000000000000) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_20;
      }
    }

    result = sub_24B86A99C(result, a2, a3);
    if ((a3 & 0x1000000000000000) == 0)
    {
LABEL_8:
      result = (result & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_9;
    }

LABEL_20:
    if (v4 <= result >> 16)
    {
      goto LABEL_27;
    }

    result = sub_24B86DA84();
LABEL_9:
    a1 = (v15 + a1);
    if (4 * v4 == result >> 14)
    {
      return a1;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_24B865E60(uint64_t a1)
{
  sub_24B86DC44();
  if (qword_28151B420 != -1)
  {
    swift_once();
  }

  v3 = *(a1 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F061940, &qword_24B86EB60);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24B86E8C0;
  v6 = *v1;
  v5 = v1[1];
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_24B86C25C();
  *(v4 + 32) = v6;
  *(v4 + 40) = v5;

  sub_24B86D8D4();
}

uint64_t sub_24B865F98()
{
  sub_24B86DE34();
  sub_24B865AC8();
  return sub_24B86DE54();
}

uint64_t sub_24B865FEC()
{
  v1 = *(*v0 + 376);
  v2 = type metadata accessor for InstrumentedCancellableStack.TrackedFrame();
  v3 = sub_24B86DB34();
  if (sub_24B86DB54())
  {
    WitnessTable = swift_getWitnessTable();
    v5 = sub_24B86AD48(v3, v2, WitnessTable);
  }

  else
  {
    v5 = MEMORY[0x277D84FA0];
  }

  sub_24B86691C(v5);

  v6 = sub_24B86C6DC();
  v7 = *(v6 + 48);

  return v6;
}

uint64_t sub_24B8660B4()
{
  v0 = sub_24B865FEC();

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_24B8660E4()
{
  v7[2] = *(*v0 + 376);
  v1 = type metadata accessor for InstrumentedCancellableStack();
  v2 = type metadata accessor for InstrumentedCancellableStack.TrackedFrame();
  WitnessTable = swift_getWitnessTable();
  v7[5] = sub_24B866228(sub_24B86C2B0, v7, v1, v2, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v4);
  sub_24B86DB94();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v5 = sub_24B86DBC4();
  sub_24B86691C(v5);
}

uint64_t sub_24B866228(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52 = a8;
  v9 = v8;
  v67 = a2;
  v68 = a4;
  v66 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = *(AssociatedTypeWitness - 8);
  v15 = *(v61 + 64);
  v16 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v50 = &v49 - v17;
  v53 = a5;
  v51 = *(a5 - 8);
  v18 = *(v51 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v63 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v64 = &v49 - v21;
  v22 = sub_24B86DCB4();
  v54 = *(v22 - 8);
  v55 = v22;
  v23 = *(v54 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v57 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v49 - v27;
  v29 = *(*(a4 - 1) + 64);
  v30 = MEMORY[0x28223BE20](v26);
  v56 = &v49 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v62 = *(a3 - 1);
  v33 = *(v62 + 8);
  MEMORY[0x28223BE20](v32);
  v35 = &v49 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a6;
  v69 = swift_getAssociatedTypeWitness();
  v58 = *(v69 - 8);
  v36 = *(v58 + 64);
  MEMORY[0x28223BE20](v69);
  v38 = &v49 - v37;
  v39 = sub_24B86DAD4();
  v70 = sub_24B86DD74();
  v65 = sub_24B86DD84();
  sub_24B86DD54();
  (*(v62 + 2))(v35, v59, a3);
  v68 = v38;
  v62 = a3;
  result = sub_24B86DAC4();
  if (v39 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v39)
  {
    v41 = (v61 + 48);
    v42 = (v61 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_24B86DCC4();
      result = (*v41)(v28, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v66(v28, v64);
      if (v9)
      {
        (*(v58 + 8))(v68, v69);

        (*(v51 + 32))(v52, v64, v53);
        return (*v42)(v28, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v42)(v28, AssociatedTypeWitness);
      sub_24B86DD64();
      if (!--v39)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v43 = v57;
  sub_24B86DCC4();
  v44 = v43;
  v45 = v61;
  v46 = *(v61 + 48);
  v64 = (v61 + 48);
  v62 = v46;
  if (v46(v43, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v58 + 8))(v68, v69);
    (*(v54 + 8))(v44, v55);
    return v70;
  }

  else
  {
    v61 = *(v45 + 32);
    v47 = (v45 + 8);
    v48 = v50;
    while (1)
    {
      (v61)(v48, v44, AssociatedTypeWitness);
      v66(v48, v63);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v47)(v48, AssociatedTypeWitness);
      sub_24B86DD64();
      sub_24B86DCC4();
      if (v62(v44, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v47)(v48, AssociatedTypeWitness);
    (*(v58 + 8))(v68, v69);

    return (*(v51 + 32))(v52, v63, v53);
  }
}

uint64_t sub_24B86691C(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v1[6];
  v6 = *(v4 + 376);
  type metadata accessor for InstrumentedCancellableStack.TrackedFrame();

  swift_getWitnessTable();
  sub_24B86DBA4();

  sub_24B86DBB4();
  swift_getWitnessTable();
  sub_24B86DB04();

  v7 = v2[6];

  sub_24B86DBA4();
  sub_24B86DB04();

  v8 = v2[6];
  v2[6] = a1;
}

uint64_t sub_24B866AC4()
{
  sub_24B86C71C();

  return sub_24B8660E4();
}

uint64_t *sub_24B866AEC(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v2 = sub_24B86C74C(&v4, a2);
  sub_24B8660E4();
  return v2;
}

uint64_t *sub_24B866B28(uint64_t a1)
{
  v1 = sub_24B86C844(a1);
  sub_24B8660E4();
  return v1;
}

uint64_t *sub_24B866B54(uint64_t *a1)
{
  v1 = sub_24B86D728(a1);

  sub_24B8660E4();
  return v1;
}

void *sub_24B866BB8()
{
  v1 = *(*v0 + 376);
  type metadata accessor for InstrumentedCancellableStack.TrackedFrame();
  swift_getWitnessTable();
  *(v0 + 48) = sub_24B86D9E4();
  *(v0 + 40) = 0;

  return sub_24B86D0F0();
}

uint64_t RuntimeConfiguration.perFrameOperationTimeout.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24B86D954();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t RuntimeConfiguration.init()@<X0>(void *a1@<X8>)
{
  *a1 = 300;
  v2 = *MEMORY[0x277D85188];
  v3 = sub_24B86D954();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t RuntimeConfiguration.init(perFrameOperationTimeout:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24B86D954();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_24B866D8C(uint64_t a1)
{
  v2 = *(*v1 + 136);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
}

uint64_t sub_24B866DB0()
{
  v1 = *v0;
  v2 = *v0;
  v14 = *(v0 + *(*v0 + 120));
  v11[1] = *(v2 + 80);
  v12 = *(v1 + 96);
  v3 = type metadata accessor for CancellableStack();

  WitnessTable = swift_getWitnessTable();
  v6 = sub_24B866228(sub_24B86AA18, v11, v3, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v5);

  v14 = 0x203A73656D617246;
  v15 = 0xE90000000000005BLL;
  v13 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F061908, &qword_24B86E8E0);
  sub_24B86B41C(&qword_27F061910, &qword_27F061908, &qword_24B86E8E0);
  v7 = sub_24B86DA04();
  v9 = v8;

  MEMORY[0x24C24C6C0](v7, v9);

  MEMORY[0x24C24C6C0](93, 0xE100000000000000);
  return v14;
}

uint64_t sub_24B866F84@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(*(*a1 + 16) + 16);
  v5 = v4[2];
  v6 = v4[3];
  v8 = v4[12];
  v7 = v4[13];
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = *(*(Strong + 16) + 16);
    v17[3] = v2;
    v11 = v10[2];
    v12 = v10[3];
    v13 = v10[13];
    v16 = v10[12];
    v17[0] = 0;
    v17[1] = 0xE000000000000000;

    sub_24B86DD14();
    MEMORY[0x24C24C6C0](0x617073656D616E7BLL, 0xEC000000203A6563);
    MEMORY[0x24C24C6C0](v5, v6);

    MEMORY[0x24C24C6C0](0x203A656D616E202CLL, 0xE800000000000000);
    MEMORY[0x24C24C6C0](v8, v7);

    MEMORY[0x24C24C6C0](0xD000000000000016, 0x800000024B86F2A0);
    MEMORY[0x24C24C6C0](v11, v12);

    MEMORY[0x24C24C6C0](0x203A656D616E202CLL, 0xE800000000000000);
    MEMORY[0x24C24C6C0](v16, v13);

    MEMORY[0x24C24C6C0](32125, 0xE200000000000000);
  }

  else
  {

    sub_24B86DD14();

    strcpy(v17, "{namespace: ");
    BYTE5(v17[1]) = 0;
    HIWORD(v17[1]) = -5120;
    MEMORY[0x24C24C6C0](v5, v6);

    MEMORY[0x24C24C6C0](0x203A656D616E202CLL, 0xE800000000000000);
    MEMORY[0x24C24C6C0](v8, v7);

    result = MEMORY[0x24C24C6C0](0x746E65726170202CLL, 0xEE007D6C696E203ALL);
  }

  v15 = v17[1];
  *a2 = v17[0];
  a2[1] = v15;
  return result;
}

char *FlowFrameRuntime.__allocating_init(frameFactoryLoader:configuration:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + 48);
  v7 = *(v3 + 52);
  swift_allocObject();
  v8 = sub_24B86B104(a1, a2);
  (*(*(*(v3 + 88) - 8) + 8))(a1);
  return v8;
}

char *FlowFrameRuntime.init(frameFactoryLoader:configuration:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = sub_24B86B104(a1, a2);
  (*(*(*(v4 + 88) - 8) + 8))(a1);
  return v5;
}

void *sub_24B86730C()
{
  v1 = *(v0 + 80);
  type metadata accessor for InstrumentedCancellableStack();
  swift_allocObject();
  return sub_24B866BB8();
}

uint64_t sub_24B867348()
{
  v1 = sub_24B86D954();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = (&v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_24B86D9C4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v21 - v12;
  v14 = *(v0 + *(*v0 + 112));
  sub_24B86D9B4();
  *v5 = 250;
  (*(v2 + 104))(v5, *MEMORY[0x277D85178], v1);
  MEMORY[0x24C24C630](v11, v5);
  (*(v2 + 8))(v5, v1);
  v15 = *(v7 + 8);
  v15(v11, v6);
  LOBYTE(v5) = sub_24B86DC74();
  v15(v13, v6);
  if ((v5 & 1) == 0)
  {
    return sub_24B86DC94();
  }

  if (qword_28151B398 != -1)
  {
    swift_once();
  }

  v16 = sub_24B86D934();
  __swift_project_value_buffer(v16, qword_28151B890);
  v17 = sub_24B86D924();
  v18 = sub_24B86DC04();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_24B85E000, v17, v18, "FlowFrameRuntime is blocked: attempting to reset it.", v19, 2u);
    MEMORY[0x24C24CEA0](v19, -1, -1);
  }

  return sub_24B867620();
}

uint64_t sub_24B867620()
{
  v1 = v0;
  v2 = sub_24B86D904();
  v62 = *(v2 - 8);
  v63 = v2;
  v3 = *(v62 + 64);
  MEMORY[0x28223BE20](v2);
  v61 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_24B86D954();
  v5 = *(v72 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v72);
  v8 = (&v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v71 = sub_24B86D9C4();
  v9 = *(v71 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v71);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v61 - v14;
  if (qword_28151B398 != -1)
  {
    swift_once();
  }

  v16 = sub_24B86D934();
  v73 = __swift_project_value_buffer(v16, qword_28151B890);
  v17 = sub_24B86D924();
  v18 = sub_24B86DBF4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_24B85E000, v17, v18, "FlowFrameRuntime reset, cancel stack.", v19, 2u);
    MEMORY[0x24C24CEA0](v19, -1, -1);
  }

  *(*(v1 + *(*v1 + 120)) + 40) = 1;
  v20 = *(*v1 + 112);
  v70 = v1;
  v21 = *(v1 + v20);
  sub_24B86D9B4();
  *v8 = 250;
  v22 = v5[13];
  v66 = *MEMORY[0x277D85178];
  v23 = v72;
  v65 = v22;
  v22(v8);
  MEMORY[0x24C24C630](v13, v8);
  v24 = v5[1];
  v69 = v5 + 1;
  v64 = v24;
  v24(v8, v23);
  v25 = *(v9 + 8);
  v26 = v71;
  v25(v13, v71);
  v67 = v21;
  sub_24B86DC74();
  v68 = v9 + 8;
  v25(v15, v26);
  if ((sub_24B86D964() & 1) == 0)
  {
    goto LABEL_14;
  }

  v27 = sub_24B86D924();
  v28 = sub_24B86DBF4();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_24B85E000, v27, v28, "FlowFrameRuntime reset semaphone locked. Attempting cancel.", v29, 2u);
    MEMORY[0x24C24CEA0](v29, -1, -1);
  }

  v30 = *(*v70 + 136);
  if (*(v70 + v30))
  {
    v31 = *(v70 + v30);

    sub_24B8653C0();
  }

  sub_24B86D9B4();
  *v8 = 250;
  v32 = v72;
  v65(v8, v66, v72);
  MEMORY[0x24C24C630](v13, v8);
  v64(v8, v32);
  v33 = v71;
  v25(v13, v71);
  sub_24B86DC74();
  v25(v15, v33);
  if (sub_24B86D964())
  {
    v34 = v70;
    v35 = *(*v70 + 136);
    if (*(v70 + v35))
    {
      v36 = *(v70 + v35);

      v37 = sub_24B86D924();
      v38 = sub_24B86DC04();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v74 = v40;
        *v39 = 136315138;
        v41 = sub_24B86555C();
        v43 = sub_24B86A3F4(v41, v42, &v74);

        *(v39 + 4) = v43;
        _os_log_impl(&dword_24B85E000, v37, v38, "'%s' is stuck on the stack! This flow may not have exited properly by calling its completion handler", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v40);
        MEMORY[0x24C24CEA0](v40, -1, -1);
        MEMORY[0x24C24CEA0](v39, -1, -1);
      }

      else
      {
      }
    }

    v55 = sub_24B86D924();
    v56 = sub_24B86DBF4();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_24B85E000, v55, v56, "FlowFrameRuntime reset semaphone locked. Unable to continue.", v57, 2u);
      MEMORY[0x24C24CEA0](v57, -1, -1);
    }

    sub_24B86DC64();
    if (qword_28151B420 != -1)
    {
      swift_once();
    }

    v58 = v61;
    sub_24B86D8F4();
    sub_24B86D8E4();
    (*(v62 + 8))(v58, v63);
    sub_24B86B240();
    swift_allocError();
    *v59 = 0xD000000000000029;
    v59[1] = 0x800000024B86EF10;
    swift_willThrow();
    v60 = *(v34 + *(*v34 + 112));
    return sub_24B86DC94();
  }

  else
  {
LABEL_14:
    v44 = sub_24B86D924();
    v45 = sub_24B86DBF4();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_24B85E000, v44, v45, "FlowFrameRuntime reset, clear stack.", v46, 2u);
      MEMORY[0x24C24CEA0](v46, -1, -1);
    }

    v47 = v70;
    v48 = *(**(v70 + *(*v70 + 120)) + 200);

    v48(v49);

    v50 = sub_24B86D924();
    v51 = sub_24B86DBF4();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_24B85E000, v50, v51, "FlowFrameRuntime reset finished.", v52, 2u);
      MEMORY[0x24C24CEA0](v52, -1, -1);
    }

    v53 = *(v47 + *(*v47 + 112));
    return sub_24B86DC94();
  }
}

uint64_t sub_24B867EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v40 = a3;
  v41 = a1;
  v38 = a2;
  v42 = *v3;
  v5 = v42;
  v6 = sub_24B86D974();
  v47 = *(v6 - 8);
  v48 = v6;
  v7 = *(v47 + 64);
  MEMORY[0x28223BE20](v6);
  v45 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_24B86D9A4();
  v44 = *(v46 - 8);
  v9 = *(v44 + 64);
  v10 = MEMORY[0x28223BE20](v46);
  v43 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v5 + 80);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  v39 = &v38 - v15;
  v16 = sub_24B86D984();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28151B398 != -1)
  {
    swift_once();
  }

  v21 = sub_24B86D934();
  __swift_project_value_buffer(v21, qword_28151B890);
  v22 = sub_24B86D924();
  v23 = sub_24B86DBF4();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_24B85E000, v22, v23, "FlowFrameRuntime handle.", v24, 2u);
    MEMORY[0x24C24CEA0](v24, -1, -1);
  }

  v25 = swift_allocObject();
  v26 = v38;
  *(v25 + 2) = v4;
  *(v25 + 3) = v26;
  *(v25 + 4) = v40;
  *(*(v4 + *(*v4 + 120)) + 40) = 1;
  sub_24B86B2F0();
  (*(v17 + 104))(v20, *MEMORY[0x277D851B8], v16);

  v27 = sub_24B86DC34();
  (*(v17 + 8))(v20, v16);
  v28 = v39;
  (*(v13 + 16))(v39, v41, v12);
  v29 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v30 = swift_allocObject();
  *(v30 + 2) = v12;
  v31 = v42;
  *(v30 + 3) = *(v42 + 88);
  *(v30 + 4) = *(v31 + 96);
  *(v30 + 5) = v4;
  (*(v13 + 32))(&v30[v29], v28, v12);
  v32 = &v30[(v14 + v29 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v32 = sub_24B86B294;
  v32[1] = v25;
  aBlock[4] = sub_24B86B33C;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24B868858;
  aBlock[3] = &block_descriptor;
  v33 = _Block_copy(aBlock);

  v34 = v43;
  sub_24B86D994();
  v49 = MEMORY[0x277D84F90];
  sub_24B86B3C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F061930, &qword_24B86E8E8);
  sub_24B86B41C(&qword_27F061938, &qword_27F061930, &qword_24B86E8E8);
  v35 = v45;
  v36 = v48;
  sub_24B86DCD4();
  MEMORY[0x24C24C880](0, v34, v35, v33);
  _Block_release(v33);

  (*(v47 + 8))(v35, v36);
  (*(v44 + 8))(v34, v46);
}

uint64_t sub_24B8684A4(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v8 = *a1;
  v9 = *(*a1 + 80);
  v33 = *(v9 - 8);
  v10 = *(v33 + 64);
  MEMORY[0x28223BE20](a1);
  v32 = &v30 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0617E8, &qword_24B86E4E0);
  v12 = sub_24B86DE64();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (&v30 - v15);
  v17 = *(a1 + *(v8 + 112));
  sub_24B86DC84();
  *(*(a1 + *(*a1 + 120)) + 40) = 0;
  v34 = a2;
  v18 = sub_24B86889C(a2);
  v19 = v18;
  v21 = v20;
  if (v20)
  {
    *v16 = v18;
    swift_storeEnumTagMultiPayload();
    MEMORY[0x24C24CD00](v19);
    v22 = v16;
  }

  else
  {
    v30 = a4;
    v31 = a3;
    v35 = v18;
    type metadata accessor for MegaFrame();
    type metadata accessor for Node();
    sub_24B86DB94();
    swift_getWitnessTable();
    if (sub_24B86DBE4())
    {
      v23 = v32;
      (*(v33 + 16))(v32, v34, v9);
      type metadata accessor for NonUnderstanding();
      swift_getWitnessTable();
      v24 = swift_allocError();
      sub_24B861464(0xD000000000000024, 0x800000024B86F250, v23, v9, v25);
      *v16 = v24;
      swift_storeEnumTagMultiPayload();
      v31(v16);
      goto LABEL_8;
    }

    v26 = sub_24B869544(v19);
    a3 = v31;
    if (v27)
    {
      *v16 = v26;
      v28 = v26;
      swift_storeEnumTagMultiPayload();
      MEMORY[0x24C24CD00](v28);
      a3(v16);
      sub_24B85F5E4(v28, 1);
      goto LABEL_8;
    }

    (*(v33 + 16))(v16, v34, v9);
    swift_storeEnumTagMultiPayload();
    v22 = v16;
  }

  a3(v22);
LABEL_8:
  sub_24B86C5AC(v19, v21 & 1);
  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_24B868858(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_24B86889C(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v104 = v4;
  v96 = sub_24B86D954();
  v95 = *(v96 - 8);
  v5 = *(v95 + 64);
  MEMORY[0x28223BE20](v96);
  v97 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RuntimeConfiguration();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v94 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v4 + 80);
  v11 = type metadata accessor for MegaFrame();
  v12 = type metadata accessor for Node();
  v110 = sub_24B86DB34();
  if (qword_28151B398 != -1)
  {
    swift_once();
  }

  v13 = sub_24B86D934();
  v14 = __swift_project_value_buffer(v13, qword_28151B890);

  v100 = v14;
  v15 = sub_24B86D924();
  v16 = sub_24B86DBF4();
  v17 = os_log_type_enabled(v15, v16);
  v105 = a1;
  if (v17)
  {
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    *(v18 + 4) = *(*(v2 + *(*v2 + 120)) + 32);

    _os_log_impl(&dword_24B85E000, v15, v16, "FlowFrameRuntime onInput. Stack size %ld", v18, 0xCu);
    MEMORY[0x24C24CEA0](v18, -1, -1);
  }

  else
  {
  }

  v19 = *(v2 + *(*v2 + 120));
  v109 = sub_24B86C714();
  v103 = *(*v2 + 104);
  v98 = v11;
  v20 = type metadata accessor for NodeIterator();
  v21 = sub_24B86CDFC();
  if (v21)
  {
    v23 = v21;
    *&v22 = 136315138;
    v99 = v22;
    v101 = v20;
    v102 = v12;
    do
    {
      if ((*(*(v2 + *(*v2 + 120)) + 40) & 1) != 0 || (v106[0] = v110, sub_24B86DB94(), swift_getWitnessTable(), (sub_24B86DBE4() & 1) == 0))
      {
      }

      else
      {
        v24 = *(*(v23 + 16) + 16);
        v25 = *(v24 + 16);
        v26 = *(v24 + 24);
        v27 = v104;
        v28 = *(v104 + 96);
        v29 = *(v28 + 16);

        v29(v25, v26, *(v27 + 88), v28);

        sub_24B861EB0();
        v30 = *(*v2 + 136);
        v31 = *(v2 + v30);
        *(v2 + v30) = *(v23 + 16);

        v32 = *(v23 + 16);

        sub_24B8638A0(v106, v105, MEMORY[0x277D84F70] + 8, &v107);

        v33 = v107;
        LOBYTE(v32) = v108;
        v34 = *(*v2 + 136);
        v35 = *(v2 + v34);
        *(v2 + v34) = 0;

        if (v32)
        {

          __swift_destroy_boxed_opaque_existential_0Tm(v106);

          goto LABEL_45;
        }

        if (v33)
        {

          __swift_destroy_boxed_opaque_existential_0Tm(v106);
        }

        else
        {

          v36 = sub_24B86D924();
          v37 = sub_24B86DBF4();

          if (os_log_type_enabled(v36, v37))
          {
            v38 = swift_slowAlloc();
            v39 = swift_slowAlloc();
            v107 = v39;
            *v38 = v99;
            v40 = *(v23 + 16);
            v41 = sub_24B86555C();
            v43 = sub_24B86A3F4(v41, v42, &v107);

            *(v38 + 4) = v43;
            _os_log_impl(&dword_24B85E000, v36, v37, "FlowFrameRuntime found Understandable frame. %s", v38, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v39);
            MEMORY[0x24C24CEA0](v39, -1, -1);
            MEMORY[0x24C24CEA0](v38, -1, -1);
          }

          v107 = v23;

          sub_24B86DB64();

          __swift_destroy_boxed_opaque_existential_0Tm(v106);
        }
      }

      v23 = sub_24B86CDFC();
    }

    while (v23);
  }

  v44 = v110;
  v106[0] = v110;
  sub_24B86DB94();
  swift_getWitnessTable();
  v45 = sub_24B86DBE4();
  v46 = v105;
  if (v45 & 1) == 0 || (*(*(v2 + *(*v2 + 120)) + 40))
  {
    return v110;
  }

  v48 = sub_24B86C704();
  v49 = v98;
  if (!v48)
  {
    v50 = sub_24B86D924();
    v51 = sub_24B86DBF4();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_24B85E000, v50, v51, "FlowFrameRuntime found no frames supporting input. Clearing existing stack frames.", v52, 2u);
      MEMORY[0x24C24CEA0](v52, -1, -1);
    }

    v53 = *(**(v2 + *(*v2 + 120)) + 200);

    v53(v54);
  }

  if (!(*(*(v104 + 96) + 24))(v46, *(v104 + 88)))
  {
    v80 = sub_24B86D924();
    v81 = sub_24B86DC04();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&dword_24B85E000, v80, v81, "FlowFrameRuntime frameFactoryLoader.loadFactory failed.", v82, 2u);
      MEMORY[0x24C24CEA0](v82, -1, -1);
    }

    goto LABEL_39;
  }

  v55 = sub_24B8624B8();
  if (!v55)
  {
    v80 = sub_24B86D924();
    v83 = sub_24B86DC04();
    if (os_log_type_enabled(v80, v83))
    {
      v84 = swift_slowAlloc();
      *v84 = 0;
      _os_log_impl(&dword_24B85E000, v80, v83, "FlowFrameRuntime factory.makeFrameAbleToHandle failed.", v84, 2u);
      MEMORY[0x24C24CEA0](v84, -1, -1);
    }

LABEL_39:

    return v44;
  }

  v56 = v55;
  v57 = sub_24B86D924();
  v58 = sub_24B86DBF4();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = v56;
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&dword_24B85E000, v57, v58, "FlowFrameRuntime created frame to handle input.", v60, 2u);
    v61 = v60;
    v56 = v59;
    MEMORY[0x24C24CEA0](v61, -1, -1);
  }

  v62 = v94;
  sub_24B86C170(v2 + *(*v2 + 128), v94);
  v63 = v97;
  (*(v95 + 32))(v97, v62, v96);
  v64 = *(v49 + 48);
  v65 = *(v49 + 52);
  v66 = swift_allocObject();

  sub_24B8637D4(v67, 0, v63);
  v68 = *(*v2 + 136);
  v69 = *(v2 + v68);
  *(v2 + v68) = v66;

  sub_24B861EB0();
  sub_24B8638A0(v106, v46, MEMORY[0x277D84F70] + 8, &v107);
  __swift_destroy_boxed_opaque_existential_0Tm(v106);
  v33 = v107;
  LODWORD(v69) = v108;
  v70 = *(*v2 + 136);
  v71 = *(v2 + v70);
  *(v2 + v70) = 0;

  if (v69 != 1)
  {
    v85 = sub_24B86D924();
    if (v33)
    {
      v91 = sub_24B86DC04();
      if (!os_log_type_enabled(v85, v91))
      {

        goto LABEL_50;
      }

      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&dword_24B85E000, v85, v91, "FlowFrameRuntime frame created handle input does not understand input.", v92, 2u);
      MEMORY[0x24C24CEA0](v92, -1, -1);
    }

    else
    {
      v86 = sub_24B86DBF4();
      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        *v87 = 0;
        _os_log_impl(&dword_24B85E000, v85, v86, "FlowFrameRuntime frame created handle input understands input.", v87, 2u);
        MEMORY[0x24C24CEA0](v87, -1, -1);
      }

      v88 = *(v2 + *(*v2 + 120));
      v106[0] = v66;
      v89 = *(*v88 + 208);

      v90 = v89(v106, 0);

      v106[0] = v90;

      sub_24B86DB64();
    }

    sub_24B85F5E4(v33, 0);

LABEL_50:

    return v110;
  }

  MEMORY[0x24C24CD00](v33);
  v72 = sub_24B86D924();
  v73 = sub_24B86DC04();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v105 = v56;
    v76 = v75;
    v106[0] = v75;
    *v74 = 136315138;
    swift_getErrorValue();
    v77 = sub_24B86DDE4();
    v79 = sub_24B86A3F4(v77, v78, v106);

    *(v74 + 4) = v79;
    _os_log_impl(&dword_24B85E000, v72, v73, "FlowFrameRuntime error calling onInput for new frame. %s", v74, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v76);
    MEMORY[0x24C24CEA0](v76, -1, -1);
    MEMORY[0x24C24CEA0](v74, -1, -1);
  }

  sub_24B85F5E4(v33, 1);

LABEL_45:

  return v33;
}

uint64_t sub_24B869544(uint64_t a1)
{
  v2 = v1;
  v99 = *v1;
  v94 = sub_24B86D954();
  v4 = *(v94 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v94);
  v93 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RuntimeConfiguration();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v92 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28151B398 != -1)
  {
    swift_once();
  }

  v10 = sub_24B86D934();
  v11 = __swift_project_value_buffer(v10, qword_28151B890);

  v101 = v11;
  v12 = sub_24B86D924();
  v13 = sub_24B86DBF4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    v15 = *(v99 + 80);
    v16 = type metadata accessor for MegaFrame();
    type metadata accessor for Node();
    *(v14 + 4) = sub_24B86DB54();

    _os_log_impl(&dword_24B85E000, v12, v13, "FlowFrameRuntime action with understandableFrames count %ld.", v14, 0xCu);
    MEMORY[0x24C24CEA0](v14, -1, -1);

    v17 = v16;
  }

  else
  {

    v18 = *(v99 + 80);
    v17 = type metadata accessor for MegaFrame();
  }

  *&v112 = a1;
  v91 = v17;
  type metadata accessor for Node();
  sub_24B86DB94();
  swift_getWitnessTable();
  sub_24B86DBD4();
  v19 = *v2;
  v98 = *(*v2 + 104);
  v90 = *(v19 + 128);
  v20 = *(v2 + *(v19 + 120));
  if (!sub_24B86C704())
  {
    v89 = (v4 + 32);
    *&v21 = 136315138;
    v95 = v21;
    while ((*(*(v2 + *(*v2 + 120)) + 40) & 1) == 0)
    {
      v26 = v115;
      if (!v115)
      {
        if (!sub_24B86D450())
        {
          break;
        }
      }

      v115 = 0;
      v102 = v26;
      v27 = *(v26 + 16);
      swift_retain_n();
      v28 = sub_24B86D924();
      v29 = sub_24B86DBF4();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *&v112 = v31;
        *v30 = v95;
        v32 = sub_24B86555C();
        v34 = sub_24B86A3F4(v32, v33, &v112);

        *(v30 + 4) = v34;
        _os_log_impl(&dword_24B85E000, v28, v29, "FlowFrameRuntime action active frame. %s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v31);
        MEMORY[0x24C24CEA0](v31, -1, -1);
        MEMORY[0x24C24CEA0](v30, -1, -1);
      }

      v35 = *(v27 + 16);
      v36 = *(v35 + 16);
      v37 = *(v35 + 24);
      v38 = v99;
      v39 = *(v99 + 96);
      v40 = *(v39 + 16);

      v41 = *(v38 + 88);
      v42 = v40(v36, v37, v41, v39);

      sub_24B861EB0();
      sub_24B861ED8();
      v43 = *(*v2 + 136);
      v44 = *(v2 + v43);
      *(v2 + v43) = v27;
      swift_retain_n();

      v45 = MEMORY[0x277D84F70];
      sub_24B864168(&v114, MEMORY[0x277D84F70] + 8, &v112);
      v46 = *(*v2 + 136);
      v47 = *(v2 + v46);
      *(v2 + v46) = 0;

      sub_24B86C44C(&v112, &v107, &qword_27F0617F0, &qword_24B86E4E8);
      if (v110 == 1)
      {

        sub_24B861318(&v112, &qword_27F0617F0, &qword_24B86E4E8);
        __swift_destroy_boxed_opaque_existential_0Tm(&v113);
        __swift_destroy_boxed_opaque_existential_0Tm(&v114);
        return v107;
      }

      v96 = v41;
      v100 = v42;
      sub_24B86C160(&v107, &v111);
      v48 = *(*v2 + 136);
      v49 = *(v2 + v48);
      *(v2 + v48) = v27;

      v50 = v27;
      sub_24B864AFC(&v113, &v111, v45 + 8, &v107);
      v51 = v107;
      v52 = v108;
      v104 = v109;
      v53 = v110;
      v54 = *(*v2 + 136);
      v55 = *(v2 + v54);
      *(v2 + v54) = 0;

      if (v53 == 1)
      {

        __swift_destroy_boxed_opaque_existential_0Tm(&v111);
        sub_24B861318(&v112, &qword_27F0617F0, &qword_24B86E4E8);
        __swift_destroy_boxed_opaque_existential_0Tm(&v113);
        __swift_destroy_boxed_opaque_existential_0Tm(&v114);
        return v51;
      }

      v103 = v51;
      if (v51)
      {
        if (v51 == 1)
        {
          sub_24B86C344(v51, *(&v51 + 1), v52, v104, 0);

          sub_24B86523C(&v114, v45 + 8);
          Strong = swift_weakLoadStrong();
          if (Strong)
          {
            v57 = *(Strong + 16);

            v58 = *(v50 + 24);
            if (v58)
            {
              v59 = *(v57 + 16);
              v88 = *(v59 + 16);
              v97 = v52;
              v60 = *(v59 + 24);

              v40(v88, v60, v96, v39);
              v61 = MEMORY[0x277D84F70];

              sub_24B861EB0();
              v63 = *(v58 + 16);
              v62 = *(v58 + 24);
              v64 = v61 + 8;
              v52 = v97;
              v105[3] = v64;
              v105[0] = swift_allocObject();
              sub_24B860C6C(v106, v105[0] + 16);
              v63(v105, &v107);

              __swift_destroy_boxed_opaque_existential_0Tm(v106);

              __swift_destroy_boxed_opaque_existential_0Tm(v105);
            }

            else
            {
            }
          }

          v69 = *(**(v2 + *(*v2 + 120)) + 240);

          v65 = v102;
          v69(v102);

          __swift_destroy_boxed_opaque_existential_0Tm(&v107);
          if (*(&v51 + 1))
          {
LABEL_30:
            v97 = v52;

            v70 = sub_24B86D924();
            v71 = sub_24B86DBF4();

            if (os_log_type_enabled(v70, v71))
            {
              v72 = swift_slowAlloc();
              v73 = swift_slowAlloc();
              *&v107 = v73;
              *v72 = v95;
              v74 = sub_24B8604D0();
              v76 = sub_24B86A3F4(v74, v75, &v107);

              *(v72 + 4) = v76;
              _os_log_impl(&dword_24B85E000, v70, v71, "FlowFrameRuntime action activeFrame.action pushing next frame. %s", v72, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v73);
              MEMORY[0x24C24CEA0](v73, -1, -1);
              MEMORY[0x24C24CEA0](v72, -1, -1);
            }

            if (v103 == 1)
            {
              v77 = 0;
            }

            else
            {

              v77 = v65;
            }

            v78 = *(v2 + *(*v2 + 120));
            v79 = v92;
            sub_24B86C170(v2 + v90, v92);
            v80 = v93;
            (*v89)(v93, v79, v94);
            v81 = *(v91 + 48);
            v82 = *(v91 + 52);
            v83 = swift_allocObject();

            v84 = v104;

            sub_24B8637D4(*(&v51 + 1), v84, v80);
            *&v107 = v83;
            (*(*v78 + 208))(&v107, v77);

            v85 = v103;
            v52 = v97;
            sub_24B86C2E8(v103, *(&v51 + 1), v97, v84, 0);
            sub_24B86C2E8(v85, *(&v51 + 1), v52, v84, 0);

            goto LABEL_36;
          }
        }

        else
        {
          v66 = *(**(v2 + *(*v2 + 120)) + 232);
          sub_24B86C344(v51, *(&v51 + 1), v52, v104, 0);

          v65 = v102;
          v66(v102);

          if (*(&v51 + 1))
          {
            goto LABEL_30;
          }
        }
      }

      else
      {
        sub_24B86C344(v51, *(&v51 + 1), v52, v104, 0);

        v65 = v102;
        if (*(&v51 + 1))
        {
          goto LABEL_30;
        }
      }

      v67 = v103;
      v68 = v104;
      sub_24B86C2E8(v103, 0, v52, v104, 0);
      sub_24B86C2E8(v67, 0, v52, v68, 0);
LABEL_36:

      __swift_destroy_boxed_opaque_existential_0Tm(&v111);
      sub_24B861318(&v112, &qword_27F0617F0, &qword_24B86E4E8);
      __swift_destroy_boxed_opaque_existential_0Tm(&v113);
      __swift_destroy_boxed_opaque_existential_0Tm(&v114);
      if ((v52 & 1) == 0)
      {
        v86 = *(v2 + *(*v2 + 120));
        if (!sub_24B86C704())
        {
          continue;
        }
      }

      break;
    }
  }

  v22 = sub_24B86D924();
  v23 = sub_24B86DBF4();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_24B85E000, v22, v23, "FlowFrameRuntime action complete.", v24, 2u);
    MEMORY[0x24C24CEA0](v24, -1, -1);
  }

  return 0;
}

uint64_t FlowFrameRuntime.deinit()
{
  (*(*(*(*v0 + 88) - 8) + 8))(v0 + *(*v0 + 104));

  v1 = *(v0 + *(*v0 + 120));

  sub_24B86B464(v0 + *(*v0 + 128));
  v2 = *(v0 + *(*v0 + 136));

  return v0;
}

uint64_t sub_24B86A354(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

uint64_t sub_24B86A3F4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24B86A4C0(v11, 0, 0, 1, a1, a2);
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
    sub_24B860C6C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_24B86A4C0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_24B86A5CC(a5, a6);
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
    result = sub_24B86DD34();
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

uint64_t sub_24B86A5CC(uint64_t a1, unint64_t a2)
{
  v4 = sub_24B86A618(a1, a2);
  sub_24B86A748(&unk_285EAEC90);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_24B86A618(uint64_t a1, unint64_t a2)
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

  v6 = sub_24B86A834(v5, 0);
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

  result = sub_24B86DD34();
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
        v10 = sub_24B86DA74();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24B86A834(v10, 0);
        result = sub_24B86DD04();
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

uint64_t sub_24B86A748(uint64_t result)
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

  result = sub_24B86A8A8(result, v12, 1, v3);
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

void *sub_24B86A834(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F061960, &qword_24B86EB78);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_24B86A8A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F061960, &qword_24B86EB78);
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

uint64_t sub_24B86A99C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_24B86DAB4();
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
    v5 = MEMORY[0x24C24C6F0](15, a1 >> 16);
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

uint64_t sub_24B86AA18@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_24B866F84(a1, a2);
}

uint64_t sub_24B86AA54(unint64_t a1, unint64_t a2)
{
  v4 = [objc_opt_self() callStackSymbols];
  v5 = sub_24B86DB14();

  if (qword_28151B398 != -1)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v6 = sub_24B86D934();
    __swift_project_value_buffer(v6, qword_28151B890);

    v7 = sub_24B86D924();
    v8 = sub_24B86DC14();

    if (!os_log_type_enabled(v7, v8))
    {
      break;
    }

    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_24B86A3F4(a1, a2, &v22);
    *(v9 + 12) = 2048;
    *(v9 + 14) = *(v5 + 16);

    _os_log_impl(&dword_24B85E000, v7, v8, "MegaFrame.%s repeated completion invocation. Logging %ld callstack symbols.", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x24C24CEA0](v10, -1, -1);
    MEMORY[0x24C24CEA0](v9, -1, -1);

    a2 = *(v5 + 16);
    if (!a2)
    {
      goto LABEL_11;
    }

LABEL_6:
    a1 = 0;
    v11 = (v5 + 40);
    v21 = a2;
    while (a1 < *(v5 + 16))
    {
      v13 = *(v11 - 1);
      v12 = *v11;

      v14 = sub_24B86D924();
      v15 = sub_24B86DC14();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = v5;
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v22 = v18;
        *v17 = 136315138;
        *(v17 + 4) = sub_24B86A3F4(v13, v12, &v22);
        _os_log_impl(&dword_24B85E000, v14, v15, "%s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v18);
        MEMORY[0x24C24CEA0](v18, -1, -1);
        v19 = v17;
        v5 = v16;
        a2 = v21;
        MEMORY[0x24C24CEA0](v19, -1, -1);
      }

      ++a1;
      v11 += 2;
      if (a2 == a1)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_15:
    swift_once();
  }

  a2 = *(v5 + 16);
  if (a2)
  {
    goto LABEL_6;
  }

LABEL_11:
}

uint64_t sub_24B86AD48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v53 = &v41 - v12;
  v42 = v13;
  MEMORY[0x28223BE20](v11);
  v15 = &v41 - v14;
  if (sub_24B86DB54())
  {
    sub_24B86DCF4();
    v16 = sub_24B86DCE4();
  }

  else
  {
    v16 = MEMORY[0x277D84FA0];
  }

  v46 = sub_24B86DB54();
  if (!v46)
  {
    return v16;
  }

  v17 = 0;
  v51 = (v6 + 16);
  v52 = v16 + 56;
  v48 = v6 + 32;
  v50 = (v6 + 8);
  v43 = v6;
  v44 = v5;
  v45 = v15;
  while (1)
  {
    v18 = sub_24B86DB44();
    sub_24B86DB24();
    if (v18)
    {
      v19 = *(v6 + 16);
      v19(v15, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v17), a2);
      v20 = __OFADD__(v17, 1);
      v21 = v17 + 1;
      if (v20)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = sub_24B86DD24();
      if (v42 != 8)
      {
        goto LABEL_23;
      }

      v54 = result;
      v19 = *v51;
      (*v51)(v15, &v54, a2);
      swift_unknownObjectRelease();
      v20 = __OFADD__(v17, 1);
      v21 = v17 + 1;
      if (v20)
      {
LABEL_20:
        __break(1u);
        return v16;
      }
    }

    v49 = v21;
    v47 = *(v6 + 32);
    v47(v53, v15, a2);
    v22 = *(v16 + 40);
    v23 = sub_24B86D9F4();
    v24 = v16;
    v25 = -1 << *(v16 + 32);
    v26 = v23 & ~v25;
    v27 = v26 >> 6;
    v28 = *(v52 + 8 * (v26 >> 6));
    v29 = 1 << v26;
    v30 = *(v6 + 72);
    if (((1 << v26) & v28) != 0)
    {
      v31 = ~v25;
      do
      {
        v19(v10, (*(v24 + 48) + v30 * v26), a2);
        v32 = a3;
        v33 = *(a3 + 8);
        v34 = sub_24B86DA24();
        v35 = *v50;
        (*v50)(v10, a2);
        if (v34)
        {
          v35(v53, a2);
          a3 = v32;
          v6 = v43;
          v5 = v44;
          v16 = v24;
          goto LABEL_7;
        }

        v26 = (v26 + 1) & v31;
        v27 = v26 >> 6;
        v28 = *(v52 + 8 * (v26 >> 6));
        v29 = 1 << v26;
        a3 = v32;
      }

      while (((1 << v26) & v28) != 0);
      v6 = v43;
      v5 = v44;
    }

    v36 = v53;
    *(v52 + 8 * v27) = v29 | v28;
    v37 = *(v24 + 48) + v30 * v26;
    v16 = v24;
    result = (v47)(v37, v36, a2);
    v39 = *(v24 + 16);
    v20 = __OFADD__(v39, 1);
    v40 = v39 + 1;
    if (v20)
    {
      break;
    }

    *(v24 + 16) = v40;
LABEL_7:
    v15 = v45;
    v17 = v49;
    if (v49 == v46)
    {
      return v16;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

char *sub_24B86B104(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  *&v3[v5[17]] = 0;
  (*(*(v5[11] - 8) + 16))(&v3[*(*v3 + 104)], a1, v5[11]);
  v6 = v5[10];
  v7 = v5[12];
  type metadata accessor for FlowFrameRuntime();
  *&v3[*(*v3 + 120)] = sub_24B86730C();
  *&v3[*(*v3 + 112)] = dispatch_semaphore_create(1);
  sub_24B86C5BC(a2, &v3[*(*v3 + 128)]);
  return v3;
}

unint64_t sub_24B86B240()
{
  result = qword_27F061918;
  if (!qword_27F061918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F061918);
  }

  return result;
}

uint64_t sub_24B86B294(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = *(v1[2] + *(*v1[2] + 112));
  sub_24B86DC94();
  return v3(a1);
}

unint64_t sub_24B86B2F0()
{
  result = qword_27F061920;
  if (!qword_27F061920)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F061920);
  }

  return result;
}

uint64_t sub_24B86B33C()
{
  v1 = (*(*(*(v0 + 16) - 8) + 80) + 48) & ~*(*(*(v0 + 16) - 8) + 80);
  v2 = v0 + ((*(*(*(v0 + 16) - 8) + 64) + v1 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_24B8684A4(*(v0 + 40), v0 + v1, *v2, *(v2 + 8));
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24B86B3C4()
{
  result = qword_27F061928;
  if (!qword_27F061928)
  {
    sub_24B86D974();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F061928);
  }

  return result;
}

uint64_t sub_24B86B41C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_24B86B464(uint64_t a1)
{
  v2 = type metadata accessor for RuntimeConfiguration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for RuntimeConfiguration()
{
  result = qword_28151B600;
  if (!qword_28151B600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B86B50C()
{
  result = sub_24B86D954();
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

uint64_t initializeBufferWithCopyOfBuffer for RuntimeConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B86D954();
  v5 = **(v4 - 8);

  return v5(a1, a2, v4);
}

uint64_t destroy for RuntimeConfiguration(uint64_t a1)
{
  v2 = sub_24B86D954();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t initializeWithCopy for RuntimeConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B86D954();
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  return a1;
}

uint64_t assignWithCopy for RuntimeConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B86D954();
  (*(*(v4 - 8) + 24))(a1, a2, v4);
  return a1;
}

uint64_t initializeWithTake for RuntimeConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B86D954();
  (*(*(v4 - 8) + 32))(a1, a2, v4);
  return a1;
}

uint64_t assignWithTake for RuntimeConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B86D954();
  (*(*(v4 - 8) + 40))(a1, a2, v4);
  return a1;
}

uint64_t sub_24B86B914()
{
  result = sub_24B86D954();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_24B86B9A0(uint64_t a1)
{
  v1 = *(a1 + 88);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = sub_24B86D954();
    if (v4 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_24B86BB98()
{
  result = sub_24B86D904();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

char *sub_24B86BC44(char *a1, char *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v13 = *a2;
    *v3 = *a2;
    v3 = (v13 + ((v4 + 16) & ~v4));
  }

  else
  {
    v5 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v5;
    v6 = *(a2 + 3);
    *(a1 + 2) = *(a2 + 2);
    *(a1 + 3) = v6;
    v7 = *(a2 + 5);
    *(a1 + 4) = *(a2 + 4);
    *(a1 + 5) = v7;
    v8 = *(a2 + 7);
    *(a1 + 6) = *(a2 + 6);
    *(a1 + 7) = v8;
    *(a1 + 8) = *(a2 + 8);
    v9 = *(a3 + 44);
    v11 = sub_24B86D904();
    v12 = *(*(v11 - 8) + 16);

    v12(&v3[v9], &a2[v9], v11);
  }

  return v3;
}

uint64_t sub_24B86BD64(char *a1, uint64_t a2)
{
  v4 = *(a1 + 1);

  v5 = *(a1 + 3);

  v6 = *(a1 + 5);

  v7 = *(a1 + 7);

  v8 = *(a2 + 44);
  v9 = sub_24B86D904();
  v10 = *(*(v9 - 8) + 8);

  return v10(&a1[v8], v9);
}

char *sub_24B86BDF0(char *a1, char *a2, uint64_t a3)
{
  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;
  v6 = *(a2 + 3);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = v6;
  v7 = *(a2 + 5);
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 5) = v7;
  v8 = *(a2 + 7);
  *(a1 + 6) = *(a2 + 6);
  *(a1 + 7) = v8;
  *(a1 + 8) = *(a2 + 8);
  v9 = *(a3 + 44);
  v10 = sub_24B86D904();
  v11 = *(*(v10 - 8) + 16);

  v11(&a1[v9], &a2[v9], v10);
  return a1;
}

char *sub_24B86BEC4(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a1 + 1);
  *(a1 + 1) = *(a2 + 1);

  *(a1 + 2) = *(a2 + 2);
  v7 = *(a1 + 3);
  *(a1 + 3) = *(a2 + 3);

  *(a1 + 4) = *(a2 + 4);
  v8 = *(a1 + 5);
  *(a1 + 5) = *(a2 + 5);

  *(a1 + 6) = *(a2 + 6);
  v9 = *(a1 + 7);
  *(a1 + 7) = *(a2 + 7);

  *(a1 + 8) = *(a2 + 8);
  v10 = *(a3 + 44);
  v11 = sub_24B86D904();
  (*(*(v11 - 8) + 24))(&a1[v10], &a2[v10], v11);
  return a1;
}

uint64_t sub_24B86BFC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v5;
  v6 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v6;
  *(a1 + 64) = *(a2 + 64);
  v7 = *(a3 + 44);
  v8 = sub_24B86D904();
  (*(*(v8 - 8) + 32))(a1 + v7, a2 + v7, v8);
  return a1;
}

char *sub_24B86C048(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  v7 = *(a1 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  v8 = *(a2 + 3);
  v9 = *(a1 + 3);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = v8;

  v10 = *(a2 + 5);
  v11 = *(a1 + 5);
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 5) = v10;

  v12 = *(a2 + 7);
  v13 = *(a1 + 7);
  *(a1 + 6) = *(a2 + 6);
  *(a1 + 7) = v12;

  *(a1 + 8) = *(a2 + 8);
  v14 = *(a3 + 44);
  v15 = sub_24B86D904();
  (*(*(v15 - 8) + 40))(&a1[v14], &a2[v14], v15);
  return a1;
}

_OWORD *sub_24B86C160(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_24B86C170(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RuntimeConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B86C1D4()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for InstrumentedCancellableStack.TrackedFrame();
  return sub_24B865AD0(v2);
}

uint64_t sub_24B86C218()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for InstrumentedCancellableStack.TrackedFrame();
  return sub_24B865E60(v2);
}

unint64_t sub_24B86C25C()
{
  result = qword_27F061948;
  if (!qword_27F061948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F061948);
  }

  return result;
}

uint64_t sub_24B86C2B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;

  return sub_24B86582C(v4, a2);
}

uint64_t sub_24B86C2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {

    JUMPOUT(0x24C24CCF0);
  }
}

uint64_t sub_24B86C344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {

    JUMPOUT(0x24C24CD00);
  }
}

unint64_t sub_24B86C394()
{
  result = qword_27F061950;
  if (!qword_27F061950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F061950);
  }

  return result;
}

uint64_t sub_24B86C3E8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_24B86C344(result, a2, a3, a4, a5 & 1);
  }

  return result;
}

uint64_t sub_24B86C414(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_24B86C2E8(result, a2, a3, a4, a5 & 1);
  }

  return result;
}

uint64_t sub_24B86C44C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_24B86C4B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F061958, &unk_24B86EB68);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_17Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_24B86C570(uint64_t a1, char a2)
{
  if (a2)
  {
    JUMPOUT(0x24C24CD00);
  }
}

void sub_24B86C57C(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
    sub_24B86C570(a1, a2 & 1);
  }
}

void sub_24B86C594(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
    sub_24B85F5E4(a1, a2 & 1);
  }
}

uint64_t sub_24B86C5AC(uint64_t a1, char a2)
{
  if (a2)
  {
    JUMPOUT(0x24C24CCF0);
  }
}

uint64_t sub_24B86C5BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RuntimeConfiguration();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B86C624(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_24B86C6DC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t sub_24B86C71C()
{
  v1 = v0[2];
  v0[2] = 0;

  v2 = v0[3];
  v0[3] = 0;

  v0[4] = 0;
  return result;
}

uint64_t *sub_24B86C74C(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 80);
  type metadata accessor for Node();

  v6 = sub_24B86D3FC(a1);
  if (a2)
  {
    v7 = *(*a2 + 104);
    swift_beginAccess();
    sub_24B86DB94();

    sub_24B86DB64();
    swift_endAccess();
  }

  sub_24B86CAE8(v6);
  return v6;
}

uint64_t *sub_24B86C844(uint64_t a1)
{
  v3 = *(*v1 + 80);
  type metadata accessor for Node();
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 96);
  swift_weakLoadStrong();
  v6 = sub_24B86D3FC(a1 + v4);
  sub_24B86D458(a1);
  v7 = *(*a1 + 104);
  swift_beginAccess();
  v8 = *(a1 + v7);
  v9 = *(*v6 + 104);
  swift_beginAccess();
  v10 = *(v6 + v9);
  *(v6 + v9) = v8;

  v11 = sub_24B86DB34();
  v12 = *(a1 + v7);
  *(a1 + v7) = v11;

  sub_24B86CAE8(a1);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = *(*Strong + 104);
    swift_beginAccess();
    v19 = *(v14 + v15);
    sub_24B86DB94();
    swift_getWitnessTable();
    if ((sub_24B86DBE4() & 1) == 0)
    {
      v20 = *(v14 + v15);

      swift_getWitnessTable();
      v16 = sub_24B86DD44();
      swift_beginAccess();
      v17 = *(v14 + v15);
      *(v14 + v15) = v16;

      sub_24B86DB64();
      swift_endAccess();
    }
  }

  return v6;
}

uint64_t sub_24B86CAC0(uint64_t *a1)
{
  sub_24B86D728(a1);
}

uint64_t sub_24B86CAE8(uint64_t a1)
{
  if (v1[2] && v1[3])
  {
    v3 = *(*a1 + 112);
    v4 = v1[3];
    swift_weakAssign();
    v5 = v1[3];
    if (v5)
    {
      v6 = *(*v5 + 120);
      v7 = *(v5 + v6);
      *(v5 + v6) = a1;

      v8 = v1[3];
    }

    v1[3] = a1;
  }

  else
  {
    v1[3] = a1;
    swift_retain_n();

    v9 = v1[2];
    v1[2] = a1;
  }

  v11 = v1[4];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    v1[4] = v13;
  }

  return result;
}

uint64_t sub_24B86CBD0(uint64_t a1)
{
  v4 = v1[2];
  v3 = v1[3];
  if (v4)
  {
    v5 = v4 == a1;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    if (v4 == v3)
    {
      v1[2] = 0;

      v13 = v1[3];
      v1[3] = 0;
    }

    else
    {
      v1[2] = *(a1 + *(*a1 + 120));
    }

    goto LABEL_20;
  }

  if (v3)
  {
    v6 = v3 == a1;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v14 = *(*v3 + 112);
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v16 = *(*Strong + 120);
      v17 = *(Strong + v16);
      *(Strong + v16) = 0;
    }

    else
    {
    }

    v18 = swift_weakLoadStrong();

    v19 = v1[3];
    v1[3] = v18;
    goto LABEL_20;
  }

  v7 = *(*a1 + 112);
  v8 = swift_weakLoadStrong();
  if (v8)
  {
    v9 = *(*v8 + 120);
    v10 = *(v8 + v9);
    *(v8 + v9) = *(a1 + *(*a1 + 120));
  }

  v11 = *(a1 + *(*a1 + 120));
  if (v11)
  {
    swift_weakLoadStrong();
    v12 = *(*v11 + 112);
    swift_weakAssign();
LABEL_20:
  }

  v20 = *(*a1 + 112);
  swift_weakAssign();
  v21 = *(*a1 + 120);
  v22 = *(a1 + v21);
  *(a1 + v21) = 0;

  v24 = v1[4];
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    v1[4] = v26;
  }

  return result;
}

uint64_t sub_24B86CDFC()
{
  v1 = *v0;
  if (*v0)
  {
    v2 = *(*v1 + 112);
    *v0 = swift_weakLoadStrong();
  }

  return v1;
}

uint64_t sub_24B86CE44()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  v1 = *(*v0 + 96);
  swift_weakDestroy();
  v2 = *(v0 + *(*v0 + 104));

  v3 = *(*v0 + 112);
  swift_weakDestroy();
  v4 = *(*v0 + 120);
  v5 = *(v0 + v4);
  *(v0 + v4) = 0;

  if (v5)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v6 = *(v5 + *(*v5 + 120));
      swift_retain_n();

      v5 = v6;
    }

    while (v6);
  }

  return v0;
}

uint64_t sub_24B86CF90()
{
  sub_24B86CE44();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_24B86D054@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24B86CDFC();
  *a1 = result;
  return result;
}

uint64_t sub_24B86D07C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

void *sub_24B86D0F0()
{
  result = v0;
  v0[2] = 0;
  v0[3] = 0;
  v0[4] = 0;
  return result;
}

uint64_t sub_24B86D100@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = sub_24B86C714();

  *a1 = v4;
  return result;
}

uint64_t sub_24B86D150(uint64_t a1)
{
  v2 = *(a1 + 80);
  type metadata accessor for OrderedForest();
  v3 = sub_24B86D758();
  v4 = *v1;

  return v3;
}

void sub_24B86D19C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 80);
  type metadata accessor for OrderedForest();

  JUMPOUT(0x24C24C740);
}

uint64_t sub_24B86D208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 80);
  type metadata accessor for OrderedForest();
  return sub_24B86DAF4();
}

uint64_t *sub_24B86D278(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_weakInit();
  v5 = *(*v1 + 112);
  swift_weakInit();
  *(v1 + *(*v1 + 120)) = 0;
  (*(*(*(v3 + 80) - 8) + 16))(v1 + *(*v1 + 88), a1, *(v3 + 80));
  v6 = *(*v1 + 96);
  swift_weakAssign();
  type metadata accessor for Node();
  v7 = sub_24B86DB34();

  *(v1 + *(*v1 + 104)) = v7;
  v8 = *(*v1 + 112);
  swift_weakAssign();
  v9 = *(*v1 + 120);
  v10 = *(v1 + v9);
  *(v1 + v9) = 0;

  return v1;
}

uint64_t *sub_24B86D3FC(uint64_t a1)
{
  v3 = *(v1 + 80);
  v4 = type metadata accessor for Node();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  return sub_24B86D278(a1);
}

uint64_t sub_24B86D458(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*a1 + 104);
  swift_beginAccess();
  v5 = *(a1 + v4);
  v6 = *(v3 + 80);
  type metadata accessor for Node();

  if (sub_24B86DB54())
  {
    v7 = 4;
    do
    {
      v8 = v7 - 4;
      v9 = sub_24B86DB44();
      sub_24B86DB24();
      if (v9)
      {
        v10 = *(v5 + 8 * v7);

        v11 = __OFADD__(v8, 1);
        v12 = v7 - 3;
        if (v11)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v10 = sub_24B86DD24();
        v11 = __OFADD__(v8, 1);
        v12 = v7 - 3;
        if (v11)
        {
LABEL_9:
          __break(1u);
          break;
        }
      }

      sub_24B86D458(v10);

      ++v7;
    }

    while (v12 != sub_24B86DB54());
  }

  sub_24B86CBD0(a1);
  return a1;
}

uint64_t sub_24B86D5A0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 96);
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = *(*result + 104);
    swift_beginAccess();
    v9 = *(v4 + v5);
    v6 = *(v1 + 80);
    type metadata accessor for Node();
    sub_24B86DB94();
    swift_getWitnessTable();
    if (sub_24B86DBE4())
    {
    }

    else
    {
      v10 = *(v4 + v5);

      swift_getWitnessTable();
      v7 = sub_24B86DD44();
      v8 = *(v4 + v5);
      *(v4 + v5) = v7;

      return swift_weakAssign();
    }
  }

  return result;
}

uint64_t *sub_24B86D728(uint64_t *a1)
{
  sub_24B86D458(a1);
  sub_24B86D5A0(a1);
  return a1;
}

uint64_t *sub_24B86D774(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *sub_24B86D7BC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t sub_24B86D7F0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_24B86D84C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}
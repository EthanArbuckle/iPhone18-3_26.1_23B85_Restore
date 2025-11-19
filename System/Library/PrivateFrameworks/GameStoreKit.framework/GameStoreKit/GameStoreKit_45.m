uint64_t objectdestroyTm_22()
{
  v1 = type metadata accessor for HeroCarouselView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_24F925218();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v2 + v3, 1, v4))
    {
      (*(v5 + 8))(v2 + v3, v4);
    }
  }

  else
  {
  }

  v6 = v1[10];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_24F925218();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v2 + v6, 1, v7))
    {
      (*(v8 + 8))(v2 + v6, v7);
    }
  }

  else
  {
  }

  sub_24E62A5EC(*(v2 + v1[11]), *(v2 + v1[11] + 8));
  v9 = v2 + v1[12];
  sub_24E669FC4(*v9, *(v9 + 8), *(v9 + 16), *(v9 + 24), *(v9 + 32));
  sub_24E62A5EC(*(v2 + v1[13]), *(v2 + v1[13] + 8));

  return swift_deallocObject();
}

uint64_t sub_24EA97E80(uint64_t a1, char *a2)
{
  v5 = *(type metadata accessor for HeroCarouselView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24EA94C60(a1, a2, v6);
}

uint64_t sub_24EA97F00(char a1)
{
  type metadata accessor for HeroCarouselView(0);

  return sub_24EA94D94(a1);
}

unint64_t sub_24EA97F88()
{
  result = qword_27F226938;
  if (!qword_27F226938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226938);
  }

  return result;
}

uint64_t sub_24EA97FF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for HeroCarouselView(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_24EA980D0(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24EA98154()
{
  result = qword_27F226950;
  if (!qword_27F226950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2268D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2268D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2268C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2268C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2268B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2268B0);
    sub_24EA97A84();
    sub_24EA97B90();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_24EA97F88();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226950);
  }

  return result;
}

uint64_t sub_24EA98348(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2268E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EA983D8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for HeroCarouselView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_24EA98470()
{
  v1 = type metadata accessor for HeroCarouselView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_24F925218();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v2 + v3, 1, v4))
    {
      (*(v5 + 8))(v2 + v3, v4);
    }
  }

  else
  {
  }

  v6 = v1[10];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_24F925218();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v2 + v6, 1, v7))
    {
      (*(v8 + 8))(v2 + v6, v7);
    }
  }

  else
  {
  }

  sub_24E62A5EC(*(v2 + v1[11]), *(v2 + v1[11] + 8));
  v9 = v2 + v1[12];
  sub_24E669FC4(*v9, *(v9 + 8), *(v9 + 16), *(v9 + 24), *(v9 + 32));
  sub_24E62A5EC(*(v2 + v1[13]), *(v2 + v1[13] + 8));

  return swift_deallocObject();
}

uint64_t sub_24EA98718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for HeroCarouselView(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[2];

  return sub_24EA93418(a1, COERCE_DOUBLE(v2 + v6), a2, v8, v9, v10);
}

uint64_t sub_24EA987CC()
{
  type metadata accessor for HeroCarouselView(0);

  return sub_24EA94A08();
}

uint64_t sub_24EA9886C()
{

  return swift_deallocObject();
}

uint64_t sub_24EA988AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EA98914@<X0>(_WORD *a1@<X8>)
{
  result = sub_24F0BAE6C(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_24EA98988@<X0>(uint64_t a1@<X8>)
{
  result = sub_24F0BB140(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_24EA989CC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  return sub_24F0BB230(&v3);
}

unint64_t sub_24EA98A3C()
{
  result = qword_27F2269C0;
  if (!qword_27F2269C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2269C0);
  }

  return result;
}

uint64_t sub_24EA98AA0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24EA98AC0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

uint64_t sub_24EA98B18(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2269C8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 48);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2269D0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 52);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24EA98C68(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2269C8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 48);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2269D0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 52);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_24EA98DA4()
{
  sub_24EA98F40(319, &qword_27F218010, MEMORY[0x277D83B88], MEMORY[0x277CE11F8]);
  if (v0 <= 0x3F)
  {
    sub_24EA98FE4(319, &qword_27F226898, &unk_27F23A6A0, &unk_24F9549D0, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_24EA98F40(319, &qword_27F215590, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_24EA98F90(319, &qword_27F2269E8, MEMORY[0x277CC95F0]);
        if (v3 <= 0x3F)
        {
          sub_24EA98FE4(319, &qword_27F2269F0, &qword_27F2269B0, &unk_24F97BA50, MEMORY[0x277CDF338]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24EA98F40(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_24EA98F90(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F926F68();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_24EA98FE4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_24EA9904C()
{
  result = qword_27F2269F8;
  if (!qword_27F2269F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F226A00);
    sub_24EA980D0(&qword_27F226940, &qword_27F2268E8, &unk_24F97B8A0, sub_24EA980A0);
    sub_24EA9626C(&qword_27F2141E0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2269F8);
  }

  return result;
}

unint64_t sub_24EA99198()
{
  result = qword_27F226A18;
  if (!qword_27F226A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226A18);
  }

  return result;
}

unint64_t sub_24EA991F0()
{
  result = qword_27F226A20;
  if (!qword_27F226A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226A20);
  }

  return result;
}

unint64_t sub_24EA99244()
{
  result = qword_27F226A28;
  if (!qword_27F226A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226A28);
  }

  return result;
}

uint64_t sub_24EA99298()
{
  v1 = sub_24F91F6B8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24EA99364@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_24F91F6B8() - 8);
  v6 = *(v2 + 2);
  v7 = *(v2 + 3);
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = v2[7];
  v12 = v2 + ((*(v5 + 80) + 64) & ~*(v5 + 80));

  return sub_24EA96AA4(a1, v6, v7, v12, a2, v8, v9, v10, v11);
}

uint64_t sub_24EA993F8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24EA9944C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24EA99484()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_24EA994DC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24EA99528()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24EA99570()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_24EA995C8()
{
  result = qword_27F226B00;
  if (!qword_27F226B00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F226A48);
    sub_24EA99654();
    sub_24EA99798();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226B00);
  }

  return result;
}

unint64_t sub_24EA99654()
{
  result = qword_27F226B08;
  if (!qword_27F226B08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F226A40);
    sub_24EA996E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226B08);
  }

  return result;
}

unint64_t sub_24EA996E0()
{
  result = qword_27F226B10;
  if (!qword_27F226B10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F226A38);
    sub_24E602068(&qword_27F226B18, &qword_27F226A30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226B10);
  }

  return result;
}

unint64_t sub_24EA99798()
{
  result = qword_27F226B20;
  if (!qword_27F226B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226B20);
  }

  return result;
}

uint64_t sub_24EA998B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_24E60169C(a3, v25 - v10, &unk_27F21B570);
  v12 = sub_24F92B858();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_24E601704(v11, &unk_27F21B570);
  }

  else
  {
    sub_24F92B848();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_24F92B778();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_24F92B1B8() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_24E601704(a3, &unk_27F21B570);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_24E601704(a3, &unk_27F21B570);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_24EA99BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_24E60169C(a3, v25 - v10, &unk_27F21B570);
  v12 = sub_24F92B858();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_24E601704(v11, &unk_27F21B570);
  }

  else
  {
    sub_24F92B848();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_24F92B778();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_24F92B1B8() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_24E601704(a3, &unk_27F21B570);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_24E601704(a3, &unk_27F21B570);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_24EA99ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_24E60169C(a3, v25 - v10, &unk_27F21B570);
  v12 = sub_24F92B858();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_24E601704(v11, &unk_27F21B570);
  }

  else
  {
    sub_24F92B848();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_24F92B778();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_24F92B1B8() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_24E601704(a3, &unk_27F21B570);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_24E601704(a3, &unk_27F21B570);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_24EA9A1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_24E60169C(a3, v25 - v10, &unk_27F21B570);
  v12 = sub_24F92B858();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_24E601704(v11, &unk_27F21B570);
  }

  else
  {
    sub_24F92B848();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_24F92B778();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_24F92B1B8() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226C00);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_24E601704(a3, &unk_27F21B570);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_24E601704(a3, &unk_27F21B570);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226C00);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_24EA9A4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_24E60169C(a3, v25 - v10, &unk_27F21B570);
  v12 = sub_24F92B858();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_24E601704(v11, &unk_27F21B570);
  }

  else
  {
    sub_24F92B848();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_24F92B778();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_24F92B1B8() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226C08);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_24E601704(a3, &unk_27F21B570);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_24E601704(a3, &unk_27F21B570);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226C08);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_24EA9A820()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F92AAE8();
  __swift_allocate_value_buffer(v4, qword_27F39B9B0);
  __swift_project_value_buffer(v4, qword_27F39B9B0);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v5, v0);
  return sub_24F92AAD8();
}

uint64_t sub_24EA9A978()
{
  result = sub_24F92B0D8();
  qword_27F226B28 = result;
  unk_27F226B30 = v1;
  return result;
}

char *VideoPlayer.init(with:)(uint64_t a1)
{
  v2 = v1;
  v34 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F468);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226B38);
  v8 = *(v7 - 8);
  v36 = v7;
  v37 = v8;
  MEMORY[0x28223BE20](v7);
  v35 = &v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FEA0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - v12;
  v14 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer__state;
  LOBYTE(v38) = 0;
  sub_24F923058();
  (*(v11 + 32))(&v2[v14], v13, v10);
  v15 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer__events;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F250980);
  swift_allocObject();
  *&v2[v15] = sub_24F922FC8();
  *&v2[OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_playerItem] = 0;
  v16 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_videoObserver;
  *&v2[v16] = [objc_allocWithZone(type metadata accessor for VideoObserver()) init];
  v17 = &v2[OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_playbackChecks];
  *v17 = 0;
  v17[2] = 0;
  v18 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_failure;
  v19 = type metadata accessor for VideoPlaybackFailure();
  (*(*(v19 - 8) + 56))(&v2[v18], 1, 1, v19);
  *&v2[OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_failureCount] = 0;
  *&v2[OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_subscriptions] = MEMORY[0x277D84FA0];
  v2[OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_shouldBePlaying] = 0;
  v2[OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_shouldLoopPlayback] = 0;
  v20 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_lastPlaybackTimeGuard;
  *&v2[v20] = [objc_allocWithZone(MEMORY[0x277D225F0]) init];
  v21 = &v2[OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_lastPlaybackTimeUnsynchronized];
  *v21 = 0;
  *(v21 + 1) = 0;
  *(v21 + 2) = 0;
  v21[24] = 1;
  v22 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_videoUrl;
  v23 = sub_24F91F4A8();
  v33 = v23;
  v24 = *(v23 - 8);
  (*(v24 + 16))(&v2[v22], a1, v23);
  (*(v24 + 56))(&v2[v22], 0, 1, v23);
  v25 = type metadata accessor for VideoPlayer();
  v40.receiver = v2;
  v40.super_class = v25;
  v26 = objc_msgSendSuper2(&v40, sel_init);
  [v26 setPreventsDisplaySleepDuringVideoPlayback_];
  [v26 setMuted_];
  [v26 setActionAtItemEnd_];
  v38 = *(*&v26[OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_videoObserver] + OBJC_IVAR____TtC12GameStoreKit13VideoObserver__changes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226B90);
  sub_24E602068(&qword_27F226B98, &qword_27F226B90);
  v38 = sub_24F9230C8();
  sub_24E69A5C4(0, &qword_27F222300);
  v27 = sub_24F92BEF8();
  v39 = v27;
  v28 = sub_24F92BEB8();
  (*(*(v28 - 8) + 56))(v6, 1, 1, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226BA0);
  sub_24E602068(&qword_27F226BA8, &qword_27F226BA0);
  sub_24EA9B900();
  v29 = v35;
  sub_24F923118();
  sub_24E601704(v6, &qword_27F21F468);

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_24E602068(&qword_27F226BB0, &qword_27F226B38);
  v30 = v36;
  sub_24F923148();

  (*(v37 + 8))(v29, v30);
  swift_beginAccess();
  sub_24F922F58();
  swift_endAccess();

  (*(v24 + 8))(v34, v33);
  return v26;
}

void sub_24EA9B014(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_24EA9F178(v1, v2, v3);
  }
}

uint64_t sub_24EA9B088@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  *a1 = v3;
  return result;
}

uint64_t sub_24EA9B108(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_24F9230A8();
}

uint64_t sub_24EA9B178()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();
}

uint64_t sub_24EA9B1F0()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FEA0);
  sub_24F923068();
  return swift_endAccess();
}

uint64_t sub_24EA9B268(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FE90);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FEA0);
  sub_24F923078();
  swift_endAccess();
  return (*(v3 + 8))(v9, v2);
}

uint64_t sub_24EA9B3EC()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FEA0);
  sub_24F923068();
  return swift_endAccess();
}

uint64_t sub_24EA9B460()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F250980);
  sub_24E602068(&qword_27F21FEB8, &unk_27F250980);
  return sub_24F9230C8();
}

void sub_24EA9B52C(void *a1)
{
  v2 = v1;
  v4 = sub_24F927D88();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F927DC8();
  v22 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&v2[OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_playerItem];
  if (!v11)
  {
    if (!a1)
    {
      return;
    }

    goto LABEL_6;
  }

  if (!a1 || (sub_24E69A5C4(0, &qword_27F226C10), v12 = v11, v13 = a1, v14 = sub_24F92C408(), v12, v13, (v14 & 1) == 0))
  {
LABEL_6:
    v15 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_shouldBePlaying;
    swift_beginAccess();
    if (v2[v15] == 1)
    {
      sub_24E69A5C4(0, &qword_27F222300);
      v21 = sub_24F92BEF8();
      v16 = swift_allocObject();
      *(v16 + 16) = v2;
      aBlock[4] = sub_24EAA12A8;
      aBlock[5] = v16;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24EAF8248;
      aBlock[3] = &block_descriptor_108;
      v17 = _Block_copy(aBlock);
      v18 = v2;

      sub_24F927DA8();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_24EAA0BB4(&qword_27F222930, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
      sub_24E602068(&qword_27F222940, &qword_27F222310);
      sub_24F92C6A8();
      v19 = v21;
      MEMORY[0x2530518B0](0, v10, v7, v17);
      _Block_release(v17);

      (*(v5 + 8))(v7, v4);
      (*(v22 + 8))(v10, v8);
    }
  }
}

uint64_t type metadata accessor for VideoPlayer()
{
  result = qword_27F226BE8;
  if (!qword_27F226BE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24EA9B900()
{
  result = qword_27F21F498;
  if (!qword_27F21F498)
  {
    sub_24E69A5C4(255, &qword_27F222300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F498);
  }

  return result;
}

uint64_t sub_24EA9B968()
{
  MEMORY[0x2530543E0](v0 + 16);

  return swift_deallocObject();
}

void sub_24EA9B9B0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong play];
  }
}

uint64_t sub_24EA9BA0C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FEC8);
  MEMORY[0x28223BE20](v2 - 8);
  v32 = &v30 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v30 - v5;
  v7 = sub_24F92AAE8();
  v31 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v33 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226BE0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v30 - v10;
  v12 = type metadata accessor for VideoPlaybackFailure();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_failure;
  swift_beginAccess();
  sub_24E60169C(v1 + v16, v11, &qword_27F226BE0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_24E601704(v11, &qword_27F226BE0);
  }

  sub_24EAA114C(v11, v15);
  if (qword_27F210138 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v7, qword_27F39B9B0);
  v19 = v31;
  (*(v31 + 16))(v33, v18, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93FC20;
  sub_24F9283A8();
  *(&v35 + 1) = v12;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v34);
  sub_24EAA11B0(v15, boxed_opaque_existential_1);
  sub_24F928438();
  sub_24E601704(&v34, &qword_27F2129B0);
  sub_24F9283A8();
  sub_24E60169C(v1 + OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_videoUrl, v6, &qword_27F228530);
  v21 = sub_24F91F4A8();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v6, 1, v21) == 1)
  {
    sub_24E601704(v6, &qword_27F228530);
    v34 = 0u;
    v35 = 0u;
  }

  else
  {
    *(&v35 + 1) = v21;
    v23 = __swift_allocate_boxed_opaque_existential_1(&v34);
    (*(v22 + 32))(v23, v6, v21);
  }

  sub_24F9283B8();
  sub_24E601704(&v34, &qword_27F2129B0);
  v24 = v33;
  sub_24F92A5A8();

  (*(v19 + 8))(v24, v7);
  v25 = v32;
  sub_24EAA11B0(v15, v32);
  v26 = type metadata accessor for VideoPlayer.Event();
  swift_storeEnumTagMultiPayload();
  (*(*(v26 - 8) + 56))(v25, 0, 1, v26);
  sub_24F922FB8();
  result = sub_24E601704(v25, &qword_27F21FEC8);
  v27 = *(v1 + OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_failureCount);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_failureCount) = v29;
    sub_24EA9C004();
    return sub_24EAA1214(v15);
  }

  return result;
}

uint64_t sub_24EA9C004()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FEC8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v20 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226BE0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v20 - v8;
  v10 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_failureCount;
  if ((*&v0[OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_failureCount] - 3) >= 0xFFFFFFFFFFFFFFFELL)
  {
    v15 = sub_24F92B858();
    (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
    sub_24F92B7F8();
    v16 = v0;
    v17 = sub_24F92B7E8();
    v18 = swift_allocObject();
    v19 = MEMORY[0x277D85700];
    v18[2] = v17;
    v18[3] = v19;
    v18[4] = v16;
    sub_24EA998B8(0, 0, v9, &unk_24F97C110, v18);
  }

  else
  {
    v11 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_failure;
    swift_beginAccess();
    sub_24E60169C(&v0[v11], v6, &qword_27F226BE0);
    v12 = type metadata accessor for VideoPlaybackFailure();
    LODWORD(v11) = (*(*(v12 - 8) + 48))(v6, 1, v12);
    result = sub_24E601704(v6, &qword_27F226BE0);
    if (v11 != 1 && *&v0[v10] >= 1)
    {
      v14 = type metadata accessor for VideoPlayer.Event();
      swift_storeEnumTagMultiPayload();
      (*(*(v14 - 8) + 56))(v3, 0, 1, v14);
      sub_24F922FB8();
      return sub_24E601704(v3, &qword_27F21FEC8);
    }
  }

  return result;
}

uint64_t sub_24EA9C314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_24F92B7F8();
  v4[4] = sub_24F92B7E8();
  v4[5] = sub_24F92B7E8();
  v6 = sub_24F92B778();
  v4[6] = v6;
  v4[7] = v5;

  return MEMORY[0x2822009F8](sub_24EA9C3BC, v6, v5);
}

uint64_t sub_24EA9C3BC()
{
  sub_24EA9EF78();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_24EA9C454;

  return sub_24EA9CDD8();
}

uint64_t sub_24EA9C454()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_24EA9C574, v3, v2);
}

uint64_t sub_24EA9C574()
{

  v1 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24EA9C5F8, v1, v0);
}

uint64_t sub_24EA9C5F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EA9C658()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  if (v4 != 4)
  {
    [v0 rate];
    if (v1 > 0.0)
    {
      v2 = [v0 error];
      if (!v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

BOOL sub_24EA9C718()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_playbackChecks) != 1 || *(v0 + OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_playbackChecks + 1) == 0;
  if (!v1 && (*(v0 + OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_playbackChecks + 2) & 1) != 0)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  return v3 - 5 < 0xFFFFFFFD;
}

uint64_t sub_24EA9C7C8()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_shouldBePlaying;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24EA9C80C()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_shouldLoopPlayback;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24EA9C850(char a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_shouldLoopPlayback;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void sub_24EA9C900()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v12 - v2;
  v4 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_shouldBePlaying;
  swift_beginAccess();
  v0[v4] = 1;
  if ((sub_24EA9C658() & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24F923098();

    if (v13)
    {
      v5 = *&v0[OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_playerItem];
      if (v5)
      {
        v6 = v5;
        v7 = [v0 currentItem];
        if (v7)
        {
        }

        else
        {
          [v0 replaceCurrentItemWithPlayerItem_];
        }

        v11 = type metadata accessor for VideoPlayer();
        v12.receiver = v0;
        v12.super_class = v11;
        objc_msgSendSuper2(&v12, sel_play);
      }
    }

    else
    {
      v8 = sub_24F92B858();
      (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
      v9 = swift_allocObject();
      v9[2] = 0;
      v9[3] = 0;
      v9[4] = v0;
      v10 = v0;
      sub_24EA998B8(0, 0, v3, &unk_24F97BF98, v9);
    }
  }
}

uint64_t sub_24EA9CAF4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24E614970;

  return sub_24EA9CDD8();
}

uint64_t sub_24EA9CB88()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24E6541E4;

  return sub_24EA9CAF4();
}

id sub_24EA9CCE8()
{
  v1 = MEMORY[0x277CC08F0];
  v2 = *MEMORY[0x277CC08F0];
  v3 = *(MEMORY[0x277CC08F0] + 16);
  v6.receiver = v0;
  v6.super_class = type metadata accessor for VideoPlayer();
  v5[0] = v2;
  v5[1] = *(v1 + 8);
  v5[2] = v3;
  return objc_msgSendSuper2(&v6, sel_seekToTime_, v5);
}

uint64_t sub_24EA9CDD8()
{
  v1[3] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FEC8);
  v1[4] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  v1[5] = swift_task_alloc();
  v2 = sub_24F91F4A8();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  sub_24F92B7F8();
  v1[9] = sub_24F92B7E8();
  v4 = sub_24F92B778();
  v1[10] = v4;
  v1[11] = v3;

  return MEMORY[0x2822009F8](sub_24EA9CF3C, v4, v3);
}

uint64_t sub_24EA9CF3C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);
  sub_24E60169C(*(v0 + 24) + OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_videoUrl, v3, &qword_27F228530);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 40);

    sub_24E601704(v4, &qword_27F228530);
LABEL_5:

    v5 = *(v0 + 8);

    return v5();
  }

  (*(*(v0 + 56) + 32))(*(v0 + 64), *(v0 + 40), *(v0 + 48));
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  if (*(v0 + 128))
  {
    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));

    goto LABEL_5;
  }

  v8 = *(v0 + 24);
  v7 = *(v0 + 32);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 129) = 1;
  v9 = v8;
  sub_24F9230A8();
  v10 = type metadata accessor for VideoPlayer.Event();
  swift_storeEnumTagMultiPayload();
  (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
  sub_24F922FB8();
  sub_24E601704(v7, &qword_27F21FEC8);
  v11 = *&v9[OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_playerItem];
  if (v11)
  {
    v12 = [v11 asset];
    [v12 cancelLoading];
  }

  return MEMORY[0x2822009F8](sub_24EA9D1F8, 0, 0);
}

uint64_t sub_24EA9D1F8()
{
  v1 = v0[8];
  v2 = swift_task_alloc();
  v0[12] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[13] = v3;
  v4 = sub_24E69A5C4(0, &qword_27F226BD8);
  *v3 = v0;
  v3[1] = sub_24EA9D304;

  return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0xD000000000000017, 0x800000024FA516F0, sub_24EAA0008, v2, v4);
}

uint64_t sub_24EA9D304()
{

  return MEMORY[0x2822009F8](sub_24EA9D41C, 0, 0);
}

uint64_t sub_24EA9D41C()
{
  v1 = v0[2];
  v0[14] = v1;
  v2 = swift_task_alloc();
  v0[15] = v2;
  *v2 = v0;
  v2[1] = sub_24EA9D4B8;

  return sub_24EA9D680(v1);
}

uint64_t sub_24EA9D4B8()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_24EA9D5D8, v3, v2);
}

uint64_t sub_24EA9D5D8()
{
  v1 = v0[14];
  v2 = v0[8];
  v3 = v0[6];
  v4 = v0[7];

  (*(v4 + 8))(v2, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_24EA9D680(uint64_t a1)
{
  v2[43] = a1;
  v2[44] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226BE0);
  v2[45] = swift_task_alloc();
  v3 = sub_24F92AAE8();
  v2[46] = v3;
  v2[47] = *(v3 - 8);
  v2[48] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FEC8);
  v2[49] = swift_task_alloc();
  v4 = sub_24F927D88();
  v2[50] = v4;
  v2[51] = *(v4 - 8);
  v2[52] = swift_task_alloc();
  v5 = sub_24F927DC8();
  v2[53] = v5;
  v2[54] = *(v5 - 8);
  v2[55] = swift_task_alloc();
  v6 = sub_24F91F4A8();
  v2[56] = v6;
  v2[57] = *(v6 - 8);
  v2[58] = swift_task_alloc();
  v2[59] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226C18);
  v2[60] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  v2[61] = swift_task_alloc();
  v2[62] = swift_task_alloc();
  v2[63] = swift_task_alloc();
  v2[64] = sub_24F92B7F8();
  v2[65] = sub_24F92B7E8();
  v8 = sub_24F92B778();
  v2[66] = v8;
  v2[67] = v7;

  return MEMORY[0x2822009F8](sub_24EA9D98C, v8, v7);
}

uint64_t sub_24EA9D98C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226C20);
  v1 = sub_24F91FDE8();
  v0[68] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226C28);
  v2 = sub_24F91FDD8();
  v0[69] = v2;
  v3 = sub_24F92B7E8();
  v0[70] = v3;
  v4 = swift_task_alloc();
  v0[71] = v4;
  *v4 = v0;
  v4[1] = sub_24EA9DAC0;
  v5 = MEMORY[0x277D85700];

  return MEMORY[0x2821FAF08](v0 + 76, v0 + 82, v0 + 2, v1, v2, v0 + 2, v3, v5);
}

uint64_t sub_24EA9DAC0()
{
  v2 = *v1;
  *(*v1 + 576) = v0;

  v3 = *(v2 + 536);
  v4 = *(v2 + 528);
  if (v0)
  {
    v5 = sub_24EA9EC9C;
  }

  else
  {
    v5 = sub_24EA9DC58;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24EA9DC58()
{
  v1 = *(v0 + 504);
  v3 = *(v0 + 472);
  v2 = *(v0 + 480);
  v4 = *(v0 + 448);
  v5 = *(v0 + 456);
  v6 = *(v0 + 352);
  v76 = *(v0 + 656);
  v7 = [*(v0 + 344) URL];
  sub_24F91F428();

  (*(v5 + 56))(v1, 0, 1, v4);
  v8 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_videoUrl;
  v9 = *(v3 + 48);
  sub_24E60169C(v1, v2, &qword_27F228530);
  v74 = v8;
  sub_24E60169C(v6 + v8, v2 + v9, &qword_27F228530);
  v10 = *(v5 + 48);
  if (v10(v2, 1, v4) == 1)
  {
    v11 = *(v0 + 448);
    sub_24E601704(*(v0 + 504), &qword_27F228530);
    if (v10(v2 + v9, 1, v11) == 1)
    {
      sub_24E601704(*(v0 + 480), &qword_27F228530);
      goto LABEL_9;
    }

LABEL_7:
    v17 = *(v0 + 480);
    v18 = &unk_27F226C18;
LABEL_26:
    sub_24E601704(v17, v18);
    goto LABEL_27;
  }

  v12 = *(v0 + 448);
  sub_24E60169C(*(v0 + 480), *(v0 + 496), &qword_27F228530);
  if (v10(v2 + v9, 1, v12) == 1)
  {
    v13 = *(v0 + 496);
    v14 = *(v0 + 504);
    v15 = *(v0 + 448);
    v16 = *(v0 + 456);

    sub_24E601704(v14, &qword_27F228530);
    (*(v16 + 8))(v13, v15);
    goto LABEL_7;
  }

  v19 = *(v0 + 496);
  v70 = *(v0 + 504);
  v71 = *(v0 + 480);
  v20 = *(v0 + 456);
  v21 = *(v0 + 464);
  v72 = v6;
  v22 = *(v0 + 448);
  (*(v20 + 32))(v21, v2 + v9, v22);
  sub_24EAA0BB4(&qword_27F226C38, MEMORY[0x277CC9260]);
  v23 = sub_24F92AFF8();
  v24 = *(v20 + 8);
  v24(v21, v22);
  sub_24E601704(v70, &qword_27F228530);
  v25 = v22;
  v6 = v72;
  v24(v19, v25);
  sub_24E601704(v71, &qword_27F228530);
  if ((v23 & 1) == 0)
  {

LABEL_27:

    v68 = *(v0 + 8);

    return v68();
  }

LABEL_9:
  if (!v76)
  {

    if (qword_27F210138 != -1)
    {
      swift_once();
    }

    v49 = *(v0 + 488);
    v50 = *(v0 + 448);
    v52 = *(v0 + 376);
    v51 = *(v0 + 384);
    v53 = *(v0 + 368);
    v54 = __swift_project_value_buffer(v53, qword_27F39B9B0);
    (*(v52 + 16))(v51, v54, v53);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F9283A8();
    sub_24E60169C(v6 + v74, v49, &qword_27F228530);
    v55 = v10(v49, 1, v50);
    v56 = *(v0 + 488);
    if (v55 == 1)
    {
      sub_24E601704(*(v0 + 488), &qword_27F228530);
      *(v0 + 224) = 0u;
      *(v0 + 240) = 0u;
    }

    else
    {
      v58 = *(v0 + 448);
      v59 = *(v0 + 456);
      *(v0 + 248) = v58;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 224));
      (*(v59 + 32))(boxed_opaque_existential_1, v56, v58);
    }

    v62 = *(v0 + 376);
    v61 = *(v0 + 384);
    v63 = *(v0 + 360);
    v64 = *(v0 + 368);
    v65 = *(v0 + 352);
    sub_24F928458();
    sub_24E601704(v0 + 224, &qword_27F2129B0);
    sub_24F92A5A8();

    (*(v62 + 8))(v61, v64);
    v66 = type metadata accessor for VideoPlaybackFailure();
    swift_storeEnumTagMultiPayload();
    (*(*(v66 - 8) + 56))(v63, 0, 1, v66);
    v67 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_failure;
    swift_beginAccess();
    sub_24EAA0010(v63, v65 + v67);
    swift_endAccess();
    sub_24EA9BA0C();
    v18 = &qword_27F226BE0;
    v17 = v63;
    goto LABEL_26;
  }

  v26 = *(v0 + 352);
  v27 = [objc_allocWithZone(MEMORY[0x277CE65B0]) initWithAsset_];
  *(v0 + 584) = v27;
  [v27 setPreferredForwardBufferDuration_];
  [v27 setAllowProgressiveSwitchUp_];
  [v27 setAllowProgressiveStartup_];
  [v27 setWillNeverSeekBackwardsHint_];
  [v27 setPlaybackLikelyToKeepUpTrigger_];
  v28 = *(v26 + OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_lastPlaybackTimeGuard);
  *(v0 + 592) = v28;
  [v28 lock];
  v29 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_lastPlaybackTimeUnsynchronized;
  *(v0 + 600) = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_lastPlaybackTimeUnsynchronized;
  v30 = (v26 + v29);
  v32 = *v30;
  v31 = v30[1];
  v33 = v30[2];
  LOBYTE(v26) = *(v30 + 24);
  [v28 unlock];
  if (v26)
  {

    v34 = (*(v0 + 352) + OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_playbackChecks);
    *v34 = 1;
    if (v34[1] == 1)
    {
      if (v34[2])
      {
        v35 = *(v0 + 352);
        v36 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_shouldBePlaying;
        swift_beginAccess();
        if (*(v35 + v36) == 1)
        {
          v37 = *(v0 + 440);
          v38 = *(v0 + 416);
          v75 = *(v0 + 432);
          v77 = *(v0 + 424);
          v39 = *(v0 + 400);
          v40 = *(v0 + 408);
          sub_24E69A5C4(0, &qword_27F222300);
          v73 = sub_24F92BEF8();
          v41 = swift_allocObject();
          swift_unknownObjectWeakInit();
          *(v0 + 176) = sub_24EAA13FC;
          *(v0 + 184) = v41;
          *(v0 + 144) = MEMORY[0x277D85DD0];
          *(v0 + 152) = 1107296256;
          *(v0 + 160) = sub_24EAF8248;
          *(v0 + 168) = &block_descriptor_114;
          v42 = _Block_copy((v0 + 144));

          sub_24F927DA8();
          *(v0 + 336) = MEMORY[0x277D84F90];
          sub_24EAA0BB4(&qword_27F222930, MEMORY[0x277D85198]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
          sub_24E602068(&qword_27F222940, &qword_27F222310);
          sub_24F92C6A8();
          MEMORY[0x2530518B0](0, v37, v38, v42);
          _Block_release(v42);

          (*(v40 + 8))(v38, v39);
          (*(v75 + 8))(v37, v77);
        }
      }
    }

    v43 = *(v0 + 584);
    v44 = *(v0 + 392);
    v45 = *(v0 + 352);
    v46 = *(v45 + OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_playerItem);
    *(v45 + OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_playerItem) = v43;
    v47 = v43;
    sub_24EA9B52C(v46);

    v48 = type metadata accessor for VideoPlayer.Event();
    swift_storeEnumTagMultiPayload();
    (*(*(v48 - 8) + 56))(v44, 0, 1, v48);
    sub_24F922FB8();

    v18 = &qword_27F21FEC8;
    v17 = v44;
    goto LABEL_26;
  }

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 657;
  *(v0 + 24) = sub_24EA9E78C;
  v57 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226C30);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_24EA9EF1C;
  *(v0 + 104) = &block_descriptor_117;
  *(v0 + 112) = v57;
  *(v0 + 632) = v32;
  *(v0 + 640) = v31;
  *(v0 + 648) = v33;
  [v27 seekToTime:v0 + 632 completionHandler:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_24EA9E78C()
{
  v1 = *(*v0 + 536);
  v2 = *(*v0 + 528);

  return MEMORY[0x2822009F8](sub_24EA9E894, v2, v1);
}

uint64_t sub_24EA9E894()
{
  v1 = v0[75];
  v2 = v0[74];
  v3 = v0[44];

  v4 = v3 + v1;
  [v2 lock];
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *(v4 + 24) = 1;
  [v2 unlock];
  v5 = (v0[44] + OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_playbackChecks);
  *v5 = 1;
  v6 = v5[1];
  v7 = v5[2];
  if (v6 == 1 && v7 != 0)
  {
    v9 = v0[44];
    v10 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_shouldBePlaying;
    swift_beginAccess();
    if (*(v9 + v10) == 1)
    {
      v11 = v0[55];
      v12 = v0[52];
      v26 = v0[54];
      v27 = v0[53];
      v13 = v0[50];
      v14 = v0[51];
      sub_24E69A5C4(0, &qword_27F222300);
      v25 = sub_24F92BEF8();
      v15 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v0[22] = sub_24EAA13FC;
      v0[23] = v15;
      v0[18] = MEMORY[0x277D85DD0];
      v0[19] = 1107296256;
      v0[20] = sub_24EAF8248;
      v0[21] = &block_descriptor_114;
      v16 = _Block_copy(v0 + 18);

      sub_24F927DA8();
      v0[42] = MEMORY[0x277D84F90];
      sub_24EAA0BB4(&qword_27F222930, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
      sub_24E602068(&qword_27F222940, &qword_27F222310);
      sub_24F92C6A8();
      MEMORY[0x2530518B0](0, v11, v12, v16);
      _Block_release(v16);

      (*(v14 + 8))(v12, v13);
      (*(v26 + 8))(v11, v27);
    }
  }

  v17 = v0[73];
  v18 = v0[49];
  v19 = v0[44];
  v20 = *(v19 + OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_playerItem);
  *(v19 + OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_playerItem) = v17;
  v21 = v17;
  sub_24EA9B52C(v20);

  v22 = type metadata accessor for VideoPlayer.Event();
  swift_storeEnumTagMultiPayload();
  (*(*(v22 - 8) + 56))(v18, 0, 1, v22);
  sub_24F922FB8();

  sub_24E601704(v18, &qword_27F21FEC8);

  v23 = v0[1];

  return v23();
}

uint64_t sub_24EA9EC9C()
{

  if (qword_27F210138 != -1)
  {
    swift_once();
  }

  v1 = v0[72];
  __swift_project_value_buffer(v0[46], qword_27F39B9B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F9283A8();
  swift_getErrorValue();
  v2 = v0[32];
  v3 = v0[33];
  v0[27] = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 24);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v2, v3);
  sub_24F928458();
  sub_24E601704((v0 + 24), &qword_27F2129B0);
  sub_24F92A5A8();

  v5 = v0[1];

  return v5();
}

uint64_t sub_24EA9EF1C(uint64_t a1, char a2)
{
  **(*(*__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return MEMORY[0x282200948]();
}

uint64_t sub_24EA9EF78()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226BE0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v17[-1] - v2;
  v4 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_playerItem;
  v5 = *&v0[OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_playerItem];
  if (v5)
  {
    v6 = [v5 asset];
  }

  else
  {
    v6 = 0;
  }

  [v6 cancelLoading];

  [v0 pause];
  v7 = MEMORY[0x277CC08F0];
  v8 = *MEMORY[0x277CC08F0];
  v9 = *(MEMORY[0x277CC08F0] + 16);
  v10 = type metadata accessor for VideoPlayer();
  v18.receiver = v0;
  v18.super_class = v10;
  v17[0] = v8;
  v17[1] = *(v7 + 8);
  v17[2] = v9;
  objc_msgSendSuper2(&v18, sel_seekToTime_, v17);
  v11 = *&v0[v4];
  *&v0[v4] = 0;
  sub_24EA9B52C(v11);

  v12 = type metadata accessor for VideoPlaybackFailure();
  (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
  v13 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_failure;
  swift_beginAccess();
  sub_24EAA0010(v3, &v0[v13]);
  swift_endAccess();
  sub_24EA9BA0C();
  sub_24E601704(v3, &qword_27F226BE0);
  *&v0[OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_failureCount] = 0;
  sub_24EA9C004();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v17[0]) = 0;
  v14 = v0;
  return sub_24F9230A8();
}

uint64_t sub_24EA9F178(uint64_t a1, void *a2, unsigned __int8 a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FEC8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v54 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226BE0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = (&v54 - v11);
  v13 = sub_24F927D88();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24F927DC8();
  result = MEMORY[0x28223BE20](v17);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 <= 1u)
  {
    v56 = v14;
    if (a3)
    {
      v33 = &v3[OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_playbackChecks];
      v33[1] = a1 & 1;
      if (*v33 != 1)
      {
        return result;
      }

      if ((a1 & 1) == 0)
      {
        return result;
      }

      if ((v33[2] & 1) == 0)
      {
        return result;
      }

      v25 = v19;
      v26 = result;
      v34 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_shouldBePlaying;
      result = swift_beginAccess();
      if (v3[v34] != 1)
      {
        return result;
      }

      sub_24E69A5C4(0, &qword_27F222300);
      v55 = sub_24F92BEF8();
      v35 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v61 = sub_24EAA0B94;
      v62 = v35;
      aBlock = MEMORY[0x277D85DD0];
      v58 = 1107296256;
      v29 = &block_descriptor_43;
LABEL_24:
      v59 = sub_24EAF8248;
      v60 = v29;
      v36 = _Block_copy(&aBlock);

      sub_24F927DA8();
      aBlock = MEMORY[0x277D84F90];
      sub_24EAA0BB4(&qword_27F222930, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
      sub_24E602068(&qword_27F222940, &qword_27F222310);
      sub_24F92C6A8();
      v37 = v55;
      MEMORY[0x2530518B0](0, v21, v16, v36);
      _Block_release(v36);

      (*(v56 + 8))(v16, v13);
      return (*(v25 + 8))(v21, v26);
    }

    if (a1 != 2)
    {
      if (a1 != 1)
      {
        return result;
      }

      v24 = &v3[OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_playbackChecks];
      v24[2] = 1;
      if (*v24 != 1)
      {
        return result;
      }

      if (!v24[1])
      {
        return result;
      }

      v25 = v19;
      v26 = result;
      v27 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_shouldBePlaying;
      result = swift_beginAccess();
      if (v3[v27] != 1)
      {
        return result;
      }

      sub_24E69A5C4(0, &qword_27F222300);
      v55 = sub_24F92BEF8();
      v28 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v61 = sub_24EAA13FC;
      v62 = v28;
      aBlock = MEMORY[0x277D85DD0];
      v58 = 1107296256;
      v29 = &block_descriptor_77;
      goto LABEL_24;
    }

    if (!a2)
    {
      goto LABEL_42;
    }

    v42 = a2;
    v43 = [v42 domain];
    v44 = sub_24F92B0D8();
    v46 = v45;

    if (qword_27F210140 != -1)
    {
      swift_once();
    }

    if (v44 == qword_27F226B28 && v46 == unk_27F226B30)
    {
    }

    else
    {
      v48 = sub_24F92CE08();

      if ((v48 & 1) == 0)
      {
LABEL_41:
        sub_24EAA0BFC(2, a2, 0);
LABEL_42:
        v52 = type metadata accessor for VideoPlaybackFailure();
        swift_storeEnumTagMultiPayload();
        (*(*(v52 - 8) + 56))(v12, 0, 1, v52);
        v53 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_failure;
        swift_beginAccess();
        sub_24EAA0010(v12, &v3[v53]);
        swift_endAccess();
        sub_24EA9BA0C();
        goto LABEL_43;
      }
    }

    if ([v42 code] == -11839)
    {
      *v12 = a2;
      v49 = type metadata accessor for VideoPlaybackFailure();
      swift_storeEnumTagMultiPayload();
      (*(*(v49 - 8) + 56))(v12, 0, 1, v49);
      v50 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_failure;
      swift_beginAccess();
      v51 = v42;
      sub_24EAA0010(v12, &v3[v50]);
      swift_endAccess();
      sub_24EA9BA0C();
      sub_24EAA0BFC(2, a2, 0);
LABEL_43:
      v40 = &qword_27F226BE0;
      v41 = v12;
      return sub_24E601704(v41, v40);
    }

    goto LABEL_41;
  }

  if (a3 == 2)
  {
    *v9 = a1;
    v30 = type metadata accessor for VideoPlayer.Event();
LABEL_27:
    swift_storeEnumTagMultiPayload();
    (*(*(v30 - 8) + 56))(v9, 0, 1, v30);
    sub_24F922FB8();
    v40 = &qword_27F21FEC8;
    v41 = v9;
    return sub_24E601704(v41, v40);
  }

  if (a3 != 3)
  {
    v31 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_shouldLoopPlayback;
    swift_beginAccess();
    if (v3[v31] == 1)
    {
      v32 = *(MEMORY[0x277CC08F0] + 16);
      v63 = *MEMORY[0x277CC08F0];
      v64 = *(MEMORY[0x277CC08F0] + 8);
      v65 = v32;
      [v3 seekToTime_];
      [v3 play];
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v63) = 4;
      v38 = v3;
      sub_24F9230A8();
      [v38 pause];
      v39 = *(MEMORY[0x277CC08F0] + 16);
      v63 = *MEMORY[0x277CC08F0];
      v64 = *(MEMORY[0x277CC08F0] + 8);
      v65 = v39;
      [v38 seekToTime_];
    }

    v30 = type metadata accessor for VideoPlayer.Event();
    goto LABEL_27;
  }

  if (*&v3[OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_playerItem])
  {
    if (*&a1 == 0.0)
    {
      v22 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_shouldBePlaying;
      result = swift_beginAccess();
      if ((v3[v22] & 1) == 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v23 = 2;
        goto LABEL_37;
      }
    }

    if (*&a1 > 0.0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v23 = 3;
LABEL_37:
      LOBYTE(v63) = v23;
      v47 = v3;
      return sub_24F9230A8();
    }
  }

  return result;
}

id VideoPlayer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VideoPlayer.__allocating_init(url:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_24F91F3B8();
  v5 = [v3 initWithURL_];

  v6 = sub_24F91F4A8();
  (*(*(v6 - 8) + 8))(a1, v6);
  return v5;
}

id VideoPlayer.__allocating_init(playerItem:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithPlayerItem_];

  return v3;
}

id VideoPlayer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VideoPlayer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24EA9FEE0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for VideoPlayer();
  result = sub_24F922FA8();
  *a1 = result;
  return result;
}

uint64_t sub_24EA9FF20()
{
  v0 = objc_allocWithZone(MEMORY[0x277CE6650]);
  v1 = sub_24F91F3B8();
  [v0 initWithURL:v1 options:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226C40);
  return sub_24F92B798();
}

id sub_24EA9FFC0@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 rate];
  *a2 = v4;
  return result;
}

uint64_t sub_24EAA0010(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226BE0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t keypath_set_19Tm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

void sub_24EAA0110()
{
  sub_24EAA0684();
  if (v0 <= 0x3F)
  {
    sub_24EAA06D4(319, &qword_27F218378, MEMORY[0x277CC9260]);
    if (v1 <= 0x3F)
    {
      sub_24EAA06D4(319, &qword_27F226BF8, type metadata accessor for VideoPlaybackFailure);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of VideoPlayer.startPreloading()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x1F8);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24E6541E4;

  return v5();
}

void sub_24EAA0684()
{
  if (!qword_27F21FE88)
  {
    v0 = sub_24F9230B8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F21FE88);
    }
  }
}

void sub_24EAA06D4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F92C4A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24EAA0728(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_24EAA1410;

  return v5(v2 + 16);
}

uint64_t sub_24EAA081C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24E6541E4;

  return sub_24EAA0728(a1, v4);
}

uint64_t sub_24EAA08D4(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_24EAA09C8;

  return v5(v2 + 32);
}

uint64_t sub_24EAA09C8()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_24EAA0ADC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24E6541E4;

  return sub_24EAA08D4(a1, v4);
}

uint64_t block_copy_helper_43(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24EAA0BB4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_24EAA0BFC(uint64_t a1, void *a2, char a3)
{
  if (!a3)
  {
  }
}

uint64_t sub_24EAA0C0C(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_24EAA0D00;

  return v5(v2 + 16);
}

uint64_t sub_24EAA0D00()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_24EAA0E30(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24E6541E4;

  return sub_24EAA0C0C(a1, v4);
}

uint64_t sub_24EAA0EE8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24E614970;

  return sub_24EAA0C0C(a1, v4);
}

uint64_t sub_24EAA0FA0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24E6541E4;

  return sub_24EAA08D4(a1, v4);
}

uint64_t objectdestroy_4Tm_2()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24EAA1098(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E614970;

  return sub_24EA9C314(a1, v4, v5, v6);
}

uint64_t sub_24EAA114C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoPlaybackFailure();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EAA11B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoPlaybackFailure();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EAA1214(uint64_t a1)
{
  v2 = type metadata accessor for VideoPlaybackFailure();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EAA1270()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_115(uint64_t a1, uint64_t a2)
{
  return sub_24E643A9C(a2 + 32, a1 + 32);
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24EAA12DC()
{

  return swift_deallocObject();
}

uint64_t sub_24EAA1314(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24E6541E4;

  return sub_24E695D48(a1, v4);
}

Swift::Void __swiftcall PageGridCaching.invalidateCache()()
{
  v1 = (*(v0 + 8))();
  swift_beginAccess();
  v2 = MEMORY[0x277D84F98];
  *(v1 + 16) = MEMORY[0x277D84F98];

  swift_beginAccess();
  *(v1 + 24) = v2;
}

uint64_t PageGridCaching.contentPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>, double a12@<D4>, double a13@<D5>, double a14@<D6>, double a15@<D7>, double a16, double a17)
{
  v121 = a7;
  v129 = a5;
  v104 = a4;
  v125 = a14;
  v126 = a15;
  v124 = a1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A690);
  MEMORY[0x28223BE20](v26 - 8);
  v106 = &v102 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v108 = &v102 - v29;
  MEMORY[0x28223BE20](v30);
  v123 = &v102 - v31;
  MEMORY[0x28223BE20](v32);
  v122 = &v102 - v33;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00);
  v127 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v128 = &v102 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680);
  MEMORY[0x28223BE20](v35);
  v105 = &v102 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v107 = &v102 - v38;
  MEMORY[0x28223BE20](v39);
  v103 = &v102 - v40;
  MEMORY[0x28223BE20](v41);
  v112 = &v102 - v42;
  MEMORY[0x28223BE20](v43);
  v110 = &v102 - v44;
  MEMORY[0x28223BE20](v45);
  v130 = &v102 - v46;
  MEMORY[0x28223BE20](v47);
  v49 = &v102 - v48;
  MEMORY[0x28223BE20](v50);
  v52 = &v102 - v51;
  MEMORY[0x28223BE20](v53);
  v55 = &v102 - v54;
  MEMORY[0x28223BE20](v56);
  v58 = &v102 - v57;
  sub_24E60169C(a2, &v102 - v57, &unk_27F23A690);
  sub_24E60169C(a3, &v58[*(v35 + 48)], &unk_27F23A690);
  v59 = a6;
  v60 = *(a6 + 8);
  v61 = v120;
  v62 = v129;
  v116 = v60(v129, v59);
  v118 = v58;
  sub_24E60169C(v58, v55, &unk_27F23A680);
  v63 = *(v35 + 48);
  v102 = sub_24EAA21B0(v61, v62, v59);
  v115 = v64;
  sub_24E60169C(v55, v52, &unk_27F23A690);
  v65 = *(v35 + 48);
  v120 = v55;
  v117 = v63;
  sub_24E60169C(&v55[v63], &v52[v65], &unk_27F23A690);
  v66 = v109;
  (*(v127 + 16))(v128, v124, v109);
  v119 = v52;
  sub_24E60169C(v52, v49, &unk_27F23A680);
  v67 = *(v35 + 48);
  v68 = v130;
  sub_24EAA34E0(v49, v130);
  sub_24EAA34E0(&v49[v67], v68 + *(v35 + 48));
  swift_getKeyPath();
  sub_24F928A48();

  v114 = v132[0];
  swift_getKeyPath();
  sub_24F928A48();

  v113 = v132[0];
  swift_getKeyPath();
  sub_24F928A48();

  v111 = v132[0];
  swift_getKeyPath();
  sub_24F928A48();

  *&v132[21] = v131[1];
  *&v132[37] = v131[2];
  *&v132[53] = v131[3];
  *&v132[69] = *&v131[4];
  *&v132[5] = v131[0];
  v69 = v68;
  v70 = v122;
  v71 = v110;
  sub_24E60169C(v69, v110, &unk_27F23A680);
  v129 = v35;
  v72 = *(v35 + 48);
  v73 = v127;
  v74 = v71;
  sub_24EAA34E0(v71, v70);
  v75 = *(v73 + 48);
  if (v75(v70, 1, v66) == 1)
  {
    sub_24E601704(v71 + v72, &unk_27F23A690);
    sub_24E601704(v70, &unk_27F23A690);
    v76 = v123;
    v77 = v130;
  }

  else
  {
    swift_getKeyPath();
    sub_24F928A48();

    v78 = LOBYTE(v131[0]);
    (*(v73 + 8))(v70, v66);
    sub_24E601704(v74 + v72, &unk_27F23A690);
    LODWORD(v122) = v78;
    v79 = v78 == 104;
    v76 = v123;
    v77 = v130;
    if (!v79)
    {
      goto LABEL_9;
    }
  }

  v80 = v105;
  sub_24E60169C(v77, v105, &unk_27F23A680);
  v81 = v80 + *(v129 + 48);
  v82 = v80;
  v83 = v106;
  sub_24EAA34E0(v82, v106);
  if (v75(v83, 1, v66) == 1)
  {
    sub_24E601704(v81, &unk_27F23A690);
    LODWORD(v122) = 104;
    v81 = v83;
  }

  else
  {
    swift_getKeyPath();
    sub_24F928A48();
    v77 = v130;
    v76 = v123;

    LODWORD(v122) = LOBYTE(v131[0]);
    (*(v73 + 8))(v83, v66);
  }

  sub_24E601704(v81, &unk_27F23A690);
LABEL_9:
  v84 = v112;
  sub_24E60169C(v77, v112, &unk_27F23A680);
  sub_24EAA34E0(v84 + *(v129 + 48), v76);
  if (v75(v76, 1, v66) == 1)
  {
    sub_24E601704(v84, &unk_27F23A690);
    sub_24E601704(v76, &unk_27F23A690);
  }

  else
  {
    swift_getKeyPath();
    sub_24F928A48();

    v85 = LOBYTE(v131[0]);
    v86 = v76;
    v87 = *(v73 + 8);
    v87(v86, v66);
    sub_24E601704(v84, &unk_27F23A690);
    if (v85 != 104)
    {
      sub_24E601704(v130, &unk_27F23A680);
      v87(v128, v66);
      goto LABEL_16;
    }
  }

  v88 = v130;
  v89 = v107;
  sub_24E60169C(v130, v107, &unk_27F23A680);
  v90 = v108;
  sub_24EAA34E0(v89 + *(v129 + 48), v108);
  if (v75(v90, 1, v66) == 1)
  {
    sub_24E601704(v88, &unk_27F23A680);
    (*(v73 + 8))(v128, v66);
    sub_24E601704(v89, &unk_27F23A690);
    sub_24E601704(v90, &unk_27F23A690);
    LOBYTE(v85) = 104;
  }

  else
  {
    swift_getKeyPath();
    sub_24F928A48();

    sub_24E601704(v88, &unk_27F23A680);
    v91 = *(v73 + 8);
    v91(v128, v66);
    LOBYTE(v85) = v131[0];
    v91(v90, v66);
    sub_24E601704(v89, &unk_27F23A690);
  }

LABEL_16:
  v135 = *&v132[16];
  v136 = *&v132[32];
  *v137 = *&v132[48];
  *&v137[13] = *&v132[61];
  v133[0] = v114;
  v133[1] = v113;
  v133[2] = v111;
  v134 = *v132;
  v138 = v122;
  v139 = v85;
  v141 = WORD2(v131[0]);
  v140 = v131[0];
  v142 = a8;
  v143 = a9;
  v144 = a10;
  v145 = a11;
  v146 = a12;
  v147 = a13;
  v148 = v125;
  v149 = v126;
  v150 = a16;
  v151 = a17;
  v92 = v116;
  swift_beginAccess();
  v93 = *(v92 + 16);
  if (!*(v93 + 16))
  {
LABEL_20:
    v96 = v119;
    v97 = v103;
    sub_24E60169C(v119, v103, &unk_27F23A680);
    v98 = *(v129 + 48);
    (v102)(v131, v124, v97, v97 + v98, v104, a8, a9, a10, a11, a12, a13, v125, v126, a16, a17);
    sub_24E601704(v97 + v98, &unk_27F23A690);
    sub_24E601704(v97, &unk_27F23A690);
    memcpy(v132, v131, sizeof(v132));
    swift_beginAccess();
    sub_24E8B9768(v132, v131);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v131[0] = *(v92 + 16);
    *(v92 + 16) = 0x8000000000000000;
    sub_24E81E840(v132, v133, isUniquelyReferenced_nonNull_native);
    sub_24E772830(v133);
    *(v92 + 16) = *&v131[0];
    swift_endAccess();

    sub_24E601704(v96, &unk_27F23A680);
    sub_24E601704(v118, &unk_27F23A680);
    goto LABEL_21;
  }

  v94 = sub_24E76E2DC(v133);
  if ((v95 & 1) == 0)
  {

    goto LABEL_20;
  }

  memcpy(v132, (*(v93 + 56) + 392 * v94), sizeof(v132));
  sub_24E8B9768(v132, v131);
  sub_24E772830(v133);

  sub_24E601704(v119, &unk_27F23A680);
  sub_24E601704(v118, &unk_27F23A680);

LABEL_21:
  memcpy(v121, v132, 0x188uLL);
  v100 = v120;
  sub_24E601704(&v120[v117], &unk_27F23A690);
  return sub_24E601704(v100, &unk_27F23A690);
}

uint64_t (*sub_24EAA21B0(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v8 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v7);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  (*(v5 + 32))(v10 + v9, v8, a2);
  return sub_24EAA3654;
}

uint64_t sub_24EAA22D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, double a17)
{
  v40 = a5;
  v41 = a6;
  v39 = a4;
  v37 = a14;
  v38 = a15;
  v36 = a1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680);
  v28 = v27 - 8;
  MEMORY[0x28223BE20](v27);
  v30 = &v36 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v36 - v32;
  sub_24E60169C(a2, &v36 - v32, &unk_27F23A690);
  sub_24E60169C(a3, &v33[*(v28 + 56)], &unk_27F23A690);
  sub_24E60169C(v33, v30, &unk_27F23A680);
  v34 = *(v28 + 56);
  (*(a7 + 24))(v36, v30, &v30[v34], v39, v41, a7, a8, a9, a10, a11, a12, a13, v37, v38, a16, a17);
  sub_24E601704(v33, &unk_27F23A680);
  sub_24E601704(&v30[v34], &unk_27F23A690);
  return sub_24E601704(v30, &unk_27F23A690);
}

uint64_t PageGridCaching.supplementaryPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>, double a12@<D4>, double a13@<D5>, double a14@<D6>, double a15@<D7>, double a16, double a17)
{
  v121 = a7;
  v129 = a5;
  v104 = a4;
  v125 = a14;
  v126 = a15;
  v124 = a1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A690);
  MEMORY[0x28223BE20](v26 - 8);
  v106 = &v102 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v108 = &v102 - v29;
  MEMORY[0x28223BE20](v30);
  v123 = &v102 - v31;
  MEMORY[0x28223BE20](v32);
  v122 = &v102 - v33;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00);
  v127 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v128 = &v102 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680);
  MEMORY[0x28223BE20](v35);
  v105 = &v102 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v107 = &v102 - v38;
  MEMORY[0x28223BE20](v39);
  v103 = &v102 - v40;
  MEMORY[0x28223BE20](v41);
  v112 = &v102 - v42;
  MEMORY[0x28223BE20](v43);
  v110 = &v102 - v44;
  MEMORY[0x28223BE20](v45);
  v130 = &v102 - v46;
  MEMORY[0x28223BE20](v47);
  v49 = &v102 - v48;
  MEMORY[0x28223BE20](v50);
  v52 = &v102 - v51;
  MEMORY[0x28223BE20](v53);
  v55 = &v102 - v54;
  MEMORY[0x28223BE20](v56);
  v58 = &v102 - v57;
  sub_24E60169C(a2, &v102 - v57, &unk_27F23A690);
  sub_24E60169C(a3, &v58[*(v35 + 48)], &unk_27F23A690);
  v59 = a6;
  v60 = *(a6 + 8);
  v61 = v120;
  v62 = v129;
  v116 = v60(v129, v59);
  v118 = v58;
  sub_24E60169C(v58, v55, &unk_27F23A680);
  v63 = *(v35 + 48);
  v102 = sub_24EAA31C8(v61, v62, v59);
  v115 = v64;
  sub_24E60169C(v55, v52, &unk_27F23A690);
  v65 = *(v35 + 48);
  v120 = v55;
  v117 = v63;
  sub_24E60169C(&v55[v63], &v52[v65], &unk_27F23A690);
  v66 = v109;
  (*(v127 + 16))(v128, v124, v109);
  v119 = v52;
  sub_24E60169C(v52, v49, &unk_27F23A680);
  v67 = *(v35 + 48);
  v68 = v130;
  sub_24EAA34E0(v49, v130);
  sub_24EAA34E0(&v49[v67], v68 + *(v35 + 48));
  swift_getKeyPath();
  sub_24F928A48();

  v114 = v132[0];
  swift_getKeyPath();
  sub_24F928A48();

  v113 = v132[0];
  swift_getKeyPath();
  sub_24F928A48();

  v111 = v132[0];
  swift_getKeyPath();
  sub_24F928A48();

  *&v132[21] = v131[1];
  *&v132[37] = v131[2];
  *&v132[53] = v131[3];
  *&v132[69] = *&v131[4];
  *&v132[5] = v131[0];
  v69 = v68;
  v70 = v122;
  v71 = v110;
  sub_24E60169C(v69, v110, &unk_27F23A680);
  v129 = v35;
  v72 = *(v35 + 48);
  v73 = v127;
  v74 = v71;
  sub_24EAA34E0(v71, v70);
  v75 = *(v73 + 48);
  if (v75(v70, 1, v66) == 1)
  {
    sub_24E601704(v71 + v72, &unk_27F23A690);
    sub_24E601704(v70, &unk_27F23A690);
    v76 = v123;
    v77 = v130;
  }

  else
  {
    swift_getKeyPath();
    sub_24F928A48();

    v78 = LOBYTE(v131[0]);
    (*(v73 + 8))(v70, v66);
    sub_24E601704(v74 + v72, &unk_27F23A690);
    LODWORD(v122) = v78;
    v79 = v78 == 104;
    v76 = v123;
    v77 = v130;
    if (!v79)
    {
      goto LABEL_9;
    }
  }

  v80 = v105;
  sub_24E60169C(v77, v105, &unk_27F23A680);
  v81 = v80 + *(v129 + 48);
  v82 = v80;
  v83 = v106;
  sub_24EAA34E0(v82, v106);
  if (v75(v83, 1, v66) == 1)
  {
    sub_24E601704(v81, &unk_27F23A690);
    LODWORD(v122) = 104;
    v81 = v83;
  }

  else
  {
    swift_getKeyPath();
    sub_24F928A48();
    v77 = v130;
    v76 = v123;

    LODWORD(v122) = LOBYTE(v131[0]);
    (*(v73 + 8))(v83, v66);
  }

  sub_24E601704(v81, &unk_27F23A690);
LABEL_9:
  v84 = v112;
  sub_24E60169C(v77, v112, &unk_27F23A680);
  sub_24EAA34E0(v84 + *(v129 + 48), v76);
  if (v75(v76, 1, v66) == 1)
  {
    sub_24E601704(v84, &unk_27F23A690);
    sub_24E601704(v76, &unk_27F23A690);
  }

  else
  {
    swift_getKeyPath();
    sub_24F928A48();

    v85 = LOBYTE(v131[0]);
    v86 = v76;
    v87 = *(v73 + 8);
    v87(v86, v66);
    sub_24E601704(v84, &unk_27F23A690);
    if (v85 != 104)
    {
      sub_24E601704(v130, &unk_27F23A680);
      v87(v128, v66);
      goto LABEL_16;
    }
  }

  v88 = v130;
  v89 = v107;
  sub_24E60169C(v130, v107, &unk_27F23A680);
  v90 = v108;
  sub_24EAA34E0(v89 + *(v129 + 48), v108);
  if (v75(v90, 1, v66) == 1)
  {
    sub_24E601704(v88, &unk_27F23A680);
    (*(v73 + 8))(v128, v66);
    sub_24E601704(v89, &unk_27F23A690);
    sub_24E601704(v90, &unk_27F23A690);
    LOBYTE(v85) = 104;
  }

  else
  {
    swift_getKeyPath();
    sub_24F928A48();

    sub_24E601704(v88, &unk_27F23A680);
    v91 = *(v73 + 8);
    v91(v128, v66);
    LOBYTE(v85) = v131[0];
    v91(v90, v66);
    sub_24E601704(v89, &unk_27F23A690);
  }

LABEL_16:
  v135 = *&v132[16];
  v136 = *&v132[32];
  *v137 = *&v132[48];
  *&v137[13] = *&v132[61];
  v133[0] = v114;
  v133[1] = v113;
  v133[2] = v111;
  v134 = *v132;
  v138 = v122;
  v139 = v85;
  v141 = WORD2(v131[0]);
  v140 = v131[0];
  v142 = a8;
  v143 = a9;
  v144 = a10;
  v145 = a11;
  v146 = a12;
  v147 = a13;
  v148 = v125;
  v149 = v126;
  v150 = a16;
  v151 = a17;
  v92 = v116;
  swift_beginAccess();
  v93 = *(v92 + 24);
  if (!*(v93 + 16))
  {
LABEL_20:
    v96 = v119;
    v97 = v103;
    sub_24E60169C(v119, v103, &unk_27F23A680);
    v98 = *(v129 + 48);
    (v102)(v131, v124, v97, v97 + v98, v104, a8, a9, a10, a11, a12, a13, v125, v126, a16, a17);
    sub_24E601704(v97 + v98, &unk_27F23A690);
    sub_24E601704(v97, &unk_27F23A690);
    memcpy(v132, v131, sizeof(v132));
    swift_beginAccess();
    sub_24E8B9768(v132, v131);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v131[0] = *(v92 + 24);
    *(v92 + 24) = 0x8000000000000000;
    sub_24E81E840(v132, v133, isUniquelyReferenced_nonNull_native);
    sub_24E772830(v133);
    *(v92 + 24) = *&v131[0];
    swift_endAccess();

    sub_24E601704(v96, &unk_27F23A680);
    sub_24E601704(v118, &unk_27F23A680);
    goto LABEL_21;
  }

  v94 = sub_24E76E2DC(v133);
  if ((v95 & 1) == 0)
  {

    goto LABEL_20;
  }

  memcpy(v132, (*(v93 + 56) + 392 * v94), sizeof(v132));
  sub_24E8B9768(v132, v131);
  sub_24E772830(v133);

  sub_24E601704(v119, &unk_27F23A680);
  sub_24E601704(v118, &unk_27F23A680);

LABEL_21:
  memcpy(v121, v132, 0x188uLL);
  v100 = v120;
  sub_24E601704(&v120[v117], &unk_27F23A690);
  return sub_24E601704(v100, &unk_27F23A690);
}

uint64_t (*sub_24EAA31C8(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v8 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v7);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  (*(v5 + 32))(v10 + v9, v8, a2);
  return sub_24EAA35B4;
}

uint64_t sub_24EAA32E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, double a17)
{
  v40 = a5;
  v41 = a6;
  v39 = a4;
  v37 = a14;
  v38 = a15;
  v36 = a1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680);
  v28 = v27 - 8;
  MEMORY[0x28223BE20](v27);
  v30 = &v36 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v36 - v32;
  sub_24E60169C(a2, &v36 - v32, &unk_27F23A690);
  sub_24E60169C(a3, &v33[*(v28 + 56)], &unk_27F23A690);
  sub_24E60169C(v33, v30, &unk_27F23A680);
  v34 = *(v28 + 56);
  (*(a7 + 32))(v36, v30, &v30[v34], v39, v41, a7, a8, a9, a10, a11, a12, a13, v37, v38, a16, a17);
  sub_24E601704(v33, &unk_27F23A680);
  sub_24E601704(&v30[v34], &unk_27F23A690);
  return sub_24E601704(v30, &unk_27F23A690);
}

uint64_t sub_24EAA34E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A690);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_23()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t TrendingSearches.__allocating_init(title:maxNumberOfSearches:searches:pageMetrics:pageRenderEvent:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  *(v14 + 2) = a1;
  *(v14 + 3) = a2;
  v15 = OBJC_IVAR____TtC12GameStoreKit16TrendingSearches_pageMetrics;
  v16 = sub_24F928818();
  v17 = *(v16 - 8);
  (*(v17 + 16))(&v14[v15], a6, v16);
  *&v14[OBJC_IVAR____TtC12GameStoreKit16TrendingSearches_pageRenderEvent] = a7;
  if (a4)
  {
    goto LABEL_26;
  }

  if (!(a5 >> 62))
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      if (*((a5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= a3)
      {
        a4 = a3;
      }

      else
      {
        a4 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

LABEL_7:
      if ((a5 & 0xC000000000000001) != 0 && a4)
      {
        type metadata accessor for SearchAction();

        v18 = 0;
        do
        {
          v19 = v18 + 1;
          sub_24F92C8C8();
          v18 = v19;
        }

        while (a4 != v19);
      }

      else
      {
      }

      if (a5 >> 62)
      {
        a3 = sub_24F92CB18();
        v20 = v21;
        v15 = v22;
        a4 = v23;

        if (a4)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v15 = 0;
        a3 = a5 & 0xFFFFFFFFFFFFFF8;
        v20 = (a5 & 0xFFFFFFFFFFFFFF8) + 32;
        a4 = (2 * a4) | 1;
        if (a4)
        {
LABEL_18:
          v29 = v20;
          sub_24F92CEF8();
          swift_unknownObjectRetain_n();
          v25 = swift_dynamicCastClass();
          if (!v25)
          {
            swift_unknownObjectRelease();
            v25 = MEMORY[0x277D84F90];
          }

          v26 = *(v25 + 16);

          if (!__OFSUB__(a4 >> 1, v15))
          {
            if (v26 == (a4 >> 1) - v15)
            {
              a5 = swift_dynamicCastClass();
              swift_unknownObjectRelease_n();
              if (a5)
              {
LABEL_25:

LABEL_26:
                (*(v17 + 8))(a6, v16);
                *(v14 + 4) = a5;
                return v14;
              }

              a5 = MEMORY[0x277D84F90];
LABEL_24:
              swift_unknownObjectRelease();
              goto LABEL_25;
            }

            goto LABEL_39;
          }

LABEL_38:
          __break(1u);
LABEL_39:
          swift_unknownObjectRelease_n();
          v20 = v29;
        }
      }

      sub_24E6B878C(a3, v20, v15, a4);
      a5 = v24;
      goto LABEL_24;
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (a5 < 0)
  {
    v15 = a5;
  }

  else
  {
    v15 = a5 & 0xFFFFFFFFFFFFFF8;
  }

  v28 = sub_24F92C738();
  if (v28 >= a3)
  {
    a4 = a3;
  }

  else
  {
    a4 = v28;
  }

  if ((a4 & 0x8000000000000000) != 0)
  {
    goto LABEL_37;
  }

  result = sub_24F92C738();
  if ((result & 0x8000000000000000) == 0)
  {
    if (sub_24F92C738() >= a4)
    {
      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_37;
  }

  __break(1u);
  return result;
}

uint64_t TrendingSearches.init(title:maxNumberOfSearches:searches:pageMetrics:pageRenderEvent:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 2) = a1;
  *(v7 + 3) = a2;
  v13 = OBJC_IVAR____TtC12GameStoreKit16TrendingSearches_pageMetrics;
  v14 = sub_24F928818();
  v15 = *(v14 - 8);
  (*(v15 + 16))(&v7[v13], a6, v14);
  *&v7[OBJC_IVAR____TtC12GameStoreKit16TrendingSearches_pageRenderEvent] = a7;
  if (a4)
  {
    goto LABEL_26;
  }

  if (!(a5 >> 62))
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      if (*((a5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= a3)
      {
        a4 = a3;
      }

      else
      {
        a4 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

LABEL_7:
      if ((a5 & 0xC000000000000001) != 0 && a4)
      {
        type metadata accessor for SearchAction();

        v16 = 0;
        do
        {
          v17 = v16 + 1;
          sub_24F92C8C8();
          v16 = v17;
        }

        while (a4 != v17);
      }

      else
      {
      }

      if (a5 >> 62)
      {
        a3 = sub_24F92CB18();
        v18 = v19;
        v13 = v20;
        a4 = v21;

        if (a4)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v13 = 0;
        a3 = a5 & 0xFFFFFFFFFFFFFF8;
        v18 = (a5 & 0xFFFFFFFFFFFFFF8) + 32;
        a4 = (2 * a4) | 1;
        if (a4)
        {
LABEL_18:
          v27 = v18;
          sub_24F92CEF8();
          swift_unknownObjectRetain_n();
          v23 = swift_dynamicCastClass();
          if (!v23)
          {
            swift_unknownObjectRelease();
            v23 = MEMORY[0x277D84F90];
          }

          v24 = *(v23 + 16);

          if (!__OFSUB__(a4 >> 1, v13))
          {
            if (v24 == (a4 >> 1) - v13)
            {
              a5 = swift_dynamicCastClass();
              swift_unknownObjectRelease_n();
              if (a5)
              {
LABEL_25:

LABEL_26:
                (*(v15 + 8))(a6, v14);
                *(v7 + 4) = a5;
                return v7;
              }

              a5 = MEMORY[0x277D84F90];
LABEL_24:
              swift_unknownObjectRelease();
              goto LABEL_25;
            }

            goto LABEL_39;
          }

LABEL_38:
          __break(1u);
LABEL_39:
          swift_unknownObjectRelease_n();
          v18 = v27;
        }
      }

      sub_24E6B878C(a3, v18, v13, a4);
      a5 = v22;
      goto LABEL_24;
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (a5 < 0)
  {
    v13 = a5;
  }

  else
  {
    v13 = a5 & 0xFFFFFFFFFFFFFF8;
  }

  v26 = sub_24F92C738();
  if (v26 >= a3)
  {
    a4 = a3;
  }

  else
  {
    a4 = v26;
  }

  if ((a4 & 0x8000000000000000) != 0)
  {
    goto LABEL_37;
  }

  result = sub_24F92C738();
  if ((result & 0x8000000000000000) == 0)
  {
    if (sub_24F92C738() >= a4)
    {
      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_37;
  }

  __break(1u);
  return result;
}

void *TrendingSearches.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v123 = a2;
  v3 = sub_24F92AC38();
  v118 = *(v3 - 8);
  v119 = v3;
  MEMORY[0x28223BE20](v3);
  v114 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v110 = &v97 - v6;
  v7 = sub_24F928818();
  v108 = *(v7 - 8);
  v109 = v7;
  MEMORY[0x28223BE20](v7);
  v107 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v113 = &v97 - v10;
  v120 = sub_24F9285B8();
  v122 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v106 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v112 = &v97 - v13;
  MEMORY[0x28223BE20](v14);
  v115 = &v97 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v97 - v17;
  v19 = sub_24F928388();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v105 = &v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v104 = &v97 - v23;
  MEMORY[0x28223BE20](v24);
  v103 = &v97 - v25;
  MEMORY[0x28223BE20](v26);
  v111 = &v97 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v97 - v29;
  v31 = sub_24F92AC28();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v34 = &v97 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = &v97 - v36;
  v121 = a1;
  sub_24F928398();
  sub_24F9282B8();
  v38 = v19;
  v40 = *(v20 + 8);
  v39 = v20 + 8;
  v41 = v30;
  v42 = v31;
  v43 = v32;
  v44 = v40;
  v40(v41, v19);
  if ((*(v43 + 48))(v18, 1, v42) == 1)
  {
    sub_24E8F2EE8(v18);
    sub_24EAA4E04(&qword_27F2213B8, MEMORY[0x277D22548]);
    v45 = v119;
    swift_allocError();
    *v46 = 0x7365686372616573;
    v47 = v117;
    v46[1] = 0xE800000000000000;
    v46[2] = v47;
    (*(v118 + 104))(v46, *MEMORY[0x277D22530], v45);
    swift_willThrow();
    (*(v122 + 8))(v123, v120);
    v44(v121, v19);
    return v38;
  }

  v101 = v44;
  v102 = v39;
  (*(v43 + 32))(v37, v18, v42);
  v99 = v43;
  v48 = *(v43 + 16);
  v100 = v42;
  v48(v34, v37, v42);
  v50 = v122;
  v49 = v123;
  v51 = v120;
  v98 = *(v122 + 16);
  v98(v115, v123, v120);
  v52 = type metadata accessor for SearchAction();
  sub_24EAA4E04(&qword_27F226C48, type metadata accessor for SearchAction);
  v53 = v116;
  v54 = sub_24F92B688();
  v55 = v37;
  if (!v53)
  {
    v117 = v52;
    v119 = v54;
    v97 = v38;
    sub_24F928398();
    v98(v112, v49, v51);
    v65 = v113;
    sub_24F928788();
    v118 = 0;
    v116 = v37;
    type metadata accessor for PageRenderMetricsEvent();
    sub_24F928398();
    v98(v106, v49, v51);
    sub_24EAA4E04(&qword_27F2218C0, type metadata accessor for PageRenderMetricsEvent);
    sub_24F929548();
    v115 = v124;
    v66 = v104;
    sub_24F928398();
    v114 = sub_24F928348();
    v112 = v67;
    v68 = v66;
    v69 = v97;
    v70 = v101;
    v101(v68, v97);
    v71 = v105;
    sub_24F928398();
    v110 = sub_24F928258();
    LODWORD(v111) = v72;
    v70(v71, v69);
    v73 = v107;
    v74 = v108;
    v75 = *(v108 + 16);
    v76 = v109;
    v75(v107, v65, v109);
    type metadata accessor for TrendingSearches();
    v38 = swift_allocObject();
    v77 = v112;
    v38[2] = v114;
    v38[3] = v77;
    v75(v38 + OBJC_IVAR____TtC12GameStoreKit16TrendingSearches_pageMetrics, v73, v76);
    *(v38 + OBJC_IVAR____TtC12GameStoreKit16TrendingSearches_pageRenderEvent) = v115;
    if (v111)
    {
      (*(v122 + 8))(v123, v51);
      v70(v121, v97);
      v78 = *(v74 + 8);
      v78(v73, v76);
      v78(v113, v76);
      (*(v99 + 8))(v116, v100);
      v38[4] = v119;
      return v38;
    }

    v79 = v123;
    v80 = v119 >> 62;
    if (!(v119 >> 62))
    {
      v82 = v108;
      v81 = v109;
      if ((v110 & 0x8000000000000000) == 0)
      {
        v83 = v119;
        if (*((v119 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v110)
        {
          v76 = v110;
        }

        else
        {
          v76 = *((v119 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

LABEL_16:
        if ((v83 & 0xC000000000000001) != 0)
        {

          if (v76)
          {
            v84 = 0;
            do
            {
              v85 = v84 + 1;
              sub_24F92C8C8();
              v84 = v85;
            }

            while (v76 != v85);
          }
        }

        else
        {
        }

        if (v80)
        {
          v70 = sub_24F92CB18();
          v80 = v86;
          v73 = v87;
          v76 = v88;
        }

        else
        {
          v73 = 0;
          v70 = (v83 & 0xFFFFFFFFFFFFFF8);
          v80 = (v83 & 0xFFFFFFFFFFFFFF8) + 32;
          v76 = (2 * v76) | 1;
        }

        if ((v76 & 1) == 0)
        {
          goto LABEL_26;
        }

        sub_24F92CEF8();
        swift_unknownObjectRetain_n();
        v92 = swift_dynamicCastClass();
        if (!v92)
        {
          swift_unknownObjectRelease();
          v92 = MEMORY[0x277D84F90];
        }

        v93 = *(v92 + 16);

        if (!__OFSUB__(v76 >> 1, v73))
        {
          if (v93 == (v76 >> 1) - v73)
          {
            v90 = swift_dynamicCastClass();
            swift_unknownObjectRelease_n();
            v91 = v100;
            v82 = v108;
            v81 = v109;
            if (v90)
            {
LABEL_34:
              (*(v122 + 8))(v79, v120);
              v101(v121, v97);
              v94 = *(v82 + 8);
              v94(v107, v81);
              v94(v113, v81);
              (*(v99 + 8))(v116, v91);
              v38[4] = v90;
              return v38;
            }

            v90 = MEMORY[0x277D84F90];
LABEL_33:
            swift_unknownObjectRelease();
            goto LABEL_34;
          }

          goto LABEL_48;
        }

LABEL_47:
        __break(1u);
LABEL_48:
        swift_unknownObjectRelease_n();
        v82 = v108;
        v81 = v109;
LABEL_26:
        sub_24E6B878C(v70, v80, v73, v76);
        v90 = v89;
        v91 = v100;
        goto LABEL_33;
      }

LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    if (v119 < 0)
    {
      v73 = v119;
    }

    else
    {
      v73 = v119 & 0xFFFFFFFFFFFFFF8;
    }

    v96 = sub_24F92C738();
    if (v96 >= v110)
    {
      v76 = v110;
    }

    else
    {
      v76 = v96;
    }

    if ((v76 & 0x8000000000000000) != 0)
    {
      goto LABEL_46;
    }

    if (sub_24F92C738() < 0)
    {
      __break(1u);
    }

    else if (sub_24F92C738() < v76)
    {
      __break(1u);
      goto LABEL_46;
    }

    v82 = v108;
    v81 = v109;
    v83 = v119;
    goto LABEL_16;
  }

  v124 = v53;
  v56 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600);
  v57 = v114;
  v58 = v119;
  if (swift_dynamicCast())
  {

    v116 = v55;
    v59 = v118;
    v60 = v57;
    v61 = v110;
    (*(v118 + 32))(v110, v60, v58);
    sub_24EAA4E04(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    v97 = v38;
    v38 = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213BA0);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_24F93DE60;
    *(v63 + 32) = swift_allocError();
    (*(v59 + 16))(v64, v61, v58);
    *v38 = 0x7365686372616573;
    v38[1] = 0xE800000000000000;
    v38[2] = v117;
    v38[3] = v63;
    (*(v59 + 104))(v38, *MEMORY[0x277D22540], v58);
    swift_willThrow();
    (*(v50 + 8))(v123, v51);
    v101(v121, v97);
    (*(v59 + 8))(v61, v58);
    (*(v99 + 8))(v116, v100);
  }

  else
  {
    (*(v50 + 8))(v123, v51);
    v101(v121, v38);
    (*(v99 + 8))(v55, v100);
  }

  return v38;
}

uint64_t TrendingSearches.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t TrendingSearches.pageMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit16TrendingSearches_pageMetrics;
  v4 = sub_24F928818();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TrendingSearches.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit16TrendingSearches_pageMetrics;
  v2 = sub_24F928818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t TrendingSearches.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit16TrendingSearches_pageMetrics;
  v2 = sub_24F928818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void *sub_24EAA4D48@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = TrendingSearches.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_24EAA4D88@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12GameStoreKit16TrendingSearches_pageMetrics;
  v5 = sub_24F928818();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_24EAA4E04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for TrendingSearches()
{
  result = qword_27F226C50;
  if (!qword_27F226C50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EAA4EA0()
{
  result = sub_24F928818();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void FamilyCircleLookupTask.init()(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CB8F48]) init];
  v3 = [objc_allocWithZone(type metadata accessor for ArcadeAIDAAccountManagerDelegate()) init];
  v4 = objc_allocWithZone(MEMORY[0x277CED1D0]);
  v5 = v3;
  v6 = [v4 initWithAccountStore_];
  [v6 setDelegate_];

  v7 = [v6 accountStore];
  v8 = [v7 aa_primaryAppleAccount];

  *a1 = v8;
  a1[1] = v6;
  a1[2] = v5;
}

uint64_t FamilyCircleLookupTask.perform()()
{
  if (*v0)
  {
    v1 = *v0;
    v2 = [v1 ams_DSID];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226C60);
    if (v2)
    {
      v3 = sub_24F92A9E8();
      v4 = [objc_allocWithZone(MEMORY[0x277D08280]) init];
      [v4 setPromptUserToResolveAuthenticatonFailure_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_24F941C80;
      *(v5 + 32) = v2;
      sub_24E69A5C4(0, &qword_27F22BD50);
      v6 = v2;
      v7 = sub_24F92B588();

      [v4 setExpectedDSIDs_];

      [v4 setQualityOfService_];
      v8 = swift_allocObject();
      v8[2] = v1;
      v8[3] = v6;
      v8[4] = v3;
      v15[4] = sub_24EAA553C;
      v15[5] = v8;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 1107296256;
      v15[2] = sub_24E6251C8;
      v15[3] = &block_descriptor_44;
      v9 = _Block_copy(v15);
      v10 = v1;
      v11 = v6;

      [v4 startRequestWithCompletionHandler_];
      _Block_release(v9);
    }

    else
    {
      sub_24EAA5364();
      swift_allocError();
      *v14 = 0;
      v3 = sub_24F92A978();
    }

    return v3;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226C60);
    sub_24EAA5364();
    swift_allocError();
    *v12 = 1;
    return sub_24F92A978();
  }
}

unint64_t sub_24EAA5364()
{
  result = qword_27F226C68;
  if (!qword_27F226C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226C68);
  }

  return result;
}

void sub_24EAA53B8(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  sub_24E69A5C4(0, &qword_27F226D00);
  sub_24F92A728();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226D08);
  sub_24F92A718();
  if (v7)
  {
    v5 = v6;
    sub_24F92A9A8();
    sub_24EAA5C74(v6);
    sub_24EAA5C80(v6, 1);
    sub_24EAA5C80(v6, 1);
  }

  else
  {
    sub_24F92A9C8();
    sub_24EAA5C74(v6);
  }
}

uint64_t sub_24EAA54F4()
{

  return swift_deallocObject();
}

id sub_24EAA5548@<X0>(id *a1@<X0>, void *a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = [*a1 members];
  sub_24E69A5C4(0, qword_27F226D10);
  v7 = sub_24F92B5A8();

  if (v7 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24F92C738())
  {
    v17 = a2;
    v18 = a4;
    v9 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x253052270](v9, v7);
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v10 = *(v7 + 8 * v9 + 32);
      }

      a4 = v10;
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v12 = [v10 dsid];
      if (v12)
      {
        a2 = v12;
        sub_24E69A5C4(0, &qword_27F22BD50);
        v13 = a3;
        v14 = sub_24F92C408();

        if (v14)
        {

          v15 = [a4 isOrganizer];

          result = (*&v15 | 0xFFFFFF80);
LABEL_14:
          a4 = v18;
          goto LABEL_19;
        }
      }

      ++v9;
      if (v11 == i)
      {

        result = [v17 aa_isFamilyEligible];
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  result = [a2 aa_isFamilyEligible];
LABEL_19:
  *a4 = result;
  return result;
}

uint64_t block_copy_helper_44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t getEnumTagSinglePayload for FamilyCircleLookupResult(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7F)
  {
    goto LABEL_17;
  }

  if (a2 + 129 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 129) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 129;
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

      return (*a1 | (v4 << 8)) - 129;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 129;
    }
  }

LABEL_17:
  v6 = (*a1 & 0x7E | (*a1 >> 7)) ^ 0x7F;
  if (v6 >= 0x7E)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for FamilyCircleLookupResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 129 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 129) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7F)
  {
    v4 = 0;
  }

  if (a2 > 0x7E)
  {
    v5 = ((a2 - 127) >> 8) + 1;
    *result = a2 - 127;
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
    *result = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id sub_24EAA59FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArcadeAIDAAccountManagerDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_24EAA5A4C()
{
  result = qword_27F226CD8;
  if (!qword_27F226CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226CD8);
  }

  return result;
}

unint64_t sub_24EAA5AA0(void *a1)
{
  v1 = [a1 accountStore];
  v2 = [v1 aa_primaryAppleAccount];

  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226CF0);
    inited = swift_initStackObject();
    v4 = MEMORY[0x277CED1A0];
    *(inited + 16) = xmmword_24F93DE60;
    v5 = *v4;
    *(inited + 32) = v5;
    *(inited + 40) = v2;
    v6 = v5;
    v7 = sub_24E60D0C4(inited);
    swift_setDeallocating();
    sub_24EAA5BF0(inited + 32);
    return v7;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];

    return sub_24E60D0C4(v9);
  }
}

unint64_t sub_24EAA5B98()
{
  result = qword_27F2122D8;
  if (!qword_27F2122D8)
  {
    type metadata accessor for AIDAServiceType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2122D8);
  }

  return result;
}

uint64_t sub_24EAA5BF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226CF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_24EAA5C80(id a1, char a2)
{
  if (a2)
  {
  }
}

int *SnapshotUpdate.init(contentSnapshot:animated:useReloadData:isInitialFullPageSnapshot:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  result = type metadata accessor for SnapshotUpdate();
  *(a5 + result[9]) = a2;
  *(a5 + result[10]) = a3;
  *(a5 + result[11]) = a4;
  return result;
}

uint64_t SnapshotUpdate.contentSnapshot.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_24EAA5E54()
{
  result = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24EAA5EE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24EAA5FC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = a2 + 1;
  }

  return result;
}

uint64_t MultilineTextLayout.Metrics.init(headingSpace:titleSpace:subtitleSpace:tertiarySpace:offerSpace:maxIndividualLines:maxTotalLines:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_24E601704(a5, &qword_27F22F780);
  *(a8 + 136) = 0u;
  *(a8 + 152) = 0u;
  *(a8 + 168) = 0u;
  *(a8 + 184) = 0u;
  *(a8 + 120) = 0u;
  v15 = *(a1 + 16);
  *a8 = *a1;
  *(a8 + 16) = v15;
  *(a8 + 32) = *(a1 + 32);
  sub_24E612C80(a2, a8 + 40);
  sub_24E612C80(a3, a8 + 80);
  result = sub_24EA63A70(a4, a8 + 120);
  *(a8 + 200) = a6;
  *(a8 + 208) = a7;
  return result;
}

uint64_t MultilineTextLayout.Metrics.subtitleSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 80);

  return sub_24E612C80(a1, v1 + 80);
}

__n128 MultilineTextLayout.init(headingText:titleText:subtitleText:tertiaryText:offerText:metrics:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X8>)
{
  v12 = *(a1 + 16);
  *a7 = *a1;
  *(a7 + 16) = v12;
  *(a7 + 32) = *(a1 + 32);
  sub_24E612C80(a2, a7 + 40);
  sub_24E612C80(a3, a7 + 80);
  v13 = a6[12];
  *(a7 + 376) = a6[11];
  *(a7 + 392) = v13;
  v14 = a6[10];
  *(a7 + 344) = a6[9];
  *(a7 + 360) = v14;
  v15 = a6[8];
  *(a7 + 312) = a6[7];
  *(a7 + 328) = v15;
  v16 = a6[6];
  *(a7 + 280) = a6[5];
  *(a7 + 296) = v16;
  *(a7 + 264) = a6[4];
  v17 = *(a4 + 16);
  *(a7 + 120) = *a4;
  *(a7 + 136) = v17;
  v18 = *(a5 + 16);
  *(a7 + 160) = *a5;
  *(a7 + 176) = v18;
  v19 = a6[2];
  *(a7 + 248) = a6[3];
  *(a7 + 232) = v19;
  v21 = *a6;
  result = a6[1];
  *(a7 + 216) = result;
  *(a7 + 152) = *(a4 + 32);
  *(a7 + 192) = *(a5 + 32);
  *(a7 + 408) = *(a6 + 26);
  *(a7 + 200) = v21;
  return result;
}

uint64_t MultilineTextLayout.measurements(fitting:in:)()
{
  sub_24E60169C(v0, v6, &unk_27F22B200);
  sub_24E601704(v6, &unk_27F22B200);
  sub_24E60169C(v0, &v4, &unk_27F22B200);
  if (v5)
  {
    sub_24E612C80(&v4, v6);
    __swift_project_boxed_opaque_existential_1(v6, v7);
    sub_24F922288();
    sub_24E60169C((v0 + 25), &v4, &qword_27F22F780);
    if (v5)
    {
      __swift_project_boxed_opaque_existential_1(&v4, v5);
      sub_24F9223C8();
      __swift_destroy_boxed_opaque_existential_1(&v4);
    }

    else
    {
      sub_24E601704(&v4, &qword_27F22F780);
    }

    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  else
  {
    sub_24E601704(&v4, &unk_27F22B200);
  }

  __swift_project_boxed_opaque_existential_1(v0 + 5, v0[8]);
  sub_24F922478();
  __swift_project_boxed_opaque_existential_1(v0 + 5, v0[8]);
  sub_24F922288();
  __swift_project_boxed_opaque_existential_1(v0 + 5, v0[8]);
  v1 = sub_24F9224B8();
  __swift_project_boxed_opaque_existential_1(v0 + 10, v0[13]);
  v2 = v0[51];
  result = v2 - v1;
  if (__OFSUB__(v2, v1))
  {
    __break(1u);
  }

  else
  {
    sub_24F922478();
    __swift_project_boxed_opaque_existential_1(v0 + 10, v0[13]);
    sub_24F922288();
    __swift_project_boxed_opaque_existential_1(v0 + 30, v0[33]);
    sub_24F9223C8();
    __swift_project_boxed_opaque_existential_1(v0 + 35, v0[38]);
    sub_24F9223C8();
    sub_24E60169C((v0 + 15), v6, &unk_27F22B200);
    sub_24E601704(v6, &unk_27F22B200);
    sub_24E60169C((v0 + 15), &v4, &unk_27F22B200);
    if (v5)
    {
      sub_24E612C80(&v4, v6);
      __swift_project_boxed_opaque_existential_1(v6, v7);
      sub_24F922288();
      sub_24E60169C((v0 + 40), &v4, &qword_27F22F780);
      if (v5)
      {
        __swift_project_boxed_opaque_existential_1(&v4, v5);
        sub_24F9223C8();
        __swift_destroy_boxed_opaque_existential_1(&v4);
      }

      else
      {
        sub_24E601704(&v4, &qword_27F22F780);
      }

      __swift_destroy_boxed_opaque_existential_1(v6);
    }

    else
    {
      sub_24E601704(&v4, &unk_27F22B200);
    }

    sub_24E60169C((v0 + 20), v6, &unk_27F22B200);
    sub_24E601704(v6, &unk_27F22B200);
    sub_24E60169C((v0 + 20), &v4, &unk_27F22B200);
    if (v5)
    {
      sub_24E612C80(&v4, v6);
      __swift_project_boxed_opaque_existential_1(v6, v7);
      sub_24F922288();
      sub_24E60169C((v0 + 45), &v4, &qword_27F22F780);
      if (v5)
      {
        __swift_project_boxed_opaque_existential_1(&v4, v5);
        sub_24F9223C8();
        __swift_destroy_boxed_opaque_existential_1(&v4);
      }

      else
      {
        sub_24E601704(&v4, &qword_27F22F780);
      }

      return __swift_destroy_boxed_opaque_existential_1(v6);
    }

    else
    {
      return sub_24E601704(&v4, &unk_27F22B200);
    }
  }

  return result;
}

uint64_t MultilineTextLayout.placeChildren(relativeTo:in:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MinY = CGRectGetMinY(*&a1);
  sub_24E60169C(v4, &v85, &unk_27F22B200);
  v77 = a1;
  if (v86)
  {
    v82 = MinY;
    sub_24E612C80(&v85, v87);
    __swift_project_boxed_opaque_existential_1(v87, v88);
    sub_24F922288();
    v11 = v10;
    v13 = v12;
    v15 = v14;
    sub_24E60169C((v4 + 25), &v85, &qword_27F22F780);
    v79 = v15;
    if (v86)
    {
      __swift_project_boxed_opaque_existential_1(&v85, v86);
      sub_24F9223C8();
      v17 = v16;
      __swift_destroy_boxed_opaque_existential_1(&v85);
    }

    else
    {
      sub_24E601704(&v85, &qword_27F22F780);
      v17 = 0.0;
    }

    v89.origin.x = a1;
    v89.origin.y = a2;
    v89.size.width = a3;
    v89.size.height = a4;
    MinX = CGRectGetMinX(v89);
    v90.origin.x = a1;
    v90.origin.y = a2;
    v90.size.width = a3;
    v90.size.height = a4;
    Width = CGRectGetWidth(v90);
    if (Width < v11)
    {
      v11 = Width;
    }

    __swift_project_boxed_opaque_existential_1(v87, v88);
    sub_24F92C1D8();
    sub_24F922228();
    v91.origin.x = MinX;
    v91.origin.y = v82 + v17;
    v91.size.width = v11;
    v91.size.height = v13;
    MinY = CGRectGetMaxY(v91) - v79;
    __swift_destroy_boxed_opaque_existential_1(v87);
  }

  else
  {
    sub_24E601704(&v85, &unk_27F22B200);
  }

  __swift_project_boxed_opaque_existential_1(v4 + 5, v4[8]);
  sub_24F922478();
  __swift_project_boxed_opaque_existential_1(v4 + 5, v4[8]);
  sub_24F922288();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  __swift_project_boxed_opaque_existential_1(v4 + 5, v4[8]);
  v26 = sub_24F9224B8();
  __swift_project_boxed_opaque_existential_1(v4 + 10, v4[13]);
  v27 = v4[51];
  result = v27 - v26;
  if (__OFSUB__(v27, v26))
  {
    __break(1u);
  }

  else
  {
    sub_24F922478();
    __swift_project_boxed_opaque_existential_1(v4 + 10, v4[13]);
    sub_24F922288();
    v70 = v29;
    v78 = v30;
    v83 = v31;
    v92.origin.x = v77;
    v92.origin.y = a2;
    v92.size.width = a3;
    v92.size.height = a4;
    rect = a3;
    v32 = a4;
    v33 = a2;
    v34 = CGRectGetMinX(v92);
    __swift_project_boxed_opaque_existential_1(v4 + 30, v4[33]);
    sub_24F9223C8();
    v36 = v35;
    v93.origin.x = v77;
    v93.origin.y = v33;
    v93.size.width = rect;
    v93.size.height = v32;
    v37 = CGRectGetWidth(v93);
    if (v37 < v21)
    {
      v21 = v37;
    }

    __swift_project_boxed_opaque_existential_1(v4 + 5, v4[8]);
    v74 = v21;
    v75 = v34;
    v73 = MinY + v36;
    v76 = v23;
    sub_24F92C1D8();
    sub_24F922228();
    __swift_project_boxed_opaque_existential_1(v4 + 5, v4[8]);
    sub_24F922218();
    v38 = v32;
    v39 = rect;
    v80 = CGRectGetMaxY(v94) - v25;
    v95.origin.x = v77;
    v95.origin.y = v33;
    v95.size.width = rect;
    v95.size.height = v38;
    v40 = CGRectGetMinX(v95);
    __swift_project_boxed_opaque_existential_1(v4 + 35, v4[38]);
    v41 = v70;
    sub_24F9223C8();
    v43 = v42;
    v96.origin.x = v77;
    v96.origin.y = v33;
    v96.size.width = rect;
    v96.size.height = v38;
    v44 = CGRectGetWidth(v96);
    if (v44 < v70)
    {
      v41 = v44;
    }

    v45 = v80 + v43;
    __swift_project_boxed_opaque_existential_1(v4 + 10, v4[13]);
    v81 = v33;
    v71 = v41;
    v72 = v40;
    v69 = v45;
    sub_24F92C1D8();
    sub_24F922228();
    __swift_project_boxed_opaque_existential_1(v4 + 10, v4[13]);
    sub_24F922218();
    v46 = CGRectGetMaxY(v97) - v83;
    sub_24E60169C((v4 + 15), &v85, &unk_27F22B200);
    if (v86)
    {
      sub_24E612C80(&v85, v87);
      __swift_project_boxed_opaque_existential_1(v87, v88);
      sub_24F922288();
      v48 = v47;
      v50 = v49;
      v51 = v38;
      v53 = v52;
      sub_24E60169C((v4 + 40), &v85, &qword_27F22F780);
      v66 = v53;
      v67 = v46;
      if (v86)
      {
        __swift_project_boxed_opaque_existential_1(&v85, v86);
        sub_24F9223C8();
        v55 = v54;
        __swift_destroy_boxed_opaque_existential_1(&v85);
      }

      else
      {
        sub_24E601704(&v85, &qword_27F22F780);
        v55 = 0.0;
      }

      v98.origin.x = v77;
      v98.origin.y = v81;
      v39 = rect;
      v98.size.width = rect;
      v98.size.height = v38;
      v56 = CGRectGetMinX(v98);
      v99.origin.x = v77;
      v99.origin.y = v81;
      v99.size.width = rect;
      v99.size.height = v51;
      v57 = CGRectGetWidth(v99);
      if (v57 < v48)
      {
        v48 = v57;
      }

      __swift_project_boxed_opaque_existential_1(v87, v88);
      sub_24F92C1D8();
      sub_24F92C1D8();
      sub_24F922228();
      v100.origin.x = v56;
      v100.origin.y = v67 + v55;
      v100.size.width = v48;
      v100.size.height = v50;
      v46 = CGRectGetMaxY(v100) - v66;
      __swift_destroy_boxed_opaque_existential_1(v87);
    }

    else
    {
      sub_24E601704(&v85, &unk_27F22B200);
      v51 = v38;
    }

    sub_24E60169C((v4 + 20), &v85, &unk_27F22B200);
    if (v86)
    {
      sub_24E612C80(&v85, v87);
      __swift_project_boxed_opaque_existential_1(v87, v88);
      sub_24F922288();
      v59 = v58;
      v68 = v60;
      sub_24E60169C((v4 + 45), &v85, &qword_27F22F780);
      if (v86)
      {
        __swift_project_boxed_opaque_existential_1(&v85, v86);
        sub_24F9223C8();
        v62 = v61;
        __swift_destroy_boxed_opaque_existential_1(&v85);
      }

      else
      {
        sub_24E601704(&v85, &qword_27F22F780);
        v62 = 0.0;
      }

      v101.origin.x = v77;
      v63 = v81;
      v101.origin.y = v81;
      v101.size.width = v39;
      v101.size.height = v51;
      v64 = CGRectGetMinX(v101);
      v102.origin.x = v77;
      v102.origin.y = v81;
      v102.size.width = v39;
      v102.size.height = v51;
      v65 = CGRectGetWidth(v102);
      if (v65 < v59)
      {
        v59 = v65;
      }

      __swift_project_boxed_opaque_existential_1(v87, v88);
      sub_24F92C1D8();
      sub_24F92C1D8();
      sub_24F922228();
      v103.origin.x = v64;
      v103.origin.y = v46 + v62;
      v103.size.width = v59;
      v103.size.height = v68;
      CGRectGetMaxY(v103);
      __swift_destroy_boxed_opaque_existential_1(v87);
    }

    else
    {
      sub_24E601704(&v85, &unk_27F22B200);
      v63 = v81;
    }

    v104.size.width = v74;
    v104.origin.x = v75;
    v104.origin.y = v73;
    v104.size.height = v76;
    CGRectGetMinY(v104);
    v105.origin.x = v77;
    v105.origin.y = v63;
    v105.size.width = v39;
    v105.size.height = v51;
    CGRectGetMinY(v105);
    v106.origin.x = v77;
    v106.origin.y = v63;
    v106.size.width = v39;
    v106.size.height = v51;
    CGRectGetMinX(v106);
    v107.origin.x = v77;
    v107.origin.y = v63;
    v107.size.width = v39;
    v107.size.height = v51;
    CGRectGetMinY(v107);
    v108.origin.x = v77;
    v108.origin.y = v63;
    v108.size.width = v39;
    v108.size.height = v51;
    CGRectGetWidth(v108);
    v109.size.width = v71;
    v109.origin.x = v72;
    v109.origin.y = v69;
    v109.size.height = v78;
    CGRectGetMaxY(v109);
    v110.origin.y = v63;
    v110.origin.x = v77;
    v110.size.width = v39;
    v110.size.height = v51;
    CGRectGetMinY(v110);
    return sub_24F922138();
  }

  return result;
}

uint64_t _s12GameStoreKit19MultilineTextLayoutV23estimatedAXMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1 + 5, a1[8]);
  result = sub_24F9223B8();
  if (__OFSUB__(a1[26], 1))
  {
    __break(1u);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1 + 10, a1[13]);
    sub_24F9223B8();
    sub_24E60169C((a1 + 20), v3, &qword_27F22F780);
    if (v4)
    {
      __swift_project_boxed_opaque_existential_1(v3, v4);
      sub_24F9223B8();
      return __swift_destroy_boxed_opaque_existential_1(v3);
    }

    else
    {
      return sub_24E601704(v3, &qword_27F22F780);
    }
  }

  return result;
}

uint64_t sub_24EAA777C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 416))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24EAA77C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 408) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 416) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 416) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24EAA7880(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 216))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24EAA78C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 216) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t MetricsData.init(fields:includingFields:excludingFields:shouldFlush:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = sub_24E76D644(0x6369706F74, 0xE500000000000000);
    if (v3)
    {
      sub_24E643A9C(*(a1 + 56) + 32 * v2, v8);
      if (swift_dynamicCast())
      {
        v4 = HIBYTE(v7) & 0xF;
        if ((v7 & 0x2000000000000000) == 0)
        {
          v4 = *v6 & 0xFFFFFFFFFFFFLL;
        }

        if (!v4)
        {
        }
      }
    }
  }

  return sub_24F928658();
}

uint64_t MetricsData.contextualAdamId.getter()
{
  v0 = sub_24F928688();
  if (*(v0 + 16) && (v1 = sub_24E76D644(0x6D6164615F74656ALL, 0xEA00000000006449), (v2 & 1) != 0))
  {
    sub_24E643A9C(*(v0 + 56) + 32 * v1, v8);

    if (swift_dynamicCast())
    {
      return v7;
    }
  }

  else
  {
  }

  v4 = sub_24F928688();
  if (*(v4 + 16) && (v5 = sub_24E76D644(0x6449746567726174, 0xE800000000000000), (v6 & 1) != 0))
  {
    sub_24E643A9C(*(v4 + 56) + 32 * v5, v8);

    if (swift_dynamicCast())
    {
      return v7;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return 0;
  }
}

uint64_t static PresentPromptAction.addFriend(friendName:)@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v4 = sub_24F9294C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F9294B8();
  if (a1)
  {

    sub_24F9294A8();
  }

  v8 = type metadata accessor for PresentPromptAction();
  (*(v5 + 16))(&a2[*(v8 + 20)], v7, v4);
  sub_24F928A98();
  result = (*(v5 + 8))(v7, v4);
  *a2 = 0x6E65697246646461;
  *(a2 + 1) = 0xE900000000000064;
  return result;
}

uint64_t type metadata accessor for PresentPromptAction()
{
  result = qword_27F226DC8;
  if (!qword_27F226DC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static PresentPromptAction.appLaunch()@<X0>(void *a1@<X8>)
{
  type metadata accessor for PresentPromptAction();
  sub_24F9294B8();
  result = sub_24F928A98();
  *a1 = 0x636E75614C707061;
  a1[1] = 0xE900000000000068;
  return result;
}

uint64_t PresentPromptAction.triggerKind.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PresentPromptAction.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PresentPromptAction() + 20);
  v4 = sub_24F9294C8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PresentPromptAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PresentPromptAction() + 24);
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_24EAA7EA4()
{
  v1 = 0x617461646174656DLL;
  if (*v0 != 1)
  {
    v1 = 0x654D6E6F69746361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4B72656767697274;
  }
}

uint64_t sub_24EAA7F14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24EAA8C00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24EAA7F3C(uint64_t a1)
{
  v2 = sub_24EAA81E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EAA7F78(uint64_t a1)
{
  v2 = sub_24EAA81E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PresentPromptAction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226DA0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EAA81E4();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F92CD08();
  if (!v1)
  {
    type metadata accessor for PresentPromptAction();
    v8[14] = 1;
    sub_24F9294C8();
    sub_24EAA86AC(&qword_27F226DB0, MEMORY[0x277D21EF0]);
    sub_24F92CD48();
    v8[13] = 2;
    sub_24F928AD8();
    sub_24EAA86AC(&qword_27F216080, MEMORY[0x277D21C88]);
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24EAA81E4()
{
  result = qword_27F226DA8;
  if (!qword_27F226DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226DA8);
  }

  return result;
}

uint64_t PresentPromptAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v24 = sub_24F928AD8();
  v22 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v25 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F9294C8();
  v26 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226DB8);
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v8 = &v19 - v7;
  v9 = type metadata accessor for PresentPromptAction();
  MEMORY[0x28223BE20](v9);
  v11 = (&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EAA81E4();
  v28 = v8;
  v12 = v30;
  sub_24F92D108();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v27;
  v33 = 0;
  *v11 = sub_24F92CC28();
  v11[1] = v14;
  v30 = v11;
  v21 = v14;
  v32 = 1;
  sub_24EAA86AC(&qword_27F226DC0, MEMORY[0x277D21EF0]);
  sub_24F92CC68();
  v20 = v9;
  v15 = *(v9 + 20);
  v16 = v30;
  (*(v26 + 32))(v30 + v15, v6, v4);
  v31 = 2;
  sub_24EAA86AC(&qword_27F254CB0, MEMORY[0x277D21C88]);
  v17 = v24;
  sub_24F92CC68();
  (*(v13 + 8))(v28, v29);
  (*(v22 + 32))(v16 + *(v20 + 24), v25, v17);
  sub_24EAA86F4(v16, v23);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24EAA8758(v16);
}

uint64_t sub_24EAA86AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24EAA86F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PresentPromptAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EAA8758(uint64_t a1)
{
  v2 = type metadata accessor for PresentPromptAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EAA87F8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24F9294C8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_24F928AD8();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24EAA8930(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_24F9294C8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_24F928AD8();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_24EAA8A54()
{
  result = sub_24F9294C8();
  if (v1 <= 0x3F)
  {
    result = sub_24F928AD8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_24EAA8AFC()
{
  result = qword_27F226DD8;
  if (!qword_27F226DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226DD8);
  }

  return result;
}

unint64_t sub_24EAA8B54()
{
  result = qword_27F226DE0;
  if (!qword_27F226DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226DE0);
  }

  return result;
}

unint64_t sub_24EAA8BAC()
{
  result = qword_27F226DE8;
  if (!qword_27F226DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226DE8);
  }

  return result;
}

uint64_t sub_24EAA8C00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4B72656767697274 && a2 == 0xEB00000000646E69;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

__n128 BrickLayout.init(metrics:artworkView:labelView:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for BrickLayout(0);
  sub_24EAA8DB0(a1, a4 + *(v8 + 24));
  sub_24E612C80(a2, a4);
  result = *a3;
  v10 = *(a3 + 16);
  *(a4 + 40) = *a3;
  *(a4 + 56) = v10;
  *(a4 + 72) = *(a3 + 32);
  return result;
}

uint64_t sub_24EAA8DB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrickLayout.Metrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t BrickLayout.Metrics.init(artworkAspectRatio:labelSpace:labelFontSource:isLabelFullWidth:numberOfLines:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for BrickLayout.Metrics(0);
  v13 = a6 + v12[5];
  *(v13 + 32) = 0;
  *v13 = 0u;
  *(v13 + 16) = 0u;
  v14 = v12[6];
  v15 = sub_24F922118();
  (*(*(v15 - 8) + 56))(a6 + v14, 1, 1, v15);
  v16 = sub_24F922348();
  (*(*(v16 - 8) + 32))(a6, a1, v16);
  sub_24E61DA68(a2, v13, &qword_27F22F780);
  result = sub_24E61DA68(a3, a6 + v14, &qword_27F226DF0);
  *(a6 + v12[7]) = a4;
  *(a6 + v12[8]) = a5;
  return result;
}

uint64_t BrickLayout.Metrics.artworkAspectRatio.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F922348();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t BrickLayout.Metrics.artworkAspectRatio.setter(uint64_t a1)
{
  v3 = sub_24F922348();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t BrickLayout.Metrics.isLabelFullWidth.setter(char a1)
{
  result = type metadata accessor for BrickLayout.Metrics(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t BrickLayout.Metrics.numberOfLines.setter(uint64_t a1)
{
  result = type metadata accessor for BrickLayout.Metrics(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t BrickLayout.metrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for BrickLayout(0) + 24);

  return sub_24EAA93C8(v3, a1);
}

uint64_t sub_24EAA93C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrickLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t BrickLayout.placeChildren(relativeTo:in:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = v4 + *(type metadata accessor for BrickLayout(0) + 24);
  v17.origin.x = a1;
  v17.origin.y = a2;
  v17.size.width = a3;
  v17.size.height = a4;
  CGRectGetWidth(v17);
  sub_24F922308();
  v18.origin.x = a1;
  v18.origin.y = a2;
  v18.size.width = a3;
  v18.size.height = a4;
  CGRectGetMinX(v18);
  v19.origin.x = a1;
  v19.origin.y = a2;
  v19.size.width = a3;
  v19.size.height = a4;
  CGRectGetMinY(v19);
  v20.origin.x = a1;
  v20.origin.y = a2;
  v20.size.width = a3;
  v20.size.height = a4;
  CGRectGetWidth(v20);
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_24F92C1D8();
  sub_24F922228();
  v10 = type metadata accessor for BrickLayout.Metrics(0);
  sub_24E60169C(&v9[*(v10 + 20)], &v14, &qword_27F22F780);
  if (v15)
  {
    sub_24E612C80(&v14, v16);
    sub_24E60169C((v4 + 5), &v12, &unk_27F22B200);
    if (v13)
    {
      sub_24E612C80(&v12, &v14);
      __swift_project_boxed_opaque_existential_1(&v14, v15);
      sub_24F922288();
      __swift_project_boxed_opaque_existential_1(v16, v16[3]);
      sub_24F9223C8();
      v21.origin.x = a1;
      v21.origin.y = a2;
      v21.size.width = a3;
      v21.size.height = a4;
      CGRectGetMinX(v21);
      __swift_project_boxed_opaque_existential_1(v4, v4[3]);
      sub_24F9221F8();
      CGRectGetMaxY(v22);
      if (v9[*(v10 + 28)] == 1)
      {
        v23.origin.x = a1;
        v23.origin.y = a2;
        v23.size.width = a3;
        v23.size.height = a4;
        CGRectGetWidth(v23);
      }

      __swift_project_boxed_opaque_existential_1(&v14, v15);
      sub_24F92C1D8();
      sub_24F922228();
      __swift_destroy_boxed_opaque_existential_1(&v14);
    }

    else
    {
      sub_24E601704(&v12, &unk_27F22B200);
    }

    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    sub_24E601704(&v14, &qword_27F22F780);
  }

  return sub_24F922128();
}

uint64_t sub_24EAA9774(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_24EAAA1B8(&qword_27F226E38);
  v11.n128_f64[0] = a4;
  v12.n128_f64[0] = a5;

  return MEMORY[0x282180FC8](a1, a2, v10, a3, v11, v12);
}

double _s12GameStoreKit11BrickLayoutV21estimatedMeasurements7fitting5using2inSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo18UITraitEnvironment_ptFZ_0(uint64_t a1, void *a2, double a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226DF0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22[-1] - v7;
  v9 = sub_24F92CDB8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F922308();
  v13 = type metadata accessor for BrickLayout.Metrics(0);
  sub_24E60169C(a1 + *(v13 + 20), v22, &qword_27F22F780);
  if (v23)
  {
    __swift_project_boxed_opaque_existential_1(v22, v23);
    sub_24E8ED7D8();
    sub_24F9223A8();
    (*(v10 + 8))(v12, v9);
    __swift_destroy_boxed_opaque_existential_1(v22);
    sub_24E60169C(a1 + *(v13 + 24), v8, &qword_27F226DF0);
    v14 = sub_24F922118();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v8, 1, v14) != 1)
    {
      v18 = [a2 traitCollection];
      v19 = sub_24F922108();

      (*(v15 + 8))(v8, v14);
      [v19 lineHeight];
      sub_24F92C288();
      [v19 descender];

      return a3;
    }

    v16 = &qword_27F226DF0;
    v17 = v8;
  }

  else
  {
    v16 = &qword_27F22F780;
    v17 = v22;
  }

  sub_24E601704(v17, v16);
  return a3;
}

uint64_t sub_24EAA9B7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for BrickLayout.Metrics(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24EAA9C3C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for BrickLayout.Metrics(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24EAA9CE0()
{
  sub_24EAA9D94();
  if (v0 <= 0x3F)
  {
    sub_24E8EF898(319, &qword_27F221208, &qword_27F221210);
    if (v1 <= 0x3F)
    {
      type metadata accessor for BrickLayout.Metrics(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_24EAA9D94()
{
  result = qword_27F237A20;
  if (!qword_27F237A20)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F237A20);
  }

  return result;
}

uint64_t sub_24EAA9E0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F922348();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226DF0);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_24EAA9F60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24F922348();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 24) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226DF0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_24EAAA094()
{
  sub_24F922348();
  if (v0 <= 0x3F)
  {
    sub_24E8EF898(319, &qword_27F226E20, &qword_27F226E28);
    if (v1 <= 0x3F)
    {
      sub_24EAAA160();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24EAAA160()
{
  if (!qword_27F226E30)
  {
    sub_24F922118();
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F226E30);
    }
  }
}

uint64_t sub_24EAAA1B8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for BrickLayout(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24EAAA228@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24F924A78();
  MEMORY[0x28223BE20](v2 - 8);
  sub_24F924A68();
  sub_24F924A58();
  sub_24F924A08();
  sub_24F924A58();
  sub_24F924A98();
  v3 = sub_24F925DE8();
  v5 = v4;
  v7 = v6 & 1;
  *a1 = xmmword_24F97CA70;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x277D84F90];
  *(a1 + 32) = 0;
  *(a1 + 40) = v3;
  *(a1 + 48) = v4;
  *(a1 + 56) = v6 & 1;
  *(a1 + 64) = v8;
  sub_24E5FD138(12336, 0xE200000000000000, 0);

  sub_24E5FD138(v3, v5, v7);

  sub_24E600B40(v3, v5, v7);

  sub_24E600B40(12336, 0xE200000000000000, 0);
}

uint64_t sub_24EAAA3D4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 8);
  *a1 = sub_24F927618();
  a1[1] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226E40);
  sub_24EAAA228(&v26);
  KeyPath = swift_getKeyPath();
  v28 = v3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226E48);
  sub_24EAAA57C();
  sub_24F9268B8();
  sub_24EAAA6E4(&v26);
  v5 = sub_24F925838();
  sub_24F923318();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226E78) + 36);
  *v14 = v5;
  *(v14 + 1) = v7;
  *(v14 + 2) = v9;
  *(v14 + 3) = v11;
  *(v14 + 4) = v13;
  v14[40] = 0;
  v15 = sub_24F925858();
  sub_24F923318();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226E80);
  v25 = a1 + *(result + 36);
  *v25 = v15;
  *(v25 + 1) = v17;
  *(v25 + 2) = v19;
  *(v25 + 3) = v21;
  *(v25 + 4) = v23;
  v25[40] = 0;
  return result;
}

unint64_t sub_24EAAA57C()
{
  result = qword_27F226E50;
  if (!qword_27F226E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F226E48);
    sub_24EAAA634();
    sub_24E602068(&unk_27F212AB0, &qword_27F236350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226E50);
  }

  return result;
}

unint64_t sub_24EAAA634()
{
  result = qword_27F226E58;
  if (!qword_27F226E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F226E60);
    sub_24E602068(&qword_27F226E68, &qword_27F226E70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226E58);
  }

  return result;
}

uint64_t sub_24EAAA6E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226E48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24EAAA750()
{
  result = qword_27F226E88;
  if (!qword_27F226E88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F226E80);
    sub_24EAAA7DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226E88);
  }

  return result;
}

unint64_t sub_24EAAA7DC()
{
  result = qword_27F226E90;
  if (!qword_27F226E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F226E78);
    sub_24E602068(&qword_27F226E98, &qword_27F226EA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226E90);
  }

  return result;
}

uint64_t sub_24EAAA8A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LeaderboardEntry();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 32);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24EAAA9F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for LeaderboardEntry();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 32) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t type metadata accessor for BaseLeaderboardRowView()
{
  result = qword_27F226EA8;
  if (!qword_27F226EA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EAAAB70()
{
  type metadata accessor for LeaderboardEntry();
  if (v0 <= 0x3F)
  {
    sub_24E684120();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t get_enum_tag_for_layout_string_12GameStoreKit22BaseLeaderboardRowViewV22IndicatorConfigurationVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
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

__n128 __swift_memcpy99_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 95) = *(a2 + 95);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_24EAAAC5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 99))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24EAAACA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 98) = 0;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 99) = 1;
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

    *(result + 99) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24EAAAD30@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226EC8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226ED0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226ED8);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v25 - v18;
  v20 = *(a1 + *(type metadata accessor for BaseLeaderboardRowView() + 20) + 97);
  if (v20 == 2 || (v20 & 0x100) == 0)
  {
    (*(v11 + 56))(v19, 1, 1, v10);
  }

  else
  {
    sub_24EAAB050(v20 & 1);
    sub_24E6009C8(v13, v19, &qword_27F226ED0);
    (*(v11 + 56))(v19, 0, 1, v10);
  }

  *v9 = sub_24F9249A8();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226EE0);
  sub_24EAAB260(a1, &v9[*(v22 + 44)]);
  sub_24E60169C(v19, v16, &qword_27F226ED8);
  sub_24E60169C(v9, v6, &qword_27F226EC8);
  sub_24E60169C(v16, a2, &qword_27F226ED8);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226EE8);
  sub_24E60169C(v6, a2 + *(v23 + 48), &qword_27F226EC8);
  sub_24E601704(v9, &qword_27F226EC8);
  sub_24E601704(v19, &qword_27F226ED8);
  sub_24E601704(v6, &qword_27F226EC8);
  return sub_24E601704(v16, &qword_27F226ED8);
}

uint64_t sub_24EAAB050(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226EF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v14 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226EF8);
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  if (a1)
  {
    swift_storeEnumTagMultiPayload();
    sub_24EAACC38();
    return sub_24F924E28();
  }

  else
  {
    sub_24EAAC2B4(v1, &v14 - v7);
    v10 = sub_24F9251A8();
    *&v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226F10) + 36)] = v10;
    v11 = *(v6 + 36);
    v12 = *MEMORY[0x277CE13B8];
    v13 = sub_24F927748();
    (*(*(v13 - 8) + 104))(&v8[v11], v12, v13);
    sub_24E60169C(v8, v5, &qword_27F226EF8);
    swift_storeEnumTagMultiPayload();
    sub_24EAACC38();
    sub_24F924E28();
    return sub_24E601704(v8, &qword_27F226EF8);
  }
}

uint64_t sub_24EAAB260@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v169 = a2;
  v3 = sub_24F925218();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v144 = &v144 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20);
  MEMORY[0x28223BE20](v162);
  v7 = &v144 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598);
  MEMORY[0x28223BE20](v8 - 8);
  v145 = &v144 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v144 - v11;
  MEMORY[0x28223BE20](v13);
  v171 = &v144 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v144 - v16;
  v172 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v172);
  v161 = &v144 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226F60);
  MEMORY[0x28223BE20](v173);
  v176 = &v144 - v19;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226F68);
  MEMORY[0x28223BE20](v174);
  v178 = &v144 - v20;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226F70);
  MEMORY[0x28223BE20](v177);
  v179 = &v144 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v175 = &v144 - v23;
  MEMORY[0x28223BE20](v24);
  v180 = &v144 - v25;
  v28 = type metadata accessor for BaseLeaderboardRowView();
  v29 = a1 + *(v28 + 20);
  if (*v29 == 1 && (v30 = *(a1 + *(type metadata accessor for LeaderboardEntry() + 24)), v30 <= 99))
  {
    v165 = v30;
    v31 = (a1 + *(v28 + 24));
    v32 = v31[5];
    v33 = v31[9];
    v163 = v31[13];
    v164 = v33;
    v181 = v32;
    swift_retain_n();
  }

  else
  {
    v164 = 0;
    v165 = 0;
    v181 = 0;
    v163 = 0;
  }

  v35 = *(v29 + 80);
  v34 = *(v29 + 88);
  v36 = *(v29 + 96);
  v170 = v12;
  v167 = v7;
  v168 = v3;
  v166 = v4;
  v148 = v28;
  v159 = v35;
  LODWORD(v158) = v36;
  v157 = v34;
  if (v34 == 1)
  {
    sub_24E88EBA4(&v238);
  }

  else
  {
    v37 = (a1 + *(v28 + 24));
    v38 = v37[5];
    v217 = v37[4];
    v218 = v38;
    v219 = v37[6];
    v39 = v37[1];
    v213 = *v37;
    v214 = v39;
    v40 = v37[2];
    v216 = v37[3];
    v215 = v40;
    *(v193 + 7) = v213;
    *(&v193[1] + 7) = v39;
    *(&v193[2] + 7) = v40;
    *(&v193[3] + 7) = v216;
    *(&v193[6] + 7) = v219;
    *(&v193[4] + 7) = v217;
    *(&v193[5] + 7) = v38;
    *v194 = v35;
    *&v194[8] = v34;
    v194[16] = v36 & 1;
    *&v194[65] = v193[3];
    *&v194[49] = v193[2];
    *&v194[33] = v193[1];
    *&v194[17] = v193[0];
    *&v194[128] = *(&v219 + 1);
    *&v194[113] = v193[6];
    *&v194[97] = v193[5];
    *&v194[81] = v193[4];
    CGSizeMake(v194, v26, v27);
    sub_24E784FF8(&v213, &v238);
    v244 = *&v194[96];
    v245 = *&v194[112];
    v246 = *&v194[128];
    v240 = *&v194[32];
    v241 = *&v194[48];
    v243 = *&v194[80];
    v242 = *&v194[64];
    v239 = *&v194[16];
    v238 = *v194;
  }

  v160 = type metadata accessor for LeaderboardEntry();
  v41 = a1 + *(v160 + 20);
  v42 = *(v41 + 24);
  v156 = *(v41 + 16);
  v43 = type metadata accessor for PlayerAvatar.Overlay(0);
  v44 = *(*(v43 - 8) + 56);
  v44(v17, 1, 1, v43);
  memset(v194, 0, 40);
  v146 = a1;
  v45 = v172;
  v46 = *(v172 + 20);
  v47 = v161;
  v44(&v161[v46], 1, 1, v43);
  v48 = v47 + *(v45 + 24);
  memset(v193, 0, 40);
  *v48 = 0u;
  *(v48 + 16) = 0u;
  *(v48 + 32) = 0;
  sub_24E6AD46C(v159, v157);

  sub_24E61DA68(v193, v48, qword_27F21B590);
  *v47 = v156;
  v47[1] = v42;
  sub_24E61DA68(v17, v47 + v46, &qword_27F22DF80);
  sub_24E61DA68(v194, v48, qword_27F21B590);
  v194[0] = 7;
  v49 = v176;
  sub_24F8319B8(v47, v194, v176);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226F78);
  v51 = v49 + *(v50 + 44);
  *(v51 + 24) = MEMORY[0x277CE1120];
  *(v51 + 32) = sub_24E63E454();
  v52 = v49 + *(v50 + 48);
  *v52 = swift_getKeyPath();
  *(v52 + 8) = 0;
  v53 = v146;
  v54 = (v146 + *(v148 + 24));
  sub_24F927618();
  sub_24F9238C8();
  v55 = (v49 + *(v173 + 36));
  v56 = v248;
  *v55 = v247;
  v55[1] = v56;
  v55[2] = v249;
  LOBYTE(v52) = sub_24F925838();
  sub_24F923318();
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v65 = v178;
  sub_24E6009C8(v49, v178, &qword_27F226F60);
  v66 = v65 + *(v174 + 36);
  *v66 = v52;
  *(v66 + 8) = v58;
  *(v66 + 16) = v60;
  *(v66 + 24) = v62;
  *(v66 + 32) = v64;
  *(v66 + 40) = 0;
  LOBYTE(v52) = sub_24F925868();
  sub_24F923318();
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v74 = v73;
  v75 = v65;
  v76 = v175;
  sub_24E6009C8(v75, v175, &qword_27F226F68);
  v77 = v76 + *(v177 + 36);
  *v77 = v52;
  *(v77 + 8) = v68;
  *(v77 + 16) = v70;
  *(v77 + 24) = v72;
  *(v77 + 32) = v74;
  *(v77 + 40) = 0;
  sub_24E6009C8(v76, v180, &qword_27F226F70);
  v78 = v54[3];
  v79 = v54[5];
  v224 = v54[4];
  v225 = v79;
  v80 = v54[5];
  v226 = v54[6];
  v81 = v54[1];
  v222[0] = *v54;
  v222[1] = v81;
  v82 = v54[2];
  v84 = *v54;
  v83 = v54[1];
  v223 = v54[3];
  v222[2] = v82;
  v85 = *(v29 + 8);
  v86 = *(v29 + 16);
  v87 = *(v29 + 32);
  v175 = *(v29 + 24);
  v176 = v85;
  v88 = *(v29 + 48);
  v174 = *(v29 + 40);
  LODWORD(v173) = *(v29 + 56);
  v89 = *(v29 + 72);
  v160 = *(v29 + 64);
  v161 = v89;
  v234 = v224;
  v235 = v80;
  v236 = v54[6];
  v230 = v84;
  v231 = v83;
  v90 = v223;
  v233 = v78;
  v232 = v82;

  v178 = v86;

  v177 = v87;

  v159 = v88;

  sub_24E784FF8(v222, v194);
  v149 = v90;

  LODWORD(v172) = sub_24F925838();
  sub_24F923318();
  v157 = v92;
  v158 = v91;
  v155 = v94;
  v156 = v93;
  v194[0] = 0;
  v154 = sub_24F925868();
  sub_24F923318();
  v152 = v96;
  v153 = v95;
  v150 = v98;
  v151 = v97;
  v99 = v53[1];
  v147 = *v53;
  v148 = v99;

  v100 = v171;
  sub_24F769764(v171);
  v101 = v166;
  v102 = v170;
  v103 = v168;
  (*(v166 + 104))(v170, *MEMORY[0x277CE0558], v168);
  (*(v101 + 56))(v102, 0, 1, v103);
  v104 = *(v162 + 48);
  v105 = v167;
  sub_24E60169C(v100, v167, &qword_27F215598);
  v162 = v104;
  sub_24E60169C(v102, v105 + v104, &qword_27F215598);
  v106 = *(v101 + 48);
  if (v106(v105, 1, v103) != 1)
  {
    v108 = v145;
    sub_24E60169C(v105, v145, &qword_27F215598);
    v109 = v162;
    if (v106(v105 + v162, 1, v103) != 1)
    {
      v141 = v144;
      (*(v101 + 32))(v144, v105 + v109, v103);
      sub_24EAACF48(&qword_27F215650, MEMORY[0x277CE0570]);
      v142 = sub_24F92AFF8();
      v143 = *(v101 + 8);
      v143(v141, v103);
      sub_24E601704(v170, &qword_27F215598);
      sub_24E601704(v171, &qword_27F215598);
      v143(v108, v103);
      sub_24E601704(v105, &qword_27F215598);
      v107 = 0.0;
      if (v142)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    sub_24E601704(v170, &qword_27F215598);
    sub_24E601704(v171, &qword_27F215598);
    (*(v101 + 8))(v108, v103);
LABEL_13:
    sub_24E601704(v105, &unk_27F254F20);
LABEL_14:
    v107 = *(&v226 + 1) + *(&v226 + 1);
    goto LABEL_15;
  }

  sub_24E601704(v102, &qword_27F215598);
  sub_24E601704(v100, &qword_27F215598);
  if (v106(v105 + v162, 1, v103) != 1)
  {
    goto LABEL_13;
  }

  sub_24E601704(v105, &qword_27F215598);
  v107 = 0.0;
LABEL_15:
  v170 = *&v107;
  v171 = *(&v225 + 1);
  v188 = v244;
  v189 = v245;
  v190 = v246;
  v184 = v240;
  v185 = v241;
  v186 = v242;
  v187 = v243;
  v182 = v238;
  v183 = v239;
  v110 = v179;
  sub_24E60169C(v180, v179, &qword_27F226F70);
  v111 = v189;
  v191[6] = v188;
  v191[7] = v189;
  v112 = v184;
  v113 = v185;
  v191[2] = v184;
  v191[3] = v185;
  v115 = v186;
  v114 = v187;
  v191[4] = v186;
  v191[5] = v187;
  v117 = v182;
  v116 = v183;
  v191[0] = v182;
  v191[1] = v183;
  v118 = v169;
  *(v169 + 128) = v188;
  *(v118 + 144) = v111;
  *(v118 + 64) = v112;
  *(v118 + 80) = v113;
  *(v118 + 96) = v115;
  *(v118 + 112) = v114;
  v119 = v181;
  *v118 = v165;
  *(v118 + 8) = v119;
  v120 = v163;
  *(v118 + 16) = v164;
  *(v118 + 24) = v120;
  v192 = v190;
  *(v118 + 160) = v190;
  *(v118 + 32) = v117;
  *(v118 + 48) = v116;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226F80);
  sub_24E60169C(v110, v118 + v121[16], &qword_27F226F70);
  v122 = v121[20];
  *(&v193[4] + 8) = v230;
  *(&v193[5] + 8) = v231;
  *(&v193[7] + 8) = v233;
  *(&v193[8] + 8) = v234;
  *(&v193[9] + 8) = v235;
  *(&v193[10] + 8) = v236;
  *&v193[0] = v176;
  *(&v193[0] + 1) = v178;
  *&v193[1] = v175;
  *(&v193[1] + 1) = v177;
  *&v193[2] = v174;
  v123 = v159;
  v124 = v160;
  *(&v193[2] + 1) = v159;
  LOBYTE(v193[3]) = v173;
  *(&v193[3] + 1) = *v237;
  DWORD1(v193[3]) = *&v237[3];
  *(&v193[3] + 1) = v160;
  v125 = v161;
  *&v193[4] = v161;
  *(&v193[6] + 8) = v232;
  BYTE8(v193[11]) = v172;
  HIDWORD(v193[11]) = *&v229[3];
  *(&v193[11] + 9) = *v229;
  v127 = v157;
  v126 = v158;
  *&v193[12] = v158;
  *(&v193[12] + 1) = v157;
  v129 = v155;
  v128 = v156;
  *&v193[13] = v156;
  *(&v193[13] + 1) = v155;
  LOBYTE(v193[14]) = 0;
  *(&v193[14] + 1) = *v228;
  DWORD1(v193[14]) = *&v228[3];
  v130 = v154;
  BYTE8(v193[14]) = v154;
  HIDWORD(v193[14]) = *&v227[3];
  *(&v193[14] + 9) = *v227;
  v132 = v152;
  v131 = v153;
  *&v193[15] = v153;
  *(&v193[15] + 1) = v152;
  v133 = v150;
  v134 = v151;
  *&v193[16] = v151;
  *(&v193[16] + 1) = v150;
  LOBYTE(v193[17]) = 0;
  memcpy((v118 + v122), v193, 0x111uLL);
  v135 = v118 + v121[24];
  *v135 = 0;
  *(v135 + 8) = 1;
  v136 = (v118 + v121[28]);

  sub_24E60169C(v191, v194, &qword_27F226F88);
  sub_24E60169C(v193, v194, &qword_27F226F90);
  v137 = v148;

  v138 = v149;

  *v136 = v147;
  v136[1] = v137;
  v136[2] = v138;
  v139 = v170;
  v136[3] = v171;
  v136[4] = v139;
  sub_24E601704(v180, &qword_27F226F70);

  *&v194[120] = v233;
  v195 = v234;
  v196 = v235;
  v197 = v236;
  *&v194[72] = v230;
  *&v194[88] = v231;
  *v194 = v176;
  *&v194[8] = v178;
  *&v194[16] = v175;
  *&v194[24] = v177;
  *&v194[32] = v174;
  *&v194[40] = v123;
  v194[48] = v173;
  *&v194[49] = *v237;
  *&v194[52] = *&v237[3];
  *&v194[56] = v124;
  *&v194[64] = v125;
  *&v194[104] = v232;
  v198 = v172;
  *&v199[3] = *&v229[3];
  *v199 = *v229;
  v200 = v126;
  v201 = v127;
  v202 = v128;
  v203 = v129;
  v204 = 0;
  *v205 = *v228;
  *&v205[3] = *&v228[3];
  v206 = v130;
  *&v207[3] = *&v227[3];
  *v207 = *v227;
  v208 = v131;
  v209 = v132;
  v210 = v134;
  v211 = v133;
  v212 = 0;
  sub_24E601704(v194, &qword_27F226F90);
  sub_24E601704(v179, &qword_27F226F70);
  v219 = v188;
  v220 = v189;
  v221 = v190;
  v215 = v184;
  v216 = v185;
  v218 = v187;
  v217 = v186;
  v214 = v183;
  v213 = v182;
  sub_24E601704(&v213, &qword_27F226F88);
}

uint64_t sub_24EAAC2B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a1;
  v47 = a2;
  v2 = sub_24F924258();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v42 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226F50);
  MEMORY[0x28223BE20](v46);
  v6 = &v41 - v5;
  v7 = sub_24F925218();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v41 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598);
  MEMORY[0x28223BE20](v14 - 8);
  v44 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v41 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v41 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226F58);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v25 = &v41 - v24;
  v26 = *(v3 + 56);
  v45 = v25;
  v48 = v2;
  v26(v23);
  type metadata accessor for BaseLeaderboardRowView();
  sub_24F769764(v21);
  (*(v8 + 104))(v18, *MEMORY[0x277CE0558], v7);
  (*(v8 + 56))(v18, 0, 1, v7);
  v27 = *(v11 + 56);
  sub_24E60169C(v21, v13, &qword_27F215598);
  sub_24E60169C(v18, &v13[v27], &qword_27F215598);
  v28 = *(v8 + 48);
  if (v28(v13, 1, v7) == 1)
  {
    sub_24E601704(v18, &qword_27F215598);
    sub_24E601704(v21, &qword_27F215598);
    if (v28(&v13[v27], 1, v7) == 1)
    {
      sub_24E601704(v13, &qword_27F215598);
      v29 = v45;
LABEL_9:
      v35 = sub_24F9257F8();
      sub_24F923318();
      *v6 = v35;
      *(v6 + 1) = v36;
      *(v6 + 2) = v37;
      *(v6 + 3) = v38;
      *(v6 + 4) = v39;
      v6[40] = 0;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226F40);
      sub_24EAACEBC();
      sub_24EAACF48(&qword_27F226F48, MEMORY[0x277CDFC08]);
      sub_24F924E28();
      return sub_24E601704(v29, &qword_27F226F58);
    }

    goto LABEL_6;
  }

  sub_24E60169C(v13, v44, &qword_27F215598);
  if (v28(&v13[v27], 1, v7) == 1)
  {
    sub_24E601704(v18, &qword_27F215598);
    sub_24E601704(v21, &qword_27F215598);
    (*(v8 + 8))(v44, v7);
LABEL_6:
    sub_24E601704(v13, &unk_27F254F20);
    v29 = v45;
    goto LABEL_7;
  }

  v31 = &v13[v27];
  v32 = v41;
  (*(v8 + 32))(v41, v31, v7);
  sub_24EAACF48(&qword_27F215650, MEMORY[0x277CE0570]);
  v33 = v44;
  LODWORD(v43) = sub_24F92AFF8();
  v34 = *(v8 + 8);
  v34(v32, v7);
  sub_24E601704(v18, &qword_27F215598);
  sub_24E601704(v21, &qword_27F215598);
  v34(v33, v7);
  sub_24E601704(v13, &qword_27F215598);
  v29 = v45;
  if (v43)
  {
    goto LABEL_9;
  }

LABEL_7:
  v30 = v42;
  sub_24EAAC9C4(v29, v42);
  sub_24E6EB910(v30, v6);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226F40);
  sub_24EAACEBC();
  sub_24EAACF48(&qword_27F226F48, MEMORY[0x277CDFC08]);
  sub_24F924E28();
  sub_24E6EB974(v30);
  return sub_24E601704(v29, &qword_27F226F58);
}

uint64_t sub_24EAAC9C4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226F58);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  sub_24E60169C(a1, &v21 - v8, &qword_27F226F58);
  v10 = sub_24F924258();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    return sub_24E73A8FC(v9, a2);
  }

  sub_24E601704(v9, &qword_27F226F58);
  v12 = *(v10 + 20);
  v13 = *MEMORY[0x277CE0118];
  v14 = sub_24F924B38();
  (*(*(v14 - 8) + 104))(&a2[v12], v13, v14);
  __asm { FMOV            V0.2D, #8.0 }

  *a2 = _Q0;
  sub_24E6EB910(a2, v6);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  return sub_24E61DA68(v6, a1, &qword_27F226F58);
}

uint64_t sub_24EAACBD0@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_24F927618();
  a1[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226EB8);
  sub_24EAAAD30(v1, a1 + *(v4 + 44));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226EC0);
  *(a1 + *(result + 36)) = 0;
  return result;
}

unint64_t sub_24EAACC38()
{
  result = qword_27F226F00;
  if (!qword_27F226F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F226EF8);
    sub_24EAACCC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226F00);
  }

  return result;
}

unint64_t sub_24EAACCC4()
{
  result = qword_27F226F08;
  if (!qword_27F226F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F226F10);
    sub_24EAACD7C();
    sub_24E602068(&qword_27F217388, &qword_27F217390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226F08);
  }

  return result;
}

unint64_t sub_24EAACD7C()
{
  result = qword_27F226F18;
  if (!qword_27F226F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F226F20);
    sub_24EAACE00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226F18);
  }

  return result;
}

unint64_t sub_24EAACE00()
{
  result = qword_27F226F28;
  if (!qword_27F226F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F226F30);
    sub_24EAACEBC();
    sub_24EAACF48(&qword_27F226F48, MEMORY[0x277CDFC08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226F28);
  }

  return result;
}

unint64_t sub_24EAACEBC()
{
  result = qword_27F226F38;
  if (!qword_27F226F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F226F40);
    sub_24E760430();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226F38);
  }

  return result;
}

uint64_t sub_24EAACF48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for BaseLeaderboardRowView.BackgroundConfiguration(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
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

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
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

_WORD *storeEnumTagSinglePayload for BaseLeaderboardRowView.BackgroundConfiguration(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_24EAAD0FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_24EAAD144(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24EAAD1A8()
{
  result = qword_27F226F98;
  if (!qword_27F226F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F226EC0);
    sub_24EAAD260();
    sub_24E602068(&qword_27F212A60, &qword_27F223340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226F98);
  }

  return result;
}

unint64_t sub_24EAAD260()
{
  result = qword_27F226FA0;
  if (!qword_27F226FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F226FA8);
    sub_24E602068(&qword_27F226FB0, &qword_27F226FB8);
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226FA0);
  }

  return result;
}

unint64_t sub_24EAAD358()
{
  result = qword_27F226FC0;
  if (!qword_27F226FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226FC0);
  }

  return result;
}

uint64_t sub_24EAAD3D8@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10);
  MEMORY[0x28223BE20](v2);
  v4 = &v47 - v3;
  v5 = *v1;
  v6 = v1[1];
  v47 = v1;
  v49 = v5;
  v50 = v6;
  sub_24E600AEC();

  v7 = sub_24F925E18();
  v9 = v8;
  v11 = v10;
  v12 = sub_24F925C98();
  v14 = v13;
  v16 = v15;
  sub_24E600B40(v7, v9, v11 & 1);

  v17 = sub_24F9251C8();
  v18 = *(v2 + 36);
  v19 = *MEMORY[0x277CE13B8];
  v20 = sub_24F927748();
  (*(*(v20 - 8) + 104))(&v4[v18], v19, v20);
  *v4 = v17;
  sub_24EAAD69C();
  v21 = sub_24F925C58();
  v23 = v22;
  LOBYTE(v2) = v24;
  v26 = v25;
  sub_24E600B40(v12, v14, v16 & 1);

  sub_24EAAD700(v4);
  v49 = v21;
  v50 = v23;
  LOBYTE(v2) = v2 & 1;
  v51 = v2;
  v52 = v26;
  v27 = v48;
  sub_24F9268B8();
  sub_24E600B40(v21, v23, v2);

  LOBYTE(v21) = sub_24F925838();
  sub_24F923318();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2177A8) + 36);
  *v36 = v21;
  *(v36 + 8) = v29;
  *(v36 + 16) = v31;
  *(v36 + 24) = v33;
  *(v36 + 32) = v35;
  *(v36 + 40) = 0;
  LOBYTE(v21) = sub_24F925858();
  sub_24F923318();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217748);
  v46 = v27 + *(result + 36);
  *v46 = v21;
  *(v46 + 8) = v38;
  *(v46 + 16) = v40;
  *(v46 + 24) = v42;
  *(v46 + 32) = v44;
  *(v46 + 40) = 0;
  return result;
}

unint64_t sub_24EAAD69C()
{
  result = qword_27F214428;
  if (!qword_27F214428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F213F10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214428);
  }

  return result;
}

uint64_t sub_24EAAD700(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24EAAD76C()
{
  result = qword_27F2177B0;
  if (!qword_27F2177B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F217748);
    sub_24E6AFAB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2177B0);
  }

  return result;
}

__n128 __swift_memcpy184_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_24EAAD834(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
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

uint64_t sub_24EAAD87C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 184) = 1;
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

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24EAAD914@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v66 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226FD0);
  MEMORY[0x28223BE20](v3 - 8);
  v67 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v68 = (&v62 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10);
  MEMORY[0x28223BE20](v7);
  v9 = &v62 - v8;
  v10 = a1[1];
  v12 = a1[4];
  v11 = a1[5];
  if (v10)
  {
    v69 = *a1;
    v70 = v10;
    sub_24E600AEC();
    v63 = v11;

    v13 = sub_24F925E18();
    v15 = v14;
    v17 = v16;
    v18 = sub_24F925C98();
    v64 = v19;
    v65 = v18;
    v21 = v20;
    sub_24E600B40(v13, v15, v17 & 1);

    LODWORD(v13) = sub_24F9251C8();
    v62 = v12;
    v22 = *(v7 + 36);
    v23 = *MEMORY[0x277CE13B8];
    v24 = sub_24F927748();
    (*(*(v24 - 8) + 104))(&v9[v22], v23, v24);
    *v9 = v13;
    sub_24E602068(&qword_27F214428, &qword_27F213F10);
    LOBYTE(v13) = v21;
    v25 = v64;
    v26 = v65;
    v27 = sub_24F925C58();
    v29 = v28;
    v31 = v30;
    v33 = v32;
    sub_24E600B40(v26, v25, v13 & 1);

    sub_24E601704(v9, &qword_27F213F10);
    v34 = v27;
    v35 = v27;
    v36 = v29;
    v37 = v29;
    v12 = v62;
    v11 = v63;
    v64 = v31 & 1;
    sub_24E5FD138(v35, v37, v31 & 1);
    v65 = v33;
  }

  else
  {
    v34 = 0;
    v36 = 0;
    v64 = 0;
    v65 = 0;
  }

  v38 = sub_24F9249A8();
  v39 = v68;
  *v68 = v38;
  v39[1] = 0x4010000000000000;
  *(v39 + 16) = 0;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226FD8);
  sub_24EAADDB8(a1, v39 + *(v40 + 44));
  if (v11)
  {
    v69 = v12;
    v70 = v11;
    sub_24E600AEC();

    v41 = sub_24F925E18();
    v43 = v42;
    v45 = v44;
    v46 = sub_24F925C98();
    v48 = v47;
    v62 = v36;
    v50 = v49;
    v52 = v51;
    sub_24E600B40(v41, v43, v45 & 1);

    v53 = v50 & 1;
    v36 = v62;
    v63 = v46;
    sub_24E5FD138(v46, v48, v53);
  }

  else
  {
    v63 = 0;
    v48 = 0;
    v53 = 0;
    v52 = 0;
  }

  v54 = v67;
  sub_24EAAE35C(v68, v67);
  v56 = v65;
  v55 = v66;
  *v66 = v34;
  v55[1] = v36;
  v57 = v64;
  v55[2] = v64;
  v55[3] = v56;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226FE0);
  sub_24EAAE35C(v54, v55 + *(v58 + 48));
  v59 = (v55 + *(v58 + 64));
  sub_24E65D2B4(v34, v36, v57, v56);
  v60 = v63;
  sub_24E65D2B4(v63, v48, v53, v52);
  sub_24E65D2F8(v34, v36, v57, v56);
  sub_24E65D2F8(v60, v48, v53, v52);
  *v59 = v60;
  v59[1] = v48;
  v59[2] = v53;
  v59[3] = v52;
  sub_24EAAE3CC(v68);
  sub_24E65D2F8(v60, v48, v53, v52);
  sub_24EAAE3CC(v54);
  return sub_24E65D2F8(v34, v36, v57, v56);
}

uint64_t sub_24EAADDB8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v62 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2143D8);
  v58 = *(v3 - 8);
  v59 = v3;
  MEMORY[0x28223BE20](v3);
  v53 = (&v52 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226FE8);
  MEMORY[0x28223BE20](v5 - 8);
  v61 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v57 = &v52 - v8;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D0);
  v55 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v56 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v52 - v11;
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  v54 = *(a1 + 48);
  v15 = *(a1 + 64);
  v52 = *(a1 + 56);
  v63 = v13;
  v64 = v14;
  sub_24E600AEC();

  v16 = sub_24F925E18();
  v18 = v17;
  v20 = v19;
  v21 = sub_24F925C98();
  v23 = v22;
  LOBYTE(a1) = v24;
  v26 = v25;
  v27 = v20 & 1;
  v28 = v12;
  sub_24E600B40(v16, v18, v27);

  v63 = v21;
  v64 = v23;
  v65 = a1 & 1;
  v66 = v26;
  v29 = 1;
  sub_24F9268B8();
  sub_24E600B40(v21, v23, a1 & 1);

  if (v54)
  {
    v30 = v59;
    v31 = v57;
    if (v15)
    {

      v32 = sub_24F926DF8();
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF20);
      v34 = v53;
      v35 = (v53 + *(v33 + 36));
      v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22DF30) + 28);
      v37 = *MEMORY[0x277CE1050];
      v38 = sub_24F926E78();
      (*(*(v38 - 8) + 104))(v35 + v36, v37, v38);
      *v35 = swift_getKeyPath();
      *v34 = v32;
      LODWORD(v32) = sub_24F9251C8();
      v39 = v34 + *(v30 + 36);
      v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10) + 36);
      v41 = *MEMORY[0x277CE13B8];
      v42 = sub_24F927748();
      (*(*(v42 - 8) + 104))(&v39[v40], v41, v42);
      *v39 = v32;
      sub_24EAAE4AC(v34, v31);
      v29 = 0;
    }
  }

  else
  {
    v30 = v59;
    v31 = v57;
  }

  (*(v58 + 56))(v31, v29, 1, v30);
  v43 = v55;
  v44 = v56;
  v45 = *(v55 + 16);
  v46 = v60;
  v45(v56, v28, v60);
  v47 = v61;
  sub_24EAAE434(v31, v61);
  v48 = v62;
  v45(v62, v44, v46);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226FF0);
  sub_24EAAE434(v47, &v48[*(v49 + 48)]);
  sub_24E601704(v31, &qword_27F226FE8);
  v50 = *(v43 + 8);
  v50(v28, v46);
  sub_24E601704(v47, &qword_27F226FE8);
  return (v50)(v44, v46);
}

uint64_t sub_24EAAE2C8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 144);
  v12[8] = *(v1 + 128);
  v13 = v3;
  v14 = *(v1 + 160);
  v15 = *(v1 + 176);
  v4 = *(v1 + 80);
  v12[4] = *(v1 + 64);
  v12[5] = v4;
  v5 = *(v1 + 112);
  v12[6] = *(v1 + 96);
  v12[7] = v5;
  v6 = *(v1 + 16);
  v12[0] = *v1;
  v12[1] = v6;
  v7 = *(v1 + 48);
  v12[2] = *(v1 + 32);
  v12[3] = v7;
  v8 = sub_24F924C98();
  v9 = *(&v13 + 1);
  *a1 = v8;
  *(a1 + 8) = v9;
  *(a1 + 16) = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226FC8);
  return sub_24EAAD914(v12, (a1 + *(v10 + 44)));
}

uint64_t sub_24EAAE35C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226FD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EAAE3CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226FD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EAAE434(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226FE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EAAE4AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2143D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_24EAAE570()
{
  sub_24F925A08();
  sub_24F925938();
  v0 = sub_24F9259A8();

  v1 = sub_24F925988();
  v2 = sub_24F925A18();
  v3 = sub_24F925A18();
  v4 = sub_24F925898();
  xmmword_27F39B9F0 = vdupq_n_s64(0x4044000000000000uLL);
  *&qword_27F39BA00 = xmmword_24F97D0C0;
  *&xmmword_27F39BA10 = v0;
  *(&xmmword_27F39BA10 + 1) = v1;
  *&xmmword_27F39BA20 = v2;
  *(&xmmword_27F39BA20 + 1) = v3;
  *&xmmword_27F39BA30 = v4;
  *(&xmmword_27F39BA30 + 8) = xmmword_24F97D0D0;
  result = 16.0;
  *(&xmmword_27F39BA40 + 8) = xmmword_24F97D0E0;
  qword_27F39BA58 = 0x4014000000000000;
  return result;
}

uint64_t sub_24EAAE618(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24EAAE660(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24EAAE6CC()
{
  if (qword_27F210148 != -1)
  {
    swift_once();
  }

  v2[5] = xmmword_27F39BA40;
  v2[6] = unk_27F39BA50;
  v2[0] = xmmword_27F39B9F0;
  v2[1] = *&qword_27F39BA00;
  v2[3] = xmmword_27F39BA20;
  v2[4] = xmmword_27F39BA30;
  v2[2] = xmmword_27F39BA10;
  xmmword_27F39BA60 = xmmword_27F39B9F0;
  xmmword_27F39BAA0 = xmmword_27F39BA30;
  unk_27F39BAB0 = xmmword_27F39BA40;
  qword_27F39BA70 = qword_27F39BA00;
  unk_27F39BA78 = 0x4024000000000000;
  xmmword_27F39BA80 = xmmword_27F39BA10;
  unk_27F39BA90 = xmmword_27F39BA20;
  *&xmmword_27F39BAC0 = 0x4020000000000000;
  *(&xmmword_27F39BAC0 + 1) = qword_27F39BA58;
  return sub_24E784FF8(v2, &v1);
}

uint64_t sub_24EAAE7B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227018);
  MEMORY[0x28223BE20](v2);
  v4 = &v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2143D8);
  MEMORY[0x28223BE20](v5);
  v7 = (&v18 - v6);
  if (*(a1 + 8))
  {
  }

  v8 = sub_24F926DF8();
  v9 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF20) + 36));
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22DF30) + 28);
  v11 = *MEMORY[0x277CE1050];
  v12 = sub_24F926E78();
  (*(*(v12 - 8) + 104))(v9 + v10, v11, v12);
  *v9 = swift_getKeyPath();
  *v7 = v8;
  LODWORD(v8) = sub_24F9251C8();
  v13 = v7 + *(v5 + 36);
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10) + 36);
  v15 = *MEMORY[0x277CE13B8];
  v16 = sub_24F927748();
  (*(*(v16 - 8) + 104))(&v13[v14], v15, v16);
  *v13 = v8;
  sub_24EAAEBD0(v7, v4);
  swift_storeEnumTagMultiPayload();
  sub_24E62A7AC();
  sub_24F924E28();
  return sub_24EAAEC40(v7);
}

uint64_t sub_24EAAEA38@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227008);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - v5;
  v7 = v1[7];
  v25 = v1[6];
  v26 = v7;
  v27 = *(v1 + 16);
  v8 = v1[3];
  v21 = v1[2];
  v22 = v8;
  v9 = v1[5];
  v23 = v1[4];
  v24 = v9;
  v10 = v1[1];
  v19 = *v1;
  v20 = v10;
  sub_24EAAE7B0(&v19);
  v11 = sub_24F925858();
  sub_24F923318();
  v12 = &v6[*(v4 + 44)];
  *v12 = v11;
  *(v12 + 1) = v13;
  *(v12 + 2) = v14;
  *(v12 + 3) = v15;
  *(v12 + 4) = v16;
  v12[40] = 0;
  if (v20)
  {
    v17 = 1.0;
  }

  else
  {
    v17 = 0.0;
  }

  sub_24EAAEB58(v6, a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227010);
  *(a1 + *(result + 36)) = v17;
  return result;
}

uint64_t sub_24EAAEB58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227008);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EAAEBD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2143D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EAAEC40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2143D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24EAAECCC()
{
  result = qword_27F227020;
  if (!qword_27F227020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227010);
    sub_24EAAED58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227020);
  }

  return result;
}

unint64_t sub_24EAAED58()
{
  result = qword_27F227028;
  if (!qword_27F227028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227008);
    sub_24EAAEDE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227028);
  }

  return result;
}

unint64_t sub_24EAAEDE4()
{
  result = qword_27F227030;
  if (!qword_27F227030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227038);
    sub_24EAAEE68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227030);
  }

  return result;
}

unint64_t sub_24EAAEE68()
{
  result = qword_27F227040;
  if (!qword_27F227040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227048);
    sub_24E62A7AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227040);
  }

  return result;
}

char *CompoundAction.__allocating_init(title:actions:presentationStyle:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_24F91F6B8();
  v31 = *(v10 - 8);
  v32 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *&v13[OBJC_IVAR____TtC12GameStoreKit14CompoundAction_actions] = a3;
  v39 = 0;
  memset(v38, 0, sizeof(v38));
  v14 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v15 = sub_24F928AD8();
  v16 = *(v15 - 8);
  (*(v16 + 16))(&v13[v14], a5, v15);
  v17 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v18 = sub_24F929608();
  (*(*(v18 - 8) + 56))(&v13[v17], 1, 1, v18);
  v19 = &v13[OBJC_IVAR____TtC12GameStoreKit6Action_clickSender];
  *v19 = 0u;
  *(v19 + 1) = 0u;
  v20 = &v13[OBJC_IVAR____TtC12GameStoreKit6Action_id];
  sub_24E65E064(v38, &v35);
  if (*(&v36 + 1))
  {
    v21 = v36;
    *v20 = v35;
    *(v20 + 1) = v21;
    *(v20 + 4) = v37;
  }

  else
  {
    sub_24F91F6A8();
    v22 = sub_24F91F668();
    v30 = a5;
    v23 = a1;
    v24 = a2;
    v25 = a4;
    v26 = v22;
    v28 = v27;
    (*(v31 + 8))(v12, v32);
    v33 = v26;
    v34 = v28;
    a4 = v25;
    a2 = v24;
    a1 = v23;
    a5 = v30;
    sub_24F92C7F8();
    sub_24E601704(&v35, &qword_27F235830);
  }

  (*(v16 + 8))(a5, v15);
  sub_24E601704(v38, &qword_27F235830);
  *(v13 + 2) = a1;
  *(v13 + 3) = a2;
  *(v13 + 4) = 0;
  *(v13 + 5) = a4;
  return v13;
}

void *CompoundAction.init(title:actions:presentationStyle:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v37 = a2;
  v38 = a4;
  v10 = sub_24F91F6B8();
  v36 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v34 - v14;
  v16 = sub_24F928AD8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + OBJC_IVAR____TtC12GameStoreKit14CompoundAction_actions) = a3;
  v20 = a5;
  v48 = 0;
  memset(v47, 0, sizeof(v47));
  (*(v17 + 16))(v19, a5, v16);
  v21 = sub_24F929608();
  (*(*(v21 - 8) + 56))(v15, 1, 1, v21);
  v22 = (v6 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v22 = 0u;
  v22[1] = 0u;
  sub_24E65E064(v47, &v41);
  if (*(&v42 + 1))
  {
    v44 = v41;
    v45 = v42;
    v46 = v43;
  }

  else
  {
    sub_24F91F6A8();
    v23 = sub_24F91F668();
    v24 = v10;
    v25 = a5;
    v26 = v23;
    v35 = a1;
    v28 = v27;
    (*(v36 + 8))(v12, v24);
    v39 = v26;
    v40 = v28;
    v20 = v25;
    a1 = v35;
    sub_24F92C7F8();
    sub_24E601704(&v41, &qword_27F235830);
  }

  (*(v17 + 8))(v20, v16);
  sub_24E601704(v47, &qword_27F235830);
  v29 = v6 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v29 + 4) = v46;
  v30 = v45;
  *v29 = v44;
  *(v29 + 1) = v30;
  sub_24E65E0D4(v15, v6 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v32 = v37;
  v31 = v38;
  v6[2] = a1;
  v6[3] = v32;
  v6[4] = 0;
  v6[5] = v31;
  (*(v17 + 32))(v6 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v19, v16);
  return v6;
}

uint64_t CompoundAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = v2;
  v47 = a2;
  v42 = v4;
  v6 = *v4;
  v40 = v3;
  v41 = v6;
  v46 = sub_24F9285B8();
  v43 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v39 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v37 - v9;
  v11 = sub_24F928388();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v38 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v37 - v15;
  v17 = sub_24F92AC28();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a1;
  sub_24F928398();
  sub_24F9282B8();
  v21 = v16;
  v22 = *(v12 + 8);
  v44 = v11;
  v22(v21, v11);
  if ((*(v18 + 48))(v10, 1, v17) == 1)
  {
    sub_24E601704(v10, &qword_27F2213B0);
    v23 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v24 = 0x736E6F69746361;
    v25 = v41;
    v24[1] = 0xE700000000000000;
    v24[2] = v25;
    (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D22530], v23);
    swift_willThrow();
    v22(v45, v44);
    (*(v43 + 8))(v47, v46);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v41 = v22;
    (*(v18 + 32))(v20, v10, v17);
    v26 = type metadata accessor for Action();
    v27 = MEMORY[0x28223BE20](v26);
    v28 = v47;
    *(&v37 - 2) = v27;
    *(&v37 - 1) = v28;
    v29 = v40;
    v30 = sub_24F92ABB8();
    v40 = v29;
    v23 = v42;
    *(v42 + OBJC_IVAR____TtC12GameStoreKit14CompoundAction_actions) = v30;
    v31 = v38;
    (*(v12 + 16))(v38, v45, v44);
    v32 = v43;
    v33 = v39;
    (*(v43 + 16))(v39, v28, v46);
    v34 = v40;
    v35 = Action.init(deserializing:using:)(v31, v33);
    if (!v34)
    {
      v23 = v35;
    }

    v41(v45, v44);
    (*(v18 + 8))(v20, v17);
    (*(v32 + 8))(v47, v46);
  }

  return v23;
}

uint64_t CompoundAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);

  return v0;
}

uint64_t CompoundAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CompoundAction()
{
  result = qword_27F227050;
  if (!qword_27F227050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Uber.__allocating_init(style:assetType:artwork:compactArtwork:video:compactVideo:iconArtwork:title:)(char *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v72 = a8;
  v71 = a6;
  v73 = a5;
  v16 = sub_24F91F4A8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v10;
  v20 = swift_allocObject();
  v21 = *a1;
  v68 = *a2;
  v69 = a3;
  if (a3)
  {
    v22 = *(a3 + 16);
  }

  else
  {
    v22 = 0;
    v23 = 0;
  }

  v79 = v22;
  v80 = v23;
  v24 = a7;
  v70 = a4;
  if (a4)
  {
    v25 = *(a4 + 16);
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  v27 = v71;
  v81 = v25;
  v82 = v26;
  v28 = *&aBackgrou_0[8 * v21 + 8];
  v83 = *&aAbove_4[8 * v21];
  v84 = v28;
  if (!v73)
  {
    v85 = 0;
    v86 = 0;
    if (v71)
    {
      goto LABEL_9;
    }

LABEL_11:
    v32 = 0;
    v34 = 0;
    goto LABEL_12;
  }

  (*(v17 + 16))(v19, v73 + OBJC_IVAR____TtC12GameStoreKit5Video_videoUrl, v16);
  v29 = sub_24F91F398();
  v31 = v30;
  (*(v17 + 8))(v19, v16);
  v85 = v29;
  v86 = v31;
  if (!v27)
  {
    goto LABEL_11;
  }

LABEL_9:
  (*(v17 + 16))(v19, v27 + OBJC_IVAR____TtC12GameStoreKit5Video_videoUrl, v16);
  v32 = sub_24F91F398();
  v34 = v33;
  (*(v17 + 8))(v19, v16);
LABEL_12:
  v35 = v21;
  v36 = a9;
  v87 = v32;
  v88 = v34;
  if (v24)
  {
    v37 = *(v24 + 16);
  }

  else
  {
    v37 = 0;
    v38 = 0;
  }

  v89 = v37;
  v90 = v38;
  v91 = v72;
  v92 = a9;

  v40 = 0;
  v41 = MEMORY[0x277D84F90];
LABEL_16:
  if (v40 <= 7)
  {
    v42 = 7;
  }

  else
  {
    v42 = v40;
  }

  v43 = v42 + 1;
  v44 = 16 * v40 + 40;
  while (1)
  {
    if (v40 == 7)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740);
      swift_arrayDestroy();
      v53 = sub_24F92B708();

      v74 = v53;
      sub_24F92C7F8();
      v54 = v76;
      *(v20 + 80) = v75;
      *(v20 + 96) = v54;
      *(v20 + 112) = v77;
      *(v20 + 16) = v35;
      v55 = v69;
      *(v20 + 24) = v69;
      v56 = v70;
      if (!v70)
      {

        v56 = v55;
      }

      *(v20 + 32) = v56;
      v57 = v73;
      *(v20 + 40) = v73;
      v58 = v27;
      if (!v27)
      {

        v58 = v57;
      }

      *(v20 + 48) = v58;
      *(v20 + 56) = v24;
      *(v20 + 64) = v72;
      *(v20 + 72) = v36;
      v59 = v68;
      if (v68 != 3 || (v59 = v57 != 0, v57 | v55))
      {
        *(v20 + 17) = v59;
        return v20;
      }

      if (v24)
      {

        v60 = ASKDeviceTypeGetCurrent();
        v61 = sub_24F92B0D8();
        v63 = v62;
        if (v61 == sub_24F92B0D8() && v63 == v64)
        {

LABEL_41:
          *(v20 + 17) = 2;
          return v20;
        }

        v65 = sub_24F92CE08();

        if (v65)
        {
          goto LABEL_41;
        }
      }

      sub_24E6585F8(v20 + 80);
      swift_deallocPartialClassInstance();
      return 0;
    }

    if (v43 == ++v40)
    {
      break;
    }

    v45 = v44 + 16;
    v46 = *&v78[v44];
    v44 += 16;
    if (v46)
    {
      v67 = v35;
      v71 = v36;
      v47 = v27;
      v48 = *(&v76 + v45);

      result = swift_isUniquelyReferenced_nonNull_native();
      v49 = v24;
      if ((result & 1) == 0)
      {
        result = sub_24E615CF4(0, *(v41 + 16) + 1, 1, v41);
        v41 = result;
      }

      v51 = *(v41 + 16);
      v50 = *(v41 + 24);
      if (v51 >= v50 >> 1)
      {
        result = sub_24E615CF4((v50 > 1), v51 + 1, 1, v41);
        v41 = result;
      }

      *(v41 + 16) = v51 + 1;
      v52 = v41 + 16 * v51;
      *(v52 + 32) = v48;
      *(v52 + 40) = v46;
      v24 = v49;
      v27 = v47;
      v36 = v71;
      v35 = v67;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t Uber.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  Uber.init(deserializing:using:)(a1, a2);
  return v4;
}

GameStoreKit::Uber::AssetType_optional __swiftcall Uber.AssetType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t Uber.AssetType.rawValue.getter()
{
  v1 = 0x6F65646976;
  if (*v0 != 1)
  {
    v1 = 1852793705;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6B726F77747261;
  }
}

uint64_t sub_24EAB04FC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x6F65646976;
  if (v2 != 1)
  {
    v4 = 1852793705;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6B726F77747261;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x6F65646976;
  if (*a2 != 1)
  {
    v8 = 1852793705;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6B726F77747261;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24EAB05E8()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EAB0680()
{
  sub_24F92B218();
}

uint64_t sub_24EAB0704()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24EAB07A4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6F65646976;
  if (v2 != 1)
  {
    v5 = 1852793705;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6B726F77747261;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

GameStoreKit::Uber::Style_optional __swiftcall Uber.Style.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t Uber.Style.rawValue.getter()
{
  v1 = 0x656E696C6E69;
  if (*v0 != 1)
  {
    v1 = 0x756F72676B636162;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65766F6261;
  }
}

uint64_t sub_24EAB08AC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x656E696C6E69;
  if (v2 != 1)
  {
    v4 = 0x756F72676B636162;
    v3 = 0xEA0000000000646ELL;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x65766F6261;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x656E696C6E69;
  if (*a2 != 1)
  {
    v8 = 0x756F72676B636162;
    v7 = 0xEA0000000000646ELL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x65766F6261;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24EAB09AC()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EAB0A4C()
{
  sub_24F92B218();
}

uint64_t sub_24EAB0AD8()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24EAB0B80(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x656E696C6E69;
  if (v2 != 1)
  {
    v5 = 0x756F72676B636162;
    v4 = 0xEA0000000000646ELL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x65766F6261;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t Uber.init(style:assetType:artwork:compactArtwork:video:compactVideo:iconArtwork:title:)(char *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v67 = a8;
  v68 = a5;
  v69 = a4;
  v16 = sub_24F91F4A8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  v65 = *a2;
  v66 = a3;
  if (a3)
  {
    a3 = *(a3 + 16);
  }

  else
  {
    v21 = 0;
  }

  v75 = a3;
  v76 = v21;
  v22 = v68;
  if (v69)
  {
    v23 = *(v69 + 16);
  }

  else
  {
    v23 = 0;
    v24 = 0;
  }

  v77 = v23;
  v78 = v24;
  v25 = *&aBackgrou_0[8 * v20 + 8];
  v79 = *&aAbove_4[8 * v20];
  v80 = v25;
  if (!v22)
  {
    v81 = 0;
    v82 = 0;
    if (a6)
    {
      goto LABEL_9;
    }

LABEL_11:
    v29 = 0;
    v31 = 0;
    goto LABEL_12;
  }

  (*(v17 + 16))(v19, v22 + OBJC_IVAR____TtC12GameStoreKit5Video_videoUrl, v16);
  v26 = sub_24F91F398();
  v28 = v27;
  (*(v17 + 8))(v19, v16);
  v81 = v26;
  v82 = v28;
  if (!a6)
  {
    goto LABEL_11;
  }

LABEL_9:
  (*(v17 + 16))(v19, a6 + OBJC_IVAR____TtC12GameStoreKit5Video_videoUrl, v16);
  v29 = sub_24F91F398();
  v31 = v30;
  (*(v17 + 8))(v19, v16);
LABEL_12:
  v32 = v20;
  v83 = v29;
  v84 = v31;
  if (a7)
  {
    v33 = *(a7 + 16);
  }

  else
  {
    v33 = 0;
    v34 = 0;
  }

  v85 = v33;
  v86 = v34;
  v87 = v67;
  v88 = a9;
  v64 = a9;

  v36 = 0;
  v37 = MEMORY[0x277D84F90];
  v38 = 7;
LABEL_16:
  if (v36 > 7)
  {
    v38 = v36;
  }

  v39 = v38 + 1;
  v40 = 16 * v36 + 40;
  while (1)
  {
    if (v36 == 7)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740);
      swift_arrayDestroy();
      v49 = sub_24F92B708();

      v70 = v49;
      sub_24F92C7F8();
      v50 = v72;
      *(v10 + 80) = v71;
      *(v10 + 96) = v50;
      *(v10 + 112) = v73;
      *(v10 + 16) = v32;
      v51 = v66;
      *(v10 + 24) = v66;
      v52 = v69;
      if (!v69)
      {

        v52 = v51;
      }

      *(v10 + 32) = v52;
      v53 = v68;
      *(v10 + 40) = v68;
      v54 = a6;
      v55 = v64;
      if (!a6)
      {

        v54 = v53;
      }

      *(v10 + 48) = v54;
      *(v10 + 56) = a7;
      *(v10 + 64) = v67;
      *(v10 + 72) = v55;
      v56 = v65;
      if (v65 != 3)
      {
        goto LABEL_40;
      }

      v56 = v53 != 0;
      if (v53 | v51)
      {
        goto LABEL_40;
      }

      if (a7)
      {

        v57 = ASKDeviceTypeGetCurrent();
        v58 = sub_24F92B0D8();
        v60 = v59;
        if (v58 == sub_24F92B0D8() && v60 == v61)
        {

LABEL_39:
          v56 = 2;
LABEL_40:
          *(v10 + 17) = v56;
          return v10;
        }

        v62 = sub_24F92CE08();

        if (v62)
        {
          goto LABEL_39;
        }
      }

      sub_24E6585F8(v10 + 80);
      type metadata accessor for Uber();
      swift_deallocPartialClassInstance();
      return 0;
    }

    if (v39 == ++v36)
    {
      break;
    }

    v41 = v40 + 16;
    v42 = *&v74[v40];
    v40 += 16;
    if (v42)
    {
      HIDWORD(v63) = v32;
      v43 = a6;
      v44 = *(&v72 + v41);

      result = swift_isUniquelyReferenced_nonNull_native();
      v45 = a7;
      if ((result & 1) == 0)
      {
        result = sub_24E615CF4(0, *(v37 + 16) + 1, 1, v37);
        v37 = result;
      }

      v47 = *(v37 + 16);
      v46 = *(v37 + 24);
      if (v47 >= v46 >> 1)
      {
        result = sub_24E615CF4((v46 > 1), v47 + 1, 1, v37);
        v37 = result;
      }

      *(v37 + 16) = v47 + 1;
      v48 = v37 + 16 * v47;
      *(v48 + 32) = v44;
      *(v48 + 40) = v42;
      a7 = v45;
      a6 = v43;
      v32 = HIDWORD(v63);
      v38 = 7;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t Uber.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v77 = sub_24F91F4A8();
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v78 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F9285B8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v74 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F928388();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F928398();
  sub_24EA848B8();
  sub_24F928208();
  v12 = *(v9 + 8);
  v83 = v8;
  v82 = v9 + 8;
  v81 = v12;
  v12(v11, v8);
  v13 = a2;
  v89 = a2;
  v86 = v91;
  v14 = type metadata accessor for Artwork();
  sub_24F928398();
  v72 = v6;
  v15 = *(v6 + 16);
  v16 = v74;
  v15(v74, v13, v5);
  v17 = sub_24EAB2408(&qword_27F219660, 255, type metadata accessor for Artwork);
  sub_24F929548();
  v88 = v91;
  v85 = a1;
  sub_24F928398();
  v18 = v89;
  v90 = v15;
  (v15)();
  v75 = v17;
  v79 = v14;
  sub_24F929548();
  v19 = v91;
  if (!v91)
  {
  }

  v80 = v19;
  type metadata accessor for Video();
  sub_24F928398();
  v90(v16, v18, v5);
  sub_24EAB2408(&qword_27F221590, 255, type metadata accessor for Video);
  sub_24F929548();
  v87 = v91;
  sub_24F928398();
  v84 = v5;
  v90(v16, v18, v5);
  sub_24F929548();
  v20 = v91;
  if (!v91)
  {
  }

  sub_24F928398();
  v90(v16, v89, v84);
  sub_24F929548();
  v21 = v91;
  sub_24F928398();
  v90 = sub_24F928348();
  v79 = v22;
  v81(v11, v83);
  if (v88)
  {
    v23 = *(v88 + 16);
  }

  else
  {
    v23 = 0;
    v24 = 0;
  }

  v25 = v87;
  v26 = v77;
  v27 = v76;
  v95 = v23;
  v96 = v24;
  v28 = v21;
  if (v80)
  {
    v29 = *(v80 + 16);
  }

  else
  {
    v29 = 0;
    v30 = 0;
  }

  v97 = v29;
  v98 = v30;
  v31 = *&aBackgrou_0[8 * v86 + 8];
  v99 = *&aAbove_4[8 * v86];
  v100 = v31;
  if (!v25)
  {
    v101 = 0;
    v102 = 0;
    if (v20)
    {
      goto LABEL_13;
    }

LABEL_15:
    v38 = 0;
    v40 = 0;
    goto LABEL_16;
  }

  v32 = v25 + OBJC_IVAR____TtC12GameStoreKit5Video_videoUrl;
  v33 = v78;
  (*(v27 + 16))(v78, v32, v26);
  v34 = sub_24F91F398();
  v36 = v35;
  (*(v27 + 8))(v33, v26);
  v101 = v34;
  v102 = v36;
  if (!v20)
  {
    goto LABEL_15;
  }

LABEL_13:
  v37 = v78;
  (*(v27 + 16))(v78, v20 + OBJC_IVAR____TtC12GameStoreKit5Video_videoUrl, v26);
  v38 = sub_24F91F398();
  v40 = v39;
  (*(v27 + 8))(v37, v26);
LABEL_16:
  v41 = v86;
  v103 = v38;
  v104 = v40;
  if (v21)
  {
    v42 = *(v21 + 16);
  }

  else
  {
    v42 = 0;
    v43 = 0;
  }

  v105 = v42;
  v106 = v43;
  v107 = v90;
  v108 = v79;

  v45 = 0;
  v46 = MEMORY[0x277D84F90];
  v47 = 7;
LABEL_20:
  if (v45 > 7)
  {
    v47 = v45;
  }

  v48 = v47 + 1;
  v49 = 16 * v45 + 40;
  while (v45 != 7)
  {
    if (v48 == ++v45)
    {
      __break(1u);
      return result;
    }

    v50 = v49 + 16;
    v51 = *&v94[v49];
    v49 += 16;
    if (v51)
    {
      v86 = v20;
      v52 = v28;
      v53 = *(&v92 + v50);

      result = swift_isUniquelyReferenced_nonNull_native();
      v54 = v41;
      if ((result & 1) == 0)
      {
        result = sub_24E615CF4(0, *(v46 + 16) + 1, 1, v46);
        v46 = result;
      }

      v56 = *(v46 + 16);
      v55 = *(v46 + 24);
      if (v56 >= v55 >> 1)
      {
        result = sub_24E615CF4((v55 > 1), v56 + 1, 1, v46);
        v46 = result;
      }

      *(v46 + 16) = v56 + 1;
      v57 = v46 + 16 * v56;
      *(v57 + 32) = v53;
      *(v57 + 40) = v51;
      v41 = v54;
      v28 = v52;
      v20 = v86;
      v47 = 7;
      goto LABEL_20;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740);
  swift_arrayDestroy();
  v58 = sub_24F92B708();

  v109 = v58;
  sub_24F92C7F8();
  v59 = v92;
  v60 = v73;
  *(v73 + 80) = v91;
  *(v60 + 96) = v59;
  *(v60 + 112) = v93;
  *(v60 + 16) = v41;
  v61 = v88;
  *(v60 + 24) = v88;
  v62 = v80;
  if (!v80)
  {

    v62 = v61;
  }

  *(v60 + 32) = v62;
  v63 = v87;
  *(v60 + 40) = v87;
  v64 = v89;
  if (!v20)
  {

    v20 = v63;
  }

  *(v60 + 48) = v20;
  *(v60 + 56) = v28;
  v65 = v79;
  *(v60 + 64) = v90;
  *(v60 + 72) = v65;
  if (v63 | v61 | v28)
  {
    if (v63 | v61)
    {
      v66 = v63 != 0;
    }

    else
    {
      v66 = 2;
    }

    (*(v72 + 8))(v64, v84);
    v81(v85, v83);
    *(v60 + 17) = v66;
  }

  else
  {
    v67 = sub_24F92AC38();
    sub_24EAB2408(&qword_27F2213B8, 255, MEMORY[0x277D22548]);
    swift_allocError();
    v69 = v68;
    v70 = type metadata accessor for Uber();
    *v69 = 0x7079547465737361;
    v69[1] = 0xE900000000000065;
    v69[2] = v70;
    v69[3] = MEMORY[0x277D84F90];
    (*(*(v67 - 8) + 104))(v69, *MEMORY[0x277D22540], v67);
    swift_willThrow();
    (*(v72 + 8))(v64, v84);
    v81(v85, v83);

    sub_24E6585F8(v60 + 80);
    swift_deallocPartialClassInstance();
  }

  return v60;
}
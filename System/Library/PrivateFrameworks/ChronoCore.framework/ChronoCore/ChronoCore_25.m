uint64_t objectdestroy_75Tm()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t objectdestroy_78Tm()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_224C8F4BC(uint64_t a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  return sub_224C81F78(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
}

uint64_t objectdestroy_136Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4280, &unk_224DB65C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_224C8F56C(void *a1, char a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4280, &unk_224DB65C0) - 8) + 80);

  return sub_224C820F4(a1, a2 & 1);
}

uint64_t sub_224C8F63C(uint64_t a1)
{
  v3 = *(sub_224DAE738() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_224DAA548() - 8);
  v7 = (*(v6 + 64) + ((v5 + *(v6 + 80) + 16) & ~*(v6 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = v1[3];
  v18 = v1[2];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1 + v5;
  v11 = *(v1 + v5);
  v12 = *(v10 + 1);
  v13 = *(v1 + v7);
  v14 = *(v1 + v7 + 8);
  v15 = swift_task_alloc();
  *(v2 + 16) = v15;
  *v15 = v2;
  v15[1] = sub_224ACFF60;

  return sub_224C7D838(a1, v18, v17, v8, v9, v1 + v4, v11, v12);
}

uint64_t objectdestroy_142Tm()
{
  v1 = sub_224DAE738();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_224DAA548();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 16) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  v13 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v14 = *(v0 + v5 + 8);

  (*(v7 + 8))(v0 + v9, v6);
  v15 = *(v0 + v11 + 8);

  return MEMORY[0x2821FE8E8](v0, v11 + 16, v10 | 7);
}

uint64_t sub_224C8F990(uint64_t a1)
{
  v3 = *(sub_224DAE738() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_224DAA548() - 8);
  v7 = (*(v6 + 64) + ((v5 + *(v6 + 80) + 16) & ~*(v6 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = v1[3];
  v18 = v1[2];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1 + v5;
  v11 = *(v1 + v5);
  v12 = *(v10 + 1);
  v13 = *(v1 + v7);
  v14 = *(v1 + v7 + 8);
  v15 = swift_task_alloc();
  *(v2 + 16) = v15;
  *v15 = v2;
  v15[1] = sub_224ACED1C;

  return sub_224C7D838(a1, v18, v17, v8, v9, v1 + v4, v11, v12);
}

uint64_t sub_224C8FB70(uint64_t a1, char a2, void *a3)
{
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4280, &unk_224DB65C0) - 8) + 80);
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);

  return sub_224C7C70C(a1, a2 & 1, a3, v8, v9);
}

uint64_t sub_224C8FC08(uint64_t a1)
{
  v4 = *(sub_224DAC528() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_224ACFF60;

  return sub_224C7AAA8(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_224C8FD00(uint64_t a1)
{
  v3 = *(sub_224DAC2B8() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_224C78CBC(a1, v4, v5);
}

uint64_t sub_224C8FDA0(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 16);
  v5 = v2 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a2(v4, v5);
}

uint64_t objectdestroy_113Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(v1 + 16);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_224C8FEEC()
{
  v1 = *(sub_224DAC2B8() - 8);
  v2 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));
  v3 = *(v0 + 16);
  return sub_224C796B8(v2);
}

uint64_t sub_224C8FFBC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_224ACED1C;

  return sub_224C762C4(a1, v4, v5, v7, v6);
}

uint64_t type metadata accessor for ReplicatedExtension()
{
  result = qword_281358F70;
  if (!qword_281358F70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_224C90148()
{
  sub_224DACE38();
  if (v0 <= 0x3F)
  {
    sub_224C90214(319, &qword_281350B80, &unk_2813509D0, 0x277CFA378);
    if (v1 <= 0x3F)
    {
      sub_224C90214(319, &qword_281350B78, &qword_2813509B8, 0x277CFA210);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_224C90214(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_224A3B79C(255, a3, a4);
    v5 = sub_224DAF0B8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_224C9026C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7470697263736564;
  v4 = 0xEB0000000073726FLL;
  v5 = 0x8000000224DC4620;
  if (v2 != 1)
  {
    v3 = 0xD000000000000012;
    v4 = 0x8000000224DC4620;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6F69736E65747865;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xED00006F666E496ELL;
  }

  v8 = 0x7470697263736564;
  if (*a2 == 1)
  {
    v5 = 0xEB0000000073726FLL;
  }

  else
  {
    v8 = 0xD000000000000012;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6F69736E65747865;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xED00006F666E496ELL;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_224DAFD88();
  }

  return v11 & 1;
}

uint64_t sub_224C90380()
{
  v1 = *v0;
  sub_224DAFE68();
  sub_224DAEE78();

  return sub_224DAFEA8();
}

uint64_t sub_224C9043C()
{
  *v0;
  *v0;
  sub_224DAEE78();
}

uint64_t sub_224C904E4()
{
  v1 = *v0;
  sub_224DAFE68();
  sub_224DAEE78();

  return sub_224DAFEA8();
}

uint64_t sub_224C9059C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_224C91A54();
  *a2 = result;
  return result;
}

void sub_224C905CC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00006F666E496ELL;
  v4 = 0xEB0000000073726FLL;
  v5 = 0x7470697263736564;
  if (v2 != 1)
  {
    v5 = 0xD000000000000012;
    v4 = 0x8000000224DC4620;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6F69736E65747865;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_224C90644()
{
  v1 = 0x7470697263736564;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F69736E65747865;
  }
}

uint64_t sub_224C906B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_224C91A54();
  *a1 = result;
  return result;
}

uint64_t sub_224C906E0(uint64_t a1)
{
  v2 = sub_224C910B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_224C9071C(uint64_t a1)
{
  v2 = sub_224C910B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_224C90758@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v4 = sub_224DACE38();
  v39 = *(v4 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v4);
  v41 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5C10, &qword_224DBD100);
  v40 = *(v42 - 8);
  v7 = *(v40 + 64);
  MEMORY[0x28223BE20](v42);
  v9 = v34 - v8;
  v10 = type metadata accessor for ReplicatedExtension();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_224C910B0();
  sub_224DAFEF8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v39;
  LOBYTE(v43) = 0;
  sub_224C91168(&qword_27D6F5C18);
  sub_224DAFC68();
  v17 = *(v15 + 32);
  v37 = v13;
  v17(v13, v41, v4);
  v45 = 1;
  sub_224B6AA7C();
  sub_224DAFC68();
  v41 = v9;
  v18 = v43;
  v19 = v44;
  v20 = sub_224DAAD38();
  type metadata accessor for ReplicatedDescriptorsBox();
  v21 = sub_224DAACF8();
  v34[1] = v20;
  v35 = v18;
  v36 = v19;
  v22 = *(v21 + OBJC_IVAR___CHSReplicatedDescriptorsBox_descriptors);
  v23 = v21;

  *&v37[*(v10 + 20)] = v22;
  v45 = 2;
  sub_224DAFC48();
  v24 = v40;
  v25 = v44;
  if (v44 >> 60 == 15)
  {
    sub_224A78024(v35, v36);
    (*(v24 + 8))(v41, v42);
    v26 = MEMORY[0x277D84F90];
  }

  else
  {
    v27 = v43;
    type metadata accessor for ReplicatedControlDescriptorsBox();
    v28 = v27;
    v29 = sub_224DAACF8();
    v30 = v36;
    v31 = v29;
    (*(v24 + 8))(v41, v42);
    sub_224AC1D9C(v28, v25);
    sub_224A78024(v35, v30);
    v26 = *&v31[OBJC_IVAR___CHSReplicatedControlDescriptorsBox_descriptors];
  }

  v33 = v37;
  v32 = v38;
  *&v37[*(v10 + 24)] = v26;
  sub_224C91104(v33, v32);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_224C5AF9C(v33);
}

void sub_224C90C78(void *a1)
{
  v38 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5C20, &unk_224DBD108);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v29 - v6;
  v8 = type metadata accessor for ReplicatedExtension();
  v9 = v1;
  v10 = *(v1 + *(v8 + 20));
  v11 = type metadata accessor for ReplicatedDescriptorsBox();
  v12 = objc_allocWithZone(v11);
  *&v12[OBJC_IVAR___CHSReplicatedDescriptorsBox_descriptors] = v10;
  v42.receiver = v12;
  v42.super_class = v11;

  v13 = objc_msgSendSuper2(&v42, sel_init);
  sub_224DAAD38();
  v14 = sub_224DAAD08();
  if (v2)
  {
  }

  else
  {
    v34 = v3;
    v35 = v13;
    v32 = v7;
    v33 = v4;
    v16 = v38;
    v36 = v14;
    v37 = v15;
    v17 = *(v9 + *(v8 + 24));
    v18 = type metadata accessor for ReplicatedControlDescriptorsBox();
    v19 = objc_allocWithZone(v18);
    *&v19[OBJC_IVAR___CHSReplicatedControlDescriptorsBox_descriptors] = v17;
    v41.receiver = v19;
    v41.super_class = v18;

    v20 = objc_msgSendSuper2(&v41, sel_init);
    v21 = sub_224DAAD08();
    v30 = v22;
    v31 = v21;
    v23 = v16[4];
    __swift_project_boxed_opaque_existential_1(v16, v16[3]);
    sub_224C910B0();
    v24 = v32;
    sub_224DAFF08();
    LOBYTE(v39) = 0;
    sub_224DACE38();
    sub_224C91168(&qword_281350D20);
    v25 = v34;
    sub_224DAFCE8();
    v26 = v35;
    v39 = v36;
    v40 = v37;
    v43 = 1;
    sub_224B6B30C();
    sub_224DAFCE8();
    v27 = v33;
    v28 = v30;
    v39 = v31;
    v40 = v30;
    v43 = 2;
    sub_224DAFCE8();
    (*(v27 + 8))(v24, v25);

    sub_224A78024(v36, v37);
    sub_224A78024(v31, v28);
  }
}

uint64_t sub_224C91028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (MEMORY[0x22AA5B110]() & 1) != 0 && (sub_224C9142C(*(a1 + *(a3 + 20)), *(a2 + *(a3 + 20)), &unk_2813509D0, 0x277CFA378))
  {
    v6 = sub_224C9142C(*(a1 + *(a3 + 24)), *(a2 + *(a3 + 24)), &qword_2813509B8, 0x277CFA210);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

unint64_t sub_224C910B0()
{
  result = qword_281358FA0[0];
  if (!qword_281358FA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281358FA0);
  }

  return result;
}

uint64_t sub_224C91104(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReplicatedExtension();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_224C91168(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_224DACE38();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_224C911D8(unint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v6)
    {
      goto LABEL_29;
    }

    v8 = v4 & 0xFFFFFFFFFFFFFF8;
    v9 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v4 < 0)
    {
      v8 = v4;
    }

    if (v5)
    {
      v9 = v8;
    }

    v10 = a2 & 0xFFFFFFFFFFFFFF8;
    v11 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v10 = a2;
    }

    if (a2 >> 62)
    {
      v11 = v10;
    }

    if (v9 == v11)
    {
LABEL_29:
      v19 = 1;
      return v19 & 1;
    }

    if (v6 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = a3(0);
    if (((a2 | v4) & 0xC000000000000001) != 0)
    {
      v12 = a2 & 0xC000000000000001;
      v13 = 4;
      while (1)
      {
        v14 = v13 - 4;
        v15 = v13 - 3;
        if (__OFADD__(v13 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v4 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x22AA5DCC0](v13 - 4, v4);
          if (!v12)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v14 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v16 = *(v4 + 8 * v13);
          if (!v12)
          {
LABEL_24:
            if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v17 = *(a2 + 8 * v13);
            goto LABEL_26;
          }
        }

        v17 = MEMORY[0x22AA5DCC0](v13 - 4, a2);
LABEL_26:
        v18 = v17;
        v19 = sub_224DAF6A8();

        if (v19)
        {
          ++v13;
          if (v15 != v6)
          {
            continue;
          }
        }

        return v19 & 1;
      }
    }

    v20 = (v4 + 32);
    v21 = (a2 + 32);
    v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = v6 - 1;
    while (1)
    {
      if (!v22)
      {
        goto LABEL_40;
      }

      if (!v23)
      {
        break;
      }

      v26 = *v20++;
      v25 = v26;
      v27 = *v21++;
      a2 = v25;
      v4 = v27;
      v19 = sub_224DAF6A8();

      v29 = v24-- != 0;
      if (v19)
      {
        --v23;
        --v22;
        if (v29)
        {
          continue;
        }
      }

      return v19 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v30 = a3;
    v31 = sub_224DAF838();
    a3 = v30;
    v6 = v31;
  }

  v32 = a3;
  result = sub_224DAF838();
  a3 = v32;
  if (v6 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_224C9142C(unint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v7)
    {
      goto LABEL_29;
    }

    v9 = v5 & 0xFFFFFFFFFFFFFF8;
    v10 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v5 < 0)
    {
      v9 = v5;
    }

    if (v6)
    {
      v10 = v9;
    }

    v11 = a2 & 0xFFFFFFFFFFFFFF8;
    v12 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v11 = a2;
    }

    if (a2 >> 62)
    {
      v12 = v11;
    }

    if (v10 == v12)
    {
LABEL_29:
      v20 = 1;
      return v20 & 1;
    }

    if (v7 < 0)
    {
      __break(1u);
      return result;
    }

    v6 = sub_224A3B79C(0, a3, a4);
    if (((a2 | v5) & 0xC000000000000001) != 0)
    {
      v13 = a2 & 0xC000000000000001;
      v14 = 4;
      while (1)
      {
        v15 = v14 - 4;
        v16 = v14 - 3;
        if (__OFADD__(v14 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v5 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x22AA5DCC0](v14 - 4, v5);
          if (!v13)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v15 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v17 = *(v5 + 8 * v14);
          if (!v13)
          {
LABEL_24:
            if (v15 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v18 = *(a2 + 8 * v14);
            goto LABEL_26;
          }
        }

        v18 = MEMORY[0x22AA5DCC0](v14 - 4, a2);
LABEL_26:
        v19 = v18;
        v20 = sub_224DAF6A8();

        if (v20)
        {
          ++v14;
          if (v16 != v7)
          {
            continue;
          }
        }

        return v20 & 1;
      }
    }

    v21 = (v5 + 32);
    v22 = (a2 + 32);
    v23 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v25 = v7 - 1;
    while (1)
    {
      if (!v23)
      {
        goto LABEL_40;
      }

      if (!v24)
      {
        break;
      }

      v27 = *v21++;
      v26 = v27;
      v28 = *v22++;
      a2 = v26;
      v5 = v28;
      v20 = sub_224DAF6A8();

      v30 = v25-- != 0;
      if (v20)
      {
        --v24;
        --v23;
        if (v30)
        {
          continue;
        }
      }

      return v20 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v31 = a4;
    v32 = a3;
    v33 = sub_224DAF838();
    a3 = v32;
    a4 = v31;
    v7 = v33;
  }

  v34 = a4;
  v35 = a3;
  result = sub_224DAF838();
  a3 = v35;
  a4 = v34;
  if (v7 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_224C916D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v9, v15, v4);
    sub_224C918C4();
    v22 = sub_224DAEDD8();
    v23 = *v18;
    (*v18)(v9, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

unint64_t sub_224C918C4()
{
  result = qword_281351870;
  if (!qword_281351870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D6F30D0, &unk_224DB2AC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281351870);
  }

  return result;
}

unint64_t sub_224C91950()
{
  result = qword_27D6F5C28;
  if (!qword_27D6F5C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F5C28);
  }

  return result;
}

unint64_t sub_224C919A8()
{
  result = qword_281358F90;
  if (!qword_281358F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281358F90);
  }

  return result;
}

unint64_t sub_224C91A00()
{
  result = qword_281358F98;
  if (!qword_281358F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281358F98);
  }

  return result;
}

uint64_t sub_224C91A54()
{
  v0 = sub_224DAFBF8();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

void sub_224C91AA0()
{
  v0 = sub_224DA9A08();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  sub_224DA99E8();
  v6 = sub_224DA99D8();
  (*(v1 + 8))(v4, v0);
  [v5 setTimeZone_];

  qword_281351A58 = v5;
}

uint64_t sub_224C91BAC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v57 = v44 - v3;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v4 = *(v56 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v56);
  v55 = v44 - v6;
  v45 = v0;
  v7 = [v0 containerDescriptors];
  v44[1] = sub_224A3B79C(0, &unk_281350870, 0x277CFA1E0);
  v8 = sub_224DAF008();

  if (v8 >> 62)
  {
    goto LABEL_35;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v9)
  {
    while (1)
    {
      v59 = MEMORY[0x277D84F90];
      result = sub_224DAF9E8();
      if (v9 < 0)
      {
        break;
      }

      v11 = 0;
      v49 = v8;
      v50 = v8 & 0xC000000000000001;
      v46 = v8 + 32;
      v47 = v8 & 0xFFFFFFFFFFFFFF8;
      v54 = v4 + 2;
      v48 = v9;
      while (1)
      {
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v50)
        {
          v14 = MEMORY[0x22AA5DCC0]();
        }

        else
        {
          if (v11 >= *(v47 + 16))
          {
            goto LABEL_34;
          }

          v14 = *(v46 + 8 * v11);
        }

        v15 = v14;
        v4 = [v14 widgets];
        v16 = sub_224A3B79C(0, &qword_2813508A0, 0x277CFA1E8);
        v17 = sub_224DAF008();

        if (v17 >> 62)
        {
          v18 = sub_224DAF838();
        }

        else
        {
          v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v52 = v13;
        v53 = v15;
        v51 = v16;
        if (v18)
        {
          v58 = MEMORY[0x277D84F90];
          sub_224DAF9E8();
          if (v18 < 0)
          {
            goto LABEL_33;
          }

          sub_224DAF538();
          v19 = 0;
          do
          {
            if ((v17 & 0xC000000000000001) != 0)
            {
              v20 = MEMORY[0x22AA5DCC0](v19, v17);
            }

            else
            {
              v20 = *(v17 + 8 * v19 + 32);
            }

            v21 = v20;
            ++v19;
            v22 = [v20 widget];
            v23 = [v22 extensionIdentity];
            v24 = *MEMORY[0x277CFA138];
            swift_beginAccess();
            (*v54)(v55, &v23[v24], v56);
            v25 = *MEMORY[0x277CFA130];
            swift_beginAccess();
            sub_224AFD468(&v23[v25], v57);
            v26 = sub_224DAF508();

            v27 = sub_224C931C8(v26);
            sub_224C92FBC(v27);

            sub_224DAF9B8();
            v28 = *(v58 + 16);
            sub_224DAF9F8();
            sub_224DAFA08();
            sub_224DAF9C8();
          }

          while (v18 != v19);

          v15 = v53;
        }

        else
        {
        }

        v29 = [v15 uniqueIdentifier];
        if (!v29)
        {
          sub_224DAEE18();
          v29 = sub_224DAEDE8();
        }

        v30 = [v15 location];
        v31 = [v15 canAppearInSecureEnvironment];
        v32 = [v15 page];
        v33 = [v15 family];
        v34 = [v15 activeWidget];
        if (v34)
        {
          v35 = v34;
          v36 = [v34 uniqueIdentifier];

          sub_224DAEE18();
          v38 = v37;
        }

        else
        {
          v38 = 0;
        }

        v39 = sub_224DAEFF8();

        if (v38)
        {
          v12 = sub_224DAEDE8();
        }

        else
        {
          v12 = 0;
        }

        [objc_allocWithZone(MEMORY[0x277CFA1E0]) initWithUniqueIdentifier:v29 location:v30 canAppearInSecureEnvironment:v31 page:v32 family:v33 widgets:v39 activeWidget:v12];

        sub_224DAF9B8();
        v4 = *(v59 + 16);
        sub_224DAF9F8();
        sub_224DAFA08();
        sub_224DAF9C8();
        v11 = v52;
        v8 = v49;
        if (v52 == v48)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      v9 = sub_224DAF838();
      if (!v9)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_36:

    v40 = [v45 metricsSpecification];
    v41 = objc_allocWithZone(MEMORY[0x277CFA360]);
    v42 = sub_224DAEFF8();

    v43 = [v41 initWithContainerDescriptors:v42 metricsSpecification:v40];

    return v43;
  }

  return result;
}

id sub_224C9222C()
{
  result = [objc_allocWithZone(MEMORY[0x277CFA400]) initWithMaximumRefreshes:1 perWindow:900.0];
  qword_27D6F71D0 = result;
  return result;
}

uint64_t sub_224C92270@<X0>(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = [*a1 widgets];
  sub_224A3B79C(0, &qword_2813508A0, 0x277CFA1E8);
  v6 = sub_224DAF008();

  v10[2] = a2;
  v7 = sub_224AEA1F4(sub_224C9337C, v10, v6);

  if (v7 >> 62)
  {
    if (sub_224DAF838())
    {
      goto LABEL_3;
    }

LABEL_5:

    v8 = 0;
    goto LABEL_6;
  }

  if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = sub_224C92CC8();

LABEL_6:
  *a3 = v8;
  return result;
}

uint64_t sub_224C92388(uint64_t a1, uint64_t a2, void *a3)
{
  [objc_opt_self() defaultStrategy];
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  [v3 mutableCopy];
  sub_224DAF758();
  swift_unknownObjectRelease();
  sub_224A3B79C(0, &qword_27D6F5C30, 0x277CFA2B0);
  swift_dynamicCast();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_224DB2780;
  *(inited + 32) = a3;
  v6 = a3;
  sub_224AE9C84(inited);
  swift_setDeallocating();
  v7 = *(inited + 16);
  swift_arrayDestroy();
  v8 = objc_allocWithZone(MEMORY[0x277CFA408]);
  v9 = sub_224DAEDE8();
  sub_224A3B79C(0, &unk_281350A20, 0x277CFA400);
  sub_224A5D644(&unk_281350A10, &unk_281350A20, 0x277CFA400);
  v10 = sub_224DAF1A8();

  v11 = [v8 initWithIdentifier:v9 rateLimits:v10];

  v12 = [v72 rateLimitPolicies];
  if (v12)
  {
    v13 = v12;
    sub_224A3B79C(0, &qword_281350930, 0x277CFA408);
    sub_224A5D644(&unk_281350920, &qword_281350930, 0x277CFA408);
    sub_224DAF1B8();
  }

  v58 = v11;
  sub_224ADCAD0(v73, v58);

  sub_224A3B79C(0, &qword_281350930, 0x277CFA408);
  sub_224A5D644(&unk_281350920, &qword_281350930, 0x277CFA408);
  v14 = sub_224DAF1A8();
  [v72 setRateLimitPolicies_];

  v15 = [v72 containerDescriptors];
  sub_224A3B79C(0, &unk_281350870, 0x277CFA1E0);
  v16 = sub_224DAF008();

  if (v16 >> 62)
  {
    goto LABEL_42;
  }

  v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v17)
  {
    while (1)
    {
      v71 = MEMORY[0x277D84F90];
      result = sub_224DAF9E8();
      if (v17 < 0)
      {
        break;
      }

      v19 = 0;
      v62 = v17;
      v63 = v16 & 0xC000000000000001;
      v59 = v16 + 32;
      v60 = v16 & 0xFFFFFFFFFFFFFF8;
      v20 = &unk_27D6F5C38;
      v61 = v16;
      while (1)
      {
        v23 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v63)
        {
          v24 = MEMORY[0x22AA5DCC0]();
        }

        else
        {
          if (v19 >= *(v60 + 16))
          {
            goto LABEL_41;
          }

          v24 = *(v59 + 8 * v19);
        }

        v25 = v24;
        v26 = [v24 widgets];
        sub_224A3B79C(0, &qword_2813508A0, 0x277CFA1E8);
        v27 = sub_224DAF008();

        if (v27 >> 62)
        {
          v28 = sub_224DAF838();
        }

        else
        {
          v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v65 = v23;
        v66 = v25;
        if (v28)
        {
          v70 = MEMORY[0x277D84F90];
          sub_224DAF9E8();
          if (v28 < 0)
          {
            goto LABEL_40;
          }

          v29 = sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
          v30 = 0;
          v31 = v27 & 0xC000000000000001;
          do
          {
            if (v31)
            {
              v33 = MEMORY[0x22AA5DCC0](v30, v27);
            }

            else
            {
              v33 = *(v27 + 8 * v30 + 32);
            }

            v34 = v33;
            [v33 mutableCopy];
            sub_224DAF758();
            swift_unknownObjectRelease();
            sub_224A3B79C(0, v20, 0x277CFA288);
            swift_dynamicCast();
            v35 = [v69 refreshStrategy];
            objc_opt_self();
            swift_dynamicCastObjCClassUnconditional();
            if (sub_224DAF6A8())
            {
              v36 = objc_allocWithZone(MEMORY[0x277CFA448]);
              v67 = v34;
              v37 = v31;
              v38 = v29;
              v39 = v28;
              v40 = v27;
              v41 = v20;
              v42 = sub_224DAEDE8();
              v43 = [v36 initWithRateLimitIdentifier_];

              v20 = v41;
              v27 = v40;
              v28 = v39;
              v29 = v38;
              v31 = v37;
              v34 = v67;
              [v69 setRefreshStrategy_];
            }

            swift_unknownObjectRelease();

            ++v30;
            sub_224DAF9B8();
            v32 = *(v70 + 16);
            sub_224DAF9F8();
            sub_224DAFA08();
            sub_224DAF9C8();
          }

          while (v28 != v30);

          v44 = v70;
          v16 = v61;
        }

        else
        {

          v44 = MEMORY[0x277D84F90];
        }

        v45 = [v25 uniqueIdentifier];
        if (!v45)
        {
          sub_224DAEE18();
          v45 = sub_224DAEDE8();
        }

        v46 = [v25 location];
        v47 = [v25 canAppearInSecureEnvironment];
        v68 = [v25 page];
        v64 = [v25 family];

        if (v44 >> 62)
        {
          sub_224DAFB68();
        }

        else
        {
          sub_224DAFD98();
        }

        v48 = [v25 activeWidget];
        if (v48)
        {
          v49 = v48;
          v50 = v47;
          v51 = v46;
          v52 = v16;
          v53 = [v48 uniqueIdentifier];

          sub_224DAEE18();
          v55 = v54;

          v16 = v52;
          v46 = v51;
          v47 = v50;
        }

        else
        {
          v55 = 0;
        }

        v56 = sub_224DAEFF8();

        if (v55)
        {
          v21 = sub_224DAEDE8();
        }

        else
        {
          v21 = 0;
        }

        [objc_allocWithZone(MEMORY[0x277CFA1E0]) initWithUniqueIdentifier:v45 location:v46 canAppearInSecureEnvironment:v47 page:v68 family:v64 widgets:v56 activeWidget:v21];

        sub_224DAF9B8();
        v22 = *(v71 + 16);
        sub_224DAF9F8();
        sub_224DAFA08();
        sub_224DAF9C8();
        v19 = v65;
        if (v65 == v62)
        {
          goto LABEL_43;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      v17 = sub_224DAF838();
      if (!v17)
      {
        goto LABEL_43;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_43:

    v57 = sub_224DAEFF8();

    [v72 setContainerDescriptors_];

    swift_unknownObjectRelease();
    return v72;
  }

  return result;
}

id sub_224C92CC8()
{
  v1 = [v0 uniqueIdentifier];
  if (!v1)
  {
    sub_224DAEE18();
    v1 = sub_224DAEDE8();
  }

  v2 = [v0 location];
  v3 = [v0 canAppearInSecureEnvironment];
  v4 = [v0 page];
  v5 = [v0 family];
  v6 = [v0 activeWidget];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 uniqueIdentifier];

    sub_224DAEE18();
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  sub_224A3B79C(0, &qword_2813508A0, 0x277CFA1E8);
  v11 = sub_224DAEFF8();
  if (v10)
  {
    v12 = sub_224DAEDE8();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(MEMORY[0x277CFA1E0]) initWithUniqueIdentifier:v1 location:v2 canAppearInSecureEnvironment:v3 page:v4 family:v5 widgets:v11 activeWidget:v12];

  return v13;
}

void sub_224C92E88(id *a1@<X0>, void *a2@<X8>)
{
  v3 = [*a1 widget];
  v4 = [v3 extensionIdentity];
  v5 = &v4[*MEMORY[0x277CFA128]];
  swift_beginAccess();
  v7 = *v5;
  v6 = *(v5 + 1);

  if (!v6)
  {
    goto LABEL_7;
  }

  if (v7 == sub_224DA9898() && v6 == v8)
  {

    goto LABEL_9;
  }

  v10 = sub_224DAFD88();

  if (v10)
  {
LABEL_9:
    v11 = sub_224C92FBC(v3);

    goto LABEL_10;
  }

LABEL_7:

  v11 = 0;
LABEL_10:
  *a2 = v11;
}

id sub_224C92FBC(uint64_t a1)
{
  v3 = [v1 uniqueIdentifier];
  if (!v3)
  {
    sub_224DAEE18();
    v3 = sub_224DAEDE8();
  }

  v4 = [v1 metrics];
  v5 = [objc_allocWithZone(MEMORY[0x277CFA288]) initWithUniqueIdentifier:v3 widget:a1 metrics:v4];

  [v5 setSuggestion_];
  [v5 setSystemConfigured_];
  [v5 setSupportedColorSchemes_];
  v6 = [v1 supportedRenderSchemes];
  if (!v6)
  {
    sub_224A3B79C(0, &qword_281350960, 0x277CFA430);
    sub_224DAF008();
    v6 = sub_224DAEFF8();
  }

  [v5 setSupportedRenderSchemes_];

  [v5 setShowsWidgetLabel_];
  v7 = [v1 displayProperties];
  [v5 setDisplayProperties_];

  [v5 setSupportsLowLuminance_];
  return v5;
}

id sub_224C931C8(uint64_t a1)
{
  v2 = v1;
  v4 = [v1 kind];
  if (!v4)
  {
    sub_224DAEE18();
    v4 = sub_224DAEDE8();
  }

  v5 = [v2 family];
  v6 = [v2 intentReference];
  v7 = [v2 activityIdentifier];
  if (v7)
  {
    v8 = v7;
    sub_224DAEE18();
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = [v2 personaIdentifier];
  if (v11)
  {
    v12 = v11;
    sub_224DAEE18();
    v14 = v13;

    if (v10)
    {
      goto LABEL_8;
    }

LABEL_11:
    v15 = 0;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_12:
    v16 = 0;
    goto LABEL_13;
  }

  v14 = 0;
  if (!v10)
  {
    goto LABEL_11;
  }

LABEL_8:
  v15 = sub_224DAEDE8();

  if (!v14)
  {
    goto LABEL_12;
  }

LABEL_9:
  v16 = sub_224DAEDE8();

LABEL_13:
  v17 = [objc_allocWithZone(MEMORY[0x277CFA358]) initWithExtensionIdentity:a1 kind:v4 family:v5 intentReference:v6 activityIdentifier:v15 personaIdentifier:v16];

  return v17;
}

uint64_t sub_224C93398(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5C48, &qword_224DBD308);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v21 - v6;
  v8 = sub_224DA9908();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - v13;
  (*(v4 + 16))(v7, a1, v3);
  v15 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v16 = swift_allocObject();
  (*(v4 + 32))(v16 + v15, v7, v3);
  v17 = v22;
  sub_224C937C8(sub_224C941F8, v16, v14);

  (*(v9 + 16))(v12, v14, v8);
  v18 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  (*(v9 + 32))(v19 + v18, v12, v8);

  sub_224DAF138();
  return (*(v9 + 8))(v14, v8);
}

uint64_t sub_224C93638(uint64_t a1)
{
  v2 = sub_224DAD9C8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5C50, &unk_224DBD310);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v13 - v10;
  (*(v3 + 16))(v6, a1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5C48, &qword_224DBD308);
  sub_224DAF148();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_224C937C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_224DAB7B8();
  v48 = *(v6 - 8);
  v7 = *(v48 + 64);
  MEMORY[0x28223BE20](v6);
  v46 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_224DAB848();
  v45 = *(v47 - 8);
  v9 = *(v45 + 64);
  MEMORY[0x28223BE20](v47);
  v44 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224DA9908();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224DA98F8();
  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v16 = sub_224DAB258();
  __swift_project_value_buffer(v16, qword_281365120);
  (*(v12 + 16))(v15, a3, v11);
  v17 = sub_224DAB228();
  v18 = sub_224DAF2A8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v41 = a1;
    v20 = v19;
    v21 = swift_slowAlloc();
    v42 = a2;
    v40 = v21;
    aBlock[0] = v21;
    *v20 = 136446210;
    sub_224A4C200(&qword_281351A00, MEMORY[0x277CC95F0]);
    v22 = sub_224DAFD28();
    v23 = a3;
    v24 = v6;
    v26 = v25;
    (*(v12 + 8))(v15, v11);
    v27 = sub_224A33F74(v22, v26, aBlock);
    v6 = v24;
    a3 = v23;

    *(v20 + 4) = v27;
    _os_log_impl(&dword_224A2F000, v17, v18, "Adding observer %{public}s", v20, 0xCu);
    v28 = v40;
    __swift_destroy_boxed_opaque_existential_1(v40);
    a2 = v42;
    MEMORY[0x22AA5EED0](v28, -1, -1);
    v29 = v20;
    a1 = v41;
    MEMORY[0x22AA5EED0](v29, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v15, v11);
  }

  v30 = v43;
  v31 = *(v43 + 24);
  os_unfair_lock_lock(*(v31 + 16));
  sub_224C9725C(v30, a3, a1, a2, aBlock);
  os_unfair_lock_unlock(*(v31 + 16));
  v32 = aBlock[0];
  v33 = *(v30 + 48);
  v34 = swift_allocObject();
  v34[2] = v32;
  v34[3] = a1;
  v34[4] = a2;
  aBlock[4] = sub_224C984EC;
  aBlock[5] = v34;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = &block_descriptor_37;
  v35 = _Block_copy(aBlock);

  v36 = v44;
  sub_224DAB7E8();
  v49 = MEMORY[0x277D84F90];
  sub_224A4C200(&qword_281350ED0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A9B6A0(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
  v37 = v46;
  sub_224DAF788();
  MEMORY[0x22AA5D760](0, v36, v37, v35);
  _Block_release(v35);
  (*(v48 + 8))(v37, v6);
  (*(v45 + 8))(v36, v47);
}

void sub_224C93D48(uint64_t a1)
{
  v2 = v1;
  v4 = sub_224DA9908();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v9 = sub_224DAB258();
  __swift_project_value_buffer(v9, qword_281365120);
  (*(v5 + 16))(v8, a1, v4);
  v10 = sub_224DAB228();
  v11 = sub_224DAF2A8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v22 = a1;
    v13 = v12;
    v14 = swift_slowAlloc();
    v23 = v14;
    *v13 = 136446210;
    sub_224A4C200(&qword_281351A00, MEMORY[0x277CC95F0]);
    v15 = sub_224DAFD28();
    v17 = v16;
    (*(v5 + 8))(v8, v4);
    v18 = sub_224A33F74(v15, v17, &v23);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_224A2F000, v10, v11, "Removing observer %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x22AA5EED0](v14, -1, -1);
    v19 = v13;
    a1 = v22;
    MEMORY[0x22AA5EED0](v19, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  v20 = *(v2 + 24);
  os_unfair_lock_lock(*(v20 + 16));
  sub_224C979BC(v2, a1);
  os_unfair_lock_unlock(*(v20 + 16));
}

uint64_t sub_224C93FFC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_224C94078()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  os_unfair_lock_lock(*(v2 + 16));
  swift_beginAccess();
  v3 = *(v1 + 32);
  v4 = *(v2 + 16);

  os_unfair_lock_unlock(v4);
  return v3;
}

uint64_t sub_224C940DC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5C40, &qword_224DBD300);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v8 - v4;
  v6 = *v0;
  sub_224DAD9C8();
  (*(v2 + 104))(v5, *MEMORY[0x277D85778], v1);
  return sub_224DAF178();
}

uint64_t sub_224C941F8(uint64_t a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5C48, &qword_224DBD308) - 8) + 80);

  return sub_224C93638(a1);
}

void sub_224C94274()
{
  v1 = *(sub_224DA9908() - 8);
  v2 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));
  v3 = *(v0 + 16);
  sub_224C93D48(v2);
}

uint64_t sub_224C942D8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_224DAD9C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v9 = sub_224DAB258();
  __swift_project_value_buffer(v9, qword_281365120);
  (*(v5 + 16))(v8, a1, v4);
  v10 = sub_224DAB228();
  v11 = sub_224DAF2A8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v23 = v1;
    v13 = v12;
    v14 = swift_slowAlloc();
    v24 = v14;
    *v13 = 136446210;
    sub_224A4C200(&qword_27D6F4B70, MEMORY[0x277CF9D80]);
    v15 = sub_224DAFD28();
    v17 = v16;
    (*(v5 + 8))(v8, v4);
    v18 = sub_224A33F74(v15, v17, &v24);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_224A2F000, v10, v11, "Updating subscription to remote activity in cache: %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x22AA5EED0](v14, -1, -1);
    v19 = v13;
    v2 = v23;
    MEMORY[0x22AA5EED0](v19, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  v20 = *(v2 + 24);
  os_unfair_lock_lock(*(v20 + 16));
  sub_224C94598(v2, a1);
  os_unfair_lock_unlock(*(v20 + 16));
  return sub_224C94AD4(a1);
}

uint64_t sub_224C94598(uint64_t a1, uint64_t a2)
{
  v5 = sub_224DAD9C8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BD8, &qword_224DB9C20);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v38 - v12;
  v14 = sub_224DA9908();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    v44 = v17;
    v45 = v16;
    v46 = a1;
    MEMORY[0x28223BE20](v16);
    v48 = v20;
    *(&v38 - 2) = v20;

    sub_224DABBC8();
    if (v2)
    {
      if (qword_2813516C8 != -1)
      {
        swift_once();
      }

      v21 = sub_224DAB258();
      __swift_project_value_buffer(v21, qword_281365120);
      (*(v6 + 16))(v9, v48, v5);
      v22 = v2;
      v23 = sub_224DAB228();
      v24 = sub_224DAF288();

      v43 = v23;
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v39 = v25;
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v47 = v42;
        *v25 = 136446466;
        v40 = v24;
        sub_224DAD988();
        sub_224A4C200(&qword_281351A00, MEMORY[0x277CC95F0]);
        v26 = v45;
        v38 = sub_224DAFD28();
        v28 = v27;
        (*(v44 + 8))(v19, v26);
        (*(v6 + 8))(v9, v5);
        v29 = sub_224A33F74(v38, v28, &v47);

        v30 = v39;
        *(v39 + 1) = v29;
        *(v30 + 6) = 2114;
        v31 = v30;
        v32 = v2;
        v33 = _swift_stdlib_bridgeErrorToNSError();
        *(v31 + 14) = v33;
        v34 = v41;
        *v41 = v33;
        v35 = v43;
        _os_log_impl(&dword_224A2F000, v43, v40, "Failed to update activity subscription in store: %{public}s; %{public}@", v31, 0x16u);
        sub_224A3311C(v34, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v34, -1, -1);
        v36 = v42;
        __swift_destroy_boxed_opaque_existential_1(v42);
        MEMORY[0x22AA5EED0](v36, -1, -1);
        MEMORY[0x22AA5EED0](v31, -1, -1);
      }

      else
      {

        (*(v6 + 8))(v9, v5);
      }
    }

    else
    {
    }

    a2 = v48;
  }

  sub_224DAD988();
  (*(v6 + 16))(v13, a2, v5);
  (*(v6 + 56))(v13, 0, 1, v5);
  swift_beginAccess();
  sub_224B09374(v13, v19);
  return swift_endAccess();
}

uint64_t sub_224C94AD4(uint64_t a1)
{
  v3 = sub_224DAB7B8();
  v59 = *(v3 - 8);
  v4 = *(v59 + 64);
  MEMORY[0x28223BE20](v3);
  v57 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_224DAB848();
  v56 = *(v58 - 8);
  v6 = *(v56 + 64);
  MEMORY[0x28223BE20](v58);
  v55 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DA9908();
  v49 = *(v8 - 8);
  v9 = *(v49 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_224DAD9C8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v52 = v16;
  v53 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v45 - v17;
  v19 = *(v1 + 24);
  os_unfair_lock_lock(*(v19 + 16));
  swift_beginAccess();
  v54 = v1;
  v20 = *(v1 + 40);
  v21 = *(v19 + 16);
  v51 = v20;

  os_unfair_lock_unlock(v21);
  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v22 = sub_224DAB258();
  __swift_project_value_buffer(v22, qword_281365120);
  v50 = *(v13 + 16);
  v50(v18, a1, v12);
  v23 = v12;
  v24 = sub_224DAB228();
  v25 = sub_224DAF2A8();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v47 = a1;
    v27 = v26;
    v46 = swift_slowAlloc();
    aBlock[0] = v46;
    *v27 = 136446210;
    v45 = v23;
    sub_224DAD988();
    sub_224A4C200(&qword_281351A00, MEMORY[0x277CC95F0]);
    v28 = sub_224DAFD28();
    v48 = v3;
    v30 = v29;
    (*(v49 + 8))(v11, v8);
    v31 = v18;
    v32 = v45;
    (*(v13 + 8))(v31, v45);
    v33 = sub_224A33F74(v28, v30, aBlock);
    v3 = v48;

    *(v27 + 4) = v33;
    _os_log_impl(&dword_224A2F000, v24, v25, "Publishing change to subscription %{public}s", v27, 0xCu);
    v34 = v46;
    __swift_destroy_boxed_opaque_existential_1(v46);
    MEMORY[0x22AA5EED0](v34, -1, -1);
    v35 = v27;
    a1 = v47;
    MEMORY[0x22AA5EED0](v35, -1, -1);

    v36 = v32;
  }

  else
  {

    (*(v13 + 8))(v18, v23);
    v36 = v23;
  }

  v37 = v53;
  v38 = *(v54 + 48);
  v50(v53, a1, v36);
  v39 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = v51;
  (*(v13 + 32))(v40 + v39, v37, v36);
  aBlock[4] = sub_224C9866C;
  aBlock[5] = v40;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = &block_descriptor_28_2;
  v41 = _Block_copy(aBlock);
  v42 = v55;
  sub_224DAB7E8();
  v60 = MEMORY[0x277D84F90];
  sub_224A4C200(&qword_281350ED0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A9B6A0(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
  v43 = v57;
  sub_224DAF788();
  MEMORY[0x22AA5D760](0, v42, v43, v41);
  _Block_release(v41);
  (*(v59 + 8))(v43, v3);
  (*(v56 + 8))(v42, v58);
}

size_t sub_224C9516C()
{
  v1 = sub_224DAD9C8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_224DA9878();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);

  v12 = sub_224AE8AF4(v11);

  sub_224DA9808();
  v26 = MEMORY[0x277D84F90];
  v13 = *(v0 + 24);
  os_unfair_lock_lock(*(v13 + 16));
  v25 = v10;
  sub_224C953D0(v0, v12, v10, &v26);

  os_unfair_lock_unlock(*(v13 + 16));
  v14 = v26;
  v15 = *(v26 + 16);
  if (v15)
  {
    v23 = v7;
    v24 = v6;
    v18 = *(v2 + 16);
    v17 = v2 + 16;
    v16 = v18;
    v19 = v26 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
    v20 = *(v17 + 56);

    do
    {
      v16(v5, v19, v1);
      sub_224C94AD4(v5);
      (*(v17 - 8))(v5, v1);
      v19 += v20;
      --v15;
    }

    while (v15);

    v7 = v23;
    v6 = v24;
  }

  (*(v7 + 8))(v25, v6);
  return v14;
}

uint64_t sub_224C953D0(uint64_t a1, uint64_t a2, uint64_t a3, size_t *a4)
{
  v159 = a4;
  v156 = a3;
  v188 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BD8, &qword_224DB9C20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v158 = &v149 - v7;
  v173 = sub_224DA9878();
  v8 = *(v173 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v173);
  v155 = &v149 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v160 = &v149 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v172 = &v149 - v15;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v16 = *(v183 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v183);
  v182 = &v149 - v18;
  v19 = sub_224DAD9C8();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v169 = &v149 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v157 = &v149 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v196 = &v149 - v27;
  MEMORY[0x28223BE20](v26);
  v177 = &v149 - v28;
  v29 = sub_224DA9908();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v32 = MEMORY[0x28223BE20](v29);
  v150 = &v149 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v149 - v35;
  v37 = MEMORY[0x28223BE20](v34);
  v39 = &v149 - v38;
  MEMORY[0x28223BE20](v37);
  v175 = &v149 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C60, &unk_224DBA3D0);
  v42 = *(*(v41 - 8) + 64);
  v43 = MEMORY[0x28223BE20](v41 - 8);
  v185 = &v149 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v184 = &v149 - v45;
  swift_beginAccess();
  v170 = a1;
  v46 = *(a1 + 32);
  v47 = v46 + 64;
  v48 = 1 << *(v46 + 32);
  if (v48 < 64)
  {
    v49 = ~(-1 << v48);
  }

  else
  {
    v49 = -1;
  }

  v199 = v49 & *(v46 + 64);
  v165 = (v48 + 63) >> 6;
  v190 = (v30 + 16);
  v194 = (v20 + 16);
  v195 = (v30 + 32);
  v200 = (v20 + 32);
  v181 = (v16 + 8);
  v50 = v36;
  v51 = v188;
  v201 = v188 + 56;
  v171 = (v8 + 48);
  v154 = (v8 + 8);
  v186 = v20;
  v193 = (v20 + 8);
  v176 = v30;
  v152 = "lock_subscriptionObservers";
  v179 = v46;

  v53 = 0;
  *&v54 = 136446978;
  v151 = v54;
  *&v54 = 136446466;
  v149 = v54;
  v198 = v29;
  v192 = v39;
  v180 = v47;
  v178 = v19;
  v168 = v50;
  v189 = (v30 + 8);
  while (1)
  {
    v55 = v199;
    if (!v199)
    {
      break;
    }

    v56 = v19;
    v197 = v53;
    v57 = v53;
LABEL_17:
    v199 = (v55 - 1) & v55;
    v61 = __clz(__rbit64(v55)) | (v57 << 6);
    v62 = v179;
    v63 = v176;
    v64 = v175;
    (*(v176 + 16))(v175, *(v179 + 48) + *(v176 + 72) * v61, v29);
    v65 = v186;
    v66 = v29;
    v67 = v177;
    (*(v186 + 16))(v177, *(v62 + 56) + *(v186 + 72) * v61, v56);
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C68, &unk_224DBA3F0);
    v69 = *(v68 + 48);
    v70 = *(v63 + 32);
    v71 = v185;
    v70(v185, v64, v66);
    v72 = v67;
    v73 = v71;
    v74 = v56;
    (*(v65 + 32))(&v71[v69], v72, v56);
    (*(*(v68 - 8) + 56))(v71, 0, 1, v68);
    v60 = v196;
    v39 = v192;
    v51 = v188;
LABEL_18:
    v75 = v73;
    v76 = v184;
    sub_224A44E4C(v75, v184, &qword_27D6F4C60, &unk_224DBA3D0);
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C68, &unk_224DBA3F0);
    if ((*(*(v77 - 8) + 48))(v76, 1, v77) == 1)
    {
    }

    v78 = *(v77 + 48);
    (*v195)(v39, v76, v198);
    v191 = *v200;
    v191(v60, v76 + v78, v74);
    v79 = v182;
    sub_224DAD958();
    v80 = v183;
    sub_224DAA1F8();
    (*v181)(v79, v80);
    v81 = sub_224DAA048();

    if (v81)
    {
      (*v193)(v60, v74);
      v19 = v74;
      v29 = v198;
      result = (*v189)(v39, v198);
      goto LABEL_6;
    }

    v82 = sub_224DAD938();
    v84 = v83;
    if (*(v51 + 16))
    {
      v85 = v82;
      v86 = *(v51 + 40);
      sub_224DAFE68();
      sub_224DAEE78();
      v87 = sub_224DAFEA8();
      v88 = -1 << *(v51 + 32);
      v89 = v87 & ~v88;
      v29 = v198;
      if ((*(v201 + ((v89 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v89))
      {
        v90 = ~v88;
        while (1)
        {
          v91 = (*(v51 + 48) + 16 * v89);
          v92 = *v91 == v85 && v91[1] == v84;
          if (v92 || (sub_224DAFD88() & 1) != 0)
          {
            break;
          }

          v89 = (v89 + 1) & v90;
          if (((*(v201 + ((v89 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v89) & 1) == 0)
          {
            goto LABEL_29;
          }
        }

        LODWORD(v187) = 1;
      }

      else
      {
LABEL_29:
        LODWORD(v187) = 0;
      }
    }

    else
    {
      LODWORD(v187) = 0;
      v29 = v198;
    }

    v94 = v172;
    sub_224DAD948();
    v95 = *v171;
    v96 = v173;
    v97 = (*v171)(v94, 1, v173);
    sub_224A3311C(v94, &qword_27D6F32B0, &qword_224DB3EA0);
    if (v97 == 1)
    {
      v19 = v178;
      v98 = v168;
      if (v187)
      {
        goto LABEL_39;
      }

      v99 = 0;
    }

    else
    {
      v100 = v160;
      sub_224DAD948();
      v101 = v100;
      result = v95(v100, 1, v96);
      if (result == 1)
      {
        goto LABEL_60;
      }

      v102 = v155;
      sub_224DA9768();
      v103 = *v154;
      (*v154)(v101, v96);
      v104 = sub_224DA9798();
      v103(v102, v96);
      v99 = v187 | v104;
      if (v187)
      {
        v19 = v178;
        v98 = v168;
        if ((v104 & 1) == 0)
        {
LABEL_39:
          (*v193)(v60, v19);
          result = (*v189)(v39, v29);
          goto LABEL_6;
        }
      }

      else
      {
        v19 = v178;
        v98 = v168;
      }
    }

    LODWORD(v164) = v99;
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v105 = sub_224DAB258();
    v106 = __swift_project_value_buffer(v105, qword_281365120);
    v107 = *v190;
    (*v190)(v98, v39, v29);
    v108 = *v194;
    v109 = v157;
    (*v194)(v157, v196, v19);
    v110 = sub_224DAB228();
    LODWORD(v163) = sub_224DAF2A8();
    v111 = os_log_type_enabled(v110, v163);
    v162 = v106;
    v161 = v107;
    if (v111)
    {
      v112 = swift_slowAlloc();
      v153 = swift_slowAlloc();
      v202 = v153;
      *v112 = v151;
      sub_224A4C200(&qword_281351A00, MEMORY[0x277CC95F0]);
      v113 = sub_224DAFD28();
      v114 = v98;
      v116 = v115;
      v174 = *v189;
      v174(v114, v29);
      v117 = sub_224A33F74(v113, v116, &v202);

      *(v112 + 4) = v117;
      *(v112 + 12) = 2082;
      v118 = sub_224DAD938();
      v120 = v119;
      v166 = *v193;
      v166(v109, v19);
      v121 = sub_224A33F74(v118, v120, &v202);

      *(v112 + 14) = v121;
      *(v112 + 22) = 1026;
      *(v112 + 24) = v187 ^ 1;
      *(v112 + 28) = 1026;
      *(v112 + 30) = v164 & 1;
      _os_log_impl(&dword_224A2F000, v110, v163, "Deleting obsolete activity subscription %{public}s for activity %{public}s; missing: %{BOOL,public}d, expired: %{BOOL,public}d", v112, 0x22u);
      v122 = v153;
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v122, -1, -1);
      MEMORY[0x22AA5EED0](v112, -1, -1);
    }

    else
    {

      v166 = *v193;
      v166(v109, v19);
      v174 = *v189;
      v123 = v174(v98, v29);
    }

    if (*(v170 + 16))
    {
      MEMORY[0x28223BE20](v123);
      v124 = v192;
      *(&v149 - 2) = v192;

      v125 = v167;
      sub_224DABBC8();
      if (v125)
      {
        v126 = v150;
        v161(v150, v124, v29);
        v127 = v125;
        v128 = sub_224DAB228();
        v129 = sub_224DAF288();

        if (os_log_type_enabled(v128, v129))
        {
          v130 = swift_slowAlloc();
          v164 = swift_slowAlloc();
          v187 = swift_slowAlloc();
          v202 = v187;
          *v130 = v149;
          sub_224A4C200(&qword_281351A00, MEMORY[0x277CC95F0]);
          v163 = v128;
          v131 = sub_224DAFD28();
          v167 = v125;
          v132 = v131;
          v134 = v133;
          v174(v126, v29);
          v135 = sub_224A33F74(v132, v134, &v202);

          *(v130 + 4) = v135;
          *(v130 + 12) = 2114;
          v136 = v167;
          v137 = _swift_stdlib_bridgeErrorToNSError();
          *(v130 + 14) = v137;
          v138 = v164;
          *v164 = v137;
          v139 = v163;
          _os_log_impl(&dword_224A2F000, v163, v129, "Failed to delete activity subscription from store: %{public}s; %{public}@", v130, 0x16u);
          sub_224A3311C(v138, &unk_27D6F69F0, &unk_224DB3900);
          MEMORY[0x22AA5EED0](v138, -1, -1);
          v140 = v187;
          __swift_destroy_boxed_opaque_existential_1(v187);
          MEMORY[0x22AA5EED0](v140, -1, -1);
          MEMORY[0x22AA5EED0](v130, -1, -1);
        }

        else
        {

          v174(v126, v29);
        }

        v167 = 0;
        v19 = v178;
      }

      else
      {
        v167 = 0;
      }
    }

    swift_beginAccess();
    v141 = v158;
    v39 = v192;
    sub_224B0DE48(v192, v158);
    sub_224A3311C(v141, &qword_27D6F3BD8, &qword_224DB9C20);
    swift_endAccess();
    v108(v169, v196, v19);
    v142 = v159;
    v143 = *v159;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v142 = v143;
    v51 = v188;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v143 = sub_224AD99CC(0, v143[2] + 1, 1, v143);
      *v142 = v143;
    }

    v146 = v143[2];
    v145 = v143[3];
    if (v146 >= v145 >> 1)
    {
      *v142 = sub_224AD99CC(v145 > 1, v146 + 1, 1, v143);
    }

    v147 = v178;
    v166(v196, v178);
    v148 = *v142;
    v19 = v147;
    *(v148 + 16) = v146 + 1;
    v191((v148 + ((*(v186 + 80) + 32) & ~*(v186 + 80)) + *(v186 + 72) * v146), v169, v147);
    result = v174(v39, v29);
LABEL_6:
    v47 = v180;
    v53 = v197;
  }

  if (v165 <= v53 + 1)
  {
    v58 = v53 + 1;
  }

  else
  {
    v58 = v165;
  }

  v59 = v58 - 1;
  v60 = v196;
  while (1)
  {
    v57 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      break;
    }

    if (v57 >= v165)
    {
      v74 = v19;
      v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C68, &unk_224DBA3F0);
      v73 = v185;
      (*(*(v93 - 8) + 56))(v185, 1, 1, v93);
      v199 = 0;
      v197 = v59;
      goto LABEL_18;
    }

    v55 = *(v47 + 8 * v57);
    ++v53;
    if (v55)
    {
      v56 = v19;
      v197 = v57;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
  return result;
}

uint64_t sub_224C96790(uint64_t a1)
{
  v2 = sub_224DAD9C8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v39 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BD8, &qword_224DB9C20);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v40 = &v37 - v11;
  v12 = sub_224DA9908();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v17 = sub_224DAB258();
  __swift_project_value_buffer(v17, qword_281365120);
  (*(v13 + 16))(v16, a1, v12);
  v18 = sub_224DAB228();
  v19 = sub_224DAF2A8();
  v20 = os_log_type_enabled(v18, v19);
  v41 = v3;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v37 = a1;
    v22 = v21;
    v23 = swift_slowAlloc();
    v38 = v2;
    v24 = v23;
    v43 = v23;
    *v22 = 136446210;
    sub_224A4C200(&qword_281351A00, MEMORY[0x277CC95F0]);
    v25 = sub_224DAFD28();
    v27 = v26;
    (*(v13 + 8))(v16, v12);
    v28 = sub_224A33F74(v25, v27, &v43);

    *(v22 + 4) = v28;
    _os_log_impl(&dword_224A2F000, v18, v19, "Deleting subscription to remote activity from cache: %{public}s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    v29 = v24;
    v2 = v38;
    MEMORY[0x22AA5EED0](v29, -1, -1);
    v30 = v22;
    a1 = v37;
    MEMORY[0x22AA5EED0](v30, -1, -1);
  }

  else
  {

    (*(v13 + 8))(v16, v12);
  }

  v31 = v42;
  v32 = *(v42 + 24);
  os_unfair_lock_lock(*(v32 + 16));
  v33 = v40;
  sub_224C96C00(v31, a1, v40);
  os_unfair_lock_unlock(*(v32 + 16));
  sub_224C98520(v33, v10);
  v34 = v41;
  if ((*(v41 + 48))(v10, 1, v2) == 1)
  {
    sub_224A3311C(v33, &qword_27D6F3BD8, &qword_224DB9C20);
  }

  else
  {
    v35 = v39;
    (*(v34 + 32))(v39, v10, v2);
    sub_224C94AD4(v35);
    (*(v34 + 8))(v35, v2);
    v10 = v33;
  }

  return sub_224A3311C(v10, &qword_27D6F3BD8, &qword_224DB9C20);
}

uint64_t sub_224C96C00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a2;
  v54 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BD8, &qword_224DB9C20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v49 - v7;
  v9 = sub_224DA9908();
  v10 = *(v9 - 8);
  v55 = v9;
  v56 = v10;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v49 - v16;
  if (!*(a1 + 16))
  {
    goto LABEL_8;
  }

  MEMORY[0x28223BE20](v15);
  *(&v49 - 2) = v58;

  sub_224DABBC8();
  if (!v3)
  {

    goto LABEL_8;
  }

  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v18 = sub_224DAB258();
  __swift_project_value_buffer(v18, qword_281365120);
  v19 = v55;
  (*(v56 + 16))(v14, v58, v55);
  v20 = v3;
  v21 = sub_224DAB228();
  v22 = sub_224DAF288();

  LODWORD(v52) = v22;
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v53 = v17;
    v24 = v23;
    v51 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v57 = v25;
    *v24 = 136446466;
    sub_224A4C200(&qword_281351A00, MEMORY[0x277CC95F0]);
    v50 = v21;
    v26 = sub_224DAFD28();
    v27 = v19;
    v29 = v28;
    (*(v56 + 8))(v14, v27);
    v30 = sub_224A33F74(v26, v29, &v57);

    *(v24 + 4) = v30;
    *(v24 + 12) = 2114;
    v31 = v3;
    v32 = _swift_stdlib_bridgeErrorToNSError();
    *(v24 + 14) = v32;
    v33 = v50;
    v34 = v51;
    *v51 = v32;
    _os_log_impl(&dword_224A2F000, v33, v52, "Failed to delete activity subscription from store: %{public}s; %{public}@", v24, 0x16u);
    sub_224A3311C(v34, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v34, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x22AA5EED0](v25, -1, -1);
    v35 = v24;
    v17 = v53;
    MEMORY[0x22AA5EED0](v35, -1, -1);

LABEL_8:
    v36 = v56;
    goto LABEL_9;
  }

  v36 = v56;
  (*(v56 + 8))(v14, v19);
LABEL_9:
  swift_beginAccess();
  v37 = *(a1 + 32);
  if (*(v37 + 16))
  {
    v53 = v17;

    v38 = sub_224A438E8(v58);
    if (v39)
    {
      v40 = v38;
      v41 = *(v37 + 56);
      v42 = sub_224DAD9C8();
      v43 = *(v42 - 8);
      v52 = a1;
      v44 = v8;
      v45 = v43;
      v46 = v41 + *(v43 + 72) * v40;
      v36 = v56;
      v47 = v54;
      (*(v43 + 16))(v54, v46, v42);

      (*(v45 + 56))(v47, 0, 1, v42);
      v8 = v44;
    }

    else
    {

      v42 = sub_224DAD9C8();
      (*(*(v42 - 8) + 56))(v54, 1, 1, v42);
    }

    v17 = v53;
  }

  else
  {
    v42 = sub_224DAD9C8();
    (*(*(v42 - 8) + 56))(v54, 1, 1, v42);
  }

  (*(v36 + 16))(v17, v58, v55);
  sub_224DAD9C8();
  (*(*(v42 - 8) + 56))(v8, 1, 1, v42);
  swift_beginAccess();
  sub_224B09374(v8, v17);
  return swift_endAccess();
}

uint64_t sub_224C9725C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v6 = v5;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C68, &unk_224DBA3F0);
  v12 = *(*(v72 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v72);
  v71 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v70 = &v59 - v16;
  MEMORY[0x28223BE20](v15);
  v69 = &v59 - v17;
  v80 = sub_224DAD9C8();
  v18 = *(v80 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v80);
  v68 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_allocObject();
  *(v21 + 16) = a3;
  *(v21 + 24) = a4;
  swift_beginAccess();

  v22 = *(a1 + 40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v81 = *(a1 + 40);
  *(a1 + 40) = 0x8000000000000000;
  sub_224B22B28(sub_224C984F8, v21, a2, isUniquelyReferenced_nonNull_native);
  *(a1 + 40) = v81;
  swift_endAccess();
  if (qword_2813516C8 != -1)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v24 = sub_224DAB258();
    __swift_project_value_buffer(v24, qword_281365120);

    v25 = sub_224DAB228();
    v26 = sub_224DAF2A8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 134349056;
      *(v27 + 4) = *(*(a1 + 40) + 16);

      _os_log_impl(&dword_224A2F000, v25, v26, "Observer count: %{public}ld", v27, 0xCu);
      MEMORY[0x22AA5EED0](v27, -1, -1);
    }

    else
    {
    }

    result = swift_beginAccess();
    a1 = *(a1 + 32);
    v29 = *(a1 + 16);
    v30 = MEMORY[0x277D84F90];
    if (!v29)
    {
      break;
    }

    v60 = a5;
    v61 = v6;
    v81 = MEMORY[0x277D84F90];

    sub_224ADA714(0, v29, 0);
    v79 = v81;
    a5 = (a1 + 64);
    v31 = -1 << *(a1 + 32);
    v32 = sub_224DAF798();
    v33 = 0;
    v66 = v18 + 32;
    v67 = v18 + 16;
    v62 = a1 + 72;
    v6 = a1;
    v63 = v29;
    v64 = (a1 + 64);
    v65 = a1;
    while ((v32 & 0x8000000000000000) == 0 && v32 < 1 << *(v6 + 32))
    {
      if ((a5[v32 >> 6] & (1 << v32)) == 0)
      {
        goto LABEL_26;
      }

      v75 = 1 << v32;
      v76 = v32 >> 6;
      v35 = *(v6 + 36);
      v73 = v33;
      v74 = v35;
      v36 = v72;
      v37 = *(v72 + 48);
      v38 = *(v6 + 48);
      v39 = v32;
      v40 = sub_224DA9908();
      v41 = *(v40 - 8);
      v42 = v69;
      (*(v41 + 16))(v69, v38 + *(v41 + 72) * v39, v40);
      v43 = *(v6 + 56);
      v77 = *(v18 + 72);
      v78 = v39;
      (*(v18 + 16))(&v42[v37], v43 + v77 * v39, v80);
      v44 = v70;
      (*(v41 + 32))(v70, v42, v40);
      a1 = *(v18 + 32);
      (a1)(&v44[*(v36 + 48)], &v42[v37], v80);
      v45 = v44;
      v46 = v80;
      v47 = v71;
      sub_224A44E4C(v45, v71, &qword_27D6F4C68, &unk_224DBA3F0);
      v48 = v47 + *(v36 + 48);
      a5 = v68;
      (a1)(v68, v48, v46);
      (*(v41 + 8))(v47, v40);
      v49 = v79;
      v81 = v79;
      v51 = *(v79 + 16);
      v50 = *(v79 + 24);
      if (v51 >= v50 >> 1)
      {
        sub_224ADA714(v50 > 1, v51 + 1, 1);
        v49 = v81;
      }

      *(v49 + 16) = v51 + 1;
      v52 = (*(v18 + 80) + 32) & ~*(v18 + 80);
      v79 = v49;
      (a1)(v49 + v52 + v51 * v77, a5, v46);
      v6 = v65;
      v34 = 1 << *(v65 + 32);
      if (v78 >= v34)
      {
        goto LABEL_27;
      }

      a5 = v64;
      v53 = v64[v76];
      if ((v53 & v75) == 0)
      {
        goto LABEL_28;
      }

      if (v74 != *(v65 + 36))
      {
        goto LABEL_29;
      }

      v54 = v53 & (-2 << (v78 & 0x3F));
      if (v54)
      {
        v34 = __clz(__rbit64(v54)) | v78 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        a1 = v76 << 6;
        v55 = v76 + 1;
        v56 = (v62 + 8 * v76);
        while (v55 < (v34 + 63) >> 6)
        {
          v58 = *v56++;
          v57 = v58;
          a1 += 64;
          ++v55;
          if (v58)
          {
            sub_224A3E204(v78, v74, 0);
            v34 = __clz(__rbit64(v57)) + a1;
            goto LABEL_8;
          }
        }

        sub_224A3E204(v78, v74, 0);
      }

LABEL_8:
      v33 = v73 + 1;
      v32 = v34;
      if (v73 + 1 == v63)
      {

        a5 = v60;
        v30 = v79;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    swift_once();
  }

LABEL_24:
  *a5 = v30;
  return result;
}

uint64_t sub_224C9790C(uint64_t result, uint64_t (*a2)(unint64_t))
{
  v2 = *(result + 16);
  if (v2)
  {
    v4 = result;
    v5 = *(sub_224DAD9C8() - 8);
    v6 = v4 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v7 = *(v5 + 72);
    do
    {
      result = a2(v6);
      v6 += v7;
      --v2;
    }

    while (v2);
  }

  return result;
}

void sub_224C979BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_224DA9908();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a2);
  swift_beginAccess();
  sub_224B095A0(0, 0, v7);
  swift_endAccess();
  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v9 = sub_224DAB258();
  __swift_project_value_buffer(v9, qword_281365120);

  v10 = sub_224DAB228();
  v11 = sub_224DAF2A8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134349056;
    *(v12 + 4) = *(*(a1 + 40) + 16);

    _os_log_impl(&dword_224A2F000, v10, v11, "Observer count: %{public}ld", v12, 0xCu);
    MEMORY[0x22AA5EED0](v12, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_224C97BA8(uint64_t a1, uint64_t a2)
{
  v57 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5C58, &qword_224DBD320);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v49 = &v48 - v6;
  v7 = sub_224DA9908();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v52 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5C60, qword_224DBD328);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v60 = &v48 - v15;
  MEMORY[0x28223BE20](v14);
  v58 = &v48 - v17;
  v18 = *(a1 + 64);
  v48 = a1 + 64;
  v19 = 1 << *(a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v18;
  v22 = (v19 + 63) >> 6;
  v51 = v8 + 16;
  v59 = (v8 + 32);
  v62 = (v4 + 48);
  v63 = (v4 + 56);
  v53 = v8;
  v54 = a1;
  v56 = (v8 + 8);
  v23 = v16;

  v25 = 0;
  v61 = v23;
  v50 = v3;
  if (v21)
  {
    while (1)
    {
      v26 = v25;
LABEL_12:
      v29 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v30 = v29 | (v26 << 6);
      v32 = v53;
      v31 = v54;
      v33 = v52;
      (*(v53 + 16))(v52, *(v54 + 48) + *(v53 + 72) * v30, v7);
      v34 = *(v3 + 48);
      v35 = *(v32 + 32);
      v64 = *(*(v31 + 56) + 16 * v30);
      v23 = v61;
      v35(v61, v33, v7);
      *(v23 + v34) = v64;
      v36 = *v63;
      (*v63)(v23, 0, 1, v3);

      v28 = v26;
LABEL_13:
      v37 = *v62;
      v38 = 1;
      if ((*v62)(v23, 1, v3) != 1)
      {
        *&v64 = v28;
        v39 = *(v3 + 48);
        v55 = v36;
        v40 = *v59;
        (*v59)(v49, v23, v7);
        v41 = swift_allocObject();
        *(v41 + 16) = *(v61 + v39);
        v42 = &v60[*(v3 + 48)];
        v40();
        v36 = v55;
        v38 = 0;
        *v42 = sub_224C986D0;
        v42[1] = v41;
        v28 = v64;
        v23 = v61;
        v3 = v50;
      }

      v43 = v60;
      v36(v60, v38, 1, v3);
      v44 = v43;
      v45 = v58;
      sub_224A44E4C(v44, v58, &qword_27D6F5C60, qword_224DBD328);
      if (v37(v45, 1, v3) == 1)
      {
      }

      v46 = v45 + *(v3 + 48);
      v47 = *(v46 + 8);
      (*v46)(v57);

      result = (*v56)(v45, v7);
      v25 = v28;
      if (!v21)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v22 <= v25 + 1)
    {
      v27 = v25 + 1;
    }

    else
    {
      v27 = v22;
    }

    v28 = v27 - 1;
    while (1)
    {
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v26 >= v22)
      {
        v36 = *v63;
        (*v63)(v23, 1, 1, v3);
        v21 = 0;
        goto LABEL_13;
      }

      v21 = *(v48 + 8 * v26);
      ++v25;
      if (v21)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_224C980A4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = *(a1 + 16);

    sub_224DABA58();
    v4 = sub_224DABA48();
    if (v1)
    {

      if (qword_2813516C8 != -1)
      {
        swift_once();
      }

      v5 = sub_224DAB258();
      __swift_project_value_buffer(v5, qword_281365120);
      v6 = v1;
      v7 = sub_224DAB228();
      v8 = sub_224DAF288();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        *v9 = 138543362;
        v11 = v1;
        v12 = _swift_stdlib_bridgeErrorToNSError();
        *(v9 + 4) = v12;
        *v10 = v12;
        _os_log_impl(&dword_224A2F000, v7, v8, "Failed to load existing activity subscriptions from store: %{public}@", v9, 0xCu);
        sub_224A3311C(v10, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v10, -1, -1);
        MEMORY[0x22AA5EED0](v9, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      v17 = v4;

      swift_beginAccess();
      v18 = *(a1 + 32);
      *(a1 + 32) = v17;

      if (qword_2813516C8 != -1)
      {
        swift_once();
      }

      v19 = sub_224DAB258();
      __swift_project_value_buffer(v19, qword_281365120);

      v20 = sub_224DAB228();
      v21 = sub_224DAF2A8();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v29 = v23;
        *v22 = 136446210;
        v24 = *(a1 + 32);
        sub_224DA9908();
        sub_224DAD9C8();
        sub_224A4C200(&qword_281351A18, MEMORY[0x277CC95F0]);

        v25 = sub_224DAECF8();
        v27 = v26;

        v28 = sub_224A33F74(v25, v27, &v29);

        *(v22 + 4) = v28;
        _os_log_impl(&dword_224A2F000, v20, v21, "Fetched activity subscriptions from backing store: %{public}s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v23);
        MEMORY[0x22AA5EED0](v23, -1, -1);
        MEMORY[0x22AA5EED0](v22, -1, -1);
      }
    }
  }

  else
  {
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v13 = sub_224DAB258();
    __swift_project_value_buffer(v13, qword_281365120);
    v14 = sub_224DAB228();
    v15 = sub_224DAF288();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_224A2F000, v14, v15, "Failed to load existing activity subscriptions from store as store is missing", v16, 2u);
      MEMORY[0x22AA5EED0](v16, -1, -1);
    }
  }
}

uint64_t sub_224C984F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_224C98520(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BD8, &qword_224DB9C20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_15Tm(uint64_t (*a1)(void), void (*a2)(void))
{
  v4 = a1(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 24) & ~v6;
  v8 = *(v5 + 64);
  a2(*(v2 + 16));
  (*(v5 + 8))(v2 + v7, v4);

  return MEMORY[0x2821FE8E8](v2, v7 + v8, v6 | 7);
}

uint64_t sub_224C9866C()
{
  v1 = *(sub_224DAD9C8() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_224C97BA8(v2, v3);
}

uint64_t sub_224C986D0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_224C98750(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = *(v2 + 16);
  sub_224DABB28();
  a2(v4);
}

uint64_t sub_224C987AC(uint64_t a1)
{
  v2 = v1;
  v20 = a1;
  v3 = sub_224DAF3C8();
  v18 = *(v3 - 8);
  v19 = v3;
  v4 = *(v18 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DAF318();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v9 = sub_224DAB848();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  type metadata accessor for UnfairLock();
  v11 = swift_allocObject();
  v12 = swift_slowAlloc();
  *v12 = 0;
  *(v11 + 16) = v12;
  v13 = MEMORY[0x277D84F98];
  v1[3] = v11;
  v1[4] = v13;
  v1[5] = v13;
  v17 = sub_224AC319C();
  sub_224DAB7E8();
  v21 = MEMORY[0x277D84F90];
  sub_224A4C200(&qword_281350A88, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3470, qword_224DB38B0);
  sub_224A9B6A0(&qword_281350B90, &qword_27D6F3470, qword_224DB38B0);
  sub_224DAF788();
  (*(v18 + 104))(v6, *MEMORY[0x277D85260], v19);
  v1[6] = sub_224DAF418();
  v1[2] = v20;
  v14 = v1[3];
  v15 = *(v14 + 16);

  os_unfair_lock_lock(v15);
  sub_224C980A4(v2);
  os_unfair_lock_unlock(*(v14 + 16));
  return v2;
}

uint64_t sub_224C98B58()
{
  result = sub_224DAA5C8();
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

uint64_t sub_224C98C00()
{
  v1 = v0;
  v2 = *v0;
  v8 = *(v1 + 16);
  v3 = type metadata accessor for UnfairLock();

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v4 = *(v2 + 80);
  v5 = *(v2 + 88);
  type metadata accessor for ReadOnlyHost();
  sub_224C9A3FC();
  sub_224DAED48();
  v6 = sub_224DAF728();
  sub_224A49C20(sub_224C9A3E0, v1, v3, v6, &off_28382D228);

  return v9;
}

void sub_224C98D0C(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  v7 = sub_224DABC68();
  v70 = *(v7 - 8);
  v8 = *(v70 + 64);
  MEMORY[0x28223BE20](v7);
  v83 = v61 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v69 = *(v10 - 8);
  v11 = *(v69 + 64);
  MEMORY[0x28223BE20](v10);
  v82 = v61 - v12;
  v84 = v7;
  v85 = v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v76 = sub_224DAF728();
  v15 = *(v76 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v76);
  v68 = v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = v61 - v19;
  if (!a1[3])
  {
    goto LABEL_24;
  }

  sub_224DABAC8();
  v21 = sub_224DAB968();
  v22 = v2;
  if (v2)
  {

    if (qword_281351438 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_26;
  }

  v31 = v21;
  v77 = v20;
  v61[1] = 0;
  v62 = a2;

  OnlyHost = type metadata accessor for ReadOnlyHost();
  v72 = sub_224C9A3FC();
  v73 = OnlyHost;
  v33 = sub_224DAECB8();
  v34 = 0;
  v67 = v31;
  v35 = *(v31 + 64);
  v87 = v33;
  v64 = v31 + 64;
  v36 = 1 << *(v31 + 32);
  v37 = -1;
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  v38 = v37 & v35;
  v63 = (v36 + 63) >> 6;
  v75 = TupleTypeMetadata2 - 8;
  v66 = v69 + 16;
  v65 = v70 + 16;
  v80 = (v70 + 32);
  v81 = (v69 + 32);
  v74 = (v15 + 32);
  v71 = (v70 + 8);
  v78 = TupleTypeMetadata2;
  v22 = v68;
  if ((v37 & v35) == 0)
  {
LABEL_10:
    if (v63 <= v34 + 1)
    {
      v40 = v34 + 1;
    }

    else
    {
      v40 = v63;
    }

    v41 = v40 - 1;
    v42 = v77;
    v43 = v78;
    while (1)
    {
      v39 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v39 >= v63)
      {
        v38 = 0;
        v55 = 1;
        goto LABEL_18;
      }

      v38 = *(v64 + 8 * v39);
      ++v34;
      if (v38)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_26:
    swift_once();
LABEL_4:
    v23 = sub_224DAB258();
    __swift_project_value_buffer(v23, qword_281364D78);
    v24 = v22;
    v25 = sub_224DAB228();
    v26 = sub_224DAF288();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138543362;
      v29 = v22;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 4) = v30;
      *v28 = v30;
      _os_log_impl(&dword_224A2F000, v25, v26, "Error fetching hosts: %{public}@", v27, 0xCu);
      sub_224AD68CC(v28);
      MEMORY[0x22AA5EED0](v28, -1, -1);
      MEMORY[0x22AA5EED0](v27, -1, -1);
    }

    else
    {
    }

LABEL_24:
    *a2 = 0;
    return;
  }

  while (1)
  {
    v39 = v34;
LABEL_17:
    v44 = __clz(__rbit64(v38));
    v38 &= v38 - 1;
    v45 = v44 | (v39 << 6);
    v46 = v67;
    v47 = v69;
    v48 = v82;
    v49 = v85;
    (*(v69 + 16))(v82, *(v67 + 48) + *(v69 + 72) * v45, v85);
    v50 = v70;
    v51 = *(v46 + 56) + *(v70 + 72) * v45;
    v52 = v83;
    v53 = v84;
    (*(v70 + 16))(v83, v51, v84);
    v43 = v78;
    v79 = *(v78 + 48);
    v54 = *(v47 + 32);
    v22 = v68;
    v54(v68, v48, v49);
    (*(v50 + 32))(&v22[v79], v52, v53);
    v55 = 0;
    v41 = v39;
    v42 = v77;
LABEL_18:
    v56 = *(v43 - 8);
    (*(v56 + 56))(v22, v55, 1, v43);
    (*v74)(v42, v22, v76);
    if ((*(v56 + 48))(v42, 1, v43) == 1)
    {
      break;
    }

    v57 = *(v43 + 48);
    (*v81)(v82, v42, v85);
    v58 = &v42[v57];
    v59 = v83;
    a2 = v84;
    (*v80)(v83, v58, v84);
    v60 = sub_224C9A460();
    (*v71)(v59, a2);
    v86 = v60;
    sub_224DAED48();
    sub_224DAED68();
    v34 = v41;
    if (!v38)
    {
      goto LABEL_10;
    }
  }

  *v62 = v87;
}

void sub_224C99444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[2];
  os_unfair_lock_lock(*(v7 + 16));
  sub_224C994D4(a2, v3, a1, a3);
  v8 = *(v7 + 16);

  os_unfair_lock_unlock(v8);
}

void sub_224C994D4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v30 = a4;
  v31 = a3;
  v7 = *(*a2 + 80);
  v8 = sub_224DAF728();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v29 - v12;
  v14 = *(v7 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v17 = &v29 - v16;
  (*(v9 + 16))(v13, a1, v8);
  if ((*(v14 + 48))(v13, 1, v7) == 1)
  {
    v18 = (*(v9 + 8))(v13, v8);
    if (!a2[3])
    {
      return;
    }

    MEMORY[0x28223BE20](v18);
    *(&v29 - 2) = v31;
    *(&v29 - 1) = a2;
    sub_224DABBC8();
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v19 = (*(v14 + 32))(v17, v13, v7);
    if (!a2[3] || (MEMORY[0x28223BE20](v19), *(&v29 - 4) = v31, *(&v29 - 3) = a2, v20 = v30, *(&v29 - 2) = v17, *(&v29 - 1) = v20, sub_224DABBC8(), !v4))
    {
      (*(v14 + 8))(v17, v7);
      return;
    }

    (*(v14 + 8))(v17, v7);
  }

  if (qword_281351438 != -1)
  {
    swift_once();
  }

  v21 = sub_224DAB258();
  __swift_project_value_buffer(v21, qword_281364D78);
  v22 = v4;
  v23 = sub_224DAB228();
  v24 = sub_224DAF288();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138543362;
    v27 = v4;
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v25 + 4) = v28;
    *v26 = v28;
    _os_log_impl(&dword_224A2F000, v23, v24, "Error updating host cache configuration: %{public}@", v25, 0xCu);
    sub_224AD68CC(v26);
    MEMORY[0x22AA5EED0](v26, -1, -1);
    MEMORY[0x22AA5EED0](v25, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_224C998FC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v38 = a4;
  v39 = a5;
  v35 = a2;
  v40 = a1;
  v5 = *a3;
  v7 = sub_224DAA428();
  v36 = *(v7 - 8);
  v37 = v7;
  v8 = *(v36 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v34 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v5 + 80);
  v29 = a3;
  v33 = *(v11 - 8);
  v12 = *(v33 + 64);
  MEMORY[0x28223BE20](v9);
  v32 = &v29 - v13;
  v30 = sub_224DAA5C8();
  v14 = *(v30 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v30);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v29 - v21;
  v23 = *(v5 + 88);
  v31 = sub_224DABC68();
  v24 = *(v31 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v31);
  v27 = &v29 - v26;
  (*(v19 + 16))(v22, v35, v18);
  (*(v14 + 16))(v17, v29 + qword_281351C60, v30);
  (*(v33 + 16))(v32, v38, v11);
  (*(v36 + 16))(v34, v39, v37);
  sub_224DABC58();
  sub_224DABB48();
  sub_224DABA28();
  (*(v24 + 8))(v27, v31);
}

void sub_224C99CC8()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(*(v1 + 16));
  sub_224C99D48(v0);
  v2 = *(v1 + 16);

  os_unfair_lock_unlock(v2);
}

void sub_224C99D48(uint64_t a1)
{
  if (*(a1 + 24))
  {
    MEMORY[0x28223BE20](a1);
    sub_224DABBC8();
    if (v1)
    {
      if (qword_281351438 != -1)
      {
        swift_once();
      }

      v2 = sub_224DAB258();
      __swift_project_value_buffer(v2, qword_281364D78);
      v3 = v1;
      v4 = sub_224DAB228();
      v5 = sub_224DAF288();

      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        *v6 = 138543362;
        v8 = v1;
        v9 = _swift_stdlib_bridgeErrorToNSError();
        *(v6 + 4) = v9;
        *v7 = v9;
        _os_log_impl(&dword_224A2F000, v4, v5, "Error updating host cache (activationState): %{public}@", v6, 0xCu);
        sub_224AD68CC(v7);
        MEMORY[0x22AA5EED0](v7, -1, -1);
        MEMORY[0x22AA5EED0](v6, -1, -1);
      }

      else
      {
      }
    }
  }
}

void sub_224C99F18()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(*(v1 + 16));
  sub_224C99F90(v0);
  v2 = *(v1 + 16);

  os_unfair_lock_unlock(v2);
}

void sub_224C99F90(uint64_t a1)
{
  if (*(a1 + 24))
  {
    MEMORY[0x28223BE20](a1);
    sub_224DABBC8();
    if (v1)
    {
      if (qword_281351438 != -1)
      {
        swift_once();
      }

      v2 = sub_224DAB258();
      __swift_project_value_buffer(v2, qword_281364D78);
      v3 = v1;
      v4 = sub_224DAB228();
      v5 = sub_224DAF288();

      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        *v6 = 138543362;
        v8 = v1;
        v9 = _swift_stdlib_bridgeErrorToNSError();
        *(v6 + 4) = v9;
        *v7 = v9;
        _os_log_impl(&dword_224A2F000, v4, v5, "Error removing host cache configuration: %{public}@", v6, 0xCu);
        sub_224AD68CC(v7);
        MEMORY[0x22AA5EED0](v7, -1, -1);
        MEMORY[0x22AA5EED0](v6, -1, -1);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_224C9A160()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = qword_281351C60;
  v4 = sub_224DAA5C8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_224C9A1D0()
{
  sub_224C9A160();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_224C9A2F0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_224DABB48();
  sub_224DABA18();
}

uint64_t sub_224C9A360()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_224DABB48();
  sub_224DABA38();
}

unint64_t sub_224C9A3FC()
{
  result = qword_281351878;
  if (!qword_281351878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D6F30D0, &unk_224DB2AC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281351878);
  }

  return result;
}

uint64_t sub_224C9A460()
{
  v1 = sub_224DAA428();
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(*(v0 + 80) - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v15 - v11;
  v13 = *(v0 + 88);
  sub_224DABC68();
  sub_224DABC48();
  sub_224DABC28();
  sub_224DABC38();
  return sub_224D431CC(v12, v8, v5);
}

uint64_t RemoteControlActionRequest.description.getter()
{
  v1 = v0;
  sub_224DAF938();
  MEMORY[0x22AA5D210](60, 0xE100000000000000);
  MEMORY[0x22AA5D210](0xD00000000000001ALL, 0x8000000224DBD3F0);
  MEMORY[0x22AA5D210](0xD000000000000012, 0x8000000224DCC980);
  v2 = [*v0 description];
  v3 = sub_224DAEE18();
  v5 = v4;

  MEMORY[0x22AA5D210](v3, v5);

  MEMORY[0x22AA5D210](0x6E6F69746361202CLL, 0xE90000000000003DLL);
  v6 = type metadata accessor for RemoteControlActionRequest();
  v7 = *(v6 + 20);
  sub_224DAE738();
  sub_224C9A7E0();
  v8 = sub_224DAFD28();
  MEMORY[0x22AA5D210](v8);

  MEMORY[0x22AA5D210](0x4F68636E75616C20, 0xEE003D6E69676972);
  v9 = (v1 + *(v6 + 24));
  if (v9[1])
  {
    v10 = *v9;
    v11 = v9[1];
  }

  else
  {
    v11 = 0xE300000000000000;
    v10 = 7104878;
  }

  MEMORY[0x22AA5D210](v10, v11);

  MEMORY[0x22AA5D210](62, 0xE100000000000000);
  return 0;
}

uint64_t type metadata accessor for RemoteControlActionRequest()
{
  result = qword_27D6F5C70;
  if (!qword_27D6F5C70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_224C9A7E0()
{
  result = qword_27D6F5C68;
  if (!qword_27D6F5C68)
  {
    sub_224DAE738();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F5C68);
  }

  return result;
}

void sub_224C9A864()
{
  sub_224AB43D8();
  if (v0 <= 0x3F)
  {
    sub_224DAE738();
    if (v1 <= 0x3F)
    {
      sub_224C9A900();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_224C9A900()
{
  if (!qword_27D6F5C80)
  {
    v0 = sub_224DAF728();
    if (!v1)
    {
      atomic_store(v0, &qword_27D6F5C80);
    }
  }
}

uint64_t sub_224C9AA34(uint64_t *a1, uint64_t *a2, unint64_t *a3)
{
  if (*(v3 + 16))
  {
    v5 = *(v3 + 16);
  }

  else
  {
    v11 = *(v3 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
    sub_224A33088(a3, a1, a2);
    v8 = v3;
    v5 = sub_224DAB3A8();
    v9 = *(v3 + 16);
    *(v8 + 16) = v5;
  }

  return v5;
}

void sub_224C9ABA4(char *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unsigned int *a5, uint64_t *a6, uint64_t *a7, unint64_t *a8, uint64_t a9, uint64_t *a10)
{
  v104 = a7;
  v105 = a8;
  v103 = a6;
  v106 = a5;
  v113 = a2;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v111 = *(v14 - 8);
  v112 = v14;
  v15 = *(v111 + 64);
  MEMORY[0x28223BE20](v14);
  v110 = &v96 - v16;
  v17 = sub_224DAA5C8();
  v108 = *(v17 - 8);
  v109 = v17;
  v18 = *(v108 + 64);
  MEMORY[0x28223BE20](v17);
  v107 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = a4;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = (&v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = MEMORY[0x28223BE20](v22);
  v102 = &v96 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v96 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v96 - v30;
  v32 = sub_224DAB8C8();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  v36 = (&v96 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = *(v10 + 16);
  *v36 = v37;
  (*(v33 + 104))(v36, *MEMORY[0x277D85200], v32);
  v38 = v37;
  LOBYTE(v37) = sub_224DAB8F8();
  v40 = *(v33 + 8);
  v39 = v33 + 8;
  v40(v36, v32);
  if ((v37 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v41 = *&a1[*(v20 + 36)];
  v39 = a1;
  if (v41)
  {
    v20 = a9;
    v42 = qword_2813516C8;
    a1 = v41;
    if (v42 == -1)
    {
LABEL_4:
      v43 = sub_224DAB258();
      v44 = __swift_project_value_buffer(v43, qword_281365120);
      sub_224A3796C(v39, v31, a3, v114);
      v45 = sub_224DAB228();
      v46 = sub_224DAF2A8();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v99 = v20;
        v48 = v47;
        v97 = swift_slowAlloc();
        v115[0] = v97;
        *v48 = 136446466;
        v49 = v107;
        v50 = *v106;
        v51 = v108;
        v52 = *(v108 + 104);
        v98 = v44;
        v53 = v109;
        v52(v107, v50, v109);
        sub_224CB0A6C(&qword_2813517E0, MEMORY[0x277CFA0E8]);
        v54 = sub_224DAFD28();
        v100 = v39;
        v101 = a1;
        v55 = v54;
        v57 = v56;
        (*(v51 + 8))(v49, v53);
        v58 = sub_224A33F74(v55, v57, v115);

        *(v48 + 4) = v58;
        *(v48 + 12) = 2082;
        v59 = v110;
        v60 = v111;
        v61 = v112;
        (*(v111 + 16))(v110, v31, v112);
        sub_224A3311C(v31, a3, v114);
        sub_224A33088(&qword_281351860, &unk_27D6F30D0, &unk_224DB2AC0);
        v62 = sub_224DAFD28();
        v64 = v63;
        v65 = *(v60 + 8);
        v66 = v61;
        v39 = v100;
        a1 = v101;
        v65(v59, v66);
        v67 = sub_224A33F74(v62, v64, v115);

        *(v48 + 14) = v67;
        _os_log_impl(&dword_224A2F000, v45, v46, "Requesting replication of %{public}s configuration from host: %{public}s", v48, 0x16u);
        v68 = v97;
        swift_arrayDestroy();
        MEMORY[0x22AA5EED0](v68, -1, -1);
        v69 = v48;
        v20 = v99;
        MEMORY[0x22AA5EED0](v69, -1, -1);
      }

      else
      {
        sub_224A3311C(v31, a3, v114);
      }

      sub_224C9BA28(v39, a3, v114, v103, v104, v105, v20);
      return;
    }

LABEL_15:
    swift_once();
    goto LABEL_4;
  }

  v70 = a10;
  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v71 = sub_224DAB258();
  v72 = __swift_project_value_buffer(v71, qword_281365120);
  sub_224A3796C(v39, v29, a3, v114);
  v73 = sub_224DAB228();
  v74 = sub_224DAF2A8();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v103 = v72;
    v76 = v75;
    v102 = swift_slowAlloc();
    v115[0] = v102;
    *v76 = 136446466;
    v77 = *v106;
    v78 = v108;
    v79 = *(v108 + 104);
    v104 = a10;
    v105 = v24;
    v80 = v107;
    v81 = v109;
    v79(v107, v77, v109);
    sub_224CB0A6C(&qword_2813517E0, MEMORY[0x277CFA0E8]);
    v82 = sub_224DAFD28();
    v100 = v39;
    v84 = v83;
    (*(v78 + 8))(v80, v81);
    v85 = sub_224A33F74(v82, v84, v115);

    *(v76 + 4) = v85;
    *(v76 + 12) = 2082;
    v86 = v110;
    v87 = v111;
    v88 = v112;
    (*(v111 + 16))(v110, v29, v112);
    sub_224A3311C(v29, a3, v114);
    sub_224A33088(&qword_281351860, &unk_27D6F30D0, &unk_224DB2AC0);
    v89 = sub_224DAFD28();
    v91 = v90;
    v92 = v87;
    v70 = v104;
    v93 = v88;
    v39 = v100;
    (*(v92 + 8))(v86, v93);
    v94 = sub_224A33F74(v89, v91, v115);

    *(v76 + 14) = v94;
    _os_log_impl(&dword_224A2F000, v73, v74, "Requesting deletion of %{public}s configuration for: %{public}s", v76, 0x16u);
    v95 = v102;
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v95, -1, -1);
    MEMORY[0x22AA5EED0](v76, -1, -1);
  }

  else
  {
    sub_224A3311C(v29, a3, v114);
  }

  sub_224C9CBCC(v39, v70);
}

void sub_224C9BA28(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, void (*a7)(uint64_t, uint64_t *, char *))
{
  v162 = a7;
  v175 = a6;
  v176 = a5;
  v172 = a4;
  v10 = v7;
  v168 = a1;
  v11 = sub_224DA9908();
  v166 = *(v11 - 8);
  v12 = *(v166 + 64);
  MEMORY[0x28223BE20](v11);
  v134 = &v128 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v144 = *(v14 - 8);
  v15 = *(v144 + 64);
  MEMORY[0x28223BE20](v14);
  v132 = &v128 - v16;
  v160 = a2;
  v161 = a3;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v17 = *(*(v185 - 8) + 64);
  MEMORY[0x28223BE20](v185);
  v157 = &v128 - v18;
  v159 = sub_224DAAC58();
  v138 = *(v159 - 8);
  v19 = *(v138 + 64);
  MEMORY[0x28223BE20](v159);
  v158 = (&v128 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v183 = sub_224DAADC8();
  v174 = *(v183 - 8);
  v21 = *(v174 + 64);
  v22 = MEMORY[0x28223BE20](v183);
  v182 = &v128 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v181 = &v128 - v24;
  v173 = sub_224DAAE38();
  v184 = *(v173 - 8);
  v25 = *(v184 + 64);
  v26 = MEMORY[0x28223BE20](v173);
  v156 = &v128 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v170 = &v128 - v29;
  MEMORY[0x28223BE20](v28);
  v186 = &v128 - v30;
  v31 = sub_224DAB0B8();
  v143 = *(v31 - 8);
  v32 = *(v143 + 64);
  v33 = MEMORY[0x28223BE20](v31);
  v155 = &v128 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v180 = &v128 - v35;
  v36 = sub_224DAAF28();
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x28223BE20](v36 - 8);
  v40 = &v128 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v42 = &v128 - v41;
  v167 = sub_224DAAF48();
  v179 = *(v167 - 8);
  v139 = v179;
  v43 = *(v179 + 64);
  MEMORY[0x28223BE20](v167);
  v45 = &v128 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_224B942B8(*(v10 + 32));
  v177 = v47;
  v178 = v46;
  v48 = *(v166 + 56);
  v135 = v11;
  v48(v42, 1, 1, v11);
  v133 = v14;
  sub_224DAA218();
  sub_224CB298C(v42, v40, MEMORY[0x277D46780]);
  v49 = v31;
  sub_224DAAEE8();
  sub_224CB2720(v42, MEMORY[0x277D46780]);
  v50 = *(v10 + 64);
  v51 = *(v10 + 80);
  v164 = v10;
  __swift_project_boxed_opaque_existential_1((v10 + 40), v50);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3368, &qword_224DB3B10);
  v53 = v139;
  v54 = *(v179 + 72);
  v55 = *(v139 + 80);
  v56 = (v55 + 32) & ~v55;
  v154 = v56;
  v152 = v54;
  v151 = v55;
  v153 = v52;
  v57 = swift_allocObject();
  v169 = xmmword_224DB3100;
  *(v57 + 16) = xmmword_224DB3100;
  v58 = *(v53 + 16);
  v59 = v57 + v56;
  v60 = v180;
  v165 = v45;
  v61 = v45;
  v62 = v143;
  v150 = v53 + 16;
  v149 = v58;
  v58(v59, v61, v167);
  v63 = *(v62 + 104);
  v148 = *MEMORY[0x277D46828];
  v147 = v62 + 104;
  v146 = v63;
  v63(v60);
  v64 = v187;
  sub_224DAABF8();
  if (v64)
  {

    v163 = *(v62 + 8);
    v163(v60, v49);
  }

  else
  {
    v163 = *(v62 + 8);
    v163(v60, v49);
  }

  v65 = *(v168 + *(v185 + 36));
  if (v65)
  {
    v172 = 0;
    v145 = v49;
    v66 = v164[9];
    __swift_project_boxed_opaque_existential_1(v164 + 5, v164[8]);
    v67 = *(v66 + 16);
    v171 = v65;
    v68 = sub_224DAAC78();
    v70 = v68;
    v180 = *(v68 + 16);
    if (v180)
    {
      v71 = 0;
      v177 = v68 + ((*(v184 + 80) + 32) & ~*(v184 + 80));
      LODWORD(v176) = *MEMORY[0x277D46750];
      v72 = v174;
      v174 += 8;
      v175 = (v72 + 104);
      v179 = v184 + 8;
      v131 = (v144 + 16);
      v130 = (v144 + 8);
      v129 = (v166 + 8);
      v141 = *MEMORY[0x277D46558];
      v140 = (v138 + 104);
      v144 = v53 + 8;
      v142 = v62 + 8;
      v143 = v138 + 8;
      *&v69 = 136315394;
      v128 = v69;
      v73 = v173;
      v74 = v186;
      v185 = v184 + 16;
      v178 = v68;
      while (v71 < *(v70 + 16))
      {
        v75 = *(v184 + 72);
        v187 = v71;
        v76 = *(v184 + 16);
        v76(v74, v177 + v75 * v71, v73);
        v77 = v181;
        sub_224DAADD8();
        v79 = v182;
        v78 = v183;
        (*v175)(v182, v176, v183);
        v80 = MEMORY[0x22AA59120](v77, v79);
        v81 = *v174;
        (*v174)(v79, v78);
        v81(v77, v78);
        if (v80)
        {
          sub_224A3B79C(0, &qword_27D6F40C0, 0x277CFA2F0);
          v82 = v170;
          v76(v170, v186, v73);
          v83 = sub_224CF9E44(v82);
          v84 = [v171 replicationPredicate];
          v85 = [v84 acceptsDevice_];

          if (v85)
          {
            v86 = v154;
            v87 = swift_allocObject();
            *(v87 + 16) = v169;
            v88 = v167;
            v149(v87 + v86, v165, v167);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BC0, &unk_224DB9C60);
            v89 = *(v166 + 72);
            v90 = (*(v166 + 80) + 32) & ~*(v166 + 80);
            v91 = swift_allocObject();
            *(v91 + 16) = v169;
            sub_224DAAD98();
            v92 = v158;
            *v158 = v91;
            v93 = v92;
            v94 = v159;
            (*v140)(v92, v141, v159);
            v95 = v155;
            v96 = v145;
            v146(v155, v148, v145);
            v97 = v172;
            v162(v87, v93, v95);
            v172 = v97;
            if (v97)
            {

              swift_setDeallocating();
              v126 = v95;
              v127 = *v144;
              (*v144)(v87 + v86, v88);
              swift_deallocClassInstance();
              v163(v126, v96);
              (*v143)(v93, v94);
              (*v179)(v186, v173);
              v127(v165, v88);
              return;
            }

            swift_setDeallocating();
            (*v144)(v87 + v86, v88);
            swift_deallocClassInstance();
            v163(v95, v96);
            (*v143)(v93, v94);
            v74 = v186;
            v73 = v173;
            (*v179)(v186, v173);
          }

          else
          {
            if (qword_2813516C8 != -1)
            {
              swift_once();
            }

            v98 = sub_224DAB258();
            __swift_project_value_buffer(v98, qword_281365120);
            v99 = v157;
            v100 = v160;
            v101 = v161;
            sub_224A3796C(v168, v157, v160, v161);
            v102 = v156;
            v103 = v186;
            v73 = v173;
            v76(v156, v186, v173);
            v104 = sub_224DAB228();
            v105 = sub_224DAF2A8();
            if (os_log_type_enabled(v104, v105))
            {
              v106 = swift_slowAlloc();
              v138 = swift_slowAlloc();
              v188 = v138;
              *v106 = v128;
              v107 = *v131;
              v137 = v104;
              v108 = v132;
              v136 = v105;
              v109 = v133;
              v107(v132, v99, v133);
              sub_224A3311C(v99, v100, v101);
              sub_224A33088(&qword_281351860, &unk_27D6F30D0, &unk_224DB2AC0);
              v110 = sub_224DAFD28();
              v112 = v111;
              (*v130)(v108, v109);
              v113 = sub_224A33F74(v110, v112, &v188);

              *(v106 + 4) = v113;
              *(v106 + 12) = 2080;
              v114 = v134;
              sub_224DAAD98();
              sub_224CB0A6C(&qword_281351A00, MEMORY[0x277CC95F0]);
              v115 = v135;
              v116 = sub_224DAFD28();
              v118 = v117;
              (*v129)(v114, v115);
              v119 = *v179;
              (*v179)(v102, v73);
              v120 = sub_224A33F74(v116, v118, &v188);

              *(v106 + 14) = v120;
              v121 = v137;
              _os_log_impl(&dword_224A2F000, v137, v136, "Replication of configuration %s to %s is disallowed by replication predicate", v106, 0x16u);
              v122 = v138;
              swift_arrayDestroy();
              MEMORY[0x22AA5EED0](v122, -1, -1);
              MEMORY[0x22AA5EED0](v106, -1, -1);
            }

            else
            {
              sub_224A3311C(v99, v100, v101);

              v119 = *v179;
              (*v179)(v102, v73);
            }

            v119(v103, v73);
            v74 = v103;
          }
        }

        else
        {
          v74 = v186;
          (*v179)(v186, v73);
        }

        v71 = v187 + 1;
        v70 = v178;
        if (v180 == v187 + 1)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_20:
      (*(v139 + 8))(v165, v167);
    }
  }

  else
  {
    v123 = v172;
    v124 = v176;
    __swift_instantiateConcreteTypeFromMangledNameV2(v172, v176);
    sub_224A33088(v175, v123, v124);
    swift_allocError();
    *v125 = 3;
    swift_willThrow();
    (*(v53 + 8))(v165, v167);
  }
}

uint64_t sub_224C9CBCC(uint64_t a1, void (*a2)(uint64_t))
{
  v64 = a2;
  v3 = v2;
  v84 = sub_224DAB0B8();
  v63 = *(v84 - 8);
  v4 = *(v63 + 64);
  MEMORY[0x28223BE20](v84 - 8);
  v83 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_224DAADC8();
  v87 = *(v6 - 8);
  v7 = *(v87 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v82 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v81 = &v63 - v10;
  v68 = sub_224DAAE38();
  v11 = *(v68 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v68);
  v80 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v70 = &v63 - v15;
  v16 = sub_224DAAF28();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v63 - v21;
  v86 = sub_224DAAF48();
  v66 = *(v86 - 8);
  v23 = *(v66 + 64);
  MEMORY[0x28223BE20](v86);
  v25 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_224B942B8(*(v2 + 32));
  v88 = v27;
  v89 = v26;
  v28 = sub_224DA9908();
  (*(*(v28 - 8) + 56))(v22, 1, 1, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  sub_224DAA218();
  sub_224CB298C(v22, v20, MEMORY[0x277D46780]);
  v67 = v25;
  sub_224DAAEE8();
  sub_224CB2720(v22, MEMORY[0x277D46780]);
  v29 = *(v2 + 64);
  v30 = *(v2 + 72);
  v85 = v3;
  __swift_project_boxed_opaque_existential_1(v3 + 5, v29);
  v31 = *(v30 + 16);
  result = sub_224DAAC78();
  v33 = result;
  *&v79 = *(result + 16);
  if (v79)
  {
    v78 = v6;
    v34 = 0;
    v75 = v11 + 16;
    v74 = *MEMORY[0x277D46750];
    v72 = (v87 + 8);
    v73 = (v87 + 104);
    v69 = (v11 + 8);
    v71 = (v11 + 32);
    v35 = MEMORY[0x277D84F90];
    v36 = v68;
    v37 = v70;
    v76 = result;
    v77 = v11;
    while (v34 < *(v33 + 16))
    {
      v88 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v89 = v35;
      v87 = *(v11 + 72);
      (*(v11 + 16))(v37, v33 + v88 + v87 * v34, v36);
      v38 = v81;
      v39 = v36;
      sub_224DAADD8();
      v40 = v82;
      v41 = v78;
      (*v73)(v82, v74, v78);
      v42 = MEMORY[0x22AA59120](v38, v40);
      v43 = *v72;
      (*v72)(v40, v41);
      v43(v38, v41);
      if (v42)
      {
        v44 = *v71;
        (*v71)(v80, v37, v39);
        v35 = v89;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v90 = v35;
        if (isUniquelyReferenced_nonNull_native)
        {
          v36 = v39;
        }

        else
        {
          sub_224ADA1C0(0, *(v35 + 16) + 1, 1);
          v36 = v68;
          v35 = v90;
        }

        v33 = v76;
        v47 = v87;
        v46 = v88;
        v49 = *(v35 + 16);
        v48 = *(v35 + 24);
        if (v49 >= v48 >> 1)
        {
          sub_224ADA1C0(v48 > 1, v49 + 1, 1);
          v36 = v68;
          v35 = v90;
        }

        *(v35 + 16) = v49 + 1;
        result = (v44)(v35 + v46 + v49 * v47, v80, v36);
        v37 = v70;
      }

      else
      {
        result = (*v69)(v37, v39);
        v36 = v39;
        v33 = v76;
        v35 = v89;
      }

      ++v34;
      v11 = v77;
      if (v79 == v34)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v35 = MEMORY[0x277D84F90];
LABEL_14:

    MEMORY[0x28223BE20](v50);
    *(&v63 - 2) = v67;
    v51 = v65;
    v52 = sub_224D4082C(v64, (&v63 - 4), v35);
    v53 = v51;

    v54 = *(v52 + 16);
    if (v54)
    {
      v55 = *(v66 + 80);
      v77 = v52;
      v88 = (v55 + 32) & ~v55;
      v89 = v55;
      v56 = v52 + v88;
      v57 = *(v66 + 72);
      v82 = (v66 + 16);
      LODWORD(v81) = *MEMORY[0x277D46828];
      v80 = (v63 + 104);
      v78 = (v63 + 8);
      v79 = xmmword_224DB3100;
      v87 = v57;
      do
      {
        v58 = v85[10];
        __swift_project_boxed_opaque_existential_1(v85 + 5, v85[8]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3368, &qword_224DB3B10);
        v59 = v88;
        v60 = swift_allocObject();
        *(v60 + 16) = v79;
        (*v82)(v60 + v59, v56, v86);
        v62 = v83;
        v61 = v84;
        (*v80)(v83, v81, v84);
        sub_224DAABF8();
        if (v53)
        {

          (*v78)(v62, v61);
          v53 = 0;
        }

        else
        {
          (*v78)(v62, v61);
        }

        v56 += v87;
        --v54;
      }

      while (v54);
    }

    return (*(v66 + 8))(v67, v86);
  }

  return result;
}

uint64_t sub_224C9D44C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4220, &unk_224DB60D0);
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v4[6] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4228, &unk_224DB9BE0);
  v4[7] = v8;
  v9 = *(v8 - 8);
  v4[8] = v9;
  v10 = *(v9 + 64) + 15;
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224C9D580, 0, 0);
}

uint64_t sub_224C9D580()
{
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v4[10];
  __swift_project_boxed_opaque_existential_1(v4 + 5, v4[8]);
  sub_224DAABA8();
  sub_224DAF158();
  (*(v3 + 8))(v2, v5);
  v7 = *(MEMORY[0x277D85798] + 4);
  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = sub_224C9D69C;
  v9 = v0[9];
  v10 = v0[7];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v10);
}

uint64_t sub_224C9D69C()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_224C9D798, 0, 0);
}

uint64_t sub_224C9D798()
{
  if (v0[2])
  {
    v1 = v0[3];
    sub_224C9F084(v0[2], &qword_27D6F5D58, &qword_224DBD828, &qword_27D6F3848, &qword_224DBD830, &qword_27D6F5D50, &unk_224DBD810, qword_28135ADC0);

    v2 = *(MEMORY[0x277D85798] + 4);
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = sub_224C9D69C;
    v4 = v0[9];
    v5 = v0[7];

    return MEMORY[0x2822003E8](v0 + 2, 0, 0, v5);
  }

  else
  {
    v6 = v0[6];
    (*(v0[8] + 8))(v0[9], v0[7]);

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_224C9D900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4220, &unk_224DB60D0);
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v4[6] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4228, &unk_224DB9BE0);
  v4[7] = v8;
  v9 = *(v8 - 8);
  v4[8] = v9;
  v10 = *(v9 + 64) + 15;
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224C9DA34, 0, 0);
}

uint64_t sub_224C9DA34()
{
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v4[10];
  __swift_project_boxed_opaque_existential_1(v4 + 5, v4[8]);
  sub_224DAABA8();
  sub_224DAF158();
  (*(v3 + 8))(v2, v5);
  v7 = *(MEMORY[0x277D85798] + 4);
  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = sub_224C9DB50;
  v9 = v0[9];
  v10 = v0[7];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v10);
}

uint64_t sub_224C9DB50()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_224C9DC4C, 0, 0);
}

uint64_t sub_224C9DC4C()
{
  if (v0[2])
  {
    v1 = v0[3];
    sub_224C9F084(v0[2], &qword_27D6F5D60, qword_224DBD840, &qword_27D6F5740, &qword_224DB3608, &qword_27D6F3398, &unk_224DB35C0, &qword_27D6F33A0);

    v2 = *(MEMORY[0x277D85798] + 4);
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = sub_224C9DB50;
    v4 = v0[9];
    v5 = v0[7];

    return MEMORY[0x2822003E8](v0 + 2, 0, 0, v5);
  }

  else
  {
    v6 = v0[6];
    (*(v0[8] + 8))(v0[9], v0[7]);

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_224C9DDB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4220, &unk_224DB60D0);
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v4[6] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4228, &unk_224DB9BE0);
  v4[7] = v8;
  v9 = *(v8 - 8);
  v4[8] = v9;
  v10 = *(v9 + 64) + 15;
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224C9DEE8, 0, 0);
}

uint64_t sub_224C9DEE8()
{
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v4[10];
  __swift_project_boxed_opaque_existential_1(v4 + 5, v4[8]);
  sub_224DAABA8();
  sub_224DAF158();
  (*(v3 + 8))(v2, v5);
  v7 = *(MEMORY[0x277D85798] + 4);
  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = sub_224C9E004;
  v9 = v0[9];
  v10 = v0[7];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v10);
}

uint64_t sub_224C9E004()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_224C9E100, 0, 0);
}

uint64_t sub_224C9E100()
{
  if (v0[2])
  {
    v1 = v0[3];
    sub_224C9F084(v0[2], &qword_27D6F5D10, &qword_224DBD7A8, &qword_27D6F3800, &qword_224DB4180, &qword_27D6F5CE8, &unk_224DBD750, &qword_27D6F5CF0);

    v2 = *(MEMORY[0x277D85798] + 4);
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = sub_224C9E004;
    v4 = v0[9];
    v5 = v0[7];

    return MEMORY[0x2822003E8](v0 + 2, 0, 0, v5);
  }

  else
  {
    v6 = v0[6];
    (*(v0[8] + 8))(v0[9], v0[7]);

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_224C9E268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4220, &unk_224DB60D0);
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v4[6] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4228, &unk_224DB9BE0);
  v4[7] = v8;
  v9 = *(v8 - 8);
  v4[8] = v9;
  v10 = *(v9 + 64) + 15;
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224C9E39C, 0, 0);
}

uint64_t sub_224C9E39C()
{
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v4[10];
  __swift_project_boxed_opaque_existential_1(v4 + 5, v4[8]);
  sub_224DAABA8();
  sub_224DAF158();
  (*(v3 + 8))(v2, v5);
  v7 = *(MEMORY[0x277D85798] + 4);
  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = sub_224C9E4B8;
  v9 = v0[9];
  v10 = v0[7];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v10);
}

uint64_t sub_224C9E4B8()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_224C9E5B4, 0, 0);
}

uint64_t sub_224C9E5B4()
{
  if (v0[2])
  {
    v1 = v0[3];
    sub_224C9F084(v0[2], &qword_27D6F5D18, &unk_224DBD7B0, &qword_27D6F56D8, &qword_224DBD790, &qword_27D6F5CB0, &unk_224DBD700, &qword_27D6F5CB8);

    v2 = *(MEMORY[0x277D85798] + 4);
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = sub_224C9E4B8;
    v4 = v0[9];
    v5 = v0[7];

    return MEMORY[0x2822003E8](v0 + 2, 0, 0, v5);
  }

  else
  {
    v6 = v0[6];
    (*(v0[8] + 8))(v0[9], v0[7]);

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_224C9E71C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4220, &unk_224DB60D0);
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v4[6] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4228, &unk_224DB9BE0);
  v4[7] = v8;
  v9 = *(v8 - 8);
  v4[8] = v9;
  v10 = *(v9 + 64) + 15;
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224C9E850, 0, 0);
}

uint64_t sub_224C9E850()
{
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v4[10];
  __swift_project_boxed_opaque_existential_1(v4 + 5, v4[8]);
  sub_224DAABA8();
  sub_224DAF158();
  (*(v3 + 8))(v2, v5);
  v7 = *(MEMORY[0x277D85798] + 4);
  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = sub_224C9E96C;
  v9 = v0[9];
  v10 = v0[7];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v10);
}

uint64_t sub_224C9E96C()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_224C9EA68, 0, 0);
}

uint64_t sub_224C9EA68()
{
  if (v0[2])
  {
    v1 = v0[3];
    sub_224C9F084(v0[2], &qword_27D6F5D20, &unk_224DBD7D8, &unk_27D6F56B0, &unk_224DB4140, &qword_27D6F5D28, &qword_224DBD7E8, &qword_27D6F5D30);

    v2 = *(MEMORY[0x277D85798] + 4);
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = sub_224C9E96C;
    v4 = v0[9];
    v5 = v0[7];

    return MEMORY[0x2822003E8](v0 + 2, 0, 0, v5);
  }

  else
  {
    v6 = v0[6];
    (*(v0[8] + 8))(v0[9], v0[7]);

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_224C9EBD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4220, &unk_224DB60D0);
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v4[6] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4228, &unk_224DB9BE0);
  v4[7] = v8;
  v9 = *(v8 - 8);
  v4[8] = v9;
  v10 = *(v9 + 64) + 15;
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224C9ED04, 0, 0);
}

uint64_t sub_224C9ED04()
{
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v4[10];
  __swift_project_boxed_opaque_existential_1(v4 + 5, v4[8]);
  sub_224DAABA8();
  sub_224DAF158();
  (*(v3 + 8))(v2, v5);
  v7 = *(MEMORY[0x277D85798] + 4);
  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = sub_224C9EE20;
  v9 = v0[9];
  v10 = v0[7];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v10);
}

uint64_t sub_224C9EE20()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_224C9EF1C, 0, 0);
}

uint64_t sub_224C9EF1C()
{
  if (v0[2])
  {
    v1 = v0[3];
    sub_224C9F084(v0[2], &qword_27D6F5D38, &qword_224DBD7F8, &qword_27D6F37E8, &qword_224DBD800, &qword_27D6F5D40, &qword_224DBD808, &qword_27D6F5D48);

    v2 = *(MEMORY[0x277D85798] + 4);
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = sub_224C9EE20;
    v4 = v0[9];
    v5 = v0[7];

    return MEMORY[0x2822003E8](v0 + 2, 0, 0, v5);
  }

  else
  {
    v6 = v0[6];
    (*(v0[8] + 8))(v0[9], v0[7]);

    v7 = v0[1];

    return v7();
  }
}

void sub_224C9F084(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, unint64_t *a8)
{
  v358 = a8;
  v357 = a7;
  v356 = a6;
  v391 = a1;
  v335 = a2;
  v336 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v347 = &v312 - v12;
  v337 = a4;
  v338 = a5;
  v343 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v390 = *(v343 - 8);
  v13 = *(v390 + 64);
  v14 = MEMORY[0x28223BE20](v343);
  v334 = &v312 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v327 = &v312 - v16;
  v326 = sub_224DAB018();
  v342 = *(v326 - 8);
  v17 = *(v342 + 64);
  v18 = MEMORY[0x28223BE20](v326);
  v325 = &v312 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v324 = &v312 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3320, &unk_224DBD6F0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v355 = &v312 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v354 = &v312 - v25;
  v367 = sub_224DAAE38();
  v388 = *(v367 - 8);
  v26 = *(v388 + 64);
  v27 = MEMORY[0x28223BE20](v367);
  v351 = &v312 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v359 = &v312 - v29;
  v30 = sub_224DA9908();
  v386 = *(v30 - 8);
  v31 = *(v386 + 64);
  v32 = MEMORY[0x28223BE20](v30);
  v365 = &v312 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v329 = &v312 - v35;
  MEMORY[0x28223BE20](v34);
  v364 = &v312 - v36;
  v37 = sub_224DAAF28();
  v38 = *(*(v37 - 8) + 64);
  v39 = MEMORY[0x28223BE20](v37 - 8);
  v378 = &v312 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v377 = &v312 - v41;
  v42 = sub_224DAAF48();
  v344 = *(v42 - 8);
  v43 = *(v344 + 64);
  v44 = MEMORY[0x28223BE20](v42);
  v352 = &v312 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v44);
  v346 = &v312 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v363 = &v312 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v353 = &v312 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v328 = &v312 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v333 = &v312 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v345 = &v312 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v368 = &v312 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v62 = &v312 - v61;
  MEMORY[0x28223BE20](v60);
  v64 = &v312 - v63;
  v379 = sub_224DAAB18();
  v65 = *(v379 - 8);
  v66 = *(v65 + 64);
  v67 = MEMORY[0x28223BE20](v379);
  v332 = &v312 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v67);
  v385 = &v312 - v69;
  v384 = sub_224DAAA98();
  v70 = *(v384 - 8);
  v71 = *(v70 + 64);
  MEMORY[0x28223BE20](v384);
  v383 = &v312 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  v74 = *(*(v73 - 8) + 64);
  v75 = MEMORY[0x28223BE20](v73 - 8);
  v331 = &v312 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v75);
  v78 = &v312 - v77;
  v79 = sub_224DA9688();
  v80 = *(v79 - 8);
  v81 = *(v80 + 64);
  MEMORY[0x28223BE20](v79);
  v83 = &v312 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224AEFFB4(v78);
  if ((*(v80 + 48))(v78, 1, v79) != 1)
  {
    v341 = v80;
    v87 = *(v80 + 32);
    v330 = v83;
    v87(v83, v78, v79);
    v89 = *(v391 + 16);
    v90 = v368;
    v91 = v385;
    if (!v89)
    {
LABEL_148:
      (*(v341 + 8))(v330, v79);
      return;
    }

    v373 = 0;
    v387 = qword_2813652E0;
    v340 = v392 + qword_2813652F0;
    v339 = v392 + qword_2813652E8;
    v318 = v392 + qword_281365308;
    v92 = (v391 + ((*(v70 + 80) + 32) & ~*(v70 + 80)));
    v381 = *(v70 + 72);
    v371 = (v65 + 32);
    v370 = (v65 + 8);
    v376 = (v386 + 48);
    v362 = (v386 + 32);
    v361 = (v388 + 48);
    *&v88 = 136446210;
    v366 = v88;
    *&v88 = 136446466;
    v348 = v88;
    v322 = xmmword_224DB3100;
    v350 = (v388 + 32);
    v349 = (v388 + 8);
    v321 = (v65 + 16);
    v360 = (v386 + 8);
    v323 = (v390 + 48);
    v390 = v344 + 8;
    v388 = v344 + 16;
    v320 = (v341 + 16);
    v319 = (v341 + 56);
    v317 = v342 + 16;
    v316 = v342 + 32;
    v315 = (v342 + 8);
    v369 = (v344 + 32);
    v375 = v30;
    v386 = v42;
    v380 = v62;
    v382 = v64;
    v389 = v79;
    while (1)
    {
      v391 = v89;
      v93 = v383;
      sub_224CB298C(v92, v383, MEMORY[0x277D46518]);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*v369)(v62, v93, v42);
        v94 = sub_224DAAF08();
        v95 = v94;
        v97 = v96;
        v98 = *(v392 + 32);
        if (v98 >> 6)
        {
          if (v98 >> 6 == 1)
          {
            v99 = v98 & 0x3F;
            v393[0] = 0;
            v393[1] = 0xE000000000000000;
            sub_224DAF938();

            strcpy(v393, "configuration-");
            HIBYTE(v393[1]) = -18;
            v100 = 0xEF77656976657270;
            if (v99 != 2)
            {
              v100 = 0xEC0000006576696CLL;
            }

            v101 = 0x746F687370616E73;
            if (v99)
            {
              v101 = 0x656E696C656D6974;
            }

            if (v99 <= 1)
            {
              v102 = v101;
            }

            else
            {
              v102 = 0x2D6C6F72746E6F63;
            }

            if (v99 <= 1)
            {
              v103 = 0xE800000000000000;
            }

            else
            {
              v103 = v100;
            }

            goto LABEL_49;
          }

          v125 = 0x7974697669746361;
          if (v98 == 129)
          {
            v125 = 1852793705;
          }

          v126 = 0xEF65766968637241;
          if (v98 == 129)
          {
            v126 = 0xE400000000000000;
          }

          if (v98 == 128)
          {
            v127 = 0x6F69736E65747865;
          }

          else
          {
            v127 = v125;
          }

          if (v98 == 128)
          {
            v119 = 0xE90000000000006ELL;
          }

          else
          {
            v119 = v126;
          }

          if (v94 == v127)
          {
LABEL_79:
            if (v97 == v119)
            {

              v79 = v389;
              goto LABEL_82;
            }
          }
        }

        else
        {
          strcpy(v393, "archive-");
          BYTE1(v393[1]) = 0;
          WORD1(v393[1]) = 0;
          HIDWORD(v393[1]) = -402653184;
          v115 = 0xEF77656976657270;
          if (v98 != 3)
          {
            v115 = 0xEC0000006576696CLL;
          }

          v116 = 0x656E696C656D6974;
          if (v98 == 2)
          {
            v115 = 0xE800000000000000;
          }

          else
          {
            v116 = 0x2D6C6F72746E6F63;
          }

          v117 = 0x746F687370616E73;
          if (!v98)
          {
            v117 = 0x6C6F686563616C70;
          }

          v118 = 0xEB00000000726564;
          if (v98)
          {
            v118 = 0xE800000000000000;
          }

          if (v98 <= 1)
          {
            v102 = v117;
          }

          else
          {
            v102 = v116;
          }

          if (v98 <= 1)
          {
            v103 = v118;
          }

          else
          {
            v103 = v115;
          }

LABEL_49:
          MEMORY[0x22AA5D210](v102, v103);

          v119 = v393[1];
          if (v95 == v393[0])
          {
            goto LABEL_79;
          }
        }

        v128 = sub_224DAFD88();

        v79 = v389;
        if (v128)
        {
LABEL_82:
          v129 = v363;
          v374 = *v388;
          (v374)(v363, v62, v42);
          v130 = sub_224DAB228();
          v131 = sub_224DAF2A8();
          if (os_log_type_enabled(v130, v131))
          {
            v132 = v92;
            v133 = v90;
            v134 = v129;
            v135 = swift_slowAlloc();
            v136 = swift_slowAlloc();
            v393[0] = v136;
            *v135 = v366;
            sub_224CB0A6C(&qword_281351720, MEMORY[0x277D46790]);
            v137 = sub_224DAFD28();
            v139 = v138;
            v140 = v134;
            v90 = v133;
            v92 = v132;
            v141 = *v390;
            (*v390)(v140, v42);
            v142 = sub_224A33F74(v137, v139, v393);
            v30 = v375;

            *(v135 + 4) = v142;
            _os_log_impl(&dword_224A2F000, v130, v131, "Received deleted record: %{public}s", v135, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v136);
            v143 = v136;
            v79 = v389;
            MEMORY[0x22AA5EED0](v143, -1, -1);
            MEMORY[0x22AA5EED0](v135, -1, -1);
          }

          else
          {

            v141 = *v390;
            (*v390)(v129, v42);
          }

          v62 = v380;
          sub_224DAAF38();
          v144 = v378;
          if ((*v376)(v378, 1, v30) == 1)
          {
LABEL_86:
            v42 = v386;
            (v141)(v62, v386);
          }

          else
          {
            (*v362)(v365, v144, v30);
            v145 = *(v392 + 72);
            __swift_project_boxed_opaque_existential_1((v392 + 40), *(v392 + 64));
            v146 = *(v145 + 16);
            v147 = v355;
            sub_224DAAC98();
            v148 = v367;
            if ((*v361)(v147, 1, v367) == 1)
            {
              sub_224A3311C(v147, &qword_27D6F3320, &unk_224DBD6F0);
              v149 = v346;
              v150 = v386;
              (v374)(v346, v62, v386);
              v151 = sub_224DAB228();
              v152 = sub_224DAF288();
              if (os_log_type_enabled(v151, v152))
              {
                v153 = v149;
                v154 = swift_slowAlloc();
                v155 = swift_slowAlloc();
                v393[0] = v155;
                *v154 = v366;
                sub_224CB0A6C(&qword_281351720, MEMORY[0x277D46790]);
                v156 = sub_224DAFD28();
                v158 = v157;
                v159 = v153;
                v62 = v380;
                (v141)(v159, v150);
                v160 = sub_224A33F74(v156, v158, v393);

                *(v154 + 4) = v160;
                _os_log_impl(&dword_224A2F000, v151, v152, "Received deleted remote record from a device that does not exist: %{public}s", v154, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v155);
                MEMORY[0x22AA5EED0](v155, -1, -1);
                MEMORY[0x22AA5EED0](v154, -1, -1);
              }

              else
              {

                (v141)(v149, v150);
              }

              v42 = v150;
              v210 = v356;
              v211 = v357;
              __swift_instantiateConcreteTypeFromMangledNameV2(v356, v357);
              sub_224A33088(v358, v210, v211);
              v205 = swift_allocError();
              *v212 = 0;
              swift_willThrow();
              goto LABEL_122;
            }

            v201 = v351;
            (*v350)(v351, v147, v148);
            v202 = *(v340 + 8);
            v203 = v347;
            v204 = v373;
            (*v340)(v62, v201);
            if (v204)
            {
              (*v349)(v201, v148);
              v205 = v204;
              v42 = v386;
LABEL_122:
              v373 = 0;
              v213 = v352;
              (v374)(v352, v62, v42);
              v214 = v205;
              v215 = sub_224DAB228();
              v216 = sub_224DAF288();

              if (os_log_type_enabled(v215, v216))
              {
                v217 = v141;
                v218 = swift_slowAlloc();
                v219 = swift_slowAlloc();
                v374 = swift_slowAlloc();
                v393[0] = v374;
                *v218 = v348;
                sub_224CB0A6C(&qword_281351720, MEMORY[0x277D46790]);
                v220 = sub_224DAFD28();
                v222 = v221;
                (v217)(v213, v386);
                v223 = sub_224A33F74(v220, v222, v393);
                v62 = v380;

                *(v218 + 4) = v223;
                *(v218 + 12) = 2114;
                v224 = v205;
                v225 = _swift_stdlib_bridgeErrorToNSError();
                *(v218 + 14) = v225;
                *v219 = v225;
                _os_log_impl(&dword_224A2F000, v215, v216, "Failed to handle record deletion: %{public}s - %{public}@", v218, 0x16u);
                sub_224A3311C(v219, &unk_27D6F69F0, &unk_224DB3900);
                MEMORY[0x22AA5EED0](v219, -1, -1);
                v226 = v374;
                __swift_destroy_boxed_opaque_existential_1(v374);
                v42 = v386;
                MEMORY[0x22AA5EED0](v226, -1, -1);
                MEMORY[0x22AA5EED0](v218, -1, -1);

                v30 = v375;
                (*v360)(v365, v375);
                (v217)(v62, v42);
              }

              else
              {

                (v141)(v213, v42);
                v30 = v375;
                (*v360)(v365, v375);
                (v141)(v62, v42);
              }

              v90 = v368;
              v64 = v382;
              v91 = v385;
              v79 = v389;
              goto LABEL_8;
            }

            v373 = 0;
            v246 = (*v323)(v203, 1, v343);
            v90 = v368;
            if (v246 != 1)
            {
              v254 = v203;
              v255 = v148;
              v256 = v334;
              v257 = v337;
              v258 = v338;
              sub_224A44E4C(v254, v334, v337, v338);
              v259 = *(v392 + 24);
              sub_224DAB348();
              sub_224A3311C(v256, v257, v258);
              v260 = v255;
              v79 = v389;
              (*v349)(v351, v260);
              (*v360)(v365, v30);
              goto LABEL_86;
            }

            (*v349)(v351, v148);
            (*v360)(v365, v30);
            v42 = v386;
            (v141)(v62, v386);
            sub_224A3311C(v203, v335, v336);
          }
        }

        else
        {
          (*v390)(v62, v42);
        }

        v64 = v382;
        v91 = v385;
        goto LABEL_8;
      }

      v104 = v379;
      (*v371)(v91, v93, v379);
      sub_224DAAAF8();
      v105 = sub_224DAAF08();
      v106 = v105;
      v108 = v107;
      v109 = *(v392 + 32);
      if (!(v109 >> 6))
      {
        break;
      }

      if (v109 >> 6 == 1)
      {
        v110 = v109 & 0x3F;
        v393[0] = 0;
        v393[1] = 0xE000000000000000;
        sub_224DAF938();

        strcpy(v393, "configuration-");
        HIBYTE(v393[1]) = -18;
        v111 = 0xEF77656976657270;
        if (v110 != 2)
        {
          v111 = 0xEC0000006576696CLL;
        }

        v112 = 0x746F687370616E73;
        if (v110)
        {
          v112 = 0x656E696C656D6974;
        }

        if (v110 <= 1)
        {
          v113 = v112;
        }

        else
        {
          v113 = 0x2D6C6F72746E6F63;
        }

        if (v110 <= 1)
        {
          v114 = 0xE800000000000000;
        }

        else
        {
          v114 = v111;
        }

        goto LABEL_66;
      }

      v161 = 0x7974697669746361;
      if (v109 == 129)
      {
        v161 = 1852793705;
      }

      v162 = 0xEF65766968637241;
      if (v109 == 129)
      {
        v162 = 0xE400000000000000;
      }

      if (v109 == 128)
      {
        v163 = 0x6F69736E65747865;
      }

      else
      {
        v163 = v161;
      }

      if (v109 == 128)
      {
        v124 = 0xE90000000000006ELL;
      }

      else
      {
        v124 = v162;
      }

      if (v105 != v163)
      {
LABEL_103:
        v164 = sub_224DAFD88();

        v79 = v389;
        if ((v164 & 1) == 0)
        {
          (*v390)(v64, v42);
          v91 = v385;
          (*v370)(v385, v104);
LABEL_114:
          v62 = v380;
          goto LABEL_8;
        }

        goto LABEL_104;
      }

LABEL_101:
      if (v108 != v124)
      {
        goto LABEL_103;
      }

      v79 = v389;
LABEL_104:
      v374 = v92;
      v165 = *v388;
      (*v388)(v90, v64, v42);
      v166 = sub_224DAB228();
      v167 = sub_224DAF2A8();
      if (os_log_type_enabled(v166, v167))
      {
        v168 = swift_slowAlloc();
        v169 = swift_slowAlloc();
        v393[0] = v169;
        *v168 = v366;
        sub_224CB0A6C(&qword_281351720, MEMORY[0x277D46790]);
        v170 = sub_224DAFD28();
        v172 = v171;
        v173 = v90;
        v174 = *v390;
        v175 = v173;
        (*v390)();
        v176 = sub_224A33F74(v170, v172, v393);
        v30 = v375;

        *(v168 + 4) = v176;
        _os_log_impl(&dword_224A2F000, v166, v167, "Received updated record: %{public}s", v168, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v169);
        v177 = v169;
        v79 = v389;
        MEMORY[0x22AA5EED0](v177, -1, -1);
        MEMORY[0x22AA5EED0](v168, -1, -1);
      }

      else
      {

        v178 = v90;
        v174 = *v390;
        v175 = v178;
        (*v390)();
      }

      v64 = v382;
      sub_224DAAF38();
      v179 = v377;
      if ((*v376)(v377, 1, v30) != 1)
      {
        v372 = v174;
        (*v362)(v364, v179, v30);
        v180 = *(v392 + 72);
        __swift_project_boxed_opaque_existential_1((v392 + 40), *(v392 + 64));
        v181 = *(v180 + 16);
        v182 = v354;
        sub_224DAAC98();
        v183 = v182;
        v184 = v182;
        v185 = v367;
        v186 = (*v361)(v184, 1, v367);
        v187 = v359;
        if (v186 == 1)
        {
          sub_224A3311C(v183, &qword_27D6F3320, &unk_224DBD6F0);
          v188 = v345;
          v189 = v386;
          (v165)(v345, v64, v386);
          v190 = sub_224DAB228();
          v191 = sub_224DAF288();
          v192 = os_log_type_enabled(v190, v191);
          v92 = v374;
          if (v192)
          {
            v193 = v188;
            v194 = swift_slowAlloc();
            v195 = swift_slowAlloc();
            v393[0] = v195;
            *v194 = v366;
            sub_224CB0A6C(&qword_281351720, MEMORY[0x277D46790]);
            v196 = sub_224DAFD28();
            v198 = v197;
            v199 = v193;
            v64 = v382;
            (v372)(v199, v189);
            v200 = sub_224A33F74(v196, v198, v393);

            *(v194 + 4) = v200;
            _os_log_impl(&dword_224A2F000, v190, v191, "Received incoming remote record from a device that does not exist: %{public}s", v194, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v195);
            MEMORY[0x22AA5EED0](v195, -1, -1);
            MEMORY[0x22AA5EED0](v194, -1, -1);
          }

          else
          {

            (v372)(v188, v189);
          }

          v42 = v189;
          v227 = v356;
          v228 = v357;
          __swift_instantiateConcreteTypeFromMangledNameV2(v356, v357);
          sub_224A33088(v358, v227, v228);
          v209 = swift_allocError();
          *v229 = 0;
          swift_willThrow();
          goto LABEL_128;
        }

        (*v350)(v359, v183, v185);
        v206 = *(v339 + 8);
        v207 = v373;
        v208 = (*v339)(v385, v187);
        v92 = v374;
        if (v207)
        {
          (*v349)(v187, v185);
          v209 = v207;
          goto LABEL_119;
        }

        v373 = 0;
        if (v208)
        {
          v247 = *(v392 + 80);
          __swift_project_boxed_opaque_existential_1((v392 + 40), *(v392 + 64));
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3368, &qword_224DB3B10);
          v248 = *(v344 + 72);
          v249 = (*(v344 + 80) + 32) & ~*(v344 + 80);
          v250 = swift_allocObject();
          *(v250 + 16) = v322;
          (v165)(v250 + v249, v64, v386);
          v251 = v331;
          (*v320)(v331, v330, v79);
          (*v319)(v251, 0, 1, v79);
          v252 = v373;
          v253 = sub_224DAAC08();
          v209 = v252;
          if (v252)
          {

            sub_224A3311C(v251, &unk_27D6F4680, &unk_224DB4610);
            (*v349)(v359, v367);
LABEL_119:
            v42 = v386;
LABEL_128:
            v373 = 0;
            v230 = v353;
            (v165)(v353, v64, v42);
            v231 = v209;
            v232 = sub_224DAB228();
            v233 = sub_224DAF288();

            if (os_log_type_enabled(v232, v233))
            {
              v234 = swift_slowAlloc();
              v235 = swift_slowAlloc();
              v236 = swift_slowAlloc();
              v393[0] = v236;
              *v234 = v348;
              sub_224CB0A6C(&qword_281351720, MEMORY[0x277D46790]);
              v237 = sub_224DAFD28();
              v239 = v238;
              (v372)(v230, v386);
              v240 = sub_224A33F74(v237, v239, v393);

              *(v234 + 4) = v240;
              *(v234 + 12) = 2114;
              v241 = v209;
              v242 = _swift_stdlib_bridgeErrorToNSError();
              *(v234 + 14) = v242;
              *v235 = v242;
              _os_log_impl(&dword_224A2F000, v232, v233, "Failed to handle record update: %{public}s - %{public}@", v234, 0x16u);
              sub_224A3311C(v235, &unk_27D6F69F0, &unk_224DB3900);
              MEMORY[0x22AA5EED0](v235, -1, -1);
              __swift_destroy_boxed_opaque_existential_1(v236);
              v243 = v236;
              v42 = v386;
              MEMORY[0x22AA5EED0](v243, -1, -1);
              v244 = v234;
              v64 = v382;
              MEMORY[0x22AA5EED0](v244, -1, -1);

              v30 = v375;
              (*v360)(v364, v375);
              (v372)(v64, v42);
            }

            else
            {

              v245 = v372;
              (v372)(v230, v42);
              v30 = v375;
              (*v360)(v364, v375);
              (v245)(v64, v42);
            }
          }

          else
          {
            v286 = v253;
            sub_224A3311C(v251, &unk_27D6F4680, &unk_224DB4610);

            if (!*(v286 + 16) || (v287 = sub_224B0B3CC(v64), (v288 & 1) == 0))
            {

              v296 = v328;
              v297 = v386;
              (v165)(v328, v64, v386);
              v298 = sub_224DAB228();
              v299 = sub_224DAF288();
              if (os_log_type_enabled(v298, v299))
              {
                v300 = swift_slowAlloc();
                v301 = v296;
                v302 = swift_slowAlloc();
                v393[0] = v302;
                *v300 = v366;
                sub_224CB0A6C(&qword_281351720, MEMORY[0x277D46790]);
                v303 = sub_224DAFD28();
                v305 = v304;
                v306 = v301;
                v64 = v382;
                (v372)(v306, v297);
                v307 = sub_224A33F74(v303, v305, v393);

                *(v300 + 4) = v307;
                _os_log_impl(&dword_224A2F000, v298, v299, "Received incoming remote record that does not exist: %{public}s", v300, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v302);
                MEMORY[0x22AA5EED0](v302, -1, -1);
                MEMORY[0x22AA5EED0](v300, -1, -1);
              }

              else
              {

                (v372)(v296, v297);
              }

              v42 = v297;
              v308 = v356;
              v309 = v357;
              __swift_instantiateConcreteTypeFromMangledNameV2(v356, v357);
              sub_224A33088(v358, v308, v309);
              v209 = swift_allocError();
              *v310 = 0;
              swift_willThrow();
              (*v349)(v359, v367);
              goto LABEL_128;
            }

            v289 = v342;
            v290 = v325;
            v291 = v326;
            (*(v342 + 16))(v325, *(v286 + 56) + *(v342 + 72) * v287, v326);

            v292 = v324;
            (*(v289 + 32))(v324, v290, v291);
            v293 = *(v318 + 8);
            v294 = v327;
            v295 = v359;
            (*v318)(v292, v359);
            v373 = 0;
            v311 = *(v392 + 24);
            sub_224DAB348();
            sub_224A3311C(v294, v337, v338);
            (*v315)(v292, v291);
            (*v349)(v295, v367);
            v30 = v375;
            (*v360)(v364, v375);
            v42 = v386;
            (v372)(v64, v386);
          }

          v91 = v385;
          (*v370)(v385, v379);
          v90 = v368;
          v62 = v380;
          v79 = v389;
          goto LABEL_8;
        }

        v261 = v333;
        v42 = v386;
        (v165)(v333, v64, v386);
        v262 = v332;
        v263 = v379;
        (*v321)(v332, v385, v379);
        v264 = sub_224DAB228();
        v265 = sub_224DAF2A8();
        if (!os_log_type_enabled(v264, v265))
        {

          v282 = v261;
          v283 = *v370;
          (*v370)(v262, v263);
          v284 = v372;
          (v372)(v282, v42);
          (*v349)(v359, v367);
          (*v360)(v364, v30);
          (v284)(v64, v42);
          v285 = v385;
          v283(v385, v263);
          v90 = v368;
          v62 = v380;
          v91 = v285;
          goto LABEL_8;
        }

        v266 = swift_slowAlloc();
        v314 = swift_slowAlloc();
        v393[0] = v314;
        *v266 = v348;
        sub_224CB0A6C(&qword_281351720, MEMORY[0x277D46790]);
        v313 = v265;
        v267 = sub_224DAFD28();
        v268 = v261;
        v269 = v267;
        v271 = v270;
        (v372)(v268, v42);
        v272 = sub_224A33F74(v269, v271, v393);

        *(v266 + 4) = v272;
        *(v266 + 12) = 2082;
        v273 = v329;
        sub_224DAAB08();
        sub_224CB0A6C(&qword_281351A00, MEMORY[0x277CC95F0]);
        v274 = sub_224DAFD28();
        v276 = v275;
        v312 = *v360;
        v312(v273, v375);
        v277 = v262;
        v278 = *v370;
        (*v370)(v277, v263);
        v279 = sub_224A33F74(v274, v276, v393);

        *(v266 + 14) = v279;
        _os_log_impl(&dword_224A2F000, v264, v313, "Client does not want record: %{public}s:%{public}s", v266, 0x16u);
        v280 = v314;
        swift_arrayDestroy();
        MEMORY[0x22AA5EED0](v280, -1, -1);
        v281 = v266;
        v79 = v389;
        MEMORY[0x22AA5EED0](v281, -1, -1);

        (*v349)(v359, v367);
        v312(v364, v375);
        v30 = v375;
        (v372)(v64, v386);
        v91 = v385;
        v278(v385, v263);
        v42 = v386;
        v90 = v368;
        goto LABEL_114;
      }

      v42 = v386;
      (v174)(v64, v386);
      v91 = v385;
      (*v370)(v385, v379);
      v62 = v380;
      v90 = v175;
      v92 = v374;
LABEL_8:
      v92 = (v92 + v381);
      v89 = v391 - 1;
      if (v391 == 1)
      {
        goto LABEL_148;
      }
    }

    strcpy(v393, "archive-");
    BYTE1(v393[1]) = 0;
    WORD1(v393[1]) = 0;
    HIDWORD(v393[1]) = -402653184;
    v120 = 0xEF77656976657270;
    if (v109 != 3)
    {
      v120 = 0xEC0000006576696CLL;
    }

    v121 = 0x656E696C656D6974;
    if (v109 == 2)
    {
      v120 = 0xE800000000000000;
    }

    else
    {
      v121 = 0x2D6C6F72746E6F63;
    }

    v122 = 0x746F687370616E73;
    if (!v109)
    {
      v122 = 0x6C6F686563616C70;
    }

    v123 = 0xEB00000000726564;
    if (v109)
    {
      v123 = 0xE800000000000000;
    }

    if (v109 <= 1)
    {
      v113 = v122;
    }

    else
    {
      v113 = v121;
    }

    if (v109 <= 1)
    {
      v114 = v123;
    }

    else
    {
      v114 = v120;
    }

LABEL_66:
    MEMORY[0x22AA5D210](v113, v114);

    v124 = v393[1];
    if (v106 != v393[0])
    {
      goto LABEL_103;
    }

    goto LABEL_101;
  }

  sub_224A3311C(v78, &unk_27D6F4680, &unk_224DB4610);
  v84 = sub_224DAB228();
  v85 = sub_224DAF288();
  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    *v86 = 0;
    _os_log_impl(&dword_224A2F000, v84, v85, "Replicator temporary URL is not available; ignoring record updates", v86, 2u);
    MEMORY[0x22AA5EED0](v86, -1, -1);
  }
}

uint64_t sub_224CA1CC0(uint64_t a1, uint64_t a2)
{
  v122 = a2;
  v3 = sub_224DAAF28();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v121 = &v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v128 = &v120 - v7;
  v8 = sub_224DAAF48();
  v124 = *(v8 - 8);
  v9 = *(v124 + 64);
  MEMORY[0x28223BE20](v8);
  v123 = &v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224DAAE38();
  v133 = *(v11 - 8);
  v134 = v11;
  v12 = *(v133 + 64);
  MEMORY[0x28223BE20](v11);
  v126 = &v120 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3320, &unk_224DBD6F0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  *&v132 = &v120 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v136 = &v120 - v18;
  v140 = sub_224DAC268();
  v19 = *(v140 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v140);
  v125 = &v120 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v120 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v120 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = &v120 - v30;
  v32 = sub_224DA9908();
  v137 = *(v32 - 8);
  v138 = v32;
  v33 = *(v137 + 64);
  MEMORY[0x28223BE20](v32);
  v135 = &v120 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35 - 8);
  v38 = &v120 - v37;
  v39 = sub_224DAAC58();
  v130 = *(v39 - 8);
  v131 = v39;
  v40 = *(v130 + 64);
  MEMORY[0x28223BE20](v39);
  v129 = (&v120 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v139 = a1;
  sub_224DAC218();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v43 = *(v42 - 8);
  if ((*(v43 + 48))(v38, 1, v42) == 1)
  {
    sub_224A3311C(v38, &qword_27D6F56C0, &unk_224DB3580);
LABEL_7:
    v60 = v19;
    v61 = v140;
    (*(v19 + 16))(v27, v139, v140);
    v50 = sub_224DAB228();
    v62 = sub_224DAF288();
    if (!os_log_type_enabled(v50, v62))
    {

      (*(v60 + 8))(v27, v61);
      goto LABEL_11;
    }

    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v141[0] = v64;
    *v63 = 136446210;
    sub_224CB0A6C(&qword_281350E40, MEMORY[0x277CF9978]);
    v65 = sub_224DAFD28();
    v66 = v60;
    v68 = v67;
    (*(v66 + 8))(v27, v61);
    v69 = sub_224A33F74(v65, v68, v141);

    *(v63 + 4) = v69;
    _os_log_impl(&dword_224A2F000, v50, v62, "Cannot replicate an archive belonging to a local host %{public}s", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v64);
    MEMORY[0x22AA5EED0](v64, -1, -1);
    v59 = v63;
LABEL_9:
    MEMORY[0x22AA5EED0](v59, -1, -1);

LABEL_11:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5CB0, &unk_224DBD700);
    sub_224A33088(&qword_27D6F5CB8, &qword_27D6F5CB0, &unk_224DBD700);
    swift_allocError();
    *v70 = 0;
    return swift_willThrow();
  }

  v120 = v8;
  sub_224DAA1F8();
  v45 = v44;
  (*(v43 + 8))(v38, v42);
  if (!v45)
  {
    goto LABEL_7;
  }

  sub_224DA9888();

  v47 = v137;
  v46 = v138;
  v48 = v19;
  if ((*(v137 + 48))(v31, 1, v138) == 1)
  {
    sub_224A3311C(v31, &unk_27D6F5630, &unk_224DB34C0);
    v49 = v140;
    (*(v19 + 16))(v25, v139, v140);
    v50 = sub_224DAB228();
    v51 = sub_224DAF288();
    if (!os_log_type_enabled(v50, v51))
    {

      (*(v48 + 8))(v25, v49);
      goto LABEL_11;
    }

    v52 = swift_slowAlloc();
    v53 = v48;
    v54 = swift_slowAlloc();
    v141[0] = v54;
    *v52 = 136446210;
    sub_224CB0A6C(&qword_281350E40, MEMORY[0x277CF9978]);
    v55 = sub_224DAFD28();
    v57 = v56;
    (*(v53 + 8))(v25, v49);
    v58 = sub_224A33F74(v55, v57, v141);

    *(v52 + 4) = v58;
    _os_log_impl(&dword_224A2F000, v50, v51, "Cannot replicate an archive if we have a bad relationship ID %{public}s", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v54);
    MEMORY[0x22AA5EED0](v54, -1, -1);
    v59 = v52;
    goto LABEL_9;
  }

  v72 = v135;
  (*(v47 + 32))(v135, v31, v46);
  v73 = v142;
  v74 = v142[9];
  __swift_project_boxed_opaque_existential_1(v142 + 5, v142[8]);
  v75 = *(v74 + 16);
  v76 = v136;
  sub_224DAAC98();
  v77 = v132;
  sub_224A3796C(v76, v132, &qword_27D6F3320, &unk_224DBD6F0);
  v79 = v133;
  v78 = v134;
  if ((*(v133 + 48))(v77, 1, v134) == 1)
  {
    sub_224A3311C(v77, &qword_27D6F3320, &unk_224DBD6F0);
    v80 = v125;
    v81 = v140;
    (*(v48 + 16))(v125, v139, v140);
    v82 = sub_224DAB228();
    v83 = sub_224DAF288();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = v48;
      v86 = swift_slowAlloc();
      v141[0] = v86;
      *v84 = 136446210;
      sub_224CB0A6C(&qword_281350E40, MEMORY[0x277CF9978]);
      v87 = sub_224DAFD28();
      v89 = v88;
      (*(v85 + 8))(v80, v81);
      v90 = sub_224A33F74(v87, v89, v141);
      v46 = v138;

      *(v84 + 4) = v90;
      _os_log_impl(&dword_224A2F000, v82, v83, "Cannot replicate an archive if we have no relationship %{public}s", v84, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v86);
      MEMORY[0x22AA5EED0](v86, -1, -1);
      v91 = v84;
      v76 = v136;
      MEMORY[0x22AA5EED0](v91, -1, -1);
    }

    else
    {

      (*(v48 + 8))(v80, v81);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5CB0, &unk_224DBD700);
    sub_224A33088(&qword_27D6F5CB8, &qword_27D6F5CB0, &unk_224DBD700);
    swift_allocError();
    *v108 = 0;
    swift_willThrow();
    sub_224A3311C(v76, &qword_27D6F3320, &unk_224DBD6F0);
    return (*(v137 + 8))(v135, v46);
  }

  else
  {
    v92 = v126;
    (*(v79 + 32))(v126, v77, v78);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BC0, &unk_224DB9C60);
    v93 = *(v47 + 72);
    v94 = v78;
    v95 = (*(v47 + 80) + 32) & ~*(v47 + 80);
    v96 = v73;
    v97 = swift_allocObject();
    v132 = xmmword_224DB3100;
    *(v97 + 16) = xmmword_224DB3100;
    sub_224DAAD98();
    (*(v79 + 8))(v92, v94);
    sub_224A3311C(v136, &qword_27D6F3320, &unk_224DBD6F0);
    v98 = v138;
    (*(v47 + 8))(v72, v138);
    v100 = v129;
    v99 = v130;
    *v129 = v97;
    v101 = v131;
    (*(v99 + 104))(v100, *MEMORY[0x277D46558], v131);
    v136 = sub_224B942B8(*(v96 + 32));
    v102 = v128;
    (*(v47 + 56))(v128, 1, 1, v98);
    sub_224DAAD38();
    v103 = v140;
    v141[3] = v140;
    v141[4] = sub_224CB0A6C(&qword_27D6F5CA8, MEMORY[0x277CF9978]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v141);
    (*(v48 + 16))(boxed_opaque_existential_1, v139, v103);
    v105 = v127;
    v106 = sub_224DAAD28();
    if (v105)
    {

      sub_224CB2720(v102, MEMORY[0x277D46780]);
      (*(v99 + 8))(v100, v101);
      return __swift_destroy_boxed_opaque_existential_1(v141);
    }

    else
    {
      v109 = v106;
      v110 = v102;
      v111 = v107;
      __swift_destroy_boxed_opaque_existential_1(v141);
      sub_224DA96C8();
      sub_224CB298C(v110, v121, MEMORY[0x277D46780]);
      v112 = v123;
      sub_224DAAEE8();
      sub_224A78024(v109, v111);
      sub_224CB2720(v110, MEMORY[0x277D46780]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3368, &qword_224DB3B10);
      v113 = v124;
      v114 = *(v124 + 72);
      v115 = (*(v124 + 80) + 32) & ~*(v124 + 80);
      v116 = swift_allocObject();
      *(v116 + 16) = v132;
      v117 = v120;
      (*(v113 + 16))(v116 + v115, v112, v120);
      v118 = v129;
      sub_224C6BB2C(v116, v129, v122);
      swift_setDeallocating();
      v119 = *(v113 + 8);
      v119(v116 + v115, v117);
      swift_deallocClassInstance();
      v119(v112, v117);
      return (*(v130 + 8))(v118, v131);
    }
  }
}

uint64_t sub_224CA2C54(uint64_t a1)
{
  v3 = v1;
  v5 = sub_224DAB0B8();
  v49 = *(v5 - 8);
  v50 = v5;
  v6 = *(v49 + 64);
  MEMORY[0x28223BE20](v5);
  v48 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DAAF28();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v45 - v13;
  v53 = sub_224DAAF48();
  v47 = *(v53 - 8);
  v15 = *(v47 + 64);
  MEMORY[0x28223BE20](v53);
  v51 = v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = v45 - v19;
  sub_224DAC218();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    return sub_224A3311C(v20, &qword_27D6F56C0, &unk_224DB3580);
  }

  sub_224DAA1F8();
  v25 = v24;
  result = (*(v22 + 8))(v20, v21);
  if (v25)
  {

    v26 = sub_224B942B8(*(v3 + 32));
    v28 = v27;
    v29 = sub_224DA9908();
    (*(*(v29 - 8) + 56))(v14, 1, 1, v29);
    sub_224DAAD38();
    v30 = sub_224DAC268();
    v52[3] = v30;
    v52[4] = sub_224CB0A6C(&qword_27D6F5CA8, MEMORY[0x277CF9978]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v52);
    (*(*(v30 - 8) + 16))(boxed_opaque_existential_1, a1, v30);
    v32 = sub_224DAAD28();
    if (v2)
    {
      sub_224CB2720(v14, MEMORY[0x277D46780]);

      return __swift_destroy_boxed_opaque_existential_1(v52);
    }

    else
    {
      v34 = v32;
      v35 = v33;
      __swift_destroy_boxed_opaque_existential_1(v52);
      sub_224DA96C8();
      v45[2] = v26;
      v46 = v3;
      v45[1] = v28;
      sub_224CB298C(v14, v12, MEMORY[0x277D46780]);
      v36 = v51;
      sub_224DAAEE8();
      sub_224A78024(v34, v35);
      sub_224CB2720(v14, MEMORY[0x277D46780]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3368, &qword_224DB3B10);
      v37 = v47;
      v38 = *(v47 + 72);
      v39 = (*(v47 + 80) + 32) & ~*(v47 + 80);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_224DB3100;
      (*(v37 + 16))(v40 + v39, v36, v53);
      v42 = v48;
      v41 = v49;
      v43 = v50;
      (*(v49 + 104))(v48, *MEMORY[0x277D46820], v50);
      v44 = v46[10];
      __swift_project_boxed_opaque_existential_1(v46 + 5, v46[8]);
      sub_224DAABF8();

      (*(v41 + 8))(v42, v43);
      return (*(v37 + 8))(v51, v53);
    }
  }

  return result;
}

uint64_t sub_224CA3234(uint64_t a1, void *a2)
{
  v4 = sub_224DAA428();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2[3];
  v10 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v9);
  v13 = 0;
  (*(v5 + 104))(v8, *MEMORY[0x277CFA038], v4);
  (*(*(*(v10 + 8) + 8) + 56))(&v13, v8, a1, v9);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_224CA3378()
{
  v1 = v0;
  v2 = v0[20];
  v3 = v0[21];
  __swift_project_boxed_opaque_existential_1(v0 + 17, v2);
  (*(*(v3 + 8) + 80))(sub_224CB2950, v0, v2);
  v4 = v0[30];
  v5 = v1[31];
  v6 = __swift_project_boxed_opaque_existential_1(v1 + 27, v1[30]);
  v12 = v4;
  v13 = *(v5 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v6, v4);
  v8 = v12;
  v9 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  (*(*(v9 + 8) + 80))(sub_224CB2950, v1, v8);
  __swift_destroy_boxed_opaque_existential_1(v11);
  return sub_224CA3CE8();
}

uint64_t sub_224CA349C()
{
  sub_224CA35EC();
  v1 = __swift_project_boxed_opaque_existential_1((v0 + 296), *(v0 + 320));
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_224CB29F4;
  *(v4 + 24) = v2;
  v7[4] = sub_224BC4B74;
  v7[5] = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_224A9B6F8;
  v7[3] = &block_descriptor_116;
  v5 = _Block_copy(v7);

  dispatch_sync(v3, v5);
  _Block_release(v5);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  else
  {
    sub_224CA39EC();
    return sub_224CA3CE8();
  }

  return result;
}

uint64_t sub_224CA35EC()
{
  sub_224DA9E78();
  sub_224DA9E68();
  v1 = sub_224DA9E48();

  if (v1)
  {
    return result;
  }

  v3 = sub_224DAAAD8();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_224DAAAC8();
  if (sub_224DAAAB8())
  {
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v6 = sub_224DAB258();
    __swift_project_value_buffer(v6, qword_281365120);
    v7 = sub_224DAB228();
    v8 = sub_224DAF2A8();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_8;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "Migrated replicator enabled state; client is enabled";
  }

  else
  {
    v11 = v0[8];
    __swift_project_boxed_opaque_existential_1(v0 + 4, v0[7]);
    sub_224DAAB28();
    sub_224DAAAA8();
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v12 = sub_224DAB258();
    __swift_project_value_buffer(v12, qword_281365120);
    v7 = sub_224DAB228();
    v8 = sub_224DAF2A8();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_8;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "Migrated replicator enabled state; client is disabled";
  }

  _os_log_impl(&dword_224A2F000, v7, v8, v10, v9, 2u);
  MEMORY[0x22AA5EED0](v9, -1, -1);
LABEL_8:

  sub_224DA9E68();
  sub_224DA9E58();
}

uint64_t sub_224CA39EC()
{
  v1 = v0;
  sub_224DA9E78();
  sub_224DA9E68();
  sub_224DA9E18();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4730, &unk_224DBAF00);
  sub_224A33088(&qword_281351010, &unk_27D6F4730, &unk_224DBAF00);
  v2 = sub_224DAB488();

  v3 = v1[62];
  v1[62] = v2;

  sub_224DA9E68();
  v4 = sub_224DA9DE8();

  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v5 = sub_224DAB258();
  __swift_project_value_buffer(v5, qword_281365120);
  v6 = sub_224DAB228();
  v7 = sub_224DAF2A8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67240192;
    *(v8 + 4) = v4 & 1;
    _os_log_impl(&dword_224A2F000, v6, v7, "Remote Widgets initial enabled state is: %{BOOL,public}d", v8, 8u);
    MEMORY[0x22AA5EED0](v8, -1, -1);
  }

  v9 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v1[7]);
  return sub_224DAAB28();
}

uint64_t sub_224CA3CE8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4620, &qword_224DB34D0);
  v3 = *(*(v2 - 8) + 64);
  result = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v50[-1] - v5;
  v7 = v0[3];
  if (v7)
  {
    v8 = v0[57];
    sub_224D8F43C();
    v9 = v1[61];
    v10 = qword_2813652D8;
    if ((*(v9 + qword_2813652D8) & 1) == 0)
    {
      *(v9 + qword_2813652D8) = 1;
      v11 = sub_224DAF128();
      (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
      v12 = swift_allocObject();
      v12[2] = 0;
      v12[3] = 0;
      v12[4] = v9;

      sub_224D8E744(0, 0, v6, &unk_224DBD678, v12);

      v10 = qword_2813652D8;
    }

    v13 = v1[59];
    if ((*(v13 + v10) & 1) == 0)
    {
      *(v13 + v10) = 1;
      v14 = sub_224DAF128();
      (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
      v15 = swift_allocObject();
      v15[2] = 0;
      v15[3] = 0;
      v15[4] = v13;

      sub_224D8E744(0, 0, v6, &unk_224DBD680, v15);

      v10 = qword_2813652D8;
    }

    v16 = v1[60];
    if ((*(v16 + v10) & 1) == 0)
    {
      *(v16 + v10) = 1;
      v17 = sub_224DAF128();
      (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
      v18 = swift_allocObject();
      v18[2] = 0;
      v18[3] = 0;
      v18[4] = v16;

      sub_224D8E744(0, 0, v6, &unk_224DBD688, v18);

      v10 = qword_2813652D8;
    }

    v19 = v1[58];
    if ((*(v19 + v10) & 1) == 0)
    {
      *(v19 + v10) = 1;
      v20 = sub_224DAF128();
      (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
      v21 = swift_allocObject();
      v21[2] = 0;
      v21[3] = 0;
      v21[4] = v19;

      sub_224D8E744(0, 0, v6, &unk_224DBD690, v21);
    }

    sub_224CA459C();
    sub_224CA46A4();
    sub_224CA4A1C();
    sub_224CA4D74();
    sub_224CA50CC();
    sub_224CA5424();
    sub_224CA577C();
    sub_224CA5AE0();
    sub_224CA5E48(v16, (v1 + 17), (v1 + 52), 1, 0, 0);
    v22 = v1[30];
    v23 = v1[31];
    v24 = __swift_project_boxed_opaque_existential_1(v1 + 27, v22);
    v51 = v22;
    v52 = *(v23 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v50);
    (*(*(v22 - 8) + 16))(boxed_opaque_existential_1, v24, v22);
    sub_224CA5E48(v19, v50, (v1 + 52), 0, 0, 0);
    result = __swift_destroy_boxed_opaque_existential_1(v50);
  }

  if ((v7 & 2) != 0)
  {
    v26 = v1[57];
    sub_224D8F43C();
    v27 = v1[61];
    v28 = qword_2813652D8;
    if ((*(v27 + qword_2813652D8) & 1) == 0)
    {
      *(v27 + qword_2813652D8) = 1;
      v29 = sub_224DAF128();
      (*(*(v29 - 8) + 56))(v6, 1, 1, v29);
      v30 = swift_allocObject();
      v30[2] = 0;
      v30[3] = 0;
      v30[4] = v27;

      sub_224D8E744(0, 0, v6, &unk_224DBD640, v30);

      v28 = qword_2813652D8;
    }

    v31 = v1[59];
    if ((*(v31 + v28) & 1) == 0)
    {
      *(v31 + v28) = 1;
      v32 = sub_224DAF128();
      (*(*(v32 - 8) + 56))(v6, 1, 1, v32);
      v33 = swift_allocObject();
      v33[2] = 0;
      v33[3] = 0;
      v33[4] = v31;

      sub_224D8E744(0, 0, v6, &unk_224DBD648, v33);

      v28 = qword_2813652D8;
    }

    v34 = v1[60];
    if ((*(v34 + v28) & 1) == 0)
    {
      *(v34 + v28) = 1;
      v35 = sub_224DAF128();
      (*(*(v35 - 8) + 56))(v6, 1, 1, v35);
      v36 = swift_allocObject();
      v36[2] = 0;
      v36[3] = 0;
      v36[4] = v34;

      sub_224D8E744(0, 0, v6, &unk_224DBD658, v36);

      v28 = qword_2813652D8;
    }

    v37 = v1[58];
    if ((*(v37 + v28) & 1) == 0)
    {
      *(v37 + v28) = 1;
      v38 = sub_224DAF128();
      (*(*(v38 - 8) + 56))(v6, 1, 1, v38);
      v39 = swift_allocObject();
      v39[2] = 0;
      v39[3] = 0;
      v39[4] = v37;

      sub_224D8E744(0, 0, v6, &unk_224DBD660, v39);
    }

    v40 = sub_224DAF128();
    (*(*(v40 - 8) + 56))(v6, 1, 1, v40);
    v41 = swift_allocObject();
    v41[2] = 0;
    v41[3] = 0;
    v41[4] = v1;

    sub_224D8E744(0, 0, v6, &unk_224DBD670, v41);

    sub_224CA675C();
    v42 = sub_224D8F378();
    sub_224CA6AC4(v42, 0);

    v43 = sub_224C9AA34(&qword_27D6F5668, &qword_224DBD770, &qword_281350FC0);
    sub_224CA6AC4(v43, 1);

    v44 = sub_224C9AA34(&qword_27D6F5668, &qword_224DBD770, &qword_281350FC0);
    sub_224CA6AC4(v44, 2);

    sub_224CA6E08(v1 + 17, v34, 0, 0);
    v45 = v1[30];
    v46 = v1[31];
    v47 = __swift_project_boxed_opaque_existential_1(v1 + 27, v45);
    v51 = v45;
    v52 = *(v46 + 8);
    v48 = __swift_allocate_boxed_opaque_existential_1(v50);
    (*(*(v45 - 8) + 16))(v48, v47, v45);

    sub_224CA6E08(v50, v37, sub_224CB0998, v1);

    return __swift_destroy_boxed_opaque_existential_1(v50);
  }

  return result;
}

uint64_t sub_224CA459C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4620, &qword_224DB34D0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v8 - v3;
  v5 = sub_224DAF128();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;

  sub_224D8E744(0, 0, v4, &unk_224DBD768, v6);
}

uint64_t sub_224CA46A4()
{
  v20 = *v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v19 - v3;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5DB0, &unk_224DB35E0);
  v5 = *(v19 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v19);
  v8 = &v19 - v7;
  v10 = v0[20];
  v9 = v0[21];
  __swift_project_boxed_opaque_existential_1(v0 + 17, v10);
  v21 = (*(*(v9 + 8) + 48))(768, v10);
  v11 = v0[2];
  v22 = v11;
  v12 = sub_224DAF358();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5140, &unk_224DBAE80);
  sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  sub_224A33088(&qword_281351140, &unk_27D6F5140, &unk_224DBAE80);
  sub_224B67CF4();
  sub_224DAB448();
  sub_224A3311C(v4, &qword_27D6F5090, &qword_224DB5C30);

  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v16 = v20;
  v15[2] = *(v20 + 104);
  v15[3] = *(v16 + 112);
  v15[4] = v14;
  sub_224A33088(&qword_2813512B0, &qword_27D6F5DB0, &unk_224DB35E0);
  v17 = v19;
  sub_224DAB488();

  (*(v5 + 8))(v8, v17);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();
}

uint64_t sub_224CA4A1C()
{
  v1 = v0;
  v20 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19 - v4;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5CD8, &qword_224DBD730);
  v6 = *(v19 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v19);
  v9 = &v19 - v8;
  v10 = *__swift_project_boxed_opaque_existential_1(v0 + 37, v0[40]);
  v21 = sub_224D968E0();
  v22 = v1[2];
  v11 = v22;
  v12 = sub_224DAF358();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5CE0, &qword_224DBD738);
  sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  sub_224A33088(&qword_281351068, &qword_27D6F5CE0, &qword_224DBD738);
  sub_224B67CF4();
  sub_224DAB448();
  sub_224A3311C(v5, &qword_27D6F5090, &qword_224DB5C30);

  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v16 = v20;
  v15[2] = *(v20 + 104);
  v15[3] = *(v16 + 112);
  v15[4] = v14;
  sub_224A33088(&qword_281351240, &qword_27D6F5CD8, &qword_224DBD730);
  v17 = v19;
  sub_224DAB488();

  (*(v6 + 8))(v9, v17);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();
}

uint64_t sub_224CA4D74()
{
  v1 = v0;
  v20 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19 - v4;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5CC0, &unk_224DBD710);
  v6 = *(v19 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v19);
  v9 = &v19 - v8;
  v10 = *__swift_project_boxed_opaque_existential_1(v0 + 22, v0[25]);
  v21 = sub_224CE80BC();
  v22 = v1[2];
  v11 = v22;
  v12 = sub_224DAF358();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5CC8, qword_224DBE8A0);
  sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  sub_224A33088(&qword_281351090, &qword_27D6F5CC8, qword_224DBE8A0);
  sub_224B67CF4();
  sub_224DAB448();
  sub_224A3311C(v5, &qword_27D6F5090, &qword_224DB5C30);

  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v16 = v20;
  v15[2] = *(v20 + 104);
  v15[3] = *(v16 + 112);
  v15[4] = v14;
  sub_224A33088(&qword_281351258, &qword_27D6F5CC0, &unk_224DBD710);
  v17 = v19;
  sub_224DAB488();

  (*(v6 + 8))(v9, v17);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();
}

uint64_t sub_224CA50CC()
{
  v1 = v0;
  v20 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19 - v4;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5360, &qword_224DBBB08);
  v6 = *(v19 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v19);
  v9 = &v19 - v8;
  v10 = *__swift_project_boxed_opaque_existential_1(v0 + 32, v0[35]);
  v21 = sub_224D5D8B8();
  v22 = v1[2];
  v11 = v22;
  v12 = sub_224DAF358();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F50B0, &qword_224DBAE30);
  sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  sub_224A33088(&unk_2813510D0, &unk_27D6F50B0, &qword_224DBAE30);
  sub_224B67CF4();
  sub_224DAB448();
  sub_224A3311C(v5, &qword_27D6F5090, &qword_224DB5C30);

  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v16 = v20;
  v15[2] = *(v20 + 104);
  v15[3] = *(v16 + 112);
  v15[4] = v14;
  sub_224A33088(&qword_281351278, &unk_27D6F5360, &qword_224DBBB08);
  v17 = v19;
  sub_224DAB488();

  (*(v6 + 8))(v9, v17);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();
}

uint64_t sub_224CA5424()
{
  v1 = v0;
  v20 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19 - v4;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5C98, &unk_224DBD6C0);
  v6 = *(v19 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v19);
  v9 = &v19 - v8;
  v10 = *__swift_project_boxed_opaque_existential_1(v0 + 32, v0[35]);
  v21 = sub_224D5D920();
  v22 = v1[2];
  v11 = v22;
  v12 = sub_224DAF358();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F54E0, &qword_224DBBBB0);
  sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  sub_224A33088(&unk_2813510F8, &unk_27D6F54E0, &qword_224DBBBB0);
  sub_224B67CF4();
  sub_224DAB448();
  sub_224A3311C(v5, &qword_27D6F5090, &qword_224DB5C30);

  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v16 = v20;
  v15[2] = *(v20 + 104);
  v15[3] = *(v16 + 112);
  v15[4] = v14;
  sub_224A33088(&qword_281351290, &qword_27D6F5C98, &unk_224DBD6C0);
  v17 = v19;
  sub_224DAB488();

  (*(v6 + 8))(v9, v17);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();
}

uint64_t sub_224CA577C()
{
  v19 = *v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v18 - v3;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5360, &qword_224DBBB08);
  v5 = *(v18 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v18);
  v8 = &v18 - v7;
  v9 = v0[47];
  __swift_project_boxed_opaque_existential_1(v0 + 43, v0[46]);
  v20 = sub_224DAD7A8();
  v10 = v0[2];
  v21 = v10;
  v11 = sub_224DAF358();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F50B0, &qword_224DBAE30);
  sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  sub_224A33088(&unk_2813510D0, &unk_27D6F50B0, &qword_224DBAE30);
  sub_224B67CF4();
  sub_224DAB448();
  sub_224A3311C(v4, &qword_27D6F5090, &qword_224DB5C30);

  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v15 = v19;
  v14[2] = *(v19 + 104);
  v14[3] = *(v15 + 112);
  v14[4] = v13;
  sub_224A33088(&qword_281351278, &unk_27D6F5360, &qword_224DBBB08);
  v16 = v18;
  sub_224DAB488();

  (*(v5 + 8))(v8, v16);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();
}

uint64_t sub_224CA5AE0()
{
  v19 = *v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v18 - v3;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5C98, &unk_224DBD6C0);
  v5 = *(v18 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v18);
  v8 = &v18 - v7;
  v9 = v0[49];
  __swift_project_boxed_opaque_existential_1(v0 + 43, v0[46]);
  v20 = sub_224DAD898();
  v10 = v0[2];
  v21 = v10;
  v11 = sub_224DAF358();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F54E0, &qword_224DBBBB0);
  sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  sub_224A33088(&unk_2813510F8, &unk_27D6F54E0, &qword_224DBBBB0);
  sub_224B67CF4();
  sub_224DAB448();
  sub_224A3311C(v4, &qword_27D6F5090, &qword_224DB5C30);

  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v15 = v19;
  v14[2] = *(v19 + 104);
  v14[3] = *(v15 + 112);
  v14[4] = v13;
  sub_224A33088(&qword_281351290, &qword_27D6F5C98, &unk_224DBD6C0);
  v16 = v18;
  sub_224DAB488();

  (*(v5 + 8))(v8, v16);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();
}

uint64_t sub_224CA5E48(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v24 = a2;
  v26 = a5;
  v27 = a6;
  v25 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5C88, &qword_224DBD6A0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - v14;
  *&v28[0] = sub_224B93AC0();
  v16 = *(v6 + 16);
  v29 = v16;
  v17 = sub_224DAF358();
  (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
  v18 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5C90, &qword_224DBD6A8);
  sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  sub_224A33088(&qword_281351198, &qword_27D6F5C90, &qword_224DBD6A8);
  sub_224B67CF4();
  sub_224DAB448();
  sub_224A3311C(v10, &qword_27D6F5090, &qword_224DB5C30);

  sub_224A3317C(v24, v28);
  v19 = swift_allocObject();
  *(v19 + 16) = v25;
  sub_224A39D14(v28, v19 + 24);
  v20 = v26;
  v21 = v27;
  *(v19 + 64) = v26;
  *(v19 + 72) = v21;
  sub_224A364AC(v20);
  sub_224A33088(&qword_2813512D8, &qword_27D6F5C88, &qword_224DBD6A0);
  sub_224DAB488();

  (*(v12 + 8))(v15, v11);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();
}

uint64_t sub_224CA616C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33A8, &unk_224DB35D0);
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v4[6] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33B0, &qword_224DBC7F0);
  v4[7] = v8;
  v9 = *(v8 - 8);
  v4[8] = v9;
  v10 = *(v9 + 64) + 15;
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224CA62A0, 0, 0);
}

uint64_t sub_224CA62A0()
{
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v4[10];
  __swift_project_boxed_opaque_existential_1(v4 + 4, v4[7]);
  v7 = *(v6 + 24);
  sub_224DAACA8();
  sub_224DAF158();
  (*(v3 + 8))(v2, v5);
  v8 = *(MEMORY[0x277D85798] + 4);
  v9 = swift_task_alloc();
  v0[10] = v9;
  *v9 = v0;
  v9[1] = sub_224CA63B4;
  v10 = v0[9];
  v11 = v0[7];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v11);
}

uint64_t sub_224CA63B4()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_224CA64B0, 0, 0);
}

uint64_t sub_224CA64B0()
{
  if (v0[2])
  {
    sub_224CA65E4(v0[2], *(v0[3] + 480));

    v1 = *(MEMORY[0x277D85798] + 4);
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_224CA63B4;
    v3 = v0[9];
    v4 = v0[7];

    return MEMORY[0x2822003E8](v0 + 2, 0, 0, v4);
  }

  else
  {
    v5 = v0[6];
    (*(v0[8] + 8))(v0[9], v0[7]);

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_224CA65E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 16);
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = v3;
  v7[4] = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_224CB2870;
  *(v8 + 24) = v7;
  v11[4] = sub_224A8A838;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_224A9B6F8;
  v11[3] = &block_descriptor_38;
  v9 = _Block_copy(v11);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_224CA675C()
{
  v19 = *v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v18 - v3;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D08, &qword_224DBD798);
  v5 = *(v18 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v18);
  v8 = &v18 - v7;
  v9 = v0[50];
  __swift_project_boxed_opaque_existential_1(v0 + 43, v0[46]);
  v20 = sub_224DADFD8();
  v10 = v0[2];
  v21 = v10;
  v11 = sub_224DAF358();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5470, &qword_224DBD7A0);
  sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  sub_224A33088(&qword_281351128, &unk_27D6F5470, &qword_224DBD7A0);
  sub_224B67CF4();
  sub_224DAB448();
  sub_224A3311C(v4, &qword_27D6F5090, &qword_224DB5C30);

  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v15 = v19;
  v14[2] = *(v19 + 104);
  v14[3] = *(v15 + 112);
  v14[4] = v13;
  sub_224A33088(&unk_2813512A0, &qword_27D6F5D08, &qword_224DBD798);
  v16 = v18;
  sub_224DAB488();

  (*(v5 + 8))(v8, v16);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();
}

uint64_t sub_224CA6AC4(uint64_t a1, int a2)
{
  v3 = v2;
  v22 = a2;
  v21 = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5CF8, &qword_224DBD778);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v21 - v12;
  v23 = a1;
  v24 = v3[2];
  v14 = v24;
  v15 = sub_224DAF358();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  v16 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D00, &unk_224DBD780);
  sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  sub_224A33088(&qword_2813511B8, &qword_27D6F5D00, &unk_224DBD780);
  sub_224B67CF4();
  sub_224DAB448();
  sub_224A3311C(v8, &qword_27D6F5090, &qword_224DB5C30);

  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v19 = v21;
  *(v18 + 16) = *(v21 + 104);
  *(v18 + 24) = *(v19 + 112);
  *(v18 + 32) = v17;
  *(v18 + 40) = v22;
  sub_224A33088(&qword_2813512F8, &qword_27D6F5CF8, &qword_224DBD778);
  sub_224DAB488();

  (*(v10 + 8))(v13, v9);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();
}

uint64_t sub_224CA6E08(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a2;
  v30 = a4;
  v28 = a3;
  v26 = *v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v26 - v8;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5DB0, &unk_224DB35E0);
  v31 = *(v27 - 8);
  v10 = *(v31 + 64);
  MEMORY[0x28223BE20](v27);
  v12 = &v26 - v11;
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  *&v32[0] = (*(*(v14 + 8) + 40))(768, v13);
  v15 = v4[2];
  v33 = v15;
  v16 = sub_224DAF358();
  (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
  v17 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5140, &unk_224DBAE80);
  sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  sub_224A33088(&qword_281351140, &unk_27D6F5140, &unk_224DBAE80);
  sub_224B67CF4();
  sub_224DAB448();
  sub_224A3311C(v9, &qword_27D6F5090, &qword_224DB5C30);

  v18 = swift_allocObject();
  swift_weakInit();
  sub_224A3317C(a1, v32);
  v19 = swift_allocObject();
  v20 = v26;
  v19[2] = *(v26 + 104);
  v19[3] = *(v20 + 112);
  v19[4] = v18;
  sub_224A39D14(v32, (v19 + 5));
  v21 = v28;
  v22 = v29;
  v23 = v30;
  v19[10] = v28;
  v19[11] = v23;
  v19[12] = v22;
  sub_224A364AC(v21);
  sub_224A33088(&qword_2813512B0, &qword_27D6F5DB0, &unk_224DB35E0);

  v24 = v27;
  sub_224DAB488();

  (*(v31 + 8))(v12, v24);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();
}

void sub_224CA71C8(uint64_t a1)
{
  v3 = sub_224DAB8C8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + 16);
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x277D85200], v3);
  v9 = v8;
  LOBYTE(v8) = sub_224DAB8F8();
  (*(v4 + 8))(v7, v3);
  if (v8)
  {
    v10 = *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3828, &unk_224DBD6B0) + 36));
    v11 = *(v1 + 112);
    if (v10)
    {
      v12 = v10;
      sub_224BC2038(a1, v12);
    }

    else
    {
      sub_224BC25F4(a1);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_224CA7320()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  v1 = v0[13];

  v2 = v0[14];

  v3 = v0[15];
  swift_unknownObjectRelease();
  v4 = v0[16];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  __swift_destroy_boxed_opaque_existential_1(v0 + 27);
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  __swift_destroy_boxed_opaque_existential_1(v0 + 37);
  __swift_destroy_boxed_opaque_existential_1(v0 + 43);
  __swift_destroy_boxed_opaque_existential_1(v0 + 52);
  v5 = v0[57];

  v6 = v0[58];

  v7 = v0[59];

  v8 = v0[60];

  v9 = v0[61];

  v10 = v0[62];
}

uint64_t sub_224CA73D0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  v1 = *(v0 + 104);

  v2 = *(v0 + 112);

  v3 = *(v0 + 120);
  swift_unknownObjectRelease();
  v4 = *(v0 + 128);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 136));
  __swift_destroy_boxed_opaque_existential_1((v0 + 176));
  __swift_destroy_boxed_opaque_existential_1((v0 + 216));
  __swift_destroy_boxed_opaque_existential_1((v0 + 256));
  __swift_destroy_boxed_opaque_existential_1((v0 + 296));
  __swift_destroy_boxed_opaque_existential_1((v0 + 344));
  __swift_destroy_boxed_opaque_existential_1((v0 + 416));
  v5 = *(v0 + 456);

  v6 = *(v0 + 464);

  v7 = *(v0 + 472);

  v8 = *(v0 + 480);

  v9 = *(v0 + 488);

  v10 = *(v0 + 496);

  return v0;
}

uint64_t sub_224CA7480()
{
  sub_224CA73D0();

  return swift_deallocClassInstance();
}

unint64_t sub_224CA7514()
{
  sub_224DAF938();

  v1 = v0[42];
  __swift_project_boxed_opaque_existential_1(v0 + 37, v0[40]);
  v2 = sub_224DA9F68();
  MEMORY[0x22AA5D210](v2);

  return 0xD000000000000025;
}

uint64_t sub_224CA75F8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_224CA7634(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3320, &unk_224DBD6F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v37 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v37 - v9;
  v11 = sub_224DA9908();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  sub_224DAA1F8();
  if (v16)
  {
    sub_224DA9888();

    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_224A3311C(v10, &unk_27D6F5630, &unk_224DB34C0);
      if (qword_2813516C8 != -1)
      {
        swift_once();
      }

      v17 = sub_224DAB258();
      __swift_project_value_buffer(v17, qword_281365120);

      v18 = sub_224DAB228();
      v19 = sub_224DAF288();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v38 = v21;
        *v20 = 136446210;
        sub_224A33088(&qword_281351860, &unk_27D6F30D0, &unk_224DB2AC0);
        v22 = sub_224DAFD28();
        v24 = sub_224A33F74(v22, v23, &v38);

        *(v20 + 4) = v24;
        _os_log_impl(&dword_224A2F000, v18, v19, "Found remote host with an invalid relationship ID: %{public}s", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v21);
        MEMORY[0x22AA5EED0](v21, -1, -1);
        MEMORY[0x22AA5EED0](v20, -1, -1);
      }

      return 0;
    }

    (*(v12 + 32))(v15, v10, v11);
    v25 = a2[10];
    __swift_project_boxed_opaque_existential_1(a2 + 4, a2[7]);
    v26 = *(v25 + 16);
    sub_224DAAC98();
    v27 = sub_224DAAE38();
    if ((*(*(v27 - 8) + 48))(v6, 1, v27) == 1)
    {
      sub_224A3311C(v6, &qword_27D6F3320, &unk_224DBD6F0);
      if (qword_2813516C8 != -1)
      {
        swift_once();
      }

      v28 = sub_224DAB258();
      __swift_project_value_buffer(v28, qword_281365120);

      v29 = sub_224DAB228();
      v30 = sub_224DAF288();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v38 = v37;
        *v31 = 136446210;
        sub_224A33088(&qword_281351860, &unk_27D6F30D0, &unk_224DB2AC0);
        v32 = sub_224DAFD28();
        v34 = sub_224A33F74(v32, v33, &v38);

        *(v31 + 4) = v34;
        _os_log_impl(&dword_224A2F000, v29, v30, "Found remote host for a missing relationship ID: %{public}s", v31, 0xCu);
        v35 = v37;
        __swift_destroy_boxed_opaque_existential_1(v37);
        MEMORY[0x22AA5EED0](v35, -1, -1);
        MEMORY[0x22AA5EED0](v31, -1, -1);
      }

      (*(v12 + 8))(v15, v11);
      return 0;
    }

    (*(v12 + 8))(v15, v11);
    sub_224A3311C(v6, &qword_27D6F3320, &unk_224DBD6F0);
  }

  return 1;
}

uint64_t sub_224CA7BC0(unsigned __int8 *a1, void *a2)
{
  v3 = *a1;
  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v4 = sub_224DAB258();
  __swift_project_value_buffer(v4, qword_281365120);
  v5 = sub_224DAB228();
  v6 = sub_224DAF2A8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67240192;
    *(v7 + 4) = v3;
    _os_log_impl(&dword_224A2F000, v5, v6, "Remote Widgets enabled state changed to: %{BOOL,public}d", v7, 8u);
    MEMORY[0x22AA5EED0](v7, -1, -1);
  }

  v8 = a2[8];
  __swift_project_boxed_opaque_existential_1(a2 + 4, a2[7]);
  return sub_224DAAB28();
}

uint64_t sub_224CA7E28()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4620, &qword_224DB34D0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v8 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = sub_224DAF128();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v5;
    sub_224D8E744(0, 0, v3, &unk_224DBD748, v7);
  }

  return result;
}

uint64_t sub_224CA7F68()
{
  v1 = *(v0 + 16);
  v2 = v1[10];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v1[7]);
  v3 = *(v2 + 16);
  v4 = sub_224DAAC88();
  sub_224CA65E4(v4, v1[60]);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_224CA800C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33A8, &unk_224DB35D0);
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v4[6] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33B0, &qword_224DBC7F0);
  v4[7] = v8;
  v9 = *(v8 - 8);
  v4[8] = v9;
  v10 = *(v9 + 64) + 15;
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224CA8140, 0, 0);
}

uint64_t sub_224CA8140()
{
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v4[10];
  __swift_project_boxed_opaque_existential_1(v4 + 4, v4[7]);
  v7 = *(v6 + 24);
  sub_224DAACA8();
  sub_224DAF158();
  (*(v3 + 8))(v2, v5);
  v8 = *(MEMORY[0x277D85798] + 4);
  v9 = swift_task_alloc();
  v0[10] = v9;
  *v9 = v0;
  v9[1] = sub_224CA8254;
  v10 = v0[9];
  v11 = v0[7];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v11);
}

uint64_t sub_224CA8254()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_224CA8350, 0, 0);
}

uint64_t sub_224CA8350()
{
  v1 = v0[2];
  if (v1)
  {
    v2 = v0[3];
    sub_224CB2510();
    sub_224CA65E4(v1, *(v2 + 480));

    v3 = *(MEMORY[0x277D85798] + 4);
    v4 = swift_task_alloc();
    v0[10] = v4;
    *v4 = v0;
    v4[1] = sub_224CA8254;
    v5 = v0[9];
    v6 = v0[7];

    return MEMORY[0x2822003E8](v0 + 2, 0, 0, v6);
  }

  else
  {
    v7 = v0[6];
    (*(v0[8] + 8))(v0[9], v0[7]);

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_224CA8488(uint64_t a1, void *a2, uint64_t a3)
{
  v74 = a3;
  v76 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3828, &unk_224DBD6B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v73 = &v71 - v6;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v72 = *(v79 - 8);
  v7 = *(v72 + 64);
  MEMORY[0x28223BE20](v79);
  v78 = &v71 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4930, &unk_224DB8D00);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v77 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v75 = &v71 - v13;
  v87 = sub_224DAADC8();
  v14 = *(v87 - 1);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v87);
  v86 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v85 = &v71 - v18;
  v19 = sub_224DAAE38();
  v88 = *(v19 - 8);
  v20 = *(v88 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3320, &unk_224DBD6F0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v71 = &v71 - v25;
  *&v91[0] = a1;

  v26 = 0;
  sub_224CB0B14(v91);
  v27 = *&v91[0];
  v84 = *(*&v91[0] + 16);
  if (v84)
  {
    v28 = 0;
    v83 = v88 + 16;
    v82 = *MEMORY[0x277D46750];
    v81 = (v14 + 104);
    v29 = (v14 + 8);
    v80 = (v88 + 8);
    v30 = v87;
    while (1)
    {
      if (v28 >= *(v27 + 16))
      {
        goto LABEL_30;
      }

      v31 = v27;
      (*(v88 + 16))(v22, v27 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v28, v19);
      v32 = v85;
      (*v81)(v85, v82, v30);
      v26 = v86;
      sub_224DAADD8();
      v33 = MEMORY[0x22AA59120](v32, v26);
      v34 = *v29;
      (*v29)(v26, v30);
      v34(v32, v30);
      if (v33)
      {
        break;
      }

      ++v28;
      (*v80)(v22, v19);
      v27 = v31;
      if (v84 == v28)
      {
        goto LABEL_6;
      }
    }

    v40 = v88;
    v41 = v71;
    (*(v88 + 32))(v71, v22, v19);
    (*(v40 + 56))(v41, 0, 1, v19);
    v42 = v76[20];
    v26 = v76[21];
    __swift_project_boxed_opaque_existential_1(v76 + 17, v42);
    (*(v26 + 4))(v89, 256, v42, v26);
    if (!*(&v90 + 1))
    {
      sub_224A3311C(v41, &qword_27D6F3320, &unk_224DBD6F0);
      v36 = &qword_27D6F50E0;
      v37 = &qword_224DB41A0;
      v38 = v89;
      return sub_224A3311C(v38, v36, v37);
    }

    v91[0] = v89[0];
    v91[1] = v89[1];
    v91[2] = v90;
    v43 = sub_224A86CAC();
    if (!v43)
    {
      sub_224A699F0(v91);
      v36 = &qword_27D6F3320;
      v37 = &unk_224DBD6F0;
      v38 = v41;
      return sub_224A3311C(v38, v36, v37);
    }

    v44 = 0;
    v86 = v43;
    v47 = *(v43 + 64);
    v45 = v43 + 64;
    v46 = v47;
    v48 = 1 << *(v45 - 32);
    v49 = -1;
    if (v48 < 64)
    {
      v49 = ~(-1 << v48);
    }

    v50 = v49 & v46;
    v83 = (v48 + 63) >> 6;
    v84 = v45;
    v85 = (v72 + 16);
    v87 = (v72 + 8);
    v88 = v72 + 32;
    if ((v49 & v46) == 0)
    {
LABEL_14:
      if (v83 <= v44 + 1)
      {
        v52 = v44 + 1;
      }

      else
      {
        v52 = v83;
      }

      v53 = v52 - 1;
      v54 = v77;
      while (1)
      {
        v51 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
          break;
        }

        if (v51 >= v83)
        {
          v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
          (*(*(v70 - 8) + 56))(v54, 1, 1, v70);
          v50 = 0;
          goto LABEL_22;
        }

        v50 = *(v84 + 8 * v51);
        ++v44;
        if (v50)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);

      __break(1u);
      return result;
    }

    while (1)
    {
      v51 = v44;
LABEL_21:
      v55 = __clz(__rbit64(v50));
      v50 &= v50 - 1;
      v56 = v55 | (v51 << 6);
      v57 = v86;
      v58 = v72;
      v59 = v78;
      v60 = v79;
      (*(v72 + 16))(v78, *(v86 + 6) + *(v72 + 72) * v56, v79);
      v61 = *(*(v57 + 7) + 8 * v56);
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
      v63 = *(v62 + 48);
      v64 = *(v58 + 32);
      v54 = v77;
      v64(v77, v59, v60);
      *(v54 + v63) = v61;
      (*(*(v62 - 8) + 56))(v54, 0, 1, v62);
      v65 = v61;
      v53 = v51;
LABEL_22:
      v66 = v75;
      sub_224A44E4C(v54, v75, &qword_27D6F4930, &unk_224DB8D00);
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
      if ((*(*(v67 - 8) + 48))(v66, 1, v67) == 1)
      {
        break;
      }

      v68 = v78;
      v26 = v79;
      (*v88)(v78, v66, v79);
      v69 = v73;
      sub_224CA8E00(v68, v76 + 17, v73);
      sub_224C9ABA4(v69, v74, &qword_27D6F3828, &unk_224DBD6B0, MEMORY[0x277CFA0D8], &qword_27D6F5CE8, &unk_224DBD750, &qword_27D6F5CF0, sub_224C6BB2C, sub_224CB287C);
      sub_224A3311C(v69, &qword_27D6F3828, &unk_224DBD6B0);
      (*v87)(v68, v26);
      v44 = v53;
      if (!v50)
      {
        goto LABEL_14;
      }
    }

    sub_224A699F0(v91);

    v36 = &qword_27D6F3320;
    v37 = &unk_224DBD6F0;
    v38 = v71;
  }

  else
  {
LABEL_6:

    v35 = v71;
    (*(v88 + 56))(v71, 1, 1, v19);
    v36 = &qword_27D6F3320;
    v37 = &unk_224DBD6F0;
    v38 = v35;
  }

  return sub_224A3311C(v38, v36, v37);
}

uint64_t sub_224CA8E00@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_224DAB8C8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = (v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v3 + 16);
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x277D85200], v7);
  v13 = v12;
  LOBYTE(v12) = sub_224DAB8F8();
  result = (*(v8 + 8))(v11, v7);
  if (v12)
  {
    v15 = a2[3];
    v16 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v15);
    (*(v16 + 32))(v23, 768, v15, v16);
    if (v23[5])
    {
      v17 = sub_224A86CAC();
      sub_224A699F0(v23);
      if (v17)
      {
        if (*(v17 + 16))
        {
          v18 = sub_224A683FC(a1);
          if (v19)
          {
            v20 = *(*(v17 + 56) + 8 * v18);

LABEL_10:
            v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
            (*(*(v21 - 8) + 16))(a3, a1, v21);
            result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3828, &unk_224DBD6B0);
            *(a3 + *(result + 36)) = v20;
            v22 = a3 + *(result + 40);
            *v22 = 0;
            *(v22 + 8) = 1;
            return result;
          }
        }
      }
    }

    else
    {
      sub_224A3311C(v23, &qword_27D6F50E0, &qword_224DB41A0);
    }

    v20 = 0;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_224CA904C(uint64_t *a1)
{
  v40 = sub_224DACB98();
  v2 = *(v40 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v40);
  v39 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v30 - v7;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v9 = *(v42 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v42);
  v38 = &v30 - v11;
  v12 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v41 = result;
  if (result)
  {
    v14 = *(v12 + 16);
    v15 = v42;
    if (v14)
    {
      v16 = (v9 + 48);
      v35 = (v9 + 32);
      v34 = *MEMORY[0x277CF9BE8];
      v32 = (v2 + 8);
      v33 = (v2 + 104);
      v31 = (v9 + 8);
      v17 = (v12 + 48);
      v18 = MEMORY[0x277CFA130];
      v36 = (v9 + 48);
      v37 = v8;
      do
      {
        v27 = *(v17 - 2);
        v44 = *(v17 - 1);
        v28 = *v17;
        v29 = *v18;
        swift_beginAccess();
        sub_224A3796C(v27 + v29, v8, &unk_27D6F5060, &qword_224DB5620);
        if ((*v16)(v8, 1, v15) == 1)
        {
          sub_224A3311C(v8, &unk_27D6F5060, &qword_224DB5620);
        }

        else
        {
          v19 = v38;
          (*v35)(v38, v8, v15);
          v20 = v41[46];
          v43 = v41[48];
          __swift_project_boxed_opaque_existential_1(v41 + 43, v20);
          v21 = v39;
          v22 = v40;
          (*v33)(v39, v34, v40);
          v23 = v27;

          sub_224DAC728();

          v24 = v21;
          v8 = v37;
          v25 = v22;
          v15 = v42;
          (*v32)(v24, v25);
          v26 = v19;
          v16 = v36;
          (*v31)(v26, v15);
        }

        v17 += 3;
        --v14;
      }

      while (v14);
    }
  }

  return result;
}

void sub_224CA93E0()
{
  v0 = sub_224DAC268();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = (&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6170, &qword_224DBD720);
    MEMORY[0x22AA5C290](&v14);
    v5 = v14;
    v6 = &v14[*MEMORY[0x277CFA128]];
    swift_beginAccess();
    if (*(v6 + 1))
    {
    }

    else
    {
      v12 = v5;
      v7 = sub_224DADF08();
      v8 = *(v7 + 16);
      if (v8)
      {
        v9 = 0;
        while (v9 < *(v7 + 16))
        {
          v10 = (*(v1 + 16))(v4, v7 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v9, v0);
          v6 = MEMORY[0x22AA5E4C0](v10);
          sub_224CA95F8(v4, Strong, v12);
          ++v9;
          objc_autoreleasePoolPop(v6);
          (*(v1 + 8))(v4, v0);
          if (v8 == v9)
          {
            goto LABEL_8;
          }
        }

        __break(1u);
        objc_autoreleasePoolPop(v6);
        __break(1u);
      }

      else
      {
LABEL_8:
      }
    }
  }
}

void sub_224CA95F8(NSObject *a1, void *a2, uint64_t a3)
{
  v131 = a3;
  v125 = a2;
  v111 = sub_224DAB0B8();
  v119 = *(v111 - 8);
  v4 = *(v119 + 64);
  MEMORY[0x28223BE20](v111);
  v6 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v7 = *(*(v100 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v100);
  v99 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v109 = &v97 - v11;
  MEMORY[0x28223BE20](v10);
  v115 = &v97 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5CD0, &qword_224DBD728);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = (&v97 - v15);
  v114 = sub_224DAAC58();
  v116 = *(v114 - 8);
  isa = v116[8].isa;
  MEMORY[0x28223BE20](v114);
  v19 = (&v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = sub_224DAC268();
  v21 = v20[-1].isa;
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v123 = &v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v97 - v25;
  if (qword_2813516C8 != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v27 = sub_224DAB258();
    v28 = __swift_project_value_buffer(v27, qword_281365120);
    v29 = *(v21 + 16);
    v126 = a1;
    v29(v26, a1, v20);
    v124 = v28;
    a1 = sub_224DAB228();
    v30 = sub_224DAF278();
    v31 = os_log_type_enabled(a1, v30);
    v110 = v6;
    v122 = v19;
    v128 = v20;
    v112 = v21;
    if (v31)
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v113 = v16;
      v34 = v33;
      v129 = v33;
      *v32 = 136446210;
      sub_224CB0A6C(&qword_281350E40, MEMORY[0x277CF9978]);
      v35 = sub_224DAFD28();
      v37 = v36;
      v127 = *(v21 + 8);
      v127(v26, v20);
      v38 = sub_224A33F74(v35, v37, &v129);

      v39 = v32;
      *(v32 + 4) = v38;
      _os_log_impl(&dword_224A2F000, a1, v30, "Reload completed for %{public}s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      v40 = v34;
      v16 = v113;
      v19 = v122;
      MEMORY[0x22AA5EED0](v40, -1, -1);
      MEMORY[0x22AA5EED0](v39, -1, -1);
    }

    else
    {

      v127 = *(v21 + 8);
      v127(v26, v20);
    }

    v41 = *__swift_project_boxed_opaque_existential_1(v125 + 22, v125[25]);
    v42 = sub_224CE9F80(v131, v126);
    v44 = v114;
    v26 = v115;
    if (!v42)
    {
      break;
    }

    v21 = v42;
    v45 = v42 & 0xFFFFFFFFFFFFFF8;
    if (v42 >> 62)
    {
      v46 = sub_224DAF838();
      if (!v46)
      {
LABEL_37:

        return;
      }
    }

    else
    {
      v46 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v46)
      {
        goto LABEL_37;
      }
    }

    v101 = v45;
    v6 = 0;
    v120 = v21 & 0xC000000000000001;
    v126 = (v112 + 8);
    v117 = &v116[6];
    v107 = &v116[4];
    v106 = *MEMORY[0x277D46828];
    v105 = (v119 + 104);
    v104 = (v119 + 8);
    v108 = &v116[1];
    *&v43 = 136446466;
    v98 = v43;
    *(&v47 + 1) = 2;
    v103 = xmmword_224DB3100;
    *&v47 = 138543362;
    v97 = v47;
    v118 = v21;
    v119 = v46;
    v113 = v16;
    while (1)
    {
      if (v120)
      {
        v48 = MEMORY[0x22AA5DCC0](v6, v21);
      }

      else
      {
        if (v6 >= *(v101 + 16))
        {
          goto LABEL_34;
        }

        v48 = *(v21 + 8 * v6 + 32);
      }

      a1 = v48;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v131 = (v6 + 1);
      v49 = v123;
      sub_224DABE58();
      sub_224CAA474(v16);
      v127(v49, v128);
      if ((*v117)(v16, 1, v44) == 1)
      {
        sub_224A3311C(v16, &qword_27D6F5CD0, &qword_224DBD728);
        v50 = sub_224DAB228();
        v51 = sub_224DAF278();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          *v52 = 0;
          _os_log_impl(&dword_224A2F000, v50, v51, "Variant has no remote destinations", v52, 2u);
          v53 = v52;
          v19 = v122;
          MEMORY[0x22AA5EED0](v53, -1, -1);
        }
      }

      else
      {
        (*v107)(v19, v16, v44);
        sub_224DABE68();
        v54 = v130;
        if (v130)
        {
          v55 = __swift_project_boxed_opaque_existential_1(&v129, v130);
          v56 = *(v54 - 8);
          v57 = *(v56 + 64);
          MEMORY[0x28223BE20](v55);
          v59 = &v97 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v56 + 16))(v59);
          sub_224A3311C(&v129, &unk_27D6F3CB0, &unk_224DB7860);
          sub_224DAEA88();
          (*(v56 + 8))(v59, v54);
          v60 = sub_224DA9878();
          (*(*(v60 - 8) + 56))(v26, 0, 1, v60);
        }

        else
        {
          sub_224A3311C(&v129, &unk_27D6F3CB0, &unk_224DB7860);
          v61 = sub_224DA9878();
          (*(*(v61 - 8) + 56))(v26, 1, 1, v61);
        }

        v62 = v109;
        sub_224A3796C(v26, v109, &qword_27D6F32B0, &qword_224DB3EA0);
        v20 = a1;
        v63 = sub_224DAB228();
        v64 = sub_224DAF2A8();

        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          v66 = v62;
          v102 = swift_slowAlloc();
          v129 = v102;
          *v65 = v98;
          v67 = v123;
          v116 = v20;
          sub_224DABE58();
          sub_224CB0A6C(&qword_281350E40, MEMORY[0x277CF9978]);
          v68 = v128;
          v69 = sub_224DAFD28();
          v71 = v70;
          v72 = v67;
          v73 = v112;
          v127(v72, v68);
          v74 = sub_224A33F74(v69, v71, &v129);

          *(v65 + 4) = v74;
          *(v65 + 12) = 2082;
          sub_224A3796C(v66, v99, &qword_27D6F32B0, &qword_224DB3EA0);
          v75 = sub_224DAEE28();
          v77 = v76;
          sub_224A3311C(v66, &qword_27D6F32B0, &qword_224DB3EA0);
          v78 = sub_224A33F74(v75, v77, &v129);

          *(v65 + 14) = v78;
          v20 = v116;
          _os_log_impl(&dword_224A2F000, v63, v64, "Received local placeholder archive for %{public}s; created %{public}s", v65, 0x16u);
          v79 = v102;
          swift_arrayDestroy();
          MEMORY[0x22AA5EED0](v79, -1, -1);
          MEMORY[0x22AA5EED0](v65, -1, -1);
        }

        else
        {

          sub_224A3311C(v62, &qword_27D6F32B0, &qword_224DB3EA0);
          v73 = v112;
        }

        v80 = v125[57];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3580, &qword_224DB94A0);
        v81 = *(v73 + 72);
        v82 = (*(v73 + 80) + 32) & ~*(v73 + 80);
        v83 = swift_allocObject();
        *(v83 + 16) = v103;
        sub_224DABE58();
        v84 = v110;
        v85 = v111;
        (*v105)(v110, v106, v111);
        v86 = v121;
        a1 = v122;
        sub_224D906AC(v83, v122, v84);
        if (v86)
        {
          (*v104)(v84, v85);
          swift_setDeallocating();
          v127((v83 + v82), v128);
          swift_deallocClassInstance();
          v87 = v86;
          v88 = sub_224DAB228();
          v89 = sub_224DAF288();

          if (os_log_type_enabled(v88, v89))
          {
            a1 = v86;
            v90 = swift_slowAlloc();
            v91 = swift_slowAlloc();
            *v90 = v97;
            v92 = v86;
            v93 = _swift_stdlib_bridgeErrorToNSError();
            *(v90 + 4) = v93;
            *v91 = v93;
            _os_log_impl(&dword_224A2F000, v88, v89, "Could not add placeholder to replicator: %{public}@", v90, 0xCu);
            sub_224A3311C(v91, &unk_27D6F69F0, &unk_224DB3900);
            MEMORY[0x22AA5EED0](v91, -1, -1);
            MEMORY[0x22AA5EED0](v90, -1, -1);
          }

          v26 = v115;
          sub_224A3311C(v115, &qword_27D6F32B0, &qword_224DB3EA0);
          v19 = v122;
          v44 = v114;
          (*v108)(v122, v114);
          v121 = 0;
          v16 = v113;
        }

        else
        {
          v121 = 0;
          swift_setDeallocating();
          v127((v83 + v82), v128);
          swift_deallocClassInstance();

          (*v104)(v84, v85);
          v26 = v115;
          sub_224A3311C(v115, &qword_27D6F32B0, &qword_224DB3EA0);
          v44 = v114;
          (*v108)(a1, v114);
          v16 = v113;
          v19 = a1;
        }
      }

      v21 = v118;
      ++v6;
      if (v131 == v119)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    swift_once();
  }

  v94 = sub_224DAB228();
  v95 = sub_224DAF278();
  if (os_log_type_enabled(v94, v95))
  {
    v96 = swift_slowAlloc();
    *v96 = 0;
    _os_log_impl(&dword_224A2F000, v94, v95, "Variant has no remotely hosted entries", v96, 2u);
    MEMORY[0x22AA5EED0](v96, -1, -1);
  }
}

uint64_t sub_224CAA474@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v34 - v4;
  v6 = sub_224DA9908();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v34 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v34 - v18;
  sub_224DAC218();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    v20 = &qword_27D6F56C0;
    v21 = &unk_224DB3580;
    v22 = v14;
  }

  else
  {
    (*(v16 + 32))(v19, v14, v15);
    sub_224DAA1F8();
    if (!v23)
    {
      (*(v16 + 8))(v19, v15);
      goto LABEL_8;
    }

    sub_224DA9888();

    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      v27 = *(v7 + 32);
      v26 = v7 + 32;
      v27(v10, v5, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BC0, &unk_224DB9C60);
      v28 = *(v26 + 40);
      v29 = (*(v26 + 48) + 32) & ~*(v26 + 48);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_224DB3100;
      v27((v30 + v29), v10, v6);
      (*(v16 + 8))(v19, v15);
      *a1 = v30;
      v31 = *MEMORY[0x277D46558];
      v32 = sub_224DAAC58();
      v33 = *(v32 - 8);
      (*(v33 + 104))(a1, v31, v32);
      return (*(v33 + 56))(a1, 0, 1, v32);
    }

    (*(v16 + 8))(v19, v15);
    v20 = &unk_27D6F5630;
    v21 = &unk_224DB34C0;
    v22 = v5;
  }

  sub_224A3311C(v22, v20, v21);
LABEL_8:
  v24 = sub_224DAAC58();
  return (*(*(v24 - 8) + 56))(a1, 1, 1, v24);
}

void sub_224CAA8A0()
{
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
  v0 = *(v108 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v108);
  v116 = &v91 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F46D0, &unk_224DBD6D0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v91 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v107 = *(v10 - 8);
  v11 = *(v107 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v118 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v106 = &v91 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4930, &unk_224DB8D00);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v114 = &v91 - v20;
  v109 = sub_224DABE18();
  v21 = *(v109 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v109);
  v115 = &v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v91 - v25;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v28 = Strong;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F50D8, &unk_224DBD6E0);
    MEMORY[0x22AA5BB00](v29);
    v30 = sub_224DABDB8();
    v31 = &v30[*MEMORY[0x277CFA128]];
    swift_beginAccess();
    v32 = *(v31 + 1);

    if (v32)
    {

LABEL_4:
      (*(v21 + 8))(v26, v109);
      return;
    }

    v112 = v0;
    v105 = v10;
    v33 = v28;
    v34 = v28[30];
    v35 = v28[31];
    __swift_project_boxed_opaque_existential_1(v33 + 27, v34);
    (*(*(v35 + 8) + 32))(&v121, 512, v34);
    if (!*(&v123 + 1))
    {
      (*(v21 + 8))(v26, v109);

      sub_224A3311C(&v121, &qword_27D6F50E0, &qword_224DB41A0);
      return;
    }

    v117 = v33;
    v124[0] = v121;
    v124[1] = v122;
    v125 = v123;
    v36 = sub_224A86CAC();
    if (!v36)
    {

      sub_224A699F0(v124);
      goto LABEL_4;
    }

    v104 = v26;
    v37 = 0;
    v95 = v36;
    v40 = *(v36 + 64);
    v38 = v36 + 64;
    v39 = v40;
    v41 = 1 << *(v38 - 32);
    v42 = -1;
    if (v41 < 64)
    {
      v42 = ~(-1 << v41);
    }

    v43 = v42 & v39;
    v44 = (v41 + 63) >> 6;
    v94 = v107 + 16;
    v110 = (v107 + 32);
    v103 = (v21 + 16);
    v102 = (v112 + 56);
    v101 = (v21 + 56);
    v100 = (v112 + 32);
    v92 = v21;
    v99 = (v21 + 32);
    v96 = (v107 + 8);
    v113 = v19;
    v45 = v114;
    v98 = v38;
    v97 = v44;
    v46 = v105;
    v93 = v7;
    v119 = v9;
    while (v43)
    {
      v47 = v37;
LABEL_23:
      v112 = (v43 - 1) & v43;
      v50 = __clz(__rbit64(v43)) | (v47 << 6);
      v51 = v95;
      v52 = v107;
      (*(v107 + 16))(v106, *(v95 + 48) + *(v107 + 72) * v50, v46);
      v53 = *(*(v51 + 56) + 8 * v50);
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
      v55 = *(v54 + 48);
      v19 = v113;
      v56 = v46;
      (*(v52 + 32))();
      *&v19[v55] = v53;
      (*(*(v54 - 8) + 56))(v19, 0, 1, v54);
      v57 = v53;
      v45 = v114;
      v9 = v119;
LABEL_24:
      sub_224A44E4C(v19, v45, &qword_27D6F4930, &unk_224DB8D00);
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
      if ((*(*(v58 - 8) + 48))(v45, 1, v58) == 1)
      {

        sub_224A699F0(v124);
        (*(v92 + 8))(v104, v109);
        return;
      }

      (*v110)(v118, v45, v56);
      sub_224DAA238();
      v59 = v109;
      (*v103)(v115, v104, v109);
      v111 = *v102;
      v60 = v108;
      v111(v9, 1, 1, v108);
      v61 = type metadata accessor for HostDescriptorPredicate();
      v9[v61[5]] = 3;
      v9[v61[6]] = 3;
      v62 = v61[7];
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
      (*(*(v63 - 8) + 56))(&v9[v62], 1, 1, v63);
      v64 = v61[8];
      v65 = *v101;
      (*v101)(&v119[v64], 1, 1, v59);
      v66 = v61[9];
      v67 = sub_224DAC268();
      (*(*(v67 - 8) + 56))(&v119[v66], 1, 1, v67);
      v68 = &v119[v61[10]];
      *v68 = 0;
      v68[8] = 1;
      sub_224A3311C(v119, &qword_27D6F3390, &qword_224DB35B8);
      (*v100)(v119, v116, v60);
      v111(v119, 0, 1, v60);
      sub_224A3311C(&v119[v64], &unk_27D6F6130, &unk_224DBB6A0);
      (*v99)(&v119[v64], v115, v59);
      v69 = &v119[v64];
      v9 = v119;
      v65(v69, 0, 1, v59);
      v70 = *(v61 - 1);
      (*(v70 + 56))(v9, 0, 1, v61);
      v71 = *(&v125 + 1);
      if (*(*(&v125 + 1) + 16))
      {
        v120 = 0;
        v72 = v93;
        sub_224A3796C(v9, v93, &qword_27D6F46D0, &unk_224DBD6D0);
        if ((*(v70 + 48))(v72, 1, v61) == 1)
        {
          v73 = sub_224A3311C(v72, &qword_27D6F46D0, &unk_224DBD6D0);
          v19 = v113;
        }

        else
        {
          v74 = v72 + v61[10];
          v75 = *v74;
          v76 = *(v74 + 8);
          v73 = sub_224CB2720(v72, type metadata accessor for HostDescriptorPredicate);
          v19 = v113;
          if ((v76 & 1) == 0)
          {
            sub_224A3796C(v124, &v121, &qword_27D6F52B8, &unk_224DBB690);
            if (*(&v122 + 1))
            {
              __swift_project_boxed_opaque_existential_1(&v121, *(&v122 + 1));
              v77 = sub_224DADE28();
              __swift_destroy_boxed_opaque_existential_1(&v121);
            }

            else
            {
              sub_224A3311C(&v121, &qword_27D6F52B8, &unk_224DBB690);
              v77 = MEMORY[0x277D84F90];
            }

            v79 = sub_224AE8AF4(v77);

            v120 = v79;
          }
        }

        MEMORY[0x28223BE20](v73);
        *(&v91 - 2) = v9;

        v80 = sub_224A6C07C(sub_224CB2A08, (&v91 - 4), v71);
        v81 = swift_allocObject();
        *(v81 + 16) = 0;
        v82 = sub_224A6CF18(v80);

        MEMORY[0x28223BE20](v83);
        *(&v91 - 4) = v9;
        *(&v91 - 3) = &v120;
        *(&v91 - 2) = v81;
        sub_224A6D2D0(sub_224CB2A24, (&v91 - 6), v82);

        swift_beginAccess();
        v84 = *(v81 + 16);

        sub_224A3311C(v9, &qword_27D6F46D0, &unk_224DBD6D0);
        if (v84)
        {
          if (v84 >> 62)
          {
            v85 = sub_224DAF838();
            if (v85)
            {
LABEL_37:
              v86 = 0;
              while (1)
              {
                if ((v84 & 0xC000000000000001) != 0)
                {
                  v87 = MEMORY[0x22AA5DCC0](v86, v84);
                }

                else
                {
                  if (v86 >= *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_53;
                  }

                  v87 = *(v84 + 8 * v86 + 32);
                }

                v88 = v87;
                v89 = v86 + 1;
                if (__OFADD__(v86, 1))
                {
                  break;
                }

                v90 = MEMORY[0x22AA5E4C0]();
                sub_224CAB76C(v88, v118, v117);
                objc_autoreleasePoolPop(v90);

                ++v86;
                if (v89 == v85)
                {
                  goto LABEL_47;
                }
              }

              __break(1u);
LABEL_53:
              __break(1u);
              goto LABEL_54;
            }
          }

          else
          {
            v85 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v85)
            {
              goto LABEL_37;
            }
          }

LABEL_47:

          v9 = v119;
          v46 = v105;
          v19 = v113;
        }

        else
        {
          v46 = v105;
        }

        v45 = v114;
      }

      else
      {
        sub_224A3311C(v9, &qword_27D6F46D0, &unk_224DBD6D0);
        v46 = v105;
        v45 = v114;
        v19 = v113;
      }

      v43 = v112;
      (*v96)(v118, v46);
      v38 = v98;
      v44 = v97;
    }

    if (v44 <= v37 + 1)
    {
      v48 = v37 + 1;
    }

    else
    {
      v48 = v44;
    }

    v49 = v48 - 1;
    while (1)
    {
      v47 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v47 >= v44)
      {
        v56 = v46;
        v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
        (*(*(v78 - 8) + 56))(v19, 1, 1, v78);
        v112 = 0;
        v37 = v49;
        goto LABEL_24;
      }

      v43 = *(v38 + 8 * v47);
      ++v37;
      if (v43)
      {
        v37 = v47;
        goto LABEL_23;
      }
    }

LABEL_54:
    __break(1u);
  }
}

uint64_t sub_224CAB76C(void *a1, uint64_t a2, uint64_t *a3)
{
  v81 = *a3;
  v6 = sub_224DAB0B8();
  v71 = *(v6 - 8);
  v72 = v6;
  v7 = *(v71 + 64);
  MEMORY[0x28223BE20](v6);
  v70 = &v63[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v9 = *(*(v67 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v67);
  v66 = &v63[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v10);
  v74 = &v63[-v13];
  MEMORY[0x28223BE20](v12);
  v76 = &v63[-v14];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v63[-v17];
  v75 = sub_224DAC268();
  v19 = *(v75 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v75);
  v68 = &v63[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v21);
  v24 = &v63[-v23];
  v25 = [a1 widget];
  v26 = [a1 metrics];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v28 = *(v27 - 8);
  (*(v28 + 16))(v18, a2, v27);
  (*(v28 + 56))(v18, 0, 1, v27);
  sub_224DAC228();
  v29 = a3[15];
  v30 = *(v81 + 13);
  v73 = a3;
  v31 = *(*(v81 + 14) + 8);
  v81 = v24;
  v32 = v69;
  sub_224DAC418();
  if (v32)
  {

    v69 = 0;
    v80 = 0;
    memset(v79, 0, sizeof(v79));
  }

  else
  {
    v69 = 0;
  }

  sub_224A3796C(v79, v77, &unk_27D6F3CB0, &unk_224DB7860);
  v34 = v75;
  v33 = v76;
  v35 = v68;
  if (v78)
  {
    __swift_project_boxed_opaque_existential_1(v77, v78);
    sub_224DAEA88();
    v36 = sub_224DA9878();
    (*(*(v36 - 8) + 56))(v33, 0, 1, v36);
    __swift_destroy_boxed_opaque_existential_1(v77);
  }

  else
  {
    sub_224A3311C(v77, &unk_27D6F3CB0, &unk_224DB7860);
    v37 = sub_224DA9878();
    (*(*(v37 - 8) + 56))(v33, 1, 1, v37);
  }

  v38 = v74;
  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v39 = sub_224DAB258();
  __swift_project_value_buffer(v39, qword_281365120);
  (*(v19 + 16))(v35, v81, v34);
  sub_224A3796C(v33, v38, &qword_27D6F32B0, &qword_224DB3EA0);
  v40 = sub_224DAB228();
  v41 = sub_224DAF2A8();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v77[0] = v65;
    *v42 = 136446466;
    sub_224CB0A6C(&qword_281350E40, MEMORY[0x277CF9978]);
    v43 = sub_224DAFD28();
    v45 = v44;
    v64 = v41;
    v46 = *(v19 + 8);
    v46(v35, v34);
    v47 = sub_224A33F74(v43, v45, v77);

    *(v42 + 4) = v47;
    *(v42 + 12) = 2082;
    v48 = v74;
    sub_224A3796C(v74, v66, &qword_27D6F32B0, &qword_224DB3EA0);
    v49 = sub_224DAEE28();
    v51 = v50;
    v52 = v48;
    v53 = v46;
    v33 = v76;
    sub_224A3311C(v52, &qword_27D6F32B0, &qword_224DB3EA0);
    v54 = v49;
    v34 = v75;
    v55 = sub_224A33F74(v54, v51, v77);

    *(v42 + 14) = v55;
    _os_log_impl(&dword_224A2F000, v40, v64, "Received local snapshot archive for %{public}s; created %{public}s", v42, 0x16u);
    v56 = v65;
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v56, -1, -1);
    MEMORY[0x22AA5EED0](v42, -1, -1);
  }

  else
  {

    sub_224A3311C(v38, &qword_27D6F32B0, &qword_224DB3EA0);
    v57 = v35;
    v53 = *(v19 + 8);
    v53(v57, v34);
  }

  v59 = v70;
  v58 = v71;
  v60 = v72;
  (*(v71 + 104))(v70, *MEMORY[0x277D46828], v72);
  v61 = v81;
  sub_224CABF44(v81, v33, 1, v59);
  (*(v58 + 8))(v59, v60);
  sub_224A3311C(v33, &qword_27D6F32B0, &qword_224DB3EA0);
  sub_224A3311C(v79, &unk_27D6F3CB0, &unk_224DB7860);
  return v53(v61, v34);
}
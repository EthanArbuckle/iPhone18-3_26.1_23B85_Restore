uint64_t sub_255CB0684()
{
  if (qword_27F7DD7C0 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_255CB0754;
  v2 = *(v0 + 32);

  return DefaultNetworkImageLoader.image(from:)(v2);
}

uint64_t sub_255CB0754(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 64) = a1;

    return MEMORY[0x2822009F8](sub_255CB08A0, 0, 0);
  }
}

uint64_t sub_255CB08A0()
{
  v1 = v0[6];
  v0[2] = v0[5];
  v0[3] = v1;
  sub_255C8407C();

  sub_255D069A8();
  v2 = sub_255D06D68();
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_255CB0970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_255CB0684, 0, 0);
}

void *sub_255CB09A4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
    if (a4 >= 2u)
    {
      return MEMORY[0x277D84F90];
    }

LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE1E8);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_255D0AA80;
    *(v7 + 32) = a1;
    *(v7 + 40) = a2;

    return v7;
  }

  if (a4 == 2)
  {
    goto LABEL_10;
  }

  if (a4 != 8)
  {
    return MEMORY[0x277D84F90];
  }

  if (a3 | a2 | a1)
  {
    if (a1 == 1 && !(a3 | a2))
    {
      return &unk_2867D43E8;
    }

    return MEMORY[0x277D84F90];
  }

  return &unk_2867D43B8;
}

uint64_t sub_255CB0A80()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_255CB0AC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_255CB0B10(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_255CB0BC4(void *a1)
{
  v3 = sub_255D063E8();
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x28223BE20](v3);
  v36 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = a1[4];
  v6 = a1[2];
  swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Indexed();
  v8 = sub_255D072C8();
  v9 = a1[3];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DED00);
  v42 = v9;
  sub_255D061D8();
  v10 = sub_255D061D8();
  WitnessTable = swift_getWitnessTable();
  v41 = a1[6];
  v54 = v41;
  v12 = swift_getWitnessTable();
  v49 = v8;
  v50 = v7;
  v51 = v10;
  v52 = WitnessTable;
  v53 = v12;
  sub_255D06EC8();
  v13 = a1[5];
  v14 = sub_255CB2210();
  v40 = v13;
  v47 = v13;
  v48 = v14;
  v45 = swift_getWitnessTable();
  v46 = MEMORY[0x277CDF918];
  v44 = swift_getWitnessTable();
  v15 = swift_getWitnessTable();
  v16 = sub_255D06E68();
  v39 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v34 - v20;
  LOBYTE(v50) = *(v1 + 8);
  v22 = *v1;
  v49 = *v1;
  if (v50 != 1)
  {

    sub_255D07438();
    v34 = v15;
    v23 = sub_255D066C8();
    v35 = v1;
    v24 = v5;
    v25 = v23;
    sub_255D05D88();

    v5 = v24;
    v1 = v35;
    v26 = v36;
    sub_255D063D8();
    swift_getAtKeyPath();
    sub_255C76B94(&v49, &qword_27F7DED10);
    (*(v37 + 8))(v26, v38);
    LOBYTE(v22) = v43;
  }

  if (v22)
  {
    if (v22 == 1)
    {
      v27 = sub_255D06F58();
    }

    else
    {
      v27 = sub_255D06F78();
    }
  }

  else
  {
    v27 = sub_255D06F68();
  }

  MEMORY[0x28223BE20](v27);
  *&v28 = v6;
  *(&v28 + 1) = v42;
  *&v29 = v5;
  v30 = v41;
  *(&v29 + 1) = v40;
  *(&v34 - 3) = v28;
  *(&v34 - 2) = v29;
  *(&v34 - 2) = v30;
  *(&v34 - 1) = v1;
  sub_255D06E58();
  v31 = swift_getWitnessTable();
  sub_255C818BC(v18, v16, v31);
  v32 = *(v39 + 8);
  v32(v18, v16);
  sub_255C818BC(v21, v16, v31);
  return (v32)(v21, v16);
}

uint64_t sub_255CB1088@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v32 = a5;
  v41 = a7;
  swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for Indexed();
  v13 = sub_255D072C8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DED00);
  v37 = sub_255D061D8();
  v36 = sub_255D061D8();
  WitnessTable = swift_getWitnessTable();
  v59 = a6;
  v38 = swift_getWitnessTable();
  v54 = v13;
  v55 = v12;
  v56 = v36;
  v57 = WitnessTable;
  v58 = v38;
  v14 = sub_255D06EC8();
  v40 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v33 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v35 = v31 - v17;
  v64 = *(a1 + 6);
  v53 = v64;
  v42 = a2;
  v43 = a3;
  v44 = a4;
  v18 = v32;
  v45 = v32;
  v46 = a6;
  KeyPath = swift_getKeyPath();
  v54 = *a1;
  LOBYTE(v55) = *(a1 + 8);
  v19 = *(a1 + 2);
  v63 = *(a1 + 24);
  v20 = *(a1 + 5);
  v61 = *(a1 + 4);
  v62 = v19;
  v60 = v20;
  v31[1] = *(a1 + 8);
  v21 = swift_allocObject();
  v22 = *a1;
  *(v21 + 72) = a1[1];
  v23 = a1[3];
  *(v21 + 88) = a1[2];
  *(v21 + 104) = v23;
  *(v21 + 16) = a2;
  *(v21 + 24) = a3;
  *(v21 + 32) = a4;
  *(v21 + 40) = v18;
  *(v21 + 48) = a6;
  *(v21 + 120) = *(a1 + 8);
  *(v21 + 56) = v22;

  (*(*(v13 - 8) + 16))(v52, &v64, v13);
  sub_255C7299C(&v54, v52, &qword_27F7DED10);
  sub_255C7299C(&v62, v52, &qword_27F7DED18);
  sub_255C7299C(&v61, v52, &qword_27F7DE698);
  sub_255C7299C(&v60, v52, &qword_27F7DED20);
  v24 = sub_255CB2210();
  v50 = v18;
  v51 = v24;

  v48 = swift_getWitnessTable();
  v49 = MEMORY[0x277CDF918];
  v30 = swift_getWitnessTable();
  v25 = v33;
  sub_255D06EA8();
  v47 = v30;
  v26 = swift_getWitnessTable();
  v27 = v35;
  sub_255C818BC(v25, v14, v26);
  v28 = *(v40 + 8);
  v28(v25, v14);
  sub_255C818BC(v27, v14, v26);
  return (v28)(v27, v14);
}

uint64_t sub_255CB154C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v57 = a7;
  v48 = a6;
  v55 = a8;
  v56 = a5;
  v58 = a3;
  swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for Indexed();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v44 - v13;
  v51 = *(a4 - 8);
  MEMORY[0x28223BE20](v15);
  v45 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DED00);
  v50 = sub_255D061D8();
  v53 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v47 = &v44 - v17;
  v18 = sub_255D061D8();
  v54 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v49 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v20);
  v52 = &v44 - v22;
  v23 = a2[7];
  v24 = *a1;
  v25 = a1 + *(v11 + 28);
  v46 = a1;
  v23(v24, v25, v21);
  v69 = *a2;
  v70 = *(a2 + 8);
  v26 = a2[2];
  v68 = *(a2 + 24);
  v27 = a2[5];
  v66 = a2[4];
  v67 = v26;
  v64 = a2[6];
  v65 = v27;
  (*(v12 + 16))(v14, a1, v11);
  v28 = (*(v12 + 80) + 128) & ~*(v12 + 80);
  v29 = swift_allocObject();
  v30 = *a2;
  *(v29 + 72) = *(a2 + 1);
  v31 = *(a2 + 3);
  *(v29 + 88) = *(a2 + 2);
  *(v29 + 104) = v31;
  *(v29 + 16) = v58;
  *(v29 + 24) = a4;
  v32 = v48;
  *(v29 + 32) = v56;
  *(v29 + 40) = v32;
  *(v29 + 48) = v57;
  *(v29 + 120) = a2[8];
  *(v29 + 56) = v30;
  (*(v12 + 32))(v29 + v28, v14, v11);
  sub_255C7299C(&v69, v63, &qword_27F7DED10);
  sub_255C7299C(&v67, v63, &qword_27F7DED18);
  sub_255C7299C(&v66, v63, &qword_27F7DE698);
  sub_255C7299C(&v65, v63, &qword_27F7DED20);
  v33 = sub_255D072C8();
  (*(*(v33 - 8) + 16))(v63, &v64, v33);
  sub_255C95658();
  sub_255CB2508();

  v34 = v47;
  v35 = v45;
  sub_255D06B18();

  (*(v51 + 8))(v35, a4);
  sub_255D06728();
  v63[0] = v58;
  v63[1] = a4;
  v63[2] = v56;
  v63[3] = v32;
  v63[4] = v57;
  type metadata accessor for BlockSequence();
  sub_255CB1D20(v46);
  v36 = sub_255CB2210();
  v61 = v32;
  v62 = v36;
  v37 = v50;
  WitnessTable = swift_getWitnessTable();
  v39 = v49;
  sub_255D06BF8();
  (*(v53 + 8))(v34, v37);
  v59 = WitnessTable;
  v60 = MEMORY[0x277CDF918];
  v40 = swift_getWitnessTable();
  v41 = v52;
  sub_255C818BC(v39, v18, v40);
  v42 = *(v54 + 8);
  v42(v39, v18);
  sub_255C818BC(v41, v18, v40);
  return (v42)(v41, v18);
}

uint64_t sub_255CB1B94(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  type metadata accessor for Indexed();
  v7 = sub_255CE63F4();
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v17 = v9;
  v18 = v8;
  v14 = v8;
  v15 = v9;
  sub_255C7299C(&v18, v12, &qword_27F7DE698);
  sub_255C7299C(&v17, v12, &qword_27F7DED20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DED30);
  sub_255D06DA8();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12[0] = v16;
  v13 = v6;
  sub_255C7CFF0(v3, v4, v5, v6, v7, isUniquelyReferenced_nonNull_native);
  v12[0] = v8;
  v12[1] = v9;
  sub_255D06DB8();
  sub_255C76B94(&v18, &qword_27F7DE698);
  return sub_255C76B94(&v17, &qword_27F7DED20);
}

uint64_t sub_255CB1D20(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_255D063E8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Indexed();
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - v10;
  if (*a1 >= 1)
  {
    v37 = v5;
    v39 = v9;
    v12 = sub_255CE63F4();
    v44 = *(v2 + 32);
    v41 = *(v2 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DED30);
    sub_255D06DA8();
    v13 = v42;
    if (*(v42 + 16) && (v14 = sub_255C7B780(v12), (v15 & 1) != 0))
    {
      v16 = *(v13 + 56) + 32 * v14;
      v17 = *v16;
      v18 = *(v16 + 8);
    }

    else
    {
      v17 = 0;
      v18 = 1;
    }

    v38 = v18;

    sub_255D072D8();
    v43 = *(v2 + 24);
    v19 = *(v2 + 16);
    v42 = v19;
    if (v43 == 1)
    {
      if (v19)
      {
LABEL_8:
        v20 = 0;
        v21 = 0;
        goto LABEL_16;
      }
    }

    else
    {

      sub_255D07438();
      v23 = sub_255D066C8();
      sub_255D05D88();

      sub_255D063D8();
      swift_getAtKeyPath();
      sub_255C76B94(&v42, &qword_27F7DED18);
      (*(v37 + 8))(v7, v4);
      if (v41)
      {
        goto LABEL_8;
      }
    }

    v24 = sub_255CE63F4();
    v41 = v44;
    sub_255D06DA8();
    v25 = v40;
    if (*(v40 + 16) && (v26 = sub_255C7B780(v24), (v27 & 1) != 0))
    {
      v28 = *(v25 + 56) + 32 * v26;
      v20 = *(v28 + 16);
      v21 = *(v28 + 24);
    }

    else
    {
      v20 = 0;
      v21 = 1;
    }

LABEL_16:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE188);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_255D0B6E0;
    *(inited + 32) = v17;
    v30 = v38;
    *(inited + 40) = v38;
    *(inited + 48) = v20;
    *(inited + 56) = v21;
    if (v30)
    {
      v31 = MEMORY[0x277D84F90];

      if (v21)
      {
LABEL_27:
        v22 = sub_255C95614(v31);

        (*(v39 + 8))(v11, v8);
        return v22;
      }
    }

    else
    {
      v31 = sub_255C96654(0, 1, 1, MEMORY[0x277D84F90]);
      v33 = *(v31 + 2);
      v32 = *(v31 + 3);
      if (v33 >= v32 >> 1)
      {
        v31 = sub_255C96654((v32 > 1), v33 + 1, 1, v31);
      }

      *(v31 + 2) = v33 + 1;
      *&v31[8 * v33 + 32] = v17;

      if (v21)
      {
        goto LABEL_27;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_255C96654(0, *(v31 + 2) + 1, 1, v31);
    }

    v35 = *(v31 + 2);
    v34 = *(v31 + 3);
    if (v35 >= v34 >> 1)
    {
      v31 = sub_255C96654((v34 > 1), v35 + 1, 1, v31);
    }

    *(v31 + 2) = v35 + 1;
    *&v31[8 * v35 + 32] = v20;
    goto LABEL_27;
  }

  return 0;
}

unint64_t sub_255CB2210()
{
  result = qword_27F7DED08;
  if (!qword_27F7DED08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DED00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DED08);
  }

  return result;
}

uint64_t sub_255CB2284()
{
  sub_255C74DA4(*(v0 + 56), *(v0 + 64));
  sub_255C74DA4(*(v0 + 72), *(v0 + 80));

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t sub_255CB2300()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = (type metadata accessor for Indexed() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 128) & ~v3;
  v5 = *(*v2 + 64);
  sub_255C74DA4(*(v0 + 56), *(v0 + 64));
  sub_255C74DA4(*(v0 + 72), *(v0 + 80));

  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v2[9] + v4, AssociatedTypeWitness);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_255CB2438(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for Indexed();

  return sub_255CB1B94(a1, v1 + 56);
}

unint64_t sub_255CB2508()
{
  result = qword_27F7DED28;
  if (!qword_27F7DED28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DED28);
  }

  return result;
}

uint64_t sub_255CB255C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  v6 = *(a1 + 32);
  *(a2 + 32) = v6;
  return sub_255C90E88(v2, v3, v4, v5, v6);
}

uint64_t sub_255CB257C()
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for Indexed();
  sub_255D072C8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DED00);
  sub_255D061D8();
  sub_255D061D8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_255D06EC8();
  sub_255CB2210();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_255D06E68();
  return swift_getWitnessTable();
}

char *sub_255CB2770(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = (a1 + 56);
  v4 = MEMORY[0x277D84F90];
  while (1)
  {
    v6 = *(v3 - 3);
    v7 = *(v3 - 2);
    v8 = *(v3 - 1);
    v9 = *v3;
    sub_255C74200(v6, v7, v8, *v3);
    v10 = sub_255CB291C(v6, v7, v8, v9);
    if (v1)
    {
      sub_255C7429C(v6, v7, v8, v9);

      return v4;
    }

    v11 = v10;
    result = sub_255C7429C(v6, v7, v8, v9);
    v12 = *(v11 + 16);
    v13 = *(v4 + 2);
    v14 = v13 + v12;
    if (__OFADD__(v13, v12))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v14 <= *(v4 + 3) >> 1)
    {
      if (*(v11 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v13 <= v14)
      {
        v15 = v13 + v12;
      }

      else
      {
        v15 = v13;
      }

      result = sub_255C96444(result, v15, 1, v4);
      v4 = result;
      if (*(v11 + 16))
      {
LABEL_15:
        if ((*(v4 + 3) >> 1) - *(v4 + 2) < v12)
        {
          goto LABEL_24;
        }

        swift_arrayInitWithCopy();

        if (v12)
        {
          v16 = *(v4 + 2);
          v17 = __OFADD__(v16, v12);
          v18 = v16 + v12;
          if (v17)
          {
            goto LABEL_25;
          }

          *(v4 + 2) = v18;
        }

        goto LABEL_4;
      }
    }

    if (v12)
    {
      goto LABEL_23;
    }

LABEL_4:
    v3 += 32;
    if (!--v2)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_255CB291C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 - 3 < 3 || a4 == 7 || a4 == 6)
  {
  }

  else
  {
    result = MEMORY[0x277D84F90];
  }

  v28 = *(result + 16);
  if (!v28)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_25:

    v22 = sub_255CB09A4(a1, a2, a3, a4);
    if (v4)
    {
    }

    sub_255CDDF88(v22);
    return v8;
  }

  v6 = 0;
  v7 = (result + 56);
  v8 = MEMORY[0x277D84F90];
  v27 = result;
  while (v6 < *(result + 16))
  {
    v10 = *(v7 - 3);
    v9 = *(v7 - 2);
    v11 = *(v7 - 1);
    v12 = *v7;
    sub_255C74200(v10, v9, v11, *v7);
    v13 = sub_255CB291C(v10, v9, v11, v12);
    if (v4)
    {

      sub_255C7429C(v10, v9, v11, v12);
    }

    v14 = v13;
    result = sub_255C7429C(v10, v9, v11, v12);
    v15 = *(v14 + 16);
    v16 = *(v8 + 16);
    v17 = v16 + v15;
    if (__OFADD__(v16, v15))
    {
      goto LABEL_31;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) != 0 && v17 <= *(v8 + 24) >> 1)
    {
      if (*(v14 + 16))
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (v16 <= v17)
      {
        v18 = v16 + v15;
      }

      else
      {
        v18 = v16;
      }

      result = sub_255C96444(result, v18, 1, v8);
      v8 = result;
      if (*(v14 + 16))
      {
LABEL_20:
        if ((*(v8 + 24) >> 1) - *(v8 + 16) < v15)
        {
          goto LABEL_33;
        }

        swift_arrayInitWithCopy();

        if (v15)
        {
          v19 = *(v8 + 16);
          v20 = __OFADD__(v19, v15);
          v21 = v19 + v15;
          if (v20)
          {
            goto LABEL_34;
          }

          *(v8 + 16) = v21;
        }

        goto LABEL_8;
      }
    }

    if (v15)
    {
      goto LABEL_32;
    }

LABEL_8:
    ++v6;
    v7 += 32;
    result = v27;
    if (v28 == v6)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_255CB2B98(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_255CB2BE0(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for LegalDocumentIdentifier(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LegalDocumentIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_255CB2D90()
{
  sub_255D06478();
  if (qword_27F7DD818 != -1)
  {
    swift_once();
  }

  v0 = qword_27F7E5E40;
  return sub_255D06988();
}

unint64_t sub_255CB2F84(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 0xD000000000000036;
    if (a1 != 3)
    {
      v5 = 0xD00000000000003CLL;
    }

    if (a1 == 2)
    {
      v5 = 0xD000000000000034;
    }

    v6 = 0xD000000000000033;
    if (!a1)
    {
      v6 = 0xD000000000000038;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0xD000000000000039;
    if (a1 == 9)
    {
      v2 = 0xD000000000000034;
    }

    else
    {
      v2 = 0xD000000000000035;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000037;
    if (a1 == 6)
    {
      v3 = 0xD00000000000003ALL;
    }

    if (a1 == 5)
    {
      v3 = 0xD00000000000003DLL;
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

uint64_t sub_255CB30B8(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 0x694C656369766564;
    v6 = 0x6157656369766564;
    v7 = 0xD000000000000016;
    if (a1 == 3)
    {
      v7 = 0xD000000000000010;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (!a1)
    {
      v5 = 0xD000000000000012;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000013;
    v2 = 0x4C646F50656D6F68;
    if (a1 != 9)
    {
      v2 = 0x57646F50656D6F68;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000011;
    if (a1 == 6)
    {
      v3 = 0xD000000000000014;
    }

    if (a1 == 5)
    {
      v3 = 0xD000000000000017;
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

uint64_t sub_255CB3250(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_255CB30B8(*a1);
  v5 = v4;
  if (v3 == sub_255CB30B8(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_255D076D8();
  }

  return v8 & 1;
}

uint64_t sub_255CB32D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_255CB3508();
  *a1 = result;
  return result;
}

uint64_t sub_255CB3308@<X0>(uint64_t *a1@<X8>)
{
  result = sub_255CB30B8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_255CB3338()
{
  result = qword_27F7DED38;
  if (!qword_27F7DED38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DED38);
  }

  return result;
}

uint64_t sub_255CB338C()
{
  v1 = *v0;
  sub_255D07728();
  sub_255CB30B8(v1);
  sub_255D07058();

  return sub_255D07768();
}

uint64_t sub_255CB33F0()
{
  sub_255CB30B8(*v0);
  sub_255D07058();
}

uint64_t sub_255CB3444()
{
  v1 = *v0;
  sub_255D07728();
  sub_255CB30B8(v1);
  sub_255D07058();

  return sub_255D07768();
}

unint64_t sub_255CB34B4()
{
  result = qword_27F7DED40;
  if (!qword_27F7DED40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DED40);
  }

  return result;
}

uint64_t sub_255CB3508()
{
  v0 = sub_255D07678();

  if (v0 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v0;
  }
}

void sub_255CB35C4()
{
  sub_255CB3638();
  if (v0 <= 0x3F)
  {
    sub_255CB3680();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_255CB3638()
{
  if (!qword_27F7DED58)
  {
    v0 = sub_255D05B78();
    if (!v1)
    {
      atomic_store(v0, &qword_27F7DED58);
    }
  }
}

uint64_t sub_255CB3680()
{
  result = qword_27F7DED60;
  if (!qword_27F7DED60)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27F7DED60);
  }

  return result;
}

uint64_t sub_255CB36C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LegalDocumentModel.DocumentType(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_255CB37A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for LegalDocumentModel.DocumentType(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

void sub_255CB3888()
{
  type metadata accessor for LegalDocumentModel.DocumentType(319);
  if (v0 <= 0x3F)
  {
    sub_255CB391C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_255CB391C()
{
  if (!qword_27F7DED78)
  {
    v0 = sub_255D074A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F7DED78);
    }
  }
}

uint64_t sub_255CB396C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v6 = type metadata accessor for SafetyAndHandlingSectionModel();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v21 = MEMORY[0x277D84F90];
  sub_255C979D8(0, v10, 0);
  v11 = v21;
  v12 = *(sub_255D05B78() - 8);
  v13 = a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v18 = *(v12 + 72);
  while (1)
  {
    v19(v13);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v21 = v11;
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_255C979D8(v14 > 1, v15 + 1, 1);
      v11 = v21;
    }

    *(v11 + 16) = v15 + 1;
    sub_255CB7E04(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15);
    v13 += v18;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_255CB3B54()
{
  v1 = sub_255D05B78();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LegalDocumentModel.DocumentType(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255CB7BE4(v0, v7, type metadata accessor for LegalDocumentModel.DocumentType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v10 = 2;
    }

    else
    {
      v10 = 3;
    }

    return MEMORY[0x259C4BB60](v10);
  }

  else if (EnumCaseMultiPayload)
  {
    MEMORY[0x259C4BB60](1);
    sub_255D07058();
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    MEMORY[0x259C4BB60](0);
    sub_255CB55CC(&qword_27F7DDC30, MEMORY[0x277CC9260]);
    sub_255D07038();
    return (*(v2 + 8))(v4, v1);
  }
}

uint64_t sub_255CB3D94()
{
  v1 = v0;
  if (sub_255CB30B8(*v0) == 0xD000000000000017 && 0x8000000255D18490 == v2)
  {
  }

  else
  {
    v4 = sub_255D076D8();

    if ((v4 & 1) == 0)
    {
      return 1;
    }
  }

  v6 = type metadata accessor for LegalDocumentModel(0);
  v7 = &v1[*(v6 + 24)];
  if (*(v7 + 1))
  {
    v8 = *v7;
    strcpy(v30, ", language: ");
    BYTE5(v30[1]) = 0;
    HIWORD(v30[1]) = -5120;
    MEMORY[0x259C4B5D0](v8);
    v10 = v30[0];
    v9 = v30[1];
  }

  else
  {
    v10 = 0;
    v9 = 0xE000000000000000;
  }

  v11 = &v1[*(v6 + 28)];
  if (*(v11 + 1))
  {
    v12 = *v11;
    strcpy(v30, ", region: ");
    BYTE3(v30[1]) = 0;
    HIDWORD(v30[1]) = -369098752;
    MEMORY[0x259C4B5D0](v12);
    v14 = v30[0];
    v13 = v30[1];
  }

  else
  {
    v14 = 0;
    v13 = 0xE000000000000000;
  }

  v15 = sub_255CB41D0()[2];

  if (v15)
  {
    if (qword_27F7DD820 != -1)
    {
      swift_once();
    }

    v16 = sub_255D05DB8();
    __swift_project_value_buffer(v16, qword_27F7E5E48);

    v17 = sub_255D05D98();
    v18 = sub_255D07448();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v30[0] = v20;
      *v19 = 136315394;
      v21 = sub_255CBF790(v10, v9, v30);

      *(v19 + 4) = v21;
      *(v19 + 12) = 2080;
      v22 = sub_255CBF790(v14, v13, v30);

      *(v19 + 14) = v22;
      _os_log_impl(&dword_255C4F000, v17, v18, ".deviceSafetyAndHandling shouldShow = true%s%s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C4C620](v20, -1, -1);
      MEMORY[0x259C4C620](v19, -1, -1);
    }

    else
    {
    }

    return 1;
  }

  else
  {
    if (qword_27F7DD820 != -1)
    {
      swift_once();
    }

    v23 = sub_255D05DB8();
    __swift_project_value_buffer(v23, qword_27F7E5E48);

    v24 = sub_255D05D98();
    v25 = sub_255D07448();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v30[0] = v27;
      *v26 = 136315394;
      v28 = sub_255CBF790(v10, v9, v30);

      *(v26 + 4) = v28;
      *(v26 + 12) = 2080;
      v29 = sub_255CBF790(v14, v13, v30);

      *(v26 + 14) = v29;
      _os_log_impl(&dword_255C4F000, v24, v25, ".deviceSafetyAndHandling shouldShow = false%s%s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C4C620](v27, -1, -1);
      MEMORY[0x259C4C620](v26, -1, -1);
    }

    else
    {
    }

    return 0;
  }
}

void *sub_255CB41D0()
{
  v1 = v0;
  v72[1] = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for SafetyAndHandlingSectionModel();
  v66 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v65 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v59 - v5;
  v7 = sub_255D05AA8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCB0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v59 - v12;
  v14 = sub_255D05B78();
  MEMORY[0x28223BE20](v14);
  v69 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v71 = &v59 - v17;
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v59 - v20;
  v67 = v22;
  (*(v22 + 56))(v13, 1, 1, v14, v19);
  (*(v8 + 104))(v10, *MEMORY[0x277CC91D8], v7);
  sub_255D05B58();
  v23 = [objc_opt_self() defaultManager];
  v60 = v21;
  v24 = sub_255D05AF8();
  v72[0] = 0;
  v25 = [v23 contentsOfDirectoryAtURL:v24 includingPropertiesForKeys:0 options:0 error:v72];

  v26 = v72[0];
  if (!v25)
  {
    v43 = v72[0];
    v32 = sub_255D05A68();

    swift_willThrow();
    if (qword_27F7DD820 == -1)
    {
LABEL_17:
      v44 = sub_255D05DB8();
      __swift_project_value_buffer(v44, qword_27F7E5E48);
      v45 = sub_255D05D98();
      v46 = sub_255D07448();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&dword_255C4F000, v45, v46, "No bundles found", v47, 2u);
        MEMORY[0x259C4C620](v47, -1, -1);
      }

      (*(v67 + 8))(v60, v14);
      return MEMORY[0x277D84F90];
    }

LABEL_36:
    swift_once();
    goto LABEL_17;
  }

  v59 = v1;
  v62 = v6;
  v27 = sub_255D07278();
  v28 = v26;

  v29 = *(v27 + 16);
  v70 = v14;
  v64 = v29;
  if (v29)
  {
    v30 = 0;
    v31 = 0x656C646E7562;
    v63 = v67 + 16;
    v61 = (v67 + 8);
    v68 = (v67 + 32);
    v32 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v30 >= *(v27 + 16))
      {
        __break(1u);
        goto LABEL_35;
      }

      v33 = (*(v67 + 80) + 32) & ~*(v67 + 80);
      v34 = *(v67 + 72);
      (*(v67 + 16))(v71, v27 + v33 + v34 * v30, v14);
      if (sub_255D05AB8() == v31 && v35 == 0xE600000000000000)
      {
        break;
      }

      v36 = sub_255D076D8();

      if (v36)
      {
        goto LABEL_11;
      }

      (*v61)(v71, v14);
LABEL_5:
      if (v64 == ++v30)
      {
        goto LABEL_21;
      }
    }

LABEL_11:
    v37 = v31;
    v38 = *v68;
    (*v68)(v69, v71, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v72[0] = v32;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_255C97A1C(0, v32[2] + 1, 1);
      v32 = v72[0];
    }

    v41 = v32[2];
    v40 = v32[3];
    if (v41 >= v40 >> 1)
    {
      sub_255C97A1C(v40 > 1, v41 + 1, 1);
      v32 = v72[0];
    }

    v32[2] = v41 + 1;
    v42 = v32 + v33 + v41 * v34;
    v14 = v70;
    v38(v42, v69, v70);
    v31 = v37;
    goto LABEL_5;
  }

  v32 = MEMORY[0x277D84F90];
LABEL_21:

  MEMORY[0x28223BE20](v49);
  *(&v59 - 2) = v59;
  v50 = sub_255CB396C(sub_255CB7DE4, (&v59 - 4), v32);

  v51 = *(v50 + 16);
  if (v51)
  {
    v52 = 0;
    v32 = MEMORY[0x277D84F90];
    v53 = v62;
    while (v52 < *(v50 + 16))
    {
      v54 = (*(v66 + 80) + 32) & ~*(v66 + 80);
      v55 = *(v66 + 72);
      sub_255CB7BE4(v50 + v54 + v55 * v52, v53, type metadata accessor for SafetyAndHandlingSectionModel);
      if (sub_255CB8064())
      {
        sub_255CB7E04(v53, v65);
        v56 = swift_isUniquelyReferenced_nonNull_native();
        v72[0] = v32;
        if ((v56 & 1) == 0)
        {
          sub_255C979D8(0, v32[2] + 1, 1);
          v32 = v72[0];
        }

        v58 = v32[2];
        v57 = v32[3];
        if (v58 >= v57 >> 1)
        {
          sub_255C979D8(v57 > 1, v58 + 1, 1);
          v32 = v72[0];
        }

        v32[2] = v58 + 1;
        sub_255CB7E04(v65, v32 + v54 + v58 * v55);
        v53 = v62;
      }

      else
      {
        sub_255CB7D5C(v53, type metadata accessor for SafetyAndHandlingSectionModel);
      }

      ++v52;
      v14 = v70;
      if (v51 == v52)
      {
        goto LABEL_33;
      }
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v32 = MEMORY[0x277D84F90];
LABEL_33:

  v72[0] = v32;

  sub_255CB56E0(v72);

  (*(v67 + 8))(v60, v14);
  return v72[0];
}

uint64_t sub_255CB4A04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_255D05B78();
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  v7 = type metadata accessor for LegalDocumentModel(0);
  v8 = *(v7 + 28);
  v9 = (a2 + *(v7 + 24));
  v11 = *v9;
  v10 = v9[1];
  v13 = *(a2 + v8);
  v12 = *(a2 + v8 + 8);
  v14 = type metadata accessor for SafetyAndHandlingSectionModel();
  v15 = (a3 + *(v14 + 20));
  v16 = (a3 + *(v14 + 24));
  *v15 = v11;
  v15[1] = v10;
  *v16 = v13;
  v16[1] = v12;
}

uint64_t sub_255CB4AC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = type metadata accessor for LegalDocumentModel(0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v28 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for LegalDocumentWebView(0);
  MEMORY[0x28223BE20](v33);
  v29 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DED90);
  MEMORY[0x28223BE20](v32);
  v30 = &v28 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DED98);
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - v9;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DEDA0);
  MEMORY[0x28223BE20](v31);
  v12 = &v28 - v11;
  v13 = type metadata accessor for LegalDocumentSafetyAndHandlingSettingsView(0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for LegalDocumentModel.DocumentType(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v4 + 28);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v4) = sub_255CB76C4(a1 + v19, v18);
  sub_255CB7D5C(v18, type metadata accessor for LegalDocumentModel.DocumentType);
  if (v4)
  {
    sub_255CB7BE4(a1, v15 + *(v13 + 20), type metadata accessor for LegalDocumentModel);
    *v15 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DEDC8);
    swift_storeEnumTagMultiPayload();
    sub_255CB7BE4(v15, v10, type metadata accessor for LegalDocumentSafetyAndHandlingSettingsView);
    swift_storeEnumTagMultiPayload();
    sub_255CB55CC(&qword_27F7DEDB0, type metadata accessor for LegalDocumentSafetyAndHandlingSettingsView);
    sub_255CB7D08();
    sub_255D06528();
    sub_255C7299C(v12, v30, &qword_27F7DEDA0);
    swift_storeEnumTagMultiPayload();
    sub_255CB7C4C();
    sub_255CB55CC(&qword_27F7DEDC0, type metadata accessor for LegalDocumentWebView);
    sub_255D06528();
    sub_255C76B94(v12, &qword_27F7DEDA0);
    v20 = type metadata accessor for LegalDocumentSafetyAndHandlingSettingsView;
    v21 = v15;
  }

  else
  {
    v22 = v30;
    swift_storeEnumTagMultiPayload();
    v23 = sub_255CB76C4(a1 + v19, v18);
    sub_255CB7D5C(v18, type metadata accessor for LegalDocumentModel.DocumentType);
    if (v23)
    {
      v35 = 0;
      sub_255D06D98();
      v24 = v37;
      *v10 = v36;
      *(v10 + 1) = v24;
      *(v10 + 1) = xmmword_255D0E1F0;
      *(v10 + 2) = xmmword_255D0E200;
      *(v10 + 6) = 0x3FB999999999999ALL;
      swift_storeEnumTagMultiPayload();
      sub_255CB55CC(&qword_27F7DEDB0, type metadata accessor for LegalDocumentSafetyAndHandlingSettingsView);
      sub_255CB7D08();

      sub_255D06528();
      sub_255C7299C(v12, v22, &qword_27F7DEDA0);
      swift_storeEnumTagMultiPayload();
      sub_255CB7C4C();
      sub_255CB55CC(&qword_27F7DEDC0, type metadata accessor for LegalDocumentWebView);
      sub_255D06528();

      return sub_255C76B94(v12, &qword_27F7DEDA0);
    }

    v26 = v28;
    sub_255CB7BE4(a1, v28, type metadata accessor for LegalDocumentModel);
    v27 = v29;
    sub_255CC2094(v26, v29);
    sub_255CB7BE4(v27, v22, type metadata accessor for LegalDocumentWebView);
    swift_storeEnumTagMultiPayload();
    sub_255CB7C4C();
    sub_255CB55CC(&qword_27F7DEDC0, type metadata accessor for LegalDocumentWebView);
    sub_255D06528();
    v20 = type metadata accessor for LegalDocumentWebView;
    v21 = v27;
  }

  return sub_255CB7D5C(v21, v20);
}

uint64_t sub_255CB51AC()
{
  v1 = v0;
  v2 = sub_255D05B78();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LegalDocumentModel.DocumentType(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255CB30B8(*v1);
  sub_255D07058();

  v9 = type metadata accessor for LegalDocumentModel(0);
  sub_255CB7BE4(&v1[v9[5]], v8, type metadata accessor for LegalDocumentModel.DocumentType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = 3;
    }

    MEMORY[0x259C4BB60](v11);
  }

  else if (EnumCaseMultiPayload)
  {
    MEMORY[0x259C4BB60](1);
    sub_255D07058();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x259C4BB60](0);
    sub_255CB55CC(&qword_27F7DDC30, MEMORY[0x277CC9260]);
    sub_255D07038();
    (*(v3 + 8))(v5, v2);
  }

  if (*&v1[v9[6] + 8])
  {
    sub_255D07748();
    sub_255D07058();
  }

  else
  {
    sub_255D07748();
  }

  if (!*&v1[v9[7] + 8])
  {
    return sub_255D07748();
  }

  sub_255D07748();
  return sub_255D07058();
}

uint64_t sub_255CB5490(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_255D07728();
  a3(v5);
  return sub_255D07768();
}

uint64_t sub_255CB54F4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_255D07728();
  a4(v6);
  return sub_255D07768();
}

uint64_t sub_255CB55CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_255CB5638(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DEDD0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_255C7299C(a1, &v5 - v3, &qword_27F7DEDD0);
  return sub_255D06348();
}

void sub_255CB56E0(void **a1)
{
  v2 = *(type metadata accessor for SafetyAndHandlingSectionModel() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_255CB76B0(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_255CB5788(v5);
  *a1 = v3;
}

void sub_255CB5788(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_255D07698();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for SafetyAndHandlingSectionModel();
        v6 = sub_255D072B8();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for SafetyAndHandlingSectionModel() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_255CB5CFC(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_255CB58B4(0, v2, 1, a1);
  }
}

void sub_255CB58B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v53 = type metadata accessor for SafetyAndHandlingSectionModel();
  MEMORY[0x28223BE20](v53);
  v52 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v43 - v10;
  MEMORY[0x28223BE20](v12);
  v15 = &v43 - v14;
  v45 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v17 = *(v13 + 72);
    v50 = "/SafetyAndHandling";
    v51 = v16;
    v18 = v16 + v17 * (a3 - 1);
    v19 = -v17;
    v20 = a1 - a3;
    v44 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v48 = v18;
    v49 = a3;
    v46 = v21;
    v47 = v20;
    v22 = v18;
    while (1)
    {
      sub_255CB7BE4(v21, v15, type metadata accessor for SafetyAndHandlingSectionModel);
      sub_255CB7BE4(v22, v11, type metadata accessor for SafetyAndHandlingSectionModel);
      v23 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
      v24 = sub_255D05AF8();
      v25 = [v23 initWithURL_];

      v26 = 0.0;
      v27 = 0.0;
      if (!v25)
      {
        goto LABEL_14;
      }

      v28 = [v25 infoDictionary];
      if (!v28)
      {
        goto LABEL_13;
      }

      v29 = v28;
      v30 = sub_255D07008();

      if (!*(v30 + 16))
      {
        break;
      }

      v31 = sub_255C7B7C4(0xD000000000000011, v50 | 0x8000000000000000);
      if ((v32 & 1) == 0)
      {
        break;
      }

      sub_255CB7E68(*(v30 + 56) + 32 * v31, v54);

      if (swift_dynamicCast())
      {
        v27 = v55;
      }

LABEL_14:
      v33 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
      v34 = sub_255D05AF8();
      v35 = [v33 initWithURL_];

      if (!v35)
      {
        goto LABEL_22;
      }

      v36 = [v35 infoDictionary];
      if (!v36)
      {
        goto LABEL_21;
      }

      v37 = v36;
      v38 = sub_255D07008();

      if (!*(v38 + 16) || (v39 = sub_255C7B7C4(0xD000000000000011, v50 | 0x8000000000000000), (v40 & 1) == 0))
      {

LABEL_21:

        goto LABEL_22;
      }

      sub_255CB7E68(*(v38 + 56) + 32 * v39, v54);

      if (swift_dynamicCast())
      {
        v26 = v55;
      }

LABEL_22:
      sub_255CB7D5C(v11, type metadata accessor for SafetyAndHandlingSectionModel);
      sub_255CB7D5C(v15, type metadata accessor for SafetyAndHandlingSectionModel);
      if (v27 >= v26)
      {
        goto LABEL_4;
      }

      if (!v51)
      {
        __break(1u);
        return;
      }

      v41 = v52;
      sub_255CB7E04(v21, v52);
      swift_arrayInitWithTakeFrontToBack();
      sub_255CB7E04(v41, v22);
      v22 += v19;
      v21 += v19;
      if (__CFADD__(v20++, 1))
      {
LABEL_4:
        a3 = v49 + 1;
        v18 = v48 + v44;
        v20 = v47 - 1;
        v21 = v46 + v44;
        if (v49 + 1 == v45)
        {
          return;
        }

        goto LABEL_5;
      }
    }

LABEL_13:

    goto LABEL_14;
  }
}

void sub_255CB5CFC(uint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v149 = a1;
  v164 = type metadata accessor for SafetyAndHandlingSectionModel();
  v157 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v152 = &v144 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v163 = &v144 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v144 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v144 - v16;
  MEMORY[0x28223BE20](v18);
  v161 = &v144 - v19;
  MEMORY[0x28223BE20](v20);
  v160 = &v144 - v21;
  MEMORY[0x28223BE20](v22);
  v147 = &v144 - v23;
  MEMORY[0x28223BE20](v24);
  v146 = &v144 - v25;
  if (a3[1] < 1)
  {
    v28 = MEMORY[0x277D84F90];
LABEL_134:
    v5 = *v149;
    if (!*v149)
    {
      goto LABEL_173;
    }

    a4 = v28;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v138 = a4;
LABEL_137:
      v168 = v138;
      v139 = *(v138 + 2);
      if (v139 >= 2)
      {
        while (*a3)
        {
          a4 = v139 - 1;
          v140 = *&v138[16 * v139];
          v141 = v138;
          v142 = *&v138[16 * v139 + 24];
          sub_255CB6B90(*a3 + *(v157 + 72) * v140, *a3 + *(v157 + 72) * *&v138[16 * v139 + 16], *a3 + *(v157 + 72) * v142, v5);
          if (v6)
          {
            goto LABEL_145;
          }

          if (v142 < v140)
          {
            goto LABEL_160;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v141 = sub_255CB75B8(v141);
          }

          if (v139 - 2 >= *(v141 + 2))
          {
            goto LABEL_161;
          }

          v143 = &v141[16 * v139];
          *v143 = v140;
          *(v143 + 1) = v142;
          v168 = v141;
          sub_255CB752C(a4);
          v138 = v168;
          v139 = *(v168 + 2);
          if (v139 <= 1)
          {
            goto LABEL_145;
          }
        }

        goto LABEL_171;
      }

LABEL_145:

      return;
    }

LABEL_167:
    v138 = sub_255CB75B8(a4);
    goto LABEL_137;
  }

  v26 = a3[1];
  v27 = 0;
  v28 = MEMORY[0x277D84F90];
  v162 = "/SafetyAndHandling";
  v148 = a4;
  v165 = v14;
  v145 = a3;
LABEL_4:
  v158 = v26;
  v153 = v28;
  if (v27 + 1 >= v26)
  {
    v57 = v27 + 1;
    goto LABEL_43;
  }

  v29 = *(v157 + 72);
  v30 = *a3 + v29 * (v27 + 1);
  v156 = *a3;
  v31 = v156;
  v32 = v146;
  sub_255CB7BE4(v30, v146, type metadata accessor for SafetyAndHandlingSectionModel);
  v33 = v31 + v29 * v27;
  v150 = v27;
  v34 = v147;
  sub_255CB7BE4(v33, v147, type metadata accessor for SafetyAndHandlingSectionModel);
  v35 = sub_255CB88D8();
  v36 = sub_255CB88D8();
  sub_255CB7D5C(v34, type metadata accessor for SafetyAndHandlingSectionModel);
  sub_255CB7D5C(v32, type metadata accessor for SafetyAndHandlingSectionModel);
  v37 = v150 + 2;
  v159 = v29;
  v5 = v156 + v29 * (v150 + 2);
  v38 = v158;
  while (v38 != v37)
  {
    sub_255CB7BE4(v5, v160, type metadata accessor for SafetyAndHandlingSectionModel);
    sub_255CB7BE4(v30, v161, type metadata accessor for SafetyAndHandlingSectionModel);
    v39 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
    v40 = sub_255D05AF8();
    v41 = [v39 initWithURL_];

    v42 = 0.0;
    v43 = 0.0;
    if (!v41)
    {
      goto LABEL_20;
    }

    v44 = [v41 infoDictionary];
    if (!v44)
    {
      goto LABEL_18;
    }

    v45 = v44;
    v46 = sub_255D07008();

    if (!*(v46 + 16))
    {

LABEL_18:

      v14 = v165;
      goto LABEL_20;
    }

    v47 = sub_255C7B7C4(0xD000000000000011, v162 | 0x8000000000000000);
    v14 = v165;
    if (v48)
    {
      sub_255CB7E68(*(v46 + 56) + 32 * v47, v167);

      if (swift_dynamicCast())
      {
        v43 = v166;
      }
    }

    else
    {
    }

LABEL_20:
    v49 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
    v50 = sub_255D05AF8();
    v51 = [v49 initWithURL_];

    if (v51)
    {
      v52 = [v51 infoDictionary];
      if (v52)
      {
        v53 = v52;
        v54 = sub_255D07008();

        if (!*(v54 + 16))
        {

          v14 = v165;
          goto LABEL_9;
        }

        v55 = sub_255C7B7C4(0xD000000000000011, v162 | 0x8000000000000000);
        v14 = v165;
        if (v56)
        {
          sub_255CB7E68(*(v54 + 56) + 32 * v55, v167);

          if (swift_dynamicCast())
          {
            v42 = v166;
          }

          goto LABEL_9;
        }
      }
    }

LABEL_9:
    sub_255CB7D5C(v161, type metadata accessor for SafetyAndHandlingSectionModel);
    sub_255CB7D5C(v160, type metadata accessor for SafetyAndHandlingSectionModel);
    ++v37;
    v5 += v159;
    v30 += v159;
    if (v35 < v36 == v43 >= v42)
    {
      v158 = v37 - 1;
      break;
    }
  }

  a3 = v145;
  a4 = v148;
  v27 = v150;
  if (v35 >= v36)
  {
    goto LABEL_42;
  }

  v57 = v158;
  if (v158 < v150)
  {
    goto LABEL_164;
  }

  if (v150 < v158)
  {
    v144 = v6;
    v58 = v159 * (v158 - 1);
    v5 = v158 * v159;
    v59 = v150 * v159;
    do
    {
      if (v27 != --v57)
      {
        v60 = a3;
        v61 = *a3;
        if (!v61)
        {
          goto LABEL_170;
        }

        sub_255CB7E04(v61 + v59, v152);
        if (v59 < v58 || v61 + v59 >= (v61 + v5))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v59 != v58)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        sub_255CB7E04(v152, v61 + v58);
        a3 = v60;
        v14 = v165;
      }

      ++v27;
      v58 -= v159;
      v5 -= v159;
      v59 += v159;
    }

    while (v27 < v57);
    v6 = v144;
    a4 = v148;
    v27 = v150;
LABEL_42:
    v57 = v158;
  }

LABEL_43:
  v62 = a3[1];
  if (v57 >= v62)
  {
LABEL_55:
    if (v57 < v27)
    {
      goto LABEL_162;
    }

    goto LABEL_56;
  }

  v158 = v57;
  if (__OFSUB__(v57, v27))
  {
    goto LABEL_163;
  }

  if (v57 - v27 >= a4)
  {
    v57 = v158;
    goto LABEL_55;
  }

  if (__OFADD__(v27, a4))
  {
    goto LABEL_165;
  }

  if ((v27 + a4) >= v62)
  {
    v63 = v62;
  }

  else
  {
    v63 = v27 + a4;
  }

  if (v63 < v27)
  {
LABEL_166:
    __break(1u);
    goto LABEL_167;
  }

  if (v158 == v63)
  {
    v57 = v158;
    if (v158 < v27)
    {
      goto LABEL_162;
    }

    goto LABEL_56;
  }

  v144 = v6;
  v110 = v27;
  v111 = *a3;
  v112 = *(v157 + 72);
  v5 = *a3 + v112 * (v158 - 1);
  v113 = -v112;
  v150 = v110;
  v114 = v110 - v158;
  v151 = v112;
  v115 = v111 + v158 * v112;
  v154 = v63;
  while (2)
  {
    v155 = v115;
    v156 = v114;
    v116 = v115;
    v159 = v5;
LABEL_109:
    sub_255CB7BE4(v116, v17, type metadata accessor for SafetyAndHandlingSectionModel);
    sub_255CB7BE4(v5, v14, type metadata accessor for SafetyAndHandlingSectionModel);
    v117 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
    v118 = sub_255D05AF8();
    v119 = [v117 initWithURL_];

    v120 = 0.0;
    v121 = 0.0;
    if (v119)
    {
      v122 = [v119 infoDictionary];
      if (v122)
      {
        v123 = v122;
        v124 = sub_255D07008();

        if (*(v124 + 16) && (v125 = sub_255C7B7C4(0xD000000000000011, v162 | 0x8000000000000000), (v126 & 1) != 0))
        {
          sub_255CB7E68(*(v124 + 56) + 32 * v125, v167);

          v127 = swift_dynamicCast();
          v14 = v165;
          if (v127)
          {
            v121 = v166;
          }
        }

        else
        {

          v14 = v165;
        }
      }

      else
      {
      }
    }

    v128 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
    v129 = sub_255D05AF8();
    v130 = [v128 initWithURL_];

    if (v130)
    {
      v131 = [v130 infoDictionary];
      if (v131)
      {
        v132 = v131;
        v133 = sub_255D07008();

        if (*(v133 + 16) && (v134 = sub_255C7B7C4(0xD000000000000011, v162 | 0x8000000000000000), (v135 & 1) != 0))
        {
          sub_255CB7E68(*(v133 + 56) + 32 * v134, v167);

          v136 = swift_dynamicCast();
          v14 = v165;
          if (v136)
          {
            v120 = v166;
          }
        }

        else
        {

          v14 = v165;
        }
      }

      else
      {
      }
    }

    a4 = type metadata accessor for SafetyAndHandlingSectionModel;
    sub_255CB7D5C(v14, type metadata accessor for SafetyAndHandlingSectionModel);
    sub_255CB7D5C(v17, type metadata accessor for SafetyAndHandlingSectionModel);
    if (v121 >= v120)
    {
LABEL_107:
      v5 = v159 + v151;
      v114 = v156 - 1;
      v115 = v155 + v151;
      ++v158;
      v57 = v154;
      if (v158 != v154)
      {
        continue;
      }

      v6 = v144;
      a3 = v145;
      v27 = v150;
      if (v154 < v150)
      {
        goto LABEL_162;
      }

LABEL_56:
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v28 = v153;
      }

      else
      {
        v28 = sub_255C9726C(0, *(v153 + 2) + 1, 1, v153);
      }

      a4 = *(v28 + 2);
      v64 = *(v28 + 3);
      v65 = a4 + 1;
      if (a4 >= v64 >> 1)
      {
        v28 = sub_255C9726C((v64 > 1), a4 + 1, 1, v28);
      }

      *(v28 + 2) = v65;
      v66 = &v28[16 * a4];
      *(v66 + 4) = v27;
      *(v66 + 5) = v57;
      v5 = *v149;
      if (!*v149)
      {
        goto LABEL_172;
      }

      v154 = v57;
      if (!a4)
      {
LABEL_3:
        v26 = a3[1];
        v27 = v154;
        a4 = v148;
        if (v154 >= v26)
        {
          goto LABEL_134;
        }

        goto LABEL_4;
      }

      while (1)
      {
        v67 = v65 - 1;
        if (v65 >= 4)
        {
          break;
        }

        if (v65 == 3)
        {
          v68 = *(v28 + 4);
          v69 = *(v28 + 5);
          v78 = __OFSUB__(v69, v68);
          v70 = v69 - v68;
          v71 = v78;
LABEL_75:
          if (v71)
          {
            goto LABEL_151;
          }

          v84 = &v28[16 * v65];
          v86 = *v84;
          v85 = *(v84 + 1);
          v87 = __OFSUB__(v85, v86);
          v88 = v85 - v86;
          v89 = v87;
          if (v87)
          {
            goto LABEL_154;
          }

          v90 = &v28[16 * v67 + 32];
          v92 = *v90;
          v91 = *(v90 + 1);
          v78 = __OFSUB__(v91, v92);
          v93 = v91 - v92;
          if (v78)
          {
            goto LABEL_157;
          }

          if (__OFADD__(v88, v93))
          {
            goto LABEL_158;
          }

          if (v88 + v93 >= v70)
          {
            if (v70 < v93)
            {
              v67 = v65 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v94 = &v28[16 * v65];
        v96 = *v94;
        v95 = *(v94 + 1);
        v78 = __OFSUB__(v95, v96);
        v88 = v95 - v96;
        v89 = v78;
LABEL_89:
        if (v89)
        {
          goto LABEL_153;
        }

        v97 = &v28[16 * v67];
        v99 = *(v97 + 4);
        v98 = *(v97 + 5);
        v78 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v78)
        {
          goto LABEL_156;
        }

        if (v100 < v88)
        {
          goto LABEL_3;
        }

LABEL_96:
        a4 = v67 - 1;
        if (v67 - 1 >= v65)
        {
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
          goto LABEL_166;
        }

        if (!*a3)
        {
          goto LABEL_169;
        }

        v105 = v28;
        v106 = *&v28[16 * a4 + 32];
        v107 = *&v28[16 * v67 + 40];
        sub_255CB6B90(*a3 + *(v157 + 72) * v106, *a3 + *(v157 + 72) * *&v28[16 * v67 + 32], *a3 + *(v157 + 72) * v107, v5);
        if (v6)
        {
          goto LABEL_145;
        }

        if (v107 < v106)
        {
          goto LABEL_147;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v108 = v105;
        }

        else
        {
          v108 = sub_255CB75B8(v105);
        }

        v14 = v165;
        if (a4 >= *(v108 + 2))
        {
          goto LABEL_148;
        }

        v109 = &v108[16 * a4];
        *(v109 + 4) = v106;
        *(v109 + 5) = v107;
        v168 = v108;
        sub_255CB752C(v67);
        v28 = v168;
        v65 = *(v168 + 2);
        if (v65 <= 1)
        {
          goto LABEL_3;
        }
      }

      v72 = &v28[16 * v65 + 32];
      v73 = *(v72 - 64);
      v74 = *(v72 - 56);
      v78 = __OFSUB__(v74, v73);
      v75 = v74 - v73;
      if (v78)
      {
        goto LABEL_149;
      }

      v77 = *(v72 - 48);
      v76 = *(v72 - 40);
      v78 = __OFSUB__(v76, v77);
      v70 = v76 - v77;
      v71 = v78;
      if (v78)
      {
        goto LABEL_150;
      }

      v79 = &v28[16 * v65];
      v81 = *v79;
      v80 = *(v79 + 1);
      v78 = __OFSUB__(v80, v81);
      v82 = v80 - v81;
      if (v78)
      {
        goto LABEL_152;
      }

      v78 = __OFADD__(v70, v82);
      v83 = v70 + v82;
      if (v78)
      {
        goto LABEL_155;
      }

      if (v83 >= v75)
      {
        v101 = &v28[16 * v67 + 32];
        v103 = *v101;
        v102 = *(v101 + 1);
        v78 = __OFSUB__(v102, v103);
        v104 = v102 - v103;
        if (v78)
        {
          goto LABEL_159;
        }

        if (v70 < v104)
        {
          v67 = v65 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

    break;
  }

  if (v111)
  {
    a4 = v163;
    sub_255CB7E04(v116, v163);
    swift_arrayInitWithTakeFrontToBack();
    sub_255CB7E04(a4, v5);
    v5 += v113;
    v116 += v113;
    if (__CFADD__(v114++, 1))
    {
      goto LABEL_107;
    }

    goto LABEL_109;
  }

  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
}

void sub_255CB6B90(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v80 = type metadata accessor for SafetyAndHandlingSectionModel();
  MEMORY[0x28223BE20](v80);
  v81 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v79 = &v72 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v72 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v72 - v15;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  if (a2 - a1 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_99;
  }

  v19 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v18 != -1)
  {
    v20 = (a2 - a1) / v18;
    v86 = a1;
    v85 = a4;
    if (v20 < v19 / v18)
    {
      v21 = v20 * v18;
      if (a4 < a1 || a1 + v21 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v81 = a4 + v21;
      v84 = a4 + v21;
      if (v21 >= 1 && a2 < a3)
      {
        v78 = "/SafetyAndHandling";
        v79 = v13;
        while (1)
        {
          v24 = a2;
          sub_255CB7BE4(a2, v16, type metadata accessor for SafetyAndHandlingSectionModel);
          sub_255CB7BE4(a4, v13, type metadata accessor for SafetyAndHandlingSectionModel);
          v25 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
          v26 = sub_255D05AF8();
          v27 = [v25 initWithURL_];

          v28 = 0.0;
          v29 = 0.0;
          if (!v27)
          {
            goto LABEL_31;
          }

          v30 = a4;
          v31 = [v27 infoDictionary];
          if (!v31)
          {
            goto LABEL_28;
          }

          v32 = v31;
          v33 = sub_255D07008();

          if (!*(v33 + 16))
          {
            break;
          }

          v34 = sub_255C7B7C4(0xD000000000000011, v78 | 0x8000000000000000);
          a4 = v30;
          if ((v35 & 1) == 0)
          {

            goto LABEL_30;
          }

          sub_255CB7E68(*(v33 + 56) + 32 * v34, v83);

          v36 = swift_dynamicCast();
          v13 = v79;
          if (v36)
          {
            v29 = v82;
          }

LABEL_31:
          v37 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
          v38 = sub_255D05AF8();
          v39 = [v37 initWithURL_];

          if (v39)
          {
            v40 = [v39 infoDictionary];
            if (v40)
            {
              v41 = a4;
              v42 = v40;
              v43 = sub_255D07008();

              if (*(v43 + 16) && (v44 = sub_255C7B7C4(0xD000000000000011, v78 | 0x8000000000000000), (v45 & 1) != 0))
              {
                sub_255CB7E68(*(v43 + 56) + 32 * v44, v83);

                a4 = v41;
                if (swift_dynamicCast())
                {
                  v28 = v82;
                }

                a2 = v24;
                v13 = v79;
              }

              else
              {

                a2 = v24;
                a4 = v41;
                v13 = v79;
              }

              goto LABEL_41;
            }
          }

          a2 = v24;
LABEL_41:
          sub_255CB7D5C(v13, type metadata accessor for SafetyAndHandlingSectionModel);
          sub_255CB7D5C(v16, type metadata accessor for SafetyAndHandlingSectionModel);
          if (v29 >= v28)
          {
            if (a1 < a4 || a1 >= a4 + v18)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v85 = a4 + v18;
            a4 += v18;
          }

          else
          {
            if (a1 < a2 || a1 >= a2 + v18)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v18;
          }

          a1 += v18;
          v86 = a1;
          if (a4 >= v81 || a2 >= a3)
          {
            goto LABEL_97;
          }
        }

LABEL_28:

        a4 = v30;
LABEL_30:
        v13 = v79;
        goto LABEL_31;
      }

      goto LABEL_97;
    }

    v22 = v19 / v18 * v18;
    if (a4 < a2 || a2 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v46 = a4 + v22;
    if (v22 < 1)
    {
LABEL_96:
      v86 = a2;
      v84 = v46;
LABEL_97:
      sub_255CB75CC(&v86, &v85, &v84);
      return;
    }

    v47 = -v18;
    v74 = "/SafetyAndHandling";
    v48 = a4 + v22;
    v76 = v47;
LABEL_60:
    v73 = v46;
    v49 = a2;
    a2 += v47;
    v77 = v49;
    v78 = a2;
    while (1)
    {
      if (v49 <= a1)
      {
        v86 = v49;
        v84 = v73;
        goto LABEL_97;
      }

      v50 = a4;
      v51 = a3;
      v75 = v46;
      v52 = v48 + v47;
      sub_255CB7BE4(v48 + v47, v79, type metadata accessor for SafetyAndHandlingSectionModel);
      sub_255CB7BE4(a2, v81, type metadata accessor for SafetyAndHandlingSectionModel);
      v53 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
      v54 = sub_255D05AF8();
      v55 = [v53 initWithURL_];

      v56 = 0.0;
      v57 = 0.0;
      if (v55)
      {
        v58 = [v55 infoDictionary];
        if (!v58)
        {
          goto LABEL_71;
        }

        v59 = v58;
        v60 = sub_255D07008();

        if (!*(v60 + 16))
        {

LABEL_71:

          a2 = v78;
          goto LABEL_73;
        }

        v61 = sub_255C7B7C4(0xD000000000000011, v74 | 0x8000000000000000);
        a2 = v78;
        if (v62)
        {
          sub_255CB7E68(*(v60 + 56) + 32 * v61, v83);

          if (swift_dynamicCast())
          {
            v57 = *&v84;
          }
        }

        else
        {
        }
      }

LABEL_73:
      v63 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
      v64 = sub_255D05AF8();
      v65 = [v63 initWithURL_];

      if (v65)
      {
        v66 = [v65 infoDictionary];
        v47 = v76;
        if (v66)
        {
          v67 = v66;
          v68 = sub_255D07008();

          if (*(v68 + 16) && (v69 = sub_255C7B7C4(0xD000000000000011, v74 | 0x8000000000000000), (v70 & 1) != 0))
          {
            sub_255CB7E68(*(v68 + 56) + 32 * v69, v83);

            v71 = swift_dynamicCast();
            a2 = v78;
            if (v71)
            {
              v56 = *&v84;
            }
          }

          else
          {

            a2 = v78;
          }
        }

        else
        {
        }
      }

      else
      {
        v47 = v76;
      }

      a3 = v51 + v47;
      sub_255CB7D5C(v81, type metadata accessor for SafetyAndHandlingSectionModel);
      sub_255CB7D5C(v79, type metadata accessor for SafetyAndHandlingSectionModel);
      if (v57 < v56)
      {
        if (v51 < v77 || a3 >= v77)
        {
          swift_arrayInitWithTakeFrontToBack();
          v46 = v75;
        }

        else
        {
          v46 = v75;
          if (v51 != v77)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a4 = v50;
        if (v48 <= v50)
        {
          goto LABEL_96;
        }

        goto LABEL_60;
      }

      v46 = v52;
      if (v51 < v48 || a3 >= v48)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v51 != v48)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v48 = v52;
      a4 = v50;
      v49 = v77;
      if (v52 <= v50)
      {
        a2 = v77;
        goto LABEL_96;
      }
    }
  }

LABEL_100:
  __break(1u);
}

uint64_t sub_255CB752C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_255CB75B8(v3);
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
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_255CB75CC(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for SafetyAndHandlingSectionModel();
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

uint64_t sub_255CB76C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_255D05B78();
  v28 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LegalDocumentModel.DocumentType(0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE028);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v27 - v14;
  v17 = (&v27 + *(v16 + 56) - v14);
  sub_255CB7BE4(a1, &v27 - v14, type metadata accessor for LegalDocumentModel.DocumentType);
  sub_255CB7BE4(a2, v17, type metadata accessor for LegalDocumentModel.DocumentType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        goto LABEL_22;
      }
    }

    else if (swift_getEnumCaseMultiPayload() == 3)
    {
      goto LABEL_22;
    }

LABEL_18:
    sub_255C76B94(v15, &qword_27F7DE028);
    goto LABEL_19;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_255CB7BE4(v15, v12, type metadata accessor for LegalDocumentModel.DocumentType);
    if (!swift_getEnumCaseMultiPayload())
    {
      v24 = v28;
      (*(v28 + 32))(v6, v17, v4);
      v23 = sub_255D05B18();
      v25 = *(v24 + 8);
      v25(v6, v4);
      v25(v12, v4);
      sub_255CB7D5C(v15, type metadata accessor for LegalDocumentModel.DocumentType);
      return v23 & 1;
    }

    (*(v28 + 8))(v12, v4);
    goto LABEL_18;
  }

  sub_255CB7BE4(v15, v9, type metadata accessor for LegalDocumentModel.DocumentType);
  v20 = *v9;
  v19 = v9[1];
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    goto LABEL_18;
  }

  if (v20 == *v17 && v19 == v17[1])
  {

    goto LABEL_22;
  }

  v22 = sub_255D076D8();

  if (v22)
  {
LABEL_22:
    sub_255CB7D5C(v15, type metadata accessor for LegalDocumentModel.DocumentType);
    v23 = 1;
    return v23 & 1;
  }

  sub_255CB7D5C(v15, type metadata accessor for LegalDocumentModel.DocumentType);
LABEL_19:
  v23 = 0;
  return v23 & 1;
}

BOOL sub_255CB7A8C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *a2;
  v5 = sub_255CB30B8(*a1);
  v7 = v6;
  if (v5 == sub_255CB30B8(v4) && v7 == v8)
  {
  }

  else
  {
    v10 = sub_255D076D8();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = type metadata accessor for LegalDocumentModel(0);
  if (sub_255CB76C4(&a1[v11[5]], &a2[v11[5]]))
  {
    v12 = v11[6];
    v13 = &a1[v12];
    v14 = *&a1[v12 + 8];
    v15 = &a2[v12];
    v16 = *(v15 + 1);
    if (v14)
    {
      if (!v16)
      {
        return 0;
      }

      v17 = *v13 == *v15 && v14 == v16;
      if (!v17 && (sub_255D076D8() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v16)
    {
      return 0;
    }

    v18 = v11[7];
    v19 = &a1[v18];
    v20 = *&a1[v18 + 8];
    v21 = &a2[v18];
    v22 = *(v21 + 1);
    if (v20)
    {
      return v22 && (*v19 == *v21 && v20 == v22 || (sub_255D076D8() & 1) != 0);
    }

    if (!v22)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_255CB7BE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_255CB7C4C()
{
  result = qword_27F7DEDA8;
  if (!qword_27F7DEDA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DEDA0);
    sub_255CB55CC(&qword_27F7DEDB0, type metadata accessor for LegalDocumentSafetyAndHandlingSettingsView);
    sub_255CB7D08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DEDA8);
  }

  return result;
}

unint64_t sub_255CB7D08()
{
  result = qword_27F7DEDB8;
  if (!qword_27F7DEDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DEDB8);
  }

  return result;
}

uint64_t sub_255CB7D5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_255CB7E04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SafetyAndHandlingSectionModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_255CB7E68(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_255CB7ED8()
{
  result = qword_27F7DEDD8;
  if (!qword_27F7DEDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DEDD8);
  }

  return result;
}

unint64_t sub_255CB7F40()
{
  result = qword_27F7DEDE0;
  if (!qword_27F7DEDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DEDE0);
  }

  return result;
}

uint64_t sub_255CB7F94(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    return sub_255C90184(*(a1 + 1), *(a2 + 1));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_255CB7FB8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_255CB8064()
{
  v1 = v0;
  v2 = type metadata accessor for SafetyAndHandlingSectionModel();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v72 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v72 - v9;
  v11 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
  v12 = sub_255D05AF8();
  v13 = [v11 initWithURL_];

  if (!v13)
  {
    if (qword_27F7DD820 != -1)
    {
      swift_once();
    }

    v25 = sub_255D05DB8();
    __swift_project_value_buffer(v25, qword_27F7E5E48);
    sub_255CBAC50(v1, v4);
    v26 = sub_255D05D98();
    v27 = sub_255D07448();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v74[0] = v29;
      *v28 = 136315138;
      v30 = sub_255D05AC8();
      v32 = v31;
      sub_255CBACB4(v4);
      v33 = sub_255CBF790(v30, v32, v74);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_255C4F000, v26, v27, "No bundle at url: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x259C4C620](v29, -1, -1);
      MEMORY[0x259C4C620](v28, -1, -1);

      return 0;
    }

    v38 = v4;
LABEL_19:
    sub_255CBACB4(v38);
    return 0;
  }

  v14 = sub_255CB92C0();
  if (!v15)
  {
    if (qword_27F7DD820 != -1)
    {
      swift_once();
    }

    v34 = sub_255D05DB8();
    __swift_project_value_buffer(v34, qword_27F7E5E48);
    v35 = sub_255D05D98();
    v36 = sub_255D07448();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_255C4F000, v35, v36, "No Region Code", v37, 2u);
      MEMORY[0x259C4C620](v37, -1, -1);
    }

    return 0;
  }

  v16 = v14;
  v17 = v15;
  v18 = [v13 infoDictionary];
  if (!v18)
  {
    goto LABEL_22;
  }

  v19 = v18;
  v20 = sub_255D07008();

  if (!*(v20 + 16) || (v21 = sub_255C7B7C4(0x6E6F696765524853, 0xE900000000000073), (v22 & 1) == 0))
  {

    goto LABEL_22;
  }

  sub_255CB7E68(*(v20 + 56) + 32 * v21, v74);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDA00);
  v23 = swift_dynamicCast();
  if ((v23 & 1) == 0)
  {
LABEL_22:

    goto LABEL_23;
  }

  v24 = v73;
  v74[0] = v16;
  v74[1] = v17;
  MEMORY[0x28223BE20](v23);
  *(&v72 - 2) = v74;
  if ((sub_255CB7FB8(sub_255CBAD10, (&v72 - 4), v24) & 1) == 0)
  {
    if (qword_27F7DD820 != -1)
    {
      swift_once();
    }

    v58 = sub_255D05DB8();
    __swift_project_value_buffer(v58, qword_27F7E5E48);
    sub_255CBAC50(v1, v10);

    v59 = v24;

    v49 = sub_255D05D98();
    v60 = sub_255D07448();

    if (os_log_type_enabled(v49, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v74[0] = v62;
      *v61 = 136315650;
      v63 = sub_255CBF790(v16, v17, v74);

      *(v61 + 4) = v63;
      *(v61 + 12) = 2080;
      v64 = MEMORY[0x259C4B6B0](v59, MEMORY[0x277D837D0]);
      v66 = v65;

      v67 = sub_255CBF790(v64, v66, v74);

      *(v61 + 14) = v67;
      *(v61 + 22) = 2080;
      v68 = sub_255D05AE8();
      v70 = v69;
      sub_255CBACB4(v10);
      v71 = sub_255CBF790(v68, v70, v74);

      *(v61 + 24) = v71;
      _os_log_impl(&dword_255C4F000, v49, v60, "Region %s not in regions: %s for %s", v61, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x259C4C620](v62, -1, -1);
      v57 = v61;
      goto LABEL_38;
    }

    v38 = v10;
    goto LABEL_19;
  }

LABEL_23:
  v40 = [v13 infoDictionary];
  if (v40)
  {
    v41 = v40;
    v42 = sub_255D07008();

    if (*(v42 + 16) && (v43 = sub_255C7B7C4(0xD000000000000016, 0x8000000255D18CB0), (v44 & 1) != 0))
    {
      sub_255CB7E68(*(v42 + 56) + 32 * v43, v74);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DEE10);
      if (swift_dynamicCast())
      {
        v45 = v73;
        type metadata accessor for DeviceGestaltCapabilities();
        inited = swift_initStackObject();
        v47 = sub_255CB9AD4(v45, inited, v1);

        if (!v47)
        {
          if (qword_27F7DD820 != -1)
          {
            swift_once();
          }

          v48 = sub_255D05DB8();
          __swift_project_value_buffer(v48, qword_27F7E5E48);
          sub_255CBAC50(v1, v7);
          v49 = sub_255D05D98();
          v50 = sub_255D07448();
          if (os_log_type_enabled(v49, v50))
          {
            v51 = swift_slowAlloc();
            v52 = swift_slowAlloc();
            v74[0] = v52;
            *v51 = 136315138;
            v53 = sub_255D05AE8();
            v55 = v54;
            sub_255CBACB4(v7);
            v56 = sub_255CBF790(v53, v55, v74);

            *(v51 + 4) = v56;
            _os_log_impl(&dword_255C4F000, v49, v50, "Device does not meet required capabilities for %s", v51, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v52);
            MEMORY[0x259C4C620](v52, -1, -1);
            v57 = v51;
LABEL_38:
            MEMORY[0x259C4C620](v57, -1, -1);

            return 0;
          }

          v38 = v7;
          goto LABEL_19;
        }
      }
    }

    else
    {
    }
  }

  return 1;
}

double sub_255CB88D8()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
  v1 = sub_255D05AF8();
  v2 = [v0 initWithURL_];

  v3 = 0.0;
  if (!v2)
  {
    return v3;
  }

  v4 = [v2 infoDictionary];
  if (!v4)
  {
LABEL_8:

    return v3;
  }

  v5 = v4;
  v6 = sub_255D07008();

  if (!*(v6 + 16) || (v7 = sub_255C7B7C4(0xD000000000000011, 0x8000000255D18B90), (v8 & 1) == 0))
  {

    goto LABEL_8;
  }

  sub_255CB7E68(*(v6 + 56) + 32 * v7, v11);

  if (swift_dynamicCast())
  {
    return v10;
  }

  return v3;
}

uint64_t sub_255CB8A54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_255D05B78();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
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
}

uint64_t sub_255CB8B34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_255D05B78();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t type metadata accessor for SafetyAndHandlingSectionModel()
{
  result = qword_27F7DEDE8;
  if (!qword_27F7DEDE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_255CB8C3C()
{
  sub_255D05B78();
  if (v0 <= 0x3F)
  {
    sub_255CB391C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_255CB8CC0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_255D05C18();
  v45 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_255D05C38();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DEE00);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v45 - v12;
  v14 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
  v15 = sub_255D05AF8();
  v16 = [v14 initWithURL_];

  if (v16)
  {
    v46 = a1;
    v17 = (v2 + *(type metadata accessor for SafetyAndHandlingSectionModel() + 20));
    if (v17[1])
    {
      v18 = *v17;
      v19 = v17[1];
    }

    else
    {
      sub_255D05BF8();
      sub_255D05C28();
      (*(v8 + 8))(v10, v7);
      sub_255D05C08();
      (*(v45 + 8))(v6, v4);
      v23 = sub_255D05BB8();
      v24 = *(v23 - 8);
      if ((*(v24 + 48))(v13, 1, v23) == 1)
      {
        sub_255C76B94(v13, &qword_27F7DEE00);

        v25 = v46;
        goto LABEL_22;
      }

      v18 = sub_255D05BA8();
      v19 = v26;
      (*(v24 + 8))(v13, v23);
    }

    v27 = [v16 localizations];
    if (!v27)
    {
      sub_255D07278();
      v27 = sub_255D07268();
    }

    v28 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE1E8);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_255D0AA80;
    *(v29 + 32) = v18;
    *(v29 + 40) = v19;
    v30 = sub_255D07268();

    v31 = [v28 matchedLanguagesFromAvailableLanguages:v27 forPreferredLanguages:v30];

    v32 = sub_255D07278();
    if (*(v32 + 16))
    {
      v25 = v46;
LABEL_14:

      v33 = objc_opt_self();
      v34 = sub_255D070C8();

      v35 = [v33 defaultWritingDirectionForLanguage_];

      v36 = sub_255D061B8();
      v37 = *(v36 - 8);
      v38 = (v37 + 56);
      if (v35 == 1)
      {
        v39 = MEMORY[0x277CDFA90];
      }

      else
      {
        v39 = MEMORY[0x277CDFA88];
      }

      (*(v37 + 104))(v25, *v39, v36);
      return (*v38)(v25, 0, 1, v36);
    }

    sub_255CB92C0();
    v25 = v46;
    if (v40)
    {
      v41 = sub_255D070C8();

      v42 = [v28 languagesForRegion:v41 subdivision:0 withThreshold:0 filter:1];

      v43 = sub_255D07278();
      if (*(v43 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
    }

LABEL_22:
    v44 = sub_255D061B8();
    return (*(*(v44 - 8) + 56))(v25, 1, 1, v44);
  }

  v20 = sub_255D061B8();
  v21 = *(*(v20 - 8) + 56);

  return v21(a1, 1, 1, v20);
}

uint64_t sub_255CB92C0()
{
  v1 = sub_255D05C38();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DEE08);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = (v0 + *(type metadata accessor for SafetyAndHandlingSectionModel() + 24));
  if (v8[1])
  {
    v9 = *v8;
  }

  else
  {
    sub_255D05BF8();
    sub_255D05BE8();
    (*(v2 + 8))(v4, v1);
    v10 = sub_255D05BD8();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v7, 1, v10) == 1)
    {
      sub_255C76B94(v7, &qword_27F7DEE08);
      v9 = 0;
    }

    else
    {
      v9 = sub_255D05BA8();
      (*(v11 + 8))(v7, v10);
    }
  }

  return v9;
}

uint64_t sub_255CB94BC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (!v1)
  {
    return 1;
  }

  v2 = sub_255D070C8();
  v3 = [v1 isEqual_];

  return v3 ^ 1;
}

unint64_t sub_255CB9570()
{
  v1 = sub_255D07108();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
  v3 = sub_255D05AF8();
  v4 = [v2 initWithURL_];

  if (!v4)
  {
    return 0xD000000000000014;
  }

  v5 = (v0 + *(type metadata accessor for SafetyAndHandlingSectionModel() + 20));
  v6 = v5[1];
  if (!v6)
  {
    v18 = sub_255D070C8();
    v19 = sub_255D070C8();
    v20 = [v4 pathForResource:v18 ofType:v19];

    if (!v20)
    {

      return 0xD000000000000018;
    }

    goto LABEL_12;
  }

  v7 = *v5;
  v8 = [v4 localizations];
  if (!v8)
  {
    sub_255D07278();
    v8 = sub_255D07268();
  }

  v9 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE1E8);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_255D0AA80;
  *(v10 + 32) = v7;
  *(v10 + 40) = v6;

  v11 = sub_255D07268();

  v12 = [v9 matchedLanguagesFromAvailableLanguages:v8 forPreferredLanguages:v11];

  v13 = sub_255D07278();
  v14 = sub_255D070C8();
  v15 = sub_255D070C8();
  if (*(v13 + 16))
  {

    v16 = sub_255D070C8();
  }

  else
  {

    v16 = 0;
  }

  v20 = [v4 pathForResource:v14 ofType:v15 inDirectory:0 forLocalization:v16];

  if (v20)
  {
LABEL_12:
    sub_255D070D8();

    sub_255D070F8();
    v21 = sub_255D07098();

    return v21;
  }

  sub_255D075A8();

  MEMORY[0x259C4B5D0](v7, v6);

  return 0xD000000000000026;
}

uint64_t sub_255CB9960@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DEDF8);
  sub_255D05D78();

  v2 = MEMORY[0x259C4B570]();
  v4 = v3;

  *a1 = v2;
  a1[1] = v4;
  return result;
}

unint64_t sub_255CB9A14()
{
  result = qword_27F7DDC30;
  if (!qword_27F7DDC30)
  {
    sub_255D05B78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DDC30);
  }

  return result;
}

uint64_t sub_255CB9A6C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_255D05B78();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

BOOL sub_255CB9AD4(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v121 = a3;
  v5 = type metadata accessor for SafetyAndHandlingSectionModel();
  MEMORY[0x28223BE20](v5 - 8);
  v114 = &v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v115 = &v113 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v113 - v10;
  MEMORY[0x28223BE20](v12);
  v117 = &v113 - v13;
  MEMORY[0x28223BE20](v14);
  v118 = &v113 - v15;
  MEMORY[0x28223BE20](v16);
  v116 = &v113 - v17;
  v18 = a1 + 64;
  v19 = 1 << *(a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(a1 + 64);
  v22 = (v19 + 63) >> 6;
  v120 = a2;

  v23 = 0;
  v122 = 0;
  *&v24 = 136315394;
  v119 = v24;
  v123 = a1;
  v125 = v11;
  while (1)
  {
    if (!v21)
    {
      if (v22 <= (v23 + 1))
      {
        v26 = v23 + 1;
      }

      else
      {
        v26 = v22;
      }

      v27 = v26 - 1;
      while (1)
      {
        v25 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v25 >= v22)
        {
          v21 = 0;
          v130 = 0u;
          v131 = 0u;
          v23 = v27;
          v129 = 0u;
          goto LABEL_18;
        }

        v21 = *(v18 + 8 * v25);
        ++v23;
        if (v21)
        {
          v23 = v25;
          goto LABEL_17;
        }
      }

      __break(1u);
      goto LABEL_73;
    }

    v25 = v23;
LABEL_17:
    v28 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v29 = v28 | (v25 << 6);
    v30 = (*(v123 + 48) + 16 * v29);
    v32 = *v30;
    v31 = v30[1];
    sub_255CB7E68(*(v123 + 56) + 32 * v29, v128);
    *&v129 = v32;
    *(&v129 + 1) = v31;
    sub_255C7E138(v128, &v130);

LABEL_18:
    v132 = v129;
    v133[0] = v130;
    v133[1] = v131;
    v33 = *(&v129 + 1);
    if (!*(&v129 + 1))
    {

      goto LABEL_43;
    }

    v34 = v132;
    sub_255C7E138(v133, &v129);
    sub_255CB7E68(&v129, v128);
    v35 = swift_dynamicCast();
    v124 = v34;
    if (v35)
    {
      break;
    }

    sub_255CB7E68(&v129, v128);
    if (swift_dynamicCast())
    {
      v41 = v126;
      v42 = sub_255D070C8();
      a2 = MGCopyAnswer();

      if (a2 && (*&v128[0] = a2, (swift_dynamicCast() & 1) != 0))
      {
        v43 = v126;
        if (v41 != v126)
        {
          goto LABEL_54;
        }
      }

      else if (v41)
      {
        v43 = 0;
        v41 = 1;
LABEL_54:
        v85 = v117;
        if (qword_27F7DD820 != -1)
        {
          swift_once();
        }

        v86 = sub_255D05DB8();
        __swift_project_value_buffer(v86, qword_27F7E5E48);
        sub_255CBAC50(v121, v85);

        v87 = sub_255D05D98();
        v88 = sub_255D07448();

        if (os_log_type_enabled(v87, v88))
        {
          v89 = swift_slowAlloc();
          v90 = swift_slowAlloc();
          *&v128[0] = v90;
          *v89 = 136315906;
          v91 = sub_255CBF790(v124, v33, v128);

          *(v89 + 4) = v91;
          *(v89 + 12) = 1024;
          *(v89 + 14) = v41;
          *(v89 + 18) = 2080;
          v92 = sub_255D05AE8();
          v93 = v85;
          v95 = v94;
          sub_255CBACB4(v93);
          v96 = sub_255CBF790(v92, v95, v128);

          *(v89 + 20) = v96;
          *(v89 + 28) = 1024;
          *(v89 + 30) = v43;
          _os_log_impl(&dword_255C4F000, v87, v88, "Capability check for %s == %{BOOL}d failed for %s. Actual value: %{BOOL}d", v89, 0x22u);
          swift_arrayDestroy();
          MEMORY[0x259C4C620](v90, -1, -1);
          MEMORY[0x259C4C620](v89, -1, -1);
        }

        else
        {

          sub_255CBACB4(v85);
        }

        __swift_destroy_boxed_opaque_existential_1(&v129);
LABEL_43:

        return v33 == 0;
      }

      __swift_destroy_boxed_opaque_existential_1(&v129);

      v11 = v125;
    }

    else
    {
      sub_255CB7E68(&v129, v128);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDA00);
      if (swift_dynamicCast())
      {
        v44 = v126;
        v45 = v33;
        v46 = sub_255CBAD2C();
        if (!v47)
        {

          if (qword_27F7DD820 != -1)
          {
            swift_once();
          }

          v97 = sub_255D05DB8();
          __swift_project_value_buffer(v97, qword_27F7E5E48);
          v18 = v115;
          sub_255CBAC50(v121, v115);
          v23 = v33;

          a2 = sub_255D05D98();
          v62 = sub_255D07448();

          if (!os_log_type_enabled(a2, v62))
          {
            goto LABEL_63;
          }

LABEL_47:
          v63 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          *&v128[0] = v64;
          *v63 = v119;
          v65 = sub_255CBF790(v124, v23, v128);

          *(v63 + 4) = v65;
          *(v63 + 12) = 2080;
          v66 = sub_255D05AE8();
          v68 = v67;
          sub_255CBACB4(v18);
          v69 = sub_255CBF790(v66, v68, v128);

          *(v63 + 14) = v69;
          _os_log_impl(&dword_255C4F000, a2, v62, "Capability check for %s returned nil for %s", v63, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x259C4C620](v64, -1, -1);
          v70 = v63;
          goto LABEL_48;
        }

        v48 = v46;
        v49 = v47;
        a2 = &v113;
        *&v128[0] = v46;
        *(&v128[0] + 1) = v47;
        MEMORY[0x28223BE20](v46);
        *(&v113 - 2) = v128;
        v50 = v122;
        if ((sub_255CB7FB8(sub_255CBAE00, (&v113 - 4), v44) & 1) == 0)
        {
          if (qword_27F7DD820 != -1)
          {
            swift_once();
          }

          v99 = sub_255D05DB8();
          __swift_project_value_buffer(v99, qword_27F7E5E48);
          v18 = v114;
          sub_255CBAC50(v121, v114);
          v23 = v45;

          a2 = sub_255D05D98();
          v100 = sub_255D07448();

          if (os_log_type_enabled(a2, v100))
          {
            v101 = swift_slowAlloc();
            v125 = swift_slowAlloc();
            *&v128[0] = v125;
            *v101 = 136315906;
            v102 = sub_255CBF790(v124, v45, v128);

            *(v101 + 4) = v102;
            *(v101 + 12) = 2080;
            v103 = MEMORY[0x259C4B6B0](v44, MEMORY[0x277D837D0]);
            v105 = v104;

            v106 = sub_255CBF790(v103, v105, v128);

            *(v101 + 14) = v106;
            *(v101 + 22) = 2080;
            v107 = sub_255D05AE8();
            v109 = v108;
            sub_255CBACB4(v18);
            v110 = sub_255CBF790(v107, v109, v128);

            *(v101 + 24) = v110;
            *(v101 + 32) = 2080;
            v111 = sub_255CBF790(v48, v49, v128);

            *(v101 + 34) = v111;
            _os_log_impl(&dword_255C4F000, a2, v100, "Capability check for %s is one of %s failed for %s. Actual value: %s", v101, 0x2Au);
            v112 = v125;
            swift_arrayDestroy();
            MEMORY[0x259C4C620](v112, -1, -1);
            v70 = v101;
LABEL_48:
            MEMORY[0x259C4C620](v70, -1, -1);

            goto LABEL_64;
          }

LABEL_73:

          goto LABEL_63;
        }

        v122 = v50;
        __swift_destroy_boxed_opaque_existential_1(&v129);

LABEL_6:

        v11 = v125;
      }

      else
      {
        if (qword_27F7DD820 != -1)
        {
          swift_once();
        }

        v51 = sub_255D05DB8();
        __swift_project_value_buffer(v51, qword_27F7E5E48);
        sub_255CBAC50(v121, v11);

        a2 = sub_255D05D98();
        v52 = sub_255D07428();

        if (os_log_type_enabled(a2, v52))
        {
          v53 = v33;
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          *&v128[0] = v55;
          *v54 = v119;
          v56 = sub_255CBF790(v124, v53, v128);

          *(v54 + 4) = v56;
          *(v54 + 12) = 2080;
          v57 = sub_255D05AE8();
          v59 = v58;
          sub_255CBACB4(v125);
          v60 = sub_255CBF790(v57, v59, v128);
          v11 = v125;

          *(v54 + 14) = v60;
          _os_log_impl(&dword_255C4F000, a2, v52, "Unexpected value type for key '%s' in SHRequiredCapabilities dictionary. Ignoring. In bundle: %s", v54, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x259C4C620](v55, -1, -1);
          MEMORY[0x259C4C620](v54, -1, -1);
        }

        else
        {

          sub_255CBACB4(v11);
        }

        __swift_destroy_boxed_opaque_existential_1(&v129);
      }
    }
  }

  a2 = v126;
  v36 = v127;
  v37 = v33;
  v38 = sub_255D070C8();
  v39 = MGCopyAnswer();

  if (!v39 || (v126 = v39, (swift_dynamicCast() & 1) == 0))
  {

    v23 = v37;
    v18 = v118;
    if (qword_27F7DD820 != -1)
    {
      swift_once();
    }

    v61 = sub_255D05DB8();
    __swift_project_value_buffer(v61, qword_27F7E5E48);
    sub_255CBAC50(v121, v18);

    a2 = sub_255D05D98();
    v62 = sub_255D07448();

    if (os_log_type_enabled(a2, v62))
    {
      goto LABEL_47;
    }

LABEL_63:

    sub_255CBACB4(v18);
LABEL_64:
    __swift_destroy_boxed_opaque_existential_1(&v129);

    v33 = v23;
    return v33 == 0;
  }

  v40 = v128[0];
  if (v128[0] == __PAIR128__(v36, a2) || (sub_255D076D8() & 1) != 0)
  {
    __swift_destroy_boxed_opaque_existential_1(&v129);

    goto LABEL_6;
  }

  if (qword_27F7DD820 != -1)
  {
    swift_once();
  }

  v71 = sub_255D05DB8();
  __swift_project_value_buffer(v71, qword_27F7E5E48);
  v72 = v116;
  sub_255CBAC50(v121, v116);

  v73 = sub_255D05D98();
  v74 = sub_255D07448();

  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v125 = swift_slowAlloc();
    *&v128[0] = v125;
    *v75 = 136315906;
    v76 = sub_255CBF790(v124, v37, v128);
    LODWORD(v124) = v74;
    v77 = v76;

    *(v75 + 4) = v77;
    *(v75 + 12) = 2080;
    v78 = sub_255CBF790(a2, v36, v128);

    *(v75 + 14) = v78;
    *(v75 + 22) = 2080;
    v79 = sub_255D05AE8();
    v81 = v80;
    sub_255CBACB4(v72);
    v82 = sub_255CBF790(v79, v81, v128);

    *(v75 + 24) = v82;
    *(v75 + 32) = 2080;
    v83 = sub_255CBF790(v40, *(&v40 + 1), v128);

    *(v75 + 34) = v83;
    _os_log_impl(&dword_255C4F000, v73, v124, "Capability check for %s == %s failed for %s. Actual value: %s", v75, 0x2Au);
    v84 = v125;
    swift_arrayDestroy();
    MEMORY[0x259C4C620](v84, -1, -1);
    MEMORY[0x259C4C620](v75, -1, -1);
  }

  else
  {

    sub_255CBACB4(v72);
  }

  __swift_destroy_boxed_opaque_existential_1(&v129);

  v33 = v37;
  return v33 == 0;
}

uint64_t sub_255CBAB74(uint64_t a1, uint64_t a2)
{
  if ((sub_255D05B18() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for SafetyAndHandlingSectionModel();
  v5 = *(v4 + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_255D076D8();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = *(v4 + 24);
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (v17)
    {
      v18 = *v14 == *v16 && v15 == v17;
      if (v18 || (sub_255D076D8() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v17)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_255CBAC50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SafetyAndHandlingSectionModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_255CBACB4(uint64_t a1)
{
  v2 = type metadata accessor for SafetyAndHandlingSectionModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_255CBAD2C()
{
  v0 = sub_255D070C8();
  v1 = MGCopyAnswer();

  if (v1 && swift_dynamicCast())
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_255CBADA8(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_255D076D8() & 1;
  }
}

uint64_t sub_255CBAE30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DEE18);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for LegalDocumentModel(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_255CBAF40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DEE18);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for LegalDocumentModel(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for LegalDocumentCell()
{
  result = qword_27F7DEE20;
  if (!qword_27F7DEE20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_255CBB094()
{
  sub_255CBB118();
  if (v0 <= 0x3F)
  {
    type metadata accessor for LegalDocumentModel(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_255CBB118()
{
  if (!qword_27F7DEE30)
  {
    sub_255D06FB8();
    v0 = sub_255D05F28();
    if (!v1)
    {
      atomic_store(v0, &qword_27F7DEE30);
    }
  }
}

uint64_t sub_255CBB18C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DEE48);
  MEMORY[0x28223BE20](v31);
  v4 = &v29 - v3;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DEE50);
  v32 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v6 = &v29 - v5;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DEE58);
  MEMORY[0x28223BE20](v33);
  v8 = &v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DEE60);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v29 - v10;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DEE68);
  v30 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v13 = &v29 - v12;
  v14 = sub_255D06FB8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255CBF340(v17);
  v18 = sub_255D06FA8();
  v19 = (*(v15 + 8))(v17, v14);
  if (v18)
  {
    v20 = type metadata accessor for LegalDocumentCell();
    sub_255CBBAC0(v2 + *(v20 + 20), v11);
    v21 = type metadata accessor for LegalDocumentModel(0);
    v22 = (*(*(v21 - 8) + 56))(v11, 0, 1, v21);
    MEMORY[0x28223BE20](v22);
    *(&v29 - 2) = v2;
    sub_255CBBCB0(&qword_27F7DEE88, type metadata accessor for LegalDocumentModel);
    sub_255D06188();
    v23 = v30;
    v24 = v34;
    (*(v30 + 16))(v8, v13, v34);
    swift_storeEnumTagMultiPayload();
    sub_255C810A8(&qword_27F7DEE78, &qword_27F7DEE68);
    sub_255C810A8(&qword_27F7DEE80, &qword_27F7DEE50);
    sub_255D06528();
    return (*(v23 + 8))(v13, v24);
  }

  else
  {
    MEMORY[0x28223BE20](v19);
    *(&v29 - 2) = v2;
    v26 = type metadata accessor for LegalDocumentCell();
    sub_255CB4AC8(v2 + *(v26 + 20), v4);
    sub_255CBBA04();
    sub_255D06178();
    v27 = v32;
    v28 = v35;
    (*(v32 + 16))(v8, v6, v35);
    swift_storeEnumTagMultiPayload();
    sub_255C810A8(&qword_27F7DEE78, &qword_27F7DEE68);
    sub_255C810A8(&qword_27F7DEE80, &qword_27F7DEE50);
    sub_255D06528();
    return (*(v27 + 8))(v6, v28);
  }
}

uint64_t sub_255CBB778(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DD8F0);
  MEMORY[0x28223BE20](v3);
  v5 = v15 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DEE38);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v15 - v8;
  sub_255CBB18C(v5);
  v10 = *(v1 + *(a1 + 20));
  sub_255CBB990(v5, v9);
  v11 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DD8F8) + 36)];
  *v11 = v10;
  v11[1] = 1;
  sub_255CB2F84(v10);
  v12 = sub_255C810A8(&qword_27F7DEE40, &qword_27F7DD8F0);
  v13 = sub_255CB3338();
  v15[0] = v3;
  v15[1] = &type metadata for LegalDocumentIdentifier;
  v15[2] = v12;
  v15[3] = v13;
  swift_getOpaqueTypeConformance2();
  sub_255D06B98();

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_255CBB990(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DD8F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_255CBBA04()
{
  result = qword_27F7DEE70;
  if (!qword_27F7DEE70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DEE48);
    sub_255CB7C4C();
    sub_255CBBCB0(&qword_27F7DEDC0, type metadata accessor for LegalDocumentWebView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DEE70);
  }

  return result;
}

uint64_t sub_255CBBAC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegalDocumentModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_255CBBB24@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for LegalDocumentCell();
  result = sub_255CB2D90();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

unint64_t sub_255CBBB70()
{
  result = qword_27F7DEE90;
  if (!qword_27F7DEE90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DEE98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DD8F0);
    sub_255C810A8(&qword_27F7DEE40, &qword_27F7DD8F0);
    sub_255CB3338();
    swift_getOpaqueTypeConformance2();
    sub_255CBBCB0(&qword_27F7DEEA0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DEE90);
  }

  return result;
}

uint64_t sub_255CBBCB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_255CBBCFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DEFB0);
  MEMORY[0x28223BE20](v2);
  sub_255CBDE80(a1);
  sub_255CC0814();
  return sub_255D06E78();
}

uint64_t sub_255CBBDA0@<X0>(uint64_t a1@<X8>)
{
  v66 = a1;
  v67 = sub_255D05F88();
  v65 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v64 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_255D06418();
  v62 = *(v3 - 8);
  v63 = v3;
  MEMORY[0x28223BE20](v3);
  v61 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_255D065C8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v50 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DEFE8);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v49 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DEDD0);
  MEMORY[0x28223BE20](v12 - 8);
  v51 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v49 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v49 - v18;
  v53 = type metadata accessor for LegalDocumentSafetyAndHandlingSettingsView(0);
  v20 = *(v53 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v53);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DEFF0);
  v56 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v54 = &v49 - v22;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DEFF8);
  v57 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v55 = &v49 - v23;
  sub_255CC0A50(v1, &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LegalDocumentSafetyAndHandlingSettingsView);
  v24 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v52 = swift_allocObject();
  sub_255CC0648(&v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v52 + v24, type metadata accessor for LegalDocumentSafetyAndHandlingSettingsView);
  v60 = v1;
  sub_255CBF58C(&qword_27F7DEDC8, &qword_27F7DEDD0, v19);
  (*(v6 + 104))(v16, *MEMORY[0x277CE0558], v5);
  (*(v6 + 56))(v16, 0, 1, v5);
  v25 = *(v9 + 56);
  sub_255C7299C(v19, v11, &qword_27F7DEDD0);
  sub_255C7299C(v16, &v11[v25], &qword_27F7DEDD0);
  v26 = *(v6 + 48);
  if (v26(v11, 1, v5) == 1)
  {
    sub_255C76B94(v16, &qword_27F7DEDD0);
    sub_255C76B94(v19, &qword_27F7DEDD0);
    if (v26(&v11[v25], 1, v5) == 1)
    {
      sub_255C76B94(v11, &qword_27F7DEDD0);
LABEL_9:
      v27 = sub_255D06758();
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  sub_255C7299C(v11, v51, &qword_27F7DEDD0);
  if (v26(&v11[v25], 1, v5) == 1)
  {
    sub_255C76B94(v16, &qword_27F7DEDD0);
    sub_255C76B94(v19, &qword_27F7DEDD0);
    (*(v6 + 8))(v51, v5);
LABEL_6:
    sub_255C76B94(v11, &qword_27F7DEFE8);
    goto LABEL_7;
  }

  v28 = v50;
  (*(v6 + 32))(v50, &v11[v25], v5);
  sub_255CBFEB0(&qword_27F7DF020, MEMORY[0x277CE0570]);
  v29 = v51;
  v30 = sub_255D07078();
  v31 = *(v6 + 8);
  v31(v28, v5);
  sub_255C76B94(v16, &qword_27F7DEDD0);
  sub_255C76B94(v19, &qword_27F7DEDD0);
  v31(v29, v5);
  sub_255C76B94(v11, &qword_27F7DEDD0);
  if (v30)
  {
    goto LABEL_9;
  }

LABEL_7:
  v27 = sub_255D06708();
LABEL_10:
  v74 = 1;
  v68 = sub_255CC0CC4;
  v69 = v52;
  v70 = v27;
  v71 = 0u;
  v72 = 0u;
  v73 = 1;
  v32 = sub_255CB2D90();
  v34 = v33;
  v36 = v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF000);
  v38 = sub_255CC0D88();
  v39 = v54;
  sub_255D06AD8();
  sub_255C8A038(v32, v34, v36 & 1);

  v41 = v61;
  v40 = v62;
  v42 = v63;
  (*(v62 + 104))(v61, *MEMORY[0x277CDDDC0], v63);
  v68 = v37;
  v69 = v38;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v44 = v55;
  v45 = v58;
  sub_255D06BA8();
  (*(v40 + 8))(v41, v42);
  (*(v56 + 8))(v39, v45);
  v46 = v64;
  sub_255D05F78();
  v68 = v45;
  v69 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v47 = v59;
  sub_255D06AA8();
  (*(v65 + 8))(v46, v67);
  return (*(v57 + 8))(v44, v47);
}

double sub_255CBC724@<D0>(uint64_t a1@<X8>)
{
  sub_255D066E8();
  type metadata accessor for LegalDocumentSafetyAndHandlingView(0);
  sub_255CBFEB0(&qword_27F7DF028, type metadata accessor for LegalDocumentSafetyAndHandlingView);
  sub_255D05F08();
  sub_255D06038();
  sub_255D06F58();
  sub_255D06018();
  v2 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF030) + 36));
  *v2 = v4;
  v2[1] = v5;
  result = *&v6;
  v2[2] = v6;
  return result;
}

uint64_t sub_255CBC82C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(type metadata accessor for LegalDocumentSafetyAndHandlingSettingsView(0) + 20);
  v5 = type metadata accessor for LegalDocumentSafetyAndHandlingView(0);
  sub_255CC0A50(a1 + v4, a2 + *(v5 + 20), type metadata accessor for LegalDocumentModel);
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DEEA8);

  return swift_storeEnumTagMultiPayload();
}

uint64_t static LegalDocumentSafetyAndHandlingView.shouldShow(language:region:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for LegalDocumentModel(0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LegalDocumentModel.DocumentType(0);
  swift_storeEnumTagMultiPayload();
  *v11 = 5;
  v12 = &v11[*(v9 + 32)];
  *v12 = a1;
  v12[1] = a2;
  v13 = &v11[*(v9 + 36)];
  *v13 = a3;
  v13[1] = a4;

  v14 = sub_255CB3D94();
  if (a2)
  {
    v15 = a1;
  }

  else
  {
    v15 = 0x6D6574737953;
  }

  if (a2)
  {
    v16 = a2;
  }

  else
  {
    v16 = 0xE600000000000000;
  }

  if (a4)
  {
    v17 = a3;
  }

  else
  {
    v17 = 0x6D6574737953;
  }

  if (a4)
  {
    v18 = a4;
  }

  else
  {
    v18 = 0xE600000000000000;
  }

  v19 = qword_27F7DD820;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = sub_255D05DB8();
  __swift_project_value_buffer(v20, qword_27F7E5E48);

  v21 = sub_255D05D98();
  v22 = sub_255D07448();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v30 = v24;
    *v23 = 67240706;
    *(v23 + 4) = v14 & 1;
    *(v23 + 8) = 2082;
    v25 = sub_255CBF790(v15, v16, &v30);

    *(v23 + 10) = v25;
    *(v23 + 18) = 2082;
    v26 = sub_255CBF790(v17, v18, &v30);

    *(v23 + 20) = v26;
    _os_log_impl(&dword_255C4F000, v21, v22, "shouldShow: %{BOOL,public}d for language override: %{public}s, region override: %{public}s", v23, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x259C4C620](v24, -1, -1);
    MEMORY[0x259C4C620](v23, -1, -1);
  }

  else
  {
  }

  v27 = sub_255CB3D94();
  sub_255CBFC44(v11);
  return v27 & 1;
}

uint64_t LegalDocumentSafetyAndHandlingView.body.getter()
{
  v1 = type metadata accessor for LegalDocumentSafetyAndHandlingView(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v7[1] = sub_255CB41D0();
  sub_255CC0A50(v0, v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LegalDocumentSafetyAndHandlingView);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_255CC0648(v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4, type metadata accessor for LegalDocumentSafetyAndHandlingView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DEEB0);
  sub_255D05B78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DEEB8);
  sub_255C810A8(&qword_27F7DEEC0, &qword_27F7DEEB0);
  sub_255CBFCF0();
  sub_255CBFEB0(&qword_27F7DEF08, type metadata accessor for SafetyAndHandlingSectionModel);
  return sub_255D06EB8();
}

uint64_t sub_255CBCDAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF040);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v32 - v6;
  v35 = sub_255D061B8();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_255D05C38();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for LegalDocumentSafetyAndHandlingSectionView(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DEED8);
  MEMORY[0x28223BE20](v17);
  v19 = v32 - v18;
  sub_255CC0A50(a1, v16, type metadata accessor for SafetyAndHandlingSectionModel);
  KeyPath = swift_getKeyPath();
  v20 = *(type metadata accessor for LegalDocumentSafetyAndHandlingView(0) + 20);
  v32[1] = a2;
  if (*(a2 + v20 + *(type metadata accessor for LegalDocumentModel(0) + 24) + 8))
  {
    v32[0] = v11;

    v11 = v32[0];
    sub_255D05B98();
  }

  else
  {
    sub_255D05BF8();
  }

  v21 = &v19[*(v17 + 36)];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DEEF0);
  (*(v11 + 32))(v21 + *(v22 + 28), v13, v10);
  *v21 = KeyPath;
  sub_255CC0648(v16, v19, type metadata accessor for LegalDocumentSafetyAndHandlingSectionView);
  v23 = swift_getKeyPath();
  sub_255CB8CC0(v7);
  v24 = *(v8 + 48);
  v25 = v35;
  if (v24(v7, 1, v35) == 1)
  {
    v26 = v34;
    sub_255CBF368(&qword_27F7DEEA8, MEMORY[0x277CDFAA0], v34);
    if (v24(v7, 1, v25) != 1)
    {
      sub_255C76B94(v7, &qword_27F7DF040);
    }
  }

  else
  {
    v26 = v34;
    (*(v8 + 32))(v34, v7, v25);
  }

  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DEEB8);
  v28 = v36;
  v29 = (v36 + *(v27 + 36));
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DEF00);
  (*(v8 + 32))(v29 + *(v30 + 28), v26, v25);
  *v29 = v23;
  return sub_255CC1068(v19, v28, &qword_27F7DEED8);
}

uint64_t sub_255CBD23C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t LegalDocumentSafetyAndHandlingView.init(language:region:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = a5 + *(type metadata accessor for LegalDocumentSafetyAndHandlingView(0) + 20);
  v11 = type metadata accessor for LegalDocumentModel(0);
  type metadata accessor for LegalDocumentModel.DocumentType(0);
  swift_storeEnumTagMultiPayload();
  *v10 = 5;
  v12 = &v10[*(v11 + 24)];
  *v12 = a1;
  v12[1] = a2;
  v13 = &v10[*(v11 + 28)];
  *v13 = a3;
  v13[1] = a4;
  *a5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DEEA8);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_255CBD3EC(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v7[1] = sub_255CB41D0();
  sub_255CC0A50(v1, v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LegalDocumentSafetyAndHandlingView);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_255CC0648(v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4, type metadata accessor for LegalDocumentSafetyAndHandlingView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DEEB0);
  sub_255D05B78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DEEB8);
  sub_255C810A8(&qword_27F7DEEC0, &qword_27F7DEEB0);
  sub_255CBFCF0();
  sub_255CBFEB0(&qword_27F7DEF08, type metadata accessor for SafetyAndHandlingSectionModel);
  return sub_255D06EB8();
}

double sub_255CBD5F8@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v78 = a1;
  v3 = type metadata accessor for BundleImageProvider(0);
  v4 = *(v3 - 8);
  v74 = v3;
  v75 = v4;
  MEMORY[0x28223BE20](v3);
  v76 = v5;
  v77 = v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v73 = v63 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCB0);
  MEMORY[0x28223BE20](v8 - 8);
  v70 = v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v67 = v63 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = v63 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DEF70);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v63 - v17;
  v66 = type metadata accessor for Markdown(0);
  MEMORY[0x28223BE20](v66);
  v20 = (v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21);
  v68 = v63 - v22;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DEF78);
  MEMORY[0x28223BE20](v65);
  v71 = v63 - v23;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DEF80);
  MEMORY[0x28223BE20](v69);
  v72 = v63 - v24;
  v25 = sub_255CB94BC();
  v79 = v1;
  if (v25)
  {
    v26 = sub_255CB9570();
    v28 = v27;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DEF88);
    sub_255D05D68();
    v80 = sub_255CB9570();
    v81 = v29;
    sub_255CC0590();
    sub_255CC05E4();
    sub_255C810A8(&qword_27F7DEFA0, &qword_27F7DEF70);
    v2 = v79;
    sub_255D073E8();
    (*(v16 + 8))(v18, v15);

    v26 = v82;
    v28 = v83;
  }

  v30 = sub_255D05B78();
  v31 = *(v30 - 8);
  v32 = v31;
  v64 = *(v31 + 16);
  v63[1] = v31 + 16;
  v64(v14, v2, v30);
  v33 = *(v32 + 56);
  v33(v14, 0, 1, v30);
  v34 = v67;
  v33(v67, 1, 1, v30);
  v35 = sub_255CA7390(v26, v28);

  if (v35)
  {
    v36 = v35;
  }

  else
  {
    v36 = MEMORY[0x277D84F90];
  }

  *v20 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE880);
  swift_storeEnumTagMultiPayload();
  v37 = v66;
  v38 = v20 + *(v66 + 20);
  *v38 = swift_getKeyPath();
  v38[40] = 0;
  *(v20 + v37[6]) = v36;
  sub_255C7299C(v14, v20 + v37[7], &qword_27F7DDCB0);
  v39 = *(v32 + 48);
  if (v39(v34, 1, v30) == 1)
  {
    v40 = v14;
    v41 = v70;
    sub_255CC1068(v40, v70, &qword_27F7DDCB0);
    if (v39(v34, 1, v30) != 1)
    {
      sub_255C76B94(v34, &qword_27F7DDCB0);
    }
  }

  else
  {
    sub_255C76B94(v14, &qword_27F7DDCB0);
    v41 = v70;
    (*(v32 + 32))(v70, v34, v30);
    v33(v41, 0, 1, v30);
  }

  sub_255CC1068(v41, v20 + v37[8], &qword_27F7DDCB0);
  v42 = v68;
  sub_255CC0648(v20, v68, type metadata accessor for Markdown);
  v43 = type metadata accessor for SafetyAndHandlingSectionModel();
  v44 = v79;
  v45 = (v79 + *(v43 + 20));
  v47 = *v45;
  v46 = v45[1];
  v48 = v71;
  v49 = &v71[*(v65 + 36)];
  static Theme.docC(language:)(*v45, v46, (v49 + 1));
  *v49 = swift_getKeyPath();
  sub_255CC0648(v42, v48, type metadata accessor for Markdown);
  v50 = v73;
  v64(v73, v44, v30);
  v51 = (v50 + *(v74 + 20));
  *v51 = v47;
  v51[1] = v46;
  KeyPath = swift_getKeyPath();
  v53 = v77;
  sub_255CC0648(v50, v77, type metadata accessor for BundleImageProvider);
  v54 = (*(v75 + 80) + 16) & ~*(v75 + 80);
  v55 = swift_allocObject();
  sub_255CC0648(v53, v55 + v54, type metadata accessor for BundleImageProvider);
  v56 = v72;
  sub_255CC1068(v48, v72, &qword_27F7DEF78);
  v57 = (v56 + *(v69 + 36));
  *v57 = KeyPath;
  v57[1] = sub_255CC07A4;
  v57[2] = v55;
  if (v46)
  {

    v58 = sub_255D06738();
  }

  else
  {
    v58 = sub_255D06718();
  }

  v59 = v58;
  v60 = v78;
  sub_255CC1068(v56, v78, &qword_27F7DEF80);
  v61 = v60 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DEFA8) + 36);
  *v61 = v59;
  result = 0.0;
  *(v61 + 8) = 0u;
  *(v61 + 24) = 0u;
  *(v61 + 40) = 1;
  return result;
}

uint64_t sub_255CBDE80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v27[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DEFD8);
  MEMORY[0x28223BE20](v5);
  v7 = &v27[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DEFC8);
  MEMORY[0x28223BE20](v8);
  v10 = &v27[-v9];
  v11 = sub_255CBE240(a1);
  if (v11)
  {
    v28 = v11;
    v12 = v11;
    sub_255CC095C();
    sub_255D06B28();
    sub_255C7299C(v10, v7, &qword_27F7DEFC8);
    swift_storeEnumTagMultiPayload();
    sub_255CC08A0();
    sub_255D06528();

    return sub_255C76B94(v10, &qword_27F7DEFC8);
  }

  else
  {
    v28 = 0;
    v29 = 0xE000000000000000;
    sub_255D075A8();

    v28 = 0x20676E697373694DLL;
    v29 = 0xEF203A6567616D69;
    sub_255C7299C(a1, v4, &qword_27F7DDCB0);
    v14 = sub_255D05B78();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v4, 1, v14) == 1)
    {
      sub_255C76B94(v4, &qword_27F7DDCB0);
      v16 = 0xED00003E656D616ELL;
      v17 = 0x656C6966206F6E3CLL;
    }

    else
    {
      v18 = sub_255D05AE8();
      v16 = v19;
      (*(v15 + 8))(v4, v14);
      v17 = v18;
    }

    MEMORY[0x259C4B5D0](v17, v16);

    v28 = sub_255D06C68();
    v20 = sub_255D06918();
    v22 = v21;
    v24 = v23;
    v26 = v25;

    *v7 = v20;
    *(v7 + 1) = v22;
    v7[16] = v24 & 1;
    *(v7 + 3) = v26;
    swift_storeEnumTagMultiPayload();
    sub_255CC08A0();
    return sub_255D06528();
  }
}

id sub_255CBE240(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v78 - v3;
  v5 = sub_255D05B78();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v78 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = v78 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = v78 - v16;
  v19 = v18;
  sub_255C7299C(a1, v4, &qword_27F7DDCB0);
  if ((*(v6 + 48))(v4, 1, v19) == 1)
  {
    sub_255C76B94(v4, &qword_27F7DDCB0);
    if (qword_27F7DD820 != -1)
    {
      swift_once();
    }

    v20 = sub_255D05DB8();
    __swift_project_value_buffer(v20, qword_27F7E5E48);
    v21 = sub_255D05D98();
    v22 = sub_255D07428();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_255C4F000, v21, v22, "uiImage(url:): url is nil", v23, 2u);
      MEMORY[0x259C4C620](v23, -1, -1);
    }

    return 0;
  }

  (*(v6 + 32))(v17, v4, v19);
  v24 = sub_255D05AE8();
  v26 = sub_255CBEC50(v24, v25);

  if (!v26)
  {
LABEL_13:
    if (qword_27F7DD820 != -1)
    {
      swift_once();
    }

    v54 = sub_255D05DB8();
    __swift_project_value_buffer(v54, qword_27F7E5E48);
    (*(v6 + 16))(v8, v17, v19);
    v55 = sub_255D05D98();
    v56 = sub_255D07428();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v81 = v58;
      *v57 = 136315138;
      sub_255CBFEB0(&qword_27F7DEFE0, MEMORY[0x277CC9260]);
      v59 = sub_255D076B8();
      v61 = v60;
      v80 = v17;
      v62 = *(v6 + 8);
      v62(v8, v19);
      v63 = sub_255CBF790(v59, v61, &v81);

      *(v57 + 4) = v63;
      _os_log_impl(&dword_255C4F000, v55, v56, "mainImage or asset is nil (for url: %s)", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v58);
      MEMORY[0x259C4C620](v58, -1, -1);
      MEMORY[0x259C4C620](v57, -1, -1);

      v62(v80, v19);
    }

    else
    {

      v64 = *(v6 + 8);
      v64(v8, v19);
      v64(v17, v19);
    }

    return 0;
  }

  v27 = [v26 imageAsset];
  if (!v27)
  {

    goto LABEL_13;
  }

  v79 = v27;
  sub_255D05B08();
  v28 = sub_255D05AE8();
  v30 = v29;
  v78[0] = *(v6 + 8);
  v78[1] = v6 + 8;
  (v78[0])(v14, v19);
  v81 = v28;
  v82 = v30;

  MEMORY[0x259C4B5D0](0x2E6B7261647ELL, 0xE600000000000000);

  v31 = v81;
  v32 = v82;
  v80 = v17;
  v33 = sub_255D05AB8();
  v35 = v34;
  v81 = v31;
  v82 = v32;

  MEMORY[0x259C4B5D0](v33, v35);

  v36 = sub_255CBEC50(v81, v82);

  if (v36)
  {
    v37 = [v36 imageAsset];
    if (v37)
    {
      v38 = v37;
      v39 = objc_opt_self();
      v40 = [v39 traitCollectionWithUserInterfaceStyle_];
      v41 = [v39 traitCollectionWithDisplayScale_];
      v42 = [v38 imageWithTraitCollection_];

      MEMORY[0x28223BE20](v43);
      v78[-2] = 0x3FF0000000000000;
      v44 = sub_255D07458();
      v45 = v79;
      [v79 registerImage:v42 withTraitCollection:v44];

      v46 = [v39 traitCollectionWithDisplayScale_];
      v47 = [v38 imageWithTraitCollection_];

      MEMORY[0x28223BE20](v48);
      v78[-2] = 0x4000000000000000;
      v49 = sub_255D07458();
      [v45 registerImage:v47 withTraitCollection:v49];

      v50 = [v39 traitCollectionWithDisplayScale_];
      v51 = [v38 imageWithTraitCollection_];

      MEMORY[0x28223BE20](v52);
      v78[-2] = 0x4008000000000000;
      v53 = sub_255D07458();
      [v45 registerImage:v51 withTraitCollection:v53];

      (v78[0])(v80, v19);
      return v26;
    }
  }

  if (qword_27F7DD820 != -1)
  {
    swift_once();
  }

  v66 = sub_255D05DB8();
  __swift_project_value_buffer(v66, qword_27F7E5E48);
  v67 = v80;
  (*(v6 + 16))(v11, v80, v19);
  v68 = sub_255D05D98();
  v69 = sub_255D07428();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v81 = v71;
    *v70 = 136315138;
    sub_255CBFEB0(&qword_27F7DEFE0, MEMORY[0x277CC9260]);
    v72 = sub_255D076B8();
    v74 = v73;
    v75 = v78[0];
    (v78[0])(v11, v19);
    v76 = sub_255CBF790(v72, v74, &v81);

    *(v70 + 4) = v76;
    _os_log_impl(&dword_255C4F000, v68, v69, "No dark image asset found (for url: %s)", v70, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v71);
    MEMORY[0x259C4C620](v71, -1, -1);
    MEMORY[0x259C4C620](v70, -1, -1);

    v75(v80, v19);
  }

  else
  {

    v77 = v78[0];
    (v78[0])(v11, v19);
    v77(v67, v19);
  }

  return v26;
}

id sub_255CBEC50(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for BundleImageProvider(0);
  v6 = sub_255CCD624(v2, a1, a2, *(v2 + *(v5 + 20)), *(v2 + *(v5 + 20) + 8));
  if (!v7)
  {
    if (qword_27F7DD820 != -1)
    {
      swift_once();
    }

    v13 = sub_255D05DB8();
    __swift_project_value_buffer(v13, qword_27F7E5E48);
    v14 = sub_255D05D98();
    v15 = sub_255D07428();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_255C4F000, v14, v15, "uiImage(filename:): imagePath is nil", v16, 2u);
      MEMORY[0x259C4C620](v16, -1, -1);
    }

    return 0;
  }

  v8 = v6;
  v9 = v7;
  v10 = objc_allocWithZone(MEMORY[0x277D755B8]);
  v11 = sub_255D070C8();
  v12 = [v10 initWithContentsOfFile_];

  if (!v12)
  {
    if (qword_27F7DD820 != -1)
    {
      swift_once();
    }

    v17 = sub_255D05DB8();
    __swift_project_value_buffer(v17, qword_27F7E5E48);

    v18 = sub_255D05D98();
    v19 = sub_255D07428();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v24 = v21;
      *v20 = 136315138;
      v22 = sub_255CBF790(v8, v9, &v24);

      *(v20 + 4) = v22;
      _os_log_impl(&dword_255C4F000, v18, v19, "UIImage(contentsOfFile:) returned nil for path %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x259C4C620](v21, -1, -1);
      MEMORY[0x259C4C620](v20, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  return v12;
}

__n128 sub_255CBEEF0@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_255D064D8();
  v5 = v3;
  v6 = sub_255D06CC8();
  sub_255D06F48();
  sub_255D06278();
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v6;
  *(a1 + 96) = v12;
  *(a1 + 112) = v13;
  *(a1 + 128) = v14;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  result = v11;
  *(a1 + 64) = v10;
  *(a1 + 80) = v11;
  return result;
}

void *sub_255CBEFF8@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_255D063E8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_255C7299C(v2, v10, &qword_27F7DF0C0);
  if (v10[440] == 1)
  {
    return memcpy(a1, v10, 0x1B8uLL);
  }

  sub_255D07438();
  v9 = sub_255D066C8();
  sub_255D05D88();

  sub_255D063D8();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_255CBF1A0@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void *, uint64_t)@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = sub_255D063E8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255C7299C(v6, v14, a1);
  if (v15 == 1)
  {
    return a2(v14, a3);
  }

  sub_255D07438();
  v13 = sub_255D066C8();
  sub_255D05D88();

  sub_255D063D8();
  swift_getAtKeyPath();

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_255CBF368@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = sub_255D063E8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  MEMORY[0x28223BE20](v12);
  v14 = &v18 - v13;
  sub_255C7299C(v6, &v18 - v13, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = a2(0);
    return (*(*(v15 - 8) + 32))(a3, v14, v15);
  }

  else
  {
    sub_255D07438();
    v17 = sub_255D066C8();
    sub_255D05D88();

    sub_255D063D8();
    swift_getAtKeyPath();

    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_255CBF58C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  v17 = a3;
  v7 = sub_255D063E8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  MEMORY[0x28223BE20](v11);
  v13 = &v16 - v12;
  sub_255C7299C(v6, &v16 - v12, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_255CC1068(v13, v17, a2);
  }

  sub_255D07438();
  v15 = sub_255D066C8();
  sub_255D05D88();

  sub_255D063D8();
  swift_getAtKeyPath();

  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_255CBF790(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_255CBF85C(v11, 0, 0, 1, a1, a2);
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
    sub_255CB7E68(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_255CBF85C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_255CBF968(a5, a6);
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
    result = sub_255D075B8();
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

uint64_t sub_255CBF968(uint64_t a1, unint64_t a2)
{
  v3 = sub_255CBF9B4(a1, a2);
  sub_255CBFAE4(&unk_2867D49A0);
  return v3;
}

uint64_t sub_255CBF9B4(uint64_t a1, unint64_t a2)
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

  v6 = sub_255CBFBD0(v5, 0);
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

  result = sub_255D075B8();
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
        v10 = sub_255D071C8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_255CBFBD0(v10, 0);
        result = sub_255D07578();
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

uint64_t sub_255CBFAE4(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_255C96D10(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_255CBFBD0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE248);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_255CBFC44(uint64_t a1)
{
  v2 = type metadata accessor for LegalDocumentModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_255CBFCF0()
{
  result = qword_27F7DEEC8;
  if (!qword_27F7DEEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DEEB8);
    sub_255CBFDA8();
    sub_255C810A8(&qword_27F7DEEF8, &qword_27F7DEF00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DEEC8);
  }

  return result;
}

unint64_t sub_255CBFDA8()
{
  result = qword_27F7DEED0;
  if (!qword_27F7DEED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DEED8);
    sub_255CBFEB0(&qword_27F7DEEE0, type metadata accessor for LegalDocumentSafetyAndHandlingSectionView);
    sub_255C810A8(&qword_27F7DEEE8, &qword_27F7DEEF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DEED0);
  }

  return result;
}

uint64_t sub_255CBFEB0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_255CBFFF4()
{
  if (!qword_27F7DEF28)
  {
    sub_255D061B8();
    v0 = sub_255D05F28();
    if (!v1)
    {
      atomic_store(v0, &qword_27F7DEF28);
    }
  }
}

unint64_t sub_255CC0050()
{
  result = qword_27F7DEF30;
  if (!qword_27F7DEF30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DEF38);
    sub_255CBFCF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DEF30);
  }

  return result;
}

uint64_t sub_255CC00E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SafetyAndHandlingSectionModel();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_255CC0168(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SafetyAndHandlingSectionModel();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_255CC01D8()
{
  result = type metadata accessor for SafetyAndHandlingSectionModel();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = type metadata accessor for LegalDocumentModel(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v10 = *(v9 - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, v9);
  }

  else
  {
    v13 = type metadata accessor for LegalDocumentModel(0);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

void sub_255CC04D4()
{
  if (!qword_27F7DEF68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DEDD0);
    v0 = sub_255D05F28();
    if (!v1)
    {
      atomic_store(v0, &qword_27F7DEF68);
    }
  }
}

unint64_t sub_255CC0590()
{
  result = qword_27F7DEF90;
  if (!qword_27F7DEF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DEF90);
  }

  return result;
}

unint64_t sub_255CC05E4()
{
  result = qword_27F7DEF98;
  if (!qword_27F7DEF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DEF98);
  }

  return result;
}

uint64_t sub_255CC0648(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_255CC06B8()
{
  v1 = *(type metadata accessor for BundleImageProvider(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_255D05B78();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_255CC07A4(uint64_t a1)
{
  type metadata accessor for BundleImageProvider(0);

  return sub_255CBBCFC(a1);
}

unint64_t sub_255CC0814()
{
  result = qword_27F7DEFB8;
  if (!qword_27F7DEFB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DEFB0);
    sub_255CC08A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DEFB8);
  }

  return result;
}

unint64_t sub_255CC08A0()
{
  result = qword_27F7DEFC0;
  if (!qword_27F7DEFC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DEFC8);
    sub_255CC095C();
    sub_255CBFEB0(&qword_27F7DEEA0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DEFC0);
  }

  return result;
}

unint64_t sub_255CC095C()
{
  result = qword_27F7DEFD0;
  if (!qword_27F7DEFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DEFD0);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_255CC0A50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_255CC0AB8()
{
  v1 = type metadata accessor for LegalDocumentSafetyAndHandlingSettingsView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DEDC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_255D065C8();
    v6 = *(v5 - 8);
    if (!(*(v6 + 48))(v0 + v3, 1, v5))
    {
      (*(v6 + 8))(v0 + v3, v5);
    }
  }

  else
  {
  }

  v7 = v0 + v3 + *(v1 + 20);
  v8 = v7 + *(type metadata accessor for LegalDocumentModel(0) + 20);
  type metadata accessor for LegalDocumentModel.DocumentType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    v10 = sub_255D05B78();
    (*(*(v10 - 8) + 8))(v8, v10);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_255CC0CF0(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

unint64_t sub_255CC0D88()
{
  result = qword_27F7DF008;
  if (!qword_27F7DF008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF000);
    sub_255C810A8(&qword_27F7DF010, &qword_27F7DF018);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF008);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  v1 = type metadata accessor for LegalDocumentSafetyAndHandlingView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DEEA8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_255D061B8();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = v0 + v3 + *(v1 + 20);
  v7 = v6 + *(type metadata accessor for LegalDocumentModel(0) + 20);
  type metadata accessor for LegalDocumentModel.DocumentType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    v9 = sub_255D05B78();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_255CC1068(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_255CC10F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_255D05B78();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
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
}

uint64_t sub_255CC11D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_255D05B78();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_255CC12BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_255CC1350()
{
  result = qword_27F7DF058;
  if (!qword_27F7DF058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DEFA8);
    sub_255CC13DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF058);
  }

  return result;
}

unint64_t sub_255CC13DC()
{
  result = qword_27F7DF060;
  if (!qword_27F7DF060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DEF80);
    sub_255CC1494();
    sub_255C810A8(&qword_27F7DF078, &qword_27F7DF080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF060);
  }

  return result;
}

unint64_t sub_255CC1494()
{
  result = qword_27F7DF068;
  if (!qword_27F7DF068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DEF78);
    sub_255CBFEB0(&qword_27F7DF070, type metadata accessor for Markdown);
    sub_255C810A8(&qword_27F7DEBA8, &qword_27F7DEBA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF068);
  }

  return result;
}

uint64_t sub_255CC157C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DEFF8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DEFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF000);
  sub_255CC0D88();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_255CC169C()
{
  result = qword_27F7DF098;
  if (!qword_27F7DF098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF0A0);
    sub_255C810A8(&qword_27F7DF0A8, &qword_27F7DF0B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF098);
  }

  return result;
}

uint64_t sub_255CC179C@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18[1] = a3;
  v5 = sub_255D064B8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF0C8);
  MEMORY[0x28223BE20](v9);
  v19 = a1 & 1;
  v20 = a2;
  sub_255D06478();
  if (qword_27F7DD818 != -1)
  {
    swift_once();
  }

  v10 = qword_27F7E5E40;
  v11 = sub_255D06988();
  v13 = v12;
  v21 = v11;
  v22 = v12;
  v15 = v14 & 1;
  v23 = v14 & 1;
  v24 = v16;
  sub_255D064A8();
  sub_255D06B78();
  (*(v6 + 8))(v8, v5);
  sub_255C8A038(v11, v13, v15);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF0D0);
  sub_255CC1CD0();
  sub_255CC1D8C();
  return sub_255D06ED8();
}

uint64_t sub_255CC1A54()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF100);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF0F0);
  sub_255CC1EC4();
  sub_255CC1E10();
  sub_255CC1F28(&qword_27F7DF110, type metadata accessor for LegalDocumentModel);
  return sub_255D06EB8();
}

uint64_t sub_255CC1B4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LegalDocumentCell();
  v10 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (sub_255CB3D94())
  {
    sub_255CBBAC0(a1, v6 + *(v4 + 20));
    *v6 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF090);
    swift_storeEnumTagMultiPayload();
    sub_255CC1F94(v6, a2);
    return (*(v10 + 56))(a2, 0, 1, v4);
  }

  else
  {
    v8 = *(v10 + 56);

    return v8(a2, 1, 1, v4);
  }
}

unint64_t sub_255CC1CD0()
{
  result = qword_27F7DF0D8;
  if (!qword_27F7DF0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF0C8);
    sub_255CC1F28(&qword_27F7DEEA0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF0D8);
  }

  return result;
}

unint64_t sub_255CC1D8C()
{
  result = qword_27F7DF0E0;
  if (!qword_27F7DF0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF0D0);
    sub_255CC1E10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF0E0);
  }

  return result;
}

unint64_t sub_255CC1E10()
{
  result = qword_27F7DF0E8;
  if (!qword_27F7DF0E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF0F0);
    sub_255CC1F28(&qword_27F7DF0F8, type metadata accessor for LegalDocumentCell);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF0E8);
  }

  return result;
}

unint64_t sub_255CC1EC4()
{
  result = qword_27F7DF108;
  if (!qword_27F7DF108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF108);
  }

  return result;
}

uint64_t sub_255CC1F28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_255CC1F94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegalDocumentCell();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_255CC1FFC()
{
  result = qword_27F7DF118;
  if (!qword_27F7DF118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF120);
    sub_255CC1CD0();
    sub_255CC1D8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF118);
  }

  return result;
}

uint64_t sub_255CC2094@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v48 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCB0);
  MEMORY[0x28223BE20](v3 - 8);
  v51 = &v41 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF1F0);
  v46 = *(v5 - 8);
  v47 = v5;
  MEMORY[0x28223BE20](v5);
  v45 = &v41 - v6;
  v7 = sub_255D07108();
  MEMORY[0x28223BE20](v7 - 8);
  v41 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_255D05B78();
  v49 = *(v9 - 8);
  v50 = v9;
  MEMORY[0x28223BE20](v9);
  v42 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LegalDocumentModel.DocumentType(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_255D05E08();
  v43 = *(v14 - 8);
  v44 = v14;
  MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v17 = &v41 - v16;
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF038);
  swift_storeEnumTagMultiPayload();
  v18 = type metadata accessor for LegalDocumentWebView(0);
  v19 = v18[5];
  *(a2 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DEDC8);
  swift_storeEnumTagMultiPayload();
  v20 = a2 + v18[6];
  *v20 = swift_getKeyPath();
  v20[8] = 0;
  v21 = a2 + v18[8];
  v54 = 0u;
  v55 = 0u;
  sub_255D06D98();
  v22 = v58;
  v23 = v57;
  *v21 = v56;
  *(v21 + 1) = v23;
  *(v21 + 4) = v22;
  v24 = v18[9];
  type metadata accessor for LegalDocumentNavigationDeciding(0);
  v25 = swift_allocObject();
  v26 = OBJC_IVAR____TtC33LegalAndRegulatorySettingsSupportP33_E60429FA2E658013B736C1213FAA2B5431LegalDocumentNavigationDeciding_openURL;
  v27 = sub_255D060C8();
  v28 = v25 + v26;
  v29 = v48;
  (*(*(v27 - 8) + 56))(v28, 1, 1, v27);
  *(a2 + v24) = v25;
  sub_255CC5994(v29, a2 + v18[10], type metadata accessor for LegalDocumentModel);

  sub_255D05DF8();
  sub_255D05DD8();
  [objc_allocWithZone(MEMORY[0x277CE3830]) init];
  sub_255D05DE8();
  sub_255D05E78();
  *&v56 = v25;
  sub_255D05DF8();
  sub_255CC5878(&qword_27F7DF1F8, type metadata accessor for LegalDocumentNavigationDeciding);
  v30 = sub_255D05E18();
  v31 = (a2 + v18[7]);
  *v31 = v30;
  v31[1] = 0;
  v32 = type metadata accessor for LegalDocumentModel(0);
  sub_255CC5994(v29 + *(v32 + 20), v13, type metadata accessor for LegalDocumentModel.DocumentType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 2) < 2 || EnumCaseMultiPayload)
  {

    v35 = v49;
    v34 = v50;
  }

  else
  {
    v35 = v49;
    v34 = v50;
    v36 = v42;
    (*(v49 + 32))();

    sub_255D070F8();
    *&v56 = sub_255D07088();
    *(&v56 + 1) = v40;
    *&v54 = 0xD000000000000012;
    *(&v54 + 1) = 0x8000000255D18DD0;
    v52 = 0xD00000000000006ELL;
    v53 = 0x8000000255D18DF0;
    sub_255C8407C();
    sub_255D074E8();
    (*(v35 + 8))(v36, v34);
  }

  v56 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF1C8);
  sub_255D06DA8();

  v37 = v51;
  sub_255D05B48();
  result = (*(v35 + 48))(v37, 1, v34);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v39 = v45;
    sub_255D05E68();

    sub_255CBFC44(v29);
    (*(v46 + 8))(v39, v47);
    (*(v43 + 8))(v17, v44);
    return (*(v35 + 8))(v37, v34);
  }

  return result;
}

uint64_t sub_255CC287C@<X0>(uint64_t a1@<X8>)
{
  v135 = a1;
  v2 = type metadata accessor for LegalDocumentWebView(0);
  v3 = v2 - 8;
  v132 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v133 = v4;
  v134 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_255D06608();
  v130 = *(v5 - 8);
  v131 = v5;
  MEMORY[0x28223BE20](v5);
  v129 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_255D06568();
  v127 = *(v7 - 8);
  v128 = v7;
  MEMORY[0x28223BE20](v7);
  v126 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_255D065C8();
  v106 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v89 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DEFE8) - 8;
  MEMORY[0x28223BE20](v122);
  v111 = &v88 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DEDD0);
  MEMORY[0x28223BE20](v11 - 8);
  v90 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v108 = &v88 - v14;
  MEMORY[0x28223BE20](v15);
  v136 = &v88 - v16;
  v110 = sub_255D05F88();
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v107 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_255D05D38();
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v100 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_255D05D18();
  v96 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v20 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_255D05D48();
  v94 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF180);
  v95 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = &v88 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF188);
  v97 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v29 = &v88 - v28;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF190);
  v101 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v92 = &v88 - v30;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF198);
  v103 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v93 = &v88 - v31;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF1A0);
  v113 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v137 = &v88 - v32;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF1A8);
  MEMORY[0x28223BE20](v118);
  v115 = &v88 - v33;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF1B0);
  v119 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v116 = &v88 - v34;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF1B8);
  v121 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v117 = &v88 - v35;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF1C0);
  MEMORY[0x28223BE20](v125);
  v124 = &v88 - v36;
  v91 = v3;
  v37 = (v1 + *(v3 + 36));
  v39 = *v37;
  v38 = v37[1];
  v139 = v39;
  v140 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF1C8);
  sub_255D06DA8();
  sub_255D05D58();
  sub_255D05D08();
  v40 = sub_255CC5878(&qword_27F7DF1D0, MEMORY[0x277CE4490]);
  sub_255D069C8();
  (*(v96 + 8))(v20, v98);
  (*(v94 + 8))(v23, v21);
  v41 = v100;
  sub_255D05D08();
  v139 = v21;
  v140 = v40;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_255D069E8();
  (*(v104 + 8))(v41, v105);
  (*(v95 + 8))(v26, v24);
  v139 = v24;
  v140 = OpaqueTypeConformance2;
  v43 = swift_getOpaqueTypeConformance2();
  v44 = v92;
  sub_255D069D8();
  (*(v97 + 8))(v29, v27);
  v45 = sub_255CB2D90();
  v47 = v46;
  LOBYTE(v41) = v48;
  v139 = v27;
  v140 = v43;
  v49 = swift_getOpaqueTypeConformance2();
  v50 = v93;
  v51 = v99;
  sub_255D06AD8();
  v52 = v41 & 1;
  v53 = v112;
  v54 = v47;
  v55 = v108;
  v56 = v136;
  sub_255C8A038(v45, v54, v52);
  v57 = v111;

  (*(v101 + 8))(v44, v51);
  v58 = v107;
  sub_255D05F78();
  v139 = v51;
  v140 = v49;
  swift_getOpaqueTypeConformance2();
  v59 = v102;
  sub_255D06AA8();
  (*(v109 + 8))(v58, v110);
  (*(v103 + 8))(v50, v59);
  sub_255CBF568(v56);
  v60 = v106;
  (*(v106 + 104))(v55, *MEMORY[0x277CE0558], v53);
  (*(v60 + 56))(v55, 0, 1, v53);
  v61 = *(v122 + 56);
  sub_255C7299C(v56, v57, &qword_27F7DEDD0);
  sub_255C7299C(v55, v57 + v61, &qword_27F7DEDD0);
  v62 = v60;
  v63 = *(v60 + 48);
  if (v63(v57, 1, v53) == 1)
  {
    sub_255C76B94(v55, &qword_27F7DEDD0);
    sub_255C76B94(v56, &qword_27F7DEDD0);
    if (v63(v57 + v61, 1, v53) == 1)
    {
      sub_255C76B94(v57, &qword_27F7DEDD0);
LABEL_9:
      v65 = sub_255D06708();
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v64 = v90;
  sub_255C7299C(v57, v90, &qword_27F7DEDD0);
  if (v63(v57 + v61, 1, v53) == 1)
  {
    sub_255C76B94(v55, &qword_27F7DEDD0);
    sub_255C76B94(v136, &qword_27F7DEDD0);
    (*(v60 + 8))(v64, v53);
LABEL_6:
    sub_255C76B94(v57, &qword_27F7DEFE8);
    goto LABEL_7;
  }

  v66 = v57 + v61;
  v67 = v89;
  (*(v60 + 32))(v89, v66, v53);
  sub_255CC5878(&qword_27F7DF020, MEMORY[0x277CE0570]);
  v68 = sub_255D07078();
  v69 = *(v62 + 8);
  v69(v67, v53);
  sub_255C76B94(v55, &qword_27F7DEDD0);
  sub_255C76B94(v136, &qword_27F7DEDD0);
  v69(v64, v53);
  sub_255C76B94(v57, &qword_27F7DEDD0);
  if (v68)
  {
    goto LABEL_9;
  }

LABEL_7:
  v65 = sub_255D06758();
LABEL_10:
  v70 = v65;
  v71 = v115;
  (*(v113 + 32))(v115, v137, v114);
  v72 = v118;
  v73 = v71 + *(v118 + 36);
  *v73 = v70;
  *(v73 + 8) = 0u;
  *(v73 + 24) = 0u;
  *(v73 + 40) = 1;
  v74 = v126;
  sub_255D06558();
  sub_255D066D8();
  v75 = sub_255CC516C();
  v76 = v116;
  sub_255D06B48();
  (*(v127 + 8))(v74, v128);
  sub_255C76B94(v71, &qword_27F7DF1A8);
  v77 = v129;
  sub_255D065F8();
  sub_255D066E8();
  v139 = v72;
  v140 = v75;
  swift_getOpaqueTypeConformance2();
  v78 = v117;
  v79 = v120;
  sub_255D06AE8();
  (*(v130 + 8))(v77, v131);
  (*(v119 + 8))(v76, v79);
  v80 = v138;
  v81 = v134;
  sub_255CC5994(v138, v134, type metadata accessor for LegalDocumentWebView);
  v82 = (*(v132 + 80) + 16) & ~*(v132 + 80);
  v83 = swift_allocObject();
  sub_255CC535C(v81, v83 + v82);
  v84 = v124;
  (*(v121 + 32))(v124, v78, v123);
  v85 = (v84 + *(v125 + 36));
  *v85 = sub_255CC53C0;
  v85[1] = v83;
  v85[2] = 0;
  v85[3] = 0;
  sub_255D066D8();
  sub_255CC5994(v80, v81, type metadata accessor for LegalDocumentWebView);
  v86 = swift_allocObject();
  sub_255CC535C(v81, v86 + v82);
  sub_255D06F58();
  sub_255CC576C();
  sub_255D06B88();

  return sub_255C76B94(v84, &qword_27F7DF1C0);
}

uint64_t sub_255CC3B08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF1E8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v7 = &v14[-v6];
  v8 = *(a1 + *(type metadata accessor for LegalDocumentWebView(0) + 36));
  v9 = OBJC_IVAR____TtC33LegalAndRegulatorySettingsSupportP33_E60429FA2E658013B736C1213FAA2B5431LegalDocumentNavigationDeciding_openURL;
  swift_beginAccess();
  sub_255C7299C(v8 + v9, v7, &qword_27F7DF1E8);
  v10 = sub_255D060C8();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v7, 1, v10);
  result = sub_255C76B94(v7, &qword_27F7DF1E8);
  if (v12 == 1)
  {
    sub_255CBF768(v4);
    (*(v11 + 56))(v4, 0, 1, v10);
    swift_beginAccess();
    sub_255CC58C0(v4, v8 + v9);
    return swift_endAccess();
  }

  return result;
}

void sub_255CC3CC8()
{
  v0 = sub_255D065C8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DEFE8);
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DEDD0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - v14;
  v16 = sub_255D066F8();
  if (v16 == sub_255D066F8())
  {
    type metadata accessor for LegalDocumentWebView(0);
    sub_255CBF568(v15);
    (*(v1 + 104))(v12, *MEMORY[0x277CE0560], v0);
    (*(v1 + 56))(v12, 0, 1, v0);
    v17 = *(v4 + 48);
    sub_255C7299C(v15, v6, &qword_27F7DEDD0);
    sub_255C7299C(v12, &v6[v17], &qword_27F7DEDD0);
    v18 = *(v1 + 48);
    if (v18(v6, 1, v0) == 1)
    {
      sub_255C76B94(v12, &qword_27F7DEDD0);
      sub_255C76B94(v15, &qword_27F7DEDD0);
      if (v18(&v6[v17], 1, v0) == 1)
      {
        sub_255C76B94(v6, &qword_27F7DEDD0);
LABEL_9:
        v21 = [objc_opt_self() layoutMetrics];
        if (v21)
        {
          v22 = v21;
          [v21 readableWidthForFont_];
        }

        else
        {
          __break(1u);
        }

        return;
      }
    }

    else
    {
      sub_255C7299C(v6, v9, &qword_27F7DEDD0);
      if (v18(&v6[v17], 1, v0) != 1)
      {
        (*(v1 + 32))(v3, &v6[v17], v0);
        sub_255CC5878(&qword_27F7DF020, MEMORY[0x277CE0570]);
        v19 = sub_255D07078();
        v20 = *(v1 + 8);
        v20(v3, v0);
        sub_255C76B94(v12, &qword_27F7DEDD0);
        sub_255C76B94(v15, &qword_27F7DEDD0);
        v20(v9, v0);
        sub_255C76B94(v6, &qword_27F7DEDD0);
        if ((v19 & 1) == 0)
        {
          return;
        }

        goto LABEL_9;
      }

      sub_255C76B94(v12, &qword_27F7DEDD0);
      sub_255C76B94(v15, &qword_27F7DEDD0);
      (*(v1 + 8))(v9, v0);
    }

    sub_255C76B94(v6, &qword_27F7DEFE8);
  }
}

uint64_t sub_255CC41B8(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF1E8);
  v2[7] = swift_task_alloc();
  v3 = sub_255D060C8();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCB0);
  v2[11] = swift_task_alloc();
  v4 = sub_255D05868();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v5 = sub_255D05B78();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  sub_255D07308();
  v2[18] = sub_255D072F8();
  v7 = sub_255D072E8();

  return MEMORY[0x2822009F8](sub_255CC43D4, v7, v6);
}

uint64_t sub_255CC43D4()
{

  if (sub_255D05E28())
  {
    v1 = 1;
    goto LABEL_9;
  }

  v2 = v0[15];
  v3 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  v7 = v0[11];
  v6 = v0[12];
  sub_255D05E38();
  sub_255D05858();
  (*(v5 + 8))(v4, v6);
  if ((*(v3 + 48))(v7, 1, v2) == 1)
  {
    v8 = v0[11];
    v9 = &qword_27F7DDCB0;
LABEL_7:
    sub_255C76B94(v8, v9);
    v1 = 1;
    goto LABEL_9;
  }

  v10 = v0[8];
  v11 = v0[9];
  v13 = v0[6];
  v12 = v0[7];
  (*(v0[16] + 32))(v0[17], v0[11], v0[15]);
  v14 = OBJC_IVAR____TtC33LegalAndRegulatorySettingsSupportP33_E60429FA2E658013B736C1213FAA2B5431LegalDocumentNavigationDeciding_openURL;
  swift_beginAccess();
  sub_255C7299C(v13 + v14, v12, &qword_27F7DF1E8);
  v15 = (*(v11 + 48))(v12, 1, v10);
  v17 = v0[16];
  v16 = v0[17];
  v18 = v0[15];
  if (v15 == 1)
  {
    v19 = v0[7];
    (*(v17 + 8))(v0[17], v0[15]);
    v9 = &qword_27F7DF1E8;
    v8 = v19;
    goto LABEL_7;
  }

  v21 = v0[9];
  v20 = v0[10];
  v22 = v0[8];
  (*(v21 + 32))(v20, v0[7], v22);
  sub_255D060B8();
  (*(v21 + 8))(v20, v22);
  (*(v17 + 8))(v16, v18);
  v1 = 0;
LABEL_9:

  v23 = v0[1];

  return v23(v1);
}

uint64_t sub_255CC4634()
{
  sub_255C76B94(v0 + OBJC_IVAR____TtC33LegalAndRegulatorySettingsSupportP33_E60429FA2E658013B736C1213FAA2B5431LegalDocumentNavigationDeciding_openURL, &qword_27F7DF1E8);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_255CC46D0()
{
  sub_255CC4C94(319, &qword_27F7DF140, MEMORY[0x277CDF708], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_255CC47A4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF148);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DEF50);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[7]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = type metadata accessor for LegalDocumentModel(0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[10];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_255CC4944(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF148);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DEF50);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7]) = (a2 - 1);
  }

  else
  {
    v15 = type metadata accessor for LegalDocumentModel(0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[10];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

void sub_255CC4AF0()
{
  sub_255CC4C94(319, &qword_27F7DF160, MEMORY[0x277CDF708], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_255CC04D4();
    if (v1 <= 0x3F)
    {
      sub_255CC4CF8(319, &qword_27F7DF168, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_255CC4C94(319, &qword_27F7DF170, MEMORY[0x277CE37E8], MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_255CC4CF8(319, &qword_27F7DF178, MEMORY[0x277CDF310], MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            type metadata accessor for LegalDocumentNavigationDeciding(319);
            if (v5 <= 0x3F)
            {
              type metadata accessor for LegalDocumentModel(319);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_255CC4C94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_255CC4CF8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_255CC4D48(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_255CC4DF0;

  return sub_255CC41B8(a1);
}

uint64_t sub_255CC4DF0(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_255CC4EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_255CC5A64;

  return MEMORY[0x282135AF8](a1, a2, a3);
}

uint64_t sub_255CC4F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_255CC504C;

  return MEMORY[0x282135B00](a1, a2, a3);
}

uint64_t sub_255CC504C(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

unint64_t sub_255CC516C()
{
  result = qword_27F7DF1D8;
  if (!qword_27F7DF1D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF1A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF198);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF190);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF188);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF180);
    sub_255D05D48();
    sub_255CC5878(&qword_27F7DF1D0, MEMORY[0x277CE4490]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF1D8);
  }

  return result;
}

uint64_t sub_255CC535C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegalDocumentWebView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_255CC53C0()
{
  v1 = *(type metadata accessor for LegalDocumentWebView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_255CC3B08(v2);
}

uint64_t objectdestroyTm_2()
{
  v1 = type metadata accessor for LegalDocumentWebView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF038);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_255D060C8();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DEDC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_255D065C8();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v5 + v7, 1, v8))
    {
      (*(v9 + 8))(v5 + v7, v8);
    }
  }

  else
  {
  }

  sub_255C74DA4(*(v5 + v1[6]), *(v5 + v1[6] + 8));

  v10 = v5 + v1[10];
  v11 = v10 + *(type metadata accessor for LegalDocumentModel(0) + 20);
  type metadata accessor for LegalDocumentModel.DocumentType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    v13 = sub_255D05B78();
    (*(*(v13 - 8) + 8))(v11, v13);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void sub_255CC56EC()
{
  type metadata accessor for LegalDocumentWebView(0);

  sub_255CC3CC8();
}

unint64_t sub_255CC576C()
{
  result = qword_27F7DF1E0;
  if (!qword_27F7DF1E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF1C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF1B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF1A8);
    sub_255CC516C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF1E0);
  }

  return result;
}

uint64_t sub_255CC5878(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_255CC58C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF1E8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_255CC5940@<X0>(void *a1@<X8>)
{
  result = sub_255D062E8();
  *a1 = v3;
  return result;
}

uint64_t sub_255CC5994(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_255CC59FC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF1C0);
  sub_255CC576C();
  return swift_getOpaqueTypeConformance2();
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_255CC5A84(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
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

uint64_t sub_255CC5AE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_255CC5B6C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v39 = a1;
  v40 = sub_255D05F88();
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v37 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_255D06418();
  v35 = *(v4 - 8);
  v36 = v4;
  MEMORY[0x28223BE20](v4);
  v34 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF200);
  v30 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF208);
  v31 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF210);
  v32 = *(v12 - 8);
  v33 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v29 - v13;
  v41 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF218);
  sub_255C810A8(&qword_27F7DF220, &qword_27F7DF218);
  sub_255D068F8();
  sub_255D06478();
  if (qword_27F7DD818 != -1)
  {
    swift_once();
  }

  v15 = qword_27F7E5E40;
  v16 = sub_255D06988();
  v18 = v17;
  v20 = v19;
  v21 = sub_255C810A8(&qword_27F7DF228, &qword_27F7DF200);
  sub_255D06AD8();
  sub_255C8A038(v16, v18, v20 & 1);

  (*(v30 + 8))(v8, v6);
  v23 = v34;
  v22 = v35;
  v24 = v36;
  (*(v35 + 104))(v34, *MEMORY[0x277CDDDC0], v36);
  v42 = v6;
  v43 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_255D06BA8();
  (*(v22 + 8))(v23, v24);
  (*(v31 + 8))(v11, v9);
  v26 = v37;
  sub_255D05F78();
  v42 = v9;
  v43 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v27 = v33;
  sub_255D06AA8();
  (*(v38 + 8))(v26, v40);
  return (*(v32 + 8))(v14, v27);
}

uint64_t sub_255CC60FC@<X0>(_OWORD *a1@<X0>, char *a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF230);
  v4 = *(v3 - 8);
  v36 = v3;
  v37 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - v5;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF238);
  v34 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v40 = &v31 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF240);
  v33 = *(v10 - 8);
  v11 = v33;
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v31 - v15;
  v42 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF248);
  sub_255C810A8(&qword_27F7DF250, &qword_27F7DF248);
  v32 = v16;
  sub_255D06EE8();
  v41 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF258);
  sub_255C810A8(&qword_27F7DF260, &qword_27F7DF258);
  sub_255D06EE8();
  v43 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF268);
  sub_255D06DC8();
  type metadata accessor for ChinaBlueStickerOnBoardingKit();
  sub_255CC7038();
  sub_255CC70F4();
  v17 = v40;
  v18 = v36;
  sub_255D06BE8();

  (*(v37 + 8))(v6, v18);
  v19 = *(v11 + 16);
  v31 = v13;
  v20 = v16;
  v21 = v10;
  v19(v13, v20, v10);
  v23 = v34;
  v22 = v35;
  v24 = *(v34 + 16);
  v25 = v38;
  v24(v35, v17, v38);
  v26 = v39;
  v19(v39, v13, v21);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF280);
  v24(&v26[*(v27 + 48)], v22, v25);
  v28 = *(v23 + 8);
  v28(v40, v25);
  v29 = *(v33 + 8);
  v29(v32, v21);
  v28(v22, v25);
  return (v29)(v31, v21);
}

uint64_t sub_255CC65D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_255D06CF8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_255D06F58();
  v10 = v9;
  v11 = SFChinaMIITBlueStickerLabelImage();
  sub_255D06CC8();
  (*(v5 + 104))(v7, *MEMORY[0x277CE0FE0], v4);
  v12 = sub_255D06D58();

  (*(v5 + 8))(v7, v4);
  v13 = swift_allocObject();
  v14 = *(a1 + 16);
  *(v13 + 16) = *a1;
  *(v13 + 32) = v14;
  *(v13 + 48) = *(a1 + 32);
  *(v13 + 64) = *(a1 + 48);
  sub_255CC72F0(a1, v17);
  result = sub_255D06F58();
  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  *(a2 + 40) = sub_255CC7328;
  *(a2 + 48) = v13;
  *(a2 + 56) = result;
  *(a2 + 64) = v16;
  return result;
}

id sub_255CC6788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v107 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF288);
  v108 = *(v5 - 8);
  v109 = v5;
  MEMORY[0x28223BE20](v5);
  v106 = v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v105 = v103 - v8;
  MEMORY[0x28223BE20](v9);
  v104 = v103 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = v103 - v12;
  v14 = sub_255D070C8();
  v15 = MGGetStringAnswer();

  v112 = v13;
  if (v15)
  {
    v16 = sub_255D070D8();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0xE000000000000000;
  }

  v113 = v16;
  v114 = v18;
  v103[0] = sub_255C8407C();
  v19 = sub_255D069A8();
  v21 = v20;
  v23 = v22;
  v24 = SFBlueStickerFont();
  sub_255D06038();
  v26 = v25;
  sub_255D06038();
  v28 = v27;
  sub_255D06038();
  if (v28 >= v26)
  {
    v29 = v30;
  }

  v31 = [v24 fontWithSize_];

  sub_255D068D8();
  v32 = sub_255D06958();
  v110 = a1;
  v111 = a2;
  v33 = v32;
  v35 = v34;
  v37 = v36;

  sub_255C8A038(v19, v21, v23 & 1);

  sub_255D06C78();
  v38 = sub_255D06908();
  v40 = v39;
  v42 = v41;
  v44 = v43;

  v45 = v33;
  v46 = v111;
  sub_255C8A038(v45, v35, v37 & 1);

  sub_255D06038();
  v48 = v47 * 0.5;
  sub_255D06038();
  v50 = v49 * *(v46 + 16);
  v113 = v38;
  v114 = v40;
  v51 = v42 & 1;
  v115 = v42 & 1;
  v116 = v44;
  v117 = v48;
  v118 = v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF290);
  v53 = sub_255CC7330();
  v103[2] = v52;
  v103[1] = v53;
  sub_255D06C38();
  sub_255C8A038(v38, v40, v51);

  result = SFChinaMIITBlueStickerLabelId();
  if (result)
  {
    v55 = result;
    v56 = sub_255D070D8();
    v58 = v57;

    v113 = v56;
    v114 = v58;
    v59 = sub_255D069A8();
    v61 = v60;
    v63 = v62;
    v64 = SFBlueStickerFont();
    sub_255D06038();
    v66 = v65;
    sub_255D06038();
    v68 = v67;
    sub_255D06038();
    if (v68 >= v66)
    {
      v69 = v70;
    }

    v71 = [v64 fontWithSize_];

    sub_255D068D8();
    v72 = sub_255D06958();
    v74 = v73;
    v76 = v75;

    sub_255C8A038(v59, v61, v63 & 1);

    v77 = sub_255D06948();
    v79 = v78;
    v81 = v80;
    sub_255C8A038(v72, v74, v76 & 1);

    sub_255D06C98();
    v82 = sub_255D06908();
    v84 = v83;
    v86 = v85;
    v88 = v87;

    sub_255C8A038(v77, v79, v81 & 1);

    sub_255D06038();
    v90 = v89 * 0.5;
    sub_255D06038();
    v92 = v91 * *(v111 + 32);
    v113 = v82;
    v114 = v84;
    LOBYTE(v77) = v86 & 1;
    v115 = v86 & 1;
    v116 = v88;
    v117 = v90;
    v118 = v92;
    v93 = v104;
    sub_255D06C38();
    sub_255C8A038(v82, v84, v77);

    v95 = v108;
    v94 = v109;
    v96 = *(v108 + 16);
    v97 = v105;
    v98 = v112;
    v96(v105, v112, v109);
    v99 = v106;
    v96(v106, v93, v94);
    v100 = v107;
    v96(v107, v97, v94);
    v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF2A0);
    v96(&v100[*(v101 + 48)], v99, v94);
    v102 = *(v95 + 8);
    v102(v93, v94);
    v102(v98, v94);
    v102(v99, v94);
    return (v102)(v97, v94);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_255CC6DDC(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = *(a1 + 48);
  sub_255CC72F0(a1, v5);
  return sub_255D06DF8();
}

uint64_t sub_255CC6E94@<X0>(uint64_t a1@<X8>)
{
  sub_255D06478();
  if (qword_27F7DD818 != -1)
  {
    swift_once();
  }

  v2 = qword_27F7E5E40;
  result = sub_255D06988();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_255CC6F7C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF038);

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_255CC7038()
{
  result = qword_27F7DF270;
  if (!qword_27F7DF270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF230);
    sub_255C810A8(&qword_27F7DF260, &qword_27F7DF258);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF270);
  }

  return result;
}

unint64_t sub_255CC70F4()
{
  result = qword_27F7DF278;
  if (!qword_27F7DF278)
  {
    type metadata accessor for ChinaBlueStickerOnBoardingKit();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF278);
  }

  return result;
}

uint64_t sub_255CC7194(uint64_t a1)
{
  v2 = sub_255D060C8();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_255D063B8();
}

uint64_t sub_255CC7260()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

unint64_t sub_255CC7330()
{
  result = qword_27F7DF298;
  if (!qword_27F7DF298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF298);
  }

  return result;
}

uint64_t sub_255CC73B4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF210);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF208);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF200);
  sub_255C810A8(&qword_27F7DF228, &qword_27F7DF200);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_255CC74E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF148);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_255CC7570(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF148);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for ChinaBlueStickerOnBoardingKit()
{
  result = qword_27F7DF2A8;
  if (!qword_27F7DF2A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_255CC7638()
{
  sub_255CC76A4();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_255CC76A4()
{
  if (!qword_27F7DF160)
  {
    sub_255D060C8();
    v0 = sub_255D05F28();
    if (!v1)
    {
      atomic_store(v0, &qword_27F7DF160);
    }
  }
}

id sub_255CC7730()
{
  v0 = type metadata accessor for ChinaBlueStickerOnBoardingKit();
  v20[0] = *(v0 - 8);
  v1 = *(v20[0] + 64);
  MEMORY[0x28223BE20](v0 - 8);
  if (qword_27F7DD818 != -1)
  {
    swift_once();
  }

  sub_255D059B8();
  sub_255D059B8();
  v2 = sub_255D070C8();
  v3 = [objc_opt_self() systemImageNamed_];

  v4 = objc_allocWithZone(MEMORY[0x277D37698]);
  v5 = sub_255D070C8();

  v6 = sub_255D070C8();

  v7 = [v4 initWithTitle:v5 detailText:v6 icon:v3];

  v8 = [objc_opt_self() boldButton];
  sub_255D059B8();
  v9 = sub_255D070C8();

  [v8 setTitle:v9 forState:0];

  sub_255CC812C();
  sub_255CC8178(v20[1], v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v20[0] + 80) + 16) & ~*(v20[0] + 80);
  v11 = swift_allocObject();
  sub_255CC82DC(v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  v12 = sub_255D07488();
  [v8 addAction:v12 forControlEvents:64];
  v13 = [v7 buttonTray];
  [v13 addButton_];

  v14 = [objc_opt_self() linkButton];
  sub_255D059B8();
  *(swift_allocObject() + 16) = v7;
  v15 = v7;
  v16 = sub_255D07488();
  v17 = sub_255D070C8();

  [v14 setTitle:v17 forState:0];

  [v14 addAction:v16 forControlEvents:64];
  v18 = [v15 buttonTray];
  [v18 addButton_];

  return v15;
}

uint64_t sub_255CC7C64(uint64_t a1, uint64_t a2)
{
  v3 = sub_255D060C8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCB0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - v11;
  v13 = SFChinaMIITBlueStickerLabelId();
  if (v13)
  {
    v14 = v13;
    v15 = sub_255D070D8();
    v17 = v16;

    v18 = SFIMEINumber();
    if (v18)
    {
      v19 = v18;
      v20 = sub_255D070D8();
      v30 = v21;
      v31 = v20;

      v32 = a2;
      v33 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF2C8);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_255D0B6E0;
      v23 = MEMORY[0x277D837D0];
      *(v22 + 56) = MEMORY[0x277D837D0];
      v24 = sub_255CC8400();
      *(v22 + 32) = v15;
      *(v22 + 40) = v17;
      *(v22 + 96) = v23;
      *(v22 + 104) = v24;
      v25 = v30;
      v26 = v31;
      *(v22 + 64) = v24;
      *(v22 + 72) = v26;
      *(v22 + 80) = v25;
      v3 = v33;
      sub_255D070E8();
    }

    else
    {
    }
  }

  sub_255D05B48();

  sub_255CBF768(v6);
  sub_255C867BC(v12, v9);
  v27 = sub_255D05B78();
  v28 = *(v27 - 8);
  result = (*(v28 + 48))(v9, 1, v27);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_255D060B8();
    (*(v4 + 8))(v6, v3);
    sub_255C86880(v12);
    return (*(v28 + 8))(v9, v27);
  }

  return result;
}

uint64_t sub_255CC7FA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_255CC80E8(&qword_27F7DF2B8);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_255CC8024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_255CC80E8(&qword_27F7DF2B8);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_255CC80A4()
{
  sub_255CC80E8(&qword_27F7DF2B8);
  sub_255D06678();
  __break(1u);
}

uint64_t sub_255CC80E8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ChinaBlueStickerOnBoardingKit();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_255CC812C()
{
  result = qword_27F7DF2C0;
  if (!qword_27F7DF2C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F7DF2C0);
  }

  return result;
}

uint64_t sub_255CC8178(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChinaBlueStickerOnBoardingKit();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_255CC81DC()
{
  v1 = *(type metadata accessor for ChinaBlueStickerOnBoardingKit() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF038);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_255D060C8();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_255CC82DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChinaBlueStickerOnBoardingKit();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_255CC8340(uint64_t a1)
{
  v3 = *(type metadata accessor for ChinaBlueStickerOnBoardingKit() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_255CC7C64(a1, v4);
}

uint64_t sub_255CC83B0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_255CC8400()
{
  result = qword_27F7DF2D0;
  if (!qword_27F7DF2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF2D0);
  }

  return result;
}

uint64_t sub_255CC8460(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_255CC84A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_255CC8518@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v41 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF2D8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF0C8);
  v39 = *(v8 - 8);
  v40 = v8;
  MEMORY[0x28223BE20](v8);
  v38 = &v37 - v9;
  v10 = sub_255D063E8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  v14 = a1;
  if ((a2 & 1) == 0)
  {
    sub_255D07438();
    v15 = sub_255D066C8();
    sub_255D05D88();

    sub_255D063D8();
    swift_getAtKeyPath();

    (*(v11 + 8))(v13, v10);
    v14 = v42;
  }

  swift_getKeyPath();
  v42 = v14;
  sub_255CC8D9C(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState);
  sub_255D05CA8();

  v16 = *(v14 + 67);

  if (v16 == 1)
  {

    if ((a2 & 1) == 0)
    {
      sub_255D07438();
      v17 = sub_255D066C8();
      sub_255D05D88();

      sub_255D063D8();
      swift_getAtKeyPath();

      (*(v11 + 8))(v13, v10);
      a1 = v42;
    }

    swift_getKeyPath();
    v42 = a1;
    sub_255D05CA8();

    v19 = *(a1 + 72);
    v18 = *(a1 + 80);

    v42 = v19;
    v43 = v18;
    sub_255C8407C();
    v20 = sub_255D069A8();
    v22 = v21;
    v24 = v23;
    v25 = sub_255D06808();
    (*(*(v25 - 8) + 56))(v7, 1, 1, v25);
    sub_255D06898();
    sub_255CC8C3C(v7);
    v26 = sub_255D06958();
    v28 = v27;
    v30 = v29;
    v32 = v31;

    sub_255C8A038(v20, v22, v24 & 1);

    v42 = v26;
    v43 = v28;
    v44 = v30 & 1;
    v45 = v32;
    v33 = v38;
    sub_255D06B98();
    sub_255C8A038(v26, v28, v30 & 1);

    v34 = v41;
    sub_255CC8CA4(v33, v41);
    v35 = 0;
  }

  else
  {
    v35 = 1;
    v34 = v41;
  }

  return (*(v39 + 56))(v34, v35, 1, v40);
}

uint64_t sub_255CC8A10@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_255CC8D9C(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState);
  sub_255D05CA8();

  *a2 = *(v3 + 67);
  return result;
}

uint64_t sub_255CC8B0C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_255CC8D9C(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState);
  sub_255D05CA8();

  v4 = *(v3 + 80);
  *a2 = *(v3 + 72);
  a2[1] = v4;
}

uint64_t sub_255CC8BBC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_255CD1F60(v1, v2);
}

uint64_t sub_255CC8BFC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_255CD1F60(v1, v2);
}

uint64_t sub_255CC8C3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF2D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_255CC8CA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF0C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_255CC8D18()
{
  result = qword_27F7DF2E8;
  if (!qword_27F7DF2E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF2F0);
    sub_255CC1CD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF2E8);
  }

  return result;
}

uint64_t sub_255CC8D9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_255CC8E10@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF2D8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF2F8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v28 = &v27 - v11;
  v12 = sub_255D063E8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    sub_255D07438();
    v16 = sub_255D066C8();
    sub_255D05D88();

    sub_255D063D8();
    swift_getAtKeyPath();

    (*(v13 + 8))(v15, v12);
    a1 = *&v39[0];
  }

  swift_getKeyPath();
  *&v39[0] = a1;
  sub_255CC8D9C(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState);
  sub_255D05CA8();

  v17 = *(a1 + 64);

  if (v17 != 1)
  {
    return (*(v10 + 56))(a3, 1, 1, v9);
  }

  v18 = MEMORY[0x277D84F90];
  v19 = sub_255D064C8();
  v36 = 0;
  sub_255C8A25C(0x100000000000003CLL, 0x8000000255D19090, 0);

  sub_255C8A25C(0x1000000000000030, 0x8000000255D190D0, 0);

  sub_255C8A038(0x1000000000000030, 0x8000000255D190D0, 0);

  sub_255C8A038(0x100000000000003CLL, 0x8000000255D19090, 0);

  v38 = 0;
  v37 = 0;
  v27 = v9;
  v20 = a3;
  v21 = v36;
  v22 = sub_255D06808();
  (*(*(v22 - 8) + 56))(v8, 1, 1, v22);
  v23 = sub_255D06898();
  sub_255C76B94(v8, &qword_27F7DF2D8);
  KeyPath = swift_getKeyPath();
  *&v29 = v19;
  *(&v29 + 1) = 0x3FF3333333333333;
  LOBYTE(v30) = v21;
  *(&v30 + 1) = 0x100000000000003CLL;
  *&v31 = 0x8000000255D19090;
  BYTE8(v31) = 0;
  *&v32 = v18;
  *(&v32 + 1) = 0x1000000000000030;
  *&v33 = 0x8000000255D190D0;
  BYTE8(v33) = 0;
  *&v34 = v18;
  *(&v34 + 1) = KeyPath;
  v35 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF300);
  sub_255CC9448();
  v25 = v28;
  sub_255D06B98();
  v39[4] = v33;
  v39[5] = v34;
  v40 = v35;
  v39[0] = v29;
  v39[1] = v30;
  v39[2] = v31;
  v39[3] = v32;
  sub_255C76B94(v39, &qword_27F7DF300);
  sub_255CC952C(v25, v20);
  return (*(v10 + 56))(v20, 0, 1, v27);
}

uint64_t sub_255CC9344@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_255CC8D9C(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState);
  sub_255D05CA8();

  *a2 = *(v3 + 64);
  return result;
}

unint64_t sub_255CC9448()
{
  result = qword_27F7DF308;
  if (!qword_27F7DF308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF300);
    sub_255C810A8(&qword_27F7DF310, &qword_27F7DF318);
    sub_255C810A8(&qword_27F7DF320, &qword_27F7DF328);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF308);
  }

  return result;
}

uint64_t sub_255CC952C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF2F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_255CC95A0()
{
  result = qword_27F7DF330;
  if (!qword_27F7DF330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF338);
    sub_255CC9624();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF330);
  }

  return result;
}

unint64_t sub_255CC9624()
{
  result = qword_27F7DF340;
  if (!qword_27F7DF340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF2F8);
    sub_255CC9448();
    sub_255CC8D9C(&qword_27F7DEEA0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF340);
  }

  return result;
}

uint64_t sub_255CC970C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF348);
  v25 = *(v5 - 8);
  v26 = v5;
  MEMORY[0x28223BE20](v5);
  v24 = &v23 - v6;
  v7 = sub_255D063E8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);

  v11 = a1;
  if ((a2 & 1) == 0)
  {
    sub_255D07438();
    v12 = sub_255D066C8();
    sub_255D05D88();

    sub_255D063D8();
    swift_getAtKeyPath();

    (*(v8 + 8))(v10, v7);
    v11 = v40;
  }

  swift_getKeyPath();
  *&v40 = v11;
  sub_255CC8D9C(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState);
  sub_255D05CA8();

  v13 = *(v11 + 17);

  if (v13 != 1)
  {
    return (*(v25 + 56))(v27, 1, 1, v26);
  }

  v14 = a1;
  if ((a2 & 1) == 0)
  {
    sub_255D07438();
    v15 = sub_255D066C8();
    sub_255D05D88();

    sub_255D063D8();
    swift_getAtKeyPath();

    (*(v8 + 8))(v10, v7);
    v14 = v40;
  }

  swift_getKeyPath();
  *&v40 = v14;
  sub_255D05CA8();

  v16 = *(v14 + 24);
  v17 = *(v14 + 32);

  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {
    return (*(v25 + 56))(v27, 1, 1, v26);
  }

  v19 = sub_255D064C8();
  v31 = 0;
  sub_255CC9C2C(a1, a2 & 1, &v40);
  v34 = v42;
  v35 = v43;
  v36 = v44;
  v37 = v45;
  v32 = v40;
  v33 = v41;
  v39 = v45;
  v38[2] = v42;
  v38[3] = v43;
  v38[4] = v44;
  v38[0] = v40;
  v38[1] = v41;
  sub_255C7299C(&v32, &v28, &qword_27F7DF350);
  sub_255C76B94(v38, &qword_27F7DF350);
  *(&v30[2] + 7) = v34;
  *(&v30[3] + 7) = v35;
  *(&v30[4] + 7) = v36;
  *(&v30[5] + 7) = v37;
  *(v30 + 7) = v32;
  *(&v30[1] + 7) = v33;
  *(&v29[2] + 1) = v30[2];
  *(&v29[3] + 1) = v30[3];
  *(&v29[4] + 1) = v30[4];
  v29[5] = *(&v30[4] + 15);
  *(&v29[1] + 1) = v30[1];
  *&v28 = v19;
  *(&v28 + 1) = 0x3FF0000000000000;
  LOBYTE(v29[0]) = v31;
  *(v29 + 1) = v30[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF358);
  sub_255CCA3B0();
  v20 = v24;
  sub_255D06B98();
  v44 = v29[3];
  v45 = v29[4];
  v46 = v29[5];
  v40 = v28;
  v41 = v29[0];
  v42 = v29[1];
  v43 = v29[2];
  sub_255C76B94(&v40, &qword_27F7DF358);
  v21 = v27;
  sub_255CCA414(v20, v27);
  return (*(v25 + 56))(v21, 0, 1, v26);
}

uint64_t sub_255CC9C2C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF2D8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v28[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF368);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v28[-v10];
  v12 = SFIndiaBISRegulatoryImage();
  sub_255D06CC8();
  v13 = *MEMORY[0x277CE1020];
  v14 = sub_255D06D28();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v11, v13, v14);
  (*(v15 + 56))(v11, 0, 1, v14);
  v16 = sub_255D06D08();

  sub_255C76B94(v11, &qword_27F7DF368);
  sub_255CC9EF0(a1, a2 & 1, &v29);
  v17 = sub_255D06808();
  (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
  v18 = sub_255D06898();
  sub_255C76B94(v8, &qword_27F7DF2D8);
  KeyPath = swift_getKeyPath();
  v20 = v29;
  v21 = v29;
  v22 = v30;
  v33[0] = v29;
  v33[1] = v30;
  *(a3 + 24) = v30;
  v23 = v31;
  v24 = v32;
  v25 = v31;
  v26 = v32;
  *(a3 + 40) = v31;
  v33[2] = v23;
  v33[3] = v24;
  *(a3 + 56) = v24;
  *&v34 = KeyPath;
  *(&v34 + 1) = v18;
  *(a3 + 8) = v20;
  *(a3 + 72) = v34;
  *a3 = v16;
  v35[2] = v25;
  v35[3] = v26;
  v35[0] = v21;
  v35[1] = v22;
  v36 = KeyPath;
  v37 = v18;

  sub_255C7299C(v33, v28, &qword_27F7DF370);
  sub_255C76B94(v35, &qword_27F7DF370);
}

uint64_t sub_255CC9EF0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_255D063E8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277D84F90];
  if (a2)
  {
    v18 = a1;
  }

  else
  {

    sub_255D07438();
    v11 = sub_255D066C8();
    sub_255D05D88();

    sub_255D063D8();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v6);
    a1 = v18;
  }

  swift_getKeyPath();
  v16 = a1;
  sub_255CC8D9C(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState);
  sub_255D05CA8();

  v12 = *(a1 + 24);
  v13 = *(a1 + 32);

  LOBYTE(v16) = 0;
  v17 = 0;
  *a3 = v12;
  *(a3 + 8) = v13;
  *(a3 + 16) = 0;
  *(a3 + 24) = v10;
  *(a3 + 32) = xmmword_255D0F340;
  *(a3 + 48) = 0;
  *(a3 + 56) = v10;
  sub_255C8A25C(v12, v13, 0);

  sub_255C8A25C(0x2E7369622E777777, 0xEE006E692E766F67, 0);

  sub_255C8A038(0x2E7369622E777777, 0xEE006E692E766F67, 0);

  sub_255C8A038(v12, v13, 0);
}

uint64_t sub_255CCA184@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_255CC8D9C(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState);
  sub_255D05CA8();

  *a2 = *(v3 + 17);
  return result;
}

uint64_t sub_255CCA280@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_255CC8D9C(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState);
  sub_255D05CA8();

  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  a2[1] = v4;
}

uint64_t sub_255CCA330(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_255CD1658(v1, v2);
}

uint64_t sub_255CCA370(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_255CD1658(v1, v2);
}

unint64_t sub_255CCA3B0()
{
  result = qword_27F7DF360;
  if (!qword_27F7DF360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF358);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF360);
  }

  return result;
}

uint64_t sub_255CCA414(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF348);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_255CCA490()
{
  result = qword_27F7DF378;
  if (!qword_27F7DF378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF380);
    sub_255CCA514();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF378);
  }

  return result;
}

unint64_t sub_255CCA514()
{
  result = qword_27F7DF388;
  if (!qword_27F7DF388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF348);
    sub_255CCA3B0();
    sub_255CC8D9C(&qword_27F7DEEA0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF388);
  }

  return result;
}

uint64_t sub_255CCA5FC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF390);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF398);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v27 = &v25 - v11;
  v12 = sub_255D063E8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    sub_255D07438();
    v16 = sub_255D066C8();
    v26 = v8;
    v17 = v9;
    v18 = a3;
    v19 = v16;
    sub_255D05D88();

    a3 = v18;
    v9 = v17;
    v8 = v26;
    sub_255D063D8();
    swift_getAtKeyPath();

    (*(v13 + 8))(v15, v12);
    a1 = v28;
  }

  swift_getKeyPath();
  v28 = a1;
  sub_255CC8D9C(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState);
  sub_255D05CA8();

  v20 = *(a1 + 66);

  if (v20 == 1)
  {
    *v8 = sub_255D064C8();
    *(v8 + 1) = 0x3FF3333333333333;
    v8[16] = 0;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF3A0);
    sub_255CCA980(&v8[*(v21 + 44)]);
    sub_255CCAFA0();
    v22 = v27;
    sub_255D06B98();
    sub_255C76B94(v8, &qword_27F7DF390);
    sub_255CCB004(v22, a3);
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  return (*(v10 + 56))(a3, v23, 1, v9);
}
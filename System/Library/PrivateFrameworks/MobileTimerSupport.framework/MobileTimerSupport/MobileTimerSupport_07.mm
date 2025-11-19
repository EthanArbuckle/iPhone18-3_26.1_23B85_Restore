double sub_22D80243C(uint64_t a1)
{
  v2 = sub_22D81A918();
  v39 = *(v2 - 8);
  v40 = v2;
  v3 = *(v39 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22D81A8C8();
  v37 = *(v6 - 8);
  v7 = *(v37 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v35 - v11;
  v13 = sub_22D81AF68();
  v36 = *(v13 - 8);
  v14 = *(v36 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22D81AF78();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a1;
  sub_22D81AF88();
  v22 = (*(v18 + 88))(v21, v17);
  if (v22 == *MEMORY[0x277CB9A00])
  {
    (*(v18 + 8))(v21, v17);
    v23 = 1.79769313e308;
  }

  else if (v22 == *MEMORY[0x277CB9A10])
  {
    (*(v18 + 96))(v21, v17);
    v24 = v36;
    (*(v36 + 32))(v16, v21, v13);
    sub_22D81A7E8();
    sub_22D81A858();
    v26 = v25;
    v27 = *(v37 + 8);
    v27(v12, v6);
    sub_22D81AF58();
    sub_22D81A858();
    v29 = v28;
    v27(v10, v6);
    (*(v24 + 8))(v16, v13);
    v23 = v26 - v29;
  }

  else
  {
    (*(v18 + 8))(v21, v17);
    v23 = 0.0;
  }

  v30 = objc_opt_self();
  v41 = 0;
  v42 = 0xE000000000000000;
  sub_22D81B838();
  MEMORY[0x2318D1A50](0xD00000000000001DLL, 0x800000022D82B6F0);
  sub_22D81B5C8();
  MEMORY[0x2318D1A50](0xD000000000000017, 0x800000022D82C440);
  sub_22D81AF98();
  sub_22D80383C(&unk_280CD28F0, 255, MEMORY[0x277CC95F0]);
  v31 = v40;
  v32 = sub_22D81BAD8();
  MEMORY[0x2318D1A50](v32);

  (*(v39 + 8))(v5, v31);
  v33 = sub_22D81B2B8();

  [v30 logInfo_];

  return v23;
}

unint64_t sub_22D802910()
{
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03648, &qword_22D825560);
  v0 = *(v65 - 8);
  Kind = v0[4].Kind;
  MEMORY[0x28223BE20](v65);
  v64 = &v49 - v2;
  v63 = sub_22D81A918();
  v3 = *(v63 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v63);
  v62 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_22D81AFD8();
  v6 = *(v61 - 8);
  v7 = v6[8];
  MEMORY[0x28223BE20](v61);
  v60 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03998, &qword_22D826818);
  v9 = *(v57 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v57);
  v59 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v58 = &v49 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03358, &qword_22D824A70);
  result = sub_22D81AAC8();
  if (result >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((result & 0xFFFFFFFFFFFFFF8) + 0x10); i; result = v48)
  {
    v16 = result;
    v74 = MEMORY[0x277D84F90];
    result = sub_22D7E8AEC(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
      return result;
    }

    v17 = 0;
    v18 = v16;
    v56 = v16 & 0xC000000000000001;
    v19 = v74;
    v49 = v16 & 0xFFFFFFFFFFFFFF8;
    v53 = (v9 + 8);
    v52 = (v3 + 1);
    v51 = (v6 + 1);
    p_Description = &v0->Description;
    v55 = v16;
    v54 = i;
    while (1)
    {
      v66 = v19;
      if (v56)
      {
        MEMORY[0x2318D1F70](v17, v18);
        goto LABEL_10;
      }

      if ((v17 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v17 >= *(v49 + 16))
      {
        goto LABEL_18;
      }

      v20 = *(v18 + 8 * v17 + 32);
      sub_22D81A198();
LABEL_10:
      v21 = v58;
      sub_22D81AB08();
      v22 = v60;
      v23 = v57;
      sub_22D81ABF8();
      v24 = *v53;
      (*v53)(v21, v23);
      v25 = v62;
      sub_22D81AF98();
      v26 = sub_22D81A8D8();
      v28 = v27;
      (*v52)(v25, v63);
      (*v51)(v22, v61);
      v29 = v59;
      sub_22D81AB08();
      sub_22D81ABD8();
      v31 = v30;
      v24(v29, v23);
      v32 = v64;
      sub_22D81AAD8();
      v33 = v65;
      sub_22D81AE28();
      (*p_Description)(v32, v33);
      v34 = v71 != 3 && v70 == 0;
      v19 = v66;
      v0 = &type metadata for AlarmActivityProxy;
      v3 = &off_2840DAAC0;
      v72 = &type metadata for AlarmActivityProxy;
      v73 = &off_2840DAAC0;
      v35 = swift_allocObject();
      v70 = v35;

      *(v35 + 16) = v26;
      *(v35 + 24) = v28;
      *(v35 + 32) = v31;
      *(v35 + 40) = v34;
      v74 = v19;
      v37 = *(v19 + 16);
      v36 = *(v19 + 24);
      v9 = v37 + 1;
      if (v37 >= v36 >> 1)
      {
        sub_22D7E8AEC((v36 > 1), v37 + 1, 1);
        v19 = v74;
      }

      ++v17;
      v38 = v72;
      v39 = __swift_mutable_project_boxed_opaque_existential_1(&v70, v72);
      v6 = &v49;
      v40 = *(v38[-1].Description + 8);
      MEMORY[0x28223BE20](v39);
      v42 = &v49 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v43 + 16))(v42);
      v44 = *v42;
      v45 = *(v42 + 1);
      v46 = *(v42 + 2);
      LOBYTE(v42) = v42[24];
      v68 = &type metadata for AlarmActivityProxy;
      v69 = &off_2840DAAC0;
      v47 = swift_allocObject();
      *&v67 = v47;
      *(v47 + 16) = v44;
      *(v47 + 24) = v45;
      *(v47 + 32) = v46;
      *(v47 + 40) = v42;
      *(v19 + 16) = v9;
      sub_22D749DBC(&v67, v19 + 40 * v37 + 32);
      result = __swift_destroy_boxed_opaque_existential_0(&v70);
      v18 = v55;
      if (v54 == v17)
      {

        return v19;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    v48 = result;
    i = sub_22D81B938();
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_22D802FB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22D744B08;

  return sub_22D7F4734(a1, v4, v5, v6);
}

uint64_t sub_22D803064(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_22D81AFD8() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03368, &qword_22D824BF0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = v1[5];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_22D744B08;

  return sub_22D7F42E0(a1, v10, v11, v12, v13, v1 + v6, v1 + v9);
}

BOOL sub_22D8031D4(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(__swift_project_boxed_opaque_existential_0(a1, a1[3]) + 2);
  return v3 < *(__swift_project_boxed_opaque_existential_0(v2, v2[3]) + 2);
}

uint64_t sub_22D80322C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

unint64_t sub_22D803240()
{
  result = qword_27DA039C8;
  if (!qword_27DA039C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA039C8);
  }

  return result;
}

uint64_t sub_22D803294(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22D744B08;

  return sub_22D7F4E6C(a1, v4, v5, v6);
}

uint64_t sub_22D803348(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03368, &qword_22D824BF0) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22D744B08;

  return sub_22D7FEEE0(a1, v6, v7, v8, v9, v1 + 6, v1 + v5);
}

uint64_t sub_22D803468(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22D8034C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22D744B0C;

  return sub_22D7F4AD0(a1, v4, v5, v6);
}

uint64_t objectdestroy_274Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03368, &qword_22D824BF0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  v7 = *(v0 + 40);

  v8 = sub_22D81AC68();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3, 1, v8))
  {
    (*(v9 + 8))(v0 + v3, v8);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_22D8036B4(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03368, &qword_22D824BF0) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22D744B08;

  return sub_22D7FEBF0(a1, v6, v7, v8, v9, v1 + 6, v1 + v5);
}

uint64_t sub_22D8037D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22D80383C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_22D8038C4()
{
  sub_22D81BBC8();
  sub_22D81B328();

  return sub_22D81BC18();
}

uint64_t sub_22D8039D8(uint64_t a1, char a2)
{
  sub_22D81BBC8();
  MEMORY[0x2318D2310](qword_22D826B58[a2]);
  return sub_22D81BC18();
}

uint64_t sub_22D803A28(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 32); ; ++i)
    {
      v7 = *i;
      swift_unknownObjectRetain();
      v5(&v7);
      if (v3)
      {
        break;
      }

      result = swift_unknownObjectRelease();
      if (!--v4)
      {
        return result;
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_22D803AC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_22D80BDE8(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = sub_22D807780(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_22D80CD58();
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);

      result = sub_22D80BA94(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_22D803BB8(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02970, &qword_22D821D10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02968, &qword_22D821D08);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_22D764440(a1, &qword_27DA02970, &qword_22D821D10);
    sub_22D79D204(a2, v8);
    v14 = sub_22D81A918();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_22D764440(v8, &qword_27DA02970, &qword_22D821D10);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_22D80C618(v13, a2, isUniquelyReferenced_nonNull_native, &qword_27DA02968, &qword_22D821D08, &qword_27DA03A38, &qword_22D826B40);
    v18 = sub_22D81A918();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_22D803E0C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02910, &unk_22D821C98);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA028D0, &qword_22D821C48);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_22D764440(a1, &qword_27DA02910, &unk_22D821C98);
    sub_22D79D240(a2, v8);
    v14 = sub_22D81A918();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_22D764440(v8, &qword_27DA02910, &unk_22D821C98);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_22D80C618(v13, a2, isUniquelyReferenced_nonNull_native, &qword_27DA028D0, &qword_22D821C48, &qword_27DA03A28, &unk_22D826B20);
    v18 = sub_22D81A918();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_22D804060(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02908, &qword_22D821C90);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02900, &qword_22D821C88);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_22D764440(a1, &qword_27DA02908, &qword_22D821C90);
    sub_22D79D27C(a2, v8);
    v14 = sub_22D81A918();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_22D764440(v8, &qword_27DA02908, &qword_22D821C90);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_22D80C618(v13, a2, isUniquelyReferenced_nonNull_native, &qword_27DA02900, &qword_22D821C88, &qword_27DA03A10, &unk_22D826AF0);
    v18 = sub_22D81A918();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_22D8042B4(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - v8;
  v10 = sub_22D81A8C8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_22D764440(a1, &qword_27DA02000, &qword_22D81F160);
    v15 = *v3;
    v16 = sub_22D807A48(a2);
    if (v17)
    {
      v18 = v16;
      v19 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v3;
      v26 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_22D80D34C();
        v21 = v26;
      }

      (*(v11 + 32))(v9, *(v21 + 56) + *(v11 + 72) * v18, v10);
      sub_22D80B8A8(v18, v21);
      *v3 = v21;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_22D764440(v9, &qword_27DA02000, &qword_22D81F160);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    v22 = *v3;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    result = sub_22D80C4B0(v14, a2, v23);
    *v3 = v26;
  }

  return result;
}

uint64_t sub_22D804504(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA028C0, &unk_22D821C30);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA028B0, &unk_22D821C18);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_22D764440(a1, &qword_27DA028C0, &unk_22D821C30);
    sub_22D79D2B8(a2, v8);
    v14 = sub_22D81A918();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_22D764440(v8, &qword_27DA028C0, &unk_22D821C30);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_22D80C618(v13, a2, isUniquelyReferenced_nonNull_native, &qword_27DA028B0, &unk_22D821C18, &qword_27DA039E8, &unk_22D826AA0);
    v18 = sub_22D81A918();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_22D804758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_22D80C83C(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    v12 = sub_22D807780(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_22D80DBDC(&qword_27DA039E0, &unk_22D826A90);
        v16 = v19;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      result = sub_22D80BA94(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_22D804860(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_22D80C9D8(a1, a2, isUniquelyReferenced_nonNull_native);
    result = sub_22D7644A0(a2);
    *v2 = v17;
  }

  else
  {
    v9 = *v2;
    v10 = sub_22D80773C(a2);
    if (v11)
    {
      v12 = v10;
      v13 = *v3;
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v3;
      v18 = *v3;
      if (!v14)
      {
        sub_22D80DD38();
        v15 = v18;
      }

      sub_22D7644A0(*(v15 + 48) + 40 * v12);
      v16 = *(*(v15 + 56) + 8 * v12);

      sub_22D80BC44(v12, v15);
      result = sub_22D7644A0(a2);
      *v3 = v15;
    }

    else
    {

      return sub_22D7644A0(a2);
    }
  }

  return result;
}

uint64_t ObservableStore.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x277D84F98];
  return result;
}

uint64_t ObservableStore.init()()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x277D84F98];
  return result;
}

void sub_22D8049AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  v7 = *(v3 + 16);
  if (*(v7 + 16))
  {
    sub_22D81A398();
    v8 = sub_22D80773C(a3);
    if (v9)
    {
      v39 = a3;
      v40 = v4;
      v10 = *(*(v7 + 56) + 8 * v8);
      sub_22D81A398();

      v11 = v10[2];
      sub_22D81A398();
      v41 = v11;
      if (v11)
      {
        v12 = 0;
        v13 = v10 + 5;
        while (v12 < v10[2])
        {
          if (*(v13 - 1))
          {
            v14 = *v13;
            v15 = *(v13 - 1);
            ObjectType = swift_getObjectType();
            v17 = *(v14 + 8);
            v18 = a1;
            v19 = *(v17 + 8);
            swift_unknownObjectRetain();
            v20 = v19(ObjectType, v17);
            a1 = v18;
            v21 = v20;
            v23 = v22;
            v24 = swift_getObjectType();
            if (v21 == (*(*(a2 + 8) + 8))(v24) && v23 == v25)
            {

              swift_unknownObjectRelease();
LABEL_22:

              v37 = objc_opt_self();
              v38 = sub_22D81B2B8();
              [v37 logInfo_];

              return;
            }

            v27 = sub_22D81BB08();

            swift_unknownObjectRelease();

            if (v27)
            {
              goto LABEL_22;
            }
          }

          ++v12;
          v13 += 2;
          if (v41 == v12)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_16:

        swift_unknownObjectRetain();
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_17:
          v34 = v10[2];
          v33 = v10[3];
          if (v34 >= v33 >> 1)
          {
            v10 = sub_22D7ED8F8((v33 > 1), v34 + 1, 1, v10);
          }

          v10[2] = v34 + 1;
          v35 = &v10[2 * v34];
          v35[4] = a1;
          v35[5] = a2;
          v4 = v40;
          swift_beginAccess();
          v36 = *(v40 + 16);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v43 = *(v40 + 16);
          *(v40 + 16) = 0x8000000000000000;
          v31 = v10;
          v32 = v39;
          goto LABEL_20;
        }
      }

      v10 = sub_22D7ED8F8(0, v10[2] + 1, 1, v10);
      goto LABEL_17;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03940, &unk_22D826110);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_22D81DF60;
  *(v28 + 32) = a1;
  *(v28 + 40) = a2;
  swift_beginAccess();
  swift_unknownObjectRetain();
  v29 = *(v4 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v43 = *(v4 + 16);
  *(v4 + 16) = 0x8000000000000000;
  v31 = v28;
  v32 = a3;
LABEL_20:
  sub_22D80C9D8(v31, v32, isUniquelyReferenced_nonNull_native);
  *(v4 + 16) = v43;
  swift_endAccess();
}

uint64_t sub_22D804D34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  result = swift_beginAccess();
  v9 = *(v3 + 16);
  if (!*(v9 + 16))
  {
    return result;
  }

  sub_22D81A398();
  v10 = sub_22D80773C(a3);
  if ((v11 & 1) == 0)
  {
  }

  v12 = *(*(v9 + 56) + 8 * v10);
  sub_22D81A398();

  v21 = v12;
  swift_unknownObjectRetain();
  v13 = sub_22D80E1A0(&v21, a1, a2);
  result = swift_unknownObjectRelease();
  v14 = v21;
  v15 = v21[2];
  if (v13 > v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v13 < 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (__OFADD__(v15, v13 - v15))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v13 > v14[3] >> 1)
  {
    if (v15 <= v13)
    {
      v17 = v13;
    }

    else
    {
      v17 = v15;
    }

    v14 = sub_22D7ED8F8(isUniquelyReferenced_nonNull_native, v17, 1, v14);
    v21 = v14;
  }

  sub_22D80E410(v13, v15, 0);
  swift_beginAccess();
  v18 = *(v4 + 16);
  v19 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *(v4 + 16);
  *(v4 + 16) = 0x8000000000000000;
  sub_22D80C9D8(v14, a3, v19);
  *(v4 + 16) = v20;
  return swift_endAccess();
}

uint64_t ObservableStore.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t ObservableStore.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t DataStore.id.getter()
{
  v0 = sub_22D80E4E0();
  sub_22D81A398();
  return v0;
}

uint64_t sub_22D804F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(v3 + 40);
  sub_22D80E4E8(a3, v14);
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;
  v9 = v14[1];
  *(v8 + 40) = v14[0];
  *(v8 + 56) = v9;
  *(v8 + 72) = v15;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_22D80E544;
  *(v10 + 24) = v8;
  aBlock[4] = sub_22D7A8878;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D75BA3C;
  aBlock[3] = &block_descriptor_15;
  v11 = _Block_copy(aBlock);
  sub_22D81A198();
  swift_unknownObjectRetain();
  sub_22D81A198();

  dispatch_sync(v7, v11);
  _Block_release(v11);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22D8050E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(v3 + 40);
  sub_22D80E4E8(a3, v14);
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;
  v9 = v14[1];
  *(v8 + 40) = v14[0];
  *(v8 + 56) = v9;
  *(v8 + 72) = v15;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_22D80E5DC;
  *(v10 + 24) = v8;
  aBlock[4] = sub_22D7A9650;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D75BA3C;
  aBlock[3] = &block_descriptor_13;
  v11 = _Block_copy(aBlock);
  sub_22D81A198();
  swift_unknownObjectRetain();
  sub_22D81A198();

  dispatch_sync(v7, v11);
  _Block_release(v11);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22D805274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  v9 = *(a1 + 56);
  sub_22D81A198();
  a5(a2, a3, a4);
}

uint64_t DataStore.__allocating_init(identifier:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  DataStore.init(identifier:)(a1, a2);
  return v4;
}

uint64_t *DataStore.init(identifier:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = sub_22D81B668();
  v8 = *(v7 - 8);
  v33 = v7;
  v34 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v32 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22D81B628();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v13 = sub_22D81B108();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = *(v6 + 80);
  v3[2] = sub_22D81B138();
  type metadata accessor for ObservableStore();
  v16 = swift_allocObject();
  *(v16 + 16) = MEMORY[0x277D84F98];
  v3[7] = v16;
  v3[3] = a1;
  v3[4] = a2;
  v31 = sub_22D7D281C();
  v35 = 0;
  v36 = 0xE000000000000000;
  sub_22D81B838();

  v35 = 0xD000000000000025;
  v36 = 0x800000022D82C710;
  v17 = v3[3];
  v18 = v3[4];
  sub_22D81A398();
  MEMORY[0x2318D1A50](v17, v18);

  sub_22D81B0E8();
  v35 = MEMORY[0x277D84F90];
  v29 = sub_22D80EBD8(&unk_280CD2D70, MEMORY[0x277D85230]);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02FE0, &unk_22D81F120);
  v30 = sub_22D80EA34(&qword_280CD2D90, &qword_27DA02FE0, &unk_22D81F120);
  sub_22D81B788();
  v27 = *MEMORY[0x277D85260];
  v19 = v33;
  v20 = *(v34 + 104);
  v34 += 104;
  v26 = v20;
  v21 = v32;
  v20(v32);
  v3[5] = sub_22D81B6A8();
  v35 = 0;
  v36 = 0xE000000000000000;
  sub_22D81B838();

  v35 = 0xD000000000000029;
  v36 = 0x800000022D82C740;
  v22 = v3[3];
  v23 = v3[4];
  sub_22D81A398();
  MEMORY[0x2318D1A50](v22, v23);

  sub_22D81B0E8();
  v35 = MEMORY[0x277D84F90];
  sub_22D81B788();
  v26(v21, v27, v19);
  v3[6] = sub_22D81B6A8();
  return v3;
}

uint64_t sub_22D805734(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = aBlock - v6;
  v8 = v1[5];
  (*(v4 + 16))(aBlock - v6);
  v9 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v10 = swift_allocObject();
  *(v10 + 2) = v3;
  *(v10 + 3) = *(v2 + 88);
  *(v10 + 4) = v1;
  (*(v4 + 32))(&v10[v9], v7, v3);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_22D80E638;
  *(v11 + 24) = v10;
  aBlock[4] = sub_22D7A9650;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D75BA3C;
  aBlock[3] = &block_descriptor_23;
  v12 = _Block_copy(aBlock);
  sub_22D81A198();
  sub_22D81A198();

  dispatch_sync(v8, v12);
  _Block_release(v12);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22D805970(void *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(*a1 + 80);
  v6 = sub_22D81B718();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v38 - v8;
  v10 = *(*(v4 + 88) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v39 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v38 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v38 - v19;
  sub_22D81B848();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_22D81B988();
  v42 = *(v12 + 8);
  v42(v20, AssociatedTypeWitness);
  v21 = *(v5 - 8);
  (*(v21 + 16))(v9, a2, v5);
  (*(v21 + 56))(v9, 0, 1, v5);
  swift_beginAccess();
  sub_22D81B198();
  sub_22D81B1B8();
  swift_endAccess();
  v46 = 0;
  v47 = 0xE000000000000000;
  sub_22D81B838();
  v43 = v46;
  v44 = v47;
  MEMORY[0x2318D1A50](0x20676E6961647075, 0xEE00207972746E65);
  sub_22D81BAF8();
  MEMORY[0x2318D1A50](0x76726573626F202CLL, 0xED0000203A737265);
  v40 = a1;
  v22 = a1[7];
  sub_22D81A198();
  sub_22D81B848();
  sub_22D81B988();
  v23 = AssociatedTypeWitness;
  v42(v18, AssociatedTypeWitness);
  swift_beginAccess();
  v24 = *(v22 + 16);
  sub_22D81A398();

  if (*(v24 + 16) && (v25 = sub_22D80773C(&v46), (v26 & 1) != 0))
  {
    v27 = *(*(v24 + 56) + 8 * v25);
    sub_22D81A398();
    sub_22D7644A0(&v46);
  }

  else
  {

    sub_22D7644A0(&v46);
    v27 = 0;
  }

  v28 = objc_opt_self();
  v45 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03A00, &unk_22D826AC0);
  sub_22D81B908();

  v29 = sub_22D81B2B8();

  [v28 logInfo_];

  v30 = v40[7];
  sub_22D81A198();
  v31 = v39;
  sub_22D81B848();
  sub_22D81B988();
  v42(v31, v23);
  swift_beginAccess();
  v32 = *(v30 + 16);
  sub_22D81A398();

  if (*(v32 + 16) && (v33 = sub_22D80773C(&v46), (v34 & 1) != 0))
  {
    v35 = *(*(v32 + 56) + 8 * v33);
    sub_22D81A398();

    MEMORY[0x28223BE20](v36);
    *(&v38 - 2) = v40;
    *(&v38 - 1) = a2;
    sub_22D803A28(sub_22D80EA88, (&v38 - 4), v35);
  }

  else
  {
  }

  return sub_22D7644A0(&v46);
}

uint64_t sub_22D805EF8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v36 = a3;
  v5 = *a2;
  v6 = *a2;
  v7 = sub_22D81B0C8();
  v38 = *(v7 - 8);
  v8 = *(v38 + 64);
  MEMORY[0x28223BE20](v7);
  v37 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22D81B108();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v13 = *(v5 + 80);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  result = MEMORY[0x28223BE20](v12);
  v20 = v33 - v19;
  v21 = *a1;
  if (*a1)
  {
    v34 = v7;
    v35 = result;
    v22 = v6;
    v23 = a1[1];
    v24 = a2[6];
    v33[0] = v18;
    v33[1] = v24;
    v25 = *(v14 + 16);
    v26 = v36;
    v36 = v17;
    v25(v20, v26, v13);
    v27 = (*(v14 + 80) + 48) & ~*(v14 + 80);
    v28 = swift_allocObject();
    *(v28 + 2) = v13;
    *(v28 + 3) = *(v22 + 88);
    *(v28 + 4) = v21;
    *(v28 + 5) = v23;
    (*(v14 + 32))(&v28[v27], v20, v13);
    aBlock[4] = sub_22D80EB60;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22D776B08;
    aBlock[3] = &block_descriptor_50;
    v29 = _Block_copy(aBlock);
    swift_unknownObjectRetain_n();
    v30 = v33[0];
    sub_22D81B0E8();
    aBlock[7] = MEMORY[0x277D84F90];
    sub_22D80EBD8(&qword_280CD29A0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA023A8, &qword_22D820A28);
    sub_22D80EA34(&qword_280CD2990, &unk_27DA023A8, &qword_22D820A28);
    v31 = v37;
    v32 = v34;
    sub_22D81B788();
    MEMORY[0x2318D1DA0](0, v30, v31, v29);
    _Block_release(v29);
    swift_unknownObjectRelease();
    (*(v38 + 8))(v31, v32);
    (*(v36 + 8))(v30, v35);
  }

  return result;
}

uint64_t sub_22D8062FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v12[3] = a4;
  v12[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a3, a4);
  (*(a2 + 16))(v12, ObjectType, a2);
  return __swift_destroy_boxed_opaque_existential_0(v12);
}

uint64_t sub_22D8063B4()
{
  v1 = *v0;
  v2 = objc_opt_self();
  sub_22D81B838();

  v3 = sub_22D81B7B8();
  MEMORY[0x2318D1A50](v3);

  v4 = sub_22D81B2B8();

  [v2 logInfo_];

  v5 = v0[5];
  v6 = *(v1 + 80);
  sub_22D81B718();
  return sub_22D81B688();
}

uint64_t sub_22D8064E0(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = a1[2];
  v4 = *(v2 + 80);
  sub_22D81A398();
  sub_22D81B1A8();
}

uint64_t sub_22D806588()
{
  v1 = *v0;
  v2 = v0[5];
  v3 = *(v1 + 80);
  sub_22D81B718();
  return sub_22D81B688();
}

uint64_t sub_22D806604@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*a1 + 80);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = sub_22D81B718();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v13 - v9;
  swift_beginAccess();
  v13[5] = a1[2];
  sub_22D81B198();
  swift_getWitnessTable();
  sub_22D81B5E8();
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v10, 1, TupleTypeMetadata2) == 1)
  {
    (*(v7 + 8))(v10, v6);
    return (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  }

  else
  {
    v12 = *(v4 - 8);
    (*(v12 + 32))(a2, &v10[*(TupleTypeMetadata2 + 48)], v4);
    (*(v12 + 56))(a2, 0, 1, v4);
    return sub_22D7644A0(v10);
  }
}

uint64_t sub_22D806890(uint64_t a1)
{
  v2 = v1;
  v4 = objc_opt_self();
  sub_22D81B838();

  aBlock = 0xD000000000000014;
  v14 = 0x800000022D82C790;
  v5 = sub_22D81B7B8();
  MEMORY[0x2318D1A50](v5);

  v6 = sub_22D81B2B8();

  [v4 logInfo_];

  v7 = *(v1 + 40);
  sub_22D80E4E8(a1, v19);
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  v9 = v19[1];
  *(v8 + 24) = v19[0];
  *(v8 + 40) = v9;
  *(v8 + 56) = v20;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_22D80E6AC;
  *(v10 + 24) = v8;
  v17 = sub_22D7A9650;
  v18 = v10;
  aBlock = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_22D75BA3C;
  v16 = &block_descriptor_33;
  v11 = _Block_copy(&aBlock);
  sub_22D81A198();
  sub_22D81A198();

  dispatch_sync(v7, v11);
  _Block_release(v11);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22D806AA0(void *a1, uint64_t a2)
{
  v4 = *(*a1 + 80);
  v5 = sub_22D81B718();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v24 - v11;
  swift_beginAccess();
  v13 = a1[2];
  sub_22D81A398();
  sub_22D81B1A8();

  sub_22D80E4E8(a2, v25);
  (*(*(v4 - 8) + 56))(v10, 1, 1, v4);
  swift_beginAccess();
  sub_22D81B198();
  sub_22D81B1B8();
  swift_endAccess();
  v14 = a1[7];
  swift_beginAccess();
  v15 = *(v14 + 16);
  if (*(v15 + 16))
  {
    sub_22D81A398();
    v16 = sub_22D80773C(a2);
    if (v17)
    {
      v18 = *(*(v15 + 56) + 8 * v16);
      sub_22D81A398();
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  v19 = a1[7];
  sub_22D80E4E8(a2, v25);
  swift_beginAccess();
  sub_22D81A198();
  sub_22D804860(0, v25);
  swift_endAccess();

  v20 = objc_opt_self();
  v25[0] = 0;
  v25[1] = 0xE000000000000000;
  sub_22D81B838();
  MEMORY[0x2318D1A50](0x676E697261656C63, 0xEF207972746E6520);
  sub_22D81BAF8();
  MEMORY[0x2318D1A50](0x76726573626F202CLL, 0xED0000203A737265);
  v24[2] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03A00, &unk_22D826AC0);
  sub_22D81B908();
  v21 = sub_22D81B2B8();

  [v20 logInfo_];

  if (v18)
  {
    MEMORY[0x28223BE20](v22);
    v24[-2] = v12;
    v24[-1] = a1;
    sub_22D803A28(sub_22D80EA00, &v24[-4], v18);
  }

  return (*(v6 + 8))(v12, v5);
}

uint64_t sub_22D806E7C(uint64_t *a1, uint64_t a2, char *a3)
{
  v42 = *a3;
  v6 = v42;
  v7 = sub_22D81B0C8();
  v47 = *(v7 - 8);
  v48 = v7;
  v8 = *(v47 + 64);
  MEMORY[0x28223BE20](v7);
  v45 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_22D81B108();
  v44 = *(v46 - 8);
  v10 = *(v44 + 64);
  MEMORY[0x28223BE20](v46);
  v43 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a3;
  v12 = *(v6 + 80);
  v13 = sub_22D81B718();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v38 - v17;
  v19 = *(v12 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v16);
  v40 = v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = v38 - v22;
  v24 = a1[1];
  v49 = *a1;
  v39 = v24;
  (*(v14 + 16))(v18, a2, v13);
  v25 = v19;
  v26 = v12;
  if ((*(v19 + 48))(v18, 1, v12) == 1)
  {
    return (*(v14 + 8))(v18, v13);
  }

  v28 = *(v19 + 32);
  v28(v23, v18, v12);
  if (!v49)
  {
    return (*(v25 + 8))(v23, v12);
  }

  v29 = v40;
  v38[1] = *(v41 + 6);
  (*(v25 + 16))(v40, v23, v26);
  v30 = (*(v25 + 80) + 48) & ~*(v25 + 80);
  v31 = swift_allocObject();
  v41 = v23;
  v32 = v31;
  v31[2] = v26;
  v33 = v49;
  v31[3] = *(v42 + 88);
  v31[4] = v33;
  v31[5] = v39;
  v28(v31 + v30, v29, v26);
  aBlock[4] = sub_22D80EA1C;
  aBlock[5] = v32;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D776B08;
  aBlock[3] = &block_descriptor_44;
  v34 = _Block_copy(aBlock);
  swift_unknownObjectRetain_n();
  v35 = v43;
  sub_22D81B0E8();
  aBlock[7] = MEMORY[0x277D84F90];
  sub_22D80EBD8(&qword_280CD29A0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA023A8, &qword_22D820A28);
  sub_22D80EA34(&qword_280CD2990, &unk_27DA023A8, &qword_22D820A28);
  v36 = v45;
  v37 = v48;
  sub_22D81B788();
  MEMORY[0x2318D1DA0](0, v35, v36, v34);
  _Block_release(v34);
  swift_unknownObjectRelease();
  (*(v47 + 8))(v36, v37);
  (*(v44 + 8))(v35, v46);
  (*(v25 + 8))(v41, v26);
}

uint64_t sub_22D8073F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v12[3] = a4;
  v12[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a3, a4);
  (*(a2 + 24))(v12, ObjectType, a2);
  return __swift_destroy_boxed_opaque_existential_0(v12);
}

uint64_t sub_22D8074B0()
{
  v1 = v0;
  v2 = *v0;
  v3 = objc_opt_self();
  v4 = sub_22D81B2B8();
  [v3 logInfo_];

  swift_beginAccess();
  v5 = *(v2 + 80);
  v7 = v1[2];
  sub_22D81B188();
  sub_22D81A398();
  swift_getWitnessTable();
  sub_22D81B3C8();
}

uint64_t DataStore.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  return v0;
}

uint64_t DataStore.__deallocating_deinit()
{
  DataStore.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_22D807644@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  *a1 = sub_22D80E4E0();
  a1[1] = v4;

  return sub_22D81A398();
}

unint64_t sub_22D807684(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_22D81BBC8();
  sub_22D81B328();

  v4 = sub_22D81BC18();

  return sub_22D807EA0(a1, v4);
}

unint64_t sub_22D80773C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_22D81B7C8();

  return sub_22D808010(a1, v5);
}

unint64_t sub_22D807780(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_22D81BBC8();
  sub_22D81B328();
  v6 = sub_22D81BC18();

  return sub_22D8080D8(a1, a2, v6);
}

unint64_t sub_22D8077F8(char a1)
{
  v3 = *(v1 + 40);
  sub_22D81BBC8();
  sub_22D77DBD0(a1);
  sub_22D81B328();

  v4 = sub_22D81BC18();

  return sub_22D808190(a1, v4);
}

unint64_t sub_22D807880(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  v4 = sub_22D8038C4();

  return sub_22D8087E4(a1, v4);
}

unint64_t sub_22D8078C4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_22D81A918();
  v5 = MEMORY[0x277CC95F0];
  sub_22D80EBD8(&qword_27DA02650, MEMORY[0x277CC95F0]);
  v6 = sub_22D81B1C8();
  return sub_22D808F24(a1, v6, MEMORY[0x277CC95F0], &qword_27DA02730, v5, MEMORY[0x277CC9610]);
}

unint64_t sub_22D807998(char a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_22D81BBC8();
  sub_22D81B328();

  v5 = sub_22D81BC18();

  return sub_22D808A48(a1 & 1, v5);
}

unint64_t sub_22D807A48(char a1)
{
  v3 = *(v1 + 40);
  sub_22D81BBC8();
  MEMORY[0x2318D2310](qword_22D826B58[a1]);
  v4 = sub_22D81BC18();

  return sub_22D808B8C(a1, v4);
}

unint64_t sub_22D807AC0(double *a1)
{
  v3 = *(v1 + 40);
  sub_22D81BBC8();
  v4 = *a1;
  if (*a1 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x2318D2310](*&v4);
  v5 = *(type metadata accessor for TextClockDescriptor(0) + 20);
  sub_22D81AAB8();
  sub_22D80EBD8(&unk_27DA02BB0, MEMORY[0x277CC9A70]);
  sub_22D81B1D8();
  v6 = sub_22D81BC18();

  return sub_22D808C1C(a1, v6);
}

unint64_t sub_22D807B9C(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_22D81BBC8();
  sub_22D81B328();

  v4 = sub_22D81BC18();

  return sub_22D808D8C(a1, v4);
}

unint64_t sub_22D807C7C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_22D81ABA8();
  v5 = MEMORY[0x277CB9500];
  sub_22D80EBD8(&qword_280CD28E8, MEMORY[0x277CB9500]);
  v6 = sub_22D81B1C8();
  return sub_22D808F24(a1, v6, MEMORY[0x277CB9500], &qword_280CD28E0, v5, MEMORY[0x277CB9518]);
}

unint64_t sub_22D807D50(char a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_22D81BBC8();
  sub_22D81B328();

  v5 = sub_22D81BC18();

  return sub_22D8090C4(a1 & 1, v5);
}

unint64_t sub_22D807E04(char a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_22D81BBC8();
  sub_22D81B328();

  v5 = sub_22D81BC18();

  return sub_22D80921C(a1 & 1, v5);
}

unint64_t sub_22D807EA0(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        v7 = 0xE600000000000000;
        if (*(*(v2 + 48) + v4) == 1)
        {
          v8 = 0x70696B736E75;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v8 = 0x656C67676F74;
          v9 = a1;
          if (!a1)
          {
LABEL_14:
            v11 = 0xE400000000000000;
            if (v8 != 1885956979)
            {
              goto LABEL_16;
            }

            goto LABEL_15;
          }
        }
      }

      else
      {
        v7 = 0xE400000000000000;
        v8 = 1885956979;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_14;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x70696B736E75;
      }

      else
      {
        v10 = 0x656C67676F74;
      }

      v11 = 0xE600000000000000;
      if (v8 != v10)
      {
        goto LABEL_16;
      }

LABEL_15:
      if (v7 == v11)
      {

        return v4;
      }

LABEL_16:
      v12 = sub_22D81BB08();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_22D808010(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_22D80E4E8(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x2318D1EE0](v9, a1);
      sub_22D7644A0(v9);
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

unint64_t sub_22D8080D8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_22D81BB08())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_22D808190(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE700000000000000;
      v8 = 0x64496D72616C61;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD000000000000012;
          v7 = 0x800000022D827FD0;
          break;
        case 2:
          v8 = 0xD000000000000013;
          v7 = 0x800000022D827FF0;
          break;
        case 3:
          v7 = 0xE900000000000065;
          v8 = 0x7461446465726966;
          break;
        case 4:
          v8 = 0xD000000000000019;
          v7 = 0x800000022D828010;
          break;
        case 5:
          v8 = 0xD000000000000019;
          v7 = 0x800000022D828030;
          break;
        case 6:
          v8 = 0xD000000000000014;
          v7 = 0x800000022D828050;
          break;
        case 7:
          v8 = 0x697463416576696CLL;
          v7 = 0xEE00644979746976;
          break;
        case 8:
          v8 = 0xD000000000000015;
          v7 = 0x800000022D828080;
          break;
        case 9:
          v8 = 0xD000000000000017;
          v7 = 0x800000022D8280A0;
          break;
        case 0xA:
          v8 = 0xD00000000000001ALL;
          v7 = 0x800000022D8280C0;
          break;
        case 0xB:
          v8 = 0xD000000000000013;
          v7 = 0x800000022D8280E0;
          break;
        case 0xC:
          v8 = 0xD000000000000015;
          v7 = 0x800000022D828100;
          break;
        case 0xD:
          v8 = 0x6E656449656E6F74;
          v7 = 0xEE00726569666974;
          break;
        case 0xE:
          v8 = 0x616C50646E756F73;
          v7 = 0xEF65746144646579;
          break;
        case 0xF:
          v8 = 0xD000000000000010;
          v7 = 0x800000022D828140;
          break;
        case 0x10:
          v8 = 0x657373696D736964;
          v7 = 0xED00006574614464;
          break;
        case 0x11:
          v8 = 0x7065656C537369;
          break;
        case 0x12:
          v7 = 0xEA00000000006564;
          v8 = 0x69727265764F7369;
          break;
        case 0x13:
          v7 = 0xE800000000000000;
          v8 = 0x746E656C69537369;
          break;
        case 0x14:
          v8 = 0x616964654D7369;
          break;
        case 0x15:
          v8 = 0x744164656B636F6CLL;
          v7 = 0xEC00000065726946;
          break;
        case 0x16:
          v7 = 0xE800000000000000;
          v8 = 0x736E7265636E6F63;
          break;
        default:
          break;
      }

      v9 = 0xE700000000000000;
      v10 = 0x64496D72616C61;
      switch(a1)
      {
        case 1:
          v9 = 0x800000022D827FD0;
          if (v8 == 0xD000000000000012)
          {
            goto LABEL_69;
          }

          goto LABEL_70;
        case 2:
          v9 = 0x800000022D827FF0;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 3:
          v9 = 0xE900000000000065;
          if (v8 != 0x7461446465726966)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 4:
          v9 = 0x800000022D828010;
          if (v8 != 0xD000000000000019)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 5:
          v9 = 0x800000022D828030;
          if (v8 != 0xD000000000000019)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 6:
          v9 = 0x800000022D828050;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 7:
          v11 = 0x697463416576696CLL;
          v12 = 0x644979746976;
          goto LABEL_57;
        case 8:
          v9 = 0x800000022D828080;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 9:
          v9 = 0x800000022D8280A0;
          if (v8 != 0xD000000000000017)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 10:
          v9 = 0x800000022D8280C0;
          if (v8 != 0xD00000000000001ALL)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 11:
          v9 = 0x800000022D8280E0;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 12:
          v9 = 0x800000022D828100;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 13:
          v11 = 0x6E656449656E6F74;
          v12 = 0x726569666974;
LABEL_57:
          v9 = v12 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          if (v8 != v11)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 14:
          v9 = 0xEF65746144646579;
          if (v8 != 0x616C50646E756F73)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 15:
          v9 = 0x800000022D828140;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 16:
          v9 = 0xED00006574614464;
          if (v8 != 0x657373696D736964)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 17:
          if (v8 != 0x7065656C537369)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 18:
          v9 = 0xEA00000000006564;
          if (v8 != 0x69727265764F7369)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 19:
          v9 = 0xE800000000000000;
          if (v8 != 0x746E656C69537369)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 20:
          if (v8 != 0x616964654D7369)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 21:
          v9 = 0xEC00000065726946;
          if (v8 != 0x744164656B636F6CLL)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 22:
          v9 = 0xE800000000000000;
          v10 = 0x736E7265636E6F63;
          goto LABEL_68;
        default:
LABEL_68:
          if (v8 != v10)
          {
            goto LABEL_70;
          }

LABEL_69:
          if (v7 == v9)
          {

            return v4;
          }

LABEL_70:
          v13 = sub_22D81BB08();

          if (v13)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_22D8087E4(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v21 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v2 + 48) + v4);
      if (v6 <= 2)
      {
        if (*(*(v2 + 48) + v4))
        {
          if (v6 == 1)
          {
            v7 = 0x7961646E6F6DLL;
          }

          else
          {
            v7 = 0x79616473657574;
          }

          if (v6 == 1)
          {
            v8 = 0xE600000000000000;
          }

          else
          {
            v8 = 0xE700000000000000;
          }
        }

        else
        {
          v7 = 0x7961646E7573;
          v8 = 0xE600000000000000;
        }
      }

      else if (*(*(v2 + 48) + v4) > 4u)
      {
        if (v6 == 5)
        {
          v8 = 0xE600000000000000;
          v7 = 0x796164697266;
        }

        else
        {
          v8 = 0xE800000000000000;
          v7 = 0x7961647275746173;
        }
      }

      else
      {
        if (v6 == 3)
        {
          v7 = 0x616473656E646577;
        }

        else
        {
          v7 = 0x7961647372756874;
        }

        if (v6 == 3)
        {
          v8 = 0xE900000000000079;
        }

        else
        {
          v8 = 0xE800000000000000;
        }
      }

      v9 = 0x7961646E7573;
      v10 = 0x7961647275746173;
      if (v5 == 5)
      {
        v10 = 0x796164697266;
        v11 = 0xE600000000000000;
      }

      else
      {
        v11 = 0xE800000000000000;
      }

      v12 = 0x7961647372756874;
      if (v5 == 3)
      {
        v12 = 0x616473656E646577;
      }

      v13 = 0xE900000000000079;
      if (v5 != 3)
      {
        v13 = 0xE800000000000000;
      }

      if (v5 <= 4)
      {
        v10 = v12;
        v11 = v13;
      }

      v14 = 0x79616473657574;
      if (v5 == 1)
      {
        v14 = 0x7961646E6F6DLL;
      }

      v15 = 0xE700000000000000;
      if (v5 == 1)
      {
        v15 = 0xE600000000000000;
      }

      if (v5)
      {
        v9 = v14;
        v16 = v15;
      }

      else
      {
        v16 = 0xE600000000000000;
      }

      v17 = v5 <= 2 ? v9 : v10;
      v18 = v5 <= 2 ? v16 : v11;
      if (v7 == v17 && v8 == v18)
      {
        break;
      }

      v19 = sub_22D81BB08();

      if ((v19 & 1) == 0)
      {
        v4 = (v4 + 1) & v21;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_22D808A48(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x4B72656874616577;
    }

    else
    {
      v6 = 0x6C616E7265746E69;
    }

    if (a1)
    {
      v7 = 0xEA00000000007469;
    }

    else
    {
      v7 = 0xEA00000000004955;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x4B72656874616577 : 0x6C616E7265746E69;
      v9 = *(*(v2 + 48) + v4) ? 0xEA00000000007469 : 0xEA00000000004955;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_22D81BB08();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_22D808B8C(char a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = *(*(v2 + 48) + result);
      if (a1)
      {
        if (a1 == 1)
        {
          if (v7 == 1)
          {
            return result;
          }
        }

        else if (v7 == 2)
        {
          return result;
        }
      }

      else if (!*(*(v2 + 48) + result))
      {
        return result;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_22D808C1C(double *a1, uint64_t a2)
{
  v5 = type metadata accessor for TextClockDescriptor(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *a1;
    v14 = *(v7 + 72);
    do
    {
      sub_22D80E940(*(v2 + 48) + v14 * v11, v9);
      if (*v9 == v13)
      {
        v15 = MEMORY[0x2318D11A0](v9 + *(v5 + 20), a1 + *(v5 + 20), *v9);
        sub_22D80E9A4(v9);
        if (v15)
        {
          return v11;
        }
      }

      else
      {
        sub_22D80E9A4(v9);
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_22D808D8C(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v19 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v21 + 48) + v4);
      v7 = v6 == 2 ? 0x63746177706F7473 : 0x72656D6974;
      v8 = v6 == 2 ? 0xE900000000000068 : 0xE500000000000000;
      v9 = *(*(v21 + 48) + v4) ? 0x6D72616C61 : 0x6B636F6C63;
      v10 = *(*(v21 + 48) + v4) <= 1u ? v9 : v7;
      v11 = *(*(v21 + 48) + v4) <= 1u ? 0xE500000000000000 : v8;
      v12 = v5 == 2 ? 0x63746177706F7473 : 0x72656D6974;
      v13 = v5 == 2 ? 0xE900000000000068 : 0xE500000000000000;
      v14 = v5 ? 0x6D72616C61 : 0x6B636F6C63;
      v15 = v5 <= 1 ? v14 : v12;
      v16 = v5 <= 1 ? 0xE500000000000000 : v13;
      if (v10 == v15 && v11 == v16)
      {
        break;
      }

      v17 = sub_22D81BB08();

      if ((v17 & 1) == 0)
      {
        v4 = (v4 + 1) & v19;
        if ((*(v20 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_22D808F24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      sub_22D80EBD8(v24, v25);
      v20 = sub_22D81B1F8();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_22D8090C4(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x6E696E69616D6572;
    }

    else
    {
      v6 = 0x6E6F697461727564;
    }

    if (a1)
    {
      v7 = 0xED0000656D695467;
    }

    else
    {
      v7 = 0xE800000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x6E696E69616D6572 : 0x6E6F697461727564;
      v9 = *(*(v2 + 48) + v4) ? 0xED0000656D695467 : 0xE800000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_22D81BB08();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_22D80921C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x656C67676F74;
    }

    else
    {
      v6 = 1852994932;
    }

    if (a1)
    {
      v7 = 0xE600000000000000;
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x656C67676F74 : 1852994932;
      v9 = *(*(v2 + 48) + v4) ? 0xE600000000000000 : 0xE400000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_22D81BB08();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_22D809350(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA039F8, &qword_22D826AB8);
  v38 = a2;
  result = sub_22D81B968();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
        sub_22D81A398();
        sub_22D81A198();
      }

      v27 = *(v8 + 40);
      sub_22D81BBC8();
      sub_22D81B328();
      result = sub_22D81BC18();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_22D80960C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03A40, &unk_22D826B48);
  v34 = a2;
  result = sub_22D81B968();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_19:
      v23 = v20 | (v9 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = *(*(v5 + 56) + 8 * v23);
      if ((v34 & 1) == 0)
      {
        v26 = v25;
      }

      v27 = *(v8 + 40);
      sub_22D81BBC8();
      sub_22D81B328();

      result = sub_22D81BC18();
      v16 = -1 << *(v8 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v15 + 8 * (v17 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v16) >> 6;
        while (++v18 != v29 || (v28 & 1) == 0)
        {
          v30 = v18 == v29;
          if (v18 == v29)
          {
            v18 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v18);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v18 << 6);
            goto LABEL_11;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v15 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_11:
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v8 + 48) + v19) = v24;
      *(*(v8 + 56) + 8 * v19) = v25;
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_19;
      }
    }

    if (v34)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_22D809BAC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03A30, &unk_22D826B30);
  v34 = a2;
  result = sub_22D81B968();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
        v23 = v22;
      }

      v24 = *(v8 + 40);
      sub_22D81BBC8();
      sub_22D81B328();

      result = sub_22D81BC18();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (v34)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_22D809E78(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v12 = *(v62 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v62);
  v61 = &v50 - v14;
  v15 = sub_22D81A918();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v63 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v9;
  if (*(*v9 + 24) > a1)
  {
    v20 = *(*v9 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v57 = a2;
  result = sub_22D81B968();
  v22 = result;
  if (*(v19 + 16))
  {
    v23 = 0;
    v24 = (v19 + 64);
    v25 = 1 << *(v19 + 32);
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v27 = v16;
    v28 = v26 & *(v19 + 64);
    v29 = (v25 + 63) >> 6;
    v53 = (v27 + 16);
    v54 = v27;
    v51 = v9;
    v52 = v12 + 16;
    v55 = v19;
    v56 = v12;
    v58 = (v12 + 32);
    v59 = (v27 + 32);
    v30 = result + 64;
    while (v28)
    {
      v32 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
LABEL_17:
      v35 = v32 | (v23 << 6);
      v36 = *(v19 + 48);
      v60 = *(v27 + 72);
      v37 = v36 + v60 * v35;
      if (v57)
      {
        (*v59)(v63, v37, v15);
        v38 = *(v19 + 56);
        v39 = *(v56 + 72);
        (*(v56 + 32))(v61, v38 + v39 * v35, v62);
      }

      else
      {
        (*v53)(v63, v37, v15);
        v40 = *(v19 + 56);
        v39 = *(v56 + 72);
        (*(v56 + 16))(v61, v40 + v39 * v35, v62);
      }

      v41 = *(v22 + 40);
      sub_22D80EBD8(&qword_27DA02650, MEMORY[0x277CC95F0]);
      result = sub_22D81B1C8();
      v42 = -1 << *(v22 + 32);
      v43 = result & ~v42;
      v44 = v43 >> 6;
      if (((-1 << v43) & ~*(v30 + 8 * (v43 >> 6))) == 0)
      {
        v45 = 0;
        v46 = (63 - v42) >> 6;
        while (++v44 != v46 || (v45 & 1) == 0)
        {
          v47 = v44 == v46;
          if (v44 == v46)
          {
            v44 = 0;
          }

          v45 |= v47;
          v48 = *(v30 + 8 * v44);
          if (v48 != -1)
          {
            v31 = __clz(__rbit64(~v48)) + (v44 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v31 = __clz(__rbit64((-1 << v43) & ~*(v30 + 8 * (v43 >> 6)))) | v43 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v30 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
      (*v59)((*(v22 + 48) + v60 * v31), v63, v15);
      result = (*v58)(*(v22 + 56) + v39 * v31, v61, v62);
      ++*(v22 + 16);
      v27 = v54;
      v19 = v55;
    }

    v33 = v23;
    while (1)
    {
      v23 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v23 >= v29)
      {
        break;
      }

      v34 = v24[v23];
      ++v33;
      if (v34)
      {
        v32 = __clz(__rbit64(v34));
        v28 = (v34 - 1) & v34;
        goto LABEL_17;
      }
    }

    if ((v57 & 1) == 0)
    {

      v9 = v51;
      goto LABEL_36;
    }

    v49 = 1 << *(v19 + 32);
    v9 = v51;
    if (v49 >= 64)
    {
      bzero(v24, ((v49 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v24 = -1 << v49;
    }

    *(v19 + 16) = 0;
  }

LABEL_36:
  *v9 = v22;
  return result;
}

uint64_t sub_22D80A31C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03A18, &unk_22D826B00);
  v33 = a2;
  result = sub_22D81B968();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
        sub_22D81A198();
      }

      v23 = *(v8 + 40);
      sub_22D81BBC8();
      MEMORY[0x2318D2310](qword_22D826B58[v21]);
      result = sub_22D81BC18();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_22D80A5B8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA039F0, &qword_22D826AB0);
  v34 = a2;
  result = sub_22D81B968();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
        v23 = v22;
      }

      v24 = *(v8 + 40);
      sub_22D81BBC8();
      MEMORY[0x2318D2310](qword_22D826B58[v21]);
      result = sub_22D81BC18();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (v34)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_22D80A84C(uint64_t a1, int a2)
{
  v3 = v2;
  v45 = sub_22D81A8C8();
  v6 = *(v45 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v45);
  v44 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03A20, &unk_22D826B10);
  v43 = a2;
  result = sub_22D81B968();
  v12 = result;
  if (*(v9 + 16))
  {
    v39 = v3;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v40 = (v6 + 16);
    v41 = v6;
    v19 = (v6 + 32);
    v20 = result + 64;
    v42 = v9;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = *(*(v9 + 48) + v25);
      v28 = *(v6 + 72);
      v29 = v26 + v28 * v25;
      if (v43)
      {
        (*v19)(v44, v29, v45);
      }

      else
      {
        (*v40)(v44, v29, v45);
      }

      v30 = *(v12 + 40);
      sub_22D81BBC8();
      MEMORY[0x2318D2310](qword_22D826B58[v27]);
      result = sub_22D81BC18();
      v31 = -1 << *(v12 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v20 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v20 + 8 * v33);
          if (v37 != -1)
          {
            v21 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v32) & ~*(v20 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v12 + 48) + v21) = v27;
      result = (*v19)(*(v12 + 56) + v28 * v21, v44, v45);
      ++*(v12 + 16);
      v6 = v41;
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v38 = 1 << *(v9 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v14, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v38;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_22D80ABB8(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_22D81ABA8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v50 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v11 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA039B0, &unk_22D826AE0);
  v49 = a2;
  result = sub_22D81B968();
  v13 = result;
  if (*(v10 + 16))
  {
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v45 = v2;
    v46 = (v7 + 16);
    v47 = v10;
    v48 = v7;
    v51 = (v7 + 32);
    v20 = result + 64;
    v55 = v6;
    v21 = v50;
    while (v18)
    {
      v24 = __clz(__rbit64(v18));
      v25 = (v18 - 1) & v18;
LABEL_17:
      v28 = v24 | (v14 << 6);
      v29 = *(v10 + 48) + *(v48 + 72) * v28;
      v30 = 24 * v28;
      v53 = *(v48 + 72);
      v54 = v25;
      if (v49)
      {
        (*v51)(v21, v29, v55);
        v31 = *(v10 + 56) + v30;
        v32 = *(v31 + 8);
        v52 = *v31;
        v33 = *(v31 + 16);
      }

      else
      {
        (*v46)(v21, v29, v55);
        v34 = *(v10 + 56) + v30;
        v32 = *(v34 + 8);
        v33 = *(v34 + 16);
        v52 = *v34;
        sub_22D80EBC0();
      }

      v35 = *(v13 + 40);
      sub_22D80EBD8(&qword_280CD28E8, MEMORY[0x277CB9500]);
      result = sub_22D81B1C8();
      v36 = -1 << *(v13 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v20 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        v21 = v50;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v20 + 8 * v38);
          if (v42 != -1)
          {
            v22 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v37) & ~*(v20 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
      v21 = v50;
LABEL_9:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v51)(*(v13 + 48) + v53 * v22, v21, v55);
      v23 = *(v13 + 56) + 24 * v22;
      *v23 = v52;
      *(v23 + 8) = v32;
      *(v23 + 16) = v33;
      ++*(v13 + 16);
      v10 = v47;
      v18 = v54;
    }

    v26 = v14;
    while (1)
    {
      v14 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v27 = v15[v14];
      ++v26;
      if (v27)
      {
        v24 = __clz(__rbit64(v27));
        v25 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v49 & 1) == 0)
    {

      v3 = v45;
      goto LABEL_36;
    }

    v43 = 1 << *(v10 + 32);
    v3 = v45;
    if (v43 >= 64)
    {
      bzero(v15, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v43;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_22D80AFDC(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v41 = a2;
  result = sub_22D81B968();
  v10 = result;
  if (*(v7 + 16))
  {
    v39 = v5;
    v40 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v41 & 1) == 0)
      {
        v28 = v24[1];
        sub_22D81A398();
        v29 = v27;
      }

      v30 = *(v10 + 40);
      sub_22D81BBC8();
      sub_22D81B328();
      result = sub_22D81BC18();
      v31 = -1 << *(v10 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v18 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v40;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v5 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v7 + 32);
    v5 = v39;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_22D80B278(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03A08, &qword_22D826AD8);
  result = sub_22D81B968();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v40 = *(v24 + 32);
        v38 = v25;
        v39 = v26;
        v27 = *(*(v5 + 56) + 8 * v23);
      }

      else
      {
        sub_22D80E4E8(v24, &v38);
        v27 = *(*(v5 + 56) + 8 * v23);
        sub_22D81A398();
      }

      v28 = *(v8 + 40);
      result = sub_22D81B7C8();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v38;
      v19 = v39;
      *(v17 + 32) = v40;
      *v17 = v18;
      *(v17 + 16) = v19;
      *(*(v8 + 56) + 8 * v16) = v27;
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_36;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero((v5 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

unint64_t sub_22D80B550(int64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v40 = a3;
  v41 = a4;
  v6 = sub_22D81A918();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  result = MEMORY[0x28223BE20](v6);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2 + 64;
  v13 = -1 << *(a2 + 32);
  v14 = (a1 + 1) & ~v13;
  if ((*(a2 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v16 = sub_22D81B7A8();
    v17 = v15;
    v45 = (v16 + 1) & v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v43 = a2 + 64;
    v44 = v19;
    v20 = *(v18 + 56);
    v42 = (v18 - 8);
    v46 = v20;
    do
    {
      v21 = v20 * v14;
      v22 = v17;
      v23 = v18;
      v44(v11, *(a2 + 48) + v20 * v14, v6);
      v24 = *(a2 + 40);
      sub_22D80EBD8(&qword_27DA02650, MEMORY[0x277CC95F0]);
      v25 = sub_22D81B1C8();
      result = (*v42)(v11, v6);
      v17 = v22;
      v26 = v25 & v22;
      if (a1 >= v45)
      {
        if (v26 >= v45 && a1 >= v26)
        {
LABEL_15:
          v18 = v23;
          if (v46 * a1 < v21 || *(a2 + 48) + v46 * a1 >= (*(a2 + 48) + v21 + v46))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v46 * a1 != v21)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v29 = *(a2 + 56);
          v30 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(v40, v41) - 8) + 72);
          v31 = v30 * a1;
          result = v29 + v30 * a1;
          v32 = v30 * v14;
          v33 = v29 + v30 * v14 + v30;
          if (v31 < v32 || result >= v33)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v14;
            v12 = v43;
            v17 = v22;
          }

          else
          {
            a1 = v14;
            v35 = v31 == v32;
            v12 = v43;
            v17 = v22;
            if (!v35)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v17 = v22;
              a1 = v14;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v26 >= v45 || a1 >= v26)
      {
        goto LABEL_15;
      }

      v18 = v23;
      v12 = v43;
LABEL_4:
      v14 = (v14 + 1) & v17;
      v20 = v46;
    }

    while (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  *(v12 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(a2 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v38;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_22D80B8A8(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22D81B7A8() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + v6);
      sub_22D81BBC8();
      MEMORY[0x2318D2310](qword_22D826B58[v10]);
      result = sub_22D81BC18();
      v11 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v11 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v12 = *(a2 + 48);
      v13 = (v12 + v3);
      v14 = (v12 + v6);
      if (v3 != v6 || v13 >= v14 + 1)
      {
        *v13 = *v14;
      }

      v15 = *(a2 + 56);
      v16 = *(*(sub_22D81A8C8() - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v11 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v11)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_22D80BA94(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22D81B7A8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_22D81BBC8();
      sub_22D81A398();
      sub_22D81B328();
      v13 = sub_22D81BC18();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_22D80BC44(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22D81B7A8() + 1) & ~v5;
    do
    {
      sub_22D80E4E8(*(a2 + 48) + 40 * v6, v25);
      v9 = *(a2 + 40);
      v10 = sub_22D81B7C8();
      result = sub_22D7644A0(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 8 * v3);
          v21 = (v19 + 8 * v6);
          if (v3 != v6 || v20 >= v21 + 1)
          {
            *v20 = *v21;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_22D80BDE8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_22D807780(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_22D809350(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_22D807780(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_22D81BB58();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_22D80CD58();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;

  return sub_22D81A398();
}

unint64_t sub_22D80BF64(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_22D8077F8(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_8:
    v20 = *v4;
    if (v15)
    {
      v21 = v20[7];
      v22 = *(v21 + 8 * result);
      *(v21 + 8 * result) = a1;

      return MEMORY[0x2821F96F8]();
    }

    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + result) = a2;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_22D80D200(&qword_27DA03A40, &unk_22D826B48);
    result = v17;
    goto LABEL_8;
  }

  sub_22D80960C(v14, a3 & 1);
  v18 = *v4;
  result = sub_22D8077F8(a2);
  if ((v15 & 1) == (v19 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  sub_22D81BB58();
  __break(1u);
  return MEMORY[0x2821F96F8]();
}

unint64_t sub_22D80C0C0(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = a2 & 1;
  result = sub_22D807998(a2 & 1);
  v11 = *(v7 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v7 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_8:
    v20 = *v4;
    if (v15)
    {
      v21 = v20[7];
      v22 = *(v21 + 8 * result);
      *(v21 + 8 * result) = a1;

      return MEMORY[0x2821F96F8]();
    }

    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + result) = v8;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_22D80CF00();
    result = v17;
    goto LABEL_8;
  }

  sub_22D809BAC(v14, a3 & 1);
  v18 = *v4;
  result = sub_22D807998(v8);
  if ((v15 & 1) == (v19 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  sub_22D81BB58();
  __break(1u);
  return MEMORY[0x2821F96F8]();
}

unint64_t sub_22D80C208(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_22D807A48(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_22D80A31C(v14, a3 & 1);
      v18 = *v4;
      result = sub_22D807A48(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = sub_22D81BB58();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_22D80D0A4();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + result) = a2;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  v21 = v20[7];
  v22 = *(v21 + 8 * result);
  *(v21 + 8 * result) = a1;
}

unint64_t sub_22D80C354(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_22D807A48(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_8:
    v20 = *v4;
    if (v15)
    {
      v21 = v20[7];
      v22 = *(v21 + 8 * result);
      *(v21 + 8 * result) = a1;

      return MEMORY[0x2821F96F8]();
    }

    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + result) = a2;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_22D80D200(&qword_27DA039F0, &qword_22D826AB0);
    result = v17;
    goto LABEL_8;
  }

  sub_22D80A5B8(v14, a3 & 1);
  v18 = *v4;
  result = sub_22D807A48(a2);
  if ((v15 & 1) == (v19 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  sub_22D81BB58();
  __break(1u);
  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22D80C4B0(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_22D807A48(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_22D80D34C();
      goto LABEL_7;
    }

    sub_22D80A84C(v13, a3 & 1);
    v24 = *v4;
    v25 = sub_22D807A48(a2);
    if ((v14 & 1) == (v26 & 1))
    {
      v10 = v25;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_22D81BB58();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_22D81A8C8();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_22D80CB5C(v10, a2, a1, v16);
}

uint64_t sub_22D80C618(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v36 = a6;
  v37 = a7;
  v38 = a4;
  v39 = a5;
  v8 = v7;
  v12 = sub_22D81A918();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v7;
  v19 = sub_22D8078C4(a2);
  v20 = *(v17 + 16);
  v21 = (v18 & 1) == 0;
  v22 = v20 + v21;
  if (__OFADD__(v20, v21))
  {
    __break(1u);
    goto LABEL_15;
  }

  v23 = v18;
  v24 = *(v17 + 24);
  if (v24 < v22 || (a3 & 1) == 0)
  {
    if (v24 >= v22 && (a3 & 1) == 0)
    {
      sub_22D80D5D8(v38, v39, v36, v37);
      goto LABEL_7;
    }

    sub_22D809E78(v22, a3 & 1, v38, v39, v36, v37);
    v33 = *v8;
    v34 = sub_22D8078C4(a2);
    if ((v23 & 1) == (v35 & 1))
    {
      v19 = v34;
      v25 = *v8;
      if (v23)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v13 + 16))(v16, a2, v12);
      return sub_22D80CC08(v19, v16, a1, v25, v38, v39);
    }

LABEL_15:
    result = sub_22D81BB58();
    __break(1u);
    return result;
  }

LABEL_7:
  v25 = *v8;
  if ((v23 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v26 = v25[7];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(v38, v39);
  v28 = *(v27 - 8);
  v29 = *(v28 + 40);
  v30 = v27;
  v31 = v26 + *(v28 + 72) * v19;

  return v29(v31, a1, v30);
}

uint64_t sub_22D80C83C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_22D807780(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_22D80AFDC(v16, a4 & 1, &qword_27DA039E0, &unk_22D826A90);
      v20 = *v5;
      v11 = sub_22D807780(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_22D81BB58();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_22D80DBDC(&qword_27DA039E0, &unk_22D826A90);
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;

  return sub_22D81A398();
}

uint64_t sub_22D80C9D8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_22D80773C(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_22D80B278(v13, a3 & 1);
      v20 = *v4;
      v21 = sub_22D80773C(a2);
      if ((v14 & 1) != (v22 & 1))
      {
LABEL_17:
        result = sub_22D81BB58();
        __break(1u);
        return result;
      }

      v10 = v21;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

    sub_22D80DD38();
  }

  v16 = *v4;
  if ((v14 & 1) == 0)
  {
LABEL_13:
    result = sub_22D80E4E8(a2, v29);
    v16[(v10 >> 6) + 8] |= 1 << v10;
    v23 = v16[6] + 40 * v10;
    v24 = v30;
    v25 = v29[1];
    *v23 = v29[0];
    *(v23 + 16) = v25;
    *(v23 + 32) = v24;
    *(v16[7] + 8 * v10) = a1;
    v26 = v16[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (!v27)
    {
      v16[2] = v28;
      return result;
    }

    goto LABEL_16;
  }

LABEL_8:
  v17 = v16[7];
  v18 = *(v17 + 8 * v10);
  *(v17 + 8 * v10) = a1;
}

uint64_t sub_22D80CB5C(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  v7 = a4[7];
  v8 = sub_22D81A8C8();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_22D80CC08(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a4[6];
  v13 = sub_22D81A918();
  (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  v14 = a4[7];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * a1, a3, v15);
  v17 = a4[2];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v19;
  }

  return result;
}

unint64_t sub_22D80CD10(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

void *sub_22D80CD58()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA039F8, &qword_22D826AB8);
  v2 = *v0;
  v3 = sub_22D81B958();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
        sub_22D81A398();
        result = sub_22D81A198();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_22D80CF00()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03A30, &unk_22D826B30);
  v2 = *v0;
  v3 = sub_22D81B958();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_22D80D0A4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03A18, &unk_22D826B00);
  v2 = *v0;
  v3 = sub_22D81B958();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = sub_22D81A198();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_22D80D200(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_22D81B958();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + v19) = *(*(v4 + 48) + v19);
        *(*(v6 + 56) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_22D80D34C()
{
  v1 = v0;
  v30 = sub_22D81A8C8();
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  v29 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03A20, &unk_22D826B10);
  v4 = *v0;
  v5 = sub_22D81B958();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v32 + 16;
    v26 = v4 + 64;
    for (i = v32 + 32; v13; result = (*(v20 + 32))(*(v24 + 56) + v21, v23, v22))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = *(*(v4 + 48) + v18);
      v20 = v32;
      v21 = *(v32 + 72) * v18;
      v23 = v29;
      v22 = v30;
      (*(v32 + 16))(v29, *(v4 + 56) + v21, v30);
      v24 = v31;
      *(*(v31 + 48) + v18) = v19;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v25;
        v6 = v31;
        goto LABEL_18;
      }

      v17 = *(v26 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

char *sub_22D80D5D8(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v52 = *(v49 - 8);
  v8 = *(v52 + 64);
  MEMORY[0x28223BE20](v49);
  v48 = &v38 - v9;
  v47 = sub_22D81A918();
  v51 = *(v47 - 8);
  v10 = *(v51 + 64);
  MEMORY[0x28223BE20](v47);
  v46 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v12 = *v4;
  v13 = sub_22D81B958();
  v14 = v13;
  if (*(v12 + 16))
  {
    result = (v13 + 64);
    v16 = (v12 + 64);
    v17 = ((1 << *(v14 + 32)) + 63) >> 6;
    v38 = v7;
    v39 = v12 + 64;
    if (v14 != v12 || result >= &v16[8 * v17])
    {
      result = memmove(result, v16, 8 * v17);
    }

    v18 = 0;
    v19 = *(v12 + 16);
    v50 = v14;
    *(v14 + 16) = v19;
    v20 = 1 << *(v12 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v12 + 64);
    v23 = (v20 + 63) >> 6;
    v43 = v51 + 16;
    v44 = v23;
    v41 = v51 + 32;
    v42 = v52 + 16;
    v40 = v52 + 32;
    v45 = v12;
    v25 = v46;
    v24 = v47;
    if (v22)
    {
      do
      {
        v26 = __clz(__rbit64(v22));
        v53 = (v22 - 1) & v22;
LABEL_14:
        v29 = v26 | (v18 << 6);
        v30 = v51;
        v31 = *(v51 + 72) * v29;
        (*(v51 + 16))(v25, *(v12 + 48) + v31, v24);
        v32 = v52;
        v33 = *(v52 + 72) * v29;
        v34 = v48;
        v35 = v49;
        (*(v52 + 16))(v48, *(v12 + 56) + v33, v49);
        v36 = v50;
        (*(v30 + 32))(*(v50 + 48) + v31, v25, v24);
        v37 = *(v36 + 56);
        v12 = v45;
        result = (*(v32 + 32))(v37 + v33, v34, v35);
        v23 = v44;
        v22 = v53;
      }

      while (v53);
    }

    v27 = v18;
    while (1)
    {
      v18 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v18 >= v23)
      {

        v7 = v38;
        v14 = v50;
        goto LABEL_18;
      }

      v28 = *(v39 + 8 * v18);
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v53 = (v28 - 1) & v28;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v7 = v14;
  }

  return result;
}

char *sub_22D80D924()
{
  v1 = v0;
  v40 = sub_22D81ABA8();
  v42 = *(v40 - 8);
  v2 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  v39 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA039B0, &unk_22D826AE0);
  v4 = *v0;
  v5 = sub_22D81B958();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v33 = v1;
    v34 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v41 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    v37 = v15;
    v38 = v4;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v43 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v42;
        v21 = *(v42 + 72) * v19;
        v23 = v39;
        v22 = v40;
        (*(v42 + 16))(v39, *(v4 + 48) + v21, v40);
        v24 = 24 * v19;
        v25 = *(v4 + 56) + 24 * v19;
        v26 = *v25;
        v27 = *(v25 + 8);
        v28 = *(v25 + 16);
        v29 = v41;
        (*(v20 + 32))(*(v41 + 48) + v21, v23, v22);
        v30 = *(v29 + 56);
        v4 = v38;
        v31 = v30 + v24;
        *v31 = v26;
        *(v31 + 8) = v27;
        *(v31 + 16) = v28;
        result = sub_22D80EBC0(v26, v27, v28);
        v15 = v37;
        v14 = v43;
      }

      while (v43);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v33;
        v6 = v41;
        goto LABEL_18;
      }

      v18 = *(v34 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v43 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

id sub_22D80DBDC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_22D81B958();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
        sub_22D81A398();
        result = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_22D80DD38()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03A08, &qword_22D826AD8);
  v2 = *v0;
  v3 = sub_22D81B958();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        sub_22D80E4E8(*(v2 + 48) + 40 * v17, v22);
        v18 = *(*(v2 + 56) + 8 * v17);
        v19 = *(v4 + 48) + 40 * v17;
        v20 = v22[0];
        v21 = v22[1];
        *(v19 + 32) = v23;
        *v19 = v20;
        *(v19 + 16) = v21;
        *(*(v4 + 56) + 8 * v17) = v18;
        result = sub_22D81A398();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_22D80DECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = *(a1 + 16);
  if (v19)
  {
    v3 = 0;
    for (i = (a1 + 40); ; i += 2)
    {
      if (*(i - 1))
      {
        v5 = *i;
        v6 = *(i - 1);
        ObjectType = swift_getObjectType();
        v8 = *(v5 + 8);
        v9 = *(v8 + 8);
        swift_unknownObjectRetain_n();
        v10 = v9(ObjectType, v8);
        v12 = v11;
        v13 = swift_getObjectType();
        if (v10 == (*(*(a3 + 8) + 8))(v13) && v12 == v14)
        {

          swift_unknownObjectRelease_n();

          return v3;
        }

        v16 = sub_22D81BB08();

        swift_unknownObjectRelease_n();

        if (v16)
        {
          return v3;
        }
      }

      if (v19 == ++v3)
      {
        return 0;
      }
    }
  }

  return 0;
}

unint64_t sub_22D80E058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = sub_22D81ABA8();
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_22D80E1A0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  result = sub_22D80DECC(*a1, a2, a3);
  v7 = result;
  if (v3)
  {
    return v7;
  }

  if (v6)
  {
    return v4[2];
  }

  v8 = result + 1;
  if (__OFADD__(result, 1))
  {
    goto LABEL_31;
  }

  v10 = v4 + 2;
  v9 = v4[2];
  if (v8 == v9)
  {
    return v7;
  }

  v11 = 2 * result;
  while (v8 < v9)
  {
    v12 = &v4[v11];
    if (!v4[v11 + 6])
    {
      goto LABEL_17;
    }

    v31 = v4;
    v32 = v7;
    v13 = v12[7];
    ObjectType = swift_getObjectType();
    v15 = *(v13 + 8);
    v16 = *(v15 + 8);
    swift_unknownObjectRetain_n();
    v17 = v16(ObjectType, v15);
    v19 = v18;
    v20 = swift_getObjectType();
    if (v17 == (*(*(a3 + 8) + 8))(v20) && v19 == v21)
    {

      swift_unknownObjectRelease_n();

      v4 = v31;
      v7 = v32;
      goto LABEL_9;
    }

    v23 = sub_22D81BB08();

    swift_unknownObjectRelease_n();

    v4 = v31;
    v7 = v32;
    if ((v23 & 1) == 0)
    {
LABEL_17:
      if (v8 != v7)
      {
        if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_27;
        }

        if (v7 >= *v10)
        {
          goto LABEL_28;
        }

        if (v8 >= *v10)
        {
          goto LABEL_29;
        }

        v24 = v12[6];
        v25 = v12[7];
        v33 = *&v4[2 * v7 + 4];
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_22D781C08(v4);
        }

        v26 = &v4[2 * v7];
        v27 = v26[4];
        v26[4] = v24;
        v26[5] = v25;
        result = swift_unknownObjectRelease();
        if (v8 >= v4[2])
        {
          goto LABEL_30;
        }

        v28 = v4[v11 + 6];
        *&v4[v11 + 6] = v33;
        result = swift_unknownObjectRelease();
        *a1 = v4;
      }

      ++v7;
    }

LABEL_9:
    ++v8;
    v10 = v4 + 2;
    v9 = v4[2];
    v11 += 2;
    if (v8 == v9)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_22D80E410(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03948, &qword_22D826AD0);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_22D80E4E0()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_22D81A198();
}

uint64_t objectdestroyTm_5()
{
  v1 = v0[2];

  v2 = v0[3];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 5);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_22D80E940(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextClockDescriptor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22D80E9A4(uint64_t a1)
{
  v2 = type metadata accessor for TextClockDescriptor(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22D80EA34(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t objectdestroy_40Tm()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 32);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22D80EBC4(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
    return sub_22D81A398();
  }

  return result;
}

uint64_t sub_22D80EBD8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22D80EC4C()
{
  result = qword_27DA03A48;
  if (!qword_27DA03A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03A48);
  }

  return result;
}

unint64_t sub_22D80ECA4()
{
  result = qword_27DA03A50;
  if (!qword_27DA03A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03A50);
  }

  return result;
}

uint64_t sub_22D80ED30@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C18, &unk_22D81E0D0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v22 = &v21 - v3;
  v4 = sub_22D81A748();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22D81A958();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_22D81B2A8();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v21 = sub_22D81A768();
  v13 = *(v21 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22D81B228();
  sub_22D81A948();
  v15 = *MEMORY[0x277CC9110];
  v16 = *(v5 + 104);
  v16(v8, v15, v4);
  sub_22D81A778();
  sub_22D81B228();
  sub_22D81A948();
  v16(v8, v15, v4);
  v17 = v22;
  sub_22D81A778();
  (*(v13 + 56))(v17, 0, 1, v21);
  v18 = v23;
  sub_22D81A2C8();
  v19 = sub_22D81A2B8();
  return (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
}

uint64_t sub_22D80F0B4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_22D80F0D4, 0, 0);
}

uint64_t sub_22D80F0D4()
{
  v1 = [*(v0 + 24) timersSync];
  if (!v1)
  {
    goto LABEL_19;
  }

  sub_22D7E1A14();
  v2 = sub_22D81B438();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_4;
    }

LABEL_18:

    v1 = 0;
    goto LABEL_19;
  }

LABEL_17:
  v3 = sub_22D81B938();
  if (!v3)
  {
    goto LABEL_18;
  }

LABEL_4:
  v4 = 0;
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x2318D1F70](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v1 = v5;
    v6 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    if ([v5 state] == 2)
    {
      break;
    }

    ++v4;
    if (v6 == v3)
    {
      goto LABEL_18;
    }
  }

  v7 = [v1 timerByUpdatingWithState_];
  if (v7)
  {
    v8 = v7;
  }

LABEL_19:
  v9 = *(v0 + 16);
  sub_22D819FD8();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_22D80F294()
{
  v0 = sub_22D81A748();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22D81A958();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_22D81B2A8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_22D81B228();
  sub_22D81A948();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_22D81A778();
}

uint64_t sub_22D80F454()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03A68, &qword_22D826CD8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_22D81A408();
  return sub_22D81A3B8();
}

uint64_t sub_22D80F52C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22D744B0C;

  return sub_22D80F0B4(a1, v4);
}

uint64_t sub_22D80F5CC(uint64_t a1)
{
  v2 = sub_22D7D1DCC();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_22D80F640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *), uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = sub_22D813AA4(a3, a4, a1, a7, a8);

    if (v15)
    {
      v16 = v15;
      a5(&v16);
    }
  }

  return result;
}

uint64_t sub_22D80F708(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 200);
  *(v3 + 200) = v2;
  sub_22D81A398();
}

uint64_t sub_22D80F768()
{
  swift_beginAccess();
  v1 = *(v0 + 200);
  return sub_22D81A398();
}

uint64_t sub_22D80F7A0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 200);
  *(v1 + 200) = a1;
}

uint64_t AlarmsViewModel.__allocating_init(manager:delegate:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 184) = 0;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 128) = 0u;
  *(v5 + 144) = 0u;
  *(v5 + 160) = 0u;
  swift_unknownObjectWeakInit();
  v6 = MEMORY[0x277D84F90];
  *(v5 + 192) = a1;
  *(v5 + 200) = v6;
  *(v5 + 184) = a3;
  swift_unknownObjectWeakAssign();
  v7 = a1;
  sub_22D811A2C();
  sub_22D811CC0();
  sub_22D811F54();
  sub_22D8121E8();

  swift_unknownObjectRelease();
  return v5;
}

uint64_t AlarmsViewModel.init(manager:delegate:)(void *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 184) = 0;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0u;
  *(v3 + 160) = 0u;
  swift_unknownObjectWeakInit();
  v6 = MEMORY[0x277D84F90];
  *(v3 + 192) = a1;
  *(v3 + 200) = v6;
  *(v3 + 184) = a3;
  swift_unknownObjectWeakAssign();
  v7 = a1;
  sub_22D811A2C();
  sub_22D811CC0();
  sub_22D811F54();
  sub_22D8121E8();

  swift_unknownObjectRelease();
  return v3;
}

Swift::Void __swiftcall AlarmsViewModel.registerPublishers()()
{
  sub_22D811A2C();
  sub_22D811CC0();
  sub_22D811F54();

  sub_22D8121E8();
}

uint64_t AlarmsViewModel.deinit()
{
  AlarmsViewModel.unregisterPublishers()();
  sub_22D764440(v0 + 16, &qword_27DA01FE8, &unk_22D81F130);
  sub_22D764440(v0 + 56, &qword_27DA01FE8, &unk_22D81F130);
  sub_22D764440(v0 + 96, &qword_27DA01FE8, &unk_22D81F130);
  sub_22D764440(v0 + 136, &qword_27DA01FE8, &unk_22D81F130);
  sub_22D749D28(v0 + 176);

  v1 = *(v0 + 200);

  return v0;
}

Swift::Void __swiftcall AlarmsViewModel.unregisterPublishers()()
{
  swift_beginAccess();
  sub_22D81247C(v0 + 16, &v3);
  if (*(&v4 + 1))
  {
    sub_22D75CCD8(&v3, v1);
    sub_22D764440(&v3, &qword_27DA01FE8, &unk_22D81F130);
    __swift_project_boxed_opaque_existential_0(v1, v2);
    sub_22D81ACB8();
    __swift_destroy_boxed_opaque_existential_0(v1);
  }

  else
  {
    sub_22D764440(&v3, &qword_27DA01FE8, &unk_22D81F130);
  }

  v5 = 0;
  v3 = 0u;
  v4 = 0u;
  swift_beginAccess();
  sub_22D7643D0(&v3, v0 + 16);
  swift_endAccess();
  swift_beginAccess();
  sub_22D81247C(v0 + 56, &v3);
  if (*(&v4 + 1))
  {
    sub_22D75CCD8(&v3, v1);
    sub_22D764440(&v3, &qword_27DA01FE8, &unk_22D81F130);
    __swift_project_boxed_opaque_existential_0(v1, v2);
    sub_22D81ACB8();
    __swift_destroy_boxed_opaque_existential_0(v1);
  }

  else
  {
    sub_22D764440(&v3, &qword_27DA01FE8, &unk_22D81F130);
  }

  v5 = 0;
  v3 = 0u;
  v4 = 0u;
  swift_beginAccess();
  sub_22D7643D0(&v3, v0 + 56);
  swift_endAccess();
  swift_beginAccess();
  sub_22D81247C(v0 + 96, &v3);
  if (*(&v4 + 1))
  {
    sub_22D75CCD8(&v3, v1);
    sub_22D764440(&v3, &qword_27DA01FE8, &unk_22D81F130);
    __swift_project_boxed_opaque_existential_0(v1, v2);
    sub_22D81ACB8();
    __swift_destroy_boxed_opaque_existential_0(v1);
  }

  else
  {
    sub_22D764440(&v3, &qword_27DA01FE8, &unk_22D81F130);
  }

  v5 = 0;
  v3 = 0u;
  v4 = 0u;
  swift_beginAccess();
  sub_22D7643D0(&v3, v0 + 96);
  swift_endAccess();
  swift_beginAccess();
  sub_22D81247C(v0 + 136, &v3);
  if (*(&v4 + 1))
  {
    sub_22D75CCD8(&v3, v1);
    sub_22D764440(&v3, &qword_27DA01FE8, &unk_22D81F130);
    __swift_project_boxed_opaque_existential_0(v1, v2);
    sub_22D81ACB8();
    __swift_destroy_boxed_opaque_existential_0(v1);
  }

  else
  {
    sub_22D764440(&v3, &qword_27DA01FE8, &unk_22D81F130);
  }

  v5 = 0;
  v3 = 0u;
  v4 = 0u;
  swift_beginAccess();
  sub_22D7643D0(&v3, v0 + 136);
  swift_endAccess();
}

uint64_t AlarmsViewModel.__deallocating_deinit()
{
  AlarmsViewModel.unregisterPublishers()();
  sub_22D764440(v0 + 16, &qword_27DA01FE8, &unk_22D81F130);
  sub_22D764440(v0 + 56, &qword_27DA01FE8, &unk_22D81F130);
  sub_22D764440(v0 + 96, &qword_27DA01FE8, &unk_22D81F130);
  sub_22D764440(v0 + 136, &qword_27DA01FE8, &unk_22D81F130);
  sub_22D749D28(v0 + 176);

  v1 = *(v0 + 200);

  return swift_deallocClassInstance();
}

uint64_t sub_22D80FE54()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v8 - v3;
  v5 = sub_22D81B4F8();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;
  sub_22D81A198();
  sub_22D7BD9C8(0, 0, v4, &unk_22D826CE8, v6);

  return sub_22D764440(v4, &unk_27DA01FF0, &qword_22D81FC70);
}

uint64_t sub_22D80FFA0()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = 0;
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03A70, &qword_22D826CF8);
  *v4 = v0;
  v4[1] = sub_22D8100AC;

  return MEMORY[0x2822008A0](v0 + 5, 0, 0, 0xD00000000000002BLL, 0x800000022D82C8A0, sub_22D813C74, v2, v5);
}

uint64_t sub_22D8100AC()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_22D810244;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_22D8101C8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22D8101C8()
{
  v1 = v0[5];
  v2 = v0[6];
  swift_beginAccess();
  v3 = *(v2 + 200);
  *(v2 + 200) = v1;

  v4 = v0[1];

  return v4();
}

uint64_t sub_22D810244()
{
  v1 = v0[9];
  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_22D8102B0(char a1)
{
  *(v2 + 24) = v1;
  *(v2 + 56) = a1;
  return MEMORY[0x2822009F8](sub_22D8102D4, 0, 0);
}

uint64_t sub_22D8102D4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 56);
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03A70, &qword_22D826CF8);
  *v5 = v0;
  v5[1] = sub_22D758C18;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD00000000000002BLL, 0x800000022D82C8A0, sub_22D8125A0, v3, v6);
}

void sub_22D8103E4(uint64_t a1, uint64_t a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03A78, &unk_22D826E60);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - v9;
  v11 = [*(a2 + 192) alarmsIncludingSleepAlarm_];
  if (v11)
  {
    v12 = v11;
    (*(v7 + 16))(v10, a1, v6);
    v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v14 = swift_allocObject();
    (*(v7 + 32))(v14 + v13, v10, v6);
    aBlock[4] = sub_22D81364C;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22D78A760;
    aBlock[3] = &block_descriptor_16;
    v15 = _Block_copy(aBlock);
    v16 = v12;

    v17 = [v16 addCompletionBlock_];

    _Block_release(v15);
  }
}

uint64_t sub_22D8105E0(uint64_t a1, id a2)
{
  if (a2)
  {
    v2 = a2;
  }

  else
  {
    if (a1)
    {
      sub_22D793E6C();
      sub_22D81B428();
    }

    sub_22D8136F0();
    swift_allocError();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03A78, &unk_22D826E60);
  return sub_22D81B4A8();
}

uint64_t sub_22D8106B0(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 32) = a2;
  *(v4 + 40) = v3;
  *(v4 + 72) = a3;
  *(v4 + 24) = a1;
  return MEMORY[0x2822009F8](sub_22D8106D8, 0, 0);
}

uint64_t sub_22D8106D8()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 72);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03A70, &qword_22D826CF8);
  *v5 = v0;
  v5[1] = sub_22D8107E8;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD00000000000002BLL, 0x800000022D82C8A0, sub_22D813C74, v3, v6);
}

uint64_t sub_22D8107E8()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_22D810AA8;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_22D810904;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22D810904()
{
  v2 = v0[2];
  if (v2 >> 62)
  {
LABEL_20:
    v3 = sub_22D81B938();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      v19 = v2 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x2318D1F70](v4, v2);
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_16:
            __break(1u);
LABEL_17:

LABEL_18:

            v16 = v1;
            goto LABEL_22;
          }
        }

        else
        {
          if (v4 >= *(v19 + 16))
          {
            __break(1u);
            goto LABEL_20;
          }

          v5 = *(v2 + 8 * v4 + 32);
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_16;
          }
        }

        v7 = v0[3];
        v20 = v0[4];
        v1 = v5;
        v8 = [v5 alarmIDString];
        v9 = sub_22D81B2C8();
        v11 = v10;

        if (v9 == v7 && v11 == v20)
        {
          goto LABEL_17;
        }

        v13 = v0[3];
        v14 = v0[4];
        v15 = sub_22D81BB08();

        if (v15)
        {
          goto LABEL_18;
        }

        ++v4;
      }

      while (v6 != v3);
    }
  }

  v16 = 0;
LABEL_22:
  v17 = v0[1];

  return v17(v16);
}

uint64_t sub_22D810AA8()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_22D810B0C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22D810B2C, 0, 0);
}

uint64_t sub_22D810B2C()
{
  v1 = [*(v0[3] + 192) addAlarm_];
  v0[4] = v1;
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_22D7DC84C;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000019, 0x800000022D82BBC0, sub_22D7DFE58, v2, v5);
}

uint64_t sub_22D810C40(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22D810C60, 0, 0);
}

uint64_t sub_22D810C60()
{
  v1 = [*(v0[3] + 192) updateAlarm_];
  v0[4] = v1;
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_22D7DD5CC;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000019, 0x800000022D82BBC0, sub_22D7E103C, v2, v5);
}

uint64_t sub_22D810D74(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22D810D94, 0, 0);
}

uint64_t sub_22D810D94()
{
  v1 = [*(v0[3] + 192) removeAlarm_];
  v0[4] = v1;
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_22D7DD5CC;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000019, 0x800000022D82BBC0, sub_22D7E103C, v2, v5);
}

uint64_t sub_22D810EA8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22D810EC8, 0, 0);
}

uint64_t sub_22D810EC8()
{
  v1 = [*(v0 + 16) alarmIDString];
  v2 = sub_22D81B2C8();
  v4 = v3;

  *(v0 + 32) = v4;
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = sub_22D7DDA18;
  v6 = *(v0 + 24);

  return sub_22D810F98(v2, v4);
}

uint64_t sub_22D810F98(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22D810FBC, 0, 0);
}

uint64_t sub_22D810FBC()
{
  v1 = v0[3];
  v2 = v0[2];
  v3 = *(v0[4] + 192);
  v4 = sub_22D81B2B8();
  v5 = [v3 snoozeAlarmWithIdentifier_];
  v0[5] = v5;

  v6 = swift_task_alloc();
  v0[6] = v6;
  *(v6 + 16) = v5;
  v7 = *(MEMORY[0x277D85A40] + 4);
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_22D7DDD28;
  v9 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v8, 0, 0, 0xD000000000000019, 0x800000022D82BBC0, sub_22D7E103C, v6, v9);
}

uint64_t sub_22D8110E8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22D811108, 0, 0);
}

uint64_t sub_22D811108()
{
  v1 = [*(v0 + 16) alarmIDString];
  v2 = sub_22D81B2C8();
  v4 = v3;

  *(v0 + 32) = v4;
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = sub_22D7DE004;
  v6 = *(v0 + 24);

  return sub_22D8111D8(v2, v4);
}

uint64_t sub_22D8111D8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22D8111FC, 0, 0);
}

uint64_t sub_22D8111FC()
{
  v1 = v0[3];
  v2 = v0[2];
  v3 = *(v0[4] + 192);
  v4 = sub_22D81B2B8();
  v5 = [v3 dismissAlarmWithIdentifier_];
  v0[5] = v5;

  v6 = swift_task_alloc();
  v0[6] = v6;
  *(v6 + 16) = v5;
  v7 = *(MEMORY[0x277D85A40] + 4);
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_22D7DE2B0;
  v9 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v8, 0, 0, 0xD000000000000019, 0x800000022D82BBC0, sub_22D7E103C, v6, v9);
}

uint64_t sub_22D811328(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22D811348, 0, 0);
}

uint64_t sub_22D811348()
{
  v1 = [*(v0 + 16) alarmIDString];
  v2 = sub_22D81B2C8();
  v4 = v3;

  *(v0 + 32) = v4;
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = sub_22D7DE004;
  v6 = *(v0 + 24);

  return sub_22D811418(v2, v4);
}

uint64_t sub_22D811418(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22D81143C, 0, 0);
}

uint64_t sub_22D81143C()
{
  v1 = v0[3];
  v2 = v0[2];
  v3 = *(v0[4] + 192);
  v4 = sub_22D81B2B8();
  v5 = [v3 dismissAlarmWithIdentifier:v4 dismissAction:6];
  v0[5] = v5;

  v6 = swift_task_alloc();
  v0[6] = v6;
  *(v6 + 16) = v5;
  v7 = *(MEMORY[0x277D85A40] + 4);
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_22D7DE2B0;
  v9 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v8, 0, 0, 0xD000000000000019, 0x800000022D82BBC0, sub_22D7E103C, v6, v9);
}

uint64_t sub_22D81156C(uint64_t a1, int *a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v8 = (a2 + *a2);
  v5 = a2[1];
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_22D81166C;

  return v8(a1);
}

uint64_t sub_22D81166C()
{
  v2 = *(*v1 + 32);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22D81179C, 0, 0);
  }
}

uint64_t sub_22D81179C()
{
  v1 = [*(v0 + 16) alarmIDString];
  v2 = sub_22D81B2C8();
  v4 = v3;

  *(v0 + 40) = v4;
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_22D811870;
  v6 = *(v0 + 24);

  return sub_22D8106B0(v2, v4, 0);
}

uint64_t sub_22D811870(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_22D8119C8, 0, 0);
  }

  else
  {
    v7 = *(v4 + 40);

    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t sub_22D8119C8()
{
  v1 = v0[5];

  v2 = v0[7];
  v3 = v0[1];

  return v3();
}

uint64_t sub_22D811A2C()
{
  v1 = sub_22D81B6C8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  swift_beginAccess();
  sub_22D81247C(v0 + 16, v22);
  v6 = v23;
  result = sub_22D764440(v22, &qword_27DA01FE8, &unk_22D81F130);
  if (!v6)
  {
    v8 = *MEMORY[0x277D29590];
    v9 = *MEMORY[0x277D295A0];
    v10 = sub_22D81B2C8();
    v12 = v11;
    v13 = swift_allocObject();
    swift_weakInit();
    v14 = objc_opt_self();
    v15 = v8;
    v16 = [v14 defaultCenter];
    v17 = v0;
    sub_22D81B6D8();

    v18 = swift_allocObject();
    swift_weakInit();
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = v10;
    v19[4] = v12;
    v19[5] = sub_22D813BC8;
    v19[6] = v13;
    sub_22D813A4C();
    sub_22D81A198();
    v20 = sub_22D81AD58();

    (*(v2 + 8))(v5, v1);
    v23 = sub_22D81ACF8();
    v24 = MEMORY[0x277CBCDA0];

    v22[0] = v20;
    swift_beginAccess();
    sub_22D7643D0(v22, v17 + 16);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_22D811CC0()
{
  v1 = sub_22D81B6C8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  swift_beginAccess();
  sub_22D81247C(v0 + 56, v22);
  v6 = v23;
  result = sub_22D764440(v22, &qword_27DA01FE8, &unk_22D81F130);
  if (!v6)
  {
    v8 = *MEMORY[0x277D295B0];
    v9 = *MEMORY[0x277D295A0];
    v10 = sub_22D81B2C8();
    v12 = v11;
    v13 = swift_allocObject();
    swift_weakInit();
    v14 = objc_opt_self();
    v15 = v8;
    v16 = [v14 defaultCenter];
    v17 = v0;
    sub_22D81B6D8();

    v18 = swift_allocObject();
    swift_weakInit();
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = v10;
    v19[4] = v12;
    v19[5] = sub_22D813BC0;
    v19[6] = v13;
    sub_22D813A4C();
    sub_22D81A198();
    v20 = sub_22D81AD58();

    (*(v2 + 8))(v5, v1);
    v23 = sub_22D81ACF8();
    v24 = MEMORY[0x277CBCDA0];

    v22[0] = v20;
    swift_beginAccess();
    sub_22D7643D0(v22, v17 + 56);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_22D811F54()
{
  v1 = sub_22D81B6C8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  swift_beginAccess();
  sub_22D81247C(v0 + 96, v22);
  v6 = v23;
  result = sub_22D764440(v22, &qword_27DA01FE8, &unk_22D81F130);
  if (!v6)
  {
    v8 = *MEMORY[0x277D29588];
    v9 = *MEMORY[0x277D295A0];
    v10 = sub_22D81B2C8();
    v12 = v11;
    v13 = swift_allocObject();
    swift_weakInit();
    v14 = objc_opt_self();
    v15 = v8;
    v16 = [v14 defaultCenter];
    v17 = v0;
    sub_22D81B6D8();

    v18 = swift_allocObject();
    swift_weakInit();
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = v10;
    v19[4] = v12;
    v19[5] = sub_22D813BB8;
    v19[6] = v13;
    sub_22D813A4C();
    sub_22D81A198();
    v20 = sub_22D81AD58();

    (*(v2 + 8))(v5, v1);
    v23 = sub_22D81ACF8();
    v24 = MEMORY[0x277CBCDA0];

    v22[0] = v20;
    swift_beginAccess();
    sub_22D7643D0(v22, v17 + 96);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_22D8121E8()
{
  v1 = sub_22D81B6C8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  swift_beginAccess();
  sub_22D81247C(v0 + 136, v22);
  v6 = v23;
  result = sub_22D764440(v22, &qword_27DA01FE8, &unk_22D81F130);
  if (!v6)
  {
    v8 = *MEMORY[0x277D295A8];
    v9 = *MEMORY[0x277D295A0];
    v10 = sub_22D81B2C8();
    v12 = v11;
    v13 = swift_allocObject();
    swift_weakInit();
    v14 = objc_opt_self();
    v15 = v8;
    v16 = [v14 defaultCenter];
    v17 = v0;
    sub_22D81B6D8();

    v18 = swift_allocObject();
    swift_weakInit();
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = v10;
    v19[4] = v12;
    v19[5] = sub_22D813A40;
    v19[6] = v13;
    sub_22D813A4C();
    sub_22D81A198();
    v20 = sub_22D81AD58();

    (*(v2 + 8))(v5, v1);
    v23 = sub_22D81ACF8();
    v24 = MEMORY[0x277CBCDA0];

    v22[0] = v20;
    swift_beginAccess();
    sub_22D7643D0(v22, v17 + 136);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_22D81247C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01FE8, &unk_22D81F130);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22D8124EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22D744B0C;

  return sub_22D80FF80(a1, v4, v5, v6);
}

uint64_t dispatch thunk of AlarmsViewModel.fetchAlarmsFromServer(includingSleepAlarm:)(uint64_t a1)
{
  v4 = *(*v1 + 304);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22D812850;

  return v8(a1);
}

uint64_t sub_22D812850(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of AlarmsViewModel.getAlarm(_:includingSleepAlarm:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 312);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_22D813C6C;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of AlarmsViewModel.createAlarm(_:)(uint64_t a1)
{
  v4 = *(*v1 + 320);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22D744B0C;

  return v8(a1);
}

uint64_t dispatch thunk of AlarmsViewModel.updateAlarm(_:)(uint64_t a1)
{
  v4 = *(*v1 + 328);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22D744B08;

  return v8(a1);
}

uint64_t dispatch thunk of AlarmsViewModel.deleteAlarm(_:)(uint64_t a1)
{
  v4 = *(*v1 + 336);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22D744B08;

  return v8(a1);
}

uint64_t dispatch thunk of AlarmsViewModel.snoozeAlarm(_:)(uint64_t a1)
{
  v4 = *(*v1 + 344);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22D744B08;

  return v8(a1);
}

uint64_t dispatch thunk of AlarmsViewModel.snoozeAlarm(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 352);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22D744B08;

  return v10(a1, a2);
}

uint64_t dispatch thunk of AlarmsViewModel.dismissAlarm(_:)(uint64_t a1)
{
  v4 = *(*v1 + 360);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22D744B08;

  return v8(a1);
}

uint64_t dispatch thunk of AlarmsViewModel.dismissAlarm(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 368);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22D744B08;

  return v10(a1, a2);
}

uint64_t dispatch thunk of AlarmsViewModel.dismissSnoozedAlarm(_:)(uint64_t a1)
{
  v4 = *(*v1 + 376);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22D744B08;

  return v8(a1);
}

uint64_t dispatch thunk of AlarmsViewModel.dismissSnoozedAlarm(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 384);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22D744B08;

  return v10(a1, a2);
}

uint64_t dispatch thunk of AlarmsViewModel.performAndReturnAlarm(_:operation:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 392);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_22D813C6C;

  return v12(a1, a2, a3);
}

uint64_t sub_22D81364C(uint64_t a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03A78, &unk_22D826E60) - 8) + 80);

  return sub_22D8105E0(a1, a2);
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_22D81A198();
}

unint64_t sub_22D8136F0()
{
  result = qword_27DA03A80;
  if (!qword_27DA03A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03A80);
  }

  return result;
}

uint64_t sub_22D813744(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    Strong = swift_unknownObjectWeakLoadStrong();
    v5 = *(v3 + 184);

    if (Strong)
    {
      ObjectType = swift_getObjectType();
      (*(v5 + 8))(v1, ObjectType, v5);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_22D8137E8(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    Strong = swift_unknownObjectWeakLoadStrong();
    v5 = *(v3 + 184);

    if (Strong)
    {
      ObjectType = swift_getObjectType();
      (*(v5 + 16))(v1, ObjectType, v5);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_22D81388C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >> 62)
  {
    if (v1 < 0)
    {
      v9 = *a1;
    }

    if (!sub_22D81B938())
    {
      return;
    }
  }

  else if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x2318D1F70](0, v1);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v2 = *(v1 + 32);
  }

  v3 = v2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong && (v5 = Strong, v6 = swift_unknownObjectWeakLoadStrong(), v7 = *(v5 + 184), , v6))
  {
    ObjectType = swift_getObjectType();
    (*(v7 + 24))(v3, ObjectType, v7);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_22D81399C(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    Strong = swift_unknownObjectWeakLoadStrong();
    v5 = *(v3 + 184);

    if (Strong)
    {
      ObjectType = swift_getObjectType();
      (*(v5 + 32))(v1, ObjectType, v5);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

unint64_t sub_22D813A4C()
{
  result = qword_280CD2980;
  if (!qword_280CD2980)
  {
    sub_22D81B6C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CD2980);
  }

  return result;
}

uint64_t sub_22D813AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v9 = sub_22D81A618();
  if (v9)
  {
    v10 = v9;
    *&v15[0] = a1;
    *(&v15[0] + 1) = a2;
    sub_22D81A398();
    sub_22D81B7E8();
    if (*(v10 + 16))
    {
      v11 = sub_22D80773C(v14);
      if (v12)
      {
        sub_22D7507C0(*(v10 + 56) + 32 * v11, v15);
        sub_22D7644A0(v14);

        goto LABEL_7;
      }
    }

    sub_22D7644A0(v14);
  }

  memset(v15, 0, sizeof(v15));
LABEL_7:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA02030, qword_22D81F298);
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  if (swift_dynamicCast())
  {
    return v14[0];
  }

  else
  {
    return 0;
  }
}

unint64_t sub_22D813C18()
{
  result = qword_27DA03A88;
  if (!qword_27DA03A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03A88);
  }

  return result;
}

uint64_t SerialTaskQueue.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  SerialTaskQueue.init()();
  return v3;
}

uint64_t SerialTaskQueue.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v34 = &v31 - v3;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03A90, &qword_22D826F38);
  v4 = *(v36 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v36);
  v7 = &v31 - v6;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03A98, &qword_22D826F40);
  v8 = *(v33 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v33);
  v32 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03AA0, &unk_22D826F48);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v31 - v18;
  v35 = v0;
  swift_defaultActor_initialize();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA035D8, &qword_22D825410);
  v21 = *(v20 - 8);
  (*(v21 + 56))(v19, 1, 1, v20);
  v37 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03AA8, &qword_22D826F58);
  (*(v4 + 104))(v7, *MEMORY[0x277D85778], v36);
  sub_22D81B588();
  sub_22D8141F8(v19, v17);
  result = (*(v21 + 48))(v17, 1, v20);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v23 = v35;
    (*(v21 + 32))(v35 + OBJC_IVAR____TtC18MobileTimerSupport15SerialTaskQueue__streamContinuation, v17, v20);
    v24 = sub_22D81B4F8();
    v25 = v34;
    (*(*(v24 - 8) + 56))(v34, 1, 1, v24);
    v27 = v32;
    v26 = v33;
    (*(v8 + 16))(v32, v12, v33);
    v28 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = 0;
    *(v29 + 24) = 0;
    (*(v8 + 32))(v29 + v28, v27, v26);
    v30 = sub_22D75D890(0, 0, v25, &unk_22D826F68, v29);
    (*(v8 + 8))(v12, v26);
    *(v23 + OBJC_IVAR____TtC18MobileTimerSupport15SerialTaskQueue__task) = v30;
    sub_22D8144FC(v19);
    return v23;
  }

  return result;
}

uint64_t sub_22D814124(uint64_t a1, uint64_t a2)
{
  sub_22D8144FC(a2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA035D8, &qword_22D825410);
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t sub_22D8141F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03AA0, &unk_22D826F48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22D814268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03AB0, qword_22D826FF0);
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v7 = *(v6 + 64) + 15;
  v4[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22D814334, 0, 0);
}

uint64_t sub_22D814334()
{
  v1 = v0[7];
  v2 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03A98, &qword_22D826F40);
  sub_22D81B558();
  v3 = *(MEMORY[0x277D85798] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_22D7437E0;
  v5 = v0[7];
  v6 = v0[5];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v6);
}

uint64_t sub_22D814400(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03A98, &qword_22D826F40) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22D744B0C;

  return sub_22D814268(a1, v6, v7, v1 + v5);
}

uint64_t sub_22D8144FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03AA0, &unk_22D826F48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SerialTaskQueue.deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA035D8, &qword_22D825410);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - v5;
  v7 = OBJC_IVAR____TtC18MobileTimerSupport15SerialTaskQueue__streamContinuation;
  (*(v3 + 16))(&v11 - v5, v1 + OBJC_IVAR____TtC18MobileTimerSupport15SerialTaskQueue__streamContinuation, v2);
  sub_22D81B538();
  v8 = *(v3 + 8);
  v8(v6, v2);
  v8((v1 + v7), v2);
  v9 = *(v1 + OBJC_IVAR____TtC18MobileTimerSupport15SerialTaskQueue__task);

  swift_defaultActor_destroy();
  return v1;
}

uint64_t SerialTaskQueue.__deallocating_deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA035D8, &qword_22D825410);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - v5;
  v7 = OBJC_IVAR____TtC18MobileTimerSupport15SerialTaskQueue__streamContinuation;
  (*(v3 + 16))(&v11 - v5, v1 + OBJC_IVAR____TtC18MobileTimerSupport15SerialTaskQueue__streamContinuation, v2);
  sub_22D81B538();
  v8 = *(v3 + 8);
  v8(v6, v2);
  v8((v1 + v7), v2);
  v9 = *(v1 + OBJC_IVAR____TtC18MobileTimerSupport15SerialTaskQueue__task);

  swift_defaultActor_destroy();
  return swift_defaultActor_deallocate();
}

uint64_t sub_22D8147C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA035C8, &qword_22D825400);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v11[0] = &unk_22D825430;
  v11[1] = v9;
  sub_22D81A198();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA035D8, &qword_22D825410);
  sub_22D81B528();
  return (*(v5 + 8))(v8, v4);
}

uint64_t type metadata accessor for SerialTaskQueue()
{
  result = qword_280CD20A0;
  if (!qword_280CD20A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22D81498C()
{
  sub_22D814AA8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_22D814AA8()
{
  if (!qword_280CD1550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA03AA8, &qword_22D826F58);
    v0 = sub_22D81B548();
    if (!v1)
    {
      atomic_store(v0, &qword_280CD1550);
    }
  }
}

uint64_t sub_22D814B7C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t sub_22D814BAC()
{
  sub_22D814B7C();

  return swift_deallocClassInstance();
}

uint64_t sub_22D814BF8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C18, &unk_22D81E0D0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v17[-v2];
  v4 = sub_22D81A748();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_22D81A958();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_22D81B2A8();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_22D81A768();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22D81B228();
  sub_22D81A948();
  (*(v5 + 104))(v8, *MEMORY[0x277CC9110], v4);
  sub_22D81A778();
  (*(v14 + 56))(v3, 1, 1, v13);
  return sub_22D81A488();
}

uint64_t sub_22D814EB8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x656C67676F74;
  }

  else
  {
    v4 = 1852994932;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v6 = 0x656C67676F74;
  }

  else
  {
    v6 = 1852994932;
  }

  if (*a2)
  {
    v7 = 0xE600000000000000;
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
    v9 = sub_22D81BB08();
  }

  return v9 & 1;
}

unint64_t sub_22D814F58()
{
  result = qword_27DA03AB8;
  if (!qword_27DA03AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03AB8);
  }

  return result;
}

uint64_t sub_22D814FAC()
{
  v1 = *v0;
  sub_22D81BBC8();
  sub_22D81B328();

  return sub_22D81BC18();
}

uint64_t sub_22D815024()
{
  *v0;
  sub_22D81B328();
}

uint64_t sub_22D815088()
{
  v1 = *v0;
  sub_22D81BBC8();
  sub_22D81B328();

  return sub_22D81BC18();
}

uint64_t sub_22D8150FC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_22D81B998();

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

void sub_22D81515C(uint64_t *a1@<X8>)
{
  v2 = 1852994932;
  if (*v1)
  {
    v2 = 0x656C67676F74;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_22D815194()
{
  result = qword_27DA03AC0;
  if (!qword_27DA03AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03AC0);
  }

  return result;
}

unint64_t sub_22D8151EC()
{
  result = qword_27DA03AC8;
  if (!qword_27DA03AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03AC8);
  }

  return result;
}

unint64_t sub_22D815244()
{
  result = qword_27DA03AD0;
  if (!qword_27DA03AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03AD0);
  }

  return result;
}

unint64_t sub_22D81529C()
{
  result = qword_27DA03AD8;
  if (!qword_27DA03AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03AD8);
  }

  return result;
}

unint64_t sub_22D8152F0()
{
  result = qword_27DA03AE0;
  if (!qword_27DA03AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03AE0);
  }

  return result;
}

unint64_t sub_22D815344()
{
  result = qword_27DA03AE8;
  if (!qword_27DA03AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03AE8);
  }

  return result;
}

unint64_t sub_22D81539C()
{
  result = qword_27DA03AF0;
  if (!qword_27DA03AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03AF0);
  }

  return result;
}

unint64_t sub_22D815444()
{
  result = qword_27DA03AF8;
  if (!qword_27DA03AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03AF8);
  }

  return result;
}

uint64_t sub_22D815498(uint64_t a1)
{
  v2 = sub_22D815444();

  return MEMORY[0x28210B458](a1, v2);
}

unint64_t sub_22D8154E8()
{
  result = qword_27DA03B00;
  if (!qword_27DA03B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03B00);
  }

  return result;
}

unint64_t sub_22D815540()
{
  result = qword_27DA03B08;
  if (!qword_27DA03B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03B08);
  }

  return result;
}

unint64_t sub_22D815598()
{
  result = qword_27DA03B10;
  if (!qword_27DA03B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03B10);
  }

  return result;
}

uint64_t sub_22D8155F0(uint64_t a1)
{
  v2 = sub_22D81539C();

  return MEMORY[0x28210C300](a1, v2);
}

unint64_t sub_22D815694()
{
  result = qword_27DA03B28;
  if (!qword_27DA03B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03B28);
  }

  return result;
}

unint64_t sub_22D8156EC()
{
  result = qword_27DA03B30;
  if (!qword_27DA03B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03B30);
  }

  return result;
}

uint64_t sub_22D815790@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C18, &unk_22D81E0D0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v25 = &v24 - v3;
  v4 = sub_22D81A748();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22D81A958();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_22D81B2A8();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v24 = sub_22D81A768();
  v13 = *(v24 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v24);
  sub_22D81B228();
  sub_22D81A948();
  v15 = *MEMORY[0x277CC9110];
  v16 = *(v5 + 104);
  v16(v8, v15, v4);
  sub_22D81A778();
  sub_22D81B228();
  sub_22D81A948();
  v16(v8, v15, v4);
  v17 = v25;
  sub_22D81A778();
  v18 = *(v13 + 56);
  v13 += 56;
  v18(v17, 0, 1, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C40, &qword_22D81F780);
  v19 = *(v13 + 16);
  v20 = (*(v13 + 24) + 32) & ~*(v13 + 24);
  *(swift_allocObject() + 16) = xmmword_22D821040;
  sub_22D81A738();
  sub_22D81A738();
  v21 = v26;
  sub_22D81A2C8();
  v22 = sub_22D81A2B8();
  return (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
}

uint64_t sub_22D815BD0@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03B98, &qword_22D8274E8);
  v2 = *(v1 - 8);
  v27 = v1;
  v28 = v2;
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v22 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v26 = &v21 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03BA0, &qword_22D8274F0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v21 = &v21 - v13;
  v30 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03BA8, &qword_22D8274F8);
  sub_22D817FB8();
  sub_22D815344();
  sub_22D7548B0(&qword_27DA03BB0, &qword_27DA03BA8, &qword_22D8274F8);
  sub_22D81A548();
  v23 = sub_22D7548B0(&qword_27DA03BB8, &qword_27DA03BA0, &qword_22D8274F0);
  sub_22D81A4C8();
  v14 = *(v8 + 8);
  v24 = v8 + 8;
  v25 = v14;
  v14(v12, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03BC0, &qword_22D827500);
  sub_22D7548B0(&qword_27DA03BC8, &qword_27DA03BC0, &qword_22D827500);
  v15 = v22;
  sub_22D81A598();
  sub_22D7548B0(&qword_27DA03BD0, &qword_27DA03B98, &qword_22D8274E8);
  v16 = v26;
  v17 = v27;
  sub_22D81A4C8();
  v18 = *(v28 + 8);
  v18(v15, v17);
  v19 = v21;
  sub_22D81A4B8();
  v18(v16, v17);
  return v25(v19, v7);
}

uint64_t sub_22D815FE0@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v1 = sub_22D81A4A8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03BA8, &qword_22D8274F8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - v12;
  swift_getKeyPath();
  (*(v2 + 104))(v5, *MEMORY[0x277CBA468], v1);
  v18 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03BC0, &qword_22D827500);
  sub_22D817FB8();
  sub_22D7548B0(&qword_27DA03BC8, &qword_27DA03BC0, &qword_22D827500);
  sub_22D7548B0(&qword_27DA03BF8, &qword_27DA01E48, &qword_22D81E9B8);
  sub_22D81A558();
  v14 = sub_22D7548B0(&qword_27DA03BB0, &qword_27DA03BA8, &qword_22D8274F8);
  MEMORY[0x2318D0B50](v11, &type metadata for ToggleAlarmIntent, v6, v14);
  v15 = *(v7 + 8);
  v15(v11, v6);
  MEMORY[0x2318D0B40](v13, &type metadata for ToggleAlarmIntent, v6, v14);
  return (v15)(v13, v6);
}

uint64_t sub_22D81633C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v17[0] = a1;
  v17[1] = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03BD8, &qword_22D827508);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03BE0, &qword_22D827510);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03BC0, &qword_22D827500);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v17 - v12;
  sub_22D817FB8();
  sub_22D81A3F8();
  sub_22D81A3E8();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03BE8, &qword_22D827518);
  sub_22D81A3D8();

  sub_22D81A3E8();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03BF0, &qword_22D827548);
  sub_22D81A3D8();

  sub_22D81A3E8();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03C00, &unk_22D827578);
  sub_22D81A3D8();

  sub_22D81A3E8();
  sub_22D81A418();
  sub_22D81A3B8();
  v14 = sub_22D7548B0(&qword_27DA03BC8, &qword_27DA03BC0, &qword_22D827500);
  MEMORY[0x2318D0B50](v11, &type metadata for ToggleAlarmIntent, v6, v14);
  v15 = *(v7 + 8);
  v15(v11, v6);
  MEMORY[0x2318D0B40](v13, &type metadata for ToggleAlarmIntent, v6, v14);
  return (v15)(v13, v6);
}

uint64_t sub_22D8166BC@<X0>(uint64_t a1@<X8>)
{
  v16[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03BD8, &qword_22D827508);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03BE0, &qword_22D827510);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03BC0, &qword_22D827500);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v16 - v11;
  sub_22D817FB8();
  sub_22D81A3F8();
  sub_22D81A3E8();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03BE8, &qword_22D827518);
  sub_22D81A3D8();

  sub_22D81A3E8();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03BF0, &qword_22D827548);
  sub_22D81A3D8();

  sub_22D81A3E8();
  sub_22D81A418();
  sub_22D81A3B8();
  v13 = sub_22D7548B0(&qword_27DA03BC8, &qword_27DA03BC0, &qword_22D827500);
  MEMORY[0x2318D0B50](v10, &type metadata for ToggleAlarmIntent, v5, v13);
  v14 = *(v6 + 8);
  v14(v10, v5);
  MEMORY[0x2318D0B40](v12, &type metadata for ToggleAlarmIntent, v5, v13);
  return (v14)(v12, v5);
}

uint64_t sub_22D8169E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C10, &unk_22D827470);
  v4[12] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[13] = swift_task_alloc();
  v7 = *(*(sub_22D81B288() - 8) + 64) + 15;
  v4[14] = swift_task_alloc();
  v8 = sub_22D819F78();
  v4[15] = v8;
  v9 = *(v8 - 8);
  v4[16] = v9;
  v10 = *(v9 + 64) + 15;
  v4[17] = swift_task_alloc();
  v11 = sub_22D81A748();
  v4[18] = v11;
  v12 = *(v11 - 8);
  v4[19] = v12;
  v13 = *(v12 + 64) + 15;
  v4[20] = swift_task_alloc();
  v14 = *(*(sub_22D81A958() - 8) + 64) + 15;
  v4[21] = swift_task_alloc();
  v15 = *(*(sub_22D81B2A8() - 8) + 64) + 15;
  v4[22] = swift_task_alloc();
  v16 = sub_22D81A768();
  v4[23] = v16;
  v17 = *(v16 - 8);
  v4[24] = v17;
  v18 = *(v17 + 64) + 15;
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v19 = sub_22D81A918();
  v4[27] = v19;
  v20 = *(v19 - 8);
  v4[28] = v20;
  v21 = *(v20 + 64) + 15;
  v4[29] = swift_task_alloc();
  v22 = type metadata accessor for AlarmEntity();
  v4[30] = v22;
  v23 = *(v22 - 8);
  v4[31] = v23;
  v24 = *(v23 + 64) + 15;
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22D816CF4, 0, 0);
}

uint64_t sub_22D816CF4()
{
  if (qword_27DA019E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 264);
  v3 = *(v0 + 224);
  v2 = *(v0 + 232);
  v4 = *(v0 + 216);
  v5 = *(v0 + 88);
  v6 = qword_27DA0D378;
  *(v0 + 272) = qword_27DA0D378;
  sub_22D81A0B8();
  v7 = *(v3 + 16);
  *(v0 + 280) = v7;
  *(v0 + 288) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v2, v1, v4);
  sub_22D750754(v1);
  sub_22D81A8D8();
  v8 = *(v3 + 8);
  *(v0 + 296) = v8;
  *(v0 + 304) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v2, v4);
  v9 = sub_22D81B2B8();

  v10 = [v6 alarmWithIDString_];

  if (!v10)
  {
    __break(1u);
    return MEMORY[0x2822008A0](v11, v12, v13, v14, v15, v16, v17, v18);
  }

  [v10 mutableCopy];

  sub_22D81B758();
  swift_unknownObjectRelease();
  sub_22D819C18();
  if (swift_dynamicCast())
  {
    v19 = *(v0 + 72);
    v20 = *(v0 + 48);
    *(v0 + 312) = v20;
    sub_22D81A0B8();
    if (*(v0 + 344))
    {
      v21 = [v20 isEnabled] ^ 1;
    }

    else
    {
      v43 = *(v0 + 80);
      sub_22D81A0B8();
      v21 = *(v0 + 345);
    }

    [v20 setEnabled_];
    v44 = swift_task_alloc();
    *(v0 + 320) = v44;
    *(v44 + 16) = v6;
    *(v44 + 24) = v20;
    v45 = *(MEMORY[0x277D85A40] + 4);
    v46 = swift_task_alloc();
    *(v0 + 328) = v46;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03B78, &qword_22D8274A0);
    *v46 = v0;
    v46[1] = sub_22D817180;
    v16 = sub_22D819C64;
    v14 = 0x286D726F66726570;
    v11 = v0 + 56;
    v12 = 0;
    v13 = 0;
    v15 = 0xE900000000000029;
    v17 = v44;

    return MEMORY[0x2822008A0](v11, v12, v13, v14, v15, v16, v17, v18);
  }

  v22 = *(v0 + 200);
  v24 = *(v0 + 168);
  v23 = *(v0 + 176);
  v25 = *(v0 + 152);
  v26 = *(v0 + 160);
  v27 = *(v0 + 136);
  v28 = *(v0 + 144);
  v29 = *(v0 + 128);
  v30 = *(v0 + 104);
  v48 = *(v0 + 96);
  v49 = *(v0 + 120);
  v47 = *(v0 + 64);
  (*(*(v0 + 248) + 56))(v30, 1, 1, *(v0 + 240));
  sub_22D81B228();
  sub_22D81A948();
  (*(v25 + 104))(v26, *MEMORY[0x277CC9110], v28);
  sub_22D81A778();
  sub_22D819F88();
  sub_22D754560();
  sub_22D819FB8();
  (*(v29 + 8))(v27, v49);
  sub_22D75463C(v30);
  v32 = *(v0 + 256);
  v31 = *(v0 + 264);
  v33 = *(v0 + 232);
  v35 = *(v0 + 200);
  v34 = *(v0 + 208);
  v37 = *(v0 + 168);
  v36 = *(v0 + 176);
  v38 = *(v0 + 160);
  v39 = *(v0 + 136);
  v40 = *(v0 + 112);
  v50 = *(v0 + 104);

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_22D817180()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v7 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v4 = sub_22D817820;
  }

  else
  {
    v5 = *(v2 + 320);

    v4 = sub_22D8172A8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22D8172A8()
{
  v2 = v0[37];
  v1 = v0[38];
  v4 = v0[35];
  v3 = v0[36];
  v6 = v0[33];
  v5 = v0[34];
  v7 = v0[29];
  v8 = v0[27];
  v9 = v0[11];
  sub_22D81A0B8();
  v4(v7, v6, v8);
  sub_22D750754(v6);
  sub_22D81A8D8();
  v2(v7, v8);
  v10 = sub_22D81B2B8();

  v11 = [v5 alarmWithIDString_];

  if (v11)
  {
    v12 = v0[32];
    v13 = v0[19];
    v14 = v11;
    sub_22D78B5EC(v14, v12);
    v64 = v14;
    [v14 isEnabled];
    v15 = (v13 + 104);
    v17 = v0[21];
    v16 = v0[22];
    v18 = v0[20];
    v19 = v0[18];
    sub_22D81B228();
    sub_22D81A948();
    v56 = *v15;
    v57 = *MEMORY[0x277CC9110];
    (*v15)(v18);
    v61 = v0[39];
    v48 = v0[32];
    v53 = v0[31];
    v55 = v0[30];
    v29 = v0[26];
    v50 = v0[25];
    v63 = v0[24];
    v47 = v0[23];
    v30 = v0[21];
    v31 = v0[22];
    v32 = v0[20];
    v49 = v0[18];
    v58 = v0[16];
    v60 = v0[15];
    v33 = v0[13];
    v34 = v0[14];
    v54 = v0[12];
    v51 = v0[17];
    v52 = v0[8];
    sub_22D81A778();
    sub_22D81B278();
    sub_22D81B268();
    sub_22D78D2FC();
    sub_22D81B248();

    sub_22D81B268();
    sub_22D81B258();
    sub_22D81B268();
    sub_22D81B298();
    sub_22D81A948();
    (v56)(v32, v57, v49);
    sub_22D81A778();
    sub_22D819F88();
    sub_22D76D5B4(v48, v33);
    (*(v53 + 56))(v33, 0, 1, v55);
    sub_22D754560();
    sub_22D819FB8();

    sub_22D75463C(v33);
    (*(v58 + 8))(v51, v60);
    (*(v63 + 8))(v29, v47);
    sub_22D750754(v48);
  }

  else
  {
    v20 = v0[25];
    v22 = v0[21];
    v21 = v0[22];
    v23 = v0[19];
    v24 = v0[20];
    v25 = v0[17];
    v26 = v0[18];
    v27 = v0[16];
    v62 = v0[15];
    v65 = v0[39];
    v28 = v0[13];
    v59 = v0[8];
    (*(v0[31] + 56))(v28, 1, 1, v0[30]);
    sub_22D81B228();
    sub_22D81A948();
    (*(v23 + 104))(v24, *MEMORY[0x277CC9110], v26);
    sub_22D81A778();
    sub_22D819F88();
    sub_22D754560();
    sub_22D819FB8();

    (*(v27 + 8))(v25, v62);
    sub_22D75463C(v28);
  }

  v36 = v0[32];
  v35 = v0[33];
  v37 = v0[29];
  v39 = v0[25];
  v38 = v0[26];
  v41 = v0[21];
  v40 = v0[22];
  v42 = v0[20];
  v43 = v0[17];
  v44 = v0[14];
  v66 = v0[13];

  v45 = v0[1];

  return v45();
}

uint64_t sub_22D817820()
{
  v1 = *(v0 + 320);
  v3 = *(v0 + 256);
  v2 = *(v0 + 264);
  v4 = *(v0 + 232);
  v6 = *(v0 + 200);
  v5 = *(v0 + 208);
  v8 = *(v0 + 168);
  v7 = *(v0 + 176);
  v9 = *(v0 + 160);
  v13 = *(v0 + 136);
  v14 = *(v0 + 112);
  v15 = *(v0 + 104);

  v10 = *(v0 + 8);
  v11 = *(v0 + 336);

  return v10();
}

void sub_22D817928(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03B80, &unk_22D8274A8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - v9;
  v11 = [a2 updateAlarm_];
  if (v11)
  {
    v12 = v11;
    (*(v7 + 16))(v10, a1, v6);
    v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v14 = swift_allocObject();
    (*(v7 + 32))(v14 + v13, v10, v6);
    aBlock[4] = sub_22D819C6C;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22D78A760;
    aBlock[3] = &block_descriptor_17;
    v15 = _Block_copy(aBlock);

    v16 = [v12 addCompletionBlock_];
    _Block_release(v15);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22D817B18(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03B80, &unk_22D8274A8);
  return sub_22D81B4B8();
}

uint64_t sub_22D817B68()
{
  v0 = sub_22D81A748();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22D81A958();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_22D81B2A8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_22D81B228();
  sub_22D81A948();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_22D81A778();
}

uint64_t sub_22D817D28(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03B88, &qword_22D8274E0);
  v5 = sub_22D7548B0(&qword_27DA03B90, &qword_27DA03B88, &qword_22D8274E0);

  return MEMORY[0x28210C568](KeyPath, sub_22D815BD0, 0, v4, a2, v5);
}

uint64_t sub_22D817DF4(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22D744B0C;

  return sub_22D8169E8(a1, v4, v5, v6);
}

uint64_t sub_22D817EA8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22D819170();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t sub_22D817ED4(uint64_t a1)
{
  v2 = sub_22D817FB8();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_22D817F10(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_22D817F58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_22D817FB8()
{
  result = qword_27DA03B60;
  if (!qword_27DA03B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03B60);
  }

  return result;
}

unint64_t sub_22D81800C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01D90, &qword_22D8275D0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03C38, &qword_22D8275D8);
    v8 = sub_22D81B978();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    sub_22D81A198();
    while (1)
    {
      sub_22D7640C4(v10, v6, &qword_27DA01D90, &qword_22D8275D0);
      v12 = *v6;
      result = sub_22D807684(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_22D81A348();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_22D8181F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03C48, &unk_22D8275F0);
    v3 = sub_22D81B978();
    v4 = a1 + 32;
    sub_22D81A198();
    while (1)
    {
      sub_22D7640C4(v4, v13, &qword_27DA025B0, &unk_22D821020);
      result = sub_22D80773C(v13);
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
      result = sub_22D819D10(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22D818330(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA027F8, &qword_22D8275C0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03C30, &qword_22D8275C8);
    v8 = sub_22D81B978();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    sub_22D81A198();
    while (1)
    {
      sub_22D7640C4(v10, v6, &qword_27DA027F8, &qword_22D8275C0);
      v12 = *v6;
      result = sub_22D807880(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_22D81A348();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_22D818518(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03120, qword_22D823380);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03C28, &qword_22D8275B8);
    v8 = sub_22D81B978();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    sub_22D81A198();
    while (1)
    {
      sub_22D7640C4(v10, v6, &qword_27DA03120, qword_22D823380);
      v12 = *v6;
      result = sub_22D807B9C(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_22D81A348();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_22D818700(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03C40, &unk_22D8275E0);
    v3 = sub_22D81B978();
    v4 = a1 + 32;
    sub_22D81A198();
    while (1)
    {
      sub_22D7640C4(v4, &v13, &qword_27DA03388, &qword_22D824CC0);
      v5 = v13;
      v6 = v14;
      result = sub_22D807780(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_22D819D10(&v15, (v3[7] + 32 * result));
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

unint64_t sub_22D818830(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03488, &qword_22D8275A0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03C20, &unk_22D8275A8);
    v8 = sub_22D81B978();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    sub_22D81A198();
    while (1)
    {
      sub_22D7640C4(v10, v6, &qword_27DA03488, &qword_22D8275A0);
      v12 = *v6;
      result = sub_22D807D50(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_22D81A348();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_22D818A18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03C10, &qword_22D827590);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03C18, &qword_22D827598);
    v8 = sub_22D81B978();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    sub_22D81A198();
    while (1)
    {
      sub_22D7640C4(v10, v6, &qword_27DA03C10, &qword_22D827590);
      v12 = *v6;
      result = sub_22D807E04(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_22D81A348();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_22D818C00()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01D80, &qword_22D823370);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v41 = &v29 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C18, &unk_22D81E0D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v40 = &v29 - v5;
  v43 = sub_22D81A748();
  v6 = *(v43 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v43);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22D81A958();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_22D81B2A8();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v42 = sub_22D81A768();
  v45 = *(v42 - 8);
  v14 = *(v45 + 64);
  MEMORY[0x28223BE20](v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03C08, &qword_22D827588);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03C10, &qword_22D827590);
  v44 = v15;
  v16 = *(v15 - 8);
  v39 = *(v16 + 72);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  v34 = v18;
  *(v18 + 16) = xmmword_22D821040;
  v19 = v18 + v17;
  v35 = *(v15 + 48);
  *(v18 + v17) = 0;
  sub_22D81B228();
  sub_22D81A948();
  v36 = *MEMORY[0x277CC9110];
  v20 = *(v6 + 104);
  v37 = v6 + 104;
  v38 = v20;
  v31 = v9;
  v20(v9);
  sub_22D81A778();
  v21 = *(v45 + 56);
  v45 += 56;
  v32 = v21;
  v22 = v40;
  v21(v40, 1, 1, v42);
  v23 = sub_22D81A328();
  v30 = *(*(v23 - 8) + 56);
  v24 = v41;
  v30(v41, 1, 1, v23);
  v33 = v19;
  v25 = v24;
  sub_22D81A338();
  v26 = (v19 + v39);
  v39 = *(v44 + 48);
  *v26 = 1;
  sub_22D81B228();
  sub_22D81A948();
  v38(v31, v36, v43);
  sub_22D81A778();
  v32(v22, 1, 1, v42);
  v30(v25, 1, 1, v23);
  sub_22D81A338();
  v27 = sub_22D818A18(v34);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v27;
}

uint64_t sub_22D819170()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C10, &unk_22D827470);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v56 = &v52 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01E08, &qword_22D81E978);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v55 = &v52 - v5;
  v74 = sub_22D81A428();
  v78 = *(v74 - 8);
  v6 = *(v78 + 64);
  MEMORY[0x28223BE20](v74);
  v76 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C08, &unk_22D81E0C0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v63 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v61 = &v52 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C18, &unk_22D81E0D0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v77 = &v52 - v15;
  v16 = sub_22D81A748();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = (&v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_22D81A958();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = sub_22D81B2A8();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = sub_22D81A768();
  v69 = v25;
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v52 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v75 = &v52 - v31;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03B68, &unk_22D827480);
  sub_22D81B228();
  sub_22D81A948();
  v71 = *MEMORY[0x277CC9110];
  v32 = *(v17 + 104);
  v57 = v16;
  v32(v20);
  v58 = v32;
  v59 = v17 + 104;
  sub_22D81A778();
  v33 = *(v26 + 56);
  v68 = v26 + 56;
  v70 = v33;
  v33(v77, 1, 1, v25);
  v80 = 0;
  sub_22D81B228();
  v73 = type metadata accessor for MTAppIntentsManager();
  *v20 = v73;
  v72 = *MEMORY[0x277CC9120];
  v32(v20);
  sub_22D81A948();
  v60 = v30;
  sub_22D81A778();
  v34 = v61;
  sub_22D819F88();
  v35 = sub_22D819F78();
  v62 = v35;
  v36 = *(v35 - 8);
  v37 = *(v36 + 56);
  v64 = v37;
  v65 = v36 + 56;
  v37(v34, 0, 1, v35);
  v37(v63, 1, 1, v35);
  v67 = *MEMORY[0x277CBA308];
  v38 = *(v78 + 104);
  v78 += 104;
  v66 = v38;
  v39 = v74;
  v38(v76);
  sub_22D815444();
  v40 = v77;
  v54 = sub_22D81A0F8();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01E48, &qword_22D81E9B8);
  sub_22D81B228();
  sub_22D81A948();
  v41 = v57;
  v42 = v58;
  (v58)(v20, v71, v57);
  sub_22D81A778();
  v70(v40, 1, 1, v69);
  v79 = 1;
  v43 = sub_22D81B488();
  (*(*(v43 - 8) + 56))(v55, 1, 1, v43);
  sub_22D81B228();
  *v20 = v73;
  (v42)(v20, v72, v41);
  sub_22D81A948();
  sub_22D81A778();
  v44 = v61;
  sub_22D819F88();
  v64(v44, 0, 1, v62);
  v66(v76, v67, v39);
  v45 = v77;
  v55 = sub_22D81A148();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C20, &qword_22D827490);
  sub_22D81B228();
  sub_22D81A948();
  v46 = v57;
  v47 = v58;
  (v58)(v20, v71, v57);
  sub_22D81A778();
  v70(v45, 1, 1, v69);
  v48 = type metadata accessor for AlarmEntity();
  (*(*(v48 - 8) + 56))(v56, 1, 1, v48);
  sub_22D81B228();
  *v20 = v73;
  (v47)(v20, v72, v46);
  sub_22D81A948();
  sub_22D81A778();
  sub_22D819F88();
  v49 = v62;
  v50 = v64;
  v64(v44, 0, 1, v62);
  v50(v63, 1, 1, v49);
  v66(v76, v67, v74);
  sub_22D757BB4(&qword_27DA01C28);
  sub_22D81A108();
  return v54;
}

unint64_t sub_22D819C18()
{
  result = qword_27DA03B70;
  if (!qword_27DA03B70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DA03B70);
  }

  return result;
}

uint64_t sub_22D819C6C(void *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03B80, &unk_22D8274A8) - 8) + 80);

  return sub_22D817B18(a1);
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_22D81A198();
}

_OWORD *sub_22D819D10(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}